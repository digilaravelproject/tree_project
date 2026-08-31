<?php

namespace App\Http\Controllers\Api;

use App\Exports\ProjectTreeExport;
use App\Http\Controllers\Controller;
use App\Models\Family;
use App\Models\MtTree;
use App\Models\Project;
use App\Models\ScientificName;
use App\Models\Tree;
use App\Models\TreePrice;
use App\Models\User;
use App\Models\UserFreeTree;
use App\Models\UserPaidTree;
use Barryvdh\DomPDF\Facade\Pdf;
use DOMDocument;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use ZipArchive;

class ProjectExportController extends Controller
{
    /**
     * Check tree access for Role-3 user
     */
    private function checkRole3Access(int $userId, array $requestedTreeIds): array
    {
        $freeRecord = UserFreeTree::getOrCreate($userId);
        $paidTreeIds = UserPaidTree::where('user_id', $userId)
            ->whereIn('mt_tree_id', $requestedTreeIds)
            ->pluck('mt_tree_id')
            ->toArray();

        $alreadyFreeIds = array_values(array_intersect($requestedTreeIds, $freeRecord->tree_ids ?? []));
        $alreadyAccessible = array_unique(array_merge($alreadyFreeIds, $paidTreeIds));

        $newTreeIds = array_values(array_diff($requestedTreeIds, $alreadyAccessible));
        $remainingFreeSlots = $freeRecord->remainingFreeSlots();
        $canGetFree = array_slice($newTreeIds, 0, $remainingFreeSlots);
        $needsPayment = array_values(array_diff($newTreeIds, $canGetFree));

        return [
            'free_record' => $freeRecord,
            'already_accessible' => $alreadyAccessible,
            'can_get_free' => $canGetFree,
            'needs_payment' => $needsPayment,
            'remaining_slots' => $remainingFreeSlots,
        ];
    }

    /**
     * Get Export Links with Access Management
     */
    public function get_project_export_links(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'project_id' => 'required|exists:projects,id',
            'user_id' => 'required|exists:users,id',
            'tree_ids' => 'nullable|array',
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()->first()], 422);
        }

        $projectId = $request->project_id;
        $userId = $request->user_id;
        $user = User::find($userId);

        $query = MtTree::where('project_id', $projectId);
        if ($request->filled('tree_ids')) {
            $query->whereIn('id', $request->tree_ids);
        }
        $requestedTreeIds = $query->pluck('id')->toArray();

        if (empty($requestedTreeIds)) {
            return response()->json(['success' => false, 'message' => 'No trees found.'], 404);
        }

        if ($user->role_id != 3) {
            return response()->json([
                'success' => true,
                'access' => 'full',
                'links' => $this->buildLinks(['project_id' => $projectId, 'tree_ids' => implode(',', $requestedTreeIds)]),
            ]);
        }

        // Customer Access Logic
        $access = $this->checkRole3Access($userId, $requestedTreeIds);
        $newlyGrantedFree = ! empty($access['can_get_free']) ? $access['free_record']->addFreeTreeIds($access['can_get_free']) : [];
        $accessibleIds = array_unique(array_merge($access['already_accessible'], $newlyGrantedFree));

        $paymentInfo = null;
        if (! empty($access['needs_payment'])) {
            $pricePerTree = TreePrice::active()->orderBy('id', 'desc')->value('price') ?? 0;
            $paymentInfo = [
                'tree_ids' => array_values($access['needs_payment']),
                'tree_count' => count($access['needs_payment']),
                'price_per_tree' => $pricePerTree,
                'total_amount' => $pricePerTree * count($access['needs_payment']),
            ];
        }

        return response()->json([
            'success' => true,
            'access' => empty($access['needs_payment']) ? 'full' : 'partial',
            'links' => ! empty($accessibleIds) ? $this->buildLinks(['project_id' => $projectId, 'tree_ids' => implode(',', $accessibleIds)]) : null,
            'payment_required' => $paymentInfo,
        ]);
    }

    private function buildLinks(array $queryParams): array
    {
        return [
            'pdf' => route('api.export.pdf', $queryParams),
            'excel' => route('api.export.excel', $queryParams),
            'kml' => route('api.export.kml', $queryParams),
            'imgs_zip' => route('api.export.imgs', $queryParams),
        ];
    }

    private function projectFilename(Project $project, string $extension): string
    {
        $projectName = trim(preg_replace('~[<>:"/\\\\|?*\x00-\x1F\x7F]+~', '_', Str::ascii($project->project_name)), ' .');
        $projectName = $projectName !== '' ? $projectName : "Project_{$project->id}";

        return "{$projectName}.{$extension}";
    }

    /**
     * Download PDF
     */
    public function downloadPdf(Request $request, $project_id)
    {
        $project = Project::findOrFail($project_id);
        $query = MtTree::where('project_id', $project_id);
        if ($request->has('tree_ids')) {
            $query->whereIn('id', explode(',', $request->tree_ids));
        }

        $trees = $query->get()->sortBy(fn ($t) => (int) preg_replace('/[^0-9]/', '', $t->tree_no))->values();
        if ($trees->isEmpty()) {
            return response()->json(['message' => 'No trees found.'], 404);
        }

        $projectBy = User::find($project->extra_user)?->name ?? '-';
        $address = $trees->first()->address ?? '-';
        $location = ($trees->first()->latitude ?? '').', '.($trees->first()->longitude ?? '');

        return Pdf::loadView('exports.project_trees_pdf', compact('project', 'trees', 'projectBy', 'address', 'location'))
            ->download($this->projectFilename($project, 'pdf'));
    }

    /**
     * Download Excel
     */
    public function downloadExcel(Request $request, $project_id)
    {
        $project = Project::findOrFail($project_id);
        $treeIdsArray = $request->has('tree_ids') ? explode(',', $request->tree_ids) : [];

        return Excel::download(new ProjectTreeExport($project_id, $treeIdsArray), $this->projectFilename($project, 'xlsx'));
    }

    /**
     * Download KML
     */
    public function downloadKml(Request $request, $project_id)
    {
        $project = Project::findOrFail($project_id);

        $query = MtTree::where('project_id', $project_id);

        if ($request->has('tree_ids')) {
            $ids = explode(',', $request->tree_ids);
            $query->whereIn('id', $ids);
        }

        $trees = $query->get();

        $sorted = $trees->sort(function ($a, $b) {
            $numA = intval(preg_replace('/[^0-9]/', '', $a->tree_no));
            $numB = intval(preg_replace('/[^0-9]/', '', $b->tree_no));
            if ($numA == $numB) return 0;
            return ($numA < $numB) ? -1 : 1;
        });
        $trees = $sorted->values();

        if ($trees->isEmpty()) {
            return response()->json(['message' => 'No trees found for this selection.'], 404);
        }

        $baseUrl  = url('/') . '/';
        $schemaId = 'Project_' . $project_id . '_Schema';
        $styleId  = 'tree_icon_style';

        $dom = new DOMDocument('1.0', 'UTF-8');
        $dom->formatOutput = true;

        $kml = $dom->createElement('kml');
        $kml->setAttribute('xmlns', 'http://www.opengis.net/kml/2.2');
        $dom->appendChild($kml);

        $document = $dom->createElement('Document');
        $kml->appendChild($document);

        $docName = $dom->createElement('name', $project->project_name ?? 'Project Data');
        $document->appendChild($docName);

        // Style
        $style     = $dom->createElement('Style');
        $style->setAttribute('id', $styleId);
        $iconStyle = $dom->createElement('IconStyle');
        $scale     = $dom->createElement('scale', '1.1');
        $iconStyle->appendChild($scale);
        $icon = $dom->createElement('Icon');
        $href = $dom->createElement('href', 'http://maps.google.com/mapfiles/kml/pal2/icon4.png');
        $icon->appendChild($href);
        $iconStyle->appendChild($icon);
        $style->appendChild($iconStyle);
        
        // ✅ Hide label on icon but keep name in list display
        $labelStyle = $dom->createElement('LabelStyle');
        $labelScale = $dom->createElement('scale', '0');
        $labelStyle->appendChild($labelScale);
        $style->appendChild($labelStyle);
        
        $document->appendChild($style);

        // Schema
        $schema = $dom->createElement('Schema');
        $schema->setAttribute('name', $project->project_name ?? 'Project Data');
        $schema->setAttribute('id', $schemaId);

        $fields = [
            'Tree_No' => 'string', 'Ward_Plot_No' => 'string', 'Tree_Name' => 'string',
            'Scientific_Name' => 'string', 'Family' => 'string', 'Girth' => 'string',
            'Height' => 'string', 'Canopy' => 'string', 'Age' => 'string',
            'Condition' => 'string', 'Address' => 'string', 'Landmark' => 'string',
            'Ownership' => 'string', 'Concern_Person' => 'string', 'Remark' => 'string',
            'Date_Added' => 'string', 'Image_Path' => 'string',
        ];

        foreach ($fields as $fieldName => $fieldType) {
            $simpleField = $dom->createElement('SimpleField');
            $simpleField->setAttribute('type', $fieldType);
            $simpleField->setAttribute('name', $fieldName);
            $schema->appendChild($simpleField);
        }
        $document->appendChild($schema);

        // Placemarks
        foreach ($trees as $tree) {
            $tName = Tree::find($tree->tree_name)->name ?? 'N/A';
            $sName = ScientificName::find($tree->scientific_name)->scientific_name ?? 'N/A';
            $fName = Family::find($tree->family)->family_name ?? 'N/A';

            $images          = is_string($tree->all_captured_images)
                                    ? json_decode($tree->all_captured_images, true)
                                    : ($tree->all_captured_images ?? []);
            $imagePaths      = is_array($images)
                                    ? array_map(fn($p) => $baseUrl . ltrim($p, '/'), $images)
                                    : [];
            $imagePathString = implode(' | ', $imagePaths);

            $placemark = $dom->createElement('Placemark');

            // ✅ Name for list display in details panel (shows tree number and name in the list below)
            $pmName = $dom->createElement('name', $tree->tree_no . ' - ' . $tName);
            $placemark->appendChild($pmName);

            // ✅ CDATA description for mobile Google Earth
            $imageHtml = '';
            if (!empty($imagePaths)) {
                foreach ($imagePaths as $index => $imgUrl) {
                    $imageHtml .= '
                    <div style="margin:6px 0;">
                    <a href="' . htmlspecialchars($imgUrl) . '" target="_blank"
                        style="display:inline-block;
                                background-color:#2e7d32;
                                color:#ffffff;
                                padding:8px 14px;
                                text-decoration:none;
                                border-radius:6px;
                                font-size:13px;
                                font-weight:bold;
                                margin-bottom:4px;">
                        🌿 View Image ' . ($index + 1) . '
                    </a>
                    </div>';
                }
            } else {
                $imageHtml = '<span style="color:#999;">No images available</span>';
            }

            $descHtml = '
    <table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;font-size:13px;width:100%;">
    <tr><th align="left" style="background:#f2f2f2;width:40%;">Tree No</th><td>' . htmlspecialchars((string)($tree->tree_no ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Ward / Plot No</th><td>' . htmlspecialchars((string)($tree->ward_plot_no ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Tree Name</th><td>' . htmlspecialchars($tName) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Scientific Name</th><td>' . htmlspecialchars($sName) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Family</th><td>' . htmlspecialchars($fName) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Girth</th><td>' . htmlspecialchars((string)($tree->girth ?? '')) . ' cm</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Height</th><td>' . htmlspecialchars((string)($tree->height ?? '')) . ' ft</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Canopy</th><td>' . htmlspecialchars((string)($tree->canopy ?? '')) . ' ft</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Age</th><td>' . htmlspecialchars((string)($tree->age ?? '')) . ' years</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Condition</th><td>' . htmlspecialchars((string)($tree->condition ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Address</th><td>' . htmlspecialchars((string)($tree->address ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Landmark</th><td>' . htmlspecialchars((string)($tree->landmark ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Ownership</th><td>' . htmlspecialchars((string)($tree->ownership ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Concern Person</th><td>' . htmlspecialchars((string)($tree->concern_person ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Remark</th><td>' . htmlspecialchars((string)($tree->remark ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;">Date Added</th><td>' . htmlspecialchars((string)($tree->created_at ?? '')) . '</td></tr>
    <tr><th align="left" style="background:#f2f2f2;vertical-align:top;">Images</th><td>' . $imageHtml . '</td></tr>
    </table>';

            $description = $dom->createElement('description');
            $description->appendChild($dom->createCDATASection($descHtml));
            $placemark->appendChild($description);

            $styleUrl = $dom->createElement('styleUrl', '#' . $styleId);
            $placemark->appendChild($styleUrl);

            $extendedData = $dom->createElement('ExtendedData');
            $schemaData   = $dom->createElement('SchemaData');
            $schemaData->setAttribute('schemaUrl', '#' . $schemaId);

            $addData = function ($name, $value) use ($dom, $schemaData) {
                $simpleData = $dom->createElement('SimpleData', htmlspecialchars((string) ($value ?? '')));
                $simpleData->setAttribute('name', $name);
                $schemaData->appendChild($simpleData);
            };

            $addData('Tree_No', $tree->tree_no);
            $addData('Ward_Plot_No', $tree->ward_plot_no);
            $addData('Tree_Name', $tName);
            $addData('Scientific_Name', $sName);
            $addData('Family', $fName);
            $addData('Girth', $tree->girth . ' cm');
            $addData('Height', $tree->height . ' ft');
            $addData('Canopy', $tree->canopy . ' ft');
            $addData('Age', $tree->age . ' years');
            $addData('Condition', $tree->condition);
            $addData('Address', $tree->address);
            $addData('Landmark', $tree->landmark);
            $addData('Ownership', $tree->ownership);
            $addData('Concern_Person', $tree->concern_person);
            $addData('Remark', $tree->remark);
            $addData('Date_Added', $tree->created_at);
            $addData('Image_Path', $imagePathString);

            $extendedData->appendChild($schemaData);
            $placemark->appendChild($extendedData);

            if (!empty($tree->latitude) && !empty($tree->longitude)) {
                $point       = $dom->createElement('Point');
                $coordinates = $dom->createElement('coordinates', "{$tree->longitude},{$tree->latitude},0");
                $point->appendChild($coordinates);
                $placemark->appendChild($point);
            }

            $document->appendChild($placemark);
        }

        $filename = $this->projectFilename($project, 'kml');

        return response()->stream(
            function () use ($dom) {
                echo $dom->saveXML();
            },
            200,
            [
                'Content-Type'        => 'application/vnd.google-earth.kml+xml',
                'Content-Disposition' => 'attachment; filename="' . $filename . '"',
            ]
        );
    }

    /**
     * Download Images Zip
     */
    public function downloadImgsZip(Request $request, $project_id)
    {
        set_time_limit(0);
        $project = Project::findOrFail($project_id);
        $query = MtTree::where('project_id', $project_id);
        if ($request->has('tree_ids')) {
            $query->whereIn('id', explode(',', $request->tree_ids));
        }

        $trees = $query->with('project')->get();
        if ($trees->isEmpty()) {
            return response()->json(['success' => false, 'message' => 'No images found.'], 404);
        }

        $zipFileName = $this->projectFilename($project, 'zip');
        $zipPath = storage_path("app/public/{$zipFileName}");
        $zip = new ZipArchive;

        if ($zip->open($zipPath, ZipArchive::CREATE) === true) {
            foreach ($trees as $tree) {
                $images = $tree->all_captured_images ?? [];
                foreach ((array) $images as $imagePath) {
                    $fullPath = public_path($imagePath);
                    if (File::exists($fullPath) && is_file($fullPath)) {
                        $zip->addFile($fullPath, "Trees/Tree_{$tree->tree_no}_".basename($imagePath));
                    }
                }
            }
            $zip->close();
        }

        return File::exists($zipPath) ? response()->download($zipPath)->deleteFileAfterSend(true) : response()->json(['success' => false], 500);
    }
}

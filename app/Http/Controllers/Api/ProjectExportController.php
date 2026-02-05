<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\MtTree;
use App\Models\Tree;
use App\Models\ScientificName;
use App\Models\Family;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ProjectTreeExport;
use Barryvdh\DomPDF\Facade\Pdf;
use DOMDocument;

class ProjectExportController extends Controller
{
    // 1. Generate Links based on optional Tree IDs
    public function get_project_export_links(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'project_id' => 'required|exists:projects,id',
            'tree_ids'   => 'nullable|array', // Optional: Agar specific trees chahiye
            'tree_ids.*' => 'integer'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()->first()], 422);
        }

        $projectId = $request->project_id;
        
        // Count update logic based on selection
        if ($request->has('tree_ids') && count($request->tree_ids) > 0) {
            $treeCount = MtTree::whereIn('id', $request->tree_ids)->where('project_id', $projectId)->count();
            // Convert array to comma separated string for URL (e.g., "38,39")
            $treeIdsParam = implode(',', $request->tree_ids);
            $queryParams = ['project_id' => $projectId, 'tree_ids' => $treeIdsParam];
        } else {
            $treeCount = MtTree::where('project_id', $projectId)->count();
            $queryParams = ['project_id' => $projectId];
        }

        // Generate Links with Query Parameters
        $links = [
            'pdf'   => route('api.export.pdf', $queryParams),
            'excel' => route('api.export.excel', $queryParams),
            'kml'   => route('api.export.kml', $queryParams),
        ];

        return response()->json([
            'success'    => true,
            'message'    => 'Export links generated successfully.',
            'project_id' => $projectId,
            'tree_count' => $treeCount,
            'links'      => $links
        ], 200);
    }

    // 2. DOWNLOAD PDF (Filtered)
    public function downloadPdf(Request $request, $project_id)
    {
        $project = Project::find($project_id);
        
        // Start Query
        $query = MtTree::where('project_id', $project_id);

        // Check if tree_ids exist in URL (e.g. ?tree_ids=38,39)
        if ($request->has('tree_ids')) {
            $ids = explode(',', $request->tree_ids);
            $query->whereIn('id', $ids);
        }

        $trees = $query->get();

        if ($trees->isEmpty()) {
            return response()->json(['message' => 'No trees found for this selection'], 404);
        }

        $pdf = Pdf::loadView('exports.project_trees_pdf', compact('project', 'trees'));
        $filename = 'Project_' . $project_id . '_Trees.pdf';
        return $pdf->download($filename);
    }

    // 3. DOWNLOAD EXCEL (Filtered)
    public function downloadExcel(Request $request, $project_id)
    {
        // Check existence
        $query = MtTree::where('project_id', $project_id);
        
        $treeIdsArray = [];
        if ($request->has('tree_ids')) {
            $treeIdsArray = explode(',', $request->tree_ids);
            $query->whereIn('id', $treeIdsArray);
        }

        if (!$query->exists()) {
            return response()->json(['message' => 'No trees found for this selection'], 404);
        }

        $filename = 'Project_' . $project_id . '_Trees.xlsx';

        // Note: Aapko apne 'ProjectTreeExport' class ko update karna padega 
        // taaki wo constructor mein second parameter accept kare, 
        // ya phir Maatwebsite ke `FromQuery` use karein.
        // Assuming your Export class handles logic or you update it to accept IDs.
        return Excel::download(new ProjectTreeExport($project_id, $treeIdsArray), $filename);
    }

    // 4. DOWNLOAD KML (Filtered)
    public function downloadKml(Request $request, $project_id)
    {
        $project = Project::find($project_id);
        
        // Start Query
        $query = MtTree::where('project_id', $project_id);

        // Filter Logic
        if ($request->has('tree_ids')) {
            $ids = explode(',', $request->tree_ids);
            $query->whereIn('id', $ids);
        }

        $trees = $query->get();

        if ($trees->isEmpty()) {
            return response()->json(['message' => 'No trees found for this selection'], 404);
        }

        $baseUrl = url('/') . '/public/';
        $schemaId = "Project_" . $project_id . "_Schema";
        $styleId = "tree_icon_style";

        // 1. Initialize DOM
        $dom = new DOMDocument('1.0', 'UTF-8');
        $dom->formatOutput = true;

        // 2. KML Root
        $kml = $dom->createElement('kml');
        $kml->setAttribute('xmlns', 'http://www.opengis.net/kml/2.2');
        $dom->appendChild($kml);

        // 3. Document
        $document = $dom->createElement('Document');
        $kml->appendChild($document);

        // Name
        $docName = $dom->createElement('name', $project->project_name ?? 'Project Data');
        $document->appendChild($docName);

        // Style Definition
        $style = $dom->createElement('Style');
        $style->setAttribute('id', $styleId);
        $iconStyle = $dom->createElement('IconStyle');
        $scale = $dom->createElement('scale', '1.1');
        $iconStyle->appendChild($scale);
        $icon = $dom->createElement('Icon');
        $href = $dom->createElement('href', 'http://maps.google.com/mapfiles/kml/pal2/icon4.png');
        $icon->appendChild($href);
        $iconStyle->appendChild($icon);
        $style->appendChild($iconStyle);
        $document->appendChild($style);

        // 4. Schema
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

        foreach ($fields as $fieldName => $type) {
            $simpleField = $dom->createElement('SimpleField');
            $simpleField->setAttribute('name', $fieldName);
            $simpleField->setAttribute('type', $type);
            $displayName = $dom->createElement('displayName', str_replace('_', ' ', $fieldName));
            $simpleField->appendChild($displayName);
            $schema->appendChild($simpleField);
        }
        $document->appendChild($schema);

        // 5. Loop Data
        foreach ($trees as $tree) {
            $tName = Tree::find($tree->tree_name)->name ?? 'N/A';
            $sName = ScientificName::find($tree->scientific_name)->scientific_name ?? 'N/A';
            $fName = Family::find($tree->family)->family_name ?? 'N/A';

            // Images
            $imageUrls = [];
            $imgHtml = "";
            if (!empty($tree->all_captured_images)) {
                $decoded = json_decode($tree->all_captured_images, true);
                if (is_array($decoded)) {
                    foreach ($decoded as $imgPath) {
                        $fullUrl = $baseUrl . str_replace('\/', '/', $imgPath);
                        $imageUrls[] = $fullUrl;
                        $imgHtml .= "<br/><img src='{$fullUrl}' width='300' style='margin-top:5px; border:1px solid #ccc;'/>";
                    }
                }
            }
            $imagePathString = implode(', ', $imageUrls);

            // Placemark
            $placemark = $dom->createElement('Placemark');
            $styleUrl = $dom->createElement('styleUrl', '#' . $styleId);
            $placemark->appendChild($styleUrl);
            $nameNode = $dom->createElement('name', "Tree " . $tree->tree_no);
            $placemark->appendChild($nameNode);

            if (!empty($imgHtml)) {
                $description = $dom->createElement('description');
                $description->appendChild($dom->createCDATASection($imgHtml));
                $placemark->appendChild($description);
            }

            // Extended Data
            $extendedData = $dom->createElement('ExtendedData');
            $schemaData = $dom->createElement('SchemaData');
            $schemaData->setAttribute('schemaUrl', '#' . $schemaId);

            $addData = function ($name, $val) use ($dom, $schemaData) {
                $val = $val ?? '';
                $simpleData = $dom->createElement('SimpleData', htmlspecialchars($val));
                $simpleData->setAttribute('name', $name);
                $schemaData->appendChild($simpleData);
            };

            $addData('Tree_No', $tree->tree_no);
            $addData('Ward_Plot_No', $tree->ward_plot_no);
            $addData('Tree_Name', $tName);
            $addData('Scientific_Name', $sName);
            $addData('Family', $fName);
            $addData('Girth', $tree->girth . ' cm');
            $addData('Height', $tree->height . ' m');
            $addData('Canopy', $tree->canopy . ' m');
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

            // Coordinates
            if (!empty($tree->latitude) && !empty($tree->longitude)) {
                $point = $dom->createElement('Point');
                $coordinates = $dom->createElement('coordinates', "{$tree->longitude},{$tree->latitude},0");
                $point->appendChild($coordinates);
                $placemark->appendChild($point);
            }

            $document->appendChild($placemark);
        }

        $filename = 'Project_' . $project_id . '_Trees.kml';

        return response()->stream(
            function () use ($dom) {
                echo $dom->saveXML();
            },
            200,
            [
                'Content-Type' => 'application/vnd.google-earth.kml+xml',
                'Content-Disposition' => 'attachment; filename="' . $filename . '"',
            ]
        );
    }
}
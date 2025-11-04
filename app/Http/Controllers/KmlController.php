<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MtTree;
use App\Models\Project;
use App\Models\Family;
use App\Models\ScientificName;
use App\Models\Tree;
use DOMDocument;

class KmlController extends Controller
{
    public function generateAllKml()
    {
        // Fetch all trees
        $trees = MtTree::all();

        if ($trees->isEmpty()) {
            return response()->json(['message' => 'No tree data found'], 404);
        }

        // 👇 Change this base URL to your domain or localhost as needed
        $baseUrl = 'https://darkorange-baboon-922736.hostingersite.com/public/';

        // Create XML structure
        $dom = new DOMDocument('1.0', 'UTF-8');
        $dom->formatOutput = true;

        $kml = $dom->createElement('kml');
        $kml->setAttribute('xmlns', 'http://www.opengis.net/kml/2.2');
        $document = $dom->createElement('Document');
        $kml->appendChild($document);
        $dom->appendChild($kml);

        foreach ($trees as $tree) {

            // Get related names
            $project = Project::find($tree->project_id);
            $treeName = Tree::find($tree->tree_name);
            $scientific = ScientificName::find($tree->scientific_name);
            $family = Family::find($tree->family);

            $project_name = $project->project_name ?? 'N/A';
            $tree_name = $treeName->name ?? 'N/A';
            $scientific_name = $scientific->scientific_name ?? 'N/A';
            $family_name = $family->family_name ?? 'N/A';

            // Decode images
            $images = [];
            if (!empty($tree->all_captured_images)) {
                $decoded = json_decode($tree->all_captured_images, true);
                if (is_array($decoded)) {
                    foreach ($decoded as $imgPath) {
                        $images[] = $baseUrl . str_replace('\/', '/', $imgPath);
                    }
                }
            }

            // Build Placemark
            $placemark = $dom->createElement('Placemark');
            $placemark->appendChild($dom->createElement('name', "Tree No: {$tree->tree_no} ({$project_name})"));

            // Image HTML
            $imgHtml = '';
            if (count($images) > 0) {
                foreach ($images as $img) {
                    $imgHtml .= "<br/><img src='{$img}' width='300'/>";
                }
            }

            // 🧭 Description with coordinates added
            $desc = "
                <b>Project Name:</b> {$project_name}<br/>
                <b>Ward Plot No:</b> {$tree->ward_plot_no}<br/>
                <b>Tree No:</b> {$tree->tree_no}<br/>
                <b>Tree Name:</b> {$tree_name}<br/>
                <b>Scientific Name:</b> {$scientific_name}<br/>
                <b>Family:</b> {$family_name}<br/>
                <b>Girth:</b> {$tree->girth} cm<br/>
                <b>Height:</b> {$tree->height} m<br/>
                <b>Canopy:</b> {$tree->canopy} m<br/>
                <b>Age:</b> {$tree->age} years<br/>
                <b>Condition:</b> {$tree->condition}<br/>
                <b>Address:</b> {$tree->address}<br/>
                <b>Landmark:</b> {$tree->landmark}<br/>
                <b>Ownership:</b> {$tree->ownership}<br/>
                <b>Concern Person:</b> {$tree->concern_person}<br/>
                <b>Remark:</b> {$tree->remark}<br/>
                <b>Latitude:</b> {$tree->latitude}<br/>
                <b>Longitude:</b> {$tree->longitude}<br/>
                <b>Date/Time:</b> {$tree->datetime}<br/>
                {$imgHtml}
            ";

            $description = $dom->createElement('description', '');
            $description->appendChild($dom->createCDATASection($desc));
            $placemark->appendChild($description);

            // Coordinates for marker
            if (!empty($tree->latitude) && !empty($tree->longitude)) {
                $point = $dom->createElement('Point');
                $coordinates = $dom->createElement('coordinates', "{$tree->longitude},{$tree->latitude},0");
                $point->appendChild($coordinates);
                $placemark->appendChild($point);
            }

            $document->appendChild($placemark);
        }

        // Save to file
        $filename = 'all_projects_trees.kml';
        $filePath = storage_path("app/public/{$filename}");
        $dom->save($filePath);

        // Download response
        return response()->download($filePath, $filename, [
            'Content-Type' => 'application/vnd.google-earth.kml+xml',
        ]);
    }
}

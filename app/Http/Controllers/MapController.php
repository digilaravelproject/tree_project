<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\MtTree;
use App\Models\Tree;
use App\Models\ScientificName;
use App\Models\Family;

class MapController extends Controller
{
    public function mapGenerator()
    {
        $page_title = "Map Point Generator";
        return view('dashboard.map_generator', compact('page_title'));
    }


    public function tree_map(Request $request)
    {
        // If it's an AJAX request (fetched via JavaScript), return JSON data
        if ($request->ajax() || $request->wantsJson()) {

            // Eager load relationships: project, tree (name), scientific (name), family (name)
            $query = MtTree::with(['project', 'tree', 'scientific', 'family'])->select(
                'id',
                'project_id',
                'ward_plot_no',
                'tree_no',
                'tree_name', // Assuming this is the foreign key for Tree model
                'scientific_name', // Assuming this is the foreign key for ScientificName
                'family', // Assuming this is the foreign key for Family
                'girth',
                'height',
                'canopy',
                'age',
                'condition',
                'address',
                'landmark',
                'ownership',
                'concern_person',
                'remark',
                'latitude',
                'longitude',
                'created_at',
                'all_captured_images'
            );

            // --- Filters ---

            // 1. Project Filter
            if ($request->filled('project_id')) {
                $query->where('project_id', $request->project_id);
            }

            // 2. Date Range Filter
            if ($request->filled('start_date') && $request->filled('end_date')) {
                $query->whereBetween('created_at', [$request->start_date . ' 00:00:00', $request->end_date . ' 23:59:59']);
            }

            // 3. Ward Number
            if ($request->filled('ward_plot_no')) {
                $query->where('ward_plot_no', $request->ward_plot_no);
            }

            // 4. Tree Number
            if ($request->filled('tree_no')) {
                $query->where('tree_no', 'like', '%' . $request->tree_no . '%');
            }

            // 5. Girth
            if ($request->filled('girth')) {
                $query->where('girth', '>=', $request->girth);
            }

            // 6. Ownership
            if ($request->filled('ownership')) {
                $query->where('ownership', $request->ownership);
            }

            // Ensure we only get trees with valid coordinates
            $trees = $query->whereNotNull('latitude')
                ->whereNotNull('longitude')
                ->get();

            return response()->json([
                'success' => true,
                'trees' => $trees,
                'count' => $trees->count()
            ]);
        }

        // --- Normal Page Load ---
        $page_title = 'Tree Location Map';

        // Get Data for Dropdowns
        $projects = Project::select('id', 'project_name')->orderBy('project_name')->get();

        // Get distinct values for filters
        $wards = MtTree::distinct()->pluck('ward_plot_no')->filter();
        $ownerships = MtTree::distinct()->pluck('ownership')->filter();

        return view('dashboard.tree_map', compact('page_title', 'projects', 'wards', 'ownerships'));
    }
}

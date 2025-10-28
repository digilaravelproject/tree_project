<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StateMaster;
use App\Models\User;
use App\Models\Project;
use App\Models\UserRating;
use App\Models\Tree;
use App\Models\ScientificName;
use App\Models\Family;
use App\Models\MtTree;
use Barryvdh\DomPDF\Facade\Pdf;


class HomeController extends Controller
{
    public function index()
    {
        return view('index');
    }


    public function home()
    {
        $page_title = 'Home';
        $projectCount = Project::count();
        $treeCount = MtTree::count();

        return view('dashboard.home', compact('page_title', 'projectCount', 'treeCount'));
    }
    public function Profile()
    {
        $page_title = 'Profile';

        return view('dashboard.profile', compact('page_title'));
    }

    public function district_dashboard()
    {
        $page_title = 'District Monitoring Dashoard';

        return view('dashboard.district', compact('page_title'));
    }
    public function add_project()
    {
        $page_title = 'Register New Project';
        $statemaster = StateMaster::all();
        $officers = User::Where('role_id', 2)->get();

        return view('dashboard.new_project', compact('page_title', 'statemaster', 'officers'));
    }

    public function store(Request $request)
    {
        //print_r($request->all());
        //die;
        $request->validate([
            'project_name' => 'required|string|max:255',
            'state' => 'required|exists:state_master,id',
            'client_name' => 'required|string|max:255',
            'company_name' => 'required|string|max:255',
            'field_officer_name' => 'required|exists:users,id',
        ]);

        Project::create([
            'project_name' => $request->project_name,
            'state_id' => $request->state,
            'client_name' => $request->client_name,
            'company_name' => $request->company_name,
            'field_officer_id' => $request->field_officer_name,
        ]);

        return redirect()->route('project.list')->with('success', 'Project created successfully!');
    }


    public function project_list()
    {
        $page_title = 'Project List';
        $projects = Project::with(['state', 'fieldOfficer'])->get();

        return view('dashboard.project_list', compact('page_title', 'projects'));
    }
    public function destroy($id)
    {
        $project = Project::findOrFail($id);
        $project->delete();
        return redirect()->route('project.list')->with('success', 'Project deleted successfully.');
    }

    public function edit($id)
    {
        $project = Project::findOrFail($id);
        $states = StateMaster::all();
        $officers = User::where('role_id', 2)->get();
        return view('dashboard.project_edit', compact('project', 'states', 'officers'));
    }
    public function update(Request $request, $id)
    {
        $project = Project::findOrFail($id);

        $request->validate([
            'project_name' => 'required|string|max:255',
            'client_name' => 'nullable|string|max:255',
            'state_id' => 'required|exists:state_master,id',
            'company_name' => 'nullable|string|max:255',
            'field_officer_id' => 'required|exists:users,id',
        ]);

        $project->update($request->all());

        return redirect()->route('project.list')->with('success', 'Project updated successfully.');
    }

    // public function add_tree()
    // {
    //     $page_title = 'Register New Tree';

    //     return view('dashboard.new_tree', compact('page_title'));
    // }
    // public function add_tree($id)
    // {
    //     $page_title = 'Edit Tree';

    //     // Tree with relationships
    //     $tree = MtTree::with(['tree', 'scientific', 'familyRelation'])
    //         ->where('project_id', $id)
    //         ->first();

    //     if (!$tree) {
    //         return redirect()->back()->with('error', 'Tree not found for this project.');
    //     }

    //     // Replace IDs with names for display
    //     $tree->tree_name = $tree->tree ? $tree->tree->name : $tree->tree_name;
    //     $tree->scientific_name = $tree->scientific ? $tree->scientific->scientific_name : $tree->scientific_name;
    //     $tree->family = $tree->familyRelation ? $tree->familyRelation->family_name : $tree->family;

    //     $tree->all_captured_images = json_decode($tree->all_captured_images, true);

    //     return view('dashboard.new_tree', compact('page_title', 'tree'));
    // }
    public function edit_tree($id)
    {
        $page_title = 'Edit Tree';

        // Get single tree with relationships
        $tree = MtTree::with(['tree', 'scientific', 'familyRelation'])
            ->where('project_id', $id)
            ->first();

        if (!$tree) {
            return redirect()->back()->with('error', 'No tree found for this project.');
        }

        // Get all trees, scientific names, and families for dropdowns
        $allTrees = Tree::select('id', 'name')->orderBy('name')->get();
        $allScientific = ScientificName::select('id', 'scientific_name')->orderBy('scientific_name')->get();
        $allFamilies = Family::select('id', 'family_name')->orderBy('family_name')->get();

        // Store the selected IDs
        $tree->tree_id = $tree->tree_name;
        $tree->scientific_id = $tree->scientific_name;
        $tree->family_id = $tree->family;

        // Replace IDs with names for display (if needed elsewhere)
        $tree->tree_name = $tree->tree->name ?? $tree->tree_name;
        $tree->scientific_name = $tree->scientific->scientific_name ?? $tree->scientific_name;
        $tree->family = $tree->familyRelation->family_name ?? $tree->family;
        $tree->all_captured_images = json_decode($tree->all_captured_images, true) ?? [];

        return view('dashboard.new_tree', compact('page_title', 'tree', 'allTrees', 'allScientific', 'allFamilies'));
    }
    public function update_tree(Request $request, $tree_id)
    {
        $request->validate([
            'tree_no' => 'required|string|max:255',
            'tree_name' => 'required|string|max:255',
            'tree_images.*' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120',
        ]);

        try {
            $tree = MtTree::findOrFail($tree_id);

            // Update only filled fields
            if ($request->filled('ward_plot_no')) $tree->ward_plot_no = $request->ward_plot_no;
            if ($request->filled('tree_no')) $tree->tree_no = $request->tree_no;
            if ($request->filled('tree_name')) $tree->tree_name = $request->tree_name;
            if ($request->filled('scientific_name')) $tree->scientific_name = $request->scientific_name;
            if ($request->filled('family')) $tree->family = $request->family;
            if ($request->filled('girth')) $tree->girth = $request->girth;
            if ($request->filled('height')) $tree->height = $request->height;
            if ($request->filled('canopy')) $tree->canopy = $request->canopy;
            if ($request->filled('age')) $tree->age = $request->age;
            if ($request->filled('condition')) $tree->condition = $request->condition;
            if ($request->filled('address')) $tree->address = $request->address;
            if ($request->filled('landmark')) $tree->landmark = $request->landmark;
            if ($request->filled('ownership')) $tree->ownership = $request->ownership;
            if ($request->filled('concern_person')) $tree->concern_person = $request->concern_person;
            if ($request->filled('latitude')) $tree->latitude = $request->latitude;
            if ($request->filled('longitude')) $tree->longitude = $request->longitude;
            if ($request->filled('remark')) $tree->remark = $request->remark;

            // Handle existing images
            $existingImages = json_decode($tree->all_captured_images, true) ?? [];

            // Delete selected images from public/tree_images/
            if ($request->images_to_delete) {
                $imagesToDelete = json_decode($request->images_to_delete, true);

                foreach ($imagesToDelete as $imageToDelete) {
                    $filePath = public_path($imageToDelete);

                    // Check if file exists and delete
                    if (file_exists($filePath)) {
                        unlink($filePath);
                    }

                    // Remove from array
                    $existingImages = array_diff($existingImages, [$imageToDelete]);
                }
            }

            // Upload new images to public/tree_images/
            if ($request->hasFile('tree_images')) {
                // Create directory if not exists
                $uploadPath = public_path('tree_images');
                if (!file_exists($uploadPath)) {
                    mkdir($uploadPath, 0777, true);
                }

                foreach ($request->file('tree_images') as $image) {
                    // Generate unique filename
                    $filename = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Move file to public/tree_images/
                    $image->move($uploadPath, $filename);

                    // Store path in array (relative path)
                    $existingImages[] = 'tree_images/' . $filename;
                }
            }

            // Save updated images JSON
            $tree->all_captured_images = json_encode(array_values($existingImages));
            $tree->save();

            return redirect()->route('tree.list')->with('success', 'Tree updated successfully!');
        } catch (\Exception $e) {
            return redirect()->back()->withInput()->with('error', 'Error: ' . $e->getMessage());
        }
    }




    public function tree_list()
    {
        $page_title = 'Tree List';
        $projects = Project::with(['state', 'fieldOfficer'])->get();

        return view('dashboard.tree_list', compact('page_title', 'projects'));
    }


    public function tree_map()
    {
        $page_title = 'Tree Map';
        $trees = MtTree::with('project')
            ->whereNotNull('latitude')
            ->whereNotNull('longitude')
            ->get(['id', 'tree_name', 'latitude', 'longitude', 'project_id', 'address']);

        return view('dashboard.tree_map', compact('page_title', 'trees'));
    }


    public function Distribution_Tracking()
    {
        $page_title = 'Distribution Tracking';

        return view('dashboard.distribution_tracking', compact('page_title'));
    }




    // public function report()
    // {
    //     $page_title = 'Report';

    //     return view('dashboard.report', compact('page_title'));
    // }
    public function project_report(Request $request)
    {
        $page_title = 'Project Report';
        $query = Project::with(['state', 'fieldOfficer']);

        if ($request->filled('from_date') && $request->filled('to_date')) {
            $query->whereBetween('created_at', [
                $request->from_date . ' 00:00:00',
                $request->to_date . ' 23:59:59'
            ]);
        }

        $projects = $query->get();

        if ($request->has('download_pdf')) {
            $pdf = Pdf::loadView('dashboard.report_pdf', compact('projects', 'page_title'));
            return $pdf->download('project_report.pdf');
        }

        return view('dashboard.report', compact('page_title', 'projects'));
    }
    public function tree_report(Request $request)
    {
        $page_title = 'Tree Report';

        // Load with related tables (Tree, ScientificName, Family)
        $query = MtTree::with(['tree', 'scientific', 'familyRelation']);

        if ($request->filled('from_date') && $request->filled('to_date')) {
            $query->whereBetween('created_at', [
                $request->from_date . ' 00:00:00',
                $request->to_date . ' 23:59:59'
            ]);
        }

        $trees = $query->orderBy('created_at', 'desc')->get();

        // For PDF download
        if ($request->has('download_pdf')) {
            $pdf = Pdf::loadView('dashboard.tree_report_pdf', compact('trees', 'page_title'));
            return $pdf->download('tree_report.pdf');
        }

        return view('dashboard.tree_report', compact('page_title', 'trees'));
    }


    public function Records()
    {
        $page_title = 'Inspection Records
';

        return view('dashboard.inspection_records', compact('page_title'));
    }


    public function Schedule()
    {
        $page_title = 'Inspection Schedule';

        return view('dashboard.inspection_schedule', compact('page_title'));
    }


    public function rate_app()
    {
        $ratings = UserRating::with('user')->get();
        $page_title = 'App Rating';

        return view('dashboard.app_rating', compact('page_title', 'ratings'));
    }
    public function app_rate_update(Request $request, $id)
    {
        $request->validate([
            'rating' => 'required|numeric|min:1|max:5',
            'comment' => 'nullable|string|max:500',
        ]);

        $rating = UserRating::findOrFail($id);
        $rating->update([
            'rating' => $request->rating,
            'comment' => $request->comment,
        ]);

        return redirect()->back()->with('success', 'Rating updated successfully!');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StateMaster;
use App\Models\User;
use App\Models\Project;
use App\Models\UserRating;
use App\Models\MtTree;

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

    public function add_tree()
    {
        $page_title = 'Register New Tree';

        return view('dashboard.new_tree', compact('page_title'));
    }
    // public function add_tree($id)
    // {
    //     $page_title = 'Edit Tree';

    //     // Tree fetch using project_id
    //     $tree = MtTree::where('project_id', $id)->first();

    //     if (!$tree) {
    //         return redirect()->back()->with('error', 'Tree not found for this project.');
    //     }

    //     // Relations for dropdowns
    //     $treeModel = \App\Models\Tree::where('id', $tree->tree_name)->first();
    //     $scientificModel = \App\Models\ScientificName::where('id', $tree->scientific_name)->first();
    //     $familyModel = \App\Models\Family::where('id', $tree->family)->first();

    //     // Replace IDs with readable names
    //     $tree->tree_name = $treeModel ? $treeModel->name : $tree->tree_name;
    //     $tree->scientific_name = $scientificModel ? $scientificModel->scientific_name : $tree->scientific_name;
    //     $tree->family = $familyModel ? $familyModel->family_name : $tree->family;

    //     $tree->all_captured_images = json_decode($tree->all_captured_images, true);

    //     return view('dashboard.new_tree', compact('page_title', 'tree'));
    // }



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




    public function report()
    {
        $page_title = 'Report';

        return view('dashboard.report', compact('page_title'));
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

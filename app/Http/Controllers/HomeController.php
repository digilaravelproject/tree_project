<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StateMaster;

class HomeController extends Controller
{
    public function index()
    {
        return view('index');
    }


    public function home()
    {
        $page_title = 'Home';

        return view('dashboard.home', compact('page_title'));
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

        return view('dashboard.new_project', compact('page_title', 'statemaster'));
    }


    public function project_list()
    {
        $page_title = 'Project List';

        return view('dashboard.project_list', compact('page_title'));
    }


    public function add_tree()
    {
        $page_title = 'Register New Tree';

        return view('dashboard.new_tree', compact('page_title'));
    }


    public function tree_list()
    {
        $page_title = 'Tree List';

        return view('dashboard.tree_list', compact('page_title'));
    }


    public function tree_map()
    {
        $page_title = 'Tree Map';

        return view('dashboard.tree_map', compact('page_title'));
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


    public function Analytics()
    {
        $page_title = 'Inspection Analytics';

        return view('dashboard.inspection_analytics', compact('page_title'));
    }
}

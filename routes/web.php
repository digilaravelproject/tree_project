<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\VideoController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\NoteController;
use App\Http\Controllers\PrivacyPolicyController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\TahsilController;

Route::get('/generate-hash', function () {
    $password = 'vedantgamechanger18';
    $hashed = Hash::make($password);
    return "Hashed password: " . $hashed;
});

Route::get('/', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login.store');;
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');


//forget password
Route::get('admin/forgot-password', [AdminAuthController::class, 'showForgotPassword'])->name('admin.forgot.password');
Route::post('admin/send-otp', [AdminAuthController::class, 'sendResetOtp'])->name('admin.send.otp');
Route::get('admin/verify-otp', [AdminAuthController::class, 'showVerifyOtp'])->name('admin.verify.otp.page');

Route::post('admin/verify-otp', [AdminAuthController::class, 'verifyOtp'])->name('admin.verify.otp');
Route::get('admin/reset-password', [AdminAuthController::class, 'showResetPassword'])->name('admin.reset.password.page');
Route::post('admin/reset-password', [AdminAuthController::class, 'resetPassword'])->name('admin.reset.password');

Route::middleware(['auth'])->group(function () {

    Route::get('/roles', [RoleController::class, 'index'])->name('roles.index');
    Route::post('/roles', [RoleController::class, 'store'])->name('roles.store');
    Route::put('/roles/{id}', [RoleController::class, 'update'])->name('roles.update');
    Route::get('/roles/delete/{id}', [RoleController::class, 'delete'])->name('roles.delete');


    Route::middleware(['can:user_management.role.assign.permission'])->group(function () {
        Route::get('/roles/{id}/permissions', [RoleController::class, 'permission_view'])
            ->name('roles.assign.permission');

        Route::put('/roles/{id}/permissions/store', [RoleController::class, 'Store_Permission'])
            ->name('roles.assign.permission.store');
    });

    // user

    Route::get('/User', [UserController::class, 'index'])->name('create.user');
    Route::post('/User/Store', [UserController::class, 'store'])->name('store.user');
    Route::get('/User/List', [UserController::class, 'show'])->name('user.list');
    Route::get('/User/edit/{id}', [UserController::class, 'edit'])->name('user.edit');
    Route::post('/user/update', [UserController::class, 'update'])->name('update.user');
    Route::post('/users/update-status/{id}', [UserController::class, 'updateStatus'])->name('users.update.status');
    Route::get('/User/delete/{id}', [UserController::class, 'delete'])->name('user.delete');

    Route::get('/Dashboard', [HomeController::class, 'home'])->name('home');
    Route::get('/district/dashboard', [HomeController::class, 'district_dashboard'])->name('district.dashboard');

    Route::get('/Profile', [HomeController::class, 'Profile'])->name('profile');
    Route::middleware(['can:project'])->group(function () {
        Route::get('/project/list', [HomeController::class, 'project_list'])->name('project.list');
    });

    Route::middleware(['can:project.create'])->group(function () {
        Route::get('/add/project', [HomeController::class, 'add_project'])->name('add.project');
    });

    Route::middleware(['can:project.store'])->group(function () {
        Route::get('/add/project', [HomeController::class, 'add_project'])->name('add.project');
        Route::post('projects/store', [HomeController::class, 'store'])->name('projects.store');
    });

    Route::middleware(['can:project.edit'])->group(function () {
        Route::get('project/edit/{id}', [HomeController::class, 'edit'])->name('projects.edit');
        Route::post('project/update/{id}', [HomeController::class, 'update'])->name('projects.update');
    });

    Route::middleware(['can:project.delete'])->group(function () {
        Route::delete('project/delete/{id}', [HomeController::class, 'destroy'])->name('projects.delete');
    });


    // Route::get('/add/project', [HomeController::class, 'add_project'])->name('add.project');
    // Route::get('/project/list', [HomeController::class, 'project_list'])->name('project.list');
    // Route::post('projects/store', [HomeController::class, 'store'])->name('projects.store');
    // Route::get('project/edit/{id}', [HomeController::class, 'edit'])->name('projects.edit');
    // Route::post('project/update/{id}', [HomeController::class, 'update'])->name('projects.update');
    // Route::delete('project/delete/{id}', [HomeController::class, 'destroy'])->name('projects.delete');

    // Route::get('/add/tree', [HomeController::class, 'add_tree'])->name('add.tree');
    Route::middleware(['can:tree_data'])->group(function () {
        Route::get('/List/tree', [HomeController::class, 'tree_list'])->name('tree.list');
        Route::get('/edit/tree/{id}', [HomeController::class, 'edit_tree'])->name('trees.edit');
        Route::put('/trees/update/{tree_id}', [HomeController::class, 'update_tree'])->name('trees.update');
        Route::get('/add-tree/name', [HomeController::class, 'add_tree_name'])->name('tree.name.add');
        Route::post('/add-tree/store', [HomeController::class, 'new_tree_add'])->name('tree.name.added');
        Route::get('/tree-name-list', [HomeController::class, 'tree_list_add'])->name('tree.name.list');

        Route::get('/List-trees/{id}/edit', [HomeController::class, 'list_edit'])->name('list.trees.edit');
        Route::put('/List-trees/{id}', [HomeController::class, 'list_update'])->name('list.trees.update');
        Route::delete('/List-trees/{id}', [HomeController::class, 'list_destroy'])->name('list.trees.destroy');
    });
    // Route::get('/edit/tree/{id}', [HomeController::class, 'add_tree'])->name('tree.update');


    Route::middleware(['can:map'])->group(function () {
        Route::get('/tree/map', [HomeController::class, 'tree_map'])->name('tree.map');
    });
    Route::get('/Distribution/Tracking', [HomeController::class, 'Distribution_Tracking'])->name('distribution.tracking');
    Route::middleware(['can:master'])->group(function () {
        Route::get('/project/report', [HomeController::class, 'project_report'])->name('project.report');
        Route::get('/project-report', [HomeController::class, 'project_report'])->name('project.report');
        Route::get('/tree/report', [HomeController::class, 'tree_report'])->name('tree.report');


        Route::get('districts', [DistrictController::class, 'index'])->name('district.index');
        Route::post('districts/store', [DistrictController::class, 'store'])->name('district.store');
        Route::post('districts/update/{district}', [DistrictController::class, 'update'])->name('district.update');
        Route::delete('districts/delete/{district}', [DistrictController::class, 'destroy'])->name('district.destroy');
        Route::get('districts/export', [DistrictController::class, 'export'])->name('district.export');

        Route::get('/tahsil', [TahsilController::class, 'index'])->name('tahsil.index');
        Route::post('/tahsil/store', [TahsilController::class, 'store'])->name('tahsil.store');
        Route::get('/tahsil/edit/{id}', [TahsilController::class, 'edit'])->name('tahsil.edit');

        Route::post('/tahsil/update/{id}', [TahsilController::class, 'update'])->name('tahsil.update');
        Route::delete('/tahsil/delete/{id}', [TahsilController::class, 'destroy'])->name('tahsil.destroy');
        Route::get('/tahsil/export', [TahsilController::class, 'export'])->name('tahsil.export');



        // Route::get('/district/list', [HomeController::class, 'district_list'])->name('district.list');
        // Route::get('/district/add', [HomeController::class, 'district_add'])->name('district.add');
    });
    // Route::get('/Inspection/Records', [HomeController::class, 'Records'])->name('Records');
    // Route::get('/Inspection/Schedule', [HomeController::class, 'Schedule'])->name('Schedule');
    // Route::get('/Inspection/Analytics', [HomeController::class, 'Analytics'])->name('Analytics');


    // Route::post('user-ratings/{id}/update', [HomeController::class, 'app_rate_update'])->name('user-ratings.update');
    // Route::get('/App/Rating', [HomeController::class, 'rate_app'])->name('rate.app');

    Route::middleware(['can:other'])->group(function () {
        Route::post('user-ratings/{id}/update', [HomeController::class, 'app_rate_update'])->name('user-ratings.update');
        Route::get('/App/Rating', [HomeController::class, 'rate_app'])->name('rate.app');
    });

    // ✅ Individual permissions for each module
    Route::middleware(['can:other.faqs'])->group(function () {
        Route::resource('faqs', FaqController::class);
    });

    Route::middleware(['can:other.videos'])->group(function () {
        Route::resource('videos', VideoController::class);
    });

    Route::middleware(['can:other.contacts'])->group(function () {
        Route::resource('contacts', ContactController::class);
    });

    Route::middleware(['can:other.notes'])->group(function () {
        Route::resource('notes', NoteController::class);
    });

    Route::middleware(['can:other.privacy'])->group(function () {
        Route::resource('privacy', PrivacyPolicyController::class);
    });

    Route::middleware(['can:other.privacy.print'])->group(function () {
        Route::get('privacy/{privacy}/print', [PrivacyPolicyController::class, 'print'])->name('privacy.print');
    });
});

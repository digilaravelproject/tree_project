<?php
namespace App\Http\Controllers;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;
use DB;

class RoleController extends Controller
{
public function index()
{
    $page_title = 'User Roles';
    $roles = Role::all();
    return view('admin.user_management.role', compact('page_title','roles'));
}



 public function permission_view($id)

    {
        $page_title = 'Assign Permission';
        $role = Role::find($id);
        $permissions = Permission::get();
        $rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$id)
            ->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')
            ->all();         

        return view('admin.user_management.assign_permission', compact('page_title','role', 'permissions', 'rolePermissions'));
    }

    // public function Store_Permission(Request $request)
    // {
    //     $request->validate([
    //         'role_id' => 'required|exists:roles,id',
    //         'permissions' => 'array',
    //         'permissions.*' => 'exists:permissions,id',
    //     ]);

    //     $role = Role::findOrFail($request->role_id);
    //     $role->syncPermissions($request->permissions);

    //     return redirect()->back()->with('success', 'Permissions updated successfully.');
    // }


public function store(Request $request)
{
    $request->validate([
        'name' => 'required|unique:roles,name'
    ]);

    Role::create(['name' => $request->name]);

    return redirect()->back()->with('success', 'Role created successfully.');
}
public function update(Request $request, $id)
{
    $request->validate([
        'name' => 'required|unique:roles,name,' . $id,
    ]);

    $role = Role::findOrFail($id);
    $role->name = $request->name;
    $role->save();

    return redirect()->back()->with('success', 'Role updated successfully.');
}

 public function Store_Permission(Request $request, $id)
    {
        $request->validate( [
            'name' => 'required',
            'permission' => 'required',
        ]);
    
        $role = Role::find($id);
        $role->name = $request->input('name');
        $role->save();
    
        $role->syncPermissions($request->input('permission'));
    
        return redirect()->route('roles.index')
                        ->with('success','Role updated successfully');
    }
public function delete($id)
{
    $role = Role::findOrFail($id);
    $role->delete();
    return redirect()->back()->with('success', 'Role deleted successfully.');
}

    
}

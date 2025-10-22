<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\District;
use App\Models\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $user = Auth::user();

        $token = $user->createToken('auth_token')->plainTextToken;

        if ($user->profile_image) {
            $user->profile_image = asset('storage/' . $user->profile_image);
        }
        return response()->json([
            'access_token' => $token,
            'token_type' => 'Bearer',
            'user' => $user
        ]);
    }

    public function logout(Request $request)
    {

        $request->user()->currentAccessToken()->delete();

        return response()->json(['message' => 'Logged out successfully']);
    }

    public function changePassword(Request $request)
    {
        $request->validate([
            'current_password' => 'required',
            'new_password' => 'required|confirmed|min:6',
        ]);

        if (!Hash::check($request->current_password, $request->user()->password)) {
            return response()->json(['message' => 'Current password is incorrect.'], 422);
        }

        $request->user()->update(['password' => Hash::make($request->new_password)]);

        return response()->json(['message' => 'Password updated successfully']);
    }


    public function getUserDetails($id)
    {

        $user = User::with(['district', 'roles'])->find($id);

        if (!$user) {
            return response()->json(['message' => 'User not found'], 404);
        }
        if ($user->profile_image) {
            $user->profile_image = asset('storage/' . $user->profile_image);
        }
        return response()->json($user);
    }


    public function uploadProfileImage(Request $request)
    {
        $request->validate([
            'profile_image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'user_id' => 'required|exists:users,id',
        ]);

        $user = User::findOrFail($request->user_id);

        if ($user->profile_image && Storage::disk('public')->exists($user->profile_image)) {
            Storage::disk('public')->delete($user->profile_image);
        }

        $originalName = $request->file('profile_image')->getClientOriginalName();
        $random = Str::random(6);
        $filename = 'user_profile_' . $random . '_' . $originalName;

        $path = $request->file('profile_image')->storeAs('profile_images', $filename, 'public');

        $user->profile_image = $path;
        $user->save();

        return response()->json([
            'message' => 'Profile image uploaded successfully.',
            'image_url' => asset('storage/' . $path),
        ]);
    }


     public function districts()
    {
        $districts = District::orderBy('district_name')->get();
        return response()->json($districts);
    }

public function usersList()
{
    $users = User::with(['roles', 'district'])->get();

    
    return response()->json($users);
}

}




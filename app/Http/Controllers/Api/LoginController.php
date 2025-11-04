<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Project;
use App\Models\Role;
use App\Models\UserRating;
use App\Models\Faq;
use Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use Exception;
use Illuminate\Validation\ValidationException;
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
    public function project_list()
    {
        try {
            $projects = Project::with(['state', 'fieldOfficer'])->get();

            return response()->json([
                'success' => true,
                'message' => 'Project list fetched successfully.',
                'count'   => $projects->count(),
                'data'    => $projects
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong: ' . $e->getMessage(),
            ], 500);
        }
    }
    public function project_assign_officer($id)
    {
        try {
            $projects = Project::with(['state', 'fieldOfficer'])
                ->whereRaw("JSON_CONTAINS(field_officer_id, '\"$id\"')")
                ->get();

            if ($projects->isEmpty()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Not assigned any project.',
                    'count'   => 0,
                    'data'    => []
                ], 200);
            }

            return response()->json([
                'success' => true,
                'message' => 'Project list fetched successfully.',
                'count'   => $projects->count(),
                'data'    => $projects
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong.',
                'error'   => $e->getMessage(),
            ], 500);
        }
    }


    public function user_register(Request $request)
    {
        try {
            // Validation
            $validated = $request->validate([
                'name' => 'required|string|max:255',
                'email' => 'required|email|max:255|unique:users,email',
                'phone' => 'required|string|max:15|unique:users,phone',
                'password' => 'required|confirmed|min:8',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors(),
            ], 422);
        }

        try {
            // Get role with ID 2
            $role = Role::find(2);
            if (!$role) {
                return response()->json([
                    'success' => false,
                    'message' => 'Role not found!',
                ], 404);
            }

            // Create user
            $user = new User();
            $user->name = $validated['name'];
            $user->email = filter_var($validated['email'], FILTER_SANITIZE_EMAIL);
            $user->phone = $validated['phone'];
            $user->role_id = 2;
            $user->district_id = $validated['district_id'] ?? null;
            $user->designation = $validated['designation'] ?? null;
            $user->password = Hash::make($validated['password']);
            $user->save();

            // Assign role (Spatie Permission)
            if (method_exists($user, 'assignRole')) {
                $user->assignRole($role->name);
            }

            return response()->json([
                'success' => true,
                'message' => 'User created successfully!',
                'data' => $user,
            ], 200);
        } catch (Exception $e) {
            // Catch any runtime error and return JSON
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage(),
            ], 500);
        }
    }


    public function user_rating(Request $request)
    {
        try {
            $validated = $request->validate([
                'user_id' => 'required|exists:users,id',
                'rating' => 'required|integer|min:1|max:5',
                'comment' => 'nullable|string|max:255',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors(),
            ], 422);
        }

        // ✅ Check if user already has a rating
        $existingRating = UserRating::where('user_id', $validated['user_id'])->first();

        if ($existingRating) {
            $existingRating->update([
                'rating' => $validated['rating'],
                'comment' => $validated['comment'] ?? null,
            ]);
            $rating = $existingRating;
            $message = 'Rating updated successfully';
        } else {
            $rating = UserRating::create($validated);
            $message = 'Rating submitted successfully';
        }

        return response()->json([
            'success' => true,
            'message' => $message,
            'data' => $rating,
        ], 200);
    }


    // Get all ratings for a specific user
    public function userRatings($user_id)
    {
        $user = User::find($user_id);

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'User not found',
            ], 404);
        }

        $ratings = UserRating::where('user_id', $user_id)->latest()->get();

        return response()->json([
            'success' => true,
            'user' => $user->only(['id', 'name', 'email']),
            'ratings' => $ratings,
            'average_rating' => round($ratings->avg('rating'), 1),
        ]);
    }

    public function faq_list()
    {
        $faqs = Faq::latest()->get();
        return response()->json([
            'status' => true,
            'faqs' => $faqs
        ]);
    }
}

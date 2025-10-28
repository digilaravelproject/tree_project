<?php

use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\WorkController;
use App\Http\Controllers\Api\TreeController;
use App\Http\Controllers\Api\Auth\ForgotPasswordController;
use Illuminate\Support\Facades\Route;

Route::post('/login', [LoginController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', [LoginController::class, 'user']);
Route::middleware('auth:sanctum')->post('/logout', [LoginController::class, 'logout']);
//Route::middleware('auth:sanctum')->post('/change-password', [LoginController::class, 'changePassword']);
//Route::middleware('auth:sanctum')->get('/user/profile', [LoginController::class, 'profile']);
Route::middleware('auth:sanctum')->get('/users/{id}', [LoginController::class, 'getUserDetails']);
Route::middleware('auth:sanctum')->post('/upload-profile-image', [LoginController::class, 'uploadProfileImage']);

Route::middleware('auth:sanctum')->post('/user_register', [LoginController::class, 'user_register']);
Route::middleware('auth:sanctum')->get('/project/list', [LoginController::class, 'project_list']);
Route::middleware('auth:sanctum')->get('/project/officer/{id}', [LoginController::class, 'project_assign_officer']);

Route::middleware('auth:sanctum')->post('/user/rating', [LoginController::class, 'user_rating']);
Route::middleware('auth:sanctum')->get('/user/{user_id}/ratings', [LoginController::class, 'userRatings']);
Route::middleware('auth:sanctum')->get('/faqs', [LoginController::class, 'faq_list']);
Route::middleware('auth:sanctum')->get('/videos', [WorkController::class, 'index']);
Route::middleware('auth:sanctum')->get('/contacts', [WorkController::class, 'contact_list']);
Route::middleware('auth:sanctum')->get('/notes', [WorkController::class, 'notes_list']);
Route::middleware('auth:sanctum')->get('/privacy-policy', [WorkController::class, 'privacy_po']);
Route::middleware('auth:sanctum')->get('/tree/{id}', [WorkController::class, 'show']);
Route::middleware('auth:sanctum')->get('/tree-list', [WorkController::class, 'tree_list']);
Route::middleware('auth:sanctum')->post('/tree/measure', [WorkController::class, 'calculate']);
Route::middleware('auth:sanctum')->get('/dashboard', [TreeController::class, 'dashboard_count']);
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/trees-add', [TreeController::class, 'index']);           // List all trees
    Route::get('/tree-show/{id}', [TreeController::class, 'show']);       // Show one tree
    Route::post('/trees-add', [TreeController::class, 'store']);       // Create new tree
    Route::post('/tree-measure/{id}', [TreeController::class, 'update']);
    Route::delete('/measure-delete/{id}', [TreeController::class, 'destroy']);

    Route::post('password/send-otp', [ForgotPasswordController::class, 'sendResetOtp']);
    Route::post('password/verify-otp', [ForgotPasswordController::class, 'verifyOtp']);
    Route::post('password/reset', [ForgotPasswordController::class, 'resetPassword']);
});

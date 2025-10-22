<?php

use App\Http\Controllers\Api\LoginController;
use Illuminate\Support\Facades\Route;

Route::post('/login', [LoginController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', [LoginController::class, 'user']);
Route::middleware('auth:sanctum')->post('/logout', [LoginController::class, 'logout']);
Route::middleware('auth:sanctum')->post('/change-password', [LoginController::class, 'changePassword']);
Route::middleware('auth:sanctum')->get('/user/profile', [LoginController::class, 'profile']);
Route::middleware('auth:sanctum')->get('/users/{id}', [LoginController::class, 'getUserDetails']);
Route::middleware('auth:sanctum')->post('/upload-profile-image', [LoginController::class, 'uploadProfileImage']);
Route::middleware('auth:sanctum')->get('/districts', [LoginController::class, 'districts']);
Route::middleware('auth:sanctum')->get('/users/list', [LoginController::class, 'usersList']);
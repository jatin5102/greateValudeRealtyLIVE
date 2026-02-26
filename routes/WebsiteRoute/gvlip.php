<?php

use App\Http\Controllers\Website\GvlipDetailsController;
use App\Http\Controllers\Website\PageFaqController;
use App\Http\Controllers\Website\TypologiesGalleriesController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/faqs/{type}', [PageFaqController::class, 'FaqListing']);
Route::get('/gvlip-clients-images', [TypologiesGalleriesController::class, 'index']);
Route::get('/gvlip-details', [GvlipDetailsController::class, 'index']);

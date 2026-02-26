<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\GvlipDetailsController;

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



Route::group(['prefix'=>'admin','middleware'=>'admin.auth'],function(){
    
    Route::apiResource('gvlip-sections', GvlipDetailsController::class)->except(['update']);
    Route::post('gvlip-sections/{id}/update', [GvlipDetailsController::class,'update']);
    
});
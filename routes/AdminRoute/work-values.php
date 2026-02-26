<?php

use Illuminate\Support\Facades\Route;
use  App\Http\Controllers\Admin\WorkValuesController;
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
   
    Route::apiResource('work-values', WorkValuesController::class)->except(['update']);
    Route::post('work-values/{id}/update', [WorkValuesController::class,'update']);
    Route::post('work-values/{id}/status', [WorkValuesController::class,'status']);

   
});
    


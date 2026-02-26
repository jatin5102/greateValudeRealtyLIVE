<?php

use Illuminate\Support\Facades\Route;
use  App\Http\Controllers\Admin\PropertyInvestmentController;
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
   
    Route::apiResource('property-investment', PropertyInvestmentController::class)->except(['update']);
    Route::post('property-investment/{id}/update', [PropertyInvestmentController::class,'update']);
    Route::post('property-investment/{id}/status', [PropertyInvestmentController::class,'status']);

   
});
    


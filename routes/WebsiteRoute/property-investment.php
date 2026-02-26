<?php 
use App\Http\Controllers\Website\PropertyInvestmentController;
use Illuminate\Support\Facades\Route;

Route::get('/property-investment', [PropertyInvestmentController::class, 'index']);

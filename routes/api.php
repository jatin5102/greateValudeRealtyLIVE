<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

Route::get('/test-db', function () {
    try {
        DB::connection()->getPdo();
        return "✅ Database connected successfully!";
    } catch (\Exception $e) {
        return "❌ Database connection failed: " . $e->getMessage();
    }
});
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
 

Route::get('/proxy-download', function (Request $request) {
    $fileUrl = $request->query('url'); // Get the file URL

     if (!$fileUrl) {
          return response()->json(['error' => 'File URL is required'], 400);
     }

     if (str_starts_with($fileUrl, url('/storage'))) {
          
          $relativePath = str_replace(url('/storage') . '/', '', $fileUrl);
          $fullPath = storage_path("app/public/{$relativePath}");

          if (!file_exists($fullPath)) {
               return response()->json(['error' => 'File not found'], 404);
          }
          return response()->download($fullPath);

     }

     $response = Http::get($fileUrl);

     if (!$response->successful()) {
          return response()->json(['error' => 'Failed to fetch file'], 500);
     }

     $pathInfo = pathinfo(parse_url($fileUrl, PHP_URL_PATH));
     $extension = $pathInfo['extension'] ?? 'jpg';
     $filename = 'downloaded_file.' . $extension;

     return Response::make($response->body(), 200)
     ->header('Content-Type', $response->header('Content-Type'))
     ->header('Content-Disposition', 'attachment; filename="' . $filename . '"')
     ->header('Access-Control-Allow-Origin', '*');
     
});



$adminroutes = glob(__DIR__ . "/AdminRoute/*.php");
$userRoutes = glob(__DIR__ . "/WebsiteRoute/*.php");

foreach ($adminroutes as $route) require($route);
foreach ($userRoutes as $route) require($route);



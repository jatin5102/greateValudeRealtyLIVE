<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Website\TypologiesGallery;

class TypologiesGalleriesController extends Controller
{
    public function index (Request $request)
    {   

        $type = "";
        if(!empty($request->type)){
            $type = $request->type;
        }

        $is_gvlip = "";
        if(!empty($request->is_gvlip)){
            $is_gvlip = $request->is_gvlip;
        }
        
        $perPage = $request->input('per_page', 20);
        $page = $request->input('page', 1);
        $record = TypologiesGallery::where('type', $type)
        ->when($is_gvlip == 1, function ($query) {
            return $query->where('is_gvlip', 1);
        })
        ->paginate($perPage, ['*'], 'page', $page);
        
        return response()->json([
            'status' => true,
            'statusCode' => 200,
            'message' => 'Get All Records',
            'data' => $record
        ]);
    }
}

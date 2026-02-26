<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Website\GvlipDetails;
use Illuminate\Http\Request;
 
 

class GvlipDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    
 
    public function index(Request $request)
    {
        $section="";
        if(!empty($request->section)){
            $section = $request->section; 
        }
        
        $perPage = $request->input('per_page', 10); // Number of products per page
        $page = $request->input('page', 1); // Current page number

        $data = GvlipDetails::where('section',$section)->paginate($perPage, ['*'], 'page', $page);
        if($data){
            return response()->json([
                'status'=>true,
                'statusCode'=>200,
                'message'=>"Success ",
                'data'=>$data
            ]);
        }

        return response()->json([
            'status'=>false,
            'statusCode'=>400,
            'message'=>"notfound ",
        ]);
    }

}

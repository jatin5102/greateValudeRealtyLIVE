<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Website\WorkValues;
use Illuminate\Http\Request;

class WorkValueController extends Controller
{
    public function index ()
    {   

        $data = WorkValues::get();
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$data,
        ]);
    }
}

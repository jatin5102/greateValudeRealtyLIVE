<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Website\PropertyInvestment;
use Illuminate\Http\Request;

class PropertyInvestmentController extends Controller
{
    public function index ()
    {   

        $data = PropertyInvestment::get();
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$data,
        ]);
    }
}

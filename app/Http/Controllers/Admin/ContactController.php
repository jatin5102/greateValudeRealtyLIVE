<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Website\Contact;
use App\Models\Admin\EnquiryServices;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search="";
        if(!empty($request->search)){
            $search=$request->search;
        }
        $perPage = $request->input('per_page', 10);
        $page = $request->input('page', 1);
        $countries = Contact::search($search)->orderBy('id', 'DESC')->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$countries
        ]);
    }


    public function listEnquiry (Request $request)
    {
        $search="";
        if(!empty($request->search)){
            $search=$request->search;
        }
        $perPage = $request->input('per_page', 10);
        $page = $request->input('page', 1);
        $countries = EnquiryServices::search($search)->orderBy('id', 'DESC')->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$countries
        ]);
    }

}

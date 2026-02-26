<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\GvlipDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class GvlipDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('admin.auth');
    }

    public function getSecionList($section)
    {
        $data = DB::table('gvlip_details')->where('section',$section)->get();        
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$data
        ]);
    }

    public function index(Request $request)
    {
        $search="";
        if(!empty($request->search)){
            $search = $request->search; 
        }
        
        $perPage = $request->input('per_page', 10); // Number of products per page
        $page = $request->input('page', 1); // Current page number


        $data = GvlipDetails::search($search)->paginate($perPage, ['*'], 'page', $page);
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'section' => 'required|in:overview,welcome,industries,legacy-list,approvals-list,about,environment', 
            'image' => 'nullable|image|mimes:jpg,png,webp,jpeg',
            'alternative_image' => 'nullable|image|mimes:jpg,png,jpeg',
            'heading' => 'required',
        ],
        [
            'image.mimes' => 'Valid Image ',
            'alternative_image.mimes' => 'Valid Image ',
            'section.required' => 'The section field is required.',
            'section.in' => 'Invalid section type',
            'heading.required' => 'The heading field is required.',
        ]);


        if($validator->fails()){
            return response()->json([
                'status'=>true,
                'statusCode'=>403,
                'message' => "success",
                'errors'=>$validator->errors()->toArray()
            ]);

        }else{
            
            try{
    
                $records = new GvlipDetails();
                $records->section = $request->section;
                $records->heading = $request->heading;

                if($request->hasFile('image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('gvlip', $filename, 'public');
                    if($records->image){
                        dltSingleImgFile($records->image);
                    }
                    $records->image = $path;
                }

                if($request->hasFile('alternative_image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('gvlip', $filename, 'public');
                    if($records->alternative_image){
                        dltSingleImgFile($records->alternative_image);
                    }
                    $records->alternative_image = $path;
                }

                if(!empty($request->alt)) {
                    $records->alt = $request->alt;
                }

                if(!empty($request->description)){
                    $records->description = $request->description;
                }
  
                if($records->save()){

                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>$request->page_section." Added Sucessfully ",
                        'data'=>$records
                    ]);

                }else{

                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed"
                    ]);

                }
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>$e->getMessage(),
                ]);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         
        $data = GvlipDetails::Where('id',$id)->first();

          if($data){
            return response()->json([
                'status'=>true,
                'statusCode'=>200,
                'message'=>"success",
                'data'=>$data
                ]);
          }
          return response()->json([
            'status'=>false,
            'statusCode'=>404,
            'message'=>"false",
            ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(),[
            'section' => 'required|in:overview,welcome,industries,legacy-list,approvals-list,about,environment', 
            'image' => 'nullable|image|mimes:jpg,png,jpeg,webp',
            'alternative_image' => 'nullable|image|mimes:jpg,png,jpeg,',
            'heading' => 'required',
        ],
        [
            'image.mimes' => 'Valid Image ',
            'alternative_image.mimes' => 'Valid Image ',
            'section.required' => 'The section field is required.',
            'heading.required' => 'The heading field is required.',
            'section.in' => 'Invalid section type',
        ]);


        if($validator->fails()){
            return response()->json([
                'status'=>true,
                'statusCode'=>403,
                'message' => "success",
                'errors'=>$validator->errors()->toArray()
            ]);

        }else{
            
            try{

                $getrecord = GvlipDetails::select('*')->where('id',$id)->first();
                if(!$getrecord){
                    return response()->json([
                        'status'=>false,
                        'statusCode'=>500,
                       'message' =>"Invalid Request/ Not Found ",
                    ]);
                }
        
                // $records = new GvlipDetails();
                $getrecord->section = $request->section;
                $getrecord->heading = $request->heading;

                if($request->hasFile('image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('gvlip', $filename, 'public');
                    if($getrecord->image){
                        dltSingleImgFile($getrecord->image);
                    }
                    $getrecord->image = $path;
                }

                if($request->hasFile('alternative_image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('gvlip', $filename, 'public');
                    if($getrecord->alternative_image){
                        dltSingleImgFile($getrecord->alternative_image);
                    }
                    $getrecord->alternative_image = $path;
                }

                if(!empty($request->alt)) {
                    $getrecord->alt = $request->alt;
                }

                if(!empty($request->description)){
                    $getrecord->description = $request->description;
                }
  
                if($getrecord->save()){

                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>" Updated Sucessfully ",
                        'data'=>$getrecord
                    ]);

                }else{

                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed"
                    ]);

                }
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>$e->getMessage(),
                ]);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $getrecord = GvlipDetails::select('*')->where('id',$id)->first();
        if(!$getrecord){
            return response()->json([
                'status'=>false,
                'statusCode'=>500,
               'message' =>"Invalid Request/ Not Found ",
            ]);
        }

        
        if($getrecord->delete()){
            return response()->json([
                'status'=>true,
                'statusCode'=>200,
                'message'=>"Deleted Sucessfully ",
                'data'=>$getrecord
            ]);
        }
        

        return response()->json([
            'status'=>false,
            'statusCode'=>500,
            'message' =>"Invalid Request/ Not Found ",
        ]);
        
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\SocialLinks;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class SocialController extends Controller
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


    public function index()
    {
         
        $socialLinks = SocialLinks::all();
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$socialLinks
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
        $validator = Validator::make($request->all(), [
            'image' => 'required|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'name' => 'required|unique:social_links,name,NULL,id,deleted_at,NULL', // Checks only active records
        ],
        [
            'image.required' => 'The image field is required.',
            'image.mimes' => 'Invalid Image type only aloowed (png,jpg,jpeg,webp)',
            // 'alternative_image.required' => 'The Alternative Image field is required.',
            'alternative_image.mimes' => 'Invalid Alternative Image type only aloowed (png,jpg,jpeg)',
            'name.required' => 'This name field is required.',
            'name.unique' => 'Social Already Exists.',
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
                
                $existingRecord = SocialLinks::withTrashed()->where('name', $request->name)->first();
                if ($existingRecord) {
                    if ($existingRecord->trashed()) {
                       
                        $existingRecord->restore();
                        return response()->json([
                            'status' => true,
                            'statusCode' => 200,
                            'message' => "Record Added successfully",
                            'data' => $existingRecord
                        ]);
                    } 
                }

                $sociallinks = new SocialLinks();

                $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                $path = $request->file('image')->storeAs('social-links', $filename, 'public');

                if($request->hasFile('alternative_image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path_alt = $request->file('alternative_image')->storeAs('social-links', $filename, 'public');
                    $sociallinks->alternative_image = $path_alt;
                }
                
                
                $sociallinks->image = $path;
               
                $sociallinks->name = $request->name;
                $sociallinks->alt = $request->alt;
                $sociallinks->links = $request->links;
                
                if($sociallinks->save()){        
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Media Added Sucessfully ",
                        'data'=>$sociallinks
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to add Media "
                    ]);
                }
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>"Something went wrong",
                    'error' => $e->getMessage(),
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
        $sociallinks = SocialLinks::find($id);
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"success",
            'data'=>$sociallinks
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
        $validator = Validator::make($request->all(), [
            'image' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'name' => ['required',Rule::unique('social_links')->ignore($request->id)]
        ], [
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_image.mimes' => 'Invalid Alternative Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The Alternative image may not be greater than 2048 kilobytes.',
            'name.required' => 'The name field is required.',
            'name.unique' => 'Social Links Already Exists.',
        ]);

        if($validator->fails()){
            return response()->json([
                'status'=>true,
                'statusCode'=>403,
                'message' => "success",
                'errors'=>$validator->errors()->toArray()
            ]);
        }

        $getrecord = SocialLinks::select('*')->where('id',$id)->first();
        if(!$getrecord){
            return response()->json([
                'status'=>false,
                'statusCode'=>500,
               'message' =>"Invalid Request/ Not Found ",
            ]);
        }

      
        if($request->file('image')){
          
            $imagesurl=str_replace(env('ASSET_URL'), "",$getrecord->image);
            dltSingleImgFile($imagesurl);
            
            $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
            $path = $request->file('image')->storeAs('social-links', $filename, 'public');
            $getrecord->image = $path;
        }


        if($request->file('alternative_image')){
          
            $imagesurl=str_replace(env('ASSET_URL'), "",$getrecord->alternative_image);
            dltSingleImgFile($imagesurl);
            
            $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
            $path = $request->file('alternative_image')->storeAs('social-links', $filename, 'public');
            $getrecord->alternative_image = $path;
        }

        $getrecord->name = $request->name;
        $getrecord->alt = $request->alt;
        $getrecord->links = $request->links;

        if($getrecord->save()){
            return response()->json([
                'status' => true,
                'statusCode' => 200,
                'message' => "Updated Sucessfully ",
                'data' => $getrecord
            ]);
        }

        return response()->json([
            'status'=>false,
            'statusCode'=>500,
           'message' =>"Invalid Request/ Not Found ",
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $getrecord = SocialLinks::select('*')->where('id',$id)->first();
        
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

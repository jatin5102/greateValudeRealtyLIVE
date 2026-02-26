<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\PropertyInvestment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class PropertyInvestmentController extends Controller
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
        $socialLinks = PropertyInvestment::all();
             
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
            'heading' => 'required', // Checks only active records
            'short_description' => 'required',
        ],
        [
            'image.required' => 'The image field is required.',
            'image.mimes' => 'Invalid Image type only aloowed (png,jpg,jpeg,webp)',
            // 'alternative_image.required' => 'The image field is required.',
            'alternative_image.mimes' => 'Invalid Image type only aloowed (png,jpg,jpeg)',
            'heading.required' => 'This heading field is required.',
            // 'heading.unique' => 'Social Already Exists.',
            'short_description.required' => 'This field is required',
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
                
                $existingRecord = PropertyInvestment::withTrashed()->where('heading', $request->heading)->first();
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

                $propertyinvestment = new PropertyInvestment();

                $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                $path = $request->file('image')->storeAs('property-investment', $filename, 'public');

                if($request->hasFile('alternative_image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path_alt = $request->file('alternative_image')->storeAs('property-investment', $filename, 'public');
                    $propertyinvestment->alternative_image = $path_alt;
                }
               
                $propertyinvestment->image = $path;
                $propertyinvestment->heading = $request->heading;
                $propertyinvestment->alt = $request->alt;
                $propertyinvestment->short_description = $request->short_description;
                
                if($propertyinvestment->save()){        
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Property Investment Added Sucessfully ",
                        'data'=>$propertyinvestment
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to add Property Investment"
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
        $propertyinvestment = PropertyInvestment::find($id);
        return response()->json([
            'status' => true,
            'statusCode' => 200,
            'message' => "success",
            'data' => $propertyinvestment
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
            // 'heading' => ['required',Rule::unique('property_investments')->ignore($request->id)]
            'heading' => 'required',
        ], [
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg,webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
            'heading.required' => 'The heading field is required.',
            // 'heading.unique' => 'Already Exists.',
        ]);

        if($validator->fails()){
            return response()->json([
                'status'=>true,
                'statusCode'=>403,
                'message' => "success",
                'errors'=>$validator->errors()->toArray()
            ]);
        }

        $getrecord = PropertyInvestment::select('*')->where('id',$id)->first();
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
            $path = $request->file('image')->storeAs('property-investment', $filename, 'public');
            $getrecord->image = $path;
        }

        if($request->file('alternative_image')){
          
            $imagesurl=str_replace(env('ASSET_URL'), "",$getrecord->alternative_image);
            dltSingleImgFile($imagesurl);
            
            $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
            $path = $request->file('alternative_image')->storeAs('property-investment', $filename, 'public');
            $getrecord->alternative_image = $path;
        }

        $getrecord->heading = $request->heading;
        $getrecord->alt = $request->alt;
        $getrecord->short_description = $request->short_description;

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
        $getrecord = PropertyInvestment::select('*')->where('id',$id)->first();
        
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

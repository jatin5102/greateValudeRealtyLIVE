<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Testimonials;
use Illuminate\Support\Facades\Validator;


class TestimonialsController extends Controller
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
            $search = $request->search;
        }
        $perPage = $request->input('per_page', 10);
        $page = $request->input('page', 1);
        $record = Testimonials::search($search)->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success",
            'data'=>$record
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
        $validator = Validator::make($request->all(),
        [
            'name' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'destination' => 'required',
            'description' => 'required',
          
            
        ],[
            'name.required' => 'The Name field is required.',
            'image.required' => 'The Image field is required.',
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            // 'alternative_image.required' => 'The Alternative Image field is required.',
            'alternative_image.mimes' => 'Invalid Alternative Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
            'destination.required' => 'This Field is required.',
            'description.required' => 'This Field is required',

        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => 'Fill Mandatory Fields',
                'errors' => $validator->errors(),
            ]); 

        }else{
            try{

                $testinomials = new Testimonials();

                $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                $path = $request->file('image')->storeAs('testimonials', $filename, 'public');

                // alternative_image
                if($request->hasFile('alternative_image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path_alt = $request->file('alternative_image')->storeAs('testimonials', $filename, 'public');
                    $testinomials->alternative_image = $path_alt;
                }
                
                $video = null;
                if($request->hasFile('video')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('video')->getClientOriginalName());
                    $video = $request->file('video')->storeAs('testimonials', $filename, 'public');
                }


                $testinomials->name = $request->name;
                $testinomials->image = $path;
                $testinomials->video = $video;
                $testinomials->iframe_url = $request->iframe_url;
                $testinomials->destination = $request->destination;
                $testinomials->description = $request->description;
                
                if($request->alt){
                    $testinomials->alt = $request->alt;
                }

                if($testinomials->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Add Testinomial Sucessfully ",
                        'data'=>$testinomials
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to add Testimonial"
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
        $result = Testimonials::find($id);
        if(!empty($result)){

            return response()->json([
                'status' => true,
                'statusCode' => 200,
                'message' => "Get Single Record",
                'data' => $result,
            ]);

        }else{

            return response()->json([
                'status' => true,
                'statusCode' => 200,
                'message' => "Matching record not found",
            ]);

        }
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

        $validator = Validator::make($request->all(),
        [
            'name' => 'required',
            'image' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'destination' => 'required',
            'description' => 'required',
            
        ],[
            'name.required' => 'The Name field is required.',
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
            'destination.required' => 'This Field is required.',
            'description.required' => 'This Field is required',
            
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => 'success',
                'errors' => $validator->errors(),
            ]); 

        }else{

            $getrecord = Testimonials::find($id);
            
            if(!$getrecord){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message' =>"Invalid Request/ Not Found ",
                ]);
            }

            try{

                if($request->file('image')){
          
                    $imagesurl = $getrecord->image;
                    dltSingleImgFile($imagesurl);
                    
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('testimonials', $filename, 'public');
                    $getrecord->image = $path;
                }

                if($request->file('alternative_image')){
          
                    $imagesurl = $getrecord->alternative_image;
                    dltSingleImgFile($imagesurl);
                    
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('testimonials', $filename, 'public');
                    $getrecord->alternative_image = $path;
                }

                if($request->file('video')){
          
                    $imagesurl = $getrecord->video;
                    dltSingleImgFile($imagesurl);
                    
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('video')->getClientOriginalName());
                    $video_url = $request->file('video')->storeAs('testimonials', $filename, 'public');
                    $getrecord->video = $video_url;
                }
                

                $getrecord->name = $request->name;
                $getrecord->iframe_url = $request->iframe_url;
                $getrecord->destination = $request->destination;
                $getrecord->description = $request->description;

                if($request->alt){
                    $getrecord->alt = $request->alt;
                }

                if($getrecord->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Update Testinomial Sucessfully ",
                        'data'=>$getrecord
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to update Testimonial"
                    ]);
                }
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>"Something went wrong",
                    'error' => $e
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
        $result = Testimonials::find($id);

        if(!empty($result)){

            dltSingleImgFile($result->image);
            dltSingleImgFile($result->video);

            if($result->delete()){

                return response()->json([
                    'status' => true,
                    'statusCode' => 200,
                    'message' => "Record Deleted",
                    'data' => $result,
                ]);    
             }

            return response()->json([
                'status' => true,
                'statusCode' => 500,
                'message' => "faild to delete records",
            ]);



        }else{

            return response()->json([
                'status' => true,
                'statusCode' => 404,
                'message' => "Matching record not found",
            ]);

        }
    }


    public function status(Request $request, $id)
    {
        $table = [
            'tableName' => 'testimonials',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'status',
            'updatecolumnVal' => $request->status
        ];
        
        $result = updateSingleRecord($table);
        return $result;
    }
}

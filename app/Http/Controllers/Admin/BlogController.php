<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Admin\Blog;
use Psr\Http\Message\ResponseInterface;

class BlogController extends Controller
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
        $record = Blog::search($search)->orderBy('created_at', 'desc')->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
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
            'heading' => 'required',
            'image' => 'required|nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'thumbnail' => 'required|nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'alternative_thumbnail' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'description' => 'required',
            
        ],[
            'heading.required' => 'The Name field is required.',
            'image.required' => 'The Image field is required.',
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'thumbnail.required' => 'The Image field is required.',
            'thumbnail.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'thumbnail.max' => 'The image may not be greater than 2048 kilobytes.',
            // 'alternative_image.required' => 'The Image field is required.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
            // 'alternative_thumbnail.required' => 'The Image field is required.',
            'alternative_thumbnail.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_thumbnail.max' => 'The image may not be greater than 2048 kilobytes.',
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
            try{
                $blogdat = new Blog();
                
                if($request->file('image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('blog', $filename, 'public');
                    $blogdat->image = $path;
                }
                
                if($request->file('thumbnail')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('thumbnail')->getClientOriginalName());
                    $lispath = $request->file('thumbnail')->storeAs('blog', $filename, 'public');
                    $blogdat->thumbnail = $lispath;
                }

                if($request->file('alternative_image')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('blog', $filename, 'public');
                    $blogdat->alternative_image = $path;
                }
                
                if($request->file('alternative_thumbnail')){
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_thumbnail')->getClientOriginalName());
                    $lispath = $request->file('alternative_thumbnail')->storeAs('blog', $filename, 'public');
                    $blogdat->alternative_thumbnail = $lispath;
                }
                
                $blogdat->slug = trim($request->slug);
                $blogdat->heading = $request->heading;
                $blogdat->description = $request->description;
                $blogdat->date_at = $request->date_at;

                $blogdat->meta_title=$request->meta_title; 
                $blogdat->meta_keyword=$request->meta_keyword;
                $blogdat->meta_description=$request->meta_description;
                $blogdat->meta_author = $request->meta_author;
                $blogdat->seo_tags = $request->seo_tags;


                if($request->alt) {
                    $blogdat->alt = $request->alt;
                }

 
                if($blogdat->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Add Blog Sucessfully ",
                        'data'=>$blogdat
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to add Blog"
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

        $result = Blog::find($id);
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
            
            'heading' => 'required',
            'image' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'thumbnail' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'alternative_thumbnail' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            'description' => 'required',
            
        ],[
            'heading.required' => 'The Name field is required.',
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'thumbnail.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'thumbnail.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_thumbnail.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_thumbnail.max' => 'The image may not be greater than 2048 kilobytes.',
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

            $getrecord = Blog::find($id);
            
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
                    $path = $request->file('image')->storeAs('blog', $filename, 'public');
                    $getrecord->image = $path;
                }

                if($request->file('thumbnail')){
          
                    $imagesurl = $getrecord->thumbnail;
                    dltSingleImgFile($imagesurl);
                    
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('thumbnail')->getClientOriginalName());
                    $path = $request->file('thumbnail')->storeAs('blog', $filename, 'public');
                    $getrecord->thumbnail = $path;
                }

                if($request->file('alternative_image')){

                    $imagesurl = $getrecord->alternative_image;
                    dltSingleImgFile($imagesurl);
                   
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('blog', $filename, 'public');
                    $getrecord->alternative_image = $path;

                }

                if($request->file('alternative_thumbnail')){

                    $imagesurl = $getrecord->alternative_thumbnail;
                    dltSingleImgFile($imagesurl);
                    
                   
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_thumbnail')->getClientOriginalName());
                    $path = $request->file('alternative_thumbnail')->storeAs('blog', $filename, 'public');
                    $getrecord->alternative_thumbnail = $path;

                }

                $getrecord->slug = trim($request->slug);
                $getrecord->heading = $request->heading;
                $getrecord->description = $request->description;
                $getrecord->alt = $request->alt;
                $getrecord->date_at = $request->date_at;

                $getrecord->meta_title=$request->meta_title; 
                $getrecord->meta_keyword=$request->meta_keyword;
                $getrecord->meta_description=$request->meta_description;
                $getrecord->meta_author = $request->meta_author;
                $getrecord->seo_tags = $request->seo_tags;
        
                if($getrecord->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Updated Blog Sucessfully ",
                        'data'=>$getrecord
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to Update Blog"
                    ]);
                }
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>"Something went wrong",
                    // 'error' => $e
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
        $result = Blog::find($id);

        dltSingleImgFile($result->image);
        dltSingleImgFile($result->thumbnail);

        if(!empty($result)){
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
            'tableName' => 'blogs',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'status',
            'updatecolumnVal' => $request->status
        ];
        
        $result = updateSingleRecord($table);
        return $result;
    }

}

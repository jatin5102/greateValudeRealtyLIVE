<?php

namespace App\Http\Controllers\Admin\Project;

use App\Http\Controllers\Controller;
use App\Models\Admin\Project\ProjectBanner;
use App\Models\Admin\Project\ProjectFloorPlan;
use App\Models\Admin\Project\ProjectGallery;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ProjectBannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $validator = Validator::make($request->all(),
        [
        
            'project_id' => 'required|exists:projects,id',
            
        ],[
        
            'project_id.required' => 'Project  is required',
            'project_id.exists' => 'Project is not exist in record',
        ]);


        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory fields",
                'errors'=>$validator->errors()
            ]); 

        }

        $perPage = $request->input('per_page', 5); // Number of products per page
        $page = $request->input('page', 1); // Current page number

        // Fetch products with pagination
 
        $result = ProjectBanner::where('project_id',$request->project_id)->orderBy('id','DESC')->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$result
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
            'project_id'     => 'required|exists:projects,id',
            'is_type'        => 'required|in:image,video',
            // Image validation (only if is_type is 'image')
            'desktop_image'  => 'required_if:is_type,image|mimes:png,jpg,jpeg,webp,svg|max:2048',
            'mobile_image'   => 'required_if:is_type,image|mimes:png,jpg,jpeg,webp,svg|max:2048',
            // Video validation (only if is_type is 'video')
            'desktop_video'  => 'required_if:is_type,video|mimes:mp4,webm',
            'mobile_video'   => 'required_if:is_type,video|mimes:mp4,webm',

        ], [

            'project_id.required'     => 'Project is required',
            'project_id.exists'       => 'Project does not exist in records',

            'is_type.required'        => 'Type is required',
            'is_type.in'              => 'Type must be either image or video',

            'desktop_image.required_if' => 'Desktop Image is required when type is image',
            'desktop_image.max'         => 'Maximum desktop image size limit is 2 MB',

            'mobile_image.required_if'  => 'Mobile Image is required when type is image',
            'mobile_image.max'          => 'Maximum mobile image size limit is 2 MB',

            'desktop_video.required_if' => 'Desktop Video is required when type is video',
            'mobile_video.required_if'  => 'Mobile Video is required when type is video',

        ]);


        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory Fields",
                'errors'=>$validator->errors()
            ]); 

        }else{
            try{

                $projectbanner = new ProjectBanner();
                if($request->hasFile('desktop_image')){
                    $name = now()->timestamp.".{$request->desktop_image->getClientOriginalName()}";
                    $path = $request->file('desktop_image')->storeAs('project/banners', $name, 'public');
                    $projectbanner->desktop_image = $path;
                }


                if($request->hasFile('mobile_image')){
                    $name = now()->timestamp.".{$request->mobile_image->getClientOriginalName()}";
                    $path = $request->file('mobile_image')->storeAs('project/banners', $name, 'public');
                    $projectbanner->mobile_image = $path;
                }
                
                if($request->hasFile('desktop_video')){
                    $name = now()->timestamp.".{$request->desktop_video->getClientOriginalName()}";
                    $path = $request->file('desktop_video')->storeAs('project/banners', $name, 'public');
                    $projectbanner->desktop_video = $path;
                }

                if($request->hasFile('mobile_video')){
                    $name = now()->timestamp.".{$request->mobile_video->getClientOriginalName()}";
                    $path = $request->file('mobile_video')->storeAs('project/banners', $name, 'public');
                    $projectbanner->mobile_video = $path;
                }

                $projectbanner->project_id = $request->project_id;
                $projectbanner->alt_text = $request->alt_text;
                $projectbanner->is_type = $request->is_type;

                if($projectbanner->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Banner Added Sucessfully ",
                        'data'=>$projectbanner
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to Add  Banner"
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        
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

        $result =ProjectBanner::find($id);
        if($result){
            return response()->json([
              'status'=>true,
              'statusCode'=>200,
              'message'=>"success",
              'data'=>$result
              ]);  
        }

        return response()->json([
            'status'=>true,
            'statusCode'=>404,
            'message'=>"success",
        ]); 





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
            
            'is_type'        => 'required|in:image,video',
            // Image validation (only if is_type is 'image')
            'desktop_image' => 'nullable|mimes:png,jpg,jpeg,webp,svg|max:2048',
            'mobile_image'  => 'nullable|mimes:png,jpg,jpeg,webp,svg|max:2048',

            'desktop_video' => 'nullable|mimes:mp4,webm,ogg|max:10240',
            'mobile_video'  => 'nullable|mimes:mp4,webm,ogg|max:10240',

        ], [

            'project_id.required'     => 'Project is required',
            'project_id.exists'       => 'Project does not exist in records',

            'is_type.required'        => 'Type is required',
            'is_type.in'              => 'Type must be either image or video',
            'desktop_image.max'         => 'Maximum desktop image size limit is 2 MB',
            'mobile_image.max'          => 'Maximum mobile image size limit is 2 MB',
 
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory Fields",
                'errors'=>$validator->errors()
            ]); 

        }else{
            try{
                $result = ProjectBanner::find($id);
                if($result){

                    if($request->hasFile('desktop_image')){
                        dltSingleImgFile($result->desktop_image);
                        $name = now()->timestamp.".{$request->desktop_image->getClientOriginalName()}";
                        $path = $request->file('desktop_image')->storeAs('project/banner', $name, 'public');
                        $result->desktop_image = $path;
                    }

                    if($request->hasFile('mobile_image')){
                        dltSingleImgFile($result->mobile_image);
                        $name = now()->timestamp.".{$request->mobile_image->getClientOriginalName()}";
                        $path = $request->file('mobile_image')->storeAs('project/banner', $name, 'public');
                        $result->mobile_image = $path;
                    }

                    if($request->hasFile('desktop_video')){
                        dltSingleImgFile($result->desktop_video);
                        $name = now()->timestamp.".{$request->desktop_video->getClientOriginalName()}";
                        $path = $request->file('desktop_video')->storeAs('project/banner', $name, 'public');
                        $result->desktop_video = $path;
                    }

                    if($request->hasFile('mobile_video')){
                        dltSingleImgFile($result->mobile_video);
                        $name = now()->timestamp.".{$request->mobile_video->getClientOriginalName()}";
                        $path = $request->file('mobile_video')->storeAs('project/banner', $name, 'public');
                        $result->mobile_video = $path;
                    }

                    $result->is_type = $request->is_type;
                    $result->alt_text = $request->alt_text;

                    if($result->save()){              
                        return response()->json([
                            'status'=>true,
                            'statusCode'=>200,
                            'message'=>"Update Sucessfully ",
                            'data'=>$result
                        ]);
                    }else{
                        return response()->json([
                            'status'=>true,
                            'statusCode'=>400,
                            'message'=>"Failed to Update Banner"
                        ]);
                    }
                }
                return response()->json([
                    'status'=>true,
                    'statusCode'=>404,
                    'message'=>"Not found"
                ]);
                
    
            }catch(\Exception $e){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message'=>"Something went wrong",
                    'error' => $e->getMessage()
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
        $getrecord = ProjectBanner::find($id);
        if($getrecord){
            dltSingleImgFile($getrecord->desktop_image);
            dltSingleImgFile($getrecord->mobile_image);

            if($getrecord->delete()){
                return response()->json([
                    'status'=>true,
                    'statusCode'=>200,
                    'message'=>"Record Deleted ",
                    'data'=>$getrecord
                ]);
            }
            return response()->json([
                'status'=>false,
                'statusCode'=>500,
                'message'=>"Sometnign went wrong",
            ]);
    
        } return response()->json([
            'status'=>true,
            'statusCode'=>404,
            'message'=>"not found",
        ]);
      
    }
}

<?php

namespace App\Http\Controllers\Admin\Project;

use App\Http\Controllers\Controller;
use App\Models\Admin\Project\ProjectMasterPlan;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class MasterPlanController extends Controller
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





        $amenitis = ProjectMasterPlan::where('project_id',$request->project_id)->paginate($perPage, ['*'], 'page', $page);
             
        return response()->json([
            'status'=>true,
            'statusCode'=>200,
            'message'=>"Success ",
            'data'=>$amenitis
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
            'project_id' => 'required|exists:projects,id',
            'image' => 'required',
            'heading' => 'required',
        ], [
            'project_id.required' => 'Project is required',
            'project_id.exists' => 'Project does not exist in records',
        
            'image.required' => 'image field is required',
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
                $floorplans = new ProjectMasterPlan();

                if ($request->hasFile('image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('project/master-plans', $filename, 'public');
                    $floorplans->image = $path;
                }
                
                if ($request->hasFile('alternative_image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('project/master-plans', $filename, 'public');
                    $floorplans->alternative_image = $path;
                }

                $floorplans->project_id = (int) $request->project_id;
                $floorplans->heading = $request->heading;
                if($request->alt) {
                    $floorplans->alt = $request->alt;
                }
                
                if ($floorplans->save()) {
                    return response()->json([
                        'status' => true,
                        'statusCode' => 200,
                        'message' => "Added Successfully",
                        'data' => $floorplans
                    ]);
                } else {
                    return response()->json([
                        'status' => false,
                        'statusCode' => 400,
                        'message' => "Failed to save Floor Plans"
                    ]);
                }
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

        $floorplan = DB::table('project_master_plan')
                ->select('*')
                ->where('id', $id)
                ->first();
     
        if($floorplan){
        
            return response()->json([
              'status'=>true,
              'statusCode'=>200,
              'message'=>"success",
              'data'=>$floorplan
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
            'heading' => 'required',
        ], [
            'project_id.required' => 'Project is required',
            'project_id.exists' => 'Project does not exist in records',
        
            'heading.required' => 'heading field is required',
        
           

        ]);
        
        


        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory Fields",
                'errors'=>$validator->errors()
            ]); 

        } 
            
        try{
            $floorplans = ProjectMasterPlan::find($id);

            if($floorplans){
                if($request->hasFile('image')){
                    dltSingleImgFile($floorplans->image);
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                    $path = $request->file('image')->storeAs('project/floor-plans', $filename, 'public');
                    $floorplans->image = $path;
                }
                
                if($request->hasFile('alternative_image')){
                    dltSingleImgFile($floorplans->alternative_image);
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('project/floor-plans', $filename, 'public');
                    $floorplans->alternative_image = $path;
                }
                   
               
                
                $floorplans->heading = $request->heading;
             
                
                if($request->alt) {
                    $floorplans->alt = $request->alt;
                }

 
                if($floorplans->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Update Sucessfully ",
                        'data'=>$floorplans
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to Update Floor Plans"
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
                'error' => $e->getMessage(),
            ]);
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
        $getrecord = ProjectMasterPlan::find($id);
        if($getrecord){
            dltSingleImgFile($getrecord->image);
            dltSingleImgFile($getrecord->alternative_image);


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

    public function status(Request $request, $id)
    {


        $validator = Validator::make($request->all(),
        [
        
            'status' => 'required|integer',  
           
        ],[
            'status.required' => 'Status is  required',

        ]);

        if($validator->fails()){
            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory Fields",
                'errors'=>$validator->errors()
            ]); 
        }
        $table = [
            'tableName' => 'project_master_plan',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'status',
            'updatecolumnVal' => $request->status
        ];
        
        $result = updateSingleRecord($table);
        return $result;
    }

    public function MakeProtected(Request $request, $id)
    {


        $validator = Validator::make($request->all(),
        [
        
            'protected' => 'required|integer',  
           
        ],[
            'protected.required' => 'protected is  required',

        ]);

        if($validator->fails()){
            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please Fill Mandatory Fields",
                'errors'=>$validator->errors()
            ]); 
        }
        $table = [
            'tableName' => 'project_master_plan',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'protected',
            'updatecolumnVal' => $request->protected
        ];
    
        
        $result = updateSingleRecord($table);
        return $result;
    }


    // protected



}

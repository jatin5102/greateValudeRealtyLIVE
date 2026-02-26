<?php

namespace App\Http\Controllers\Admin\Typology;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Admin\Typology\TypologiesGallery;
use Illuminate\Validation\Rule;

class TypologiesGalleriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->input('search', '');
        $perPage = $request->input('per_page', 10);
        $page = $request->input('page', 1);
        $sortBy = $request->input('sort_by', 'type');
        $sortOrder = $request->input('sort_order', 'ASC');

        $query = TypologiesGallery::where('status', 1);
        if (!empty($search)) {
            $query->where('type', 'LIKE', "%$search%");
        }
        $query->orderBy($sortBy, $sortOrder);
        $record = $query->paginate($perPage, ['*'], 'page', $page);

        return response()->json([
            'status' => true,
            'statusCode' => 200,
            'message' => "Success",
            'data' => $record
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
            
            'type' => 'required|in:1,2',
            'file' => [
                'required',
                'mimes:jpeg,png,jpg,gif,svg,webp',
                'max:2048',
                Rule::unique('typologies_galleries')->whereNull('deleted_at')
            ],
            'alternative_image' => [
                'nullable',
                'mimes:jpeg,png,jpg,gif,svg',
                'max:2048',
            ],
        ],[
            'type.required' => 'This field is required',
            'type.in' => 'Invalid type',
            'file.required' => 'The Name field is required.',
            'file.unique' => 'This image is Already Exists',
            'file.mimes' => 'only allowed png,jpg,jpeg,webp',
            'alternative_image.required' => 'The Name field is required.',
            'alternative_image.mimes' => 'only allowed png,jpg,jpeg',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "success",
                'errors'=>$validator->errors()
            ]); 

        }else{
            try{

                $record = TypologiesGallery::withTrashed()
                ->where('file', $request->file)
                ->first();

                if(!$record){
                    
                    $typologygallery = new TypologiesGallery();
                    $typologygallery->type = $request->type;
    
                    if($request->file('file')){
                        $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('file')->getClientOriginalName());
                        $path = $request->file('file')->storeAs('typology/galleries', $filename, 'public');
                        $typologygallery->file = $path;
                    }

                    if($request->file('alternative_image')){
                        $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                        $path = $request->file('alternative_image')->storeAs('typology/galleries', $filename, 'public');
                        $typologygallery->alternative_image = $path;
                    }

                    $typologygallery->alt = $request->alt;
    
    
                    if($typologygallery->save()){              
                        return response()->json([
                            'status'=>true,
                            'statusCode'=>200,
                            'message'=>"Add Typology Galleries Sucessfully ",
                            'data'=>$typologygallery
                        ]);

                    } else{
                        
                        return response()->json([
                            'status'=>true,
                            'statusCode'=>400,
                            'message'=>"Failde to add Typology Galleries"
                        ]);

                    }

                }else{

                    if ($record->trashed()) {
                        $record->restore(); 
    
                        return response()->json([
                            'status' => true,
                            'statusCode' => 200,
                            'message' => "Add Sucessfully ",
                            'data' => $record,
                        ]);
                    }

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
        $result = TypologiesGallery::find($id);
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
            'file' => [
                'nullable',
                'mimes:jpeg,png,jpg,webp',
                'max:2048',
                Rule::unique('typologies_galleries')->ignore($id),
            ],
            'alternative_image' => [
                'nullable',
                'mimes:jpeg,png,jpg',
                'max:2048',
            ],

        ],[
            'file.mimes' => 'This file type invalid e.g.(jpg,jpeg,png,webp)',
            'file.unique' => 'This Typology is Already Exists',
            'alternative_image.mimes' => 'This file type invalid e.g.(jpg,jpeg,png,webp)',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "success",
                'errors'=>$validator->errors()
            ]); 

        }else{
            
            $getrecord = TypologiesGallery::find($id);
            
            if(!$getrecord){
                return response()->json([
                    'status'=>false,
                    'statusCode'=>500,
                    'message' =>"Invalid Request/ Not Found ",
                ]);
            }

            try{
                 
                if($request->file('file')){
                    dltSingleImgFile($getrecord->file);
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('file')->getClientOriginalName());
                    $path = $request->file('file')->storeAs('typology/galleries', $filename, 'public');
                    $getrecord->file = $path;
                }

                if($request->file('alternative_image')){
                    dltSingleImgFile($getrecord->alternative_image);
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('typology/galleries', $filename, 'public');
                    $getrecord->alternative_image = $path;
                }

                $getrecord->alt = $request->alt;

                if($getrecord->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Typology Galleries Update Sucessfully",
                        'data'=>$getrecord
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to Update Typology Galleries"
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
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $getrecord = TypologiesGallery::find($id);
        if($getrecord){
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

    public function gvlipGetLogoImages (Request $request, $id) 
    {
        $table = [
            'tableName' => 'typologies_galleries',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'is_gvlip',
            'updatecolumnVal' => $request->is_gvlip
        ];
        
        $result = updateSingleRecord($table);
        return $result;
    }
    
}

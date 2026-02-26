<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Loan;
use Illuminate\Support\Facades\Validator;

class LoanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $record = Loan::all();
             
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
            'image' => 'required|nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
        ],[
            'image.required' => 'The Image field is required.',
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            // 'alternative_image.required' => 'The Image field is required.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
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

                $loan = new Loan();
                
                $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('image')->getClientOriginalName());
                $path = $request->file('image')->storeAs('loan', $filename, 'public');

                if($request->hasFile('alternative_image')) {
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $alt_path = $request->file('alternative_image')->storeAs('loan', $filename, 'public');
                }
                
                $loan->image = $path;
                $loan->alternative_image = $alt_path;
                $loan->alt = $request->alt;


                if($loan->save()){
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Add Loan Sucessfully ",
                        'data'=>$loan
                    ]);

                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to add Loan"
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
        $result = Loan::find($id);
        if(!empty($result)){
            return response()->json([
                'status' => true,
                'statusCode' => 200,
                'messageg' => 'Get Single Record',                
                'data' => $result,
            ]);
        } else {
            return response()->json([
                'status' => true,
                'statusCode' => 200,
                'message' => 'Matching Record not found',
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
            'image' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'alternative_image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
        ],[
            'image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg, webp)',
            'image.max' => 'The image may not be greater than 2048 kilobytes.',
            'alternative_image.mimes' => 'Invalid Image type only allowed (png, jpg, jpeg)',
            'alternative_image.max' => 'The image may not be greater than 2048 kilobytes.',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => 'success',
                'errors' => $validator->errors(),
            ]); 

        }else{

            $getrecord = Loan::find($id);
            
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
                    $path = $request->file('image')->storeAs('loan', $filename, 'public');
                    $getrecord->image = $path;
                }

                if($request->file('alternative_image')){
          
                    $imagesurl = $getrecord->alternative_image;
                    dltSingleImgFile($imagesurl);
                    
                    $filename = time() . '_' . preg_replace('/[^A-Za-z0-9\-_]/', '_', $request->file('alternative_image')->getClientOriginalName());
                    $path = $request->file('alternative_image')->storeAs('loan', $filename, 'public');
                    $getrecord->alternative_image = $path;
                }
 
                $getrecord->alt = $request->alt;

                if($getrecord->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Update Loan Sucessfully ",
                        'data'=>$getrecord
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failed to update Loan",
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
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $result = Loan::find($id);

        if(!empty($result)){

            dltSingleImgFile($result->image);
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
            'tableName' => 'loans',
            'keyColumnName' => 'id',
            'keyColumnId' => $id,
            'updateColumnName' => 'status',
            'updatecolumnVal' => $request->status
        ];
        
        $result = updateSingleRecord($table);
        return $result;

    }

}

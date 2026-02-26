<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Website\ServicesEnquiry;
use App\Models\Website\EnquiryServices;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ServiceEnquiryController extends Controller
{
    public function store (Request $request){

        $validator = Validator::make($request->all(),
        [
            
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|integer',
            'is_interested' => 'required',
            'interested_text' => 'required',

        ],[
            'name.required' => 'The First Name field is required',
            'email.required' => 'The Email field is required',
            'email.email' => 'Invalid Email',

            'phone.required' => 'The Phone field is required',
            'phone.integer' => 'Only Integer is allowed',
 
            'is_interested' => 'This field is required',
            'interested_text' => 'This field is required',
        ]);

        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please fill all mandatory fields",
                'errors'=>$validator->errors()
            ]); 

        }else{
            try{
                
                $record = new ServicesEnquiry();
                $record->name = $request->name;
                $record->phone = $request->phone;
                $record->email = $request->email;
                $record->is_interested = $request->is_interested;
                $record->interested_text = $request->interested_text;
                

                if($record->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Add Enquiry Sucessfully ",
                        'data'=>$record
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to add enquiry"
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

    public function postEnquiries (Request $request) {

        $validator = Validator::make($request->all(),
        [
            'name' => 'required',
            'email' => 'required|email',
            'number' => 'required|integer',
            'message' => 'required',
            'role' => 'required|in:channel,buyer'

        ],[
            'name.required' => 'The First Name field is required',
            'email.required' => 'The Email field is required',
            'email.email' => 'Invalid Email',

            'number.required' => 'The Phone field is required',
            'number.integer' => 'Only Integer is allowed',
 
            'message.required' => 'This field is required',
            'role.required' => 'This field  is required',
            'role.in' => 'Invalid services'
             
        ]);


        if($validator->fails()){

            return response()->json([
                'status' => true,
                'statusCode' => 403,
                'message' => "Please fill all mandatory fields",
                'errors'=>$validator->errors()
            ]); 

        }else{
            try{
                
                $record = new EnquiryServices();
                $record->role = $request->role;
                $record->name = $request->name;
                $record->number = $request->number;
                $record->email = $request->email;
                $record->message = $request->message;
               
                

                if($record->save()){              
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>200,
                        'message'=>"Add Enquiry Sucessfully ",
                        'data'=>$record
                    ]);
                }else{
                    return response()->json([
                        'status'=>true,
                        'statusCode'=>400,
                        'message'=>"Failde to add enquiry"
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

}

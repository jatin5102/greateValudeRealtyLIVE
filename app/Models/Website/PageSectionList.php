<?php

namespace App\Models\Website;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;

class PageSectionList extends Model
{
    use HasFactory;

    public function getImageAttribute()
    {
        if(!empty($this->attributes['image'])){
            if(File::exists(public_path('storage/'.$this->attributes['image']))){
                return asset('storage/'.$this->attributes['image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }


    public function getAlternativeImageAttribute()
    {
        if(!empty($this->attributes['alternative_image'])){
            if(File::exists(public_path('storage/'.$this->attributes['alternative_image']))){
                return asset('storage/'.$this->attributes['alternative_image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }
     
    public function getMobileFileAttribute()
    {
        if(!empty($this->attributes['mobile_file'])){
            if(File::exists(public_path('storage/'.$this->attributes['mobile_file']))){
                return asset('storage/'.$this->attributes['mobile_file']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }


    public function getMobileAlternativeFileAttribute()
    {
        if(!empty($this->attributes['mobile_alternative_file'])){
            if(File::exists(public_path('storage/'.$this->attributes['mobile_alternative_file']))){
                return asset('storage/'.$this->attributes['mobile_alternative_file']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }

}

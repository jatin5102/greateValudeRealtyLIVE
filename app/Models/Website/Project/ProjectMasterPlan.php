<?php

namespace App\Models\Website\Project;

use App\Models\Admin\Typology\SubTypology;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\File;

class ProjectMasterPlan extends Model
{
    protected $table="project_master_plan";

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

}

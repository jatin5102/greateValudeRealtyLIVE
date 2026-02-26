<?php

namespace App\Models\Website;

use App\Models\Admin\Developer;
use App\Models\Admin\Project\ProjectFloorPlan as ProjectProjectFloorPlan;
use App\Models\Admin\Typology\SubTypology;
use App\Models\Website\Project\ProjectFloorPlan;
use App\Models\Website\Project\ProjectGallery;
use App\Models\Website\Project\ProjectLocation;
use App\Models\Admin\ProjectCategory;
use App\Models\Website\Typology;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\File;

class Projects extends Model
{
    protected $hidden = ['typologie_id', 'sub_typologie_id','categorie_id', 'ivr_no', 'whatsapp_no', 'payment_plan', 'rera_no', 'logo', 'brochure', 'developer_id','created_at','updated_at','deleted_at'];
    
    use HasFactory, SoftDeletes;
    public function developer(){
        return $this->belongsTo(Developer::class,'developer_id');
    }
    public function category(){
        return $this->belongsTo(ProjectCategory::class,'categorie_id')->select('id','slug','name');
    }
    public function typologie(){
        return $this->belongsTo(Typology::class,'typologie_id')->select('id','slug','typology','image');
    }


    public function subtypologie(){
        return $this->belongsTo(SubTypology::class,'sub_typologie_id');
    }
    public function location(){
        return $this->hasOne(ProjectLocation::class,'project_id')->select('id','project_id','address','latitude','longtitude','city', 'locality');
    }
    public function subtypology(){
        return $this->hasMany(ProjectProjectFloorPlan::class,'project_id')->select('project_id','sub_typology');
    }


 
    public function startingPrice(){
        return $this->hasOne(ProjectFloorPlan::class, 'project_id');
    }
    public function startingSize(){
        return $this->hasOne(ProjectFloorPlan::class, 'project_id');
    }

    public function ProjectGallery (){
        return $this->hasMany(ProjectGallery::class, 'project_id');
    }


    public function getFeatureImageAttribute()
    {
        if(!empty($this->attributes['feature_image'])){
            if(File::exists(public_path('storage/'.$this->attributes['feature_image']))){
                return asset('storage/'.$this->attributes['feature_image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }

    public function getThumbnailAttribute()
    {
        if(!empty($this->attributes['thumbnail'])){
            if(File::exists(public_path('storage/'.$this->attributes['thumbnail']))){
                return asset('storage/'.$this->attributes['thumbnail']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }


    public function getAlternativeFeatureImageAttribute()
    {
        if(!empty($this->attributes['feature_image'])){
            if(File::exists(public_path('storage/'.$this->attributes['feature_image']))){
                return asset('storage/'.$this->attributes['feature_image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }


    public function getAlternativeThumbnailAttribute()
    {
        if(!empty($this->attributes['thumbnail'])){
            if(File::exists(public_path('storage/'.$this->attributes['thumbnail']))){
                return asset('storage/'.$this->attributes['thumbnail']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }


    public function getMobileFeatureImageAttribute()
    {
        if(!empty($this->attributes['mobile_feature_image'])){
            if(File::exists(public_path('storage/'.$this->attributes['mobile_feature_image']))){
                return asset('storage/'.$this->attributes['mobile_feature_image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }

    public function getMobileAlternativeFeatureImageAttribute()
    {
        if(!empty($this->attributes['mobile_alternative_feature_image'])){
            if(File::exists(public_path('storage/'.$this->attributes['mobile_alternative_feature_image']))){
                return asset('storage/'.$this->attributes['mobile_alternative_feature_image']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }

    public function getProjectStatusAttribute($value)
    {
        if(!empty($this->attributes['project_status'])){
            return  (object) $this->attributes['project_status']=getprojectStatus($this->attributes['project_status']);
        }
    }

    
}

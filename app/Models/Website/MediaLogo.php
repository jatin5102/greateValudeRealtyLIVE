<?php

namespace App\Models\Website;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\File;
use Symfony\Component\Translation\Command\TranslationTrait;

class MediaLogo extends Model
{
    use HasFactory,SoftDeletes;
    protected $table="media_logos";
   
    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];
 
    public function getImageAttribute()
    {
        if(!empty($this->attributes['icons'])){
            if(File::exists(public_path('storage/'.$this->attributes['icons']))){
                return asset('storage/'.$this->attributes['icons']);
            }else{
                return  asset('default/default_project.jpg');
            }
        }
        return  asset('default/default_project.jpg');
    }

}

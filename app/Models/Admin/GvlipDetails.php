<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GvlipDetails extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = ['section', 'heading', 'image', 'alternative_image', 'alt', 'description'];
    
    public static function search($query)
    {
        return empty($query) ? static::query()
            : static::where('heading', 'like', '%'.$query.'%');
    }
}

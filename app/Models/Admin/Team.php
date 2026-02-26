<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;

    protected $fillable = ['name','image', 'alt', 'desgination', 'bio', 'alternative_image'];

    
    
    public static function search($query)
    {
        return empty($query) ? static::query()
        : static::where('name', 'like', '%'.$query.'%');
    }

}

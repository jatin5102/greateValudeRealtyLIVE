<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class WorkValues extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = ['heading', 'image', 'alt', 'short_description', 'alternative_image'];


}

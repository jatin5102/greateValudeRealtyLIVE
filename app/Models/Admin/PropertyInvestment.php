<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PropertyInvestment extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = ['heading', 'short_description', 'image', 'alt', 'alternative_image'];

}

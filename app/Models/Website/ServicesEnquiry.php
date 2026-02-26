<?php

namespace App\Models\Website;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ServicesEnquiry extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = "services_enquiries";

}

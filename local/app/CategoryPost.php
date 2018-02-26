<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryPost extends Model
{
    protected $fillable = [
        'id','name','level','parent_id','order','created_at','updated_at'
    ];
}

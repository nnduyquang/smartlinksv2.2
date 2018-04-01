<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryPost extends Model
{
    protected $fillable = [
        'id','name','path','description','level','template','parent_id','page_id','seo_title','seo_description','seo_keywords','order','created_at','updated_at'
    ];
}

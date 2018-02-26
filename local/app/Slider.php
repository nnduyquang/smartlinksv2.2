<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = [
        'slider_image','slider_order', 'slider_is_active','created_at','updated_at'
    ];
}

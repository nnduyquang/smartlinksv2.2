<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{

    protected $fillable = [

        'name','path','level', 'order','parent_id','created_at','updated_at'

    ];
}

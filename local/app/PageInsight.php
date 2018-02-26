<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PageInsight extends Model
{
    protected $fillable = [
        'uasbility_score_mobile','image_mobile','uasbility_score_desktop','image_desktop'
    ];
}

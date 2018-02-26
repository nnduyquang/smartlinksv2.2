<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $fillable = [
        'emp_name','emp_phone', 'emp_email','emp_skype','emp_duty', 'emp_note','emp_image','emp_order','emp_is_work','created_at','updated_at'
    ];
}

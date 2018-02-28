<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ThuNghiemController extends Controller
{
   public function thunghiem(){
       return response()->json('hi Quang');
   }
}

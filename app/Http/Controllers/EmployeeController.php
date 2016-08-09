<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class EmployeeController extends Controller
{
     //
    public function home(){
    	$vrc=vrc::all()->where('active', 1);
    	return view('vrc.home',compact('vrc'));
    }
}

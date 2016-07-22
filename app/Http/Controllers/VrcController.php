<?php

namespace App\Http\Controllers;

use App\vrc;
use Illuminate\Http\Request;

use App\Http\Requests;

class VrcController extends Controller
{
    //
    public function home(){
    	$vrc=vrc::all()->where('active', 1);
    	return view('vrc.home',compact('vrc'));
    }

     public function show(vrc $vrc){
    	
    	return view('vrc.show',compact('vrc'));
    }

    public function edit(vrc $vrc){
    	
    	return view('vrc.edit',compact('vrc'));
    }
}

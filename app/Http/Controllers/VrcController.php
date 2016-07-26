<?php

namespace App\Http\Controllers;

use App\vrc;
use App\BuildingTyp;
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

        $buld=BuildingTyp::all();
    	return view('vrc.edit',compact('vrc','buld'));
    }

    public function update(Request $request,vrc $vrc){
        
      // $vrc->update($request->all());
        
        return $vrc;
        
    }
}

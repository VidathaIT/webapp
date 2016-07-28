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
        
     
        $this->validate($request, [
        'email' => 'required|email',
        'tele' => 'required|numeric',
        'fax' => 'numeric',
        ]);

      //  $vrc->email=$request->email;
       // $vrc->tele=$request->tele;
       // $vrc->fax=$request->fax;
      //  $vrc->building_status=$request->building_status;
       // $vrc->save();

          $vrc->update($request->all());
        
        return back();
        
    }
}

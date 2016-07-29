<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buildingtyp extends Model
{
    
    public function vrc() 
    {
    	return $this->hasMany('App\Vrc');
    }
}

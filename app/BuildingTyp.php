<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BuildingTyp extends Model
{
    protected $table = 'building_type_ref';

    public function vrc() 
    {
    	return $this->hasMany('App\vrc');
    }
}

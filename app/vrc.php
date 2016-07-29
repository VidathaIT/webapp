<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vrc extends Model
{
   
    public function buildingtyp()
    {
    	return $this->belongsTo('App\Buildingtyp');
    }

    protected $fillable = array('email', 'building_status', 'tele','fax');

    
}

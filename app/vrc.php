<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class vrc extends Model
{
    protected $table = 'vrc_mst';

    public function buildingTyp()
    {
    	return $this->belongsTo(BuildingTyp::class);
    }
}

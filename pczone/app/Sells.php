<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sells extends Model
{

    public function produto(){
        return $this->belongsToMany('App\produto');
    }
}

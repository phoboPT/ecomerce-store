<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Categoria;

class Produto extends Model
{
    public function categoria(){
        return $this->belongsTo(Categoria::class);
    }
    public function marca(){
        return $this->belongsTo(Marca::class);
    }

    public function sells(){
        return $this->belongsToMany(SellProduto::class);
    }


}

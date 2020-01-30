<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class empreteur extends Model
{
    public function livre()
    {
        return $this->belongsToMany(livres::class);
    }
}

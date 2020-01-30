<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class livre extends Model
{
    protected $fillable=['num_liv','titre_liv','slug','auteur','editeur','image','nbr_exmplaire','nbr_fois_emprunter','description'];
    public function empreteur()
    {
        return $this->belongsToMany(empreteur::class);
    }
}

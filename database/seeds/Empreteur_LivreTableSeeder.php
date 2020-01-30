<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class Empreteur_LivreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('empreteur_livres')->truncate();
        $date = Carbon::now();

        DB::table('empreteur_livres')->insert([

           [ 
            "empreteurs_id"=>rand(1,2),
            "livres_id"=>rand(1,15),
            "date_emprunt"=>$emprunt=$date->add(rand(1,5),'day'),
            "date_depot"=>$emprunt->add(14,'day'),
            "date_depot_effectifs"=>$date->add(14,'day')
           ],
           [ 
            "empreteurs_id"=>rand(1,2),
            "livres_id"=>rand(1,15),
            "date_emprunt"=>$emprunt=$date->add(rand(1,5),'day'),
            "date_depot"=>$emprunt->add(14,'day'),
            "date_depot_effectifs"=>$date->add(14,'day')
           ],
           [ 
            "empreteurs_id"=>rand(1,2),
            "livres_id"=>rand(1,15),
            "date_emprunt"=>$emprunt=$date->add(rand(1,5),'day'),
            "date_depot"=>$emprunt->add(14,'day'),
            "date_depot_effectifs"=>$date->add(14,'day')
            ]
        ]);
    }
}

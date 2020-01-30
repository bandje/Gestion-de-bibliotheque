<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
class EmpreteursTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('empreteurs')->truncate();
        $date = Carbon::now();
        DB::table('empreteurs')->insert([
            [
                "num_em"=>rand(125,556),
                "email"=>"bandjeyvesroland@gmail.com",
                "nom_em"=>"Bandje Yves Roland",
                'slug'=>"Bandje-yves-Roland",
                "date_naiss"=>$date,
                "Adresse"=>"Abidjan Cocody Angré"
            ],

            [
                "num_em"=>rand(125,556),
                "email"=>"ayefouney@gmail.com",
                "nom_em"=>"Ayefouney Yves Roland",
                'slug'=>"Ayefouney-yves-Roland",
                "date_naiss"=>$date,
                "Adresse"=>"Abidjan Cocody Mahou"
            ]
        ]);
    }
}

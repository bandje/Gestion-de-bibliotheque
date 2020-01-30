<?php

use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
class LivreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('livres')->truncate();
        $faker = Factory::create();
        DB::table("livres")->insert([
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Cultures scientifiques",
                "slug"=>str::slug("Cultures scientifiques","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Eco Sciences",
                'image'=>"culture_science.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true),
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Mais qui a attrapé le bison de Higgs",
                "slug"=>str::slug("Mais qui a attrapé le bison de Higgs","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Flammarion",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Python, les fondamentaux du langages",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Bandje Rves Roland",
                 "editeur"=>"Windows Xp",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Réseaux informatiques",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Batoua Jean-Fernand",
                 "editeur"=>"Ressources informatiques",
                'image'=>"resaux_info.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Oracle 11g",
                "slug"=>str::slug("Oracle 11g","-"),
                "auteur"=>"Zombra Ibrahim",
                 "editeur"=>"Ressources informatiques",
                'image'=>"oracle11.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Cultures scientifiques",
                "slug"=>str::slug("Cultures scientifiques","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Eco Sciences",
                'image'=>"culture_science.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Mais qui a attrapé le bison de Higgs",
                "slug"=>str::slug("Mais qui a attrapé le bison de Higgs","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Flammarion",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Python, les fondamentaux du langages",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Bandje Rves Roland",
                 "editeur"=>"Windows Xp",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Réseaux informatiques",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Batoua Jean-Fernand",
                 "editeur"=>"Ressources informatiques",
                'image'=>"resaux_info.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Oracle 11g",
                "slug"=>str::slug("Oracle 11g","-"),
                "auteur"=>"Zombra Ibrahim",
                 "editeur"=>"Ressources informatiques",
                'image'=>"oracle11.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Cultures scientifiques",
                "slug"=>str::slug("Cultures scientifiques","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Eco Sciences",
                'image'=>"culture_science.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Mais qui a attrapé le bison de Higgs",
                "slug"=>str::slug("Mais qui a attrapé le bison de Higgs","-"),
                "auteur"=>"Koffi Guy",
                "editeur"=>"Flammarion",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],

            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Python, les fondamentaux du langages",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Bandje Rves Roland",
                 "editeur"=>"Windows Xp",
                'image'=>"higgs.png",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Réseaux informatiques",
                "slug"=>str::slug("Python, les fondamentaux du langages","-"),
                "auteur"=>"Batoua Jean-Fernand",
                 "editeur"=>"Ressources informatiques",
                'image'=>"resaux_info.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ],
            [
                "num_liv"=>rand(158,543),
                "titre_liv"=>"Oracle 11g",
                "slug"=>str::slug("Oracle 11g","-"),
                "auteur"=>"Zombra Ibrahim",
                 "editeur"=>"Ressources informatiques",
                'image'=>"oracle11.jpg",
                "nbr_exmplaire"=>rand(5,30),
                "nbr_fois_emprunter"=>rand(0,5),
                'description'=>$faker->paragraphs(rand(10, 15), true)
            ]
            

        ]);
    }
}

<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/accueil',[
    "uses"=>"HomeController@index",
    "as"=>"accueil"
]);

Route::get("/livre/{slug}",[
    "uses"=>"HomeController@show",
    "as"=>"biblio.show"
]);

Route::get("ajouter-livre",[
    'uses'=>'HomeController@add_book',
    'as'=>"biblio.add_book"
]);

Route::get("emprunter-livre",[
    'uses'=>'HomeController@emprunter_book',
    'as'=>"biblio.emprunter_book"
]);

Route::get("deposer-livre",[
    'uses'=>'HomeController@deposer_book',
    'as'=>"biblio.deposer_book"
]);

Route::get("liste-livres-emprunter",[
    'uses'=>"HomeController@liste_livre",
    'as'=>"biblio.liste_livres_emprunter"
]);
Route::get("rechercher_livre",[
    'uses'=>"HomeController@rechercher",
    'as'=>'biblio.rechercher'
]);
Route::get("statiqtiques",[
    'uses'=>"HomeController@statistique",
    "as"=>"biblio.statistique"
]);

Route::POST("insert.livre",[
    'uses'=>'HomeController@store',
    'as'=>"biblio.store"
]);

Route::POST("insert.emprunt",[
    'uses'=>'HomeController@emprunter',
    'as'=>"biblio.emprunter"
]);
Route::POST('insert-deposer',[
    'uses'=>'HomeController@deposer',
    'as'=>'biblio.deposer'
]);
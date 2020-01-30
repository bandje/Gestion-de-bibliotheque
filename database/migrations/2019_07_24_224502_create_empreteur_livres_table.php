<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmpreteurLivresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empreteur_livres', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('empreteurs_id');
            $table->unsignedInteger('livres_id');
            $table->datetime('date_emprunt');
            $table->datetime('date_depot');
            $table->datetime('date_depot_effectifs')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('empreteur_livres');
    }
}

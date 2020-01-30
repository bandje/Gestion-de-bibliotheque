<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLivresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('livres', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string("num_liv");
            $table->string("titre_liv");
            $table->string("slug");
            $table->string("auteur");
            $table->string("editeur");
            $table->string("image")->nullable();
            $table->integer("nbr_exmplaire");
            $table->integer("nbr_fois_emprunter")->nullable;
            $table->text('description')->nullable();
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
        Schema::dropIfExists('livres');
    }
}

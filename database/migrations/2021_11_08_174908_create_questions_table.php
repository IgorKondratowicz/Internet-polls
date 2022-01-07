<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->unsignedBigInteger("form_id");
            $table->foreign('form_id')->references('id')->on('forms');
            $table->string("question1", 200);
            $table->string("question2", 200);
            $table->string("question3", 200);
            $table->string("question4", 200);
            $table->string("question5", 200);
            $table->string("question6", 200);
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
        Schema::dropIfExists('questions');
    }
}

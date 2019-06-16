<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentfeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('studentfees', function (Blueprint $table) {
            $table->increments('s_feeid');
            $table->unsignedBigInteger('fee_id');
            $table->unsignedBigInteger('student_id');
            $table->unsignedBigInteger('level_id');
            $table->float('amount');
            $table->foreign('fee_id')->references('fee_id')->on('fees');
            $table->foreign('student_id')->references('student_id')->on('students');
            $table->foreign('level_id')->references('level_id')->on('levels');
            
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('studentfees');
    }
}

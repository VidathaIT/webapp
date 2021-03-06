<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcsessTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('accsess', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('vrc_id');
            $table->integer('table_id');
            $table->integer('permission');  // 0 no permit 1 view 2 edit
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
        Schema::drop('accsess');
    }
}

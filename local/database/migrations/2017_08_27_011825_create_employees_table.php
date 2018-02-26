<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->increments('id');
            $table->string('emp_name');
            $table->string('emp_phone');
            $table->string('emp_email');
            $table->string('emp_skype');
            $table->string('emp_duty');
            $table->longText('emp_note')->nullable();
            $table->integer('emp_order')->default(1);
            $table->boolean('emp_is_work')->default(1);
            $table->string('emp_image')->nullable();
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
        Schema::dropIfExists('employees');
    }
}

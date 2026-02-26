<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_floor_plans', function (Blueprint $table) {
            $table->id();
            $table->integer('project_id');
            $table->string('type');
            $table->integer('sub_typology')->nullable();
            $table->string('image')->nullable();
            $table->integer('protected')->default(0);
            $table->string('more_typology')->nullable();
            $table->integer('size')->nullable();
            $table->integer('price')->nullable();
            $table->string('carpet_area')->nullable();
            $table->string('balcony_area')->nullable();
            $table->string('super_area')->nullable();
            $table->string('sizes_type')->nullable();
            $table->string('build_up_area')->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('project_floor_plans');
    }
};

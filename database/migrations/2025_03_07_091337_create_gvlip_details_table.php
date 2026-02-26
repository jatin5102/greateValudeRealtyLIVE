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
        Schema::create('gvlip_details', function (Blueprint $table) {
            $table->id();
            $table->string('section');
            $table->string('heading');
            $table->string('image');
            $table->string('alternative_image')->nullable();
            $table->string('alt')->nullable();
            $table->string('description')->nullable();
            $table->boolean('status')->default(1);
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
        Schema::dropIfExists('gvlip_details');
    }
};

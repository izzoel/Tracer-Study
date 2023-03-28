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
        Schema::create('survey_lulusan_profil_pengguna_lulusan', function (Blueprint $table) {
            $table->id();
            $table->string('no');
            $table->text('survey');
            $table->text('pilihan');
            $table->text('ganda');
            $table->text('other');
            $table->string('wajib');
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
        Schema::dropIfExists('survey_lulusan_profil_pengguna_lulusan');
    }
};

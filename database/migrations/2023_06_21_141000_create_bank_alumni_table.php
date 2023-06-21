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

        Schema::create('bank_alumni', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('nim');
            $table->string('prodi');
            $table->string('angkatan');
            $table->string('kategori');
            for ($i = 1; $i < 21; $i++) {
                $table->text('alumni' . $i)->nullable();
            }
            for ($i = 1; $i < 11; $i++) {
                $table->text('belum_bekerja' . $i)->nullable();
            }
            for ($i = 1; $i < 26; $i++) {
                $table->text('sudah_bekerja' . $i)->nullable();
            }
            for ($i = 1; $i < 31; $i++) {
                $table->text('berwirausaha' . $i)->nullable();
            }
            for ($i = 1; $i < 11; $i++) {
                $table->text('lanjut_pendidikan' . $i)->nullable();
            }
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
        Schema::dropIfExists('bank_alumni');
    }
};

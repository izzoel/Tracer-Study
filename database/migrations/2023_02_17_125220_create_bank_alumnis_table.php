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

        Schema::create('bank_alumnis', function (Blueprint $table) {
            $table->id();
            $table->text('bank1')->nullable();
            $table->text('bank2')->nullable();
            $table->text('bank3')->nullable();
            $table->text('bank4')->nullable();
            $table->text('bank5')->nullable();
            $table->text('bank6')->nullable();
            $table->text('bank7')->nullable();
            $table->text('bank8')->nullable();
            $table->text('bank9')->nullable();
            $table->text('bank10')->nullable();
            $table->text('bank11')->nullable();
            $table->text('bank12')->nullable();
            $table->text('bank13')->nullable();
            $table->text('bank14')->nullable();
            $table->text('bank15')->nullable();
            $table->text('bank16')->nullable();
            $table->text('bank17')->nullable();
            $table->text('bank18')->nullable();
            $table->text('bank19')->nullable();
            $table->text('bank20')->nullable();
            $table->text('bank21')->nullable();
            $table->text('bank22')->nullable();
            $table->text('bank23')->nullable();
            $table->text('bank24')->nullable();
            $table->text('bank25')->nullable();
            $table->text('bank26')->nullable();
            $table->text('bank27')->nullable();
            $table->text('bank28')->nullable();
            $table->text('bank29')->nullable();
            $table->text('bank30')->nullable();
            $table->text('bank31')->nullable();
            $table->text('bank32')->nullable();
            $table->text('bank33')->nullable();
            $table->text('bank34')->nullable();
            $table->text('bank35')->nullable();
            $table->text('bank36')->nullable();
            $table->text('bank37')->nullable();
            $table->text('bank38')->nullable();
            $table->text('bank39')->nullable();
            $table->text('bank40')->nullable();
            $table->text('bank41')->nullable();
            $table->text('bank42')->nullable();
            $table->text('bank43')->nullable();
            $table->text('bank44')->nullable();
            $table->text('bank45')->nullable();
            $table->text('bank46')->nullable();
            $table->text('bank47')->nullable();
            $table->text('bank48')->nullable();
            $table->text('bank49')->nullable();
            $table->text('bank50')->nullable();
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
        Schema::dropIfExists('bank_alumnis');
    }
};

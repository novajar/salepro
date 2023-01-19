<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldCustomerPrice extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('customer_price', function (Blueprint $table) {
            $table->integer('customer_id');
            $table->integer('product_id');
            $table->integer('harga');
            $table->integer('user_approve');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('customer_price', function (Blueprint $table) {
            //
        });
    }
}

<?php namespace Alterna\Alternatekno\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAlternaAlternateknoProduk extends Migration
{
    public function up()
    {
        Schema::create('alterna_alternatekno_produk', function($table)
        {
            $table->increments('id')->unsigned();
            $table->string('namaproduk');
            $table->text('link')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('alterna_alternatekno_produk');
    }
}

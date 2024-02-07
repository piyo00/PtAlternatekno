<?php namespace Alterna\Alternatekno\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAlternaAlternateknoPortofolio extends Migration
{
    public function up()
    {
        Schema::create('alterna_alternatekno_portofolio', function($table)
        {
            $table->increments('id')->unsigned();
            $table->text('namaporto');
            $table->text('perusahaan')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('alterna_alternatekno_portofolio');
    }
}

<?php namespace Alterna\Alternatekno\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAlternaAlternateknoJob extends Migration
{
    public function up()
    {
        Schema::create('alterna_alternatekno_job', function($table)
        {
            $table->increments('id')->unsigned();
            $table->string('nama');
            $table->text('deskripsi')->nullable();
            $table->text('syarat')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('alterna_alternatekno_job');
    }
}

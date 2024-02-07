<?php namespace Alterna\Alternatekno\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAlternaAlternateknoJob extends Migration
{
    public function up()
    {
        Schema::table('alterna_alternatekno_job', function($table)
        {
            $table->renameColumn('nama', 'pekerjaan');
            $table->renameColumn('deskripsi', 'descpekerjaan');
        });
    }
    
    public function down()
    {
        Schema::table('alterna_alternatekno_job', function($table)
        {
            $table->renameColumn('pekerjaan', 'nama');
            $table->renameColumn('descpekerjaan', 'deskripsi');
        });
    }
}

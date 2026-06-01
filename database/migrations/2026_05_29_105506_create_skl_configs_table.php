<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSklConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('skl_configs', function (Blueprint $table) {
            $table->id();
            $table->string('prefix_nomor')->nullable();
            $table->string('kode_instansi')->nullable();
            $table->integer('nomor_urut_awal')->default(1);
            $table->integer('nomor_urut_terakhir')->default(1);
            $table->string('tahun_surat')->nullable();
            $table->date('tanggal_pengumuman')->nullable();
            $table->string('nama_kepsek')->nullable();
            $table->string('jabatan_kepsek')->nullable();
            $table->string('nip_kepsek')->nullable();
            $table->string('file_ttd')->nullable();
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
        Schema::dropIfExists('skl_configs');
    }
}

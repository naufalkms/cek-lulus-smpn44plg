<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateStudentsTableForSkl extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('students', function (Blueprint $table) {
            $table->dropColumn('no_exam');
            $table->string('nis')->nullable()->after('id');
            $table->decimal('nilai_agama', 5, 2)->nullable();
            $table->decimal('nilai_pancasila', 5, 2)->nullable();
            $table->decimal('nilai_bind', 5, 2)->nullable();
            $table->decimal('nilai_bing', 5, 2)->nullable();
            $table->decimal('nilai_mat', 5, 2)->nullable();
            $table->decimal('nilai_ipa', 5, 2)->nullable();
            $table->decimal('nilai_ips', 5, 2)->nullable();
            $table->decimal('nilai_pjok', 5, 2)->nullable();
            $table->decimal('nilai_informatika', 5, 2)->nullable();
            $table->decimal('nilai_senbud', 5, 2)->nullable();
            $table->decimal('nilai_mulok', 5, 2)->nullable();
            $table->string('nomor_skl_generated')->nullable()->after('message');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('students', function (Blueprint $table) {
            $table->string('no_exam')->nullable();
            $table->dropColumn([
                'nis', 'nilai_agama', 'nilai_pancasila', 'nilai_bind', 'nilai_bing',
                'nilai_mat', 'nilai_ipa', 'nilai_ips', 'nilai_pjok', 'nilai_informatika',
                'nilai_senbud', 'nilai_mulok', 'nomor_skl_generated'
            ]);
        });
    }
}

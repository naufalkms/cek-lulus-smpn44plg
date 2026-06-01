<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SklConfig;

class SklConfigSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SklConfig::create([
            'prefix_nomor' => '421.3/',
            'kode_instansi' => '/SMAN1/',
            'nomor_urut_awal' => 1,
            'nama_kepsek' => 'Drs. Muhammad Ali Hanafiah, M.Pd.',
            'jabatan_kepsek' => 'Kepala SMP Negeri 44 Palembang',
            'nip_kepsek' => '19660405 200604 1 004',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
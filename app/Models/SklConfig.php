<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SklConfig extends Model
{
    use HasFactory;

    protected $fillable = [
        'prefix_nomor',
        'kode_instansi',
        'nomor_urut_awal',
        'nomor_urut_terakhir',
        'tahun_surat',
        'tanggal_pengumuman',
        'nama_kepsek',
        'jabatan_kepsek',
        'nip_kepsek',
        'file_ttd'
    ];

    public function getNomorSurat($nextNumber)
    {
        $formattedNumber = str_pad($nextNumber, 3, '0', STR_PAD_LEFT);
        return $this->prefix_nomor . $formattedNumber . $this->kode_instansi . $this->tahun_surat;
    }
}

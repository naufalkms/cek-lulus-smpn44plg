<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class StudentTemplateExport implements FromArray, WithHeadings
{
    public function headings(): array
    {
        return [
            'No',
            'NISN',
            'Nama Lengkap',
            'NIS',
            'Tempat Tanggal Lahir',
            'Nama Orang Tua',
            'Kelas',
            'Status (1=Lulus, 2=Ditunda)',
            'Pesan',
            'nilai_agama',
            'nilai_pancasila',
            'nilai_bind',
            'nilai_bing',
            'nilai_mat',
            'nilai_ipa',
            'nilai_ips',
            'nilai_pjok',
            'nilai_informatika',
            'nilai_senbud',
            'nilai_mulok'
        ];
    }

    public function array(): array
    {
        return [
            [
                1,
                '1234567890',
                'John Doe',
                '1234',
                'Jakarta, 01 Januari 2010',
                'Budi',
                '9A',
                1,
                'Selamat Anda Lulus',
                85.00,
                88.50,
                90.00,
                86.50,
                92.00,
                89.00,
                85.00,
                95.00,
                88.00,
                90.00,
                85.00
            ]
        ];
    }
}

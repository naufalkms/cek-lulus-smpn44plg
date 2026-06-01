<?php

namespace App\Imports;

use App\Models\Student;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class StudentImport implements ToModel, WithStartRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */

    public function startRow(): int
    {
        return 2;
    }

    public function model(array $row)
    {
        return new Student([
            'nisn' => isset($row[1]) ? trim($row[1]) : null,
            'name' => isset($row[2]) ? trim($row[2]) : null,
            'nis' => isset($row[3]) ? trim($row[3]) : null,
            'tempat_tgl_lahir' => isset($row[4]) ? trim($row[4]) : null,
            'nama_ortu' => isset($row[5]) ? trim($row[5]) : null,
            'class' => isset($row[6]) ? trim($row[6]) : null,
            'status' => isset($row[7]) ? (int)$row[7] : 1,
            'message' => isset($row[8]) ? trim($row[8]) : null,
            'nilai_agama' => (isset($row[9]) && $row[9] !== '') ? (float)$row[9] : 0,
            'nilai_pancasila' => (isset($row[10]) && $row[10] !== '') ? (float)$row[10] : 0,
            'nilai_bind' => (isset($row[11]) && $row[11] !== '') ? (float)$row[11] : 0,
            'nilai_bing' => (isset($row[12]) && $row[12] !== '') ? (float)$row[12] : 0,
            'nilai_mat' => (isset($row[13]) && $row[13] !== '') ? (float)$row[13] : 0,
            'nilai_ipa' => (isset($row[14]) && $row[14] !== '') ? (float)$row[14] : 0,
            'nilai_ips' => (isset($row[15]) && $row[15] !== '') ? (float)$row[15] : 0,
            'nilai_pjok' => (isset($row[16]) && $row[16] !== '') ? (float)$row[16] : 0,
            'nilai_informatika' => (isset($row[17]) && $row[17] !== '') ? (float)$row[17] : 0,
            'nilai_senbud' => (isset($row[18]) && $row[18] !== '') ? (float)$row[18] : 0,
            'nilai_mulok' => (isset($row[19]) && $row[19] !== '') ? (float)$row[19] : 0,
        ]);
    }
}

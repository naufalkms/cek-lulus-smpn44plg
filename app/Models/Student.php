<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{

    use HasFactory;
    protected $table = 'students';
    protected $fillable = [
        'nisn', 'nis', 'name', 'no_exam', 'class', 'status', 'message', 'nama_ortu', 'tempat_tgl_lahir', 
        'nilai_agama', 'nilai_pancasila', 'nilai_bind', 'nilai_bing', 'nilai_mat', 'nilai_ipa', 
        'nilai_ips', 'nilai_pjok', 'nilai_informatika', 'nilai_senbud', 'nilai_mulok',
        'created_at', 'updated_at'
    ];
}

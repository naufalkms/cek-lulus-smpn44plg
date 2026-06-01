<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\SklConfig;
use Barryvdh\DomPDF\Facade\Pdf;

class PublicSKLController extends Controller
{
    public function generatePdf($nisn)
    {
        // 1. Cari data siswa berdasarkan NISN yang dikirim dari halaman depan
        $student = Student::where('nisn', $nisn)->firstOrFail();
        $config = SklConfig::first();
        $school = \App\Models\School::first();

        // 2. Validasi Konfigurasi (Syarat nomor_skl_generated dilonggarkan agar tidak memicu 404)
        if (!$config) {
            abort(404, 'Konfigurasi SKL belum diatur oleh Admin.');
        }

        // Jalur aman: Jika admin belum meng-generate nomor surat, beri teks cadangan otomatis agar tidak crash
        $nomorSurat = $student->nomor_skl_generated ?: ($school->no_surat ?? '420/..../SMPN44/' . date('Y'));

        // 4. Proses Injeksi Data ke Template View Blade
        $pdf = Pdf::loadView('pdf.skl', [
            'student' => $student,
            'config' => $config,
            'school' => $school,
            'nomorSurat' => $nomorSurat
        ])->setPaper([0, 0, 609.45, 935.43], 'portrait');

        // 6. Respon Download PDF ke Browser
        return $pdf->download('SKL_' . $student->nisn . '.pdf');
    }
}
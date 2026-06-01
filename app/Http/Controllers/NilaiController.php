<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class NilaiController extends Controller
{
    public function edit($id)
    {
        $student = Student::findOrFail($id);
        return view('admin.nilai.edit', compact('student'));
    }

    public function update(Request $request, $id) {
        $student = \App\Models\Student::findOrFail($id);
        $student->nilai_agama = $request->nilai_agama;
        $student->nilai_pancasila = $request->nilai_pancasila;
        $student->nilai_bind = $request->nilai_bind;
        $student->nilai_bing = $request->nilai_bing;
        $student->nilai_mat = $request->nilai_mat;
        $student->nilai_ipa = $request->nilai_ipa;
        $student->nilai_ips = $request->nilai_ips;
        $student->nilai_pjok = $request->nilai_pjok;
        $student->nilai_informatika = $request->nilai_informatika;
        $student->nilai_senbud = $request->nilai_senbud;
        $student->nilai_mulok = $request->nilai_mulok;
        $student->save();
        return redirect()->back()->with('success', 'Nilai berhasil diperbarui');
    }
}

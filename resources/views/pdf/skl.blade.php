<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <title>SKL - {{ $student->name }}</title>
    <style>
        @page { size: 21.59cm 33.02cm; margin: 1.2cm 2.0cm; }
        body { 
            font-family: 'Arial', sans-serif; 
            line-height: 1.2; 
            font-size: 11pt;
            color: #000;
        }
        
        /* KOP SURAT BACK TO BASICS (MURNI TABEL SEJAJAR) */
        .kop-table { width: 100%; border-collapse: collapse; border: none; margin: 0; padding: 0; }
        .kop-table td { vertical-align: middle; text-align: center; padding: 0; }
        .kop-left { width: 12%; text-align: left; }
        .kop-center { width: 76%; text-align: center; }
        .kop-right { width: 12%; text-align: right; }
        
        /* JUDUL SURAT */
        .judul-surat { text-align: center; margin-top: 15px; margin-bottom: 12px; }
        .judul-surat h2 { margin: 0; font-family: 'Arial', sans-serif; font-size: 14pt; font-weight: bold; text-decoration: underline; text-transform: uppercase; }
        .judul-surat p { margin: 2px 0 0 0; font-size: 11pt; }
        
        .isi-surat { text-align: justify; margin-bottom: 8px; }
        
        /* BIODATA TABLE */
        .biodata-table { width: 100%; margin-left: 15px; margin-bottom: 8px; }
        .biodata-table td { padding: 2px 0; vertical-align: top; }
        .col-label { width: 35%; font-weight: bold; }
        .col-colon { width: 3%; text-align: center; }
        .col-data { width: 62%; font-weight: bold; }
        
        /* LULUS DECLARATION */
        .lulus-box { text-align: center; margin: 12px 0; }
        .lulus-text { font-size: 16pt; font-weight: 900; text-transform: uppercase; letter-spacing: 2px; }
        
        /* GRADES TABLE */
        .grades-table { width: 100%; border-collapse: collapse; margin-bottom: 12px; font-size: 9.5pt; }
        .grades-table th, .grades-table td { border: 1px solid #000; padding: 2.5px 5px; }
        .grades-table th { text-align: center; font-weight: bold; background-color: #f2f2f2; }
        .grades-table td.center { text-align: center; }
        .col-no { width: 5%; }
        .col-mapel { width: 70%; }
        .col-nilai { width: 25%; }
    </style>
</head>
<body>

    <table class="kop-table">
        <tr>
            <td class="kop-left">
                @if(!empty($school->kop_logo_dinas) && file_exists(public_path('files/logo/'.$school->kop_logo_dinas)))
                    <img src="{{ public_path('files/logo/'.$school->kop_logo_dinas) }}" style="height: 75px; width: auto;" alt="Logo Kiri">
                @elseif(file_exists(public_path('images/logo-pemkot.png')))
                    <img src="{{ public_path('images/logo-pemkot.png') }}" style="height: 75px; width: auto;" alt="Logo Kiri">
                @endif
            </td>
            
            <td class="kop-center">
                <div style="font-family: 'Arial', sans-serif; color: #000; padding: 0 5px;">
                    <div style="font-size: 16pt; font-weight: bold; line-height: 1.1;">PEMERINTAH KOTA PALEMBANG</div>
                    <div style="font-size: 16pt; font-weight: bold; line-height: 1.1; margin-top: 1px;">DINAS PENDIDIKAN</div>
                    <div style="font-size: 16pt; font-weight: bold; line-height: 1.1; margin-top: 1px;">SMP NEGERI 44 PALEMBANG</div>
                    
                    <div style="font-size: 10pt; font-weight: normal; line-height: 1.2; margin-top: 4px;">
                        Jl. Panca Usaha No.2145 Kel.5 Ulu Darat Kec. SU I Telp. 516501 Palembang 30254
                    </div>
                    <div style="font-size: 10pt; font-weight: normal; line-height: 1.2; margin-top: 1px;">
                        Email : smpnegeri044@gmail.com Website:smpn44plg.sch.id
                    </div>
                    
                    <div style="font-family: 'Tahoma', sans-serif; font-size: 12pt; font-weight: bold; margin-top: 4px; letter-spacing: 0.5px;">
                        “TERAKREDITASI  A”
                    </div>
                </div>
            </td>
            
            <td class="kop-right">
                @if(file_exists(public_path('frontend/assets/img/logo_smpn_44_plg.png')))
                    <img src="{{ public_path('frontend/assets/img/logo_smpn_44_plg.png') }}" style="height: 75px; width: auto;" alt="Logo Kanan">
                @endif
            </td>
        </tr>
    </table>

    <hr style="border: none; border-top: 3px solid #000; border-bottom: 1px solid #000; height: 5px; margin-top: 8px; margin-bottom: 15px; padding: 0;">

    <div class="judul-surat">
        <h2>SURAT KETERANGAN LULUS</h2>
        <p>Nomor : {{ $nomorSurat }}</p>
    </div>

    <div class="isi-surat">
        Yang bertanda tangan di bawah ini Kepala Sekolah Menengah Pertama Negeri 44 Palembang, dengan surat ini menerangkan bahwa:
    </div>

    <table class="biodata-table">
        <tr>
            <td class="col-label">Nama</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ strtoupper($student->name) }}</td>
        </tr>
        <tr>
            <td class="col-label">Tempat, Tanggal Lahir</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ $student->tempat_tgl_lahir ?: '-' }}</td>
        </tr>
        <tr>
            <td class="col-label">Kelas</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ $student->class ?: '-' }}</td>
        </tr>
        <tr>
            <td class="col-label">Nama Orang Tua</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ $student->nama_ortu ?: '-' }}</td>
        </tr>
        <tr>
            <td class="col-label">Nomor Induk Peserta Didik</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ $student->nis ?: '-' }}</td>
        </tr>
        <tr>
            <td class="col-label">Nomor Induk Siswa Nasional</td>
            <td class="col-colon">:</td>
            <td class="col-data">{{ $student->nisn }}</td>
        </tr>
    </table>

    <div class="isi-surat">
        Telah menyelesaikan seluruh program pembelajaran dan dinyatakan:
    </div>

    <div class="lulus-box">
        <span class="lulus-text">LULUS</span>
    </div>

    <div class="isi-surat">
        {!! $school->pembuka_surat !!}
    </div>

    @php
        $nilai_agama = (float)($student->nilai_agama ?? 0);
        $nilai_pancasila = (float)($student->nilai_pancasila ?? 0);
        $nilai_bind = (float)($student->nilai_bind ?? 0);
        $nilai_bing = (float)($student->nilai_bing ?? 0);
        $nilai_mat = (float)($student->nilai_mat ?? 0);
        $nilai_ipa = (float)($student->nilai_ipa ?? 0);
        $nilai_ips = (float)($student->nilai_ips ?? 0);
        $nilai_pjok = (float)($student->nilai_pjok ?? 0);
        $nilai_informatika = (float)($student->nilai_informatika ?? 0);
        $nilai_senbud = (float)($student->nilai_senbud ?? 0);
        $nilai_mulok = (float)($student->nilai_mulok ?? 0);

        $total_nilai = $nilai_agama + $nilai_pancasila + $nilai_bind + $nilai_bing + $nilai_mat + $nilai_ipa + $nilai_ips + $nilai_pjok + $nilai_informatika + $nilai_senbud + $nilai_mulok;
        $rata_rata = $total_nilai / 11;
    @endphp

    <table class="grades-table">
        <thead>
            <tr>
                <th class="col-no">No</th>
                <th class="col-mapel">Mata Pelajaran</th>
                <th class="col-nilai">Nilai</th>
            </tr>
        </thead>
        <tbody>
            <tr><td class="center">1</td><td>Pendidikan Agama dan Budi Pekerti</td><td class="center">{{ number_format($nilai_agama, 2, ',', '') }}</td></tr>
            <tr><td class="center">2</td><td>Pendidikan Pancasila</td><td class="center">{{ number_format($nilai_pancasila, 2, ',', '') }}</td></tr>
            <tr><td class="center">3</td><td>Bahasa Indonesia</td><td class="center">{{ number_format($nilai_bind, 2, ',', '') }}</td></tr>
            <tr><td class="center">4</td><td>Bahasa Inggris</td><td class="center">{{ number_format($nilai_bing, 2, ',', '') }}</td></tr>
            <tr><td class="center">5</td><td>Matematika</td><td class="center">{{ number_format($nilai_mat, 2, ',', '') }}</td></tr>
            <tr><td class="center">6</td><td>Ilmu Pengetahuan Alam</td><td class="center">{{ number_format($nilai_ipa, 2, ',', '') }}</td></tr>
            <tr><td class="center">7</td><td>Ilmu Pengetahuan Sosial</td><td class="center">{{ number_format($nilai_ips, 2, ',', '') }}</td></tr>
            <tr><td class="center">8</td><td>Pendidikan Jasmani, Olahraga dan Kesehatan</td><td class="center">{{ number_format($nilai_pjok, 2, ',', '') }}</td></tr>
            <tr><td class="center">9</td><td>Informatika</td><td class="center">{{ number_format($nilai_informatika, 2, ',', '') }}</td></tr>
            <tr><td class="center">10</td><td>Seni Budaya</td><td class="center">{{ number_format($nilai_senbud, 2, ',', '') }}</td></tr>
            <tr><td class="center">11</td><td>Mulok</td><td class="center">{{ number_format($nilai_mulok, 2, ',', '') }}</td></tr>
            <tr>
                <th colspan="2" style="text-align: right; padding-right: 15px;">Rata-rata Nilai</th>
                <th class="center">{{ number_format($rata_rata, 2, ',', '') }}</th>
            </tr>
        </tbody>
    </table>

    <div class="isi-surat" style="margin-top: 15px;">
        {!! $school->penutup_surat !!}
    </div>

    <div style="float: right; text-align: left; width: 250px;">
        <p style="margin: 2px 0;">{{ $school->tempat }}, {{ \Carbon\Carbon::parse($school->tanggal)->locale('id')->translatedFormat('d F Y') }}</p>
        <p style="margin: 2px 0;">{{ $school->jabatan_penandatangan }}</p>
        
        <div style="height: 100px;"></div>
        
        <p style="margin: 2px 0; font-weight: bold; text-decoration: underline; display: inline-block; white-space: nowrap;">{{ $school->nama_penandatangan }}</p>
        <p style="margin: 2px 0;">NIP. {{ $school->nip_penandatangan }}</p>
    </div>
    <div style="clear: both;"></div>

    <img src="{{ public_path('frontend/assets/img/cap_sekolah.png') }}" 
         style="position: absolute; right: 210px; bottom: 50px; width: 180px; height: 180px; z-index: 1; max-width: none;">
   
    @if($student->school->tanda_tangan ?? $school->tanda_tangan ?? true)
    <img src="{{ public_path('files/ttd/' . ($school->tanda_tangan ?? '')) }}" 
         style="position: absolute; right: 78px; bottom: 60px; height: 115px; width: auto; z-index: 3; max-width: none;">
    @endif
</body>
</html>
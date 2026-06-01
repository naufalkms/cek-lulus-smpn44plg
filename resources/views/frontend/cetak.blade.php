@if($student->status == 1)
<style>
    @media print {
        .printme,
        .printme * {
            visibility: visible;
        }

        html,
        body {
            height: auto;
            font-size: 11pt;
            font-family: 'Times New Roman', Times, serif;
            color: #000;
        }

        @page {
            margin: 30px 40px;
        }

        @media screen {
            div.divFooter {
                display: none;
            }
        }

        @media print {
            div.divFooter {
                position: fixed;
                bottom: 0;
            }
        }
    }
    
    /* Desain teks KOP Surat agar serasi dan tegas */
    .kop-text-1 {
        font-size: 16pt;
        font-weight: bold;
        letter-spacing: 0.5px;
        line-height: 1.2;
    }
    .kop-text-2 {
        font-size: 18pt;
        font-weight: bold;
        letter-spacing: 0.5px;
        line-height: 1.2;
    }
    .kop-text-3 {
        font-size: 20pt;
        font-weight: bold;
        letter-spacing: 0.8px;
        line-height: 1.3;
    }
    .kop-alamat {
        font-size: 10.5pt;
        line-height: 1.3;
    }
    .kop-akreditasi {
        font-size: 13pt;
        font-weight: bold;
        letter-spacing: 1px;
        margin-top: 4px;
        display: inline-block;
    }
</style>

@php
    /* Mengantisipasi jika input di admin masih mengandung teks \N akibat percobaan sebelumnya */
    $nama_sekolah_bersih = str_replace(['\NTERAKREDITASI A', '\nTERAKREDITASI A', '\N', '\n', '\\N', '\\n'], '', $school->kop_nama_sekolah);
@endphp

<table border="0" width="100%" style="font-family: 'Times New Roman', Times, serif; border-collapse: collapse;">
    <tr>
        <td align="center" width="15%" valign="middle">
            <img src="/files/logo/{{ $school->kop_logo_dinas }}" alt="Logo Dinas" width="85">
        </td>
        
        <td align="center" width="70%" valign="middle" style="padding: 0 10px;">
            <div class="kop-text-1">{{ $school->kop_nama_disdik }}</div>
            <div class="kop-text-2">DINAS PENDIDIKAN</div>
            <div class="kop-text-3">{{ $nama_sekolah_bersih }}</div>
            
            <div class="kop-alamat" style="margin-top: 3px;">
                Alamat: {{ $school->kop_alamat }} Telp. {{ $school->kop_telepon }}
                <br>
                Email: {{ $school->kop_email }} &nbsp; Kode Pos {{ $school->kop_pos }}
            </div>
            
            <div class="kop-akreditasi">"TERAKREDITASI A"</div>
        </td>
        
        <td align="center" width="15%" valign="middle">
            <img src="/files/logo/{{ $web->logo }}" alt="Logo Sekolah" width="85">
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" style="padding-top: 6px;">
            <hr size="1" color="#000000" style="margin: 0px; margin-bottom: 2px; border: none; border-top: 1px solid #000;">
            <hr size="4" color="#000000" style="margin: 0px; border: none; border-top: 3.5px solid #000;">
        </td>
    </tr>
</table>
<br>

<body onload="window.print();">
    
    <h4 align="center" style="margin-top: 5px; font-size: 14pt; margin-bottom: 25px;">
        <u>{{ $school->nama_surat }}</u>
        <p style="margin-top: 5px; font-weight: normal; font-size: 11pt;">Nomor: {{ $school->no_surat }}</p>
    </h4>

    <p style="text-align: justify; text-indent: 45px; line-height: 1.5; margin-bottom: 20px;">
        {{ $school->pembuka_surat }}
    </p>

    <table width="100%" border="0" style="line-height: 1.8; margin-left: 45px; font-size: 11pt;">
        <tr>
            <td width="220">NAMA LENGKAP</td>
            <td width="20">:</td>
            <td style="font-weight: bold; text-transform: uppercase;">{{ $student->name }}</td>
        </tr>
        <tr>
            <td>NAMA ORANG TUA</td>
            <td>:</td>
            <td>{{ $student->nama_ortu }}</td>
        </tr>
        <tr>
            <td>TEMPAT, TANGGAL LAHIR</td>
            <td>:</td>
            <td>{{ $student->tempat_tgl_lahir }}</td>
        </tr>
        <tr>
            <td>NISN</td>
            <td>:</td>
            <td>{{ $student->nisn }}</td>
        </tr>
        <tr>
            <td>NOMOR UJIAN</td>
            <td>:</td>
            <td>{{ $student->no_exam }}</td>
        </tr>
    </table>
    <br>
    
    <p style="margin-left: 45px; margin-bottom: 15px;">Yang bersangkutan dinyatakan :</p>
    
    <center>
        <table style="border: 2px solid #000; padding: 6px 30px; margin-bottom: 20px;">
            <tr>
                <td align="center">
                    <span style="font-size: 16pt; font-weight: bold; font-style: italic; letter-spacing: 3px;">LULUS</span>
                </td>
            </tr>
        </table>
    </center>

    <p style="text-align: justify; line-height: 1.5; margin-bottom: 40px;">
        {{ $school->penutup_surat }}
    </p>

    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="55%"></td>
            <td style="text-align: left; vertical-align: top; padding-top: 15px; width: 45%;">
                <div style="line-height: 1.3; font-family: sans-serif;">
                    Palembang, 02 Juni 2026<br>
                    a.n. Kepala SMP Negeri 44 Palembang<br>
                    Wakil Kepala Sekolah Bid. Kurikulum
                </div>

                <div style="height: 100px;"></div>

                <div style="font-family: sans-serif;">
                    <strong><u>{{ $school->nama_penandatangan }}</u></strong><br>
                    NIP. {{ $school->nip_penandatangan }}
                </div>
            </td>
        </tr>
    </table>
    
    <div style="clear: both;"></div>

    <img src="{{ public_path('frontend/assets/img/cap_sekolah.png') }}" 
         style="position: absolute; right: 140px; bottom: 120px; width: 145px; height: 145px; z-index: 1; max-width: none;">
    
    @if($school->tanda_tangan)
    <img src="{{ public_path('files/ttd/' . $school->tanda_tangan) }}" 
         style="position: absolute; right: 60px; bottom: 95px; height: 140px; width: auto; z-index: 3; max-width: none;">
    @endif
</body>
@else
<div style="text-align: center; margin-top: 100px; font-family: 'Times New Roman', serif;">
    <h2>ANDA BELUM BISA CETAK SURAT KETERANGAN</h2>
    <p>Silakan hubungi bagian administrasi sekolah untuk info lebih lanjut.</p>
</div>
@endif
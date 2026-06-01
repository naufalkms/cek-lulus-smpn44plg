@extends('layouts.admin.app')

@section('title')
Edit Nilai SKL - {{ $student->name }}
@endsection

@section('content')

<div class="row">
    <div class="col-12">
        <br>
        <div class="card box-shadow-0 border-info">
            <div class="card-header card-head-inverse bg-secondary">
                <h3 class="card-title text-center">Edit Nilai SKL - {{ $student->name }} (NIS: {{ $student->nis }})</h3>
            </div>
            <div class="card-content collpase show">
                <div class="card-body card-dashboard">

                    @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif
                    
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('nilai.update', $student->id) }}" method="POST">
                        @csrf
                        @method('PUT')

                        @php
                            $subjects = [
                                'nilai_agama' => 'Pendidikan Agama',
                                'nilai_pancasila' => 'Pendidikan Pancasila',
                                'nilai_bind' => 'Bahasa Indonesia',
                                'nilai_bing' => 'Bahasa Inggris',
                                'nilai_mat' => 'Matematika',
                                'nilai_ipa' => 'Ilmu Pengetahuan Alam',
                                'nilai_ips' => 'Ilmu Pengetahuan Sosial',
                                'nilai_pjok' => 'PJOK',
                                'nilai_informatika' => 'Informatika',
                                'nilai_senbud' => 'Seni Budaya',
                                'nilai_mulok' => 'Muatan Lokal'
                            ];
                        @endphp

                        <div class="row">
                            @foreach($subjects as $field => $label)
                                <div class="col-md-6 form-group">
                                    <label for="{{ $field }}">{{ $label }}</label>
                                    <input type="number" step="0.01" name="{{ $field }}" id="{{ $field }}" class="form-control nilai-input" value="{{ old($field, $student->$field) }}">
                                </div>
                            @endforeach
                        </div>

                        <div class="form-group mt-3">
                            <label>Rata-rata:</label>
                            <span id="average" style="font-weight: bold; font-size: 1.5em; color: #28a745;">0.00</span>
                        </div>

                        <div class="mt-4">
                            <button type="submit" class="btn btn-success">Simpan Nilai</button>
                            <a href="/student" class="btn btn-secondary">Kembali</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const inputs = document.querySelectorAll('.nilai-input');
        const averageDisplay = document.getElementById('average');

        function calculateAverage() {
            let total = 0;
            let count = 0;

            inputs.forEach(input => {
                const value = parseFloat(input.value);
                if (!isNaN(value)) {
                    total += value;
                    count++;
                }
            });

            if (count > 0) {
                const average = total / count;
                averageDisplay.textContent = average.toFixed(2);
            } else {
                averageDisplay.textContent = '0.00';
            }
        }

        inputs.forEach(input => {
            input.addEventListener('input', calculateAverage);
        });

        // Initial calculation
        calculateAverage();
    });
</script>

@endsection

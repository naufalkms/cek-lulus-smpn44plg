<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>{{ $web->title ?? 'Cek Kelulusan' }}</title>
    <meta name="description" content="Sistem Pengecekan Kelulusan Siswa - {{ $web->title ?? '' }}"/>
    <link rel="shortcut icon" href="/files/logo/{{ $web->logo ?? 'LOGO.PNG' }}"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet"/>
    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        :root {
            /* Tema Biru Pastel Elegan & Latar Belakang Berbasis Foto */
            --overlay-blue: linear-gradient(135deg, rgba(20, 47, 92, 0.92), rgba(43, 91, 158, 0.85));
            --surface-card: rgba(255, 255, 255, 0.96);
            --surface-left: rgba(255, 255, 255, 0.04);
            --text-main: #1e293b;
            --text-light: #ffffff;
            --text-muted: #64748b;
            --accent-gold: #eab308; 
            --accent-blue: #2563eb;
            --border: rgba(255, 255, 255, 0.15);
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: var(--text-main);
            min-height: 100vh;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
            
            /* JALUR BACKGROUND DIBETULKAN KE: frontend/assets/img/ */
            background-image: url("{{ asset('frontend/assets/img/IMG_5553.jpg') }}");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }

        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: var(--overlay-blue);
            z-index: -1;
        }

        .brand-area {
            position: absolute; top: 2.5rem; left: 3rem;
            display: flex; align-items: center; gap: 1rem; z-index: 50;
            text-decoration: none; color: var(--text-light);
        }

        .brand-area img {
            height: 48px; width: auto;
            filter: drop-shadow(0 2px 8px rgba(0,0,0,0.2));
            opacity: 1;
        }

        .brand-name {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 1.1rem; letter-spacing: 0.05em;
            text-transform: uppercase; font-weight: 800;
            text-shadow: 0 2px 4px rgba(0,0,0,0.3);
        }

        .login-link {
            position: absolute; top: 3rem; right: 3rem; z-index: 50;
            font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.1em;
            color: rgba(255, 255, 255, 0.8); text-decoration: none;
            padding: 0.6rem 1.4rem; border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 50px; background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(4px); transition: all 0.3s ease;
        }

        .login-link:hover {
            color: #ffffff; background: var(--accent-blue); border-color: var(--accent-blue);
        }

        .layout-wrapper {
            display: grid; grid-template-columns: 1.1fr 0.9fr; min-height: 100vh;
        }

        .col-left {
            padding: 8rem 5rem 4rem 5rem;
            display: flex; flex-direction: column; justify-content: center;
            border-right: none;
            position: relative;
            background: var(--surface-left);
            backdrop-filter: blur(2px);
        }

        .col-right {
            padding: 8rem 4rem 4rem 4rem;
            display: flex; flex-direction: column; justify-content: center;
            align-items: center;
            position: relative;
        }

        .headline {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.8rem, 4.5vw, 4.8rem);
            line-height: 1.15; font-weight: 700;
            margin-bottom: 2rem;
            color: var(--text-light);
            text-shadow: 0 4px 12px rgba(0,0,0,0.15);
            opacity: 0; animation: fadeSlideUp 1s ease-out 0.2s forwards;
        }

        .headline em {
            font-style: italic; 
            color: var(--accent-gold);
        }

        .ornament {
            width: 120px; height: 3px; background: var(--accent-gold);
            margin-bottom: 2.5rem; border-radius: 2px;
            opacity: 0; animation: fadeSlideUp 1s ease-out 0.4s forwards;
        }

        .desc {
            color: rgba(255, 255, 255, 0.85); font-size: 1.1rem; line-height: 1.7;
            max-width: 480px; margin-bottom: 3rem;
            text-shadow: 0 1px 2px rgba(0,0,0,0.2);
            opacity: 0; animation: fadeSlideUp 1s ease-out 0.6s forwards;
        }

        .countdown-wrap {
            display: inline-flex; align-items: center; gap: 0.75rem;
            font-size: 0.9rem; font-weight: 700; letter-spacing: 0.05em;
            color: var(--accent-gold); background: rgba(234, 179, 8, 0.15);
            padding: 0.6rem 1.5rem; border: 1px solid rgba(234, 179, 8, 0.25);
            border-radius: 50px; width: fit-content;
            opacity: 0; animation: fadeSlideUp 1s ease-out 0.8s forwards;
        }

        .pulse-dot {
            width: 8px; height: 8px; background: var(--accent-gold); border-radius: 50%;
            box-shadow: 0 0 10px var(--accent-gold);
            animation: pulse 2s infinite;
        }

        .form-container, .closed-container {
            background: var(--surface-card);
            padding: 3.5rem; border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.25);
            max-width: 460px; width: 100%;
            opacity: 0; animation: fadeSlideUp 1s ease-out 0.5s forwards;
        }

        .input-label {
            font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.1em;
            color: var(--accent-blue); margin-bottom: 0.75rem; display: block; font-weight: 700;
        }

        .input-field {
            width: 100%; background: #ffffff; 
            border: 2px solid #e2e8f0;
            padding: 1rem 1.25rem; font-size: 1.3rem; color: var(--text-main);
            font-family: 'Plus Jakarta Sans', sans-serif; font-weight: 600;
            transition: all 0.4s ease; border-radius: 12px;
        }

        .input-field:focus {
            outline: none; border-color: var(--accent-blue);
            box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.15);
        }

        .input-field::placeholder {
            color: #94a3b8; font-size: 1rem; font-weight: 400;
        }

        .btn-submit {
            width: 100%; margin-top: 2.5rem; 
            background: linear-gradient(135deg, #3b82f6, #1d4ed8); color: #ffffff;
            border: none; padding: 1.1rem 2rem;
            font-family: 'Plus Jakarta Sans', sans-serif; font-size: 0.9rem; font-weight: 700;
            text-transform: uppercase; letter-spacing: 0.05em;
            cursor: pointer; transition: all 0.4s ease;
            display: inline-flex; align-items: center; justify-content: center; gap: 1rem;
            border-radius: 12px; box-shadow: 0 8px 20px rgba(59, 130, 246, 0.25);
        }

        .btn-submit:hover {
            transform: translateY(-2px); box-shadow: 0 12px 24px rgba(59, 130, 246, 0.35);
        }

        .closed-icon {
            margin-bottom: 1.5rem; text-align: center;
        }
        
        .closed-container h2 {
            font-family: 'Playfair Display', serif; font-size: 2rem; font-weight: 700;
            margin-bottom: 1rem; color: #0f172a; text-align: center;
        }

        .closed-container p {
            color: var(--text-muted); line-height: 1.6; text-align: center;
        }

        @keyframes fadeSlideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes pulse {
            0% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.4; transform: scale(1.2); }
            100% { opacity: 1; transform: scale(1); }
        }

        [v-cloak]>* { display: none; }

        @media (max-width: 960px) {
            .layout-wrapper { grid-template-columns: 1fr; }
            .col-left, .col-right { padding: 4rem 2rem; min-height: auto; }
            .col-left { padding-top: 9rem; border-right: none; }
            .col-right { padding-top: 2rem; padding-bottom: 6rem; }
            .brand-area { left: 2rem; top: 2rem; }
            .brand-area img { height: 38px; }
            .login-link { right: 2rem; top: 2.2rem; }
            .headline { font-size: 2.6rem; }
            .form-container, .closed-container { padding: 2.5rem 1.5rem; }
        }
    </style>
</head>
<body>

    <a href="/" class="brand-area">
        <img alt="Logo" src="/files/logo/{{ $web->logo ?? 'LOGO.png' }}"/>
        <span class="brand-name">{{ $web->title ?? 'Cek Kelulusan' }}</span>
    </a>


    <main id="app" v-cloak class="layout-wrapper">
        <div class="col-left">
            <h1 class="headline">
                <em>Cek Hasil</em><br/>
                Kelulusan<br/>
                Siswa
            </h1>
            <div class="ornament"></div>
            @php
                $currentYear = date('Y');
                $currentMonth = date('n');
                if ($currentMonth >= 7) {
                    $academicYear = $currentYear . '/' . ($currentYear + 1);
                } else {
                    $academicYear = ($currentYear - 1) . '/' . $currentYear;
                }
            @endphp
            <p class="desc">Silahkan masukkan  Nomor Induk Siswa Nasional (NISN) Anda untuk melihat hasil kelulusan secara resmi. Tahun Pelajaran {{ $academicYear }}.</p>
            
            <div class="countdown-wrap">
                <span class="pulse-dot"></span>
                <span id="demo">Memuat waktu...</span>
            </div>
        </div>

        <div class="col-right">
            @if($setting->status == 1)
                <div v-if="currentDate() <= 0" class="form-container">
                    <form @submit.prevent="submitSearch">
                        <label class="input-label">NISN</label>
                        <input type="text" name="nisn" class="input-field" v-model="search" placeholder="Masukkan NISN" maxlength="17" autofocus required autocomplete="off"/>
                        <button type="submit" class="btn-submit">
                            Lihat Hasil
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </form>
                </div>
            @else
                <div class="closed-container">
                    <div class="closed-icon">
                        <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#dc2626" stroke-width="1.5"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                    </div>
                    <h2>Akses Ditutup</h2>
                    <p>Pengumuman belum dibuka. Silakan kembali sesuai dengan jadwal resmi yang telah ditentukan oleh sekolah.</p>
                </div>
            @endif
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script>
        new Vue({
            el: '#app',
            data: {
                web: JSON.parse(String.raw `{!! json_encode($web) !!}`),
                setting: JSON.parse(String.raw `{!! json_encode($setting) !!}`),
                search: '{{ $req_search }}',
                dt: '{!! $setting->date !!} {!! $setting->time !!}',
                dt2: '{{ $dt }}',
            },
            methods: {
                submitSearch: function() {
                    if(this.search.trim() !== '') {
                        window.location.href = `/?nisn=${encodeURIComponent(this.search.trim())}`;
                    }
                },
                currentDate() {
                    let datedb = new Date(this.dt).getTime();
                    let current = new Date().getTime();
                    return datedb - current;
                },
            }
        });

        // Countdown System
        var countDownDate = new Date("{!! $setting->date !!} {!! $setting->time !!}").getTime();
        var wasWaiting = false;
        var x = setInterval(function() {
            var now = new Date().getTime();
            var distance = countDownDate - now;
            var days = Math.floor(distance / (1000*60*60*24));
            var hours = Math.floor((distance%(1000*60*60*24))/(1000*60*60));
            var minutes = Math.floor((distance%(1000*60*60))/(1000*60));
            var seconds = Math.floor((distance%(1000*60))/1000);

            var el = document.getElementById("demo");
            if(distance < 0) {
                clearInterval(x);
                el.innerHTML = "Pengumuman Resmi Dibuka";
                if(wasWaiting) {
                    setTimeout(() => window.location.reload(), 1500);
                }
            } else {
                wasWaiting = true;
                el.innerHTML = days + " Hari " + hours + " Jam " + minutes + " Menit " + seconds + " Detik";
            }
        }, 1000);
    </script>
</body>
</html>
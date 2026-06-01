<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Hasil Kelulusan - {{ $web->title ?? 'SMP Negeri 44 Palembang' }}</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Playfair+Display:ital,wght@0,600;0,700;1,400&display=swap" rel="stylesheet"/>

    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        :root {
            /* Warna Pastel Utama Dominan Biru SMPN 44 */
            --overlay-blue-pastel: linear-gradient(135deg, rgba(20, 47, 92, 0.88), rgba(43, 91, 158, 0.82));
            --card-white-pastel: rgba(255, 255, 255, 0.97);
            --primary-blue: #2563eb;
            --primary-pastel: #dbeafe;
            --accent-gold: #eab308; /* Aksen emas dari bintang logo */
            --accent-gold-soft: #fef9c3;
            --text-dark: #1e293b;
            --text-muted: #64748b;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: var(--text-dark);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            position: relative;
            
            /* Menggunakan foto kedua sebagai background samar seluruh halaman */
            background-image: url("{{ asset('frontend/assets/img/IMG_5553.jpg') }}");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }

        /* Overlay Biru Pastel untuk meredam background foto agar samar namun elegan */
        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: var(--overlay-blue-pastel);
            z-index: -1;
        }

        /* Animasi Confetti Jatuh secara Elegan */
        .confetti-container { position: fixed; inset: 0; z-index: 0; pointer-events: none; overflow: hidden; }
        .confetti { position: absolute; top: -20px; width: 6px; height: 14px; opacity: 0; animation: fall linear forwards; }
        @keyframes fall {
            0% { opacity: 1; transform: translateY(0) rotate(0deg); }
            100% { opacity: 0; transform: translateY(100vh) rotate(360deg); }
        }

        /* Navigasi Atas */
        .header-nav {
            width: 100%;
            padding: 2rem 4rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10;
        }

        .brand-area { display: flex; align-items: center; gap: 1rem; text-decoration: none; }
        .brand-area img { height: 50px; width: auto; }
        .brand-name { font-size: 1.1rem; text-transform: uppercase; font-weight: 800; color: #ffffff; letter-spacing: 0.05em; }

        .login-link {
            font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.1em;
            color: rgba(255, 255, 255, 0.8); text-decoration: none;
            padding: 0.6rem 1.4rem; border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 50px; background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(4px); transition: all 0.3s ease;
        }
        .login-link:hover { color: #fff; background: var(--primary-blue); border-color: var(--primary-blue); }

        /* Area Utama */
        .result-container {
            flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center;
            padding: 2rem; z-index: 5;
        }

        /* Penghitung Waktu Mundur */
        .countdown-wrap {
            display: inline-flex; align-items: center; gap: 0.5rem;
            font-size: 0.85rem; font-weight: 700; letter-spacing: 0.05em;
            color: var(--accent-gold-soft); background: rgba(234, 179, 8, 0.15);
            margin-bottom: 2rem; padding: 0.6rem 1.5rem; 
            border: 1px solid rgba(234, 179, 8, 0.3); border-radius: 50px;
        }

        /* Kartu Hasil Kelulusan */
        .result-card {
            background: var(--card-white-pastel);
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.25);
            max-width: 600px; width: 100%; padding: 3.5rem;
            text-align: center; position: relative; overflow: hidden;
            opacity: 0; animation: fadeInUp 0.6s ease-out forwards;
        }

        .watermark {
            position: absolute; top: 35%; left: 50%; transform: translate(-50%, -50%) rotate(-10deg);
            font-family: 'Playfair Display', serif; font-size: 8rem; font-weight: 700;
            color: rgba(37, 99, 235, 0.04); pointer-events: none; z-index: 0; user-select: none;
        }

        .result-card > * { position: relative; z-index: 1; }

        /* Badge Status */
        .status-badge {
            font-size: 0.8rem; font-weight: 800; text-transform: uppercase; letter-spacing: 0.1em;
            padding: 0.5rem 1.5rem; display: inline-block; margin-bottom: 1.5rem; border-radius: 50px;
        }
        .status-badge.success { background: var(--primary-pastel); color: #1e40af; }
        .status-badge.danger { background: #fee2e2; color: #991b1b; }

        .student-name {
            font-family: 'Playfair Display', serif; font-size: 2.4rem; font-weight: 700;
            margin-bottom: 0.75rem; color: #0f172a;
        }

        .student-message { color: var(--text-muted); line-height: 1.6; margin-bottom: 2.5rem; }

        /* Informasi Detail */
        .result-details {
            border-top: 1px dashed #e2e8f0; border-bottom: 1px dashed #e2e8f0;
            padding: 1.5rem 0; margin-bottom: 2.5rem; display: grid; gap: 1rem;
        }
        .detail-item { display: flex; justify-content: space-between; align-items: center; }
        .detail-item span { color: var(--text-muted); font-size: 0.85rem; font-weight: 600; text-transform: uppercase; }
        .detail-item strong { font-size: 1.05rem; color: #1e293b; }

        /* Tombol */
        .btn-group { display: flex; gap: 1rem; }
        .btn-action {
            flex: 1; display: inline-flex; align-items: center; justify-content: center; gap: 0.5rem;
            padding: 1rem 2rem; font-size: 0.85rem; font-weight: 700; text-transform: uppercase;
            text-decoration: none; border-radius: 12px; transition: all 0.3s ease;
        }
        .btn-action.primary { background: linear-gradient(135deg, #3b82f6, #1d4ed8); color: #fff; box-shadow: 0 8px 20px rgba(59, 130, 246, 0.2); }
        .btn-action.primary:hover { transform: translateY(-2px); box-shadow: 0 12px 24px rgba(59, 130, 246, 0.3); }
        .btn-action.secondary { background: #f1f5f9; color: #475569; }
        .btn-action.secondary:hover { background: #e2e8f0; }

        @keyframes fadeInUp { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }

        [v-cloak] > * { display: none; }

        @media (max-width: 768px) {
            .header-nav { padding: 1.5rem; flex-direction: column; gap: 1rem; }
            .result-card { padding: 2rem 1.5rem; }
            .student-name { font-size: 1.8rem; }
            .btn-group { flex-direction: column; }
        }
    </style>
</head>
<body>
    <div class="confetti-container" id="confetti-holder"></div>

    <header class="header-nav">
        <a href="/" class="brand-area">
            <img alt="Logo" src="{{ asset('frontend/assets/img/logo_smpn_44_plg.png') }}"/>
            <span class="brand-name">{{ $web->title ?? 'SMP NEGERI 44 PALEMBANG' }}</span>
        </a>
    </header>

    <main id="app" v-cloak class="result-container">
        <div class="countdown-wrap">
            <span id="timer-countdown">Menghitung mundur waktu pengumuman...</span>
        </div>

        @if($setting->status == 1)
        <div v-if="currentDate() <= 0" style="width:100%; display:flex; justify-content:center;">
            @if(isset($req_search))
            <div v-for="st in student" v-if="search == st.nisn" style="width:100%; display:flex; justify-content:center;">
                
                <div v-if="st.status == 1" class="result-card">
                    <div class="watermark">LULUS</div>
                    <span class="status-badge success">Selamat! Anda Lulus</span>
                    <h2 class="student-name">@{{ st.name }}</h2>
                    <p class="student-message">@{{ st.message }}</p>
                    
                    <div class="result-details">
                        <div class="detail-item">
                            <span>NISN</span>
                            <strong>@{{ st.nisn }}</strong>
                        </div>
                        <div class="detail-item">
                            <span>Kelas</span>
                            <strong>@{{ st.class }}</strong>
                        </div>
                        <div class="detail-item">
                            <span>Status</span>
                            <strong style="color: var(--primary-blue)">LULUS</strong>
                        </div>
                    </div>

                    <div class="btn-group">
                        <a :href="'skl/pdf/' + st.nisn" class="btn-action primary" target="_blank">Unduh SKL (PDF)</a>
                        <a href="/" class="btn-action secondary">Kembali</a>
                    </div>
                </div>

                <div v-if="st.status == 2" class="result-card">
                    <div class="watermark" style="color:rgba(220,38,38,0.03)">DITUNDA</div>
                    <span class="status-badge danger">Status: Ditunda</span>
                    <h2 class="student-name">@{{ st.name }}</h2>
                    <p class="student-message">@{{ st.message }}</p>
                    
                    <div class="result-details">
                        <div class="detail-item">
                            <span>NISN</span>
                            <strong>@{{ st.nisn }}</strong>
                        </div>
                        <div class="detail-item">
                            <span>Kelas</span>
                            <strong>@{{ st.class }}</strong>
                        </div>
                    </div>

                    <div class="btn-group">
                        <a href="/" class="btn-action secondary">Kembali</a>
                    </div>
                </div>

            </div>
            @endif
        </div>
        @else
        <div class="result-card">
            <span class="status-badge" style="background:#fef3c7; color:#d97706;">Belum Dibuka</span>
            <h2 class="student-name" style="font-size: 2rem;">Akses Belum Dibuka</h2>
            <p class="student-message">Silakan cek kembali halaman ini sesuai jadwal resmi pengumuman kelulusan sekolah.</p>
            <a href="/" class="btn-action secondary">Kembali</a>
        </div>
        @endif
    </main>

    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script>
        // Efek Hujan Kebahagiaan (Confetti) Otomatis
        (function(){
            if({!! json_encode($student->where('status', 1)->count() > 0) !!}) {
                var container = document.getElementById('confetti-holder');
                var colors = ['#3b82f6', '#60a5fa', '#f59e0b', '#ffffff'];
                for(var i=0; i<40; i++){
                    var piece = document.createElement('div');
                    piece.className = 'confetti';
                    piece.style.left = Math.random()*100+'%';
                    piece.style.background = colors[Math.floor(Math.random()*colors.length)];
                    piece.style.animationDuration = (2.5 + Math.random()*3)+'s';
                    piece.style.animationDelay = Math.random()*1+'s';
                    container.appendChild(piece);
                }
            }
        })();

        new Vue({
            el: '#app',
            data: {
                web: JSON.parse(String.raw `{!! json_encode($web) !!}`),
                student: JSON.parse(String.raw `{!! json_encode($student) !!}`),
                setting: JSON.parse(String.raw `{!! json_encode($setting) !!}`),
                search: '{{ $req_search }}'
            },
            methods: {
                currentDate() {
                    return new Date(this.setting.date + ' ' + this.setting.time).getTime() - new Date().getTime();
                }
            }
        });

        // Mekanisme Hitung Mundur Real-time
        var targetTime = new Date("{!! $setting->date !!} {!! $setting->time !!}").getTime();
        var timerInterval = setInterval(function() {
            var remain = targetTime - new Date().getTime();
            if(remain < 0) {
                clearInterval(timerInterval);
                document.getElementById("timer-countdown").innerHTML = "Pengumuman Resmi Telah Dibuka";
            } else {
                var d = Math.floor(remain / (1000*60*60*24));
                var h = Math.floor((remain % (1000*60*60*24)) / (1000*60*60));
                var m = Math.floor((remain % (1000*60*60)) / (1000*60));
                var s = Math.floor((remain % (1000*60)) / 1000);
                document.getElementById("timer-countdown").innerHTML = d + " Hari " + h + " Jam " + m + " Menit " + s + " Detik Lagi";
            }
        }, 1000);
    </script>
</body>
</html>
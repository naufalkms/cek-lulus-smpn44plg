<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Data Tidak Ditemukan - SMP Negeri 44 Palembang</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Playfair+Display:ital,wght@0,600;0,700;1,400&display=swap" rel="stylesheet"/>

    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        :root {
            --overlay-blue-pastel: linear-gradient(135deg, rgba(20, 47, 92, 0.92), rgba(43, 91, 158, 0.85));
            --card-white-pastel: rgba(255, 255, 255, 0.97);
            --accent-red: #dc2626;
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
            
            /* Background foto sekolah menggunakan jalur assets baru */
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
            background: var(--overlay-blue-pastel);
            z-index: -1;
        }

        /* Navigasi Header Atas */
        .header-nav {
            width: 100%; padding: 2rem 4rem;
            display: flex; justify-content: space-between; align-items: center;
            z-index: 10;
        }

        .brand-area { display: flex; align-items: center; gap: 1rem; text-decoration: none; }
        .brand-area img { height: 48px; width: auto; }
        .brand-name { font-size: 1.1rem; text-transform: uppercase; font-weight: 800; color: #ffffff; letter-spacing: 0.05em; }

        /* Area Konten Utama */
        .result-container {
            flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center;
            padding: 2rem; z-index: 5;
        }

        /* Kartu Eror */
        .error-card {
            background: var(--card-white-pastel);
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.25);
            max-width: 500px; width: 100%; padding: 3.5rem 2.5rem;
            text-align: center;
        }

        .error-icon {
            margin-bottom: 1.5rem; display: inline-flex;
            background: rgba(220, 38, 38, 0.1); padding: 1rem; border-radius: 50%;
        }

        .error-title {
            font-family: 'Playfair Display', serif; font-size: 1.8rem; font-weight: 700;
            margin-bottom: 0.75rem; color: #0f172a;
        }

        .error-message { color: var(--text-muted); line-height: 1.6; margin-bottom: 2.5rem; font-size: 0.95rem; }

        /* Tombol Kembali */
        .btn-back {
            display: inline-flex; align-items: center; gap: 0.5rem;
            padding: 0.8rem 2rem; font-size: 0.9rem; font-weight: 700; text-transform: uppercase;
            color: #ffffff; background: linear-gradient(135deg, #3b82f6, #1d4ed8);
            border: none; border-radius: 50px; cursor: pointer; text-decoration: none;
            box-shadow: 0 8px 20px rgba(59, 130, 246, 0.2); transition: all 0.3s ease;
        }
        .btn-back:hover { transform: translateY(-2px); box-shadow: 0 12px 24px rgba(59, 130, 246, 0.3); }

        @media (max-width: 768px) {
            .header-nav { padding: 1.5rem; flex-direction: column; gap: 1rem; }
            .error-card { padding: 2.5rem 1.5rem; }
            .error-title { font-size: 1.5rem; }
        }
    </style>
</head>
<body>

    <header class="header-nav">
        <a href="/" class="brand-area">
            <img alt="Logo" src="{{ asset('frontend/assets/img/logo_smpn_44_plg.png') }}"/>
            <span class="brand-name">SMP NEGERI 44 PALEMBANG</span>
        </a>
    </header>

    <main class="result-container">
        <div class="error-card">
            <div class="error-icon">
                <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="var(--accent-red)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
            </div>
            <h2 class="error-title">Nomor Ujian Tidak Valid</h2>
            <p class="error-message">Nomor ujian yang Anda masukkan tidak terdaftar dalam sistem kami. Harap periksa kembali nomor ujian Anda dan coba lagi.</p>
            
            <a href="/" class="btn-back">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>
                Kembali
            </a>
        </div>
    </main>

</body>
</html>
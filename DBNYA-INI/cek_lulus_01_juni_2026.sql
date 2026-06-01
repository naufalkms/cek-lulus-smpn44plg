-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table cek_lulus.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table cek_lulus.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.migrations: ~10 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_04_23_074325_create_students_table', 1),
	(6, '2022_04_23_165731_create_webs_table', 1),
	(7, '2022_04_24_132000_add_username_to_users', 1),
	(8, '2022_04_24_150207_create_settings_table', 1),
	(9, '2022_04_27_070016_create_schools_table', 1),
	(10, '2022_04_30_065432_add_nama_ortu_to_students', 1),
	(11, '2026_05_29_105457_update_students_table_for_skl', 2),
	(12, '2026_05_29_105506_create_skl_configs_table', 2);

-- Dumping structure for table cek_lulus.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.password_resets: ~0 rows (approximately)

-- Dumping structure for table cek_lulus.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table cek_lulus.schools
CREATE TABLE IF NOT EXISTS `schools` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kop_logo_dinas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_sekolah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_disdik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_th_pelajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembuka_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penutup_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_penandatangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penandatangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_penandatangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanda_tangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.schools: ~1 rows (approximately)
INSERT INTO `schools` (`id`, `kop_logo_dinas`, `kop_nama_sekolah`, `kop_alamat`, `kop_telepon`, `kop_pos`, `kop_website`, `kop_email`, `kop_nama_disdik`, `kop_th_pelajaran`, `nama_surat`, `no_surat`, `pembuka_surat`, `penutup_surat`, `jabatan_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `tempat`, `tanggal`, `tanda_tangan`, `created_at`, `updated_at`) VALUES
	(1, 'SMP NEGERI 44 PALEMBANG_Logo_Palembang.png', 'SMP NEGERI 44 PALEMBANG', 'Jl. Panca Usaha 5 Ulu Darat Seberang Ulu 1', '516501', '30254', 'www.smpnegeri44palembang.sch.id', 'esempe44@yahoo.co.id', 'PEMERINTAH KOTA PALEMBANG', '2025/2026', 'SURAT KETERANGAN', '421.3/123/DISDIK/SMPN44/2026', 'dari Sekolah Menengah Pertama Negeri 44 Palembang setelah memenuhi seluruh kriteria sesuai dengan peraturan perundang-undangan yang diumumkan pada tanggal 26 Mei 2026, dengan hasil pencapaian kompetensi kelulusan sebagai berikut :', 'Demikian Surat Keterangan ini diberikan untuk dapat dipergunakan dalam melanjutkan pendidikan atau keperluan lain sesuai kebutuhan. Surat Keterangan ini hanya berlaku sampai dengan diterbitkannya Ijazah.', 'a.n.Kepala SMP Negeri 44 Palembang', 'Muhamad Dermawan, S.Pd.', '19881210 202321 1 009', 'Palembang', '2026-06-02', '2026-06-02_Desain tanpa judul (8).png', '2026-05-15 07:48:56', '2026-06-01 04:15:21');

-- Dumping structure for table cek_lulus.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.settings: ~1 rows (approximately)
INSERT INTO `settings` (`id`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
	(1, 1, '2026-06-01', '17:05:00', NULL, '2026-06-01 03:01:27');

-- Dumping structure for table cek_lulus.skl_configs
CREATE TABLE IF NOT EXISTS `skl_configs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prefix_nomor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_instansi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_urut_awal` int NOT NULL DEFAULT '1',
  `nomor_urut_terakhir` int NOT NULL DEFAULT '1',
  `tahun_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_pengumuman` date DEFAULT NULL,
  `nama_kepsek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_kepsek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_kepsek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.skl_configs: ~0 rows (approximately)
INSERT INTO `skl_configs` (`id`, `prefix_nomor`, `kode_instansi`, `nomor_urut_awal`, `nomor_urut_terakhir`, `tahun_surat`, `tanggal_pengumuman`, `nama_kepsek`, `jabatan_kepsek`, `nip_kepsek`, `file_ttd`, `created_at`, `updated_at`) VALUES
	(1, '421.3/', '/SMAN1/', 1, 1, NULL, NULL, 'Drs. Muhammad Ali Hanafiah, M.Pd.', 'Kepala SMP Negeri 44 Palembang', '19660405 200604 1 004', NULL, '2026-05-29 03:57:08', '2026-05-29 03:57:08');

-- Dumping structure for table cek_lulus.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ortu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tgl_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_skl_generated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nilai_agama` decimal(5,2) DEFAULT NULL,
  `nilai_pancasila` decimal(5,2) DEFAULT NULL,
  `nilai_bind` decimal(5,2) DEFAULT NULL,
  `nilai_bing` decimal(5,2) DEFAULT NULL,
  `nilai_mat` decimal(5,2) DEFAULT NULL,
  `nilai_ipa` decimal(5,2) DEFAULT NULL,
  `nilai_ips` decimal(5,2) DEFAULT NULL,
  `nilai_pjok` decimal(5,2) DEFAULT NULL,
  `nilai_informatika` decimal(5,2) DEFAULT NULL,
  `nilai_senbud` decimal(5,2) DEFAULT NULL,
  `nilai_mulok` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.students: ~293 rows (approximately)
INSERT INTO `students` (`id`, `nis`, `nisn`, `name`, `nama_ortu`, `tempat_tgl_lahir`, `class`, `status`, `message`, `nomor_skl_generated`, `created_at`, `updated_at`, `nilai_agama`, `nilai_pancasila`, `nilai_bind`, `nilai_bing`, `nilai_mat`, `nilai_ipa`, `nilai_ips`, `nilai_pjok`, `nilai_informatika`, `nilai_senbud`, `nilai_mulok`) VALUES
	(1, '9576', '0127408054', 'Abib Kurniawan', 'Yenny Puspita', 'Palembang, 01 April 2012', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.22, 90.12, 89.05, 85.98, 85.85, 90.73, 87.83, 87.77, 88.47, 88.63, 86.63),
	(2, '9721', '0112938258', 'Ahmad Acip', 'MULYATI', 'Palembang, 13 Maret 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.93, 88.93, 86.47, 82.28, 86.50, 85.93, 86.38, 88.82, 88.73, 87.58, 81.55),
	(3, '9612', '0113683129', 'Aisya Nia', 'Desriyani', 'Pedamaran - Oki, 24 November 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.82, 91.28, 89.92, 85.75, 85.08, 86.15, 86.82, 89.22, 86.15, 87.35, 89.13),
	(4, '9654', '3110577181', 'Akhyaruddin', 'RAHMI UTAMA', 'Palembang, 08 Mei 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.13, 83.70, 82.95, 78.25, 81.03, 81.98, 81.58, 86.47, 81.87, 78.48, 85.00),
	(5, '9616', '0111441286', 'Amira Varisha', 'YANTI HENDAYANI SE', 'Palembang, 17 Januari 2012', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.52, 88.82, 89.40, 86.28, 86.72, 85.73, 87.58, 88.23, 85.62, 88.87, 81.20),
	(6, '9618', '0109035020', 'Ardan Aras', 'ASMARIAH', 'Palembang, 12 Mei 2010', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.87, 89.87, 87.92, 83.57, 85.08, 87.75, 87.98, 88.23, 88.45, 88.22, 85.55),
	(7, '9798', '0104654377', 'Az Zahra Indriani', 'Dian Pertiwi', 'Palembang, 27 November 2010', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.18, 88.52, 86.28, 81.12, 84.42, 83.38, 86.77, 87.33, 86.07, 86.07, 84.03),
	(8, '9620', '0117436421', 'Az Zalia Sahla Assyifa', 'Sukesih', 'Palembang, 14 Desember 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.87, 86.58, 87.58, 81.77, 83.80, 84.62, 85.53, 87.10, 84.85, 87.98, 84.38),
	(9, '9726', '3115514459', 'Azizah Nuraini', 'TRISNAWATI', 'Palembang, 17 Oktober 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.47, 87.22, 90.98, 82.25, 84.57, 85.38, 84.98, 88.35, 87.48, 89.05, 86.93),
	(10, '9758', '3127939302', 'Badai Asmara', 'PUSPA SARI', 'Bangka Selatan, 09 Oktober 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.87, 88.07, 84.52, 78.72, 81.38, 81.40, 84.10, 86.40, 82.22, 83.28, 84.35),
	(11, '9801', '0118456664', 'Dita Jenifer', 'RANTI SASMITA', 'Palembang, 23 September 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.58, 87.63, 85.47, 81.32, 83.02, 80.68, 84.87, 88.05, 88.70, 85.65, 84.63),
	(12, '9585', '0116201876', 'Elsa Ramadani', 'BETI SUMARNI', 'Palembang, 31 Juli 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.52, 89.60, 90.05, 88.23, 86.85, 89.23, 89.88, 88.12, 89.12, 87.30, 86.55),
	(13, '9586', '3115105343', 'Faizi Virjinia', 'BETI HERLINA', 'Palembang, 02 Oktober 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.47, 88.32, 85.12, 83.52, 83.63, 84.27, 85.47, 86.17, 84.73, 86.17, 85.08),
	(14, '9875', '0119680493', 'Gali Prayogo', 'Elly', 'Palembang, 07 September 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.58, 87.82, 87.00, 82.47, 84.28, 85.13, 86.12, 88.27, 83.97, 84.17, 85.43),
	(15, '9664', '0114408372', 'Jepri Sanjaya Putra', 'Liawati', 'Palembang, 19 Agustus 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.07, 87.00, 86.77, 80.07, 84.42, 83.85, 86.62, 88.35, 85.83, 88.17, 84.73),
	(16, '9628', '0113690057', 'Khayla Puspita', 'desiana', 'Palembang, 03 Desember 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.23, 91.23, 88.12, 84.07, 87.78, 87.08, 87.75, 88.93, 86.38, 90.05, 88.25),
	(17, '9881', '0123268015', 'Liza Permata Sari', 'Kurniawati', 'Palembang, 01 Februari 2012', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.40, 91.70, 91.20, 87.07, 86.30, 88.87, 85.80, 88.70, 89.22, 88.75, 88.95),
	(18, '9629', '0116956388', 'M Fahmi Alfariz', 'Rika Yuliani', 'Palembang, 03 Desember 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.95, 86.82, 88.00, 82.58, 82.43, 86.93, 85.10, 86.63, 86.82, 86.90, 85.80),
	(19, '9698', '3114725839', 'M. Alif Akbar', 'SUMIRAH', 'Palembang, 21 November 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.22, 92.75, 91.50, 85.93, 91.27, 92.70, 90.23, 90.23, 90.48, 88.47, 89.48),
	(20, '9766', '0087373183', 'M. Aprizal', 'WINDA AGUSTINA', 'Palembang, 22 April 2008', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.35, 89.70, 89.22, 81.30, 82.98, 87.40, 88.53, 87.77, 87.52, 87.35, 85.25),
	(21, '9843', '3112860768', 'M. Ilham Ismail', 'RITA ANGGERAINI', 'Palembang, 21 Januari 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.35, 85.82, 83.88, 79.60, 82.20, 84.98, 84.52, 85.93, 83.93, 82.83, 86.53),
	(22, '9884', '0119462797', 'M. Ishak Nosyansyah', 'Linda Maryani. K', 'Palembang, 11 November 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.85, 86.38, 84.23, 78.83, 82.67, 84.32, 83.62, 88.02, 82.57, 81.98, 85.65),
	(23, '9812', '0119348923', 'Muhammad Alfian', 'Mala', 'Palembang, 06 Agustus 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.27, 86.22, 83.88, 79.53, 82.78, 82.10, 84.98, 85.80, 83.97, 83.35, 85.30),
	(24, '9745', '0116434929', 'Muhammad Ekki Putra Sardi', 'CEKYA', 'Palembang, 30 November 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.40, 85.22, 85.18, 81.07, 82.43, 82.05, 84.92, 86.28, 84.27, 82.70, 84.43),
	(25, '9889', '0118493278', 'Muhammad Rizki Fernando', 'LAUWATI', 'Palembang, 28 Oktober 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.42, 89.70, 85.25, 80.00, 83.48, 86.70, 86.38, 87.80, 83.45, 81.63, 84.55),
	(26, '9707', '0104820374', 'Nabila Keysa Utami', 'Ellis Kumala Santi', 'Palembang, 25 Juni 2010', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.83, 84.70, 84.87, 81.93, 84.38, 87.85, 85.10, 87.58, 85.18, 86.57, 84.38),
	(27, '9746', '0106139993', 'Nadiya Putri', 'ROHILA', 'Palembang, 09 Juli 2010', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.80, 92.28, 92.27, 85.28, 87.90, 87.70, 90.00, 90.22, 85.72, 90.52, 87.33),
	(28, '9638', '0108485307', 'Nazrotul Aulia', 'Maryati', 'Palembang, 06 Maret 2010', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.40, 88.83, 87.12, 82.35, 82.78, 84.67, 88.58, 87.45, 84.43, 88.25, 83.43),
	(29, '9821', '0112899075', 'Rafasyah Ah', 'Endang Puspita Sari', 'Palembang, 12 Maret 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.83, 89.53, 88.35, 81.82, 85.30, 86.32, 89.35, 87.82, 88.53, 87.13, 83.85),
	(30, '9713', '0118137806', 'Raisyah', 'Yeni Saparlina', 'Palembang, 25 Oktober 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.00, 92.28, 91.45, 88.70, 87.55, 90.60, 89.23, 90.05, 92.35, 89.82, 85.78),
	(31, '9643', '0117819046', 'Refa Kinasih', 'RENA DEWI', 'Palembang, 25 November 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.23, 87.88, 87.00, 83.52, 85.10, 85.97, 86.82, 87.40, 85.38, 88.07, 87.90),
	(32, '9715', '3117155738', 'Refani Akbar', 'SUMARNI', 'Palembang, 12 Agustus 2011', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.40, 92.40, 92.03, 86.08, 86.30, 86.50, 93.15, 88.82, 87.17, 87.67, 89.30),
	(33, '9790', '3115488786', 'Wisnu Pratama Risanto', 'DARMA YANTI', 'Palembang, 31 Mei 2012', '9.1', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.98, 88.95, 90.98, 83.87, 85.03, 88.35, 86.88, 87.88, 88.12, 86.03, 80.15),
	(34, '9753', '3126920752', 'Siti Meisya', 'YULIANA', 'Palembang , 05 Mei 2012', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.05, 88.80, 90.28, 90.17, 87.18, 86.77, 86.73, 86.80, 88.23, 89.75, 87.28),
	(35, '9754', '0112502234', 'Syifah Tri Alnazua', 'Neneng Sumiati', 'Palembang, 13 September 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.63, 86.33, 84.65, 84.87, 82.08, 82.63, 85.40, 86.75, 86.83, 84.35, 83.63),
	(36, '9649', '0111116955', 'Adir Saputra', 'DAHLIA', 'Palembang, 09 November 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.85, 85.92, 84.82, 83.33, 83.47, 83.05, 83.68, 86.75, 84.28, 82.17, 82.80),
	(37, '9579', '0119044812', 'Al-Fariz Adha', 'Yuli Manda Lestari', 'Palembang, 06 November 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.90, 85.10, 85.47, 84.97, 84.37, 86.10, 84.40, 85.57, 85.10, 82.80, 83.68),
	(38, '9796', '3114568448', 'Alfatih Kayla Sakhi', 'GUSTI ISLIANA', 'Palembang, 02 September 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.57, 91.70, 88.82, 90.50, 87.57, 89.75, 87.35, 88.57, 87.68, 89.53, 90.18),
	(39, '9621', '0113328159', 'Azzahra Ramadhani', 'Ferawati', 'Palembang, 28 Agustus 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.93, 91.05, 87.70, 88.50, 86.63, 85.98, 87.42, 87.23, 87.18, 88.93, 84.90),
	(40, '9658', '0101008716', 'Bayu Saputra', 'PADILAH', 'Musi Banyuasin, 11 Desember 2010', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.33, 83.93, 84.17, 83.92, 82.08, 84.35, 85.33, 86.47, 82.20, 83.93, 82.10),
	(41, '9871', '3123096611', 'Bella Shafira', 'PIZA', 'Palembang, 12 Januari 2012', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.17, 93.92, 90.97, 90.95, 90.83, 89.78, 89.18, 89.02, 89.05, 88.52, 84.65),
	(42, '9729', '0115604290', 'Delsy Febriani', 'Juliani', 'Palembang, 05 Februari 2012', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.13, 89.87, 88.80, 85.68, 86.93, 86.27, 86.73, 87.15, 86.62, 89.75, 84.10),
	(43, '9730', '0115618960', 'Desy Aprilia Zahra', 'YULIANA', 'Palembang, 26 April 2012', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.82, 88.05, 85.82, 84.98, 84.63, 86.05, 85.10, 86.03, 85.22, 89.33, 85.80),
	(44, '9624', '0116807255', 'Diana Marisa', 'ERNIYATI', 'Palembang, 26 Maret 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.52, 87.65, 88.58, 85.08, 87.12, 87.52, 88.63, 86.93, 85.70, 87.93, 85.25),
	(45, '9660', '0117997880', 'Dicky Farel', 'YENI MARLINA', 'Palembang, 11 Oktober 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.93, 87.58, 85.30, 84.13, 85.57, 86.30, 85.17, 87.17, 85.80, 86.22, 85.70),
	(46, '9731', '0117923574', 'Fania Tri Ananda', 'DIAN EKA SAPUTRI', 'Palembang, 10 Agustus 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.98, 86.15, 86.00, 85.68, 82.20, 86.07, 85.35, 86.63, 86.75, 86.62, 88.43),
	(47, '9803', '3120750367', 'Kemas Muhammad Akbar', 'ISTIQOMA FERAWATI', 'Palembang, 07 Maret 2012', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.77, 84.08, 83.72, 82.15, 82.43, 84.13, 85.45, 86.93, 85.27, 82.43, 84.38),
	(48, '9810', '0113206989', 'M Ilham Mubarok', 'meta nirwana sari', 'Palembang, 12 Februari 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.58, 84.45, 84.18, 82.50, 84.28, 83.72, 85.03, 86.87, 85.33, 82.07, 86.23),
	(49, '9841', '0111923038', 'M Ridho', 'RITAWATI', 'Palembang, 27 April 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.97, 86.32, 85.72, 82.72, 83.02, 86.77, 84.68, 86.52, 85.00, 84.92, 86.35),
	(50, '9767', '0115857970', 'M. Ari Hanafiah', 'RIKA DIANA', 'Palembang, 01 September 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.17, 85.43, 84.63, 82.03, 81.15, 84.32, 85.33, 85.57, 83.58, 82.53, 83.85),
	(51, '9882', '0118564760', 'M. Fathir Rahman', 'Anita', 'Palembang, 01 Juli 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.87, 82.98, 83.07, 81.43, 81.72, 83.58, 84.22, 85.98, 83.45, 81.30, 86.65),
	(52, '9630', '3106816815', 'M. Miftahul Al Hafiz', 'Nurasiah Fitrianti', 'Palembang, 16 September 2010', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.87, 90.53, 89.22, 89.68, 85.88, 88.65, 87.77, 88.17, 89.95, 88.07, 86.85),
	(53, '9811', '0117195606', 'Manisah', 'NOVITA SARI', 'Palembang, 13 Januari 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.77, 88.05, 84.53, 83.90, 85.20, 85.75, 87.52, 87.10, 87.33, 87.17, 85.43),
	(54, '9632', '3101015842', 'Mittahur Rahma', 'Putri Yani', 'Pasar Surulangun, 25 Agustus 2010', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.98, 88.02, 87.35, 84.62, 85.33, 87.12, 85.77, 87.40, 87.87, 86.12, 87.38),
	(55, '9703', '3119574295', 'Muhammad Afif Al Farizi', 'ELIKA PUTRI SARI', 'Palembang, 12 Mei 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.95, 87.83, 89.27, 84.38, 86.27, 87.60, 88.53, 86.70, 88.67, 86.50, 87.55),
	(56, '9886', '0116470836', 'Muhammad Faiz', 'Icha Permatasari', 'Palembang, 24 Oktober 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.17, 84.98, 86.52, 84.38, 87.53, 88.47, 85.98, 88.50, 87.73, 85.28, 86.05),
	(57, '9636', '0117886296', 'Muhammad Syaldri Ramadhan', 'SRI HARYATI', 'Palembang, 19 Agustus 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.05, 88.02, 87.10, 85.20, 82.87, 85.47, 87.93, 86.82, 87.65, 86.65, 86.20),
	(58, '9710', '0113371134', 'Nadya Mareta', 'HALIMAH', 'Campang Tiga, 26 Maret 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 92.92, 92.80, 92.50, 89.93, 93.62, 94.62, 90.82, 90.45, 90.93, 92.10, 92.45),
	(59, '9775', '0115924069', 'Nazwa Alalia Jasmin', 'MERI NURIL RISDA', 'Palembang, 05 Juli 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.75, 92.52, 91.50, 88.50, 90.57, 90.20, 89.93, 87.67, 88.18, 90.75, 88.43),
	(60, '9711', '0103286054', 'Novra Robiansyah Putra', 'MARISA', 'Palembang, 02 November 2010', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.43, 86.88, 86.10, 83.30, 83.45, 84.67, 84.38, 85.57, 85.00, 85.20, 85.95),
	(61, '9606', '0114190372', 'Putri Ayu', 'Ratnawati', 'Palembang, 13 Oktober 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.52, 86.07, 85.53, 84.48, 85.33, 85.08, 84.17, 86.52, 86.00, 86.00, 85.08),
	(62, '9822', '0116134998', 'Rafly Reza Islami', 'ROSMALA DEWI', 'Palembang, 17 November 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.52, 89.82, 90.10, 89.80, 90.57, 89.87, 89.77, 86.87, 88.40, 88.48, 84.55),
	(63, '9857', '0113550369', 'Ririn Riani', 'YENI SUSANTI', 'Palembang, 03 September 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.35, 89.45, 87.82, 87.55, 87.65, 88.10, 87.93, 87.40, 86.97, 88.87, 85.60),
	(64, '9641', '0103921056', 'Risky Perdana', 'RATI PRAMITASARI', 'Palembang, 26 November 2010', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.93, 83.47, 85.78, 81.32, 82.90, 85.30, 83.82, 85.45, 83.93, 84.63, 85.78),
	(65, '9861', '0112914434', 'Saira', 'YUSTINA', 'Kayu Labu, 25 Juni 2011', '9.2', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.78, 87.63, 87.33, 86.05, 84.42, 84.40, 85.80, 84.37, 86.33, 84.17, 86.70),
	(66, '9898', '0123810137', 'Viola Maretha Arzafa', 'PATIMAH MALASARI', 'Palembang, 30 Maret 2012', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.30, 88.55, 85.33, 86.02, 85.10, 86.77, 85.48, 86.55, 86.27, 85.37, 89.35),
	(67, '9718', '3111110258', 'Zacky Putra Apriansyah', 'Nyimas Ika Novianti', 'Palembang, 14 April 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.88, 88.80, 86.78, 86.13, 85.67, 86.87, 86.08, 85.97, 86.38, 85.00, 88.53),
	(68, '9651', '3129829381', 'Aditya Febrian', 'IRWANI YUNAZRI', 'Palembang, 25 Februari 2012', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.00, 85.38, 86.63, 85.27, 85.02, 86.18, 85.13, 85.92, 88.65, 85.13, 87.93),
	(69, '9830', '0112860865', 'Alek', 'RINI', 'Palembang, 07 Juli 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.38, 86.08, 85.90, 85.55, 85.13, 86.47, 85.43, 85.50, 85.57, 85.25, 88.28),
	(70, '9613', '3112871977', 'Ali Asgar Al Murtadha', 'SUSI SUSANTI', 'Palembang, 11 Juni 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.65, 88.30, 89.63, 90.20, 85.55, 88.62, 85.25, 85.73, 88.88, 85.23, 89.53),
	(71, '9688', '3113161028', 'Chika Frisilia', 'RINI SARTIKA', 'Palembang, 29 Januari 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.73, 85.57, 85.07, 85.10, 85.78, 86.10, 85.78, 85.62, 85.85, 85.12, 88.85),
	(72, '9583', '3110489082', 'Dewi Cahya Nur Rani', 'NURASNAINI', 'Palembang, 24 Maret 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.40, 87.45, 85.37, 85.82, 85.07, 85.52, 85.55, 85.38, 86.35, 85.30, 89.50),
	(73, '9760', '0114188836', 'Dinda Saputri', 'Darmayanti', 'Palembang, 15 Juni 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.52, 89.92, 90.08, 85.45, 85.73, 90.50, 86.78, 86.08, 88.82, 85.12, 89.98),
	(74, '9661', '3116907731', 'Elvira Widia', 'YAHTI', 'Palembang, 20 Juni 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.35, 88.68, 86.60, 86.03, 85.37, 87.52, 85.32, 85.62, 88.12, 85.35, 90.63),
	(75, '9734', '0111965040', 'Hanny Wandira', 'CITRA AYU WANDIRA', 'Palembang, 29 Juni 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.58, 88.68, 88.38, 85.57, 88.00, 87.52, 85.62, 85.85, 88.23, 85.23, 90.10),
	(76, '9839', '0102531595', 'Helmi Yahya', 'MEGAINI', 'Palembang, 05 Maret 2010', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.48, 85.83, 85.38, 85.15, 84.52, 85.82, 85.43, 85.85, 88.23, 85.12, 88.70),
	(77, '9802', '3114870180', 'Herlan', 'NURUL HUDA', 'Palembang, 08 September 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.82, 90.57, 89.10, 85.57, 85.80, 87.73, 87.32, 87.08, 90.33, 85.58, 90.63),
	(78, '9880', '3118700611', 'Keysia Ramadhani', 'MISLITAWATI', 'Palembang, 10 Juli 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.13, 86.72, 85.00, 85.80, 83.02, 85.47, 85.55, 86.38, 86.30, 85.47, 85.43),
	(79, '9737', '3101758848', 'M. Abay Firliansyah', 'EMILIA', 'Palembang, 02 Oktober 2010', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.72, 87.95, 85.18, 86.15, 85.00, 87.75, 85.08, 86.32, 87.88, 85.23, 88.40),
	(80, '9667', '0123264166', 'M. Bastian Syaputra', 'Asmania', 'Palembang, 12 Februari 2012', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.27, 85.92, 85.25, 85.20, 85.23, 86.05, 85.20, 85.50, 85.10, 84.53, 86.03),
	(81, '9593', '0109617406', 'M. Diki Putra Afrilio', 'Lia Anggraini', 'Palembang, 24 April 2010', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.88, 88.85, 85.93, 85.22, 85.57, 87.80, 85.62, 87.20, 88.42, 84.53, 88.43),
	(82, '9595', '0114154991', 'M. Fakhir Ramadhan', 'RA KARTIKA SARI', 'Palembang, 16 Agustus 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.25, 85.68, 85.00, 86.27, 83.22, 85.12, 84.80, 85.50, 86.83, 82.67, 85.25),
	(83, '9600', '0116503046', 'Meizy', 'EKA DIANA', 'Palembang, 19 Mei 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.52, 88.38, 89.50, 91.78, 85.92, 89.63, 88.82, 87.73, 91.75, 85.37, 89.83),
	(84, '9742', '3121195510', 'Mosya Afika Putri', 'DIANA FITRI', 'Palembang, 20 Maret 2012', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.18, 86.63, 86.68, 86.15, 85.55, 86.65, 85.32, 85.20, 87.37, 85.00, 88.78),
	(85, '9887', '0112331297', 'Muhammad Faris Raharjo', 'NURLELA', 'Palembang, 25 September 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.98, 92.15, 90.78, 88.50, 90.57, 90.80, 90.10, 88.38, 89.75, 86.05, 89.65),
	(86, '9890', '0114105270', 'Muhammad Tri Ilham', 'Yusrina', 'Palembang, 11 Mei 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.48, 86.45, 85.33, 85.33, 85.20, 87.47, 85.38, 85.77, 88.47, 85.00, 88.70),
	(87, '9709', '0118065300', 'Nabila Rahman', 'Nurhayati', 'Palembang, 28 Maret 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.07, 89.55, 85.12, 85.57, 85.43, 87.12, 85.43, 89.83, 87.65, 85.00, 88.25),
	(88, '9662', '0113127402', 'Pebri', 'KOMARIYAH', 'Talang Lubuk, 11 Januari 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.72, 91.15, 89.85, 87.20, 86.34, 89.45, 86.90, 86.32, 89.82, 85.00, 91.33),
	(89, '9639', '0114501932', 'Putri Aini', 'SAIBA', 'Palembang, 15 Desember 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.87, 89.03, 88.38, 84.98, 85.57, 88.47, 86.72, 86.90, 88.70, 85.70, 90.15),
	(90, '9678', '0117972485', 'Rahmad Firil', 'Sergia Fitri Yana', 'Palembang, 14 Mei 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.17, 88.82, 89.30, 88.15, 85.83, 88.82, 85.50, 85.62, 87.07, 85.12, 89.93),
	(91, '9891', '0105993727', 'Rahmat Ridho Wiradinata', 'Maryana', 'Palembang, 28 November 2010', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.35, 88.15, 86.33, 85.57, 85.13, 86.95, 85.43, 86.67, 84.22, 84.77, 88.23),
	(92, '9640', '0118339866', 'Raisya Kirana', 'LINA SURYANI', 'Palembang, 15 September 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.40, 86.17, 85.25, 85.57, 86.37, 86.37, 85.50, 85.48, 85.47, 85.82, 89.93),
	(93, '9855', '0116491513', 'Raynata Naila Zen', 'DEVI INDRIYANI', 'Palembang, 16 Oktober 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.68, 91.87, 89.68, 90.03, 86.25, 90.63, 87.32, 86.55, 86.43, 85.47, 91.25),
	(94, '9782', '0113253865', 'Revan Abi Manyu', 'Karmila', 'Palembang, 12 Mei 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.42, 88.00, 86.03, 85.10, 84.38, 87.35, 85.43, 85.85, 85.55, 84.42, 87.75),
	(95, '9751', '0107878841', 'Romi Liyansaya', 'YULIYANA', 'Palembang, 06 Juni 2010', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.12, 87.98, 85.43, 85.92, 86.62, 85.72, 85.97, 85.62, 87.18, 85.00, 89.23),
	(96, '9682', '0114080119', 'Shilfa Nurhazima', 'WIWIK ROSITA', 'Nanjungan, 21 April 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.07, 88.15, 87.05, 86.73, 85.68, 87.40, 87.30, 86.43, 88.35, 86.40, 90.98),
	(97, '9897', '0117221270', 'Syaqira Aulia Ramadhani', 'Wahyuni Astita', 'Palembang, 22 Agustus 2011', '9.3', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.10, 92.07, 89.23, 88.83, 86.97, 89.88, 87.13, 89.42, 89.47, 85.78, 92.33),
	(98, '9789', '0104446474', 'Windi Apriyanti', 'NUR ASIAH', 'Palembang, 24 April 2010', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.23, 87.32, 84.97, 85.38, 83.03, 87.68, 82.93, 85.55, 85.25, 83.40, 87.20),
	(99, '9717', '0118841283', 'Yesika Ananda', 'WELI ANA', 'Palembang, 27 Februari 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.15, 86.03, 85.08, 86.87, 83.27, 85.32, 83.02, 85.97, 84.75, 85.58, 85.33),
	(100, '9863', '0117863581', 'Zahra Ramadani', 'YUSNAWATI', 'Banyuasin, 09 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.58, 88.15, 84.62, 82.80, 85.67, 86.17, 84.42, 85.50, 84.55, 82.45, 85.33),
	(101, '9795', '0111463829', 'Aldino Pratama Saputra', 'Erna Wati', 'Palembang, 27 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.23, 87.73, 88.47, 86.32, 86.62, 86.95, 85.45, 85.08, 85.43, 82.22, 85.57),
	(102, '9865', '0117484565', 'Alif Rizky Pratama', 'WINDA LEONITA', 'Palembang, 28 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.82, 85.98, 84.80, 86.98, 84.42, 87.17, 84.73, 85.72, 85.03, 82.07, 85.10),
	(103, '9831', '3123968742', 'Almira Cilia Asyifa', 'MURSALINA', 'Palembang, 16 Februari 2012', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.82, 89.20, 86.10, 86.75, 86.82, 89.80, 86.73, 87.88, 86.87, 82.58, 86.38),
	(104, '9867', '3115795131', 'Arya Putra Pratama', 'SUSI SUNDARI', 'Palembang, 11 Juli 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.50, 87.20, 84.45, 85.92, 83.37, 85.38, 83.85, 85.78, 82.65, 82.20, 84.20),
	(105, '9657', '0114784646', 'Aurelya Zahra', 'Susilawati', 'Palembang, 03 Desember 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.58, 89.57, 88.22, 87.32, 84.15, 87.70, 87.43, 85.38, 85.93, 84.12, 88.12),
	(106, '9625', '0111247645', 'Fariz Akbar Wijaya', 'RUSMIATI', 'Palembang, 05 November 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.27, 84.33, 84.27, 83.13, 84.02, 83.22, 82.63, 84.13, 83.98, 82.58, 85.80),
	(107, '9732', '0118482678', 'Firtalya Ramadina', 'Sinta Bela', 'Palembang, 18 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.45, 85.43, 86.37, 82.10, 84.27, 85.15, 83.38, 86.02, 84.18, 83.27, 86.17),
	(108, '9627', '0113045479', 'Ica Maharani', 'SUSILAWATI', 'Palembang, 08 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.22, 85.78, 86.02, 84.05, 84.90, 85.93, 84.90, 85.80, 87.80, 84.65, 87.88),
	(109, '9663', '0111491437', 'Indira Putri', 'LISMA', 'Palembang, 18 Januari 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.50, 85.17, 83.80, 84.75, 83.87, 85.03, 83.73, 85.50, 83.37, 85.30, 86.27),
	(110, '9878', '0113583060', 'Kanzha Assyafah', 'Msy. Tuti Widya Ningsih', 'Palembang, 17 November 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.20, 92.15, 90.92, 87.32, 88.60, 89.72, 86.97, 89.83, 88.63, 85.70, 90.58),
	(111, '9763', '0117139347', 'Keyla Aasilah', 'Khusnul Imama', 'Palembang, 15 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.57, 87.03, 85.48, 84.08, 84.45, 86.22, 84.73, 85.08, 84.18, 81.17, 85.45),
	(112, '9808', '0116258692', 'M. Akbar Maulana', 'VUSPA LEKASARI', 'Palembang, 15 Maret 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.03, 85.05, 82.28, 81.78, 83.55, 83.40, 84.38, 84.97, 82.33, 78.95, 82.45),
	(113, '9592', '3118363369', 'M. Dika', 'FITRIANI', 'Palembang, 25 November 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.88, 88.93, 90.88, 91.78, 88.78, 90.52, 86.63, 84.68, 89.42, 81.75, 88.72),
	(114, '9594', '0117192138', 'M. Dirgo Ferris Risqullah', 'Eva Hasna', 'Palembang, 23 April 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.63, 85.05, 83.22, 84.25, 83.32, 85.45, 80.47, 85.48, 85.93, 81.73, 86.38),
	(115, '9668', '0113542407', 'M. Febriansyah', 'masria', 'Palembang, 06 Februari 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.68, 87.15, 85.15, 84.83, 83.45, 85.22, 81.23, 84.68, 83.53, 82.08, 85.25),
	(116, '9596', '0113951910', 'M. Patur Rahman', 'AHLIA', 'Kayu Agung, 18 Desember 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.70, 86.57, 84.03, 84.18, 83.55, 86.50, 84.38, 83.97, 83.15, 82.70, 85.80),
	(117, '9738', '0116107558', 'M. Raihan', 'HAYANI', 'Palembang, 18 Maret 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.22, 86.10, 82.40, 83.72, 81.68, 83.00, 84.15, 84.62, 83.92, 81.73, 82.68),
	(118, '9741', '0111936413', 'Melda', 'Hartini', 'Palembang, 06 Januari 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.48, 86.43, 85.55, 83.83, 83.03, 85.47, 85.03, 86.87, 83.72, 83.50, 86.50),
	(119, '9888', '3118860136', 'Muhammad Iqbal', 'HAIRUNNISYAH', 'Palembang, 10 September 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.87, 86.10, 83.22, 81.52, 83.60, 85.15, 83.32, 87.68, 83.95, 81.65, 84.43),
	(120, '9773', '0102599477', 'Muhammad Nopriansyah', 'Nining Setiawati', 'Palembang, 05 November 2010', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.20, 86.22, 85.22, 83.00, 83.60, 84.82, 83.92, 84.90, 83.80, 82.20, 86.03),
	(121, '9816', '3126087784', 'Neura Rubi Azzahra', 'NURDIANA', 'Palembang, 27 Januari 2012', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.05, 86.55, 84.98, 85.80, 82.38, 86.82, 84.45, 86.32, 86.02, 83.50, 85.10),
	(122, '9712', '0114600235', 'Raihan Anugrah Putra', 'BULAN', 'Pangkal Pinang, 19 Juli 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.30, 91.10, 91.45, 88.02, 84.38, 90.27, 87.40, 88.33, 87.53, 84.92, 89.17),
	(123, '9679', '0113919991', 'Raisa Cesarinna', 'Masayu Yuliana Sari', 'Palembang, 09 Desember 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.17, 88.15, 86.83, 89.10, 88.37, 87.03, 87.05, 86.90, 88.47, 84.03, 88.12),
	(124, '9779', '3118468618', 'Rangga Nasrullah', 'EKA WATI', 'Palembang, 19 Juli 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.65, 87.62, 86.67, 83.88, 86.55, 86.35, 84.97, 84.08, 82.90, 81.75, 86.85),
	(125, '9854', '0114247323', 'Rastika Ayu', 'HAYUNA', 'Palembang, 22 Juni 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.45, 87.67, 85.08, 82.80, 84.03, 87.33, 84.15, 85.08, 86.30, 83.03, 88.58),
	(126, '9644', '0127451101', 'Reyhan Febriansyah', 'MIRANTI', 'Palembang, 23 Februari 2012', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.23, 83.42, 84.27, 82.97, 190.25, 82.68, 82.58, 84.08, 84.88, 81.65, 87.20),
	(127, '9892', '0111829119', 'Ririn Ardini', 'MARLINA OKTASARI', 'Palembang, 01 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.57, 89.52, 88.57, 87.55, 81.80, 89.27, 82.55, 86.70, 89.75, 82.78, 88.25),
	(128, '9752', '0117398043', 'Sandy Oktopiansyah', 'Samsiah', 'Palembang, 31 Oktober 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.23, 84.57, 84.27, 85.53, 87.03, 83.12, 81.50, 83.78, 82.43, 80.45, 82.22),
	(129, '9646', '0119618422', 'Tri Rizki Pratama', 'Liawati', 'Palembang, 19 Agustus 2011', '9.4', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.88, 84.18, 83.92, 83.30, 82.43, 85.28, 82.20, 83.78, 82.32, 81.75, 83.50),
	(130, '9610', '0099736090', 'Yolanda Amalia Putri Irawan', 'ELIYANA', 'Palembang, 01 Juni 2009', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.88, 84.18, 83.92, 83.30, 82.32, 85.28, 82.20, 83.78, 82.32, 81.75, 83.50),
	(131, '9755', '0119248127', 'Yuda Pratama', 'Vitriyanti', 'Palembang, 21 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.73, 84.87, 86.90, 82.63, 83.58, 83.78, 84.15, 84.85, 85.93, 81.87, 85.78),
	(132, '9719', '0113055934', 'Zahratusyifa', 'EKA YANTI', 'Palembang, 18 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.25, 89.43, 89.22, 84.97, 86.63, 88.80, 85.62, 85.20, 89.08, 85.58, 87.73),
	(133, '9722', '0116141119', 'Aldo Pratama', 'EKA SARI', 'Palembang, 22 September 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.65, 88.12, 88.00, 86.17, 88.12, 87.15, 85.80, 85.50, 84.07, 82.92, 88.08),
	(134, '9614', '0118809808', 'Amellia', 'DIANA', 'Palembang, 14 Maret 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.68, 85.63, 86.10, 82.98, 85.22, 85.98, 83.97, 85.78, 81.75, 82.82, 89.23),
	(135, '9686', '0111465738', 'Az Zahra Melati Putri', 'DEWI SARTIKA', 'Palembang, 13 November 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.53, 91.87, 92.15, 86.20, 91.17, 90.97, 88.03, 87.62, 90.35, 84.68, 92.80),
	(136, '9799', '0112300152', 'Baim Al Habib', 'DEVI YANTI', 'Palembang, 29 Maret 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.37, 87.63, 84.77, 84.62, 84.40, 84.12, 84.62, 86.67, 83.02, 80.23, 87.73),
	(137, '9872', '0104222569', 'Cinta Bella', 'NENGSIH', 'Palembang, 06 Juli 2010', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.43, 89.20, 84.03, 82.63, 87.20, 85.90, 84.38, 87.02, 83.62, 83.87, 87.00),
	(138, '9584', '0116837025', 'Diva Hamka Parlindungan', 'LILIS SURYANI', 'Palembang, 20 Juli 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.63, 85.83, 87.67, 82.82, 84.05, 84.23, 84.57, 85.03, 85.53, 81.53, 87.55),
	(139, '9692', '3113651163', 'Fatur Aljuliansyah', 'ermawati', 'Pontianak, 15 Juli 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.03, 84.88, 86.35, 80.08, 82.42, 82.13, 84.03, 84.92, 82.32, 80.12, 86.48),
	(140, '9733', '0113644495', 'Hafiza Dwi Malida', 'Farida Santi', 'Palembang, 11 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.17, 90.20, 90.10, 83.40, 87.30, 87.52, 85.08, 85.95, 89.42, 85.70, 91.75),
	(141, '9589', '0115765080', 'Irhamna Chameila', 'EFNI NOVITAYANTI', 'Palembang, 01 Mei 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.13, 87.22, 86.75, 83.17, 85.58, 86.05, 84.90, 85.73, 85.62, 83.93, 92.63),
	(142, '9879', '0112133399', 'Keysa Dwirianti', 'Siti Komaria', 'Palembang, 15 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.65, 89.27, 89.00, 84.45, 85.98, 87.58, 84.02, 86.48, 83.48, 82.93, 92.20),
	(143, '9899', '0101477394', 'Khansa Kayyasah', 'FITRI ZALEHA', 'Jakarta, 15 September 2010', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.30, 87.08, 87.48, 83.92, 85.10, 86.72, 85.67, 86.18, 86.30, 86.53, 90.45),
	(144, '9764', '3112074141', 'Khirani Anandysa', 'ELISA SEPTARINA', 'Palembang, 30 September 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.63, 91.57, 91.57, 88.55, 90.22, 93.10, 88.37, 88.68, 89.90, 86.05, 92.03),
	(145, '9697', '0102389431', 'M. Alfarizi Romadon', 'MERI', 'Palembang, 18 Agustus 2010', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.83, 83.30, 84.75, 80.97, 82.30, 84.02, 82.62, 83.13, 80.70, 81.12, 86.13),
	(146, '9597', '0105884591', 'M. Fiki', 'FITRIYANTI', 'Palembang, 20 Desember 2010', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.95, 83.77, 83.72, 83.30, 83.00, 85.65, 82.73, 83.85, 82.55, 80.25, 87.90),
	(147, '9599', '3117196126', 'M. Ramiza Al Khadafi Amir', 'IRMA SURYANI', 'Palembang, 07 Maret 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.88, 84.42, 83.88, 85.45, 82.42, 84.37, 83.03, 84.27, 82.67, 80.25, 85.43),
	(148, '9845', '0118672176', 'M. Syafei', 'ELIZAH', 'Palembang, 10 September 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.98, 87.85, 87.20, 84.33, 86.58, 88.57, 85.03, 84.67, 85.32, 83.47, 86.30),
	(149, '9672', '0114202306', 'Marwa Aulia Sifa', 'ROAIDA', 'Palembang, 20 November 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.03, 87.50, 85.92, 81.93, 86.58, 86.40, 84.80, 86.13, 88.25, 85.05, 91.93),
	(150, '9772', '3128224623', 'Minka Lestari', 'AINI', 'Palembang, 11 Januari 2012', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.03, 87.57, 88.52, 83.17, 85.33, 87.87, 83.90, 85.92, 84.42, 82.77, 89.13),
	(151, '9604', '0111550017', 'Muhamad Rafli', 'RITA', 'Palembang, 27 November 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.65, 87.17, 86.65, 82.70, 85.10, 87.57, 84.68, 85.15, 83.95, 80.93, 87.90),
	(152, '9848', '0111358805', 'Muhammad Khairul Anas', 'RISMALA DEWI', 'Palembang, 20 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.65, 88.02, 88.63, 84.38, 84.17, 88.17, 84.92, 84.03, 83.72, 81.18, 87.90),
	(153, '9817', '0118919361', 'Nikeisha Alfirrah', 'YESSI RIANASARI', 'Palembang, 29 Januari 2012', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.22, 86.92, 84.87, 81.23, 86.03, 87.17, 83.55, 86.32, 85.13, 82.35, 88.60),
	(154, '9608', '0115998681', 'Rama Muhammad Barra', 'Herawati', 'Palembang, 19 Juni 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.80, 81.10, 83.10, 83.22, 83.23, 83.72, 82.73, 83.85, 81.85, 80.50, 85.63),
	(155, '9781', '0119348343', 'Rehan Seven Rahmadan', 'HARTATI', 'Palembang, 07 Agustus 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.10, 85.05, 83.17, 80.28, 82.30, 83.08, 83.27, 82.45, 82.08, 80.03, 83.85),
	(156, '9748', '0114368291', 'Reza Falevvi', 'RINI SUSANTI', 'Palembang, 01 September 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.58, 86.10, 85.95, 82.12, 84.63, 84.58, 84.73, 85.67, 83.02, 83.83, 84.73),
	(157, '9785', '3119140837', 'Rizki Syaputra', 'Rani Gustini', 'Palembang, 08 Desember 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.90, 87.60, 87.75, 82.40, 84.07, 87.40, 84.32, 84.27, 82.78, 82.77, 88.23),
	(158, '9750', '0117968037', 'Rizky Pratama', 'Anik paryanti', 'Palembang, 31 Oktober 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.98, 88.70, 90.87, 83.65, 87.53, 90.80, 86.78, 86.08, 84.18, 84.22, 90.80),
	(159, '9860', '0112933002', 'Safa Amira', 'Siti Samsiah', 'Palembang, 23 September 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.05, 86.97, 84.23, 79.83, 84.63, 86.58, 83.03, 85.20, 81.98, 81.78, 88.08),
	(160, '9894', '0116126825', 'Shilfi Ramadini', 'Saadah', 'Palembang, 31 Juli 2011', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.25, 86.62, 86.50, 82.75, 85.80, 87.68, 83.97, 86.85, 85.55, 83.40, 89.48),
	(161, '9825', '3129622335', 'Sri Wahyuni', 'MAIZUN', 'Palembang, 20 Desember 2012', '9.5', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.35, 86.38, 86.17, 83.22, 86.92, 86.82, 84.50, 85.32, 84.07, 82.70, 87.73),
	(162, '9893', '0111434724', 'Sesaria Khotimah', 'ASIAH', 'Palembang, 06 Juni 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.62, 89.80, 89.40, 84.23, 86.15, 87.80, 85.43, 87.07, 89.18, 82.45, 87.55),
	(163, '9716', '0115902131', 'Siti Syafira', 'SITI JUHAIRIAH', 'Palembang, 15 Mei 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.42, 87.57, 87.03, 82.95, 85.10, 88.57, 85.25, 84.55, 85.32, 83.27, 91.23),
	(164, '9787', '0108760089', 'Vika Susanti', 'EKA SUSANTI', 'Palembang, 25 November 2010', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.87, 87.68, 85.80, 83.28, 84.40, 86.15, 84.03, 86.25, 84.85, 83.40, 87.73),
	(165, '9788', '3105366505', 'Wahyu', 'ZAHARA', 'Palembang, 22 Januari 2010', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.77, 88.33, 88.90, 82.13, 85.20, 85.52, 84.75, 85.80, 88.02, 81.88, 88.25),
	(166, '9828', '0116988831', 'Ahmad Al Habsi', 'ROSTINA', 'Palembang, 12 Oktober 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.30, 86.45, 85.00, 81.47, 85.12, 86.58, 83.68, 86.18, 84.30, 81.05, 88.08),
	(167, '9652', '3118136782', 'Ahmad Nizam', 'LENA MAHDALENA', 'Palembang, 03 Agustus 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.28, 88.43, 88.58, 83.22, 85.62, 88.22, 84.45, 85.50, 84.45, 82.57, 88.08),
	(168, '9723', '0112086015', 'Almira Azzahra', 'MELLY PUSPITA SARI', 'Palembang, 14 September 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.23, 91.50, 90.75, 86.45, 86.63, 88.33, 86.37, 86.72, 89.18, 83.85, 92.38),
	(169, '9615', '0119124665', 'Amira', 'JALIYA', 'Palembang, 26 Januari 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.07, 87.98, 87.70, 85.15, 85.92, 87.98, 84.67, 85.13, 86.52, 83.87, 91.93),
	(170, '9724', '0114874002', 'Anjani Dwi Putri', 'SUMARTI', 'Palembang, 05 Februari 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.07, 87.98, 86.10, 82.82, 85.00, 85.87, 84.73, 84.25, 84.88, 83.63, 89.23),
	(171, '9581', '0117982764', 'Arga Septa Bimantara', 'ANITA APRILA', 'Palembang, 14 Desember 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.35, 85.87, 87.17, 82.93, 85.57, 86.47, 84.95, 83.90, 83.22, 81.05, 86.48),
	(172, '9869', '3119239410', 'Auliyaa Basyasyah', 'LINDA SARI', 'Palembang, 02 April 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.35, 90.08, 86.00, 84.10, 85.45, 87.45, 85.27, 86.43, 88.97, 82.33, 91.93),
	(173, '9689', '0113830925', 'Daffa Rakilla', 'Listikawani', 'Palembang, 19 Juni 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.88, 83.52, 82.40, 80.95, 83.92, 84.62, 82.50, 84.25, 81.17, 79.78, 84.55),
	(174, '9659', '0101411359', 'Delsa Junifer', 'Juliani', 'Palembang, 22 Juni 2010', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.33, 82.37, 84.10, 81.17, 85.82, 83.75, 83.92, 84.85, 86.13, 83.27, 89.13),
	(175, '9877', '0119767957', 'Juwita Febriana', 'ita', 'Palembang, 18 Februari 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.47, 90.48, 91.15, 84.68, 88.03, 88.47, 87.55, 88.02, 87.10, 83.13, 89.83),
	(176, '9804', '3114621197', 'Ketty Zalyantie', 'Meliyani', 'Indralaya, 30 Mei 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.12, 88.52, 87.70, 80.77, 85.23, 85.75, 83.62, 84.42, 86.13, 81.98, 92.45),
	(177, '9840', '0118901768', 'Kevin Saputra', 'AMIRA YANI', 'Palembang, 27 Maret 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.28, 85.93, 83.25, 80.88, 84.65, 84.58, 83.33, 83.37, 86.50, 81.07, 83.85),
	(178, '9805', '3120931468', 'Kheyla Putri Afifah', 'DESTY ANGGRAINI', 'Palembang, 18 Januari 2012', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.15, 86.15, 85.15, 84.42, 85.80, 87.58, 85.03, 85.97, 86.52, 83.00, 88.60),
	(179, '9736', '0111890252', 'Kms. M. Pernanda Dwi Kusuma', 'HENI HARTATI', 'Palembang, 10 Oktober 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.28, 87.10, 84.38, 81.63, 84.55, 86.07, 84.62, 84.30, 81.52, 81.28, 87.73),
	(180, '9699', '0119520380', 'M. Fahmi Khalis', 'dewi astuti', 'Palembang, 01 Juli 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.40, 84.47, 85.47, 82.17, 82.42, 82.65, 83.62, 84.67, 81.48, 80.18, 85.95),
	(181, '9883', '0111466676', 'M. Fikri', 'Herika', 'Palembang, 20 September 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.23, 86.38, 86.47, 83.40, 85.68, 87.28, 84.57, 88.57, 87.78, 81.40, 92.98),
	(182, '9739', '0111528798', 'M. Reymond Dinata', 'RITA', 'Palembang, 17 Maret 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.52, 87.62, 86.98, 85.80, 84.42, 85.02, 83.98, 85.78, 85.12, 81.75, 89.30),
	(183, '9740', '0114757922', 'M. Taufik Hidayat', 'Pauziah', 'Palembang, 12 Januari 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.70, 87.32, 84.88, 83.45, 85.72, 83.40, 84.97, 84.38, 80.70, 82.00, 87.38),
	(184, '9631', '0126159582', 'Maya Mahdiya', 'Susriyanti', 'Palembang, 16 Maret 2012', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.40, 84.73, 84.93, 81.58, 85.42, 84.92, 84.32, 84.37, 84.62, 82.93, 88.43),
	(185, '9771', '0114770441', 'Meisya Edyna Putrie', 'SUSANA', 'Palembang, 27 Mei 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.70, 89.85, 91.45, 86.75, 88.95, 90.93, 86.85, 85.37, 88.37, 82.57, 93.33),
	(186, '9602', '0092306076', 'Msy. Marissa Putri', 'Annisa Fauzan', 'Palembang, 31 Desember 2009', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.88, 88.92, 90.33, 87.27, 88.83, 90.93, 86.62, 83.60, 89.77, 83.95, 88.60),
	(187, '9704', '0112511273', 'Muhammad Alvin', 'NURLELAWATI', 'Palembang, 26 Februari 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.23, 82.65, 85.47, 82.83, 84.02, 83.02, 83.10, 83.55, 87.32, 80.02, 84.55),
	(188, '9814', '3124650757', 'Muhammad Rezeki Dermawan', 'RAHMAWATI', 'Palembang, 09 Januari 2012', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.82, 84.98, 83.00, 81.43, 83.47, 83.88, 84.15, 83.97, 79.77, 80.12, 85.95),
	(189, '9674', '0114049498', 'Nazwa Khairunisa', 'Nurhendri Yanti', 'Palembang, 08 November 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.23, 86.80, 85.62, 85.58, 86.38, 86.75, 86.50, 87.22, 86.75, 86.05, 88.95),
	(190, '9776', '0105830642', 'Nico Reivan Arinaldi', 'LENI MARLINA', 'Palembang, 23 Oktober 2010', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.58, 86.70, 85.87, 81.43, 84.05, 86.25, 84.43, 84.20, 82.30, 81.05, 85.78),
	(191, '9680', '0128091646', 'Reza Jaya Saputra', 'Daryani', 'Palembang, 08 Januari 2012', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.30, 86.28, 88.63, 84.70, 85.57, 87.80, 85.73, 86.32, 88.83, 83.37, 92.63),
	(192, '9681', '0115487767', 'Ridho', 'Siti Sumiati', 'Palembang, 28 April 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.30, 84.05, 84.35, 82.72, 84.40, 83.93, 81.80, 83.08, 80.93, 83.17, 85.43),
	(193, '9784', '0114659113', 'Risdatun Sowmi', 'Sumarni', 'Nagasari, 04 Agustus 2011', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.05, 86.85, 90.03, 86.10, 85.33, 87.87, 84.80, 86.08, 86.52, 84.65, 92.10),
	(194, '9642', '0103076401', 'Rizky Aditya Ramadhan', 'SUNDARI', 'Palembang, 18 Agustus 2010', '9.6', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.10, 82.83, 82.28, 80.00, 83.12, 82.62, 82.38, 83.08, 82.32, 80.72, 84.73),
	(195, '9824', '0102962655', 'Robet', 'NETI', 'Banyuasin, 22 Januari 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.03, 85.17, 82.82, 80.25, 83.93, 86.72, 83.80, 84.43, 84.50, 81.17, 86.13),
	(196, '9647', '0104739606', 'Wali', 'ENDANG SUSILAWATI', 'Palembang, 21 Juli 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.03, 82.40, 83.52, 81.03, 82.30, 81.73, 83.27, 85.48, 86.52, 80.82, 84.20),
	(197, '9609', '3114904551', 'Yasmin Tryana Ramadhani', 'AFRINA', 'Palembang, 01 Agustus 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.82, 89.08, 87.70, 85.27, 85.80, 88.70, 88.77, 90.38, 89.22, 85.77, 92.28),
	(198, '9611', '0115444486', 'Zahira Pratiwi', 'SUTIKA', 'Palembang, 28 September 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 92.97, 92.08, 90.92, 86.25, 91.38, 90.92, 88.67, 89.87, 90.92, 85.13, 92.10),
	(199, '9791', '0119969429', 'Zidan Agra Adiyanta', 'Annisah', 'Palembang, 12 Mei 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.75, 85.22, 85.63, 80.48, 83.00, 80.80, 82.97, 85.90, 83.02, 82.08, 85.95),
	(200, '9792', '0118702847', 'Adelia', 'Suryanti', 'Palembang, 22 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.17, 89.50, 87.98, 91.87, 87.42, 91.50, 86.78, 87.67, 89.53, 83.83, 92.98),
	(201, '9578', '0114966759', 'Adelia Rizti Ramadhani', 'Afriyanti', 'Palembang, 24 Agustus 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.37, 90.37, 91.80, 90.15, 91.38, 92.08, 88.60, 90.68, 90.80, 87.68, 93.50),
	(202, '9653', '0115769416', 'Ajeng Permata Oktavia', 'JUWITA SARI SH', 'Palembang, 30 Oktober 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.10, 89.57, 87.17, 88.05, 86.85, 87.30, 84.38, 89.75, 88.28, 82.92, 92.98),
	(203, '9655', '0102760965', 'Anjani', 'LENI', 'Palembang, 21 Desember 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.28, 91.13, 90.58, 89.12, 93.67, 91.85, 89.92, 89.98, 89.57, 86.67, 93.68),
	(204, '9757', '0113608921', 'Aqila Dwi Syafira Putri', 'MAIDIANA', 'Palembang, 22 Juli 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.45, 86.08, 87.12, 85.67, 84.17, 87.18, 83.92, 87.22, 87.45, 82.45, 91.05),
	(205, '9797', '0101293876', 'Ari Satria Ramandika', 'TIKA YUNITA', 'Palembang, 01 September 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.80, 82.83, 81.88, 80.22, 83.23, 80.45, 83.20, 84.02, 82.87, 81.07, 85.25),
	(206, '9870', '0115924458', 'Aura Alma Madinah', 'Syamsiah', 'Palembang, 20 Oktober 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.80, 87.25, 85.37, 82.82, 85.33, 88.12, 84.73, 85.43, 87.92, 83.03, 89.13),
	(207, '9691', '0117334218', 'Della Ramadhani', 'DEWI SUSANTI', 'Palembang, 06 Agustus 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.53, 84.98, 86.12, 81.77, 84.05, 84.50, 86.02, 85.68, 82.93, 82.45, 89.13),
	(208, '9623', '0114127896', 'Dennis Revanca', 'TERIYANA', 'Musi Rawas, 24 Februari 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.63, 85.47, 87.23, 82.93, 84.98, 88.82, 83.98, 87.68, 87.78, 82.90, 91.58),
	(209, '9693', '3110829167', 'Firli Nabil Pratama', 'PUTRI NURUL ISMIATI', 'Palembang, 03 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.22, 87.35, 88.23, 81.88, 85.57, 82.32, 84.32, 87.32, 88.48, 82.53, 88.78),
	(210, '9694', '0104649221', 'Gendis Kayla Putri', 'YULI RAHMAWATI', 'Palembang, 30 Desember 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.87, 87.72, 88.87, 83.63, 86.62, 85.35, 86.95, 87.42, 88.98, 83.63, 91.40),
	(211, '9761', '0119407797', 'Guntur Hidayat', 'SITI ROKAYAH', 'Palembang, 05 Januari 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.98, 87.62, 88.57, 81.88, 84.17, 87.65, 84.50, 91.62, 88.25, 82.23, 90.10),
	(212, '9735', '0101186943', 'Khoirunisa', 'SUSIANA', 'Palembang, 28 Agustus 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.38, 88.27, 87.35, 83.77, 84.75, 88.35, 85.90, 88.45, 89.57, 84.92, 92.63),
	(213, '9765', '0112366337', 'Kms. Fachry Athillah Pasha', 'RINOKE SEPTARINA DISKA', 'Palembang, 28 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.17, 86.57, 90.15, 83.98, 86.50, 87.10, 86.02, 89.40, 88.72, 81.28, 87.20),
	(214, '9591', '3112709002', 'M. Arroby', 'SARNATI', 'Palembang, 22 Oktober 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 92.43, 88.75, 87.35, 82.72, 86.87, 89.63, 86.43, 88.35, 89.88, 82.10, 92.63),
	(215, '9768', '3115406093', 'M. Faaqih Ibaadillah', 'NYIMAS NAPISAH', 'Palembang, 11 Mei 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.10, 87.57, 89.17, 83.40, 84.05, 89.28, 85.62, 88.00, 83.92, 84.15, 88.43),
	(216, '9702', '0111941390', 'M. Rivaldi Putra. P', 'ROS ENDANG. S', 'Palembang, 18 Juli 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.57, 84.20, 85.70, 82.23, 84.17, 82.20, 83.20, 84.37, 83.00, 81.88, 86.30),
	(217, '9601', '0111534254', 'Msy. Kayla Azka Nabilah', 'ENI LIDYA', 'Palembang, 27 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.70, 88.32, 90.17, 86.48, 87.08, 85.00, 85.62, 87.80, 85.55, 83.98, 89.83),
	(218, '9634', '0105414502', 'Muhamad Rafih Alwahid', 'RINA ANGGRAINI', 'Palembang, 27 November 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.00, 81.93, 84.23, 80.83, 82.30, 80.68, 81.22, 83.67, 83.78, 80.82, 85.95),
	(219, '9603', '0111562859', 'Muhammad Alifianda Munzir', 'DIANA NATALINDA', 'Palembang, 16 Desember 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.28, 86.97, 86.88, 84.80, 84.98, 88.70, 85.90, 87.57, 89.53, 84.65, 92.98),
	(220, '9673', '3116834760', 'Muhammad Azka Alfatih', 'PUJI ANITA', 'Palembang, 01 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.75, 91.18, 90.87, 87.53, 90.45, 90.33, 91.30, 90.10, 92.40, 86.75, 94.03),
	(221, '9850', '0118703793', 'Nabila Nur Rizki', 'SRY WAHYUNI', 'Palembang, 17 Desember 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.05, 89.43, 89.33, 84.68, 86.38, 85.82, 85.67, 89.50, 88.17, 82.57, 92.98),
	(222, '9851', '0113783152', 'Natasya Zahra', 'Evi Yanti', 'Palembang, 04 Juni 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.22, 89.67, 87.58, 85.32, 86.62, 89.63, 84.80, 87.87, 88.53, 84.33, 93.15),
	(223, '9675', '0112408876', 'Nazwa Putri Dzakhira', 'FITRI NILAMSARI', 'Palembang, 09 Oktober 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.28, 89.43, 88.23, 83.05, 85.92, 83.25, 86.62, 88.58, 86.04, 86.48, 92.98),
	(224, '9818', '0113521804', 'Nugi Saputra', 'Fitri Yanti', 'Palembang, 09 Juli 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.28, 85.10, 84.88, 81.53, 85.57, 87.30, 84.67, 84.90, 83.57, 81.98, 88.60),
	(225, '9747', '0112656435', 'Nuraini', 'JUMIATI', 'Palembang, 01 April 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.27, 86.13, 85.52, 82.17, 83.93, 84.85, 84.73, 88.00, 86.75, 80.70, 89.13),
	(226, '9780', '0109628545', 'Raphael Wang', 'salma yanti', 'Palembang, 24 November 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.35, 85.40, 83.92, 81.40, 82.53, 80.57, 84.20, 86.85, 86.37, 80.33, 86.50),
	(227, '9783', '0119425565', 'Reza Nugraha Saputra', 'Leni Sartika', 'Campang Tiga, 10 September 2011', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 82.45, 83.98, 83.58, 80.00, 81.37, 80.00, 82.68, 83.62, 82.78, 80.43, 84.20),
	(228, '9859', '0108926064', 'Rizky Al Fandrie', 'DESSY DAHLIA', 'Sekayu, 04 Oktober 2010', '9.7', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.10, 85.75, 85.70, 81.65, 84.17, 85.47, 84.43, 86.85, 88.73, 82.32, 87.90),
	(229, '9823', '0107662147', 'Riska Oktavia', 'Dewi Siska', 'Palembang, 04 Oktober 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.47, 87.92, 85.28, 84.02, 85.10, 85.47, 85.20, 85.73, 85.22, 86.27, 85.88),
	(230, '9826', '0116449896', 'Widya Indah Prahesti', 'sulastri', 'Palembang, 27 April 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.75, 87.85, 86.33, 84.37, 86.15, 86.95, 85.27, 85.78, 85.62, 85.68, 86.20),
	(231, '9683', '0112767053', 'Zalikha Ghassani', 'Yeni Astuti', 'Palembang, 29 November 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.35, 85.28, 85.18, 82.45, 85.67, 85.90, 85.22, 85.20, 84.27, 85.45, 86.40),
	(232, '9577', '0121940040', 'Adelia Nurul Aini', 'CHOIRUNISA', 'Palembang, 01 Januari 2012', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.82, 86.93, 86.17, 84.53, 85.78, 87.42, 85.03, 85.85, 86.05, 85.08, 86.53),
	(233, '9650', '0115596530', 'Adira Nova Azzahra', 'Marwiyah', 'Palembang, 08 November 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.30, 89.62, 90.05, 84.65, 86.98, 87.42, 86.02, 86.60, 83.85, 85.42, 87.58),
	(234, '9720', '3112318492', 'Agung', 'NENI SUSANTI S', 'Palembang, 02 Mei 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.53, 86.17, 85.47, 83.03, 84.42, 86.95, 85.58, 84.40, 84.98, 85.05, 85.70),
	(235, '9864', '3115486826', 'Ahmad Azril Al-Baqqi', 'JELLYANI', 'Palembang, 23 April 2012', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.22, 82.68, 83.10, 81.07, 84.15, 82.32, 83.55, 85.22, 81.62, 81.73, 82.53),
	(236, '9580', '3113368295', 'Alvi Nurrahman', 'EMILIA', 'Palembang, 05 Maret 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.53, 86.47, 87.72, 86.02, 85.68, 88.23, 84.80, 85.73, 87.82, 85.35, 86.13),
	(237, '9868', '3120348775', 'Asyifa Putri Aulia', 'FADILA SRI WAHYUNI', 'Palembang, 09 Januari 2012', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.42, 89.92, 86.30, 83.90, 86.15, 86.83, 83.97, 85.83, 85.28, 85.67, 86.40),
	(238, '9725', '0114329924', 'Aura Kasih', 'NELA WANI', 'Pedamaran, 03 November 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.98, 88.80, 85.12, 84.98, 86.93, 87.42, 86.08, 85.38, 86.98, 86.23, 87.75),
	(239, '9833', '0102871992', 'Bilqi Yolandes', 'Eliya Wati', 'Palembang, 18 Juli 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 83.03, 82.58, 81.93, 80.37, 83.22, 81.75, 82.67, 82.67, 81.38, 81.52, 85.15),
	(240, '9687', '0116438337', 'Chelsi Aulia', 'YULIYANTI', 'Jambi, 02 November 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.70, 86.27, 86.50, 85.05, 85.78, 83.78, 84.62, 85.08, 86.40, 85.07, 85.80),
	(241, '9800', '0115917098', 'Dafa Adelio Putra', 'NIA FERNIKA', 'Pangkal Pinang, 11 Desember 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.05, 86.45, 85.52, 84.02, 84.05, 84.22, 84.73, 85.27, 82.67, 84.62, 86.30),
	(242, '9836', '0117743985', 'Dimas Putra Pratama', 'Diana Sari', 'Palembang, 21 Juli 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.05, 86.75, 84.07, 83.33, 85.10, 86.48, 85.22, 85.85, 87.70, 85.03, 85.10),
	(243, '9762', '3113327285', 'Hepa', 'PARIDA', 'Segayam, 22 Agustus 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.47, 85.82, 88.00, 83.57, 84.78, 85.08, 85.10, 85.10, 85.08, 85.57, 86.50),
	(244, '9665', '0113405076', 'Khoirunissa Rahmadani', 'SITI ASNA', 'Palembang, 05 Agustus 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.53, 86.33, 85.40, 84.18, 84.05, 84.75, 85.20, 85.08, 85.33, 85.42, 86.88),
	(245, '9806', '0107168533', 'Lioni Mesi', 'Yusnepa', 'Palembang, 20 Juni 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.27, 87.80, 86.45, 84.53, 85.47, 89.05, 84.32, 85.37, 85.70, 85.37, 85.68),
	(246, '9666', '3113653896', 'M Ardy Fatih', 'NURJANNAH', 'Palembang, 12 April 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.40, 85.57, 85.48, 82.80, 84.88, 85.00, 85.23, 85.03, 85.58, 84.40, 85.23),
	(247, '9842', '0111333704', 'M. Andi Kurniawan', 'YUNI ARTI', 'Palembang, 19 Juni 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.82, 85.55, 86.65, 82.90, 85.65, 83.93, 85.13, 85.27, 85.08, 85.18, 86.58),
	(248, '9700', '0122999184', 'M. Fikri Pratama', 'Oktavianti', 'Palembang, 09 Januari 2012', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.05, 87.48, 89.12, 85.22, 84.85, 82.80, 85.15, 85.17, 85.70, 85.22, 86.38),
	(249, '9669', '0112337546', 'M. Gifari Ramadhan', 'Fitria', 'Palembang, 26 Juli 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.00, 90.45, 88.65, 85.65, 86.40, 88.00, 86.15, 86.50, 85.82, 87.20, 88.58),
	(250, '9844', '0114732011', 'M. Rezky Putra Pratama', 'YULIANA', 'Palembang, 05 Mei 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.35, 85.93, 85.12, 82.15, 85.15, 84.38, 85.10, 85.08, 85.00, 85.00, 85.20),
	(251, '9671', '3112221198', 'Marcel Aprian', 'NELLY FITRIANI', 'Palembang, 15 April 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.97, 83.15, 84.90, 82.25, 82.18, 81.05, 82.47, 83.68, 82.47, 82.00, 83.08),
	(252, '9633', '3116818033', 'Moza Mey Qeilla Ninggsih', 'MERRY YANTI', 'Palembang, 24 Mei 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.65, 89.15, 89.28, 85.12, 86.62, 86.13, 85.35, 87.05, 85.08, 86.58, 88.23),
	(253, '9744', '0112228702', 'Muhammad Aldi', 'WARDIA', 'Palembang, 07 Februari 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 84.77, 83.45, 82.52, 83.02, 82.42, 81.65, 84.63, 85.05, 84.65, 85.10, 85.35),
	(254, '9847', '0118652897', 'Muhammad Daffa', 'Veranika', 'Palembang, 11 Juli 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.23, 85.18, 85.07, 82.38, 83.90, 84.50, 85.03, 85.38, 83.93, 85.23, 85.40),
	(255, '9849', '0119328067', 'Muhammad Rizki', 'IDAYANI', 'Palembang, 22 September 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.82, 85.68, 84.93, 84.32, 83.70, 84.77, 85.03, 85.10, 84.03, 85.12, 87.28),
	(256, '9852', '3122894407', 'Nuraini', 'ETI MUNAWAROH', 'Palembang, 30 Januari 2012', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.35, 88.35, 87.12, 84.18, 85.68, 87.88, 85.85, 85.20, 85.50, 86.97, 86.58),
	(257, '9819', '0102614638', 'Okta Miransah', 'HABSOH', 'Palembang, 04 Oktober 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.77, 86.20, 85.10, 83.98, 85.33, 87.42, 85.73, 85.42, 87.23, 85.23, 85.23),
	(258, '9820', '0118578805', 'Putri Maharani', 'FATIMAH', 'Palembang, 02 Desember 2011', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.70, 89.57, 88.88, 85.58, 88.02, 89.75, 86.85, 87.20, 85.73, 86.37, 89.48),
	(259, '9749', '3103921291', 'Ridho Lillah Al-Falah', 'ROSADA DESI', 'Palembang, 22 Juni 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.87, 86.38, 85.75, 83.13, 85.18, 83.57, 85.03, 86.27, 85.23, 85.02, 85.75),
	(260, '9856', '0106788181', 'Ridho Rafli Ryanto', 'DARIA ISNANI', 'Palembang, 24 Desember 2010', '9.8', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.12, 86.05, 86.82, 82.77, 85.45, 88.93, 85.10, 85.27, 85.08, 85.28, 85.25),
	(261, '9590', '0096433063', 'Lega Lakimta', 'Marlina', 'Palembang, 03 Maret 2009', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 91.93, 89.75, 90.42, 88.78, 91.70, 90.68, 91.00, 88.92, 90.80, 85.73, 92.13),
	(262, '9858', '0117593255', 'Risky Lukman', 'Mayuning', 'Palembang, 06 November 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.03, 86.70, 85.58, 85.90, 86.15, 86.18, 86.52, 85.93, 86.15, 82.47, 83.93),
	(263, '9862', '0119855441', 'Salsabrina Maya Apriyani', 'Bunaya', 'Palembang, 24 April 2012', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-06-01 04:22:47', 88.23, 87.92, 86.47, 86.47, 86.88, 86.78, 86.93, 84.97, 87.57, 82.45, 84.03),
	(264, '9645', '3106492240', 'Tegar Anugerah Putra', 'NURBAITI', 'Palembang, 07 Desember 2010', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.68, 86.63, 86.65, 86.07, 86.13, 84.45, 86.53, 84.85, 86.50, 82.58, 85.35),
	(265, '9684', '0119065157', 'Abel Sawila', 'SAHADA', 'Palembang, 23 Februari 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.13, 84.77, 85.68, 85.45, 85.22, 83.05, 86.83, 83.48, 86.18, 82.33, 85.53),
	(266, '9793', '0116246622', 'Adiba Fadya Shaki', 'Bunga Krisna', 'Palembang, 26 Juli 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.33, 88.03, 87.72, 88.53, 88.47, 88.07, 88.30, 87.98, 87.65, 83.37, 84.65),
	(267, '9794', '0115013893', 'Agus', 'ANA DIANA', 'Palembang, 07 April 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.03, 86.63, 85.48, 85.45, 85.45, 84.03, 86.65, 83.48, 87.13, 81.75, 87.73),
	(268, '9756', '0117993488', 'Ahmad Egas Dinata', 'EKA RINA', 'Palembang, 05 Oktober 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-06-01 04:24:29', 86.23, 87.10, 86.42, 86.42, 85.08, 85.60, 83.95, 84.55, 85.97, 82.00, 85.53),
	(269, '9685', '0129661960', 'Aini Meilia', 'NENI JUHATI', 'Palembang, 13 Mei 2012', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.08, 84.30, 85.37, 85.32, 85.10, 82.82, 86.88, 83.97, 86.77, 80.68, 86.05),
	(270, '9617', '3110792248', 'Andika Putra Pratama', 'RUMLAH', 'Juk Dadak Oki, 29 Oktober 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.60, 86.28, 86.48, 85.20, 85.67, 84.80, 86.72, 84.98, 86.93, 82.33, 83.58),
	(271, '9619', '0115482757', 'Aulia Azzahra', 'linda wati', 'Palembang, 01 Desember 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.40, 88.80, 88.07, 86.27, 87.42, 88.35, 87.95, 88.07, 86.15, 85.93, 86.93),
	(272, '9759', '0115974959', 'Charissa Arryani', 'Suryana', 'Palembang, 21 Desember 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 88.92, 89.62, 90.30, 87.65, 89.48, 90.22, 88.20, 87.32, 87.57, 83.87, 89.80),
	(273, '9582', '0112262419', 'Cinta Dewa Lestari', 'IIN SUTRA', 'Palembang, 24 Maret 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 90.28, 89.67, 92.05, 89.17, 29.40, 91.97, 91.82, 87.40, 88.30, 85.12, 87.75),
	(274, '9690', '0082194863', 'Dedek Ariansyah', 'Yusmaini', 'Pedamaran, 20 Juni 2010', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 85.50, 83.83, 84.48, 84.23, 85.17, 83.68, 86.08, 83.08, 84.40, 81.17, 82.28),
	(275, '9874', '0112860978', 'Erwin Septian', 'IIN NOVALIA', 'Palembang, 30 September 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.12, 86.52, 85.88, 85.48, 86.82, 85.43, 86.82, 87.08, 86.65, 82.33, 84.38),
	(276, '9626', '0115836883', 'Firmansyah Putra', 'Nurlaila', 'Palembang, 06 April 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.05, 85.07, 86.55, 86.08, 85.33, 83.35, 85.85, 85.80, 85.78, 81.38, 85.25),
	(277, '9838', '3120740687', 'Fitriyanti', 'BADARIYAH', 'Palembang, 19 Januari 2012', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.28, 86.15, 83.63, 85.28, 85.35, 85.03, 86.43, 83.95, 85.68, 82.70, 85.53),
	(278, '9876', '3114481075', 'Gayneel Firdatullah', 'POPONG SARIFAH AENI', 'Palembang, 07 Desember 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.85, 87.92, 85.77, 85.80, 86.15, 86.88, 86.12, 85.00, 86.83, 83.25, 85.70),
	(279, '9588', '0114431145', 'Hani Deskatrie', 'MARDIAH', 'Palembang, 28 Desember 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.57, 87.10, 87.25, 87.32, 87.30, 86.48, 87.80, 85.02, 88.07, 83.13, 86.93),
	(280, '9696', '0119330464', 'M Eggy Kurniawan', 'choiriah', 'Palembang, 15 Mei 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.18, 86.75, 84.53, 85.22, 85.65, 85.33, 86.07, 84.85, 86.95, 85.22, 86.05),
	(281, '9598', '3119742392', 'M Hafiz Azzaky', 'FITRI RAMADANI', 'Palembang, 21 Mei 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.47, 86.05, 87.72, 85.78, 85.08, 83.87, 86.08, 85.08, 85.25, 81.28, 84.38),
	(282, '9809', '0119515962', 'M. Andika Pratama', 'YUNI ARTI', 'Palembang, 19 Juni 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.92, 88.03, 86.73, 87.03, 86.83, 85.50, 87.32, 85.45, 88.65, 84.42, 86.93),
	(283, '9701', '0114530815', 'M. Riduwan', 'SALMA', 'Palembang, 28 Agustus 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.08, 87.10, 89.93, 87.07, 87.07, 86.03, 87.37, 85.08, 85.95, 84.00, 85.70),
	(284, '9770', '0121449899', 'Marcheila Putri Dwianti', 'Nurhayati', 'Palembang, 20 Maret 2012', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.67, 87.92, 88.00, 86.03, 85.90, 86.15, 86.48, 86.27, 87.37, 81.53, 87.00),
	(285, '9846', '3114403119', 'Muhamad Abid Fadillah', 'ELLIA', 'Palembang, 05 Juli 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.90, 88.28, 87.40, 86.07, 86.28, 88.60, 86.23, 86.03, 88.67, 84.00, 87.13),
	(286, '9705', '3118317265', 'Muhammad Dirga Reinaldi', 'DHILA FADHILA', 'Palembang, 17 Februari 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.48, 86.23, 88.38, 86.20, 85.42, 86.20, 86.75, 85.68, 86.95, 81.63, 87.88),
	(287, '9605', '0118695238', 'Muthia Salsabila', 'PIPIN ROSANTI', 'Palembang, 29 September 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.72, 89.63, 88.47, 87.90, 87.07, 89.63, 88.12, 87.77, 88.63, 86.17, 87.45),
	(288, '9815', '0111079949', 'Nabila Anggraini', 'JULIANGGARANI', 'Palembang, 20 Oktober 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.13, 86.33, 84.53, 85.83, 85.57, 85.55, 85.82, 84.55, 86.52, 82.45, 83.85),
	(289, '9676', '0108341906', 'Nopva Vadiya Sari', 'ERNI', 'Palembang, 27 November 2010', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 86.00, 85.12, 85.60, 85.13, 85.32, 83.58, 86.42, 84.72, 85.95, 84.23, 85.23),
	(290, '9677', '0101262878', 'Putri Aurel Abriantara', 'PUSPA MAYA SARI', 'Sukabumi, 05 Oktober 2010', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 87.28, 87.77, 87.77, 86.65, 86.83, 85.68, 87.77, 87.45, 87.60, 85.58, 88.08),
	(291, '9743', '0107867740', 'Quenara Bilqis', 'YULI MARGINA', 'Palembang, 08 Oktober 2010', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 92.63, 91.63, 92.22, 90.38, 90.47, 91.62, 91.05, 88.92, 91.80, 85.72, 90.62),
	(292, '9607', '0111475021', 'Raden Kurniawan', 'sumiati', 'Palembang, 08 Juli 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 92.40, 90.27, 87.53, 86.97, 62.43, 88.60, 88.82, 87.75, 86.23, 83.02, 87.73),
	(293, '9778', '0113402176', 'Rahma Amanda', 'Ema', 'Palembang, 10 Agustus 2011', '9.9', 1, 'Selamat Anda Lulus!', NULL, '2026-05-31 06:50:13', '2026-05-31 06:50:13', 89.95, 88.82, 88.12, 85.92, 88.82, 89.05, 86.37, 86.15, 85.33, 84.93, 87.70);

-- Dumping structure for table cek_lulus.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_password_view_unique` (`password_view`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `password_view`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin web', 'admin', 'admin@gmail.com', NULL, '$2y$10$Pa.u2qhmxPeotFJulDj4iOk0sJt5lzKb0jgIJb2mSXVgRxeX5EMJS', 'adminsmpn44plg', NULL, NULL, NULL);

-- Dumping structure for table cek_lulus.webs
CREATE TABLE IF NOT EXISTS `webs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cek_lulus.webs: ~1 rows (approximately)
INSERT INTO `webs` (`id`, `title`, `logo`, `web_name`, `slide_1`, `slide_2`, `slide_3`, `footer`, `about`, `created_at`, `updated_at`) VALUES
	(1, 'SMP Negeri 44 Palembang', 'Pengumuman SMPN 44 Palembang_logo smpn 44 plg.png', 'Pengumuman SMPN 44 Palembang', NULL, NULL, NULL, 'SMP NEGERI 44 PALEMBANG', 'Website Pengumuman Kelulusan Kelas 12 SMP Negeri 44 Palembang', '2026-05-15 07:48:56', '2026-05-25 17:57:35');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

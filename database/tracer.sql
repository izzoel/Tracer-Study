-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table tracer.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.admins: ~0 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table tracer.bank_alumnis
CREATE TABLE IF NOT EXISTS `bank_alumnis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank1` text COLLATE utf8mb4_unicode_ci,
  `bank2` text COLLATE utf8mb4_unicode_ci,
  `bank3` text COLLATE utf8mb4_unicode_ci,
  `bank4` text COLLATE utf8mb4_unicode_ci,
  `bank5` text COLLATE utf8mb4_unicode_ci,
  `bank6` text COLLATE utf8mb4_unicode_ci,
  `bank7` text COLLATE utf8mb4_unicode_ci,
  `bank8` text COLLATE utf8mb4_unicode_ci,
  `bank9` text COLLATE utf8mb4_unicode_ci,
  `bank10` text COLLATE utf8mb4_unicode_ci,
  `bank11` text COLLATE utf8mb4_unicode_ci,
  `bank12` text COLLATE utf8mb4_unicode_ci,
  `bank13` text COLLATE utf8mb4_unicode_ci,
  `bank14` text COLLATE utf8mb4_unicode_ci,
  `bank15` text COLLATE utf8mb4_unicode_ci,
  `bank16` text COLLATE utf8mb4_unicode_ci,
  `bank17` text COLLATE utf8mb4_unicode_ci,
  `bank18` text COLLATE utf8mb4_unicode_ci,
  `bank19` text COLLATE utf8mb4_unicode_ci,
  `bank20` text COLLATE utf8mb4_unicode_ci,
  `bank21` text COLLATE utf8mb4_unicode_ci,
  `bank22` text COLLATE utf8mb4_unicode_ci,
  `bank23` text COLLATE utf8mb4_unicode_ci,
  `bank24` text COLLATE utf8mb4_unicode_ci,
  `bank25` text COLLATE utf8mb4_unicode_ci,
  `bank26` text COLLATE utf8mb4_unicode_ci,
  `bank27` text COLLATE utf8mb4_unicode_ci,
  `bank28` text COLLATE utf8mb4_unicode_ci,
  `bank29` text COLLATE utf8mb4_unicode_ci,
  `bank30` text COLLATE utf8mb4_unicode_ci,
  `bank31` text COLLATE utf8mb4_unicode_ci,
  `bank32` text COLLATE utf8mb4_unicode_ci,
  `bank33` text COLLATE utf8mb4_unicode_ci,
  `bank34` text COLLATE utf8mb4_unicode_ci,
  `bank35` text COLLATE utf8mb4_unicode_ci,
  `bank36` text COLLATE utf8mb4_unicode_ci,
  `bank37` text COLLATE utf8mb4_unicode_ci,
  `bank38` text COLLATE utf8mb4_unicode_ci,
  `bank39` text COLLATE utf8mb4_unicode_ci,
  `bank40` text COLLATE utf8mb4_unicode_ci,
  `bank41` text COLLATE utf8mb4_unicode_ci,
  `bank42` text COLLATE utf8mb4_unicode_ci,
  `bank43` text COLLATE utf8mb4_unicode_ci,
  `bank44` text COLLATE utf8mb4_unicode_ci,
  `bank45` text COLLATE utf8mb4_unicode_ci,
  `bank46` text COLLATE utf8mb4_unicode_ci,
  `bank47` text COLLATE utf8mb4_unicode_ci,
  `bank48` text COLLATE utf8mb4_unicode_ci,
  `bank49` text COLLATE utf8mb4_unicode_ci,
  `bank50` text COLLATE utf8mb4_unicode_ci,
  `bank51` text COLLATE utf8mb4_unicode_ci,
  `bank52` text COLLATE utf8mb4_unicode_ci,
  `bank53` text COLLATE utf8mb4_unicode_ci,
  `bank54` text COLLATE utf8mb4_unicode_ci,
  `bank55` text COLLATE utf8mb4_unicode_ci,
  `bank56` text COLLATE utf8mb4_unicode_ci,
  `bank57` text COLLATE utf8mb4_unicode_ci,
  `bank58` text COLLATE utf8mb4_unicode_ci,
  `bank59` text COLLATE utf8mb4_unicode_ci,
  `bank60` text COLLATE utf8mb4_unicode_ci,
  `bank61` text COLLATE utf8mb4_unicode_ci,
  `bank62` text COLLATE utf8mb4_unicode_ci,
  `bank63` text COLLATE utf8mb4_unicode_ci,
  `bank64` text COLLATE utf8mb4_unicode_ci,
  `bank65` text COLLATE utf8mb4_unicode_ci,
  `bank66` text COLLATE utf8mb4_unicode_ci,
  `bank67` text COLLATE utf8mb4_unicode_ci,
  `bank68` text COLLATE utf8mb4_unicode_ci,
  `bank69` text COLLATE utf8mb4_unicode_ci,
  `bank70` text COLLATE utf8mb4_unicode_ci,
  `bank71` text COLLATE utf8mb4_unicode_ci,
  `bank72` text COLLATE utf8mb4_unicode_ci,
  `bank73` text COLLATE utf8mb4_unicode_ci,
  `bank74` text COLLATE utf8mb4_unicode_ci,
  `bank75` text COLLATE utf8mb4_unicode_ci,
  `bank76` text COLLATE utf8mb4_unicode_ci,
  `bank77` text COLLATE utf8mb4_unicode_ci,
  `bank78` text COLLATE utf8mb4_unicode_ci,
  `bank79` text COLLATE utf8mb4_unicode_ci,
  `bank80` text COLLATE utf8mb4_unicode_ci,
  `bank81` text COLLATE utf8mb4_unicode_ci,
  `bank82` text COLLATE utf8mb4_unicode_ci,
  `bank83` text COLLATE utf8mb4_unicode_ci,
  `bank84` text COLLATE utf8mb4_unicode_ci,
  `bank85` text COLLATE utf8mb4_unicode_ci,
  `bank86` text COLLATE utf8mb4_unicode_ci,
  `bank87` text COLLATE utf8mb4_unicode_ci,
  `bank88` text COLLATE utf8mb4_unicode_ci,
  `bank89` text COLLATE utf8mb4_unicode_ci,
  `bank90` text COLLATE utf8mb4_unicode_ci,
  `bank91` text COLLATE utf8mb4_unicode_ci,
  `bank92` text COLLATE utf8mb4_unicode_ci,
  `bank93` text COLLATE utf8mb4_unicode_ci,
  `bank94` text COLLATE utf8mb4_unicode_ci,
  `bank95` text COLLATE utf8mb4_unicode_ci,
  `bank96` text COLLATE utf8mb4_unicode_ci,
  `bank97` text COLLATE utf8mb4_unicode_ci,
  `bank98` text COLLATE utf8mb4_unicode_ci,
  `bank99` text COLLATE utf8mb4_unicode_ci,
  `bank100` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.bank_alumnis: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_alumnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_alumnis` ENABLE KEYS */;

-- Dumping structure for table tracer.bank_lulusans
CREATE TABLE IF NOT EXISTS `bank_lulusans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank1` text COLLATE utf8mb4_unicode_ci,
  `bank2` text COLLATE utf8mb4_unicode_ci,
  `bank3` text COLLATE utf8mb4_unicode_ci,
  `bank4` text COLLATE utf8mb4_unicode_ci,
  `bank5` text COLLATE utf8mb4_unicode_ci,
  `bank6` text COLLATE utf8mb4_unicode_ci,
  `bank7` text COLLATE utf8mb4_unicode_ci,
  `bank8` text COLLATE utf8mb4_unicode_ci,
  `bank9` text COLLATE utf8mb4_unicode_ci,
  `bank10` text COLLATE utf8mb4_unicode_ci,
  `bank11` text COLLATE utf8mb4_unicode_ci,
  `bank12` text COLLATE utf8mb4_unicode_ci,
  `bank13` text COLLATE utf8mb4_unicode_ci,
  `bank14` text COLLATE utf8mb4_unicode_ci,
  `bank15` text COLLATE utf8mb4_unicode_ci,
  `bank16` text COLLATE utf8mb4_unicode_ci,
  `bank17` text COLLATE utf8mb4_unicode_ci,
  `bank18` text COLLATE utf8mb4_unicode_ci,
  `bank19` text COLLATE utf8mb4_unicode_ci,
  `bank20` text COLLATE utf8mb4_unicode_ci,
  `bank21` text COLLATE utf8mb4_unicode_ci,
  `bank22` text COLLATE utf8mb4_unicode_ci,
  `bank23` text COLLATE utf8mb4_unicode_ci,
  `bank24` text COLLATE utf8mb4_unicode_ci,
  `bank25` text COLLATE utf8mb4_unicode_ci,
  `bank26` text COLLATE utf8mb4_unicode_ci,
  `bank27` text COLLATE utf8mb4_unicode_ci,
  `bank28` text COLLATE utf8mb4_unicode_ci,
  `bank29` text COLLATE utf8mb4_unicode_ci,
  `bank30` text COLLATE utf8mb4_unicode_ci,
  `bank31` text COLLATE utf8mb4_unicode_ci,
  `bank32` text COLLATE utf8mb4_unicode_ci,
  `bank33` text COLLATE utf8mb4_unicode_ci,
  `bank34` text COLLATE utf8mb4_unicode_ci,
  `bank35` text COLLATE utf8mb4_unicode_ci,
  `bank36` text COLLATE utf8mb4_unicode_ci,
  `bank37` text COLLATE utf8mb4_unicode_ci,
  `bank38` text COLLATE utf8mb4_unicode_ci,
  `bank39` text COLLATE utf8mb4_unicode_ci,
  `bank40` text COLLATE utf8mb4_unicode_ci,
  `bank41` text COLLATE utf8mb4_unicode_ci,
  `bank42` text COLLATE utf8mb4_unicode_ci,
  `bank43` text COLLATE utf8mb4_unicode_ci,
  `bank44` text COLLATE utf8mb4_unicode_ci,
  `bank45` text COLLATE utf8mb4_unicode_ci,
  `bank46` text COLLATE utf8mb4_unicode_ci,
  `bank47` text COLLATE utf8mb4_unicode_ci,
  `bank48` text COLLATE utf8mb4_unicode_ci,
  `bank49` text COLLATE utf8mb4_unicode_ci,
  `bank50` text COLLATE utf8mb4_unicode_ci,
  `bank51` text COLLATE utf8mb4_unicode_ci,
  `bank52` text COLLATE utf8mb4_unicode_ci,
  `bank53` text COLLATE utf8mb4_unicode_ci,
  `bank54` text COLLATE utf8mb4_unicode_ci,
  `bank55` text COLLATE utf8mb4_unicode_ci,
  `bank56` text COLLATE utf8mb4_unicode_ci,
  `bank57` text COLLATE utf8mb4_unicode_ci,
  `bank58` text COLLATE utf8mb4_unicode_ci,
  `bank59` text COLLATE utf8mb4_unicode_ci,
  `bank60` text COLLATE utf8mb4_unicode_ci,
  `bank61` text COLLATE utf8mb4_unicode_ci,
  `bank62` text COLLATE utf8mb4_unicode_ci,
  `bank63` text COLLATE utf8mb4_unicode_ci,
  `bank64` text COLLATE utf8mb4_unicode_ci,
  `bank65` text COLLATE utf8mb4_unicode_ci,
  `bank66` text COLLATE utf8mb4_unicode_ci,
  `bank67` text COLLATE utf8mb4_unicode_ci,
  `bank68` text COLLATE utf8mb4_unicode_ci,
  `bank69` text COLLATE utf8mb4_unicode_ci,
  `bank70` text COLLATE utf8mb4_unicode_ci,
  `bank71` text COLLATE utf8mb4_unicode_ci,
  `bank72` text COLLATE utf8mb4_unicode_ci,
  `bank73` text COLLATE utf8mb4_unicode_ci,
  `bank74` text COLLATE utf8mb4_unicode_ci,
  `bank75` text COLLATE utf8mb4_unicode_ci,
  `bank76` text COLLATE utf8mb4_unicode_ci,
  `bank77` text COLLATE utf8mb4_unicode_ci,
  `bank78` text COLLATE utf8mb4_unicode_ci,
  `bank79` text COLLATE utf8mb4_unicode_ci,
  `bank80` text COLLATE utf8mb4_unicode_ci,
  `bank81` text COLLATE utf8mb4_unicode_ci,
  `bank82` text COLLATE utf8mb4_unicode_ci,
  `bank83` text COLLATE utf8mb4_unicode_ci,
  `bank84` text COLLATE utf8mb4_unicode_ci,
  `bank85` text COLLATE utf8mb4_unicode_ci,
  `bank86` text COLLATE utf8mb4_unicode_ci,
  `bank87` text COLLATE utf8mb4_unicode_ci,
  `bank88` text COLLATE utf8mb4_unicode_ci,
  `bank89` text COLLATE utf8mb4_unicode_ci,
  `bank90` text COLLATE utf8mb4_unicode_ci,
  `bank91` text COLLATE utf8mb4_unicode_ci,
  `bank92` text COLLATE utf8mb4_unicode_ci,
  `bank93` text COLLATE utf8mb4_unicode_ci,
  `bank94` text COLLATE utf8mb4_unicode_ci,
  `bank95` text COLLATE utf8mb4_unicode_ci,
  `bank96` text COLLATE utf8mb4_unicode_ci,
  `bank97` text COLLATE utf8mb4_unicode_ci,
  `bank98` text COLLATE utf8mb4_unicode_ci,
  `bank99` text COLLATE utf8mb4_unicode_ci,
  `bank100` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.bank_lulusans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_lulusans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_lulusans` ENABLE KEYS */;

-- Dumping structure for table tracer.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table tracer.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(31, '2014_10_12_000000_create_users_table', 1),
	(32, '2014_10_12_100000_create_password_resets_table', 1),
	(33, '2019_08_19_000000_create_failed_jobs_table', 1),
	(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(35, '2023_02_01_125844_create_survey_alumnis_table', 1),
	(36, '2023_02_08_023802_create_admins_table', 1),
	(37, '2023_02_15_151316_create_survey_lulusans_table', 1),
	(38, '2023_02_15_161059_create_user_alumnis_table', 1),
	(39, '2023_02_17_125220_create_bank_alumnis_table', 1),
	(40, '2023_02_19_102632_create_bank_lulusans_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table tracer.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table tracer.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_alumnis
CREATE TABLE IF NOT EXISTS `survey_alumnis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumnis: ~47 rows (approximately)
/*!40000 ALTER TABLE `survey_alumnis` DISABLE KEYS */;
INSERT IGNORE INTO `survey_alumnis` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-02-22 15:40:38', '2023-02-22 16:00:25'),
	(2, '2', 'Nama', '', '0', '0', '1', '2023-02-22 16:05:41', '2023-02-22 16:05:41'),
	(3, '3', 'NIM', '', '0', '0', '1', '2023-02-22 16:05:53', '2023-02-22 16:05:53'),
	(4, '4', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-02-22 16:06:19', '2023-02-22 16:07:24'),
	(5, '5', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-02-22 16:07:13', '2023-02-22 16:07:13'),
	(6, '6', 'No HP', '', '0', '0', '1', '2023-02-22 16:08:16', '2023-02-22 16:08:16'),
	(7, '7', 'Email', '', '0', '0', '1', '2023-02-22 16:08:25', '2023-02-22 16:08:33'),
	(8, '8', 'Alamat', '', '0', '0', '1', '2023-02-22 16:08:41', '2023-02-22 16:08:41'),
	(9, '9', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-02-22 16:09:31', '2023-02-22 16:09:31'),
	(10, '10', 'Tahun Masuk Kuliah di D3 Farmasi Borneo Lestari', 'Ganjil 2014/2015;Ganjil 2015/2016;Ganjil 2016/2017;Ganjil 2017/2018;Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Ganjil 2021/2022;Ganjil 2022/2023;Ganjil 2023/2024', '0', '1', '1', '2023-02-22 16:12:21', '2023-02-22 16:12:21'),
	(11, '11', 'Tahun Lulus D3 Farmasi STIKES Borneo Lestari', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-02-22 16:13:21', '2023-02-22 16:13:21'),
	(12, '12', 'Semester Lulus D3 Farmasi STIKES Borneo Lestari', 'Genap;Ganjil', '0', '0', '1', '2023-02-22 16:13:57', '2023-02-22 16:13:57'),
	(13, '13', 'Apa yang anda lakukan setelah lulus? Kuesioner selanjutnya akan disesuaikan dengan jawaban yang Anda pilih. Jika saat mengisi kuesioner ini Anda belum bekerja, maka diharapkan dapat mengisi kembali kuesioner setelah Anda mendapatkan pekerjaan pertama untuk mengisi kuesioner mengenai profil pekerjaan', 'Belum bekerja;Melanjutkan jenjang sekolah lebih tinggi;Langsung bekerja;Berwirausaha', '0', '0', '1', '2023-02-22 16:15:24', '2023-02-22 16:15:24'),
	(14, '14', 'Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium profesi apoteker) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda "-"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-02-23 00:47:08', '2023-02-23 00:49:17'),
	(15, '15', 'Jika sampai saat ini anda belum bekerja, karena: hanya diisi untuk alumni yang belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '1', '2023-02-23 00:50:31', '2023-02-23 00:51:05'),
	(16, '16', 'Nama institusi', '', '0', '0', '1', '2023-02-23 00:51:29', '2023-02-23 00:51:36'),
	(17, '17', 'Program studi yang diambil', '', '0', '0', '1', '2023-02-23 00:52:04', '2023-02-23 00:52:04'),
	(18, '18', 'Tahun masuk', '', '0', '0', '1', '2023-02-23 00:52:12', '2023-02-23 00:52:12'),
	(19, '19', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-23 00:52:41', '2023-02-23 00:52:41'),
	(20, '20', 'Nama ketua program studi', '', '0', '0', '1', '2023-02-23 00:53:03', '2023-02-23 00:53:03'),
	(21, '21', 'Apakah anda bersedia untuk berbagi dengan almamater STIKES Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-02-23 00:53:28'),
	(22, '22', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater STIKES Borneo Lestari?', '', '0', '0', '0', '2023-02-23 00:53:52', '2023-02-23 00:54:20'),
	(23, '23', 'Kepuasan alumni terhadap Dosen D3 Farmasi? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:54:13', '2023-02-23 00:54:46'),
	(24, '24', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
	(25, '25', 'Kepuasan alumni terhadap Pengelola Prodi D3 Farmasi? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-02-23 00:55:57'),
	(26, '26', 'Kepuasan alumni terhadap Sarana dan Prasarana Prodi D3 Farmasi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-02-23 00:56:49'),
	(27, '27', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Prodi D3 Farmasi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-02-23 00:57:27'),
	(28, '28', 'Saran untuk Prodi D3 Farmasi STIKES Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-02-23 00:57:52'),
	(29, '29', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-23 01:00:24', '2023-02-23 01:00:24'),
	(30, '30', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 01:02:00', '2023-02-23 01:02:00'),
	(31, '31', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 01:02:54', '2023-02-23 01:02:54'),
	(32, '32', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 01:10:09', '2023-02-23 01:10:09'),
	(33, '33', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 01:10:22', '2023-02-23 01:10:22'),
	(34, '34', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 01:11:17', '2023-02-23 01:11:17'),
	(35, '35', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 01:11:30', '2023-02-23 01:11:30'),
	(36, '36', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:11:48', '2023-02-23 01:12:14'),
	(37, '37', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 01:12:36', '2023-02-23 01:12:36'),
	(38, '38', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 01:13:41', '2023-02-23 01:13:41'),
	(39, '39', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 01:14:29', '2023-02-23 01:14:29'),
	(40, '40', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:14:53', '2023-02-23 01:14:53'),
	(41, '41', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Prodi D3 Farmasi STIKES Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 01:15:34', '2023-02-23 01:15:34'),
	(42, '42', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 01:16:39', '2023-02-23 01:17:56'),
	(43, '43', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:19:07', '2023-02-23 01:19:07'),
	(44, '44', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 01:20:37', '2023-02-23 01:20:37'),
	(45, '45', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 01:21:24', '2023-02-23 01:21:24'),
	(46, '46', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-02-23 01:22:50', '2023-02-23 01:22:50'),
	(47, '47', 'Apakah anda bersedia untuk berbagi dengan almamater STIKES Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:23:04', '2023-02-23 01:23:16'),
	(48, '48', 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater STIKES Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 01:35:47', '2023-02-23 01:35:47'),
	(49, '49', 'Kepuasan alumni terhadap Dosen D3 Farmasi. Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:36:18', '2023-02-23 01:36:18'),
	(50, '50', 'Kepuasan alumni terhadap Tenaga Kependidikan. Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:36:54', '2023-02-23 01:36:54'),
	(51, '51', 'Kepuasan alumni terhadap Pengelola Prodi D3 Farmasi. Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:38:22', '2023-02-23 01:38:22'),
	(52, '52', 'Kepuasan alumni terhadap Sarana dan Prasarana Prodi D3 Farmasi. Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:38:58', '2023-02-23 01:38:58'),
	(53, '53', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Prodi D3 Farmasi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:39:38', '2023-02-23 01:39:38'),
	(54, '54', 'Saran untuk Prodi D3 Farmasi STIKES Borneo Lestari', '', '0', '0', '1', '2023-02-23 01:39:58', '2023-02-23 01:39:58'),
	(55, '55', 'Nama usaha Anda', '', '0', '0', '1', '2023-02-23 01:40:32', '2023-02-23 01:40:32'),
	(56, '56', 'Lama periode Anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:40:47', '2023-02-23 01:40:47'),
	(57, '57', 'Bagaimana status kepemilikan perusahaan Anda saat ini?', 'Milik sendiri;Kemitraan', '0', '1', '1', '2023-02-23 01:41:19', '2023-02-23 01:41:19'),
	(58, '58', 'Jenis usaha apakah yang Anda lakukan saat ini?', 'Jasa;Dagang;Pabrik;Produksi', '0', '1', '1', '2023-02-23 01:42:04', '2023-02-23 01:42:04'),
	(59, '59', 'Motivasi apa yang mendorong Anda membuka usaha mandiri?', 'Meneruskan bisnis orang tua;Tidak suka bekerja dengan orang lain;Mencari tantangan;Mencari uang tambahan', '0', '1', '1', '2023-02-23 01:42:47', '2023-02-23 01:42:47'),
	(60, '60', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada).\r\nTuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 01:43:06', '2023-02-23 01:43:06'),
	(61, '61', 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:43:25', '2023-02-23 01:43:25'),
	(62, '62', 'Berapa penghasilan pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:44:22', '2023-02-23 01:44:22'),
	(63, '63', 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:44:40', '2023-02-23 01:44:40'),
	(64, '64', 'Apakah anda bersedia untuk berbagi dengan almamater STIKES Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:45:03', '2023-02-23 01:45:03'),
	(65, '65', 'Jika bersedia, hal apa yang dapat anda bagikan untuk STIKES Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat praktik kerja profesi apoteker;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 01:46:16', '2023-02-23 01:46:31'),
	(66, '66', 'Kepuasan alumni terhadap Dosen D3 Farmasi. Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:47:00', '2023-02-23 01:47:00'),
	(67, '67', 'Kepuasan alumni terhadap Tenaga Kependidikan. Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:47:28', '2023-02-23 01:47:28'),
	(68, '68', 'Kepuasan alumni terhadap Pengelola Prodi D3 Farmasi. Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:47:51', '2023-02-23 01:47:51'),
	(69, '69', 'Kepuasan alumni terhadap Sarana dan Prasarana Prodi D3 Farmasi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:48:15', '2023-02-23 01:48:15'),
	(70, '70', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Prodi D3 Farmasi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 01:48:54', '2023-02-23 01:48:54'),
	(71, '71', 'Saran untuk Prodi D3 Farmasi STIKES Borneo Lestari', '', '0', '0', '1', '2023-02-23 01:49:04', '2023-02-23 01:49:04');
/*!40000 ALTER TABLE `survey_alumnis` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusans
CREATE TABLE IF NOT EXISTS `survey_lulusans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusans: ~0 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusans` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_lulusans` ENABLE KEYS */;

-- Dumping structure for table tracer.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$P5/r.KGtmPGTdRwvvPJeCuqhxVqyNNW6NFz8ABPM5oksHoTWfM5EO', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table tracer.user_alumnis
CREATE TABLE IF NOT EXISTS `user_alumnis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.user_alumnis: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_alumnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_alumnis` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

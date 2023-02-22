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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.bank_alumnis: ~3 rows (approximately)
/*!40000 ALTER TABLE `bank_alumnis` DISABLE KEYS */;
INSERT INTO `bank_alumnis` (`id`, `bank1`, `bank2`, `bank3`, `bank4`, `bank5`, `bank6`, `bank7`, `bank8`, `bank9`, `bank10`, `bank11`, `bank12`, `bank13`, `bank14`, `bank15`, `bank16`, `bank17`, `bank18`, `bank19`, `bank20`, `bank21`, `bank22`, `bank23`, `bank24`, `bank25`, `bank26`, `bank27`, `bank28`, `bank29`, `bank30`, `bank31`, `bank32`, `bank33`, `bank34`, `bank35`, `bank36`, `bank37`, `bank38`, `bank39`, `bank40`, `bank41`, `bank42`, `bank43`, `bank44`, `bank45`, `bank46`, `bank47`, `bank48`, `bank49`, `bank50`, `created_at`, `updated_at`) VALUES
	(1, 'Pertama kali mengisi', 'Admin', '74615', 'Halimun 20 Januari 2000', 'Laki-laki', '08974183737', 'admin@mail.me', 'Jl. Kelapa Sawit 8 Bumi Berkat, Sei. Besar, Banjarbaru (70714)', '2,00-2,59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Pertama kali mengisi', 'Admin', '74616', 'Limosin 20 Januari 2000', 'Perempuan', '08974183737', 'admin@mail.me', 'Jl. Kelapa Sawit 8 Bumi Berkat, Sei. Besar, Banjarbaru (70714)', '2,60-2,99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Pertama kali mengisi', 'Admin', '74617', 'Palang 20 Januari 2000', 'Laki-laki', '08974183737', 'admin@mail.me', 'Jl. Kelapa Sawit 8 Bumi Berkat, Sei. Besar, Banjarbaru (70714)', '3,00-3,59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2014_10_12_000000_create_users_table', 1),
	(12, '2014_10_12_100000_create_password_resets_table', 1),
	(13, '2019_08_19_000000_create_failed_jobs_table', 1),
	(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(15, '2023_02_01_125844_create_survey_alumnis_table', 1),
	(16, '2023_02_08_023802_create_admins_table', 1),
	(17, '2023_02_15_151316_create_survey_lulusans_table', 1),
	(18, '2023_02_15_161059_create_user_alumnis_table', 1),
	(19, '2023_02_17_125220_create_bank_alumnis_table', 1),
	(20, '2023_02_19_102632_create_bank_lulusans_table', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumnis: ~32 rows (approximately)
/*!40000 ALTER TABLE `survey_alumnis` DISABLE KEYS */;
INSERT INTO `survey_alumnis` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-02-21 07:51:40', '2023-02-21 07:52:41'),
	(2, '2', 'Nama', '', '0', '0', '1', '2023-02-21 08:19:16', '2023-02-21 08:19:16'),
	(3, '3', 'NIM', '', '0', '0', '1', '2023-02-21 08:19:24', '2023-02-21 08:19:24'),
	(4, '4', 'Tempat Tangal Lahir', '', '0', '0', '1', '2023-02-21 08:19:43', '2023-02-21 08:19:43'),
	(5, '5', 'Jenis Kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-02-21 08:20:05', '2023-02-21 08:20:05'),
	(6, '6', 'No Hp', '', '0', '0', '1', '2023-02-21 08:21:35', '2023-02-21 08:21:35'),
	(7, '7', 'Email', '', '0', '0', '1', '2023-02-21 08:21:48', '2023-02-21 08:21:48'),
	(8, '8', 'Alamat', '', '0', '0', '1', '2023-02-21 08:22:01', '2023-02-21 08:22:01'),
	(9, '9', 'IPK setelah Lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-02-21 08:22:54', '2023-02-21 08:22:54'),
	(10, '10', 'Tahun Masuk Kuliah di D3 Farmasi Borneo Lestari?', 'Ganjil 2014/2015;Ganjil 2015/2016;Ganjil 2017/2018;Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Ganjil 2021/2022;Ganjil 2022/2023', '0', '1', '1', '2023-02-22 00:47:10', '2023-02-22 00:48:25'),
	(11, '11', 'Tahun lulus', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-02-22 00:49:15', '2023-02-22 00:49:15'),
	(12, '12', 'Semester Lulus', 'Genap;Ganjil', '0', '0', '1', '2023-02-22 00:49:40', '2023-02-22 00:49:40'),
	(13, '13', 'Apa yang anda lakukan setelah lulus?', 'Belum bekerja;Melanjutkan jenjang sekolah lebih tinggi;Langsung bekerja;Berwirausaha', '0', '0', '1', '2023-02-22 00:50:44', '2023-02-22 00:51:05'),
	(14, '14', 'Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-02-22 01:42:07', '2023-02-22 01:43:00'),
	(15, '15', 'Jika sampai saat ini anda belum bekerja, karena: hanya diisi untuk alumni yang belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '0', '2023-02-22 01:44:32', '2023-02-22 01:44:32'),
	(16, '16', 'Nama Institusi', '', '0', '0', '1', '2023-02-22 01:45:24', '2023-02-22 01:45:24'),
	(17, '17', 'Program Studi yang diambil', '', '0', '0', '1', '2023-02-22 01:45:43', '2023-02-22 01:45:43'),
	(18, '18', 'Tahun masuk', '', '0', '0', '1', '2023-02-22 01:49:05', '2023-02-22 01:49:05'),
	(19, '19', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-22 01:49:32', '2023-02-22 01:49:32'),
	(20, '20', 'Nama ketua program studi', '', '0', '0', '1', '2023-02-22 01:50:49', '2023-02-22 01:50:49'),
	(21, '20', 'Nama ketua program studi', '', '0', '0', '1', '2023-02-22 01:52:05', '2023-02-22 01:52:05'),
	(22, '21', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-22 01:53:10', '2023-02-22 01:53:10'),
	(23, '22', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari?', '', '0', '0', '0', '2023-02-22 01:53:37', '2023-02-22 01:53:37'),
	(24, '23', 'Kepuasan alumni terhadap Dosen D3 Farmasi? \r\nAspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-22 01:55:04', '2023-02-22 01:57:21'),
	(25, '24', 'Kepuasan alumni terhadap Tenaga Kependidikan?\r\nAspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-22 01:58:02', '2023-02-22 01:58:02'),
	(26, '25', 'Kepuasan alumni terhadap Pengelola Prodi D3 Farmasi? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-22 01:59:03', '2023-02-22 01:59:03'),
	(27, '26', 'Kepuasan alumni terhadap Sarana dan Prasarana Prodi D3 Farmasi?\r\nAspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-22 01:59:50', '2023-02-22 01:59:50'),
	(29, '27', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Prodi D3 Farmasi? Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-22 02:32:50', '2023-02-22 02:49:58'),
	(30, '28', 'Saran untuk Prodi D3 Farmasi STIKES Borneo Lestari', '', '0', '0', '1', '2023-02-22 02:50:34', '2023-02-22 02:50:34'),
	(31, '29', 'Jenis Pekerjaan/Instansi saat ini', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-22 03:09:50', '2023-02-22 03:09:50'),
	(32, '30', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-22 03:12:05', '2023-02-22 03:12:05'),
	(33, '31', 'Kapan anda mencari pekerjaan', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-22 03:12:30', '2023-02-22 03:12:30');
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
INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
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

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
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumnis: ~0 rows (approximately)
/*!40000 ALTER TABLE `survey_alumnis` DISABLE KEYS */;
INSERT INTO `survey_alumnis` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
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
	(13, '13', 'Apa yang anda lakukan setelah lulus? Kuesioner selanjutnya akan disesuaikan dengan jawaban yang Anda pilih. Jika saat mengisi kuesioner ini Anda belum bekerja, maka diharapkan dapat mengisi kembali kuesioner setelah Anda mendapatkan pekerjaan pertama untuk mengisi kuesioner mengenai profil pekerjaan', 'Belum bekerja;Melanjutkan jenjang sekolah lebih tinggi;Langsung bekerja;Berwirausaha', '0', '0', '1', '2023-02-22 16:15:24', '2023-02-22 16:15:24');
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

-- Dumping data for table tracer.users: ~0 rows (approximately)
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

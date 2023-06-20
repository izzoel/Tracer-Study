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
  `admin_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni1` text COLLATE utf8mb4_unicode_ci,
  `alumni2` text COLLATE utf8mb4_unicode_ci,
  `alumni3` text COLLATE utf8mb4_unicode_ci,
  `alumni4` text COLLATE utf8mb4_unicode_ci,
  `alumni5` text COLLATE utf8mb4_unicode_ci,
  `alumni6` text COLLATE utf8mb4_unicode_ci,
  `alumni7` text COLLATE utf8mb4_unicode_ci,
  `alumni8` text COLLATE utf8mb4_unicode_ci,
  `alumni9` text COLLATE utf8mb4_unicode_ci,
  `alumni10` text COLLATE utf8mb4_unicode_ci,
  `alumni11` text COLLATE utf8mb4_unicode_ci,
  `alumni12` text COLLATE utf8mb4_unicode_ci,
  `alumni13` text COLLATE utf8mb4_unicode_ci,
  `alumni14` text COLLATE utf8mb4_unicode_ci,
  `alumni15` text COLLATE utf8mb4_unicode_ci,
  `alumni16` text COLLATE utf8mb4_unicode_ci,
  `alumni17` text COLLATE utf8mb4_unicode_ci,
  `alumni18` text COLLATE utf8mb4_unicode_ci,
  `alumni19` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja1` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja2` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja3` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja4` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja5` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja6` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja7` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja1` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja2` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja3` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja4` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja5` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja6` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja7` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja8` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja9` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja10` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja11` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja12` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja13` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja14` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja15` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja16` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja17` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja18` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja19` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja20` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja21` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja22` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha1` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha2` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha3` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha4` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha5` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha6` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha7` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha8` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha9` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha10` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha11` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha12` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha13` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha14` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha15` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha16` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha17` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha18` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha19` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha20` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha21` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha22` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha23` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha24` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha25` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha26` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan1` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan2` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan3` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan4` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan5` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan6` text COLLATE utf8mb4_unicode_ci,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.bank_alumnis: ~5 rows (approximately)
/*!40000 ALTER TABLE `bank_alumnis` DISABLE KEYS */;
INSERT INTO `bank_alumnis` (`id`, `nama`, `nim`, `kategori`, `prodi`, `alumni1`, `alumni2`, `alumni3`, `alumni4`, `alumni5`, `alumni6`, `alumni7`, `alumni8`, `alumni9`, `alumni10`, `alumni11`, `alumni12`, `alumni13`, `alumni14`, `alumni15`, `alumni16`, `alumni17`, `alumni18`, `alumni19`, `belum_bekerja1`, `belum_bekerja2`, `belum_bekerja3`, `belum_bekerja4`, `belum_bekerja5`, `belum_bekerja6`, `belum_bekerja7`, `sudah_bekerja1`, `sudah_bekerja2`, `sudah_bekerja3`, `sudah_bekerja4`, `sudah_bekerja5`, `sudah_bekerja6`, `sudah_bekerja7`, `sudah_bekerja8`, `sudah_bekerja9`, `sudah_bekerja10`, `sudah_bekerja11`, `sudah_bekerja12`, `sudah_bekerja13`, `sudah_bekerja14`, `sudah_bekerja15`, `sudah_bekerja16`, `sudah_bekerja17`, `sudah_bekerja18`, `sudah_bekerja19`, `sudah_bekerja20`, `sudah_bekerja21`, `sudah_bekerja22`, `berwirausaha1`, `berwirausaha2`, `berwirausaha3`, `berwirausaha4`, `berwirausaha5`, `berwirausaha6`, `berwirausaha7`, `berwirausaha8`, `berwirausaha9`, `berwirausaha10`, `berwirausaha11`, `berwirausaha12`, `berwirausaha13`, `berwirausaha14`, `berwirausaha15`, `berwirausaha16`, `berwirausaha17`, `berwirausaha18`, `berwirausaha19`, `berwirausaha20`, `berwirausaha21`, `berwirausaha22`, `berwirausaha23`, `berwirausaha24`, `berwirausaha25`, `berwirausaha26`, `lanjut_pendidikan1`, `lanjut_pendidikan2`, `lanjut_pendidikan3`, `lanjut_pendidikan4`, `lanjut_pendidikan5`, `lanjut_pendidikan6`, `bank1`, `bank2`, `bank3`, `bank4`, `bank5`, `bank6`, `bank7`, `bank8`, `bank9`, `bank10`, `bank11`, `bank12`, `bank13`, `bank14`, `bank15`, `bank16`, `bank17`, `bank18`, `bank19`, `bank20`, `bank21`, `bank22`, `bank23`, `bank24`, `bank25`, `bank26`, `bank27`, `bank28`, `bank29`, `bank30`, `bank31`, `bank32`, `bank33`, `bank34`, `bank35`, `bank36`, `bank37`, `bank38`, `bank39`, `bank40`, `bank41`, `bank42`, `bank43`, `bank44`, `bank45`, `bank46`, `bank47`, `bank48`, `bank49`, `bank50`, `bank51`, `bank52`, `bank53`, `bank54`, `bank55`, `bank56`, `bank57`, `bank58`, `bank59`, `bank60`, `bank61`, `bank62`, `bank63`, `bank64`, `bank65`, `bank66`, `bank67`, `bank68`, `bank69`, `bank70`, `bank71`, `bank72`, `bank73`, `bank74`, `bank75`, `bank76`, `bank77`, `bank78`, `bank79`, `bank80`, `bank81`, `bank82`, `bank83`, `bank84`, `bank85`, `bank86`, `bank87`, `bank88`, `bank89`, `bank90`, `bank91`, `bank92`, `bank93`, `bank94`, `bank95`, `bank96`, `bank97`, `bank98`, `bank99`, `bank100`, `created_at`, `updated_at`) VALUES
	(5, 'admin', '1', 'Belum Bekerja', 'D3 Farmasi', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'admin@me.id', 'alamat', '2,60-2,99', 'Ganjil 2020/2021', '2018', 'Ganjil', '≤ 3 bulan', 'Tidak', 'Informasi lowongan pekerjaan', '3', '1', '3', '3', '1', 'ok', 'Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll)', 'Kepribadian,Pengalaman lain: kursus keterampilan', 'Berbagi pengalaman/keahlian,Informasi lowongan pekerjaan', '1', '1', '1', 'Ya, saya akan mulai bekerja dalam 2 minggu ke depan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'admin', '1', 'Sudah Bekerja', 'D3 Farmasi', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'admin@me.id', 'alamat', '3,00-3,59', 'Ganjil 2018/2019', '2020', 'Genap', 'Tidak', NULL, '3', '4', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swasta (Apotek/PBF/Rumah Sakit)', 'PBF', 'Setelah lulus', 'z', 'z', 'Kontrak paruh waktu', 'z', 'Tidak', 'z', 'z', 'z', 'Ya', 'Relasi keluarga dan teman', 'Ya, karena kedudukan/jabatan sesuai,Tidak, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Ekstra kurikuler: pengalaman organisasi, kelompok studi', '1 kali', 'Lingkungan pekerjaan tidak mendukung', 'z', 'z', 'Lokal/Wilayah/Wiraswasta tidak berbadan hukum', 'Tidak Perlu Pendidikan Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'admin', '1', 'Berwirausaha', 'D3 Farmasi', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'admin@me.id', 'alamat', '2,00-2,59', 'Genap 2021/2022', '2017', 'Ganjil', 'Ya', 'Informasi lowongan pekerjaan,Kerjasama penelitian', '2', '3', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swasta (Apotek/PBF/Rumah Sakit)', 'Peneliti', 'Setelah lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'z', 'z', 'Ya', 'Iklan/media massa', 'Ya, karena iklim kerja menyenangkan,Tidak, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Kepribadian', '> 2 kali', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Milik sendiri', 'Produksi', 'Mencari tantangan', 'Ya', 'Rp 10.000.000 – 15.000.000', 'z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'admin', '1', 'Lanjut Pendidikan', 'D3 Farmasi', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'admin@me.id', 'alamat', '3,00-3,59', 'Ganjil 2020/2021', '2022', 'Genap', 'Ya', 'Berbagi pengalaman/keahlian,Informasi lowongan pekerjaan', '2', '4', '2', '2', NULL, '4', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'z', 'z', 'z', 'Genap', 'z', 'Beasiswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'admin', '2', 'Sudah Bekerja', 'S1 Farmasi', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'admin@me.id', 'alamat', '2,60-2,99', 'Genap 2020/2021', '2020', 'Genap', 'Tidak', 'on', '3', '2', '1', '3', NULL, '2', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', 'Setelah lulus', 'z', 'z', 'on', 'z', 'Tidak', 'z', 'z', 'z', 'Tidak', 'on', 'on', 'Lebih dari Rp 25.000.000', 'on', 'on', 'on', 'z', 'z', 'Multinasional/Internasional', 'Setingkat Lebih Rendah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.migrations: ~22 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_02_01_125844_create_survey_alumnis_table', 1),
	(6, '2023_02_08_023802_create_admins_table', 1),
	(7, '2023_02_15_151316_create_survey_lulusans_table', 1),
	(8, '2023_02_15_161059_create_user_alumnis_table', 1),
	(9, '2023_02_17_125220_create_bank_alumnis_table', 1),
	(10, '2023_02_19_102632_create_bank_lulusans_table', 1),
	(11, '2023_03_13_015625_create_survey_alumni_belum_bekerja_table', 1),
	(12, '2023_03_13_153420_create_survey_alumni_sudah_bekerjas_table', 1),
	(13, '2023_03_14_054653_create_survey_alumni_wirausahas_table', 1),
	(14, '2023_03_14_063252_create_survey_alumni_lanjut_pendidikans_table', 1),
	(15, '2023_03_26_134049_create_survey_lulusan_profil_pengguna_lulusans_table', 1),
	(16, '2023_03_26_134336_create_survey_lulusan_aspek_integritas_table', 1),
	(17, '2023_03_26_134352_create_survey_lulusan_aspek_profesionalismes_table', 1),
	(18, '2023_03_26_134406_create_survey_lulusan_aspek_kemampuan_berbahasa_asings_table', 1),
	(19, '2023_03_26_134426_create_survey_lulusan_aspek_penggunaan_teknologis_table', 1),
	(20, '2023_03_26_134438_create_survey_lulusan_aspek_komunikasis_table', 1),
	(21, '2023_03_26_134449_create_survey_lulusan_aspek_kerjasama_tims_table', 1),
	(22, '2023_03_26_134503_create_survey_lulusan_aspek_pengembangan_diris_table', 1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumnis: ~0 rows (approximately)
/*!40000 ALTER TABLE `survey_alumnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_alumnis` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_alumni_belum_bekerja
CREATE TABLE IF NOT EXISTS `survey_alumni_belum_bekerja` (
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumni_belum_bekerja: ~26 rows (approximately)
/*!40000 ALTER TABLE `survey_alumni_belum_bekerja` DISABLE KEYS */;
INSERT INTO `survey_alumni_belum_bekerja` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-12 18:48:13', '2023-03-12 18:48:13'),
	(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-12 18:48:49', '2023-03-12 18:48:49'),
	(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-12 18:49:08', '2023-03-12 18:49:08'),
	(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-12 18:49:19', '2023-03-12 18:49:19'),
	(5, '5', 'Email', '', '0', '0', '1', '2023-03-12 18:49:28', '2023-03-12 18:49:28'),
	(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-12 18:49:36', '2023-03-12 18:49:36'),
	(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-12 18:50:41', '2023-03-12 18:50:41'),
	(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-12 18:51:31', '2023-03-12 18:51:31'),
	(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-12 18:52:18', '2023-03-12 18:52:18'),
	(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-12 18:52:45', '2023-03-12 18:52:45'),
	(11, '11', '	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda "-"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-03-12 18:53:18', '2023-03-12 18:53:18'),
	(12, '12', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-03-08 05:18:23'),
	(13, '13', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 00:53:52', '2023-03-13 21:11:05'),
	(14, '14', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(15, '15', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
	(16, '16', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-03-08 05:20:23'),
	(17, '17', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-03-08 05:20:44'),
	(18, '18', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-03-08 05:22:02'),
	(19, '19', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-03-08 05:23:37'),
	(20, '20', 'Jika sampai saat ini anda belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '1', '2023-02-23 00:50:31', '2023-03-08 05:16:55'),
	(21, '21', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 01:20:37', '2023-02-23 01:20:37'),
	(22, '22', 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 01:35:47', '2023-03-08 05:43:37'),
	(23, '23', 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)', '', '1', '0', '1', '2023-03-08 05:39:54', '2023-03-08 05:40:40'),
	(24, '24', 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 05:40:32', '2023-03-08 05:40:32'),
	(25, '25', 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 05:41:26', '2023-03-13 06:43:18'),
	(26, '26', 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban', 'Tidak;Tidak, tapi saya sedang menunggu hasil lamaran kerja;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan', '0', '1', '1', '2023-03-08 05:42:50', '2023-03-13 07:56:04');
/*!40000 ALTER TABLE `survey_alumni_belum_bekerja` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_alumni_lanjut_pendidikan
CREATE TABLE IF NOT EXISTS `survey_alumni_lanjut_pendidikan` (
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumni_lanjut_pendidikan: ~24 rows (approximately)
/*!40000 ALTER TABLE `survey_alumni_lanjut_pendidikan` DISABLE KEYS */;
INSERT INTO `survey_alumni_lanjut_pendidikan` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-12 18:48:13', '2023-03-12 18:48:13'),
	(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-12 18:48:49', '2023-03-12 18:48:49'),
	(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-12 18:49:08', '2023-03-12 18:49:08'),
	(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-12 18:49:19', '2023-03-12 18:49:19'),
	(5, '5', 'Email', '', '0', '0', '1', '2023-03-12 18:49:28', '2023-03-12 18:49:28'),
	(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-12 18:49:36', '2023-03-12 18:49:36'),
	(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-12 18:50:41', '2023-03-12 18:50:41'),
	(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-12 18:51:31', '2023-03-12 18:51:31'),
	(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-12 18:52:18', '2023-03-12 18:52:18'),
	(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-12 18:52:45', '2023-03-12 18:52:45'),
	(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-03-08 05:18:23'),
	(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
	(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-03-08 05:20:23'),
	(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-03-08 05:20:44'),
	(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-03-08 05:22:02'),
	(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-03-08 05:23:37'),
	(19, '19', 'Nama institusi', '', '0', '0', '1', '2023-02-23 00:51:29', '2023-02-23 00:51:36'),
	(20, '20', 'Program studi yang diambil', '', '0', '0', '1', '2023-02-23 00:52:04', '2023-02-23 00:52:04'),
	(21, '21', 'Tahun Akademik Masuk', '', '0', '0', '1', '2023-02-23 00:52:12', '2023-03-08 05:17:18'),
	(22, '22', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-23 00:52:41', '2023-02-23 00:52:41'),
	(23, '23', 'Nama ketua program studi/dekan', '', '0', '0', '1', '2023-02-23 00:53:03', '2023-03-08 05:17:39'),
	(24, '24', 'Sumber biaya (lanjut pendidikan)', 'Mandiri;Beasiswa', '0', '0', '1', '2023-03-08 05:33:14', '2023-03-08 05:33:14');
/*!40000 ALTER TABLE `survey_alumni_lanjut_pendidikan` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_alumni_sudah_bekerja
CREATE TABLE IF NOT EXISTS `survey_alumni_sudah_bekerja` (
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumni_sudah_bekerja: ~40 rows (approximately)
/*!40000 ALTER TABLE `survey_alumni_sudah_bekerja` DISABLE KEYS */;
INSERT INTO `survey_alumni_sudah_bekerja` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-12 18:48:13', '2023-03-12 18:48:13'),
	(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-12 18:48:49', '2023-03-12 18:48:49'),
	(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-12 18:49:08', '2023-03-12 18:49:08'),
	(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-12 18:49:19', '2023-03-12 18:49:19'),
	(5, '5', 'Email', '', '0', '0', '1', '2023-03-12 18:49:28', '2023-03-12 18:49:28'),
	(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-12 18:49:36', '2023-03-12 18:49:36'),
	(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-12 18:50:41', '2023-03-12 18:50:41'),
	(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-12 18:51:31', '2023-03-12 18:51:31'),
	(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-12 18:52:18', '2023-03-12 18:52:18'),
	(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-12 18:52:45', '2023-03-12 18:52:45'),
	(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-03-08 05:18:23'),
	(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
	(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-03-08 05:20:23'),
	(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-03-08 05:20:44'),
	(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-03-08 05:22:02'),
	(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-03-08 05:23:37'),
	(19, '19', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-23 01:00:24', '2023-02-23 01:00:24'),
	(20, '20', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 01:02:00', '2023-02-23 01:02:00'),
	(21, '21', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 01:02:54', '2023-02-23 01:02:54'),
	(22, '22', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 01:10:09', '2023-02-23 01:10:09'),
	(23, '23', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 01:10:22', '2023-02-23 01:10:22'),
	(24, '24', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 01:11:17', '2023-02-23 01:11:17'),
	(25, '25', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 01:11:30', '2023-02-23 01:11:30'),
	(26, '26', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:11:48', '2023-02-23 01:12:14'),
	(27, '27', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 01:12:36', '2023-02-23 01:12:36'),
	(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 01:13:41', '2023-02-23 01:13:41'),
	(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 01:14:29', '2023-02-23 01:14:29'),
	(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:14:53', '2023-02-23 01:14:53'),
	(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 01:15:34', '2023-02-23 02:26:51'),
	(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 01:16:39', '2023-02-23 01:17:56'),
	(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:19:07', '2023-02-23 01:19:07'),
	(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 01:20:37', '2023-02-23 01:20:37'),
	(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 01:21:24', '2023-02-23 01:21:24'),
	(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 06:22:18', '2023-02-23 01:22:50'),
	(37, '37', 'Nomor WhatsApp Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 05:25:46', '2023-03-08 05:25:46'),
	(38, '38', 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)', '', '0', '0', '1', '2023-03-08 05:27:55', '2023-03-08 05:27:55'),
	(39, '39', 'Apa tingkat tempat kerja Anda ?', 'Lokal/Wilayah/Wiraswasta tidak berbadan hukum;Nasional/Wiraswasta berbadan hukum;Multinasional/Internasional', '0', '0', '1', '2023-03-08 05:31:25', '2023-03-08 05:31:40'),
	(40, '40', 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?', 'Setingkat Lebih Tinggi;Tingkat yang Sama;Setingkat Lebih Rendah;Tidak Perlu Pendidikan Tinggi', '0', '0', '1', '2023-03-08 05:35:35', '2023-03-08 05:35:35');
/*!40000 ALTER TABLE `survey_alumni_sudah_bekerja` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_alumni_wirausaha
CREATE TABLE IF NOT EXISTS `survey_alumni_wirausaha` (
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_alumni_wirausaha: ~44 rows (approximately)
/*!40000 ALTER TABLE `survey_alumni_wirausaha` DISABLE KEYS */;
INSERT INTO `survey_alumni_wirausaha` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-12 18:48:13', '2023-03-12 18:48:13'),
	(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-12 18:48:49', '2023-03-12 18:48:49'),
	(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-12 18:49:08', '2023-03-12 18:49:08'),
	(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-12 18:49:19', '2023-03-12 18:49:19'),
	(5, '5', 'Email', '', '0', '0', '1', '2023-03-12 18:49:28', '2023-03-12 18:49:28'),
	(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-12 18:49:36', '2023-03-12 18:49:36'),
	(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-12 18:50:41', '2023-03-12 18:50:41'),
	(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-12 18:51:31', '2023-03-12 18:51:31'),
	(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-12 18:52:18', '2023-03-12 18:52:18'),
	(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-12 18:52:45', '2023-03-12 18:52:45'),
	(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-03-08 05:18:23'),
	(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
	(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
	(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-03-08 05:20:23'),
	(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-03-08 05:20:44'),
	(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-03-08 05:22:02'),
	(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-03-08 05:23:37'),
	(19, '19', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-23 01:00:24', '2023-02-23 01:00:24'),
	(20, '20', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 01:02:00', '2023-02-23 01:02:00'),
	(21, '21', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 01:02:54', '2023-02-23 01:02:54'),
	(22, '22', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 01:10:09', '2023-02-23 01:10:09'),
	(23, '23', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 01:10:22', '2023-02-23 01:10:22'),
	(24, '24', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 01:11:17', '2023-02-23 01:11:17'),
	(25, '25', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 01:11:30', '2023-02-23 01:11:30'),
	(26, '26', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:11:48', '2023-02-23 01:12:14'),
	(27, '27', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 01:12:36', '2023-02-23 01:12:36'),
	(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 01:13:41', '2023-02-23 01:13:41'),
	(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 01:14:29', '2023-02-23 01:14:29'),
	(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:14:53', '2023-02-23 01:14:53'),
	(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 01:15:34', '2023-02-23 02:26:51'),
	(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 01:16:39', '2023-02-23 01:17:56'),
	(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:19:07', '2023-02-23 01:19:07'),
	(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 01:20:37', '2023-02-23 01:20:37'),
	(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 01:21:24', '2023-02-23 01:21:24'),
	(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 06:22:18', '2023-02-23 01:22:50'),
	(37, '37', 'Nama usaha Anda', '', '0', '0', '1', '2023-02-23 01:40:32', '2023-02-23 01:40:32'),
	(38, '38', 'Lama periode Anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:40:47', '2023-02-23 01:40:47'),
	(39, '39', 'Bagaimana status kepemilikan perusahaan Anda saat ini?', 'Milik sendiri;Kemitraan', '0', '1', '1', '2023-02-23 01:41:19', '2023-02-23 01:41:19'),
	(40, '40', 'Jenis usaha apakah yang Anda lakukan saat ini?', 'Jasa;Dagang;Pabrik;Produksi', '0', '1', '1', '2023-02-23 01:42:04', '2023-02-23 01:42:04'),
	(41, '41', 'Motivasi apa yang mendorong Anda membuka usaha mandiri?', 'Meneruskan bisnis orang tua;Tidak suka bekerja dengan orang lain;Mencari tantangan;Mencari uang tambahan', '0', '1', '1', '2023-02-23 01:42:47', '2023-02-23 01:42:47'),
	(42, '42', 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:43:25', '2023-02-23 01:43:25'),
	(43, '43', 'Berapa penghasilan pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:44:22', '2023-02-23 01:44:22'),
	(44, '44', 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:44:40', '2023-02-23 01:44:40');
/*!40000 ALTER TABLE `survey_alumni_wirausaha` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusans: ~38 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusans` DISABLE KEYS */;
INSERT INTO `survey_lulusans` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-08 05:55:24', '2023-03-08 05:55:24'),
	(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 05:55:42', '2023-03-08 05:55:42'),
	(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 05:56:09', '2023-03-08 05:56:18'),
	(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 05:56:30', '2023-03-08 05:56:36'),
	(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 05:56:48', '2023-03-08 05:56:48'),
	(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 05:57:59', '2023-03-08 05:57:59'),
	(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 05:58:13', '2023-03-08 05:58:13'),
	(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 05:58:53', '2023-03-08 05:58:53'),
	(9, '9', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:01:03', '2023-03-08 06:01:03'),
	(10, '10', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:01', '2023-03-08 06:02:01'),
	(11, '11', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:37', '2023-03-08 06:02:37'),
	(12, '12', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:51', '2023-03-08 06:03:03'),
	(13, '13', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:05:39', '2023-03-08 06:05:57'),
	(14, '14', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:06:32', '2023-03-08 06:06:48'),
	(15, '15', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:07:11', '2023-03-08 06:07:11'),
	(16, '16', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:08:33', '2023-03-08 06:08:33'),
	(17, '17', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:08:56', '2023-03-08 06:08:56'),
	(18, '18', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:09:24', '2023-03-08 06:09:24'),
	(19, '19', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:09:53', '2023-03-08 06:09:53'),
	(20, '20', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:10:19', '2023-03-08 06:10:19'),
	(21, '21', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:10:58', '2023-03-08 06:10:58'),
	(22, '22', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:11:43', '2023-03-08 06:11:43'),
	(23, '23', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:12:06', '2023-03-08 06:12:06'),
	(24, '24', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:12:55', '2023-03-08 06:12:55'),
	(25, '25', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:13:32', '2023-03-08 06:13:32'),
	(26, '26', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:13:56', '2023-03-08 06:13:56'),
	(27, '27', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:03', '2023-03-08 06:15:03'),
	(28, '28', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:31', '2023-03-08 06:15:31'),
	(29, '29', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:52', '2023-03-08 06:15:52'),
	(30, '30', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:16:18', '2023-03-08 06:16:18'),
	(31, '31', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:16:36', '2023-03-08 06:16:36'),
	(32, '32', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:17:32', '2023-03-08 06:17:32'),
	(33, '33', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:17:50', '2023-03-08 06:17:50'),
	(34, '34', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:18:13', '2023-03-08 06:18:13'),
	(35, '35', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:19:05', '2023-03-08 06:19:05'),
	(36, '36', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:19:22', '2023-03-08 06:19:22'),
	(37, '37', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:19:41', '2023-03-08 06:19:41'),
	(38, '38', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 06:20:33', '2023-03-08 06:20:33');
/*!40000 ALTER TABLE `survey_lulusans` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_integritas
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_integritas` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_integritas: ~7 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_integritas` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_integritas` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:01:03', '2023-03-08 06:01:03'),
	(2, '2', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:01', '2023-03-08 06:02:01'),
	(3, '3', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:37', '2023-03-08 06:02:37'),
	(4, '4', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:02:51', '2023-03-08 06:03:03'),
	(5, '5', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:05:39', '2023-03-08 06:05:57'),
	(6, '6', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:06:32', '2023-03-08 06:06:48'),
	(7, '7', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:07:11', '2023-03-08 06:07:11');
/*!40000 ALTER TABLE `survey_lulusan_aspek_integritas` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_kemampuan_berbahasa_asing
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_kemampuan_berbahasa_asing` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_kemampuan_berbahasa_asing: ~3 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_kemampuan_berbahasa_asing` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_kemampuan_berbahasa_asing` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:10:58', '2023-03-08 06:10:58'),
	(2, '2', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:11:43', '2023-03-08 06:11:43'),
	(3, '3', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:12:06', '2023-03-08 06:12:06');
/*!40000 ALTER TABLE `survey_lulusan_aspek_kemampuan_berbahasa_asing` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_kerjasama_tim
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_kerjasama_tim` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_kerjasama_tim: ~3 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_kerjasama_tim` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_kerjasama_tim` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:17:32', '2023-03-08 06:17:32'),
	(2, '2', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:17:50', '2023-03-08 06:17:50'),
	(3, '3', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:18:13', '2023-03-08 06:18:13');
/*!40000 ALTER TABLE `survey_lulusan_aspek_kerjasama_tim` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_komunikasi
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_komunikasi` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_komunikasi: ~5 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_komunikasi` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_komunikasi` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:03', '2023-03-08 06:15:03'),
	(2, '2', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:31', '2023-03-08 06:15:31'),
	(3, '3', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:15:52', '2023-03-08 06:15:52'),
	(4, '4', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:16:18', '2023-03-08 06:16:18'),
	(5, '5', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:16:36', '2023-03-08 06:16:36');
/*!40000 ALTER TABLE `survey_lulusan_aspek_komunikasi` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_pengembangan_diri
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_pengembangan_diri` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_pengembangan_diri: ~2 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_pengembangan_diri` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_pengembangan_diri` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:19:05', '2023-03-08 06:19:05'),
	(2, '2', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:19:22', '2023-03-08 06:19:22');
/*!40000 ALTER TABLE `survey_lulusan_aspek_pengembangan_diri` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_penggunaan_teknologi
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_penggunaan_teknologi` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_penggunaan_teknologi: ~3 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_penggunaan_teknologi` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_penggunaan_teknologi` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:12:55', '2023-03-08 06:12:55'),
	(2, '2', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:13:32', '2023-03-08 06:13:32'),
	(3, '3', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:13:56', '2023-03-08 06:13:56');
/*!40000 ALTER TABLE `survey_lulusan_aspek_penggunaan_teknologi` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_aspek_profesionalisme
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_profesionalisme` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_aspek_profesionalisme: ~5 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_aspek_profesionalisme` DISABLE KEYS */;
INSERT INTO `survey_lulusan_aspek_profesionalisme` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:08:33', '2023-03-08 06:08:33'),
	(2, '2', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:08:56', '2023-03-08 06:08:56'),
	(3, '3', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:09:24', '2023-03-08 06:09:24'),
	(4, '4', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:09:53', '2023-03-08 06:09:53'),
	(5, '5', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 06:10:19', '2023-03-08 06:10:19');
/*!40000 ALTER TABLE `survey_lulusan_aspek_profesionalisme` ENABLE KEYS */;

-- Dumping structure for table tracer.survey_lulusan_profil_pengguna_lulusan
CREATE TABLE IF NOT EXISTS `survey_lulusan_profil_pengguna_lulusan` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.survey_lulusan_profil_pengguna_lulusan: ~9 rows (approximately)
/*!40000 ALTER TABLE `survey_lulusan_profil_pengguna_lulusan` DISABLE KEYS */;
INSERT INTO `survey_lulusan_profil_pengguna_lulusan` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-26 15:03:59', '2023-03-26 15:04:00'),
	(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 05:55:42', '2023-03-08 05:55:42'),
	(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 05:56:09', '2023-03-08 05:56:18'),
	(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 05:56:30', '2023-03-08 05:56:36'),
	(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 05:56:48', '2023-03-08 05:56:48'),
	(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 05:57:59', '2023-03-08 05:57:59'),
	(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 05:58:13', '2023-03-08 05:58:13'),
	(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 05:58:53', '2023-03-08 05:58:53'),
	(9, '9', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 06:20:33', '2023-03-08 06:20:33');
/*!40000 ALTER TABLE `survey_lulusan_profil_pengguna_lulusan` ENABLE KEYS */;

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
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tracer.user_alumnis: ~3 rows (approximately)
/*!40000 ALTER TABLE `user_alumnis` DISABLE KEYS */;
INSERT INTO `user_alumnis` (`id`, `nama`, `nim`, `prodi`, `angkatan`, `created_at`, `updated_at`) VALUES
	(6, 'ADMIN', '1', 'D3 Farmasi', '2001', '2023-06-04 11:28:15', '2023-06-04 11:28:15'),
	(7, 'ADMIN', '1', 'D3 Farmasi', '2004', '2023-06-04 11:28:15', '2023-06-04 11:28:15'),
	(8, 'ADMIN', '1', 'D3 Farmasi', '2004', '2023-06-04 11:28:15', '2023-06-04 11:28:15');
/*!40000 ALTER TABLE `user_alumnis` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

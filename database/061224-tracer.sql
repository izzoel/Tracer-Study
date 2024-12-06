-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table u549415590_tracer.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.bank_alumni
CREATE TABLE IF NOT EXISTS `bank_alumni` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alumni1` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah sudah pernah mengisi formulir tracer study?*',
  `alumni2` text COLLATE utf8mb4_unicode_ci COMMENT 'Tempat, tangal lahir*',
  `alumni3` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis kelamin*',
  `alumni4` text COLLATE utf8mb4_unicode_ci COMMENT 'No WhatsApp*',
  `alumni5` text COLLATE utf8mb4_unicode_ci COMMENT 'Email*',
  `alumni6` text COLLATE utf8mb4_unicode_ci COMMENT 'Alamat Lengkap*',
  `alumni7` text COLLATE utf8mb4_unicode_ci COMMENT 'IPK setelah lulus*',
  `alumni8` text COLLATE utf8mb4_unicode_ci COMMENT 'Tahun Masuk Kuliah di Universitas Borneo Lestari*',
  `alumni9` text COLLATE utf8mb4_unicode_ci COMMENT 'Tahun Lulus (Berdasarkan Tanggal Wisuda)*',
  `alumni10` text COLLATE utf8mb4_unicode_ci COMMENT 'Semester Lulus (Berdasarkan tanggal Yudisium)*',
  `alumni11` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda "-"*',
  `alumni12` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?*',
  `alumni13` text COLLATE utf8mb4_unicode_ci COMMENT 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?',
  `alumni14` text COLLATE utf8mb4_unicode_ci COMMENT 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni15` text COLLATE utf8mb4_unicode_ci COMMENT '	Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni16` text COLLATE utf8mb4_unicode_ci COMMENT '	Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni17` text COLLATE utf8mb4_unicode_ci COMMENT 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi. Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni18` text COLLATE utf8mb4_unicode_ci COMMENT 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni19` text COLLATE utf8mb4_unicode_ci COMMENT 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari*',
  `alumni20` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja1` text COLLATE utf8mb4_unicode_ci COMMENT 'Jika sampai saat ini anda belum bekerja*',
  `belum_bekerja2` text COLLATE utf8mb4_unicode_ci COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `belum_bekerja3` text COLLATE utf8mb4_unicode_ci COMMENT 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?*',
  `belum_bekerja4` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)*',
  `belum_bekerja5` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)*',
  `belum_bekerja6` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka)*',
  `belum_bekerja7` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban*',
  `belum_bekerja8` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja9` text COLLATE utf8mb4_unicode_ci,
  `belum_bekerja10` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja1` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga*',
  `sudah_bekerja2` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis Pekerjaan saat ini*',
  `sudah_bekerja3` text COLLATE utf8mb4_unicode_ci COMMENT 'Kapan anda mencari pekerjaan?*',
  `sudah_bekerja4` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama institusi atau jenis usaha tempat anda bekerja*',
  `sudah_bekerja5` text COLLATE utf8mb4_unicode_ci COMMENT 'Jabatan pekerjaan*',
  `sudah_bekerja6` text COLLATE utf8mb4_unicode_ci COMMENT 'Apa status pekerjaan anda saat ini?*',
  `sudah_bekerja7` text COLLATE utf8mb4_unicode_ci COMMENT 'Lama periode pekerjaan saat ini*',
  `sudah_bekerja8` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?*',
  `sudah_bekerja9` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan*',
  `sudah_bekerja10` text COLLATE utf8mb4_unicode_ci COMMENT 'Alamat email atasan Anda*',
  `sudah_bekerja11` text COLLATE utf8mb4_unicode_ci COMMENT 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja*',
  `sudah_bekerja12` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?*',
  `sudah_bekerja13` text COLLATE utf8mb4_unicode_ci COMMENT 'Dari mana anda mendapatkan informasi pekerjaan pertama?*',
  `sudah_bekerja14` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)*',
  `sudah_bekerja15` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?*',
  `sudah_bekerja16` text COLLATE utf8mb4_unicode_ci COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `sudah_bekerja17` text COLLATE utf8mb4_unicode_ci COMMENT 'Pernahkan anda pindah bekerja?*',
  `sudah_bekerja18` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah alasan anda pindah bekerja?*',
  `sudah_bekerja19` text COLLATE utf8mb4_unicode_ci COMMENT 'Nomor WhatsApp Pimpinan/Atasan*',
  `sudah_bekerja20` text COLLATE utf8mb4_unicode_ci COMMENT 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)*',
  `sudah_bekerja21` text COLLATE utf8mb4_unicode_ci COMMENT 'Apa tingkat tempat kerja Anda ?*',
  `sudah_bekerja22` text COLLATE utf8mb4_unicode_ci COMMENT 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?*',
  `sudah_bekerja23` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja24` text COLLATE utf8mb4_unicode_ci,
  `sudah_bekerja25` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha1` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga*',
  `berwirausaha2` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis Pekerjaan saat ini*',
  `berwirausaha3` text COLLATE utf8mb4_unicode_ci COMMENT 'Kapan anda mencari pekerjaan?*',
  `berwirausaha4` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama institusi atau jenis usaha tempat anda bekerja*',
  `berwirausaha5` text COLLATE utf8mb4_unicode_ci COMMENT 'Jabatan pekerjaan*',
  `berwirausaha6` text COLLATE utf8mb4_unicode_ci COMMENT 'Apa status pekerjaan anda saat ini?*',
  `berwirausaha7` text COLLATE utf8mb4_unicode_ci COMMENT 'Lama periode pekerjaan saat ini*',
  `berwirausaha8` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?*',
  `berwirausaha9` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan*',
  `berwirausaha10` text COLLATE utf8mb4_unicode_ci COMMENT 'Alamat email atasan Anda*',
  `berwirausaha11` text COLLATE utf8mb4_unicode_ci COMMENT 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja*',
  `berwirausaha12` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?*',
  `berwirausaha13` text COLLATE utf8mb4_unicode_ci COMMENT 'Dari mana anda mendapatkan informasi pekerjaan pertama?*',
  `berwirausaha14` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)*',
  `berwirausaha15` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?*',
  `berwirausaha16` text COLLATE utf8mb4_unicode_ci COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `berwirausaha17` text COLLATE utf8mb4_unicode_ci COMMENT 'Pernahkan anda pindah bekerja?*',
  `berwirausaha18` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah alasan anda pindah bekerja?*',
  `berwirausaha19` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama usaha Anda*',
  `berwirausaha20` text COLLATE utf8mb4_unicode_ci COMMENT 'Lama periode Anda berwirausaha*',
  `berwirausaha21` text COLLATE utf8mb4_unicode_ci COMMENT 'Bagaimana status kepemilikan perusahaan Anda saat ini?*',
  `berwirausaha22` text COLLATE utf8mb4_unicode_ci COMMENT 'Jenis usaha apakah yang Anda lakukan saat ini?*',
  `berwirausaha23` text COLLATE utf8mb4_unicode_ci COMMENT 'Motivasi apa yang mendorong Anda membuka usaha mandiri?*',
  `berwirausaha24` text COLLATE utf8mb4_unicode_ci COMMENT 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?*',
  `berwirausaha25` text COLLATE utf8mb4_unicode_ci COMMENT 'Berapa penghasilan pertama anda dalam satu bulan?*',
  `berwirausaha26` text COLLATE utf8mb4_unicode_ci COMMENT 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha*',
  `berwirausaha27` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha28` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha29` text COLLATE utf8mb4_unicode_ci,
  `berwirausaha30` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan1` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama institusi*',
  `lanjut_pendidikan2` text COLLATE utf8mb4_unicode_ci COMMENT 'Program studi yang diambil*',
  `lanjut_pendidikan3` text COLLATE utf8mb4_unicode_ci COMMENT 'Tahun Akademik Masuk*',
  `lanjut_pendidikan4` text COLLATE utf8mb4_unicode_ci COMMENT 'Semester masuk kuliah*',
  `lanjut_pendidikan5` text COLLATE utf8mb4_unicode_ci COMMENT 'Nama ketua program studi/dekan*',
  `lanjut_pendidikan6` text COLLATE utf8mb4_unicode_ci COMMENT 'Sumber biaya (lanjut pendidikan)*',
  `lanjut_pendidikan7` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan8` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan9` text COLLATE utf8mb4_unicode_ci,
  `lanjut_pendidikan10` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.bank_lulusans
CREATE TABLE IF NOT EXISTS `bank_lulusans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.respon_email
CREATE TABLE IF NOT EXISTS `respon_email` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `respon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_alumnis
CREATE TABLE IF NOT EXISTS `survey_alumnis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_alumni_belum_bekerja
CREATE TABLE IF NOT EXISTS `survey_alumni_belum_bekerja` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_alumni_lanjut_pendidikan
CREATE TABLE IF NOT EXISTS `survey_alumni_lanjut_pendidikan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_alumni_sudah_bekerja
CREATE TABLE IF NOT EXISTS `survey_alumni_sudah_bekerja` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_alumni_wirausaha
CREATE TABLE IF NOT EXISTS `survey_alumni_wirausaha` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusans
CREATE TABLE IF NOT EXISTS `survey_lulusans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_integritas
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_integritas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_kemampuan_berbahasa_asing
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_kemampuan_berbahasa_asing` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_kerjasama_tim
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_kerjasama_tim` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_komunikasi
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_komunikasi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_pengembangan_diri
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_pengembangan_diri` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_penggunaan_teknologi
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_penggunaan_teknologi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_aspek_profesionalisme
CREATE TABLE IF NOT EXISTS `survey_lulusan_aspek_profesionalisme` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.survey_lulusan_profil_pengguna_lulusan
CREATE TABLE IF NOT EXISTS `survey_lulusan_profil_pengguna_lulusan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.user_alumnis
CREATE TABLE IF NOT EXISTS `user_alumnis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table u549415590_tracer.xbank_alumnis
CREATE TABLE IF NOT EXISTS `xbank_alumnis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 26, 2023 at 02:08 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u549415590_tracer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_alumnis`
--

CREATE TABLE `bank_alumnis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank11` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank12` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank13` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank14` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank15` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank16` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank17` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank18` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank19` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank20` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank21` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank22` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank23` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank24` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank25` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank26` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank27` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank28` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank29` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank30` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank31` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank32` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank33` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank34` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank35` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank36` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank37` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank38` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank39` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank40` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank41` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank42` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank43` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank44` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank45` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank46` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank47` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank48` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank49` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank50` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_lulusans`
--

CREATE TABLE `bank_lulusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank11` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank12` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank13` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank14` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank15` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank16` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank17` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank18` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank19` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank20` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank21` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank22` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank23` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank24` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank25` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank26` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank27` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank28` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank29` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank30` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank31` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank32` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank33` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank34` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank35` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank36` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank37` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank38` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank39` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank40` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank41` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank42` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank43` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank44` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank45` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank46` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank47` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank48` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank49` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank50` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

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
(20, '2023_02_19_102632_create_bank_lulusans_table', 1),
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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumnis`
--

CREATE TABLE `survey_alumnis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_alumnis`
--

INSERT INTO `survey_alumnis` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-02-22 15:40:38', '2023-02-22 16:00:25'),
(2, '2', 'Nama', '', '0', '0', '1', '2023-02-22 16:05:41', '2023-02-22 16:05:41'),
(3, '3', 'NIM', '', '0', '0', '1', '2023-02-22 16:05:53', '2023-02-22 16:05:53'),
(4, '4', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-02-22 16:06:19', '2023-02-22 16:07:24'),
(5, '5', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-02-22 16:07:13', '2023-02-22 16:07:13'),
(6, '6', 'No Whats App', '', '0', '0', '1', '2023-02-22 16:08:16', '2023-03-08 05:11:55'),
(7, '7', 'Email', '', '0', '0', '1', '2023-02-22 16:08:25', '2023-02-22 16:08:33'),
(8, '8', 'Alamat Lengkap', '', '0', '0', '1', '2023-02-22 16:08:41', '2023-03-08 05:12:03'),
(9, '9', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-02-22 16:09:31', '2023-02-22 16:09:31'),
(10, '10', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-02-22 16:12:21', '2023-03-08 05:14:19'),
(11, '11', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-02-22 16:13:21', '2023-03-08 05:14:58'),
(12, '12', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-02-22 16:13:57', '2023-03-08 05:15:28'),
(13, '13', 'Apa yang anda lakukan setelah lulus? Kuesioner selanjutnya akan disesuaikan dengan jawaban yang Anda pilih. Jika saat mengisi kuesioner ini Anda belum bekerja, maka diharapkan dapat mengisi kembali kuesioner setelah Anda mendapatkan pekerjaan pertama untuk mengisi kuesioner mengenai profil pekerjaan', 'Belum bekerja;Melanjutkan jenjang sekolah lebih tinggi;Langsung bekerja;Berwirausaha', '0', '0', '1', '2023-02-22 16:15:24', '2023-02-22 16:15:24'),
(14, '14', 'Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-02-23 00:47:08', '2023-03-08 05:16:04'),
(15, '15', 'Jika sampai saat ini anda belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '1', '2023-02-23 00:50:31', '2023-03-08 05:16:55'),
(16, '16', 'Nama institusi', '', '0', '0', '1', '2023-02-23 00:51:29', '2023-02-23 00:51:36'),
(17, '17', 'Program studi yang diambil', '', '0', '0', '1', '2023-02-23 00:52:04', '2023-02-23 00:52:04'),
(18, '18', 'Tahun Akademik Masuk', '', '0', '0', '1', '2023-02-23 00:52:12', '2023-03-08 05:17:18'),
(19, '19', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-23 00:52:41', '2023-02-23 00:52:41'),
(20, '20', 'Nama ketua program studi/dekan', '', '0', '0', '1', '2023-02-23 00:53:03', '2023-03-08 05:17:39'),
(21, '21', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 00:53:28', '2023-03-08 05:18:23'),
(22, '22', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari?', '', '0', '0', '1', '2023-02-23 00:53:52', '2023-03-08 05:18:50'),
(23, '23', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa\r\n(Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:54:13', '2023-03-08 05:19:46'),
(24, '24', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:17', '2023-02-23 00:55:17'),
(25, '25', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:55:57', '2023-03-08 05:20:23'),
(26, '26', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:56:49', '2023-03-08 05:20:44'),
(27, '27', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 00:57:27', '2023-03-08 05:22:02'),
(28, '28', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 00:57:52', '2023-03-08 05:23:37'),
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
(41, '41', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 01:15:34', '2023-02-23 02:26:51'),
(42, '42', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 01:16:39', '2023-02-23 01:17:56'),
(43, '43', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:19:07', '2023-02-23 01:19:07'),
(44, '44', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 01:20:37', '2023-02-23 01:20:37'),
(45, '45', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 01:21:24', '2023-02-23 01:21:24'),
(46, '46', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-02-23 01:22:50', '2023-02-23 01:22:50'),
(48, '48', 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 01:35:47', '2023-03-08 05:43:37'),
(55, '55', 'Nama usaha Anda', '', '0', '0', '1', '2023-02-23 01:40:32', '2023-02-23 01:40:32'),
(56, '56', 'Lama periode Anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:40:47', '2023-02-23 01:40:47'),
(57, '57', 'Bagaimana status kepemilikan perusahaan Anda saat ini?', 'Milik sendiri;Kemitraan', '0', '1', '1', '2023-02-23 01:41:19', '2023-02-23 01:41:19'),
(58, '58', 'Jenis usaha apakah yang Anda lakukan saat ini?', 'Jasa;Dagang;Pabrik;Produksi', '0', '1', '1', '2023-02-23 01:42:04', '2023-02-23 01:42:04'),
(59, '59', 'Motivasi apa yang mendorong Anda membuka usaha mandiri?', 'Meneruskan bisnis orang tua;Tidak suka bekerja dengan orang lain;Mencari tantangan;Mencari uang tambahan', '0', '1', '1', '2023-02-23 01:42:47', '2023-02-23 01:42:47'),
(61, '61', 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 01:43:25', '2023-02-23 01:43:25'),
(62, '62', 'Berapa penghasilan pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 01:44:22', '2023-02-23 01:44:22'),
(63, '63', 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha', '', '0', '0', '1', '2023-02-23 01:44:40', '2023-02-23 01:44:40'),
(72, '64', 'Nomor WhatsApp Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 05:25:46', '2023-03-08 05:25:46'),
(73, '65', 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)', '', '0', '0', '1', '2023-03-08 05:27:55', '2023-03-08 05:27:55'),
(74, '66', 'Apa tingkat tempat kerja Anda ?', 'Lokal/Wilayah/Wiraswasta tidak berbadan hukum;Nasional/Wiraswasta berbadan hukum;Multinasional/Internasional', '0', '0', '1', '2023-03-08 05:31:25', '2023-03-08 05:31:40'),
(75, '67', 'Sumber biaya (lanjut pendidikan)', 'Mandiri;Beasiswa', '0', '0', '1', '2023-03-08 05:33:14', '2023-03-08 05:33:14'),
(76, '68', 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?', 'Setingkat Lebih Tinggi;Tingkat yang Sama;Setingkat Lebih Rendah;Tidak Perlu Pendidikan Tinggi', '0', '0', '1', '2023-03-08 05:35:35', '2023-03-08 05:35:35'),
(77, '69', 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)', '', '1', '0', '1', '2023-03-08 05:39:54', '2023-03-08 05:40:40'),
(78, '70', 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 05:40:32', '2023-03-08 05:40:32'),
(79, '71', 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara ? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 05:41:26', '2023-03-08 05:41:26'),
(80, '72', 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban', 'Tidak;Tidak, tapi saya sedang menunggu hasil lamaran kerja;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan', '0', '1', '1', '2023-03-08 05:42:50', '2023-03-08 05:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumni_belum_bekerja`
--

CREATE TABLE `survey_alumni_belum_bekerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_alumni_belum_bekerja`
--

INSERT INTO `survey_alumni_belum_bekerja` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 02:48:13', '2023-03-13 02:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 02:48:49', '2023-03-13 02:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 02:49:08', '2023-03-13 02:49:08'),
(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-13 02:49:19', '2023-03-13 02:49:19'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 02:49:28', '2023-03-13 02:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 02:49:36', '2023-03-13 02:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 02:50:41', '2023-03-13 02:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 02:51:31', '2023-03-13 02:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 02:52:18', '2023-03-13 02:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 02:52:45', '2023-03-13 02:52:45'),
(11, '11', '	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-03-13 02:53:18', '2023-03-13 02:53:18'),
(12, '12', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 08:53:28', '2023-03-08 13:18:23'),
(13, '13', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 08:53:52', '2023-03-14 05:11:05'),
(14, '14', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(15, '15', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:17', '2023-02-23 08:55:17'),
(16, '16', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:57', '2023-03-08 13:20:23'),
(17, '17', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:56:49', '2023-03-08 13:20:44'),
(18, '18', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:57:27', '2023-03-08 13:22:02'),
(19, '19', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 08:57:52', '2023-03-08 13:23:37'),
(20, '20', 'Jika sampai saat ini anda belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '1', '2023-02-23 08:50:31', '2023-03-08 13:16:55'),
(21, '21', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 09:20:37', '2023-02-23 09:20:37'),
(22, '22', 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 09:35:47', '2023-03-08 13:43:37'),
(23, '23', 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)', '', '1', '0', '1', '2023-03-08 13:39:54', '2023-03-08 13:40:40'),
(24, '24', 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 13:40:32', '2023-03-08 13:40:32'),
(25, '25', 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 13:41:26', '2023-03-13 14:43:18'),
(26, '26', 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban', 'Tidak;Tidak, tapi saya sedang menunggu hasil lamaran kerja;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan', '0', '1', '1', '2023-03-08 13:42:50', '2023-03-13 15:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumni_lanjut_pendidikan`
--

CREATE TABLE `survey_alumni_lanjut_pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_alumni_lanjut_pendidikan`
--

INSERT INTO `survey_alumni_lanjut_pendidikan` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 02:48:13', '2023-03-13 02:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 02:48:49', '2023-03-13 02:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 02:49:08', '2023-03-13 02:49:08'),
(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-13 02:49:19', '2023-03-13 02:49:19'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 02:49:28', '2023-03-13 02:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 02:49:36', '2023-03-13 02:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 02:50:41', '2023-03-13 02:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 02:51:31', '2023-03-13 02:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 02:52:18', '2023-03-13 02:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 02:52:45', '2023-03-13 02:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 08:53:28', '2023-03-08 13:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(13, '13', 'Nama institusi', '', '0', '0', '1', '2023-02-23 08:51:29', '2023-02-23 08:51:36'),
(14, '14', 'Program studi yang diambil', '', '0', '0', '1', '2023-02-23 08:52:04', '2023-02-23 08:52:04'),
(15, '15', 'Tahun Akademik Masuk', '', '0', '0', '1', '2023-02-23 08:52:12', '2023-03-08 13:17:18'),
(16, '16', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-23 08:52:41', '2023-02-23 08:52:41'),
(17, '17', 'Nama ketua program studi/dekan', '', '0', '0', '1', '2023-02-23 08:53:03', '2023-03-08 13:17:39'),
(18, '18', 'Sumber biaya (lanjut pendidikan)', 'Mandiri;Beasiswa', '0', '0', '1', '2023-03-08 13:33:14', '2023-03-08 13:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumni_sudah_bekerja`
--

CREATE TABLE `survey_alumni_sudah_bekerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_alumni_sudah_bekerja`
--

INSERT INTO `survey_alumni_sudah_bekerja` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 02:48:13', '2023-03-13 02:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 02:48:49', '2023-03-13 02:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 02:49:08', '2023-03-13 02:49:08'),
(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-13 02:49:19', '2023-03-13 02:49:19'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 02:49:28', '2023-03-13 02:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 02:49:36', '2023-03-13 02:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 02:50:41', '2023-03-13 02:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 02:51:31', '2023-03-13 02:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 02:52:18', '2023-03-13 02:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 02:52:45', '2023-03-13 02:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 08:53:28', '2023-03-08 13:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:17', '2023-02-23 08:55:17'),
(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:57', '2023-03-08 13:20:23'),
(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:56:49', '2023-03-08 13:20:44'),
(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:57:27', '2023-03-08 13:22:02'),
(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 08:57:52', '2023-03-08 13:23:37'),
(19, '19', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-23 09:00:24', '2023-02-23 09:00:24'),
(20, '20', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 09:02:00', '2023-02-23 09:02:00'),
(21, '21', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 09:02:54', '2023-02-23 09:02:54'),
(22, '22', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 09:10:09', '2023-02-23 09:10:09'),
(23, '23', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 09:10:22', '2023-02-23 09:10:22'),
(24, '24', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 09:11:17', '2023-02-23 09:11:17'),
(25, '25', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 09:11:30', '2023-02-23 09:11:30'),
(26, '26', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 09:11:48', '2023-02-23 09:12:14'),
(27, '27', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 09:12:36', '2023-02-23 09:12:36'),
(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 09:13:41', '2023-02-23 09:13:41'),
(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 09:14:29', '2023-02-23 09:14:29'),
(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 09:14:53', '2023-02-23 09:14:53'),
(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 09:15:34', '2023-02-23 10:26:51'),
(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 09:16:39', '2023-02-23 09:17:56'),
(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 09:19:07', '2023-02-23 09:19:07'),
(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 09:20:37', '2023-02-23 09:20:37'),
(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 09:21:24', '2023-02-23 09:21:24'),
(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 14:22:18', '2023-02-23 09:22:50'),
(37, '37', 'Nomor WhatsApp Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 13:25:46', '2023-03-08 13:25:46'),
(38, '38', 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)', '', '0', '0', '1', '2023-03-08 13:27:55', '2023-03-08 13:27:55'),
(39, '39', 'Apa tingkat tempat kerja Anda ?', 'Lokal/Wilayah/Wiraswasta tidak berbadan hukum;Nasional/Wiraswasta berbadan hukum;Multinasional/Internasional', '0', '0', '1', '2023-03-08 13:31:25', '2023-03-08 13:31:40'),
(40, '40', 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?', 'Setingkat Lebih Tinggi;Tingkat yang Sama;Setingkat Lebih Rendah;Tidak Perlu Pendidikan Tinggi', '0', '0', '1', '2023-03-08 13:35:35', '2023-03-08 13:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumni_wirausaha`
--

CREATE TABLE `survey_alumni_wirausaha` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_alumni_wirausaha`
--

INSERT INTO `survey_alumni_wirausaha` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 02:48:13', '2023-03-13 02:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 02:48:49', '2023-03-13 02:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 02:49:08', '2023-03-13 02:49:08'),
(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-13 02:49:19', '2023-03-13 02:49:19'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 02:49:28', '2023-03-13 02:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 02:49:36', '2023-03-13 02:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 02:50:41', '2023-03-13 02:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 02:51:31', '2023-03-13 02:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 02:52:18', '2023-03-13 02:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 02:52:45', '2023-03-13 02:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 08:53:28', '2023-03-08 13:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 08:53:52', '2023-03-08 13:18:50'),
(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:17', '2023-02-23 08:55:17'),
(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:55:57', '2023-03-08 13:20:23'),
(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:56:49', '2023-03-08 13:20:44'),
(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 08:57:27', '2023-03-08 13:22:02'),
(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 08:57:52', '2023-03-08 13:23:37'),
(19, '19', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Wiraswasta;Lembaga Non Profit', '0', '1', '1', '2023-02-23 09:00:24', '2023-02-23 09:00:24'),
(20, '20', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 09:02:00', '2023-02-23 09:02:00'),
(21, '21', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 09:02:54', '2023-02-23 09:02:54'),
(22, '22', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 09:10:09', '2023-02-23 09:10:09'),
(23, '23', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 09:10:22', '2023-02-23 09:10:22'),
(24, '24', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 09:11:17', '2023-02-23 09:11:17'),
(25, '25', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 09:11:30', '2023-02-23 09:11:30'),
(26, '26', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 09:11:48', '2023-02-23 09:12:14'),
(27, '27', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 09:12:36', '2023-02-23 09:12:36'),
(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 09:13:41', '2023-02-23 09:13:41'),
(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 09:14:29', '2023-02-23 09:14:29'),
(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 09:14:53', '2023-02-23 09:14:53'),
(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 09:15:34', '2023-02-23 10:26:51'),
(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 09:16:39', '2023-02-23 09:17:56'),
(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 09:19:07', '2023-02-23 09:19:07'),
(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 09:20:37', '2023-02-23 09:20:37'),
(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 09:21:24', '2023-02-23 09:21:24'),
(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 14:22:18', '2023-02-23 09:22:50'),
(37, '37', 'Nama usaha Anda', '', '0', '0', '1', '2023-02-23 09:40:32', '2023-02-23 09:40:32'),
(38, '38', 'Lama periode Anda berwirausaha', '', '0', '0', '1', '2023-02-23 09:40:47', '2023-02-23 09:40:47'),
(39, '39', 'Bagaimana status kepemilikan perusahaan Anda saat ini?', 'Milik sendiri;Kemitraan', '0', '1', '1', '2023-02-23 09:41:19', '2023-02-23 09:41:19'),
(40, '40', 'Jenis usaha apakah yang Anda lakukan saat ini?', 'Jasa;Dagang;Pabrik;Produksi', '0', '1', '1', '2023-02-23 09:42:04', '2023-02-23 09:42:04'),
(41, '41', 'Motivasi apa yang mendorong Anda membuka usaha mandiri?', 'Meneruskan bisnis orang tua;Tidak suka bekerja dengan orang lain;Mencari tantangan;Mencari uang tambahan', '0', '1', '1', '2023-02-23 09:42:47', '2023-02-23 09:42:47'),
(42, '42', 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 09:43:25', '2023-02-23 09:43:25'),
(43, '43', 'Berapa penghasilan pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 09:44:22', '2023-02-23 09:44:22'),
(44, '44', 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha', '', '0', '0', '1', '2023-02-23 09:44:40', '2023-02-23 09:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusans`
--

CREATE TABLE `survey_lulusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wajib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusans`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$P5/r.KGtmPGTdRwvvPJeCuqhxVqyNNW6NFz8ABPM5oksHoTWfM5EO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_alumnis`
--

CREATE TABLE `user_alumnis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_alumnis`
--
ALTER TABLE `bank_alumnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_lulusans`
--
ALTER TABLE `bank_lulusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `survey_alumnis`
--
ALTER TABLE `survey_alumnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_alumni_belum_bekerja`
--
ALTER TABLE `survey_alumni_belum_bekerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_alumni_lanjut_pendidikan`
--
ALTER TABLE `survey_alumni_lanjut_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_alumni_sudah_bekerja`
--
ALTER TABLE `survey_alumni_sudah_bekerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_alumni_wirausaha`
--
ALTER TABLE `survey_alumni_wirausaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusans`
--
ALTER TABLE `survey_lulusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_alumnis`
--
ALTER TABLE `user_alumnis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_alumnis`
--
ALTER TABLE `bank_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_lulusans`
--
ALTER TABLE `bank_lulusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_alumnis`
--
ALTER TABLE `survey_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `survey_alumni_belum_bekerja`
--
ALTER TABLE `survey_alumni_belum_bekerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `survey_alumni_lanjut_pendidikan`
--
ALTER TABLE `survey_alumni_lanjut_pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `survey_alumni_sudah_bekerja`
--
ALTER TABLE `survey_alumni_sudah_bekerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `survey_alumni_wirausaha`
--
ALTER TABLE `survey_alumni_wirausaha`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `survey_lulusans`
--
ALTER TABLE `survey_lulusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_alumnis`
--
ALTER TABLE `user_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

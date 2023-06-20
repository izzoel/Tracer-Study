-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2023 at 07:02 AM
-- Server version: 10.6.12-MariaDB-cll-lve
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
  `bank1` text DEFAULT NULL,
  `bank2` text DEFAULT NULL,
  `bank3` text DEFAULT NULL,
  `bank4` text DEFAULT NULL,
  `bank5` text DEFAULT NULL,
  `bank6` text DEFAULT NULL,
  `bank7` text DEFAULT NULL,
  `bank8` text DEFAULT NULL,
  `bank9` text DEFAULT NULL,
  `bank10` text DEFAULT NULL,
  `bank11` text DEFAULT NULL,
  `bank12` text DEFAULT NULL,
  `bank13` text DEFAULT NULL,
  `bank14` text DEFAULT NULL,
  `bank15` text DEFAULT NULL,
  `bank16` text DEFAULT NULL,
  `bank17` text DEFAULT NULL,
  `bank18` text DEFAULT NULL,
  `bank19` text DEFAULT NULL,
  `bank20` text DEFAULT NULL,
  `bank21` text DEFAULT NULL,
  `bank22` text DEFAULT NULL,
  `bank23` text DEFAULT NULL,
  `bank24` text DEFAULT NULL,
  `bank25` text DEFAULT NULL,
  `bank26` text DEFAULT NULL,
  `bank27` text DEFAULT NULL,
  `bank28` text DEFAULT NULL,
  `bank29` text DEFAULT NULL,
  `bank30` text DEFAULT NULL,
  `bank31` text DEFAULT NULL,
  `bank32` text DEFAULT NULL,
  `bank33` text DEFAULT NULL,
  `bank34` text DEFAULT NULL,
  `bank35` text DEFAULT NULL,
  `bank36` text DEFAULT NULL,
  `bank37` text DEFAULT NULL,
  `bank38` text DEFAULT NULL,
  `bank39` text DEFAULT NULL,
  `bank40` text DEFAULT NULL,
  `bank41` text DEFAULT NULL,
  `bank42` text DEFAULT NULL,
  `bank43` text DEFAULT NULL,
  `bank44` text DEFAULT NULL,
  `bank45` text DEFAULT NULL,
  `bank46` text DEFAULT NULL,
  `bank47` text DEFAULT NULL,
  `bank48` text DEFAULT NULL,
  `bank49` text DEFAULT NULL,
  `bank50` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_lulusans`
--

CREATE TABLE `bank_lulusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank1` text DEFAULT NULL,
  `bank2` text DEFAULT NULL,
  `bank3` text DEFAULT NULL,
  `bank4` text DEFAULT NULL,
  `bank5` text DEFAULT NULL,
  `bank6` text DEFAULT NULL,
  `bank7` text DEFAULT NULL,
  `bank8` text DEFAULT NULL,
  `bank9` text DEFAULT NULL,
  `bank10` text DEFAULT NULL,
  `bank11` text DEFAULT NULL,
  `bank12` text DEFAULT NULL,
  `bank13` text DEFAULT NULL,
  `bank14` text DEFAULT NULL,
  `bank15` text DEFAULT NULL,
  `bank16` text DEFAULT NULL,
  `bank17` text DEFAULT NULL,
  `bank18` text DEFAULT NULL,
  `bank19` text DEFAULT NULL,
  `bank20` text DEFAULT NULL,
  `bank21` text DEFAULT NULL,
  `bank22` text DEFAULT NULL,
  `bank23` text DEFAULT NULL,
  `bank24` text DEFAULT NULL,
  `bank25` text DEFAULT NULL,
  `bank26` text DEFAULT NULL,
  `bank27` text DEFAULT NULL,
  `bank28` text DEFAULT NULL,
  `bank29` text DEFAULT NULL,
  `bank30` text DEFAULT NULL,
  `bank31` text DEFAULT NULL,
  `bank32` text DEFAULT NULL,
  `bank33` text DEFAULT NULL,
  `bank34` text DEFAULT NULL,
  `bank35` text DEFAULT NULL,
  `bank36` text DEFAULT NULL,
  `bank37` text DEFAULT NULL,
  `bank38` text DEFAULT NULL,
  `bank39` text DEFAULT NULL,
  `bank40` text DEFAULT NULL,
  `bank41` text DEFAULT NULL,
  `bank42` text DEFAULT NULL,
  `bank43` text DEFAULT NULL,
  `bank44` text DEFAULT NULL,
  `bank45` text DEFAULT NULL,
  `bank46` text DEFAULT NULL,
  `bank47` text DEFAULT NULL,
  `bank48` text DEFAULT NULL,
  `bank49` text DEFAULT NULL,
  `bank50` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_alumni_belum_bekerja`
--

CREATE TABLE `survey_alumni_belum_bekerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
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
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
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
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
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
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
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
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusans`
--

INSERT INTO `survey_lulusans` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-08 13:55:24', '2023-03-08 13:55:24'),
(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 13:55:42', '2023-03-08 13:55:42'),
(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 13:56:09', '2023-03-08 13:56:18'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 13:56:30', '2023-03-08 13:56:36'),
(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 13:56:48', '2023-03-08 13:56:48'),
(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 13:57:59', '2023-03-08 13:57:59'),
(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 13:58:13', '2023-03-08 13:58:13'),
(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 13:58:53', '2023-03-08 13:58:53'),
(9, '9', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:01:03', '2023-03-08 14:01:03'),
(10, '10', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:01', '2023-03-08 14:02:01'),
(11, '11', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:37', '2023-03-08 14:02:37'),
(12, '12', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:51', '2023-03-08 14:03:03'),
(13, '13', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:05:39', '2023-03-08 14:05:57'),
(14, '14', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:06:32', '2023-03-08 14:06:48'),
(15, '15', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:07:11', '2023-03-08 14:07:11'),
(16, '16', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:08:33', '2023-03-08 14:08:33'),
(17, '17', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:08:56', '2023-03-08 14:08:56'),
(18, '18', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:09:24', '2023-03-08 14:09:24'),
(19, '19', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:09:53', '2023-03-08 14:09:53'),
(20, '20', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:10:19', '2023-03-08 14:10:19'),
(21, '21', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:10:58', '2023-03-08 14:10:58'),
(22, '22', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:11:43', '2023-03-08 14:11:43'),
(23, '23', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:12:06', '2023-03-08 14:12:06'),
(24, '24', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:12:55', '2023-03-08 14:12:55'),
(25, '25', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:13:32', '2023-03-08 14:13:32'),
(26, '26', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:13:56', '2023-03-08 14:13:56'),
(27, '27', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:03', '2023-03-08 14:15:03'),
(28, '28', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:31', '2023-03-08 14:15:31'),
(29, '29', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:52', '2023-03-08 14:15:52'),
(30, '30', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:16:18', '2023-03-08 14:16:18'),
(31, '31', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:16:36', '2023-03-08 14:16:36'),
(32, '32', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:17:32', '2023-03-08 14:17:32'),
(33, '33', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:17:50', '2023-03-08 14:17:50'),
(34, '34', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:18:13', '2023-03-08 14:18:13'),
(35, '35', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:19:05', '2023-03-08 14:19:05'),
(36, '36', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:19:22', '2023-03-08 14:19:22'),
(37, '37', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:19:41', '2023-03-08 14:19:41'),
(38, '38', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 14:20:33', '2023-03-08 14:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_integritas`
--

CREATE TABLE `survey_lulusan_aspek_integritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_integritas`
--

INSERT INTO `survey_lulusan_aspek_integritas` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:01:03', '2023-03-08 14:01:03'),
(2, '2', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:01', '2023-03-08 14:02:01'),
(3, '3', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:37', '2023-03-08 14:02:37'),
(4, '4', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:02:51', '2023-03-08 14:03:03'),
(5, '5', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:05:39', '2023-03-08 14:05:57'),
(6, '6', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:06:32', '2023-03-08 14:06:48'),
(7, '7', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:07:11', '2023-03-08 14:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_kemampuan_berbahasa_asing`
--

CREATE TABLE `survey_lulusan_aspek_kemampuan_berbahasa_asing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_kemampuan_berbahasa_asing`
--

INSERT INTO `survey_lulusan_aspek_kemampuan_berbahasa_asing` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:10:58', '2023-03-08 14:10:58'),
(2, '2', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:11:43', '2023-03-08 14:11:43'),
(3, '3', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:12:06', '2023-03-08 14:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_kerjasama_tim`
--

CREATE TABLE `survey_lulusan_aspek_kerjasama_tim` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_kerjasama_tim`
--

INSERT INTO `survey_lulusan_aspek_kerjasama_tim` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:17:32', '2023-03-08 14:17:32'),
(2, '2', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:17:50', '2023-03-08 14:17:50'),
(3, '3', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:18:13', '2023-03-08 14:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_komunikasi`
--

CREATE TABLE `survey_lulusan_aspek_komunikasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_komunikasi`
--

INSERT INTO `survey_lulusan_aspek_komunikasi` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:03', '2023-03-08 14:15:03'),
(2, '2', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:31', '2023-03-08 14:15:31'),
(3, '3', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:15:52', '2023-03-08 14:15:52'),
(4, '4', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:16:18', '2023-03-08 14:16:18'),
(5, '5', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:16:36', '2023-03-08 14:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_pengembangan_diri`
--

CREATE TABLE `survey_lulusan_aspek_pengembangan_diri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_pengembangan_diri`
--

INSERT INTO `survey_lulusan_aspek_pengembangan_diri` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:19:05', '2023-03-08 14:19:05'),
(2, '2', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:19:22', '2023-03-08 14:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_penggunaan_teknologi`
--

CREATE TABLE `survey_lulusan_aspek_penggunaan_teknologi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_penggunaan_teknologi`
--

INSERT INTO `survey_lulusan_aspek_penggunaan_teknologi` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:12:55', '2023-03-08 14:12:55'),
(2, '2', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:13:32', '2023-03-08 14:13:32'),
(3, '3', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:13:56', '2023-03-08 14:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_aspek_profesionalisme`
--

CREATE TABLE `survey_lulusan_aspek_profesionalisme` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_aspek_profesionalisme`
--

INSERT INTO `survey_lulusan_aspek_profesionalisme` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:08:33', '2023-03-08 14:08:33'),
(2, '2', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:08:56', '2023-03-08 14:08:56'),
(3, '3', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:09:24', '2023-03-08 14:09:24'),
(4, '4', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:09:53', '2023-03-08 14:09:53'),
(5, '5', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 14:10:19', '2023-03-08 14:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `survey_lulusan_profil_pengguna_lulusan`
--

CREATE TABLE `survey_lulusan_profil_pengguna_lulusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `pilihan` text NOT NULL,
  `ganda` text NOT NULL,
  `other` text NOT NULL,
  `wajib` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_lulusan_profil_pengguna_lulusan`
--

INSERT INTO `survey_lulusan_profil_pengguna_lulusan` (`id`, `no`, `survey`, `pilihan`, `ganda`, `other`, `wajib`, `created_at`, `updated_at`) VALUES
(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-26 23:03:59', '2023-03-26 23:04:00'),
(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 13:55:42', '2023-03-08 13:55:42'),
(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 13:56:09', '2023-03-08 13:56:18'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 13:56:30', '2023-03-08 13:56:36'),
(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 13:56:48', '2023-03-08 13:56:48'),
(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 13:57:59', '2023-03-08 13:57:59'),
(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 13:58:13', '2023-03-08 13:58:13'),
(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 13:58:53', '2023-03-08 13:58:53'),
(9, '9', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 14:20:33', '2023-03-08 14:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_alumnis`
--

INSERT INTO `user_alumnis` (`id`, `nama`, `nim`, `prodi`, `angkatan`, `created_at`, `updated_at`) VALUES
(13, 'FEFY NORWALIDAINI', 'DF19001', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(14, 'LIHIMI', 'DF19002', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(15, 'MUHAMMAD AYUBBANDI', 'DF19003', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(16, 'NURCHALISA SAFITRI', 'DF19004', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(17, 'SERLY MAR\'ATU SOLEHA', 'DF19005', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(18, 'SISKA DEWI FARMA', 'DF19006', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(19, 'SITI TITIN ISMAWATI', 'DF19007', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(20, 'YOLA', 'DF19008', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(21, 'YULIYANTI', 'DF19009', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(22, 'ZALFA HABIBA SUBEKTI', 'DF19010', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(23, 'SITI AGUSTIN JAYANTI', 'DF19011', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(24, 'ARIA DWI KUSUMAATMAJA', 'DF19012', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(25, 'INDAH WIDYA LESTARI', 'DF19013', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(26, 'AULIA RAHMAH', 'DF19015', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(27, 'SEPTIAWATI', 'DF19017', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(28, 'RENI ANESSIA', 'DF19018', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(29, 'ROSIANA SALSABILA', 'DF19019', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(30, 'LAURA PRANANDA', 'DF19021', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(31, 'JESSICA DWI PURNAMASARI', 'DF19023', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(32, 'ADITIA SAPUTRA', 'DF19024', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(33, 'ANGGIE', 'DF19025', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(34, 'ILLIYUN', 'DF19026', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(35, 'MERRY YENY', 'DF19027', 'D3 Farmasi', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(36, 'ALIYA FARADELLA CHANDENIE', 'AK1119014', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(37, 'ANIK WIDIYANI', 'AK1119041', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(38, 'ANNISA YUSERAN', 'AK1119025', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(39, 'ANWARUL HUDA', 'AK1119009', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(40, 'BELLA MULIYAWATI', 'AK1119071', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(41, 'DESI BELLA SYAFITRI', 'AK1119005', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(42, 'DESSY RAHMA HIDAYATI', 'AK1119057', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(43, 'DESVA JULIA PEBRINA MEYDI', 'AK1119034', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(44, 'DEVI KUMALA SARI', 'AK1119036', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(45, 'DISTA SUTIASTI', 'AK1119006', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(46, 'DWI PRASETYO', 'AK1119093', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(47, 'ELMA KRISTINA', 'AK1119037', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(48, 'ELY TUSMILA NURHAYATI', 'AK1119065', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(49, 'ERI HAWINI', 'AK1119064', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(50, 'EVA PRATAMI LESTARI', 'AK1119056', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(51, 'FEBRINDA MULYANI', 'AK1119015', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(52, 'FERDY RAMADHANI', 'AK1119026', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(53, 'FIRYAL SHAFA ANNISA', 'AK1119058', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(54, 'HASAN MUDZAKKIR MAS', 'AK1119010', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(55, 'HELDAWATI', 'AK1119017', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(56, 'HELLENTINE PUTRI ASTRIA', 'AK1119061', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(57, 'HELMI FAKHRIANDY', 'AK1119024', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(58, 'HUSNATUL AZIZAH', 'AK1119029', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(59, 'HUSNUL HATIMAH', 'AK1119054', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(60, 'IRWINA', 'AK1119019', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(61, 'ISMAUL HUSNA', 'AK1119008', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(62, 'JUHRAH', 'AK1119070', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(63, 'LAILA NUR KHASANAH', 'AK1119021', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(64, 'MERY HAIFA', 'AK1119045', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(65, 'MOULIENA DYAH LESTARI', 'AK1119067', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(66, 'MUHAMMAD FAUZI', 'AK1119050', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(67, 'MUHAMMAD HANDRI ANSHARI', 'AK1119047', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(68, 'MUHAMMAD LUTHFI RAMADHANI', 'AK1119016', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(69, 'MUHAMMAD RAFI\'I', 'AK1119068', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(70, 'MUHAMMAD RIFAI', 'AK1119004', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(71, 'MUHAMMAD RISALMAN', 'AK1119028', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(72, 'NADYA ASYIFA MAMAHIT', 'AK1119055', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(73, 'NAMIRA AL MEDINA', 'AK1119012', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(74, 'NIDA MUNIRAH', 'AK1119040', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(75, 'NORMILAWATI', 'AK1119051', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(76, 'NORYATI', 'AK1119049', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(77, 'NOVIANTI PERMADIE', 'AK1119007', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(78, 'PUSPA NANDA JUHARI', 'AK1119063', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(79, 'PUTRI SARMITA', 'AK1119052', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(80, 'RAHMA ARIANI', 'AK1119020', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(81, 'RIADATUL JANNAH', 'AK1119042', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(82, 'RIZKYA PUTERI', 'AK1119001', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(83, 'ROSIDAH', 'AK1119048', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(84, 'SALWA SAUSAN', 'AK1119059', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(85, 'SARIFAH FITRI ASSEGAF', 'AK1119046', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(86, 'SITI NORHALISA', 'AK1119036', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(87, 'ST. FATIMAH', 'AK1119053', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(88, 'ULFA ALMIRA', 'AK1119043', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(89, 'VINA JULIA SARI', 'AK1119044', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(90, 'VIONI INTAN ANDARESTI', 'AK1119060', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(91, 'YANDA TIARA AS’SHIVA', 'AK1119033', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(92, 'YOLANDA GRESIA', 'AK1119002', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(93, 'YULI RAHMITA', 'AK1119022', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(94, 'YURNIAH PERMATA', 'AK1119011', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(95, 'ZAINUR RAKHMAN', 'AK1119023', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(96, 'ZOHAR LATIFAH', 'AK1119031', 'D3 TLM', '2019', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(97, 'SALWA', 'AK1018052', 'D3 TLM', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(98, 'MUHAMMAD SYAHREZA GOTAWA', 'AK917083', 'D3 TLM', '2017', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(99, 'RADA MILENIA', 'SF18084', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(100, 'NOOR RIZKY HIDAYATULLAH', 'SF18075', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(101, 'HARYATI', 'SF18038', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(102, 'ASTRILELUNI', 'SF18012', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(103, 'HALISA', 'SF18036', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(104, 'FITRI ANISSA', 'SF18031', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(105, 'LISA SEPTIANA DEWI', 'SF18054', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(106, 'RIZQATUN NUKBAH', 'SF18101', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(107, 'ADINDA MELLY FEBRIANTI', 'SF18001', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(108, 'ALLISA FANADIA', 'SF18127', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(109, 'TASYA', 'SF18115', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(110, 'NADYA APRILLINIA', 'SF18068', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(111, 'RISMA YENI', 'SF18095', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(112, 'YUSRINA CONITATY', 'SF18122', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(113, 'ELLINA RIZKA AULIA', 'SF18024', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(114, 'ALIYA ROSYADA', 'SF18008', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(115, 'SONIA AGUSTINA OEMAR', 'SF18136', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(116, 'NOOR ANISA', 'SF18071', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(117, 'YULIANA SIHOMBING', 'SF18120', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(118, 'MAHDANIAH', 'SF18126', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(119, 'SATRIYO KRISNA PALGUNO', 'SF18107', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(120, 'NINDY RAHMADHANI', 'SF18132', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(121, 'HADIRVIKA TJUTHIYANDA', 'SF18034', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(122, 'NOOR EVA MEILIANTI', 'SF18073', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(123, 'BUNGA MARETA ANANDA', 'SF18016', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(124, 'MARISSA AMELIA PUTRI', 'SF18059', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(125, 'SARTIKA DEWI', 'SF18106', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(126, 'HANAN AMALIA', 'SF18037', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(127, 'NADIA AJENG NIASTUTI', 'SF18066', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(128, 'RAFIQA NOOR AFIFAH', 'SF18086', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(129, 'AULIA ULFA AGUSTIN', 'SF18014', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(130, 'EKA SANDRA', 'SF18128', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(131, 'ELMA ARIYANI', 'SF18025', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(132, 'RIZKA ANJELIANA', 'SF18097', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(133, 'EVA OKPRIYANI', 'SF18027', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(134, 'KHAIRUR RAHMAN', 'SF18049', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(135, 'MUTIARA ANNISA', 'SF18064', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(136, 'SORAYA', 'SF18113', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(137, 'AFIFAH AULIARAHMAH', 'SF18002', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(138, 'YUNI RAHIMA BAIDATUN', 'SF18121', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(139, 'ROSA LIANA', 'SF18103', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(140, 'NADIA MASYTOH', 'SF18067', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(141, 'SALSABILLA', 'SF18104', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(142, 'DEBY ELISA MARLIYANTI', 'SF18129', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(143, 'SRI MULYANTI', 'SF18114', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(144, 'MOCHAMMAD GUESVIDHA NURHIDAYAT AS PUTERA', 'SF18055', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(145, 'NOOR MUMINAH', 'SF18074', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(146, 'NINDA ANISA CAHYANI', 'SF18070', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(147, 'FIDELLA IFARIANI PUTRI', 'SF18029', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(148, 'NAMIRA RAMADHANA', 'SF18131', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(149, 'TYA MONICA', 'SF18118', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(150, 'RIZKY SETYA HARMAELLIN', 'SF18100', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(151, 'ANASTASIA VALENTINA FEBRUESTI', 'SF18010', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(152, 'DINI AL-MIRA AZIZAH', 'SF18022', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(153, 'MUHAMMAD SYAHRIAN', 'SF18125', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(154, 'SITI RAIHANI AZIZAH', 'SF18112', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(155, 'ENDAH PURWATI', 'SF18026', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(156, 'M. HERWANDA PERDANA KUSUMA', 'SF18056', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(157, 'NUR SYIFA ROHMIYAH', 'SF18080', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(158, 'KIKI MELDA SARY', 'SF18133', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(159, 'SITI AULADIAH', 'SF18108', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(160, 'DEFI RIAS HABSARI', 'SF18017', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(161, 'FITROTUL ZAKIYAH', 'SF18032', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(162, 'SITI ISTIKOMAH', 'SF18110', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(163, 'YOLANDA PUTRI', 'SF18119', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(164, 'INDAH SARI', 'SF18043', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(165, 'NURUL AZIMAH', 'SF18082', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(166, 'TIKA NURJANAH', 'SF18117', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(167, 'NIKEN ANGGRIWARA', 'SF18138', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(168, 'SITI HAIRIAH', 'SF18109', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(169, 'RANI MAIMONAH', 'SF18087', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(170, 'NOVIA MISFA SAPUTRI', 'SF18077', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(171, 'RISNA PURNAMA DEWI', 'SF18096', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(172, 'YULIA ANNISA', 'SF18134', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(173, 'SITI NURHALIZA', 'SF18111', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(174, 'AMANAH', 'SF18009', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(175, 'FIRDHA AHLIQA PUTRI', 'SF18030', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(176, 'HUSNUL KHOTIMAH', 'SF18040', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(177, 'PIRDA', 'SF18083', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(178, 'RIRIN SRI WAHYUNI', 'SF18093', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(179, 'SITI RIZKI AMALIA RAMADHANI', 'SF18135', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(180, 'ANANTA RIZKY SEPTIANNUR', 'SF16009', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(181, 'LIFTIA APRIYUNITA', 'SF17043', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(182, 'RISMA HAIRINA', 'SF18094', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(183, 'SARIFAH RAMLAH', 'SF18105', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(184, 'HAYATUN THAIBAH', 'SF18039', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(185, 'ALFINA RIZKIA', 'SF18007', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(186, 'JUWITA PUSPITA SARI', 'SF18045', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(187, 'HAIRUNNISA', 'SF18035', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(188, 'MUHAMMAD DAIMI', 'SF18060', 'S1 Farmasi', '2018', '2023-06-12 04:03:41', '2023-06-12 04:03:41'),
(189, 'NOR HIKMAH', 'SF18076', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(190, 'AZHARI SURAYYA', 'SF18015', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(191, 'NOOR AZIZAH', 'SF18072', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(192, 'MUZDHALIFAH', 'SF18065', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(193, 'EKA SARI WELDA SAPUTRI', 'SF18023', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(194, 'NELLA FARADILLAH', 'SF18069', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(195, 'RADHIAH', 'SF18085', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(196, 'DIMAS SATYA AIYUBA', 'SF18021', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(197, 'LARAS DWI RIMADANI', 'SF18052', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(198, 'LINA MERSA', 'SF18053', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(199, 'ASYA NUR AZKIYA', 'SF18013', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(200, 'MUHAMMAD HENDRI', 'SF16066', 'S1 Farmasi', '2016', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(201, 'GARNIS SEKAR AYU LESTARI', 'SF17028', 'S1 Farmasi', '2017', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(202, 'NURLAILA HAYATIN', 'SF18081', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(203, 'INDAH PERMATA SARI', 'SF18042', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(204, 'MUHAMMAD NAJHAN MU\'ARIF', 'SF18062', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(205, 'LAILA SHOPIA', 'SF18050', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(206, 'IBNU MUBARAK', 'SF18041', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(207, 'FLAVIA AGNESZALINA NYAHU', 'SF17027', 'S1 Farmasi', '2017', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(208, 'MUHAMMAD RIDHO TRI PUTRA', 'SF17057', 'S1 Farmasi', '2017', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(209, 'MARIA YANTINA PERE', 'SF18058', 'S1 Farmasi', '2018', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(210, 'JAUZA HANA', 'SF20215', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(211, 'NANDA AMELIA RAHMI', 'SF20227', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(212, 'RIA HERVINA SARI', 'SF20236', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(213, 'MUHAMMAD RIZKY WARDANI', 'SF20225', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(214, 'LUTHFI NURFUAD', 'SF20218', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(215, 'NOOR RAHMAH', 'SF20228', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(216, 'NOVITA SARI', 'SF20230', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(217, 'DEWI RIZTY DAMAYANTI', 'SF20208', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(218, 'AULIA RAHMI', 'SF20205', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(219, 'RINA HELMINA', 'SF20237', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(220, 'YUNI FAHRIANA', 'SF20245', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(221, 'HENNY ANGGRIANI', 'SF20212', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(222, 'RISKA NOVI MELISA', 'SF20238', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(223, 'ERMA HERNIANI', 'SF20209', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(224, 'PUTRI AMAMI', 'SF20233', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(225, 'VINA MARIANA ULFAH', 'SF20244', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(226, 'KIVA RAHMATIKA', 'SF20217', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(227, 'DENI YUNITA SARI', 'SF20207', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(228, 'GUSMIAH', 'SF20211', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(229, 'FARIDA MISLAWATI', 'SF20246', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(230, 'KHALISAH', 'SF20216', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(231, 'REZENI RAMADANI', 'SF20235', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(232, 'AYU RIZKI FEBRIANA', 'SF20206', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(233, 'ASTIKA BHASMA', 'SF20204', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(234, 'HJ IDAYATI', 'SF20213', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(235, 'NOVIE HERNIYATI', 'SF20229', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(236, 'PUSPITA YULIANTY', 'SF20231', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(237, 'ISTIQOMAH', 'SF20214', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(238, 'MIFTAHUL JANNAH', 'SF20220', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(239, 'MUHAMMAD NOOR', 'SF20224', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(240, 'FERA FITRIA', 'SF20210', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(241, 'MOHAMMAD NAJIB ZAMZAM', 'SF20221', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(242, 'ABDURRAZAK SAMI', 'SF20201', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(243, 'MUHAMMAD HERIYANTO', 'SF20222', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(244, 'ADITYA SURYA DHARMA', 'SF20202', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(245, 'RIYANZA NOR ABDI', 'SF20239', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(246, 'ALDI MISBAHUDIN', 'SF20203', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(247, 'MUHAMMAD RIZQAN', 'SF20226', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(248, 'REZEKI RAHMIYANTI', 'SF20234', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(249, 'REZA RAHENDRA PERDANA', 'SF19235', 'S1 Farmasi', '2019', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(250, 'MUHAMMAD NIZAR RAMADHAN', 'SF20223', 'S1 Farmasi', '2020', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(251, 'SITI FADHILAH', 'SF19244', 'S1 Farmasi', '2019', '2023-06-12 04:03:42', '2023-06-12 04:03:42'),
(252, 'YANITHA MARIAURSULAE', 'SF19250', 'S1 Farmasi', '2019', '2023-06-12 04:03:42', '2023-06-12 04:03:42');

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
-- Indexes for table `survey_lulusan_aspek_integritas`
--
ALTER TABLE `survey_lulusan_aspek_integritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_kemampuan_berbahasa_asing`
--
ALTER TABLE `survey_lulusan_aspek_kemampuan_berbahasa_asing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_kerjasama_tim`
--
ALTER TABLE `survey_lulusan_aspek_kerjasama_tim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_komunikasi`
--
ALTER TABLE `survey_lulusan_aspek_komunikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_pengembangan_diri`
--
ALTER TABLE `survey_lulusan_aspek_pengembangan_diri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_penggunaan_teknologi`
--
ALTER TABLE `survey_lulusan_aspek_penggunaan_teknologi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_aspek_profesionalisme`
--
ALTER TABLE `survey_lulusan_aspek_profesionalisme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_lulusan_profil_pengguna_lulusan`
--
ALTER TABLE `survey_lulusan_profil_pengguna_lulusan`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `survey_lulusan_aspek_integritas`
--
ALTER TABLE `survey_lulusan_aspek_integritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_kemampuan_berbahasa_asing`
--
ALTER TABLE `survey_lulusan_aspek_kemampuan_berbahasa_asing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_kerjasama_tim`
--
ALTER TABLE `survey_lulusan_aspek_kerjasama_tim`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_komunikasi`
--
ALTER TABLE `survey_lulusan_aspek_komunikasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_pengembangan_diri`
--
ALTER TABLE `survey_lulusan_aspek_pengembangan_diri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_penggunaan_teknologi`
--
ALTER TABLE `survey_lulusan_aspek_penggunaan_teknologi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_lulusan_aspek_profesionalisme`
--
ALTER TABLE `survey_lulusan_aspek_profesionalisme`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `survey_lulusan_profil_pengguna_lulusan`
--
ALTER TABLE `survey_lulusan_profil_pengguna_lulusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_alumnis`
--
ALTER TABLE `user_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

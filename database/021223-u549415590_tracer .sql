-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2023 at 03:57 PM
-- Server version: 10.6.14-MariaDB-cll-lve
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
-- Table structure for table `bank_alumni`
--

CREATE TABLE `bank_alumni` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `alumni1` text DEFAULT NULL COMMENT 'Apakah sudah pernah mengisi formulir tracer study?*',
  `alumni2` text DEFAULT NULL COMMENT 'Tempat, tangal lahir*',
  `alumni3` text DEFAULT NULL COMMENT 'Jenis kelamin*',
  `alumni4` text DEFAULT NULL COMMENT 'No WhatsApp*',
  `alumni5` text DEFAULT NULL COMMENT 'Email*',
  `alumni6` text DEFAULT NULL COMMENT 'Alamat Lengkap*',
  `alumni7` text DEFAULT NULL COMMENT 'IPK setelah lulus*',
  `alumni8` text DEFAULT NULL COMMENT 'Tahun Masuk Kuliah di Universitas Borneo Lestari*',
  `alumni9` text DEFAULT NULL COMMENT 'Tahun Lulus (Berdasarkan Tanggal Wisuda)*',
  `alumni10` text DEFAULT NULL COMMENT 'Semester Lulus (Berdasarkan tanggal Yudisium)*',
  `alumni11` text DEFAULT NULL COMMENT 'Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda "-"*',
  `alumni12` text DEFAULT NULL COMMENT 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?*',
  `alumni13` text DEFAULT NULL COMMENT 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?',
  `alumni14` text DEFAULT NULL COMMENT 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni15` text DEFAULT NULL COMMENT '	Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni16` text DEFAULT NULL COMMENT '	Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni17` text DEFAULT NULL COMMENT 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi. Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni18` text DEFAULT NULL COMMENT 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)*',
  `alumni19` text DEFAULT NULL COMMENT 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari*',
  `alumni20` text DEFAULT NULL,
  `belum_bekerja1` text DEFAULT NULL COMMENT 'Jika sampai saat ini anda belum bekerja*',
  `belum_bekerja2` text DEFAULT NULL COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `belum_bekerja3` text DEFAULT NULL COMMENT 'Jika bersedia, hal apa yang dapat anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?*',
  `belum_bekerja4` text DEFAULT NULL COMMENT 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)*',
  `belum_bekerja5` text DEFAULT NULL COMMENT 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)*',
  `belum_bekerja6` text DEFAULT NULL COMMENT 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka)*',
  `belum_bekerja7` text DEFAULT NULL COMMENT 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban*',
  `belum_bekerja8` text DEFAULT NULL,
  `belum_bekerja9` text DEFAULT NULL,
  `belum_bekerja10` text DEFAULT NULL,
  `sudah_bekerja1` text DEFAULT NULL COMMENT 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga*',
  `sudah_bekerja2` text DEFAULT NULL COMMENT 'Jenis Pekerjaan saat ini*',
  `sudah_bekerja3` text DEFAULT NULL COMMENT 'Kapan anda mencari pekerjaan?*',
  `sudah_bekerja4` text DEFAULT NULL COMMENT 'Nama institusi atau jenis usaha tempat anda bekerja*',
  `sudah_bekerja5` text DEFAULT NULL COMMENT 'Jabatan pekerjaan*',
  `sudah_bekerja6` text DEFAULT NULL COMMENT 'Apa status pekerjaan anda saat ini?*',
  `sudah_bekerja7` text DEFAULT NULL COMMENT 'Lama periode pekerjaan saat ini*',
  `sudah_bekerja8` text DEFAULT NULL COMMENT 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?*',
  `sudah_bekerja9` text DEFAULT NULL COMMENT 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan*',
  `sudah_bekerja10` text DEFAULT NULL COMMENT 'Alamat email atasan Anda*',
  `sudah_bekerja11` text DEFAULT NULL COMMENT 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja*',
  `sudah_bekerja12` text DEFAULT NULL COMMENT 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?*',
  `sudah_bekerja13` text DEFAULT NULL COMMENT 'Dari mana anda mendapatkan informasi pekerjaan pertama?*',
  `sudah_bekerja14` text DEFAULT NULL COMMENT 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)*',
  `sudah_bekerja15` text DEFAULT NULL COMMENT 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?*',
  `sudah_bekerja16` text DEFAULT NULL COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `sudah_bekerja17` text DEFAULT NULL COMMENT 'Pernahkan anda pindah bekerja?*',
  `sudah_bekerja18` text DEFAULT NULL COMMENT 'Apakah alasan anda pindah bekerja?*',
  `sudah_bekerja19` text DEFAULT NULL COMMENT 'Nomor WhatsApp Pimpinan/Atasan*',
  `sudah_bekerja20` text DEFAULT NULL COMMENT 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)*',
  `sudah_bekerja21` text DEFAULT NULL COMMENT 'Apa tingkat tempat kerja Anda ?*',
  `sudah_bekerja22` text DEFAULT NULL COMMENT 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?*',
  `sudah_bekerja23` text DEFAULT NULL,
  `sudah_bekerja24` text DEFAULT NULL,
  `sudah_bekerja25` text DEFAULT NULL,
  `berwirausaha1` text DEFAULT NULL COMMENT 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga*',
  `berwirausaha2` text DEFAULT NULL COMMENT 'Jenis Pekerjaan saat ini*',
  `berwirausaha3` text DEFAULT NULL COMMENT 'Kapan anda mencari pekerjaan?*',
  `berwirausaha4` text DEFAULT NULL COMMENT 'Nama institusi atau jenis usaha tempat anda bekerja*',
  `berwirausaha5` text DEFAULT NULL COMMENT 'Jabatan pekerjaan*',
  `berwirausaha6` text DEFAULT NULL COMMENT 'Apa status pekerjaan anda saat ini?*',
  `berwirausaha7` text DEFAULT NULL COMMENT 'Lama periode pekerjaan saat ini*',
  `berwirausaha8` text DEFAULT NULL COMMENT 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?*',
  `berwirausaha9` text DEFAULT NULL COMMENT 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan*',
  `berwirausaha10` text DEFAULT NULL COMMENT 'Alamat email atasan Anda*',
  `berwirausaha11` text DEFAULT NULL COMMENT 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja*',
  `berwirausaha12` text DEFAULT NULL COMMENT 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?*',
  `berwirausaha13` text DEFAULT NULL COMMENT 'Dari mana anda mendapatkan informasi pekerjaan pertama?*',
  `berwirausaha14` text DEFAULT NULL COMMENT 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)*',
  `berwirausaha15` text DEFAULT NULL COMMENT 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?*',
  `berwirausaha16` text DEFAULT NULL COMMENT 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?*',
  `berwirausaha17` text DEFAULT NULL COMMENT 'Pernahkan anda pindah bekerja?*',
  `berwirausaha18` text DEFAULT NULL COMMENT 'Apakah alasan anda pindah bekerja?*',
  `berwirausaha19` text DEFAULT NULL COMMENT 'Nama usaha Anda*',
  `berwirausaha20` text DEFAULT NULL COMMENT 'Lama periode Anda berwirausaha*',
  `berwirausaha21` text DEFAULT NULL COMMENT 'Bagaimana status kepemilikan perusahaan Anda saat ini?*',
  `berwirausaha22` text DEFAULT NULL COMMENT 'Jenis usaha apakah yang Anda lakukan saat ini?*',
  `berwirausaha23` text DEFAULT NULL COMMENT 'Motivasi apa yang mendorong Anda membuka usaha mandiri?*',
  `berwirausaha24` text DEFAULT NULL COMMENT 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?*',
  `berwirausaha25` text DEFAULT NULL COMMENT 'Berapa penghasilan pertama anda dalam satu bulan?*',
  `berwirausaha26` text DEFAULT NULL COMMENT 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha*',
  `berwirausaha27` text DEFAULT NULL,
  `berwirausaha28` text DEFAULT NULL,
  `berwirausaha29` text DEFAULT NULL,
  `berwirausaha30` text DEFAULT NULL,
  `lanjut_pendidikan1` text DEFAULT NULL COMMENT 'Nama institusi*',
  `lanjut_pendidikan2` text DEFAULT NULL COMMENT 'Program studi yang diambil*',
  `lanjut_pendidikan3` text DEFAULT NULL COMMENT 'Tahun Akademik Masuk*',
  `lanjut_pendidikan4` text DEFAULT NULL COMMENT 'Semester masuk kuliah*',
  `lanjut_pendidikan5` text DEFAULT NULL COMMENT 'Nama ketua program studi/dekan*',
  `lanjut_pendidikan6` text DEFAULT NULL COMMENT 'Sumber biaya (lanjut pendidikan)*',
  `lanjut_pendidikan7` text DEFAULT NULL,
  `lanjut_pendidikan8` text DEFAULT NULL,
  `lanjut_pendidikan9` text DEFAULT NULL,
  `lanjut_pendidikan10` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_alumni`
--

INSERT INTO `bank_alumni` (`id`, `nama`, `nim`, `prodi`, `angkatan`, `kategori`, `alumni1`, `alumni2`, `alumni3`, `alumni4`, `alumni5`, `alumni6`, `alumni7`, `alumni8`, `alumni9`, `alumni10`, `alumni11`, `alumni12`, `alumni13`, `alumni14`, `alumni15`, `alumni16`, `alumni17`, `alumni18`, `alumni19`, `alumni20`, `belum_bekerja1`, `belum_bekerja2`, `belum_bekerja3`, `belum_bekerja4`, `belum_bekerja5`, `belum_bekerja6`, `belum_bekerja7`, `belum_bekerja8`, `belum_bekerja9`, `belum_bekerja10`, `sudah_bekerja1`, `sudah_bekerja2`, `sudah_bekerja3`, `sudah_bekerja4`, `sudah_bekerja5`, `sudah_bekerja6`, `sudah_bekerja7`, `sudah_bekerja8`, `sudah_bekerja9`, `sudah_bekerja10`, `sudah_bekerja11`, `sudah_bekerja12`, `sudah_bekerja13`, `sudah_bekerja14`, `sudah_bekerja15`, `sudah_bekerja16`, `sudah_bekerja17`, `sudah_bekerja18`, `sudah_bekerja19`, `sudah_bekerja20`, `sudah_bekerja21`, `sudah_bekerja22`, `sudah_bekerja23`, `sudah_bekerja24`, `sudah_bekerja25`, `berwirausaha1`, `berwirausaha2`, `berwirausaha3`, `berwirausaha4`, `berwirausaha5`, `berwirausaha6`, `berwirausaha7`, `berwirausaha8`, `berwirausaha9`, `berwirausaha10`, `berwirausaha11`, `berwirausaha12`, `berwirausaha13`, `berwirausaha14`, `berwirausaha15`, `berwirausaha16`, `berwirausaha17`, `berwirausaha18`, `berwirausaha19`, `berwirausaha20`, `berwirausaha21`, `berwirausaha22`, `berwirausaha23`, `berwirausaha24`, `berwirausaha25`, `berwirausaha26`, `berwirausaha27`, `berwirausaha28`, `berwirausaha29`, `berwirausaha30`, `lanjut_pendidikan1`, `lanjut_pendidikan2`, `lanjut_pendidikan3`, `lanjut_pendidikan4`, `lanjut_pendidikan5`, `lanjut_pendidikan6`, `lanjut_pendidikan7`, `lanjut_pendidikan8`, `lanjut_pendidikan9`, `lanjut_pendidikan10`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '3,00-3,59', 'Ganjil 2018/2019', '2020', 'Genap', '≤ 3 bulan', 'Ya', 'Berbagi pengalaman/keahlian,Sarana dan prasarana pengembangan kampus', '4', '4', '3', '3', '3', 'Menambah ruang kelas', NULL, 'Sudah melamar tapi tidak dipanggil', 'IPK/kemampuan akademik,Pengalaman lain: kursus keterampilan', 'Berbagi pengalaman/keahlian,Sarana dan prasarana pengembangan kampus', '3', '0', '0', 'Tidak, tapi saya sedang menunggu hasil lamaran kerja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'alamat', '2,60-2,99', 'Genap 2021/2022', '2020', 'Ganjil', '3 < MT < 12', 'Tidak', NULL, '2', '4', '1', '3', '2', 'ok', NULL, 'Sudah melamar tapi tidak dipanggil', 'Asal perguruan tinggi,Ekstra kurikuler: pengalaman organisasi, kelompok studi', 'Informasi lowongan pekerjaan,Fasilitasi tempat bekerja', '1', '1', '1', 'Tidak, tapi saya sedang menunggu hasil lamaran kerja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'alamat', '3,59-4,00', 'Ganjil 2023/2024', '2023', 'Genap', '-', 'Ya', NULL, '4', '4', '4', '4', '4', 'ok', NULL, 'Menjadi ibu rumah tangga', 'IPK/kemampuan akademik', 'Fasilitasi tempat bekerja', '1', '2', '2', 'Tidak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ADMIN', '1', 'D3 Farmasi', '2018', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'alamat', '3,59-4,00', 'Ganjil 2023/2024', '2023', 'Genap', '-', 'Ya', NULL, '4', '4', '4', '4', '4', 'ok', NULL, 'Menjadi ibu rumah tangga', 'IPK/kemampuan akademik', 'Fasilitasi tempat bekerja', '1', '2', '2', 'Tidak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ADMIN', '1', 'D3 Farmasi', '2018', 'Sudah Bekerja', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Perempuan', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '2,60-2,99', 'Genap 2020/2021', '2019', 'Genap', 'Ya', 'Kerjasama penelitian', '2', '2', '1', '2', NULL, '2', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swasta (Apotek/PBF/Rumah Sakit)', 'Administrasi', 'Setelah lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'ramadhani.zulfahmi@gmail.com', 'z', 'Ya', 'Ikatan Alumni', 'Ya, karena iklim kerja menyenangkan', 'Rp 5.000.000 – 10.000.000', 'Ekstra kurikuler: pengalaman organisasi, kelompok studi', 'belum pernah', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Nasional/Wiraswasta berbadan hukum', 'Setingkat Lebih Rendah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ADMIN', '1', 'D3 Farmasi', '2018', 'Berwirausaha', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '3,00-3,59', 'Ganjil 2018/2019', '2018', 'Ganjil', 'Tidak', 'Informasi lowongan pekerjaan', '2', '3', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUMN', 'Praktisi', 'Sebelum lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'ramadhani.zulfahmi@gmail.com', 'z', 'Ya', 'Program Studi Universitas Borneo Lestari', 'Ya, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Kepribadian', '2 kali', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Kemitraan', 'Pabrik', 'Tidak suka bekerja dengan orang lain', 'Ya', 'Rp 15.000.000 – 25.000.000', 'z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ADMIN', '1', 'D3 Farmasi', '2018', 'Berwirausaha', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '3,00-3,59', 'Ganjil 2018/2019', '2018', 'Ganjil', 'Tidak', 'Informasi lowongan pekerjaan', '2', '3', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUMN', 'Praktisi', 'Sebelum lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'ramadhani.zulfahmi@gmail.com', 'z', 'Ya', 'Program Studi Universitas Borneo Lestari', 'Ya, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Kepribadian', '2 kali', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Kemitraan', 'Pabrik', 'Tidak suka bekerja dengan orang lain', 'Ya', 'Rp 15.000.000 – 25.000.000', 'z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ADMIN', '1', 'S1 Farmasi', '2018', 'Berwirausaha', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '3,00-3,59', 'Ganjil 2018/2019', '2018', 'Ganjil', 'Tidak', 'Informasi lowongan pekerjaan', '2', '3', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pemerintah', 'Praktisi', 'Sebelum lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'ramadhani.zulfahmi@gmail.com', 'z', 'Ya', 'Program Studi Universitas Borneo Lestari', 'Ya, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Kepribadian', '2 kali', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Kemitraan', 'Pabrik', 'Tidak suka bekerja dengan orang lain', 'Ya', 'Rp 15.000.000 – 25.000.000', 'z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ADMIN', '1', 'D3 Farmasi', '2018', 'Berwirausaha', 'Pertama kali mengisi', 'halimun, 1 Januari 2000', 'Laki-laki', '081234567890', 'ramadhani.zulfahmi@gmail.com', 'jl. kayu', '3,00-3,59', 'Ganjil 2018/2019', '2018', 'Ganjil', 'Tidak', 'Informasi lowongan pekerjaan', '2', '3', '2', '3', NULL, '3', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pemerintah', 'Praktisi', 'Sebelum lulus', 'z', 'z', 'Honorer', 'z', 'Tidak', 'z', 'ramadhani.zulfahmi@gmail.com', 'z', 'Tidak', 'Program Studi Universitas Borneo Lestari', 'Ya, karena kedudukan/jabatan sesuai', 'Rp 2.000.000 – 5.000.000', 'Kepribadian', '2 kali', 'Manajemen instansi/Lembaga perusahaan', 'z', 'z', 'Kemitraan', 'Pabrik', 'Tidak suka bekerja dengan orang lain', 'Ya', 'Rp 15.000.000 – 25.000.000', 'z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'LIHIMI', 'DF19002', 'D3 Farmasi', '2019', 'Belum Bekerja', 'Pertama kali mengisi', 'CONTOH, 17 DESEMBER 1996', 'Laki-laki', '085158902918', 'dessyahputra@unbl.ac.id', 'Martapura', '3,00-3,59', 'Ganjil 2019/2020', '2021', 'Genap', '3 < MT < 12', 'Tidak', 'on', '2', '3', '2', '2', '3', 'Fasilitas', NULL, 'Sudah melamar tapi tidak dipanggil', 'Kepribadian,Ekstra kurikuler: pengalaman organisasi, kelompok studi', NULL, '1', '0', '0', 'Tidak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Pertama kali mengisi', '1', 'Perempuan', '1', '1', '1', '2,00-2,59', 'Ganjil 2018/2019', '2018', 'Genap', '≤ 3 bulan', 'Tidak', 'Informasi lowongan pekerjaan', '3', '3', '2', '3', '2', '2', NULL, 'TRTTK belum keluar', 'Kepribadian', '1', '1', '1', 'Ya, saya akan mulai bekerja dalam 2 minggu ke depan', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Pertama kali mengisi', '1', 'Perempuan', '1', 'natriumination@gmail.com', '1', '3,59-4,00', 'Genap 2020/2021', '2020', 'Genap', 'MT ≥ 12', 'Tidak', 'Beasiswa untuk adik kelas yang memerlukan', '3', '2', '3', '2', '2', '2', NULL, 'Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll)', 'Kepribadian', '1', '1', '1', 'Ya, saya akan mulai bekerja dalam 2 minggu ke depan', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', '1', 'Laki-laki', '1', 'natriumination@gmail.com', '1', '3,00-3,59', 'Ganjil 2020/2021', '2021', 'Genap', '3 < MT < 12', 'Tidak', 'Kerjasama penelitian,Fasilitasi tempat bekerja', '4', '2', '3', '2', '4', '2', NULL, 'Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll)', 'Ekstra kurikuler: pengalaman organisasi, kelompok studi', '1', '1', '1', 'Tidak, tapi saya sedang menunggu hasil lamaran kerja', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', '1', 'Laki-laki', '1', 'natriumination@gmail.com', '1', '3,00-3,59', 'Ganjil 2020/2021', '2021', 'Genap', '3 < MT < 12', 'Tidak', 'Kerjasama penelitian,Fasilitasi tempat bekerja', '4', '2', '3', '2', '4', '2', NULL, 'Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll)', 'Ekstra kurikuler: pengalaman organisasi, kelompok studi', '1', '1', '1', 'Tidak, tapi saya sedang menunggu hasil lamaran kerja', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'LIHIMI', 'DF19002', 'D3 Farmasi', '2019', 'Belum Bekerja', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama', 'CONTOH, 17 DESEMBER 1996', 'Laki-laki', '085158902918', 'dessyahputra@unbl.ac.id', 'Martapura', '3,00-3,59', 'Ganjil 2021/2022', '2023', 'Genap', '≤ 3 bulan', 'Ya', 'Sarana dan prasarana pengembangan kampus', '2', '2', '2', '2', '2', 'Fasilitas', NULL, 'TRTTK belum keluar', 'Kepribadian,Ekstra kurikuler: pengalaman organisasi, kelompok studi', '1', '1', '0', 'Tidak', 'Instagram : pmb.unbl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `bank51` text DEFAULT NULL,
  `bank52` text DEFAULT NULL,
  `bank53` text DEFAULT NULL,
  `bank54` text DEFAULT NULL,
  `bank55` text DEFAULT NULL,
  `bank56` text DEFAULT NULL,
  `bank57` text DEFAULT NULL,
  `bank58` text DEFAULT NULL,
  `bank59` text DEFAULT NULL,
  `bank60` text DEFAULT NULL,
  `bank61` text DEFAULT NULL,
  `bank62` text DEFAULT NULL,
  `bank63` text DEFAULT NULL,
  `bank64` text DEFAULT NULL,
  `bank65` text DEFAULT NULL,
  `bank66` text DEFAULT NULL,
  `bank67` text DEFAULT NULL,
  `bank68` text DEFAULT NULL,
  `bank69` text DEFAULT NULL,
  `bank70` text DEFAULT NULL,
  `bank71` text DEFAULT NULL,
  `bank72` text DEFAULT NULL,
  `bank73` text DEFAULT NULL,
  `bank74` text DEFAULT NULL,
  `bank75` text DEFAULT NULL,
  `bank76` text DEFAULT NULL,
  `bank77` text DEFAULT NULL,
  `bank78` text DEFAULT NULL,
  `bank79` text DEFAULT NULL,
  `bank80` text DEFAULT NULL,
  `bank81` text DEFAULT NULL,
  `bank82` text DEFAULT NULL,
  `bank83` text DEFAULT NULL,
  `bank84` text DEFAULT NULL,
  `bank85` text DEFAULT NULL,
  `bank86` text DEFAULT NULL,
  `bank87` text DEFAULT NULL,
  `bank88` text DEFAULT NULL,
  `bank89` text DEFAULT NULL,
  `bank90` text DEFAULT NULL,
  `bank91` text DEFAULT NULL,
  `bank92` text DEFAULT NULL,
  `bank93` text DEFAULT NULL,
  `bank94` text DEFAULT NULL,
  `bank95` text DEFAULT NULL,
  `bank96` text DEFAULT NULL,
  `bank97` text DEFAULT NULL,
  `bank98` text DEFAULT NULL,
  `bank99` text DEFAULT NULL,
  `bank100` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_lulusans`
--

INSERT INTO `bank_lulusans` (`id`, `bank1`, `bank2`, `bank3`, `bank4`, `bank5`, `bank6`, `bank7`, `bank8`, `bank9`, `bank10`, `bank11`, `bank12`, `bank13`, `bank14`, `bank15`, `bank16`, `bank17`, `bank18`, `bank19`, `bank20`, `bank21`, `bank22`, `bank23`, `bank24`, `bank25`, `bank26`, `bank27`, `bank28`, `bank29`, `bank30`, `bank31`, `bank32`, `bank33`, `bank34`, `bank35`, `bank36`, `bank37`, `bank38`, `bank39`, `bank40`, `bank41`, `bank42`, `bank43`, `bank44`, `bank45`, `bank46`, `bank47`, `bank48`, `bank49`, `bank50`, `bank51`, `bank52`, `bank53`, `bank54`, `bank55`, `bank56`, `bank57`, `bank58`, `bank59`, `bank60`, `bank61`, `bank62`, `bank63`, `bank64`, `bank65`, `bank66`, `bank67`, `bank68`, `bank69`, `bank70`, `bank71`, `bank72`, `bank73`, `bank74`, `bank75`, `bank76`, `bank77`, `bank78`, `bank79`, `bank80`, `bank81`, `bank82`, `bank83`, `bank84`, `bank85`, `bank86`, `bank87`, `bank88`, `bank89`, `bank90`, `bank91`, `bank92`, `bank93`, `bank94`, `bank95`, `bank96`, `bank97`, `bank98`, `bank99`, `bank100`, `created_at`, `updated_at`) VALUES
(1, 'BUDI COMP', 'BJB', 'BUDI', '085158902918', 'dessyahputra@unbl.ac.id', 'LIHIMI', 'TTK', '2022', '3', '3', '3', '3', '4', '4', '4', '3', '3', '3', '3', '3', '3', '4', '3', '3', '3', '3', '4', '4', '3', '3', '4', '4', '3', '3', '3', '4', 'MAJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(22, '2023_03_26_134503_create_survey_lulusan_aspek_pengembangan_diris_table', 1),
(23, '2023_06_21_015933_create_bank_alumnis_table', 2),
(24, 'x2023_02_17_125220_create_bank_alumnis_table', 3),
(25, '2023_06_21_020749_create_bank_alumnis_table', 4),
(26, '2023_06_21_125220_create_bank_alumnis_table', 5),
(27, '2023_06_21_103000_create_bank_alumni_table', 6),
(28, '2023_06_21_103500_create_bank_alumni_table', 7),
(29, '2023_06_21_103600_create_bank_alumni_table', 8),
(30, '2023_06_21_104800_create_bank_alumni_table', 9),
(31, '2023_06_21_104900_create_bank_alumni_table', 10),
(32, '2023_06_21_100100_create_bank_alumni_table', 11),
(33, '2023_06_21_141000_create_bank_alumni_table', 12);

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
-- Table structure for table `respon_email`
--

CREATE TABLE `respon_email` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `survey` text NOT NULL,
  `respon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `respon_email`
--

INSERT INTO `respon_email` (`id`, `nim`, `nama`, `email`, `prodi`, `angkatan`, `kategori`, `survey`, `respon`, `created_at`, `updated_at`) VALUES
(1, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Pertama kali mengisi;halimun, 1 Januari 2000;Laki-laki;081234567890;natriumination@gmail.com;jl. kayu;3,59-4,00;Ganjil 2021/2022;2021;Genap;≤ 3 bulan;Tidak;Kerjasama penelitian;4;2;3;4;2;Menambah ruang kelas;TRTTK belum keluar;Kepribadian;3;2;2;Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan;@a', '2023-08-07 09:28:45', '2023-08-07 09:28:45'),
(2, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Sudah Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *;Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga;Jenis Pekerjaan saat ini;Kapan anda mencari pekerjaan?;Nama institusi atau jenis usaha tempat anda bekerja;Jabatan pekerjaan;Apa status pekerjaan anda saat ini?;Lama periode pekerjaan saat ini;Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?;Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan;Alamat email atasan Anda;Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja;Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?;Dari mana anda mendapatkan informasi pekerjaan pertama?;Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu);Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Pernahkan anda pindah bekerja?;Apakah alasan anda pindah bekerja?;Nomor WhatsApp Pimpinan/Atasan;Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi);Apa tingkat tempat kerja Anda ?;Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?;Nama Akun Media Sosial (aktif)', 'Pertama kali mengisi;halimun, 1 Januari 2000;Laki-laki;081234567890;natriumination@gmail.com;jl. kayu;3,59-4,00;Ganjil 2023/2024;2023;Genap;Tidak;Kerjasama penelitian,Beasiswa untuk adik kelas yang memerlukan;4;4;4;4;4;Menambah ruang parkir;Swasta (Apotek/PBF/Rumah Sakit);Praktisi;Setelah lulus;z;z;Kontrak penuh waktu;z;Tidak;z;ramadhani.zulfahmi@gmail.com;z;Tidak;Relasi keluarga dan teman;Ya, karena iklim kerja menyenangkan;Kurang dari Rp 2.000.000;Ekstra kurikuler: pengalaman organisasi, kelompok studi,Pengalaman lain: penguasaan bahasa asing;> 2 kali;on;z;z;Multinasional/Internasional;Tidak Perlu Pendidikan Tinggi;@a', '2023-08-07 09:45:50', '2023-08-07 09:45:50'),
(3, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Lanjut Pendidikan', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;No WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Nama institusi;Program studi yang diambil;Tahun Akademik Masuk;Semester masuk kuliah;Nama ketua program studi/dekan;Sumber biaya (lanjut pendidikan)', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama;halimun, 1 Januari 2000;Perempuan;081234567890;natriumination@gmail.com;jl. kayu;3,59-4,00;Genap 2022/2023;2023;Genap;Ya;Informasi lowongan pekerjaan,Kerjasama penelitian,Fasilitasi tempat bekerja;z;prodi yg diambil;2023;Ganjil;ketua program studi;Mandiri', '2023-08-07 09:48:29', '2023-08-07 09:48:29'),
(4, '1', 'ADMIN', 'ramadhani.zulfahmi@gmail.com', 'D3 Farmasi', '2017', 'Sudah Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *;Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga;Jenis Pekerjaan saat ini;Kapan anda mencari pekerjaan?;Nama institusi atau jenis usaha tempat anda bekerja;Jabatan pekerjaan;Apa status pekerjaan anda saat ini?;Lama periode pekerjaan saat ini;Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?;Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan;Alamat email atasan Anda;Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja;Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?;Dari mana anda mendapatkan informasi pekerjaan pertama?;Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu);Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Pernahkan anda pindah bekerja?;Apakah alasan anda pindah bekerja?;Nomor WhatsApp Pimpinan/Atasan;Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi);Apa tingkat tempat kerja Anda ?;Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?;Nama Akun Media Sosial (aktif)', 'Pertama kali mengisi;halimun, 1 Januari 2000;Perempuan;081234567890;ramadhani.zulfahmi@gmail.com;jl. kayu;3,59-4,00;Genap 2020/2021;2023;Genap;Ya;Kerjasama penelitian,Beasiswa untuk adik kelas yang memerlukan,Sarana dan prasarana pengembangan kampus;4;3;2;4;2;Menambah ruang kelas;BUMN;Akademisi;Sebelum lulus;z;z;Kontrak paruh waktu;z;Tidak;z;ramadhani.zulfahmi@gmail.com;z;Ya;Relasi keluarga dan teman;Ya, karena iklim kerja menyenangkan,Tidak, karena iklim kerja tidak menyenangkan;Rp 10.000.000 – 15.000.000;Pengalaman lain: kursus keterampilan;1 kali;Manajemen instansi/Lembaga perusahaan;z;z;Nasional/Wiraswasta berbadan hukum;Setingkat Lebih Rendah;@a', '2023-08-07 11:47:25', '2023-08-07 11:47:25'),
(5, '1', 'ADMIN', '1', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Pertama kali mengisi;1;Perempuan;1;1;1;2,00-2,59;Ganjil 2018/2019;2018;Genap;≤ 3 bulan;Tidak;Informasi lowongan pekerjaan;3;3;2;3;2;2;TRTTK belum keluar;Kepribadian;1;1;1;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;1', '2023-08-17 18:57:35', '2023-08-17 18:57:35'),
(6, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Pertama kali mengisi;1;Perempuan;1;natriumination@gmail.com;1;3,59-4,00;Genap 2020/2021;2020;Genap;MT ≥ 12;Tidak;Beasiswa untuk adik kelas yang memerlukan;3;2;3;2;2;2;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);Kepribadian;1;1;1;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;1', '2023-08-17 18:58:48', '2023-08-17 18:58:48'),
(7, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama;1;Laki-laki;1;natriumination@gmail.com;1;3,00-3,59;Ganjil 2020/2021;2021;Genap;3 < MT < 12;Tidak;Kerjasama penelitian,Fasilitasi tempat bekerja;4;2;3;2;4;2;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);Ekstra kurikuler: pengalaman organisasi, kelompok studi;1;1;1;Tidak, tapi saya sedang menunggu hasil lamaran kerja;1', '2023-08-17 19:10:24', '2023-08-17 19:10:24'),
(8, '1', 'ADMIN', 'natriumination@gmail.com', 'D3 Farmasi', '2017', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama;1;Laki-laki;1;natriumination@gmail.com;1;3,00-3,59;Ganjil 2020/2021;2021;Genap;3 < MT < 12;Tidak;Kerjasama penelitian,Fasilitasi tempat bekerja;4;2;3;2;4;2;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);Ekstra kurikuler: pengalaman organisasi, kelompok studi;1;1;1;Tidak, tapi saya sedang menunggu hasil lamaran kerja;1', '2023-08-17 19:11:11', '2023-08-17 19:11:11'),
(9, 'DF19002', 'LIHIMI', 'dessyahputra@unbl.ac.id', 'D3 Farmasi', '2019', 'Belum Bekerja', 'Apakah sudah pernah mengisi formulir tracer study?;Tempat, tangal lahir;Jenis kelamin;Nomor WhatsApp;Email;Alamat Lengkap;IPK setelah lulus;Tahun Masuk Kuliah di Universitas Borneo Lestari;Tahun Lulus (Berdasarkan Tanggal Wisuda);Semester Lulus (Berdasarkan tanggal Yudisium);	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\";Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?;Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?;Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik);Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari;Jika sampai saat ini anda belum bekerja;Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?;Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka);Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka);Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban;Nama Akun Media Sosial (aktif)', 'Sudah pernah mengisi dan hendak update data pekerjaan pertama;CONTOH, 17 DESEMBER 1996;Laki-laki;085158902918;dessyahputra@unbl.ac.id;Martapura;3,00-3,59;Ganjil 2021/2022;2023;Genap;≤ 3 bulan;Ya;Sarana dan prasarana pengembangan kampus;2;2;2;2;2;Fasilitas;TRTTK belum keluar;Kepribadian,Ekstra kurikuler: pengalaman organisasi, kelompok studi;1;1;0;Tidak;Instagram : pmb.unbl', '2023-08-29 07:57:54', '2023-08-29 07:57:54');

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
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 10:48:13', '2023-03-13 10:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 10:48:49', '2023-03-13 10:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 10:49:08', '2023-03-13 10:49:08'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-13 10:49:19', '2023-07-18 01:13:11'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 10:49:28', '2023-03-13 10:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 10:49:36', '2023-03-13 10:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 10:50:41', '2023-03-13 10:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 10:51:31', '2023-03-13 10:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 10:52:18', '2023-03-13 10:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 10:52:45', '2023-03-13 10:52:45'),
(11, '11', '	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda \"-\"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-03-13 10:53:18', '2023-03-13 10:53:18'),
(12, '12', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 16:53:28', '2023-03-08 21:18:23'),
(13, '13', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 16:53:52', '2023-03-14 13:11:05'),
(14, '14', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(15, '15', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:17', '2023-02-23 16:55:17'),
(16, '16', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:57', '2023-03-08 21:20:23'),
(17, '17', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:56:49', '2023-03-08 21:20:44'),
(18, '18', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:57:27', '2023-03-08 21:22:02'),
(19, '19', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 16:57:52', '2023-03-08 21:23:37'),
(20, '20', 'Jika sampai saat ini anda belum bekerja', 'Sudah melamar tapi tidak dipanggil;Sudah mengikuti tes/interview/training tapi tidak lulus;Belum ada lowongan kerja yang sesuai dengan minat saya (karir, gaji, dll);TRTTK belum keluar;Menjadi ibu rumah tangga', '0', '1', '1', '2023-02-23 16:50:31', '2023-03-08 21:16:55'),
(21, '21', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 17:20:37', '2023-02-23 17:20:37'),
(23, '23', 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama ? (tulis menggunakan angka)', '', '1', '0', '1', '2023-03-08 21:39:54', '2023-03-08 21:40:40'),
(24, '24', 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda ? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 21:40:32', '2023-03-08 21:40:32'),
(25, '25', 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara? (tulis menggunakan angka)', '', '0', '0', '1', '2023-03-08 21:41:26', '2023-03-13 22:43:18'),
(26, '26', 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah satu jawaban', 'Tidak;Tidak, tapi saya sedang menunggu hasil lamaran kerja;Ya, saya akan mulai bekerja dalam 2 minggu ke depan;Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan', '0', '1', '1', '2023-03-08 21:42:50', '2023-03-13 23:56:04'),
(27, '27', 'Nama Akun Media Sosial (aktif)', '', '0', '0', '1', '2023-07-18 01:12:06', '2023-07-18 01:12:06');

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
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 10:48:13', '2023-03-13 10:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 10:48:49', '2023-03-13 10:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 10:49:08', '2023-03-13 10:49:08'),
(4, '4', 'No WhatsApp', '', '0', '0', '1', '2023-03-13 10:49:19', '2023-03-13 10:49:19'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 10:49:28', '2023-03-13 10:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 10:49:36', '2023-03-13 10:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 10:50:41', '2023-03-13 10:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 10:51:31', '2023-03-13 10:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 10:52:18', '2023-03-13 10:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 10:52:45', '2023-03-13 10:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 16:53:28', '2023-03-08 21:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(13, '13', 'Nama institusi', '', '0', '0', '1', '2023-02-23 16:51:29', '2023-02-23 16:51:36'),
(14, '14', 'Program studi yang diambil', '', '0', '0', '1', '2023-02-23 16:52:04', '2023-02-23 16:52:04'),
(15, '15', 'Tahun Akademik Masuk', '', '0', '0', '1', '2023-02-23 16:52:12', '2023-03-08 21:17:18'),
(16, '16', 'Semester masuk kuliah', 'Genap;Ganjil', '0', '0', '1', '2023-02-23 16:52:41', '2023-02-23 16:52:41'),
(17, '17', 'Nama ketua program studi/dekan', '', '0', '0', '1', '2023-02-23 16:53:03', '2023-03-08 21:17:39'),
(18, '18', 'Sumber biaya (lanjut pendidikan)', 'Mandiri;Beasiswa', '0', '0', '1', '2023-03-08 21:33:14', '2023-03-08 21:33:14');

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
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 10:48:13', '2023-03-13 10:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 10:48:49', '2023-03-13 10:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 10:49:08', '2023-03-13 10:49:08'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-13 10:49:19', '2023-07-18 01:12:51'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 10:49:28', '2023-03-13 10:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 10:49:36', '2023-03-13 10:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 10:50:41', '2023-03-13 10:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 10:51:31', '2023-03-13 10:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 10:52:18', '2023-03-13 10:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 10:52:45', '2023-03-13 10:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 16:53:28', '2023-03-08 21:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:17', '2023-02-23 16:55:17'),
(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:57', '2023-03-08 21:20:23'),
(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:56:49', '2023-03-08 21:20:44'),
(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:57:27', '2023-03-08 21:22:02'),
(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 16:57:52', '2023-03-08 21:23:37'),
(19, '19', 'Jenis Pekerjaan/Instansi saat ini. Tuliskan Bidang perkerjaan saat ini termasuk bagian atau departemen jika bekerja pada suatu pemerintahan atau lembaga', 'Pemerintah;BUMN;Swasta (Apotek/PBF/Rumah Sakit);Lembaga Non Profit;Wiraswasta', '0', '1', '1', '2023-02-23 17:00:24', '2023-07-18 01:15:36'),
(20, '20', 'Jenis Pekerjaan saat ini', 'Akademisi;Peneliti;Administrasi;Praktisi;PBF;Apotek;Dinas kesehatan;Rumah sakit;Toko Obat', '0', '1', '1', '2023-02-23 17:02:00', '2023-02-23 17:02:00'),
(21, '21', 'Kapan anda mencari pekerjaan?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 17:02:54', '2023-02-23 17:02:54'),
(22, '22', 'Nama institusi atau jenis usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 17:10:09', '2023-02-23 17:10:09'),
(23, '23', 'Jabatan pekerjaan', '', '0', '0', '1', '2023-02-23 17:10:22', '2023-02-23 17:10:22'),
(24, '24', 'Apa status pekerjaan anda saat ini?', 'Tenaga tetap;Honorer;Kontrak paruh waktu;Kontrak penuh waktu', '0', '1', '1', '2023-02-23 17:11:17', '2023-02-23 17:11:17'),
(25, '25', 'Lama periode pekerjaan saat ini', '', '0', '0', '1', '2023-02-23 17:11:30', '2023-02-23 17:11:30'),
(26, '26', 'Apakah instansi tempat Anda bekerja saat ini merupakan pekerjaan pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 17:11:48', '2023-02-23 17:12:14'),
(27, '27', 'Nama atasan langsung Anda (beserta gelar). Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 17:12:36', '2023-02-23 17:12:36'),
(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 17:13:41', '2023-02-23 17:13:41'),
(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 17:14:29', '2023-02-23 17:14:29'),
(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 17:14:53', '2023-02-23 17:14:53'),
(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 17:15:34', '2023-02-23 18:26:51'),
(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 17:16:39', '2023-02-23 17:17:56'),
(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 17:19:07', '2023-02-23 17:19:07'),
(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 17:20:37', '2023-02-23 17:20:37'),
(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 17:21:24', '2023-02-23 17:21:24'),
(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 22:22:18', '2023-02-23 17:22:50'),
(37, '37', 'Nomor WhatsApp Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 21:25:46', '2023-03-08 21:25:46'),
(38, '38', 'Alamat Lengkap Tempat anda bekerja (nama jalan, kelurahan, kecamatan, kabupaten dan provinsi)', '', '0', '0', '1', '2023-03-08 21:27:55', '2023-03-08 21:27:55'),
(39, '39', 'Apa tingkat tempat kerja Anda ?', 'Lokal/Wilayah/Wiraswasta tidak berbadan hukum;Nasional/Wiraswasta berbadan hukum;Multinasional/Internasional', '0', '0', '1', '2023-03-08 21:31:25', '2023-03-08 21:31:40'),
(40, '40', 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini ?', 'Setingkat Lebih Tinggi;Tingkat yang Sama;Setingkat Lebih Rendah;Tidak Perlu Pendidikan Tinggi', '0', '0', '1', '2023-03-08 21:35:35', '2023-03-08 21:35:35'),
(41, '41', 'Nama Akun Media Sosial (aktif)', '', '0', '0', '1', '2023-07-18 01:16:54', '2023-07-18 01:16:54');

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
(1, '1', 'Apakah sudah pernah mengisi formulir tracer study?', 'Pertama kali mengisi;Sudah pernah mengisi dan hendak update data pekerjaan pertama', '0', '0', '1', '2023-03-13 10:48:13', '2023-03-13 10:48:13'),
(2, '2', 'Tempat, tangal lahir', '', '0', '0', '1', '2023-03-13 10:48:49', '2023-03-13 10:48:49'),
(3, '3', 'Jenis kelamin', 'Laki-laki;Perempuan', '0', '0', '1', '2023-03-13 10:49:08', '2023-03-13 10:49:08'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-13 10:49:19', '2023-07-18 01:17:29'),
(5, '5', 'Email', '', '0', '0', '1', '2023-03-13 10:49:28', '2023-03-13 10:49:28'),
(6, '6', 'Alamat Lengkap', '', '0', '0', '1', '2023-03-13 10:49:36', '2023-03-13 10:49:36'),
(7, '7', 'IPK setelah lulus', '2,00-2,59;2,60-2,99;3,00-3,59;3,59-4,00', '0', '0', '1', '2023-03-13 10:50:41', '2023-03-13 10:50:41'),
(8, '8', 'Tahun Masuk Kuliah di Universitas Borneo Lestari', 'Ganjil 2018/2019;Ganjil 2019/2020;Ganjil 2020/2021;Genap 2020/2021;Ganjil 2021/2022;Genap 2021/2022;Ganjil 2022/2023;Genap 2022/2023;Ganjil 2023/2024', '0', '0', '1', '2023-03-13 10:51:31', '2023-03-13 10:51:31'),
(9, '9', 'Tahun Lulus (Berdasarkan Tanggal Wisuda)', '2017;2018;2019;2020;2021;2022;2023', '0', '0', '1', '2023-03-13 10:52:18', '2023-03-13 10:52:18'),
(10, '10', 'Semester Lulus (Berdasarkan tanggal Yudisium)', 'Ganjil;Genap', '0', '0', '1', '2023-03-13 10:52:45', '2023-03-13 10:52:45'),
(11, '11', 'Apakah anda bersedia untuk berbagi dengan almamater Universitas Borneo Lestari?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 16:53:28', '2023-03-08 21:18:23'),
(12, '12', 'Jika bersedia, hal apa yang ingin anda bagikan untuk almamater Universitas Borneo Lestari (dapat lebih dari satu pilihan)?', 'Berbagi pengalaman/keahlian;Informasi lowongan pekerjaan;Kerjasama penelitian;Fasilitasi tempat bekerja;Beasiswa untuk adik kelas yang memerlukan;Sarana dan prasarana pengembangan kampus', '1', '1', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(13, '13', 'Kepuasan alumni terhadap Dosen Program Studi/Fakultas ? Aspek yang dinilai antara lain keandalan dan kemampuan dosen dalam memberikan pelayanan terhadap mahasiswa, daya tanggap dosen dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan dosen sesuai dengan ketentuan, dan kepedulian dosen dalam memberi perhatian kepada mahasiswa (Keterangan skala : 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik) *', '1;2;3;4', '0', '0', '1', '2023-02-23 16:53:52', '2023-03-08 21:18:50'),
(14, '14', 'Kepuasan alumni terhadap Tenaga Kependidikan? Aspek yang dinilai antara lain keandalan dan kemampuan tenaga kependidikan dalam memberikan pelayanan terhadap mahasiswa, daya tanggap tenaga kependidikan dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan tenaga kependidikan sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:17', '2023-02-23 16:55:17'),
(15, '15', 'Kepuasan alumni terhadap Pengelola Program Studi ? Aspek yang dinilai antara lain keandalan dan kemampuan pengelola program studi dalam memberikan pelayanan terhadap mahasiswa, daya tanggap pengelola program studi dalam membantu mahasiswa dan memberikan jasa dengan cepat, kepastian bahwa pelayanan pengelola program studi sesuai dengan ketentuan, dan kepedulian tenaga kependidikan dalam memberi perhatian kepada mahasiswa (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:55:57', '2023-03-08 21:20:23'),
(16, '16', 'Kepuasan alumni terhadap Sarana dan Prasarana Program Studi.  Aspek yang dinilai antara lain kecukupan, aksesibitas, kualitas sarana dan prasarana (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:56:49', '2023-03-08 21:20:44'),
(17, '17', 'Kepuasan alumni terhadap Pengelolaan Keuangan selama Proses Pendidikan di Program Studi. Aspek yang dinilai adalah biaya yang dibebankan kepada alumni selama proses pendidikan dengan pelayanan yang didapatkan (Keterangan skala: 1 = kurang, 2 = cukup, 3 = baik, 4 = sangat baik)', '1;2;3;4', '0', '0', '1', '2023-02-23 16:57:27', '2023-03-08 21:22:02'),
(18, '18', 'Saran untuk Program Studi/Fakultas/Universitas dilingkungan Universitas Borneo Lestari', '', '0', '0', '1', '2023-02-23 16:57:52', '2023-03-08 21:23:37'),
(21, '21', 'Kapan anda memulai usaha ?', 'Sebelum lulus;Setelah lulus', '0', '0', '1', '2023-02-23 17:02:54', '2023-07-18 01:22:15'),
(22, '22', 'Nama usaha tempat anda bekerja', '', '0', '0', '1', '2023-02-23 17:10:09', '2023-07-18 01:22:42'),
(23, '23', 'Jabatan pekerjaan dalam usaha anda', '', '0', '0', '1', '2023-02-23 17:10:22', '2023-07-18 01:23:02'),
(26, '26', 'Apakah tempat Anda bekerja saat ini merupakan pekerjaan/usaha pertama anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 17:11:48', '2023-07-18 01:24:22'),
(27, '27', 'Nama atasan langsung Anda (beserta gelar) atau pemilik usaha. Tujuan pengumpulan data ini adalah untuk menghubungi atasan langsung guna mengisi tracer study untuk pengguna lulusan', '', '0', '0', '1', '2023-02-23 17:12:36', '2023-07-18 01:25:33'),
(28, '28', 'Alamat email atasan Anda', '', '0', '0', '1', '2023-02-23 17:13:41', '2023-02-23 17:13:41'),
(29, '29', 'Mohon sebutkan riwayat pekerjaan anda dan lama periodenya sebelum	pekerjaan yang saat ini (jika ada). Tuliskan jenis pekerjaan dan berapa lama anda bekerja', '', '0', '0', '1', '2023-02-23 17:14:29', '2023-02-23 17:14:29'),
(30, '30', 'Apakah bidang pekerjaan anda relevan dengan bidang ilmu hasil pendidikan anda?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 17:14:53', '2023-02-23 17:14:53'),
(31, '31', 'Dari mana anda mendapatkan informasi pekerjaan pertama?', 'Iklan/media massa;Program Studi Universitas Borneo Lestari;Relasi keluarga dan teman;Ikatan Alumni', '0', '1', '1', '2023-02-23 17:15:34', '2023-02-23 18:26:51'),
(32, '32', 'Apakah pekerjaan anda saat ini memenuhi harapan anda (boleh memilih alasan lebih dari satu)', 'Ya, karena gaji sesuai;Ya, karena kedudukan/jabatan sesuai;Ya, karena iklim kerja menyenangkan;Tidak, karena gaji tidak sesuai;Tidak, karena kedudukan/jabatan sesuai;Tidak, karena iklim kerja tidak menyenangkan', '1', '1', '1', '2023-02-23 17:16:39', '2023-02-23 17:17:56'),
(33, '33', 'Berapa take home pay (gaji+tunjangan+insentif+ dll) pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 17:19:07', '2023-02-23 17:19:07'),
(34, '34', 'Faktor apa yang paling berperan dalam mendapatkan pekerjaan (dapat lebih dari satu)?', 'IPK/kemampuan akademik;Asal perguruan tinggi;Kepribadian;Ekstra kurikuler: pengalaman organisasi, kelompok studi;Pengalaman lain: kursus keterampilan;Pengalaman lain: penguasaan bahasa asing', '1', '1', '1', '2023-02-23 17:20:37', '2023-02-23 17:20:37'),
(35, '35', 'Pernahkan anda pindah bekerja?', 'belum pernah;1 kali;2 kali;> 2 kali', '0', '1', '1', '2023-02-23 17:21:24', '2023-02-23 17:21:24'),
(36, '36', 'Apakah alasan anda pindah bekerja?', 'Perbaikan gaji;Kesesuaian dengan bidang ilmu;Manajemen instansi/Lembaga perusahaan;Peluang karir;Lingkungan pekerjaan tidak mendukung', '0', '1', '1', '2023-03-14 22:22:18', '2023-02-23 17:22:50'),
(37, '37', 'Nama usaha Anda', '', '0', '0', '1', '2023-02-23 17:40:32', '2023-02-23 17:40:32'),
(38, '38', 'Lama periode Anda berwirausaha', '', '0', '0', '1', '2023-02-23 17:40:47', '2023-02-23 17:40:47'),
(39, '39', 'Bagaimana status kepemilikan perusahaan Anda saat ini?', 'Milik sendiri;Kemitraan', '0', '1', '1', '2023-02-23 17:41:19', '2023-02-23 17:41:19'),
(40, '40', 'Jenis usaha apakah yang Anda lakukan saat ini?', 'Jasa;Dagang;Pabrik;Produksi', '0', '1', '1', '2023-02-23 17:42:04', '2023-02-23 17:42:04'),
(41, '41', 'Motivasi apa yang mendorong Anda membuka usaha mandiri?', 'Meneruskan bisnis orang tua;Tidak suka bekerja dengan orang lain;Mencari tantangan;Mencari uang tambahan', '0', '1', '1', '2023-02-23 17:42:47', '2023-02-23 17:42:47'),
(42, '42', 'Apakah bidang wirausaha anda relevan dengan bidang ilmu hasil pendidikan anda (kefarmasian)?', 'Ya;Tidak', '0', '0', '1', '2023-02-23 17:43:25', '2023-02-23 17:43:25'),
(43, '43', 'Berapa penghasilan pertama anda dalam satu bulan?', 'Kurang dari Rp 2.000.000;Rp 2.000.000 – 5.000.000;Rp 5.000.000 – 10.000.000;Rp 10.000.000 – 15.000.000;Rp 15.000.000 – 25.000.000;Lebih dari Rp 25.000.000', '0', '0', '1', '2023-02-23 17:44:22', '2023-02-23 17:44:22'),
(44, '44', 'Faktor apa yang paling berperan dalam berwirausaha? Jelaskan faktor yang berperan dalam anda berwirausaha', '', '0', '0', '1', '2023-02-23 17:44:40', '2023-02-23 17:44:40');

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
(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-08 21:55:24', '2023-03-08 21:55:24'),
(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 21:55:42', '2023-03-08 21:55:42'),
(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 21:56:09', '2023-03-08 21:56:18'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 21:56:30', '2023-03-08 21:56:36'),
(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 21:56:48', '2023-03-08 21:56:48'),
(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 21:57:59', '2023-03-08 21:57:59'),
(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 21:58:13', '2023-03-08 21:58:13'),
(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 21:58:53', '2023-03-08 21:58:53'),
(9, '9', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:01:03', '2023-03-08 22:01:03'),
(10, '10', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:01', '2023-03-08 22:02:01'),
(11, '11', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:37', '2023-03-08 22:02:37'),
(12, '12', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:51', '2023-03-08 22:03:03'),
(13, '13', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:05:39', '2023-03-08 22:05:57'),
(14, '14', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:06:32', '2023-03-08 22:06:48'),
(15, '15', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:07:11', '2023-03-08 22:07:11'),
(16, '16', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:08:33', '2023-03-08 22:08:33'),
(17, '17', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:08:56', '2023-03-08 22:08:56'),
(18, '18', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:09:24', '2023-03-08 22:09:24'),
(19, '19', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:09:53', '2023-03-08 22:09:53'),
(20, '20', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:10:19', '2023-03-08 22:10:19'),
(21, '21', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:10:58', '2023-03-08 22:10:58'),
(22, '22', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:11:43', '2023-03-08 22:11:43'),
(23, '23', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:12:06', '2023-03-08 22:12:06'),
(24, '24', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:12:55', '2023-03-08 22:12:55'),
(25, '25', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:13:32', '2023-03-08 22:13:32'),
(26, '26', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:13:56', '2023-03-08 22:13:56'),
(27, '27', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:03', '2023-03-08 22:15:03'),
(28, '28', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:31', '2023-03-08 22:15:31'),
(29, '29', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:52', '2023-03-08 22:15:52'),
(30, '30', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:16:18', '2023-03-08 22:16:18'),
(31, '31', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:16:36', '2023-03-08 22:16:36'),
(32, '32', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:17:32', '2023-03-08 22:17:32'),
(33, '33', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:17:50', '2023-03-08 22:17:50'),
(34, '34', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:18:13', '2023-03-08 22:18:13'),
(35, '35', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:19:05', '2023-03-08 22:19:05'),
(36, '36', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:19:22', '2023-03-08 22:19:22'),
(37, '37', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:19:41', '2023-03-08 22:19:41'),
(38, '38', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 22:20:33', '2023-03-08 22:20:33');

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
(1, '1', 'Kedisiplinan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:01:03', '2023-03-08 22:01:03'),
(2, '2', 'Kejujuran (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:01', '2023-03-08 22:02:01'),
(3, '3', 'Motivasi Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:37', '2023-03-08 22:02:37'),
(4, '4', 'Etos Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:02:51', '2023-03-08 22:03:03'),
(5, '5', 'Moralitas (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:05:39', '2023-03-08 22:05:57'),
(6, '6', 'Etika (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:06:32', '2023-03-08 22:06:48'),
(7, '7', 'Sosialisasi (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:07:11', '2023-03-08 22:07:11');

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
(1, '1', 'Kemampuan menulis bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:10:58', '2023-03-08 22:10:58'),
(2, '2', 'Kemampuan berkomunikasi dengan bahasa asing (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:11:43', '2023-03-08 22:11:43'),
(3, '3', 'Kemampuan dalam memahami teks menggunakan bahasa asing\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:12:06', '2023-03-08 22:12:06');

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
(1, '1', 'Kemampuan sebagai pemimpin\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:17:32', '2023-03-08 22:17:32'),
(2, '2', 'Kemempuan manajerial\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:17:50', '2023-03-08 22:17:50'),
(3, '3', 'Kemampuan menyelesaikan masalah\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:18:13', '2023-03-08 22:18:13');

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
(1, '1', 'Kematangan emosi/pengendalian diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:03', '2023-03-08 22:15:03'),
(2, '2', 'Kepercayaan diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:31', '2023-03-08 22:15:31'),
(3, '3', 'Keterbukaan terhadap kritik dan saran\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:15:52', '2023-03-08 22:15:52'),
(4, '4', 'Kemampuan berkomunikasi secara lisan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:16:18', '2023-03-08 22:16:18'),
(5, '5', 'Kemampuan berkomunikasi tertulis (membuat laporan)\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:16:36', '2023-03-08 22:16:36');

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
(1, '1', 'Motivasi dalam mempelajari hal baru untuk kemajuan instansi / perusahaan\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:19:05', '2023-03-08 22:19:05'),
(2, '2', 'Motivasi dalam mempelajari hal baru untuk kemajuan kompetensi diri\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:19:22', '2023-03-08 22:19:22');

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
(1, '1', 'Pengetahuan mengenai alat dan teknologi dalam bekerja\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:12:55', '2023-03-08 22:12:55'),
(2, '2', 'Kemampuan adaptasi teknologi baru\r\n(1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:13:32', '2023-03-08 22:13:32'),
(3, '3', 'Kemampuan memanfaatkan teknologi dalam informasi dalam pekerjaan\r\n (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:13:56', '2023-03-08 22:13:56');

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
(1, '1', 'Penguasaan Bidang Ilmu (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:08:33', '2023-03-08 22:08:33'),
(2, '2', 'Produktivitas Kerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:08:56', '2023-03-08 22:08:56'),
(3, '3', 'Inovasi Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:09:24', '2023-03-08 22:09:24'),
(4, '4', 'Kemampuan Menyelesaikan Masalah Dalam Pekerjaan (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:09:53', '2023-03-08 22:09:53'),
(5, '5', 'Inisiatif Dalam Bekerja (1 : Kurang Baik, 2 : Cukup Baik, 3 : Baik, 4 : Sangat Baik)', '1;2;3;4', '0', '0', '1', '2023-03-08 22:10:19', '2023-03-08 22:10:19');

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
(1, '1', 'Nama Tempat Kerja', '', '0', '0', '1', '2023-03-27 07:03:59', '2023-03-27 07:04:00'),
(2, '2', 'Alamat Lengkap Tempat Kerja', '', '0', '0', '1', '2023-03-08 21:55:42', '2023-03-08 21:55:42'),
(3, '3', 'Nama Lengkap Pimpinan/Atasan', '', '0', '0', '1', '2023-03-08 21:56:09', '2023-03-08 21:56:18'),
(4, '4', 'Nomor WhatsApp', '', '0', '0', '1', '2023-03-08 21:56:30', '2023-03-08 21:56:36'),
(5, '5', 'Alamat Email Aktif', '', '0', '0', '1', '2023-03-08 21:56:48', '2023-03-08 21:56:48'),
(6, '6', 'Nama Alumni Yang Bapak/Ibu Pimpin', '', '0', '0', '1', '2023-03-08 21:57:59', '2023-03-08 21:57:59'),
(7, '7', 'Posisi Jabatan Alumni di Tempat Kerja', '', '0', '0', '1', '2023-03-08 21:58:13', '2023-03-08 21:58:13'),
(8, '8', 'Tahun Lulus Alumni (Sesuai Ijazah)', '2020;2021;2022;2023', '0', '0', '1', '2023-03-08 21:58:53', '2023-03-08 21:58:53'),
(9, '9', 'Mohon tuliskan saran serta hal lain yang ingin disampaikan guna pengembangan Program Studi di Lingkungan Universitas Borneo Lestari, agar dapat menghasilkan lulusan yang semakin berkualitas', '', '0', '0', '1', '2023-03-08 22:20:33', '2023-03-08 22:20:33');

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
(1, 'ADMIN', '1', 'D3 Farmasi', '2017', NULL, NULL),
(2, 'ADMIN', '1', 'D3 TLM', '2017', NULL, NULL),
(13, 'FEFY NORWALIDAINI', 'DF19001', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(14, 'LIHIMI', 'DF19002', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(15, 'MUHAMMAD AYUBBANDI', 'DF19003', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(16, 'NURCHALISA SAFITRI', 'DF19004', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(17, 'SERLY MAR\'ATU SOLEHA', 'DF19005', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(18, 'SISKA DEWI FARMA', 'DF19006', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(19, 'SITI TITIN ISMAWATI', 'DF19007', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(20, 'YOLA', 'DF19008', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(21, 'YULIYANTI', 'DF19009', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(22, 'ZALFA HABIBA SUBEKTI', 'DF19010', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(23, 'SITI AGUSTIN JAYANTI', 'DF19011', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(24, 'ARIA DWI KUSUMAATMAJA', 'DF19012', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(25, 'INDAH WIDYA LESTARI', 'DF19013', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(26, 'AULIA RAHMAH', 'DF19015', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(27, 'SEPTIAWATI', 'DF19017', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(28, 'RENI ANESSIA', 'DF19018', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(29, 'ROSIANA SALSABILA', 'DF19019', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(30, 'LAURA PRANANDA', 'DF19021', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(31, 'JESSICA DWI PURNAMASARI', 'DF19023', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(32, 'ADITIA SAPUTRA', 'DF19024', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(33, 'ANGGIE', 'DF19025', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(34, 'ILLIYUN', 'DF19026', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(35, 'MERRY YENY', 'DF19027', 'D3 Farmasi', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(36, 'ALIYA FARADELLA CHANDENIE', 'AK1119014', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(37, 'ANIK WIDIYANI', 'AK1119041', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(38, 'ANNISA YUSERAN', 'AK1119025', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(39, 'ANWARUL HUDA', 'AK1119009', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(40, 'BELLA MULIYAWATI', 'AK1119071', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(41, 'DESI BELLA SYAFITRI', 'AK1119005', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(42, 'DESSY RAHMA HIDAYATI', 'AK1119057', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(43, 'DESVA JULIA PEBRINA MEYDI', 'AK1119034', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(44, 'DEVI KUMALA SARI', 'AK1119036', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(45, 'DISTA SUTIASTI', 'AK1119006', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(46, 'DWI PRASETYO', 'AK1119093', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(47, 'ELMA KRISTINA', 'AK1119037', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(48, 'ELY TUSMILA NURHAYATI', 'AK1119065', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(49, 'ERI HAWINI', 'AK1119064', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(50, 'EVA PRATAMI LESTARI', 'AK1119056', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(51, 'FEBRINDA MULYANI', 'AK1119015', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(52, 'FERDY RAMADHANI', 'AK1119026', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(53, 'FIRYAL SHAFA ANNISA', 'AK1119058', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(54, 'HASAN MUDZAKKIR MAS', 'AK1119010', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(55, 'HELDAWATI', 'AK1119017', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(56, 'HELLENTINE PUTRI ASTRIA', 'AK1119061', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(57, 'HELMI FAKHRIANDY', 'AK1119024', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(58, 'HUSNATUL AZIZAH', 'AK1119029', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(59, 'HUSNUL HATIMAH', 'AK1119054', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(60, 'IRWINA', 'AK1119019', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(61, 'ISMAUL HUSNA', 'AK1119008', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(62, 'JUHRAH', 'AK1119070', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(63, 'LAILA NUR KHASANAH', 'AK1119021', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(64, 'MERY HAIFA', 'AK1119045', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(65, 'MOULIENA DYAH LESTARI', 'AK1119067', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(66, 'MUHAMMAD FAUZI', 'AK1119050', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(67, 'MUHAMMAD HANDRI ANSHARI', 'AK1119047', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(68, 'MUHAMMAD LUTHFI RAMADHANI', 'AK1119016', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(69, 'MUHAMMAD RAFI\'I', 'AK1119068', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(70, 'MUHAMMAD RIFAI', 'AK1119004', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(71, 'MUHAMMAD RISALMAN', 'AK1119028', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(72, 'NADYA ASYIFA MAMAHIT', 'AK1119055', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(73, 'NAMIRA AL MEDINA', 'AK1119012', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(74, 'NIDA MUNIRAH', 'AK1119040', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(75, 'NORMILAWATI', 'AK1119051', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(76, 'NORYATI', 'AK1119049', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(77, 'NOVIANTI PERMADIE', 'AK1119007', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(78, 'PUSPA NANDA JUHARI', 'AK1119063', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(79, 'PUTRI SARMITA', 'AK1119052', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(80, 'RAHMA ARIANI', 'AK1119020', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(81, 'RIADATUL JANNAH', 'AK1119042', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(82, 'RIZKYA PUTERI', 'AK1119001', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(83, 'ROSIDAH', 'AK1119048', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(84, 'SALWA SAUSAN', 'AK1119059', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(85, 'SARIFAH FITRI ASSEGAF', 'AK1119046', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(86, 'SITI NORHALISA', 'AK1119036', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(87, 'ST. FATIMAH', 'AK1119053', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(88, 'ULFA ALMIRA', 'AK1119043', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(89, 'VINA JULIA SARI', 'AK1119044', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(90, 'VIONI INTAN ANDARESTI', 'AK1119060', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(91, 'YANDA TIARA AS’SHIVA', 'AK1119033', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(92, 'YOLANDA GRESIA', 'AK1119002', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(93, 'YULI RAHMITA', 'AK1119022', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(94, 'YURNIAH PERMATA', 'AK1119011', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(95, 'ZAINUR RAKHMAN', 'AK1119023', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(96, 'ZOHAR LATIFAH', 'AK1119031', 'D3 TLM', '2019', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(97, 'SALWA', 'AK1018052', 'D3 TLM', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(98, 'MUHAMMAD SYAHREZA GOTAWA', 'AK917083', 'D3 TLM', '2017', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(99, 'RADA MILENIA', 'SF18084', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(100, 'NOOR RIZKY HIDAYATULLAH', 'SF18075', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(101, 'HARYATI', 'SF18038', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(102, 'ASTRILELUNI', 'SF18012', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(103, 'HALISA', 'SF18036', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(104, 'FITRI ANISSA', 'SF18031', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(105, 'LISA SEPTIANA DEWI', 'SF18054', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(106, 'RIZQATUN NUKBAH', 'SF18101', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(107, 'ADINDA MELLY FEBRIANTI', 'SF18001', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(108, 'ALLISA FANADIA', 'SF18127', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(109, 'TASYA', 'SF18115', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(110, 'NADYA APRILLINIA', 'SF18068', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(111, 'RISMA YENI', 'SF18095', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(112, 'YUSRINA CONITATY', 'SF18122', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(113, 'ELLINA RIZKA AULIA', 'SF18024', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(114, 'ALIYA ROSYADA', 'SF18008', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(115, 'SONIA AGUSTINA OEMAR', 'SF18136', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(116, 'NOOR ANISA', 'SF18071', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(117, 'YULIANA SIHOMBING', 'SF18120', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(118, 'MAHDANIAH', 'SF18126', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(119, 'SATRIYO KRISNA PALGUNO', 'SF18107', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(120, 'NINDY RAHMADHANI', 'SF18132', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(121, 'HADIRVIKA TJUTHIYANDA', 'SF18034', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(122, 'NOOR EVA MEILIANTI', 'SF18073', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(123, 'BUNGA MARETA ANANDA', 'SF18016', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(124, 'MARISSA AMELIA PUTRI', 'SF18059', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(125, 'SARTIKA DEWI', 'SF18106', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(126, 'HANAN AMALIA', 'SF18037', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(127, 'NADIA AJENG NIASTUTI', 'SF18066', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(128, 'RAFIQA NOOR AFIFAH', 'SF18086', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(129, 'AULIA ULFA AGUSTIN', 'SF18014', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(130, 'EKA SANDRA', 'SF18128', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(131, 'ELMA ARIYANI', 'SF18025', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(132, 'RIZKA ANJELIANA', 'SF18097', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(133, 'EVA OKPRIYANI', 'SF18027', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(134, 'KHAIRUR RAHMAN', 'SF18049', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(135, 'MUTIARA ANNISA', 'SF18064', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(136, 'SORAYA', 'SF18113', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(137, 'AFIFAH AULIARAHMAH', 'SF18002', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(138, 'YUNI RAHIMA BAIDATUN', 'SF18121', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(139, 'ROSA LIANA', 'SF18103', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(140, 'NADIA MASYTOH', 'SF18067', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(141, 'SALSABILLA', 'SF18104', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(142, 'DEBY ELISA MARLIYANTI', 'SF18129', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(143, 'SRI MULYANTI', 'SF18114', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(144, 'MOCHAMMAD GUESVIDHA NURHIDAYAT AS PUTERA', 'SF18055', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(145, 'NOOR MUMINAH', 'SF18074', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(146, 'NINDA ANISA CAHYANI', 'SF18070', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(147, 'FIDELLA IFARIANI PUTRI', 'SF18029', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(148, 'NAMIRA RAMADHANA', 'SF18131', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(149, 'TYA MONICA', 'SF18118', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(150, 'RIZKY SETYA HARMAELLIN', 'SF18100', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(151, 'ANASTASIA VALENTINA FEBRUESTI', 'SF18010', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(152, 'DINI AL-MIRA AZIZAH', 'SF18022', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(153, 'MUHAMMAD SYAHRIAN', 'SF18125', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(154, 'SITI RAIHANI AZIZAH', 'SF18112', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(155, 'ENDAH PURWATI', 'SF18026', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(156, 'M. HERWANDA PERDANA KUSUMA', 'SF18056', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(157, 'NUR SYIFA ROHMIYAH', 'SF18080', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(158, 'KIKI MELDA SARY', 'SF18133', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(159, 'SITI AULADIAH', 'SF18108', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(160, 'DEFI RIAS HABSARI', 'SF18017', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(161, 'FITROTUL ZAKIYAH', 'SF18032', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(162, 'SITI ISTIKOMAH', 'SF18110', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(163, 'YOLANDA PUTRI', 'SF18119', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(164, 'INDAH SARI', 'SF18043', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(165, 'NURUL AZIMAH', 'SF18082', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(166, 'TIKA NURJANAH', 'SF18117', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(167, 'NIKEN ANGGRIWARA', 'SF18138', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(168, 'SITI HAIRIAH', 'SF18109', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(169, 'RANI MAIMONAH', 'SF18087', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(170, 'NOVIA MISFA SAPUTRI', 'SF18077', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(171, 'RISNA PURNAMA DEWI', 'SF18096', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(172, 'YULIA ANNISA', 'SF18134', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(173, 'SITI NURHALIZA', 'SF18111', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(174, 'AMANAH', 'SF18009', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(175, 'FIRDHA AHLIQA PUTRI', 'SF18030', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(176, 'HUSNUL KHOTIMAH', 'SF18040', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(177, 'PIRDA', 'SF18083', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(178, 'RIRIN SRI WAHYUNI', 'SF18093', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(179, 'SITI RIZKI AMALIA RAMADHANI', 'SF18135', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(180, 'ANANTA RIZKY SEPTIANNUR', 'SF16009', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(181, 'LIFTIA APRIYUNITA', 'SF17043', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(182, 'RISMA HAIRINA', 'SF18094', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(183, 'SARIFAH RAMLAH', 'SF18105', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(184, 'HAYATUN THAIBAH', 'SF18039', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(185, 'ALFINA RIZKIA', 'SF18007', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(186, 'JUWITA PUSPITA SARI', 'SF18045', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(187, 'HAIRUNNISA', 'SF18035', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(188, 'MUHAMMAD DAIMI', 'SF18060', 'S1 Farmasi', '2018', '2023-06-12 12:03:41', '2023-06-12 12:03:41'),
(189, 'NOR HIKMAH', 'SF18076', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(190, 'AZHARI SURAYYA', 'SF18015', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(191, 'NOOR AZIZAH', 'SF18072', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(192, 'MUZDHALIFAH', 'SF18065', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(193, 'EKA SARI WELDA SAPUTRI', 'SF18023', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(194, 'NELLA FARADILLAH', 'SF18069', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(195, 'RADHIAH', 'SF18085', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(196, 'DIMAS SATYA AIYUBA', 'SF18021', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(197, 'LARAS DWI RIMADANI', 'SF18052', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(198, 'LINA MERSA', 'SF18053', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(199, 'ASYA NUR AZKIYA', 'SF18013', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(200, 'MUHAMMAD HENDRI', 'SF16066', 'S1 Farmasi', '2016', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(201, 'GARNIS SEKAR AYU LESTARI', 'SF17028', 'S1 Farmasi', '2017', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(202, 'NURLAILA HAYATIN', 'SF18081', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(203, 'INDAH PERMATA SARI', 'SF18042', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(204, 'MUHAMMAD NAJHAN MU\'ARIF', 'SF18062', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(205, 'LAILA SHOPIA', 'SF18050', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(206, 'IBNU MUBARAK', 'SF18041', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(207, 'FLAVIA AGNESZALINA NYAHU', 'SF17027', 'S1 Farmasi', '2017', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(208, 'MUHAMMAD RIDHO TRI PUTRA', 'SF17057', 'S1 Farmasi', '2017', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(209, 'MARIA YANTINA PERE', 'SF18058', 'S1 Farmasi', '2018', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(210, 'JAUZA HANA', 'SF20215', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(211, 'NANDA AMELIA RAHMI', 'SF20227', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(212, 'RIA HERVINA SARI', 'SF20236', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(213, 'MUHAMMAD RIZKY WARDANI', 'SF20225', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(214, 'LUTHFI NURFUAD', 'SF20218', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(215, 'NOOR RAHMAH', 'SF20228', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(216, 'NOVITA SARI', 'SF20230', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(217, 'DEWI RIZTY DAMAYANTI', 'SF20208', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(218, 'AULIA RAHMI', 'SF20205', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(219, 'RINA HELMINA', 'SF20237', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(220, 'YUNI FAHRIANA', 'SF20245', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(221, 'HENNY ANGGRIANI', 'SF20212', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(222, 'RISKA NOVI MELISA', 'SF20238', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(223, 'ERMA HERNIANI', 'SF20209', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(224, 'PUTRI AMAMI', 'SF20233', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(225, 'VINA MARIANA ULFAH', 'SF20244', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(226, 'KIVA RAHMATIKA', 'SF20217', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(227, 'DENI YUNITA SARI', 'SF20207', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(228, 'GUSMIAH', 'SF20211', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(229, 'FARIDA MISLAWATI', 'SF20246', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(230, 'KHALISAH', 'SF20216', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(231, 'REZENI RAMADANI', 'SF20235', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(232, 'AYU RIZKI FEBRIANA', 'SF20206', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(233, 'ASTIKA BHASMA', 'SF20204', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(234, 'HJ IDAYATI', 'SF20213', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(235, 'NOVIE HERNIYATI', 'SF20229', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(236, 'PUSPITA YULIANTY', 'SF20231', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(237, 'ISTIQOMAH', 'SF20214', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(238, 'MIFTAHUL JANNAH', 'SF20220', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(239, 'MUHAMMAD NOOR', 'SF20224', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(240, 'FERA FITRIA', 'SF20210', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(241, 'MOHAMMAD NAJIB ZAMZAM', 'SF20221', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(242, 'ABDURRAZAK SAMI', 'SF20201', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(243, 'MUHAMMAD HERIYANTO', 'SF20222', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(244, 'ADITYA SURYA DHARMA', 'SF20202', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(245, 'RIYANZA NOR ABDI', 'SF20239', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(246, 'ALDI MISBAHUDIN', 'SF20203', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(247, 'MUHAMMAD RIZQAN', 'SF20226', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(248, 'REZEKI RAHMIYANTI', 'SF20234', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(249, 'REZA RAHENDRA PERDANA', 'SF19235', 'S1 Farmasi', '2019', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(250, 'MUHAMMAD NIZAR RAMADHAN', 'SF20223', 'S1 Farmasi', '2020', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(251, 'SITI FADHILAH', 'SF19244', 'S1 Farmasi', '2019', '2023-06-12 12:03:42', '2023-06-12 12:03:42'),
(252, 'YANITHA MARIAURSULAE', 'SF19250', 'S1 Farmasi', '2019', '2023-06-12 12:03:42', '2023-06-12 12:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `xbank_alumnis`
--

CREATE TABLE `xbank_alumnis` (
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
  `bank51` text DEFAULT NULL,
  `bank52` text DEFAULT NULL,
  `bank53` text DEFAULT NULL,
  `bank54` text DEFAULT NULL,
  `bank55` text DEFAULT NULL,
  `bank56` text DEFAULT NULL,
  `bank57` text DEFAULT NULL,
  `bank58` text DEFAULT NULL,
  `bank59` text DEFAULT NULL,
  `bank60` text DEFAULT NULL,
  `bank61` text DEFAULT NULL,
  `bank62` text DEFAULT NULL,
  `bank63` text DEFAULT NULL,
  `bank64` text DEFAULT NULL,
  `bank65` text DEFAULT NULL,
  `bank66` text DEFAULT NULL,
  `bank67` text DEFAULT NULL,
  `bank68` text DEFAULT NULL,
  `bank69` text DEFAULT NULL,
  `bank70` text DEFAULT NULL,
  `bank71` text DEFAULT NULL,
  `bank72` text DEFAULT NULL,
  `bank73` text DEFAULT NULL,
  `bank74` text DEFAULT NULL,
  `bank75` text DEFAULT NULL,
  `bank76` text DEFAULT NULL,
  `bank77` text DEFAULT NULL,
  `bank78` text DEFAULT NULL,
  `bank79` text DEFAULT NULL,
  `bank80` text DEFAULT NULL,
  `bank81` text DEFAULT NULL,
  `bank82` text DEFAULT NULL,
  `bank83` text DEFAULT NULL,
  `bank84` text DEFAULT NULL,
  `bank85` text DEFAULT NULL,
  `bank86` text DEFAULT NULL,
  `bank87` text DEFAULT NULL,
  `bank88` text DEFAULT NULL,
  `bank89` text DEFAULT NULL,
  `bank90` text DEFAULT NULL,
  `bank91` text DEFAULT NULL,
  `bank92` text DEFAULT NULL,
  `bank93` text DEFAULT NULL,
  `bank94` text DEFAULT NULL,
  `bank95` text DEFAULT NULL,
  `bank96` text DEFAULT NULL,
  `bank97` text DEFAULT NULL,
  `bank98` text DEFAULT NULL,
  `bank99` text DEFAULT NULL,
  `bank100` text DEFAULT NULL,
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
-- Indexes for table `bank_alumni`
--
ALTER TABLE `bank_alumni`
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
-- Indexes for table `respon_email`
--
ALTER TABLE `respon_email`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `xbank_alumnis`
--
ALTER TABLE `xbank_alumnis`
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
-- AUTO_INCREMENT for table `bank_alumni`
--
ALTER TABLE `bank_alumni`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bank_lulusans`
--
ALTER TABLE `bank_lulusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respon_email`
--
ALTER TABLE `respon_email`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `survey_alumnis`
--
ALTER TABLE `survey_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_alumni_belum_bekerja`
--
ALTER TABLE `survey_alumni_belum_bekerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `survey_alumni_lanjut_pendidikan`
--
ALTER TABLE `survey_alumni_lanjut_pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `survey_alumni_sudah_bekerja`
--
ALTER TABLE `survey_alumni_sudah_bekerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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

--
-- AUTO_INCREMENT for table `xbank_alumnis`
--
ALTER TABLE `xbank_alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

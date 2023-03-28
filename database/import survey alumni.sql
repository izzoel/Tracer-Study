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

-- Dumping data for table tracer.survey_alumni_belum_bekerja: ~26 rows (approximately)
DELETE FROM `survey_alumni_belum_bekerja`;
/*!40000 ALTER TABLE `survey_alumni_belum_bekerja` DISABLE KEYS */;
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
	(11, '11', '	Berapa lama anda menunggu untuk mendapatkan pekerjaan setelah lulus? (dalam satuan bulan, terhitung setelah yudisium) *Indikator masa tunggu merupakan salah satu poin penilaian akreditasi. Jika saat mengisi kuesioner ini Anda belum mendapatkan pekerjaan maka dapat menuliskan tanda "-"', '≤ 3 bulan;3 < MT < 12;MT ≥ 12;-', '0', '0', '1', '2023-03-13 02:53:18', '2023-03-13 02:53:18'),
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
/*!40000 ALTER TABLE `survey_alumni_belum_bekerja` ENABLE KEYS */;

-- Dumping data for table tracer.survey_alumni_lanjut_pendidikan: ~0 rows (approximately)
DELETE FROM `survey_alumni_lanjut_pendidikan`;
/*!40000 ALTER TABLE `survey_alumni_lanjut_pendidikan` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `survey_alumni_lanjut_pendidikan` ENABLE KEYS */;

-- Dumping data for table tracer.survey_alumni_sudah_bekerja: ~40 rows (approximately)
DELETE FROM `survey_alumni_sudah_bekerja`;
/*!40000 ALTER TABLE `survey_alumni_sudah_bekerja` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `survey_alumni_sudah_bekerja` ENABLE KEYS */;

-- Dumping data for table tracer.survey_alumni_wirausaha: ~44 rows (approximately)
DELETE FROM `survey_alumni_wirausaha`;
/*!40000 ALTER TABLE `survey_alumni_wirausaha` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `survey_alumni_wirausaha` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 07:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwalkuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(15) NOT NULL,
  `nama_dosen` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_dosen` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` int(16) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code_color` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `status_dosen`, `no_telp`, `email`, `code_color`) VALUES
(123, 'Sudaryanto', 'tetap', 812899221, 'pakryan@gmail.com', '#9d8080'),
(1234, 'Salam', 'luar', 81722263, 'salam@gmail.com', '#a2c520');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(32) NOT NULL,
  `status` varchar(10) NOT NULL,
  `pendidikan_terakhir` varchar(10) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `code_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `status`, `pendidikan_terakhir`, `no_telp`, `email`, `code_color`) VALUES
(1, 'Kuswan Effendy, SH SPd MM', 'tetap', 's1', '123', 'www@mail.com', '#f3a683'),
(2, 'H. Mahmud, BA', 'tetap', 's1', '124', 'www@mail.com', '#f7d794'),
(3, 'Drs. Subinarto', 'tetap', 's1', '125', 'www@mail.com', '#778beb'),
(4, 'Bayu Hermawan, S.E, SPd', 'tetap', 's1', '126', 'www@mail.com', '#e77f67'),
(5, 'Kuswandik SPd', 'tetap', 's1', '130', 'www@mail.com', '#cf6a87'),
(6, 'Jannatul Ma\'wa SS', 'tetap', 's1', '133', 'www@mail.com', '#f19066'),
(7, 'Dra. Ratna Widyawati', 'tetap', 's1', '135', 'www@mail.com', '#f5cd79'),
(8, 'Asri Bawani SPd', 'tetap', 's1', '140', 'www@mail.com', '#546de5'),
(9, 'Suwaji, SPd, MPd', 'tetap', 's1', '141', 'www@mail.com', '#e15f41'),
(10, 'Sutriasih, S.Pd, M.Pd', 'tetap', 's1', '143', 'www@mail.com', '#c44569'),
(11, 'Anna Nurul Kristiani, S.Pd', 'tetap', 's1', '144', 'www@mail.com', '#786fa6'),
(12, 'Ridwan S.Ag', 'tetap', 's1', '148', 'www@mail.com', '#f8a5c2'),
(13, 'Drs. Samiono', 'tetap', 's1', '149', 'www@mail.com', '#63cdda'),
(14, 'Zuyina Lutfah. SE SPd', 'tetap', 's1', '150', 'www@mail.com', '#ea8685'),
(15, 'Sri Riwayati,S.Pd', 'tetap', 's1', '157', 'www@mail.com', '#596275'),
(16, 'Amnah Matamim, SPd', 'tetap', 's1', '159', 'www@mail.com', '#574b90'),
(17, 'Kamalat Fika Lidinillah, S.Pd', 'tetap', 's1', '161', 'www@mail.com', '#f78fb3'),
(18, 'Nasikan, S.PdI', 'tetap', 's1', '166', 'www@mail.com', '#3dc1d3'),
(19, 'Sulistyowati, S.Pd', 'tetap', 's1', '167', 'www@mail.com', '#e66767'),
(20, 'Ludi Widiyawan', 'tetap', 's1', '168', 'www@mail.com', '#aaa69d'),
(21, 'Heti Putikasari, S.H, S.Pd', 'tetap', 's1', '169', 'www@mail.com', '#ffb142'),
(22, 'Nanda Tri Pramita, S.Pd.H', 'tetap', 's1', '172', 'www@mail.com', '#33d9b2'),
(23, 'Aisyah vidiana, S.Pd', 'tetap', 's1', '174', 'www@mail.com', '#ccae62'),
(24, 'Meita Dwiantari, S.Pd', 'tetap', 's1', '179', 'www@mail.com', '#218c74'),
(25, 'Sumiati, S.Pd', 'tetap', 's1', '184', 'www@mail.com', '#ffd32a');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(20) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jumlah_sesi` int(11) NOT NULL,
  `lama_sesi` int(11) NOT NULL,
  `jam_mulai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `jumlah_sesi`, `lama_sesi`, `jam_mulai`) VALUES
(2, 'Senin', 12, 40, '06:30:00'),
(3, 'Selasa', 12, 45, '06:30:00'),
(4, 'Rabu', 12, 45, '06:30:00'),
(5, 'Kamis', 12, 45, '06:30:00'),
(7, 'Sabtu', 12, 35, '06:30:00'),
(8, 'Jum`at', 9, 35, '06:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_khusus`
--

CREATE TABLE `jadwal_khusus` (
  `id_jadwal_khusus` int(11) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `keterangan` varchar(32) NOT NULL,
  `sesi` varchar(2) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_khusus`
--

INSERT INTO `jadwal_khusus` (`id_jadwal_khusus`, `kelas`, `keterangan`, `sesi`, `hari`, `durasi`) VALUES
(1, 'X', 'upacara', '0', 'Senin', 60),
(2, 'XI', 'upacara', '0', 'Senin', 60),
(3, 'XII', 'upacara', '0', 'Senin', 60),
(4, 'X', 'istirahat 1', '5', 'Senin', 30),
(5, 'XI', 'istirahat 1', '5', 'Senin', 30),
(6, 'XII', 'istirahat 1', '5', 'Senin', 30),
(7, 'X', 'istirahat 1', '5', 'Selasa', 30),
(8, 'XI', 'istirahat 1', '5', 'Selasa', 30),
(9, 'XII', 'istirahat 1', '5', 'Selasa', 30),
(10, 'X', 'istirahat 1', '5', 'Rabu', 30),
(11, 'XI', 'istirahat 1', '5', 'Rabu', 30),
(12, 'XII', 'istirahat 1', '5', 'Rabu', 30),
(13, 'X', 'istirahat 1', '5', 'Kamis', 30),
(14, 'XI', 'istirahat 1', '5', 'Kamis', 30),
(15, 'XII', 'istirahat 1', '5', 'Kamis', 30),
(16, 'X', 'istirahat 1', '5', 'Sabtu', 30),
(17, 'XI', 'istirahat 1', '5', 'Sabtu', 30),
(18, 'XII', 'istirahat 1', '5', 'Sabtu', 30),
(19, 'X', 'istirahat 1', '5', 'Jum`at', 20),
(20, 'XI', 'istirahat 1', '5', 'Jum`at', 20),
(21, 'XII', 'istirahat 1', '5', 'Jum`at', 20),
(22, 'X', 'istirahat 2', '9', 'Senin', 15),
(23, 'XI', 'istirahat 2', '9', 'Senin', 15),
(24, 'XII', 'istirahat 2', '9', 'Senin', 15),
(25, 'X', 'istirahat 2', '9', 'Selasa', 15),
(26, 'XI', 'istirahat 2', '9', 'Selasa', 15),
(27, 'XII', 'istirahat 2', '9', 'Selasa', 15),
(28, 'X', 'istirahat 2', '9', 'Rabu', 15),
(29, 'XI', 'istirahat 2', '9', 'Rabu', 15),
(30, 'XII', 'istirahat 2', '9', 'Rabu', 15),
(31, 'X', 'istirahat 2', '9', 'Kamis', 15),
(32, 'XI', 'istirahat 2', '9', 'Kamis', 15),
(33, 'XII', 'istirahat 2', '9', 'Kamis', 15),
(34, 'X', 'istirahat 2', '9', 'Sabtu', 15),
(35, 'XI', 'istirahat 2', '9', 'Sabtu', 15),
(36, 'XII', 'istirahat 2', '9', 'Sabtu', 15),
(37, 'X', 'extrakulikuler', '8', 'Jum`at', 120),
(38, 'XI', 'extrakulikuler', '8', 'Jum`at', 120),
(39, 'XII', 'extrakulikuler', '8', 'Jum`at', 120),
(40, 'X', 'extrakulikuler', '10', 'Sabtu', 35),
(41, 'X', 'extrakulikuler', '11', 'Sabtu', 35),
(42, 'XII', '-', '10', 'Sabtu', 25),
(43, 'XII', '-', '11', 'Sabtu', 25),
(44, 'X', 'Sholat Dhuha', '0', 'Selasa', 30),
(45, 'XI', 'Sholat Dhuha', '0', 'Selasa', 30),
(46, 'XII', 'Sholat Dhuha', '0', 'Selasa', 30),
(47, 'X', 'Sholat Dhuha', '0', 'Rabu', 30),
(48, 'XI', 'Sholat Dhuha', '0', 'Rabu', 30),
(49, 'XII', 'Sholat Dhuha', '0', 'Rabu', 30),
(50, 'X', 'Sholat Dhuha', '0', 'Kamis', 30),
(51, 'XI', 'Sholat Dhuha', '0', 'Kamis', 30),
(52, 'XII', 'Sholat Dhuha', '0', 'Kamis', 30),
(53, 'X', 'Sholat Dhuha', '0', 'Jum`at', 30),
(54, 'XI', 'Sholat Dhuha', '0', 'Jum`at', 30),
(55, 'XII', 'Sholat Dhuha', '0', 'Jum`at', 30),
(56, 'X', 'Sholat Dhuha', '0', 'Sabtu', 30),
(57, 'XI', 'Sholat Dhuha', '0', 'Sabtu', 30),
(58, 'XII', 'Sholat Dhuha', '0', 'Sabtu', 30);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(20) NOT NULL,
  `nama_jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
('TF', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(16) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `id_jurusan` varchar(5) NOT NULL,
  `nama_kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `id_jurusan`, `nama_kelas`) VALUES
('XaknA', 'X', 'akn', 'A'),
('XIaknA', 'XI', 'akn', 'A'),
('XIIaknA', 'XII', 'akn', 'A'),
('XIIaknB', 'XII', 'akn', 'B'),
('XIIkntrA', 'XII', 'kntr', 'A'),
('XIkntrA', 'XI', 'kntr', 'A'),
('XkntrA', 'X', 'kntr', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `kelompok_mapel` varchar(1) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `beban_jam` int(11) NOT NULL,
  `id_jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `kelompok_mapel`, `kelas`, `beban_jam`, `id_jurusan`) VALUES
(1, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'X', 3, 'kntr'),
(2, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'X', 2, 'kntr'),
(3, 'C', 'Bahasa Indonesia', 'A', 'X', 4, 'kntr'),
(4, 'D', 'Matematika', 'A', 'X', 4, 'kntr'),
(5, 'H', 'Sejarah Indonesia', 'A', 'X', 3, 'kntr'),
(6, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'X', 3, 'kntr'),
(7, 'G', 'Seni Budaya', 'B', 'X', 3, 'kntr'),
(8, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'X', 2, 'kntr'),
(9, 'S', 'Simulasi dan Komunikasi Digital', 'C', 'X', 3, 'kntr'),
(10, 'J', 'Ekonomi Bisnis', 'C', 'X', 2, 'kntr'),
(11, 'AF', 'Administrasi Umum', 'C', 'X', 2, 'kntr'),
(12, 'T', 'IPA', 'C', 'X', 2, 'kntr'),
(13, 'AI', 'Teknologi Perkantoran', 'C', 'X', 4, 'kntr'),
(14, 'AG', 'Korespondensi', 'C', 'X', 5, 'kntr'),
(15, 'AH', 'Kearsipan', 'C', 'X', 4, 'kntr'),
(16, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XI', 3, 'kntr'),
(17, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XI', 2, 'kntr'),
(18, 'C', 'Bahasa Indonesia', 'A', 'XI', 3, 'kntr'),
(19, 'D', 'Matematika', 'A', 'XI', 4, 'kntr'),
(20, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XI', 3, 'kntr'),
(21, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'XI', 2, 'kntr'),
(22, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XI', 6, 'kntr'),
(23, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XI', 6, 'kntr'),
(24, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XI', 6, 'kntr'),
(25, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XI', 6, 'kntr'),
(26, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XI', 7, 'kntr'),
(27, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XII', 3, 'kntr'),
(28, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XII', 2, 'kntr'),
(29, 'C', 'Bahasa Indonesia', 'A', 'XII', 2, 'kntr'),
(30, 'D', 'Matematika', 'A', 'XII', 4, 'kntr'),
(31, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XII', 4, 'kntr'),
(32, 'AM', 'Otomatisasi Tata Kelola Kepegawaian', 'C', 'XII', 7, 'kntr'),
(33, 'AN', 'Otomatisasi Tata Kelola Keuangan', 'C', 'XII', 6, 'kntr'),
(34, 'AO', 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', 'XII', 6, 'kntr'),
(35, 'AP', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', 'XII', 6, 'kntr'),
(36, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 8, 'kntr'),
(37, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'X', 3, 'akn'),
(38, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'X', 2, 'akn'),
(39, 'C', 'Bahasa Indonesia', 'A', 'X', 4, 'akn'),
(40, 'D', 'Matematika', 'A', 'X', 4, 'akn'),
(41, 'H', 'Sejarah Indonesia', 'A', 'X', 3, 'akn'),
(42, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'X', 3, 'akn'),
(43, 'G', 'Seni Budaya', 'B', 'X', 3, 'akn'),
(44, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'X', 2, 'akn'),
(45, 'S', 'Simulasi dan Komunikasi Digital', 'C', 'X', 3, 'akn'),
(46, 'J', 'Ekonomi Bisnis', 'C', 'X', 2, 'akn'),
(47, 'AF', 'Administrasi Umum', 'C', 'X', 2, 'akn'),
(48, 'T', 'IPA', 'C', 'X', 2, 'akn'),
(49, 'AE', 'Etika Profesi', 'C', 'X', 2, 'akn'),
(50, 'AD', 'Aplikasi Pengolah Angka/Spreadsheet', 'C', 'X', 3, 'akn'),
(51, 'N', 'Akuntansi Dasar', 'C', 'X', 5, 'akn'),
(52, 'AA', 'Perbankan Dasar', 'C', 'X', 3, 'akn'),
(53, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XI', 3, 'akn'),
(54, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XI', 2, 'akn'),
(55, 'C', 'Bahasa Indonesia', 'A', 'XI', 3, 'akn'),
(56, 'D', 'Matematika', 'A', 'XI', 4, 'akn'),
(57, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XI', 3, 'akn'),
(58, 'I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'B', 'XI', 2, 'akn'),
(59, 'AK', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', 'C', 'XI', 6, 'akn'),
(60, 'AL', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', 'XI', 4, 'akn'),
(61, 'W', 'Akuntansi Keuangan', 'C', 'XI', 6, 'akn'),
(62, 'AC', 'Komputer Akuntansi', 'C', 'XI', 5, 'akn'),
(63, 'U', 'Administrasi Pajak', 'C', 'XI', 3, 'akn'),
(64, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XI', 7, 'akn'),
(65, 'A', 'Pendidikan Agama dan Budi Pekerti', 'A', 'XII', 3, 'akn'),
(66, 'B', 'Pendidikan Pancasila dan Kewarganegaraan', 'A', 'XII', 2, 'akn'),
(67, 'C', 'Bahasa Indonesia', 'A', 'XII', 2, 'akn'),
(68, 'D', 'Matematika', 'A', 'XII', 4, 'akn'),
(69, 'F', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', 'A', 'XII', 4, 'akn'),
(70, 'AK', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', 'C', 'XII', 7, 'akn'),
(71, 'AL', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', 'XII', 4, 'akn'),
(72, 'W', 'Akuntansi Keuangan', 'C', 'XII', 6, 'akn'),
(73, 'AC', 'Komputer Akuntansi', 'C', 'XII', 5, 'akn'),
(74, 'U', 'Administrasi Pajak', 'C', 'XII', 3, 'akn'),
(75, 'Y', 'Produk Kreatif dan Kewirausahaan', 'C', 'XII', 8, 'akn'),
(76, 'Z', 'Bimbingan Konseling', 'C', 'X', 1, 'kntr'),
(77, 'Z', 'Bimbingan Konseling', 'C', 'XI', 1, 'kntr'),
(78, 'Z', 'Bimbingan Konseling', 'C', 'XII', 1, 'kntr'),
(79, 'Z', 'Bimbingan Konseling', 'C', 'X', 1, 'akn'),
(80, 'Z', 'Bimbingan Konseling', 'C', 'XI', 1, 'akn'),
(81, 'Z', 'Bimbingan Konseling', 'C', 'XII', 1, 'akn'),
(82, 'AJ', 'Bahasa Jawa', 'C', 'X', 2, 'kntr'),
(83, 'AJ', 'Bahasa Jawa', 'C', 'XI', 2, 'kntr'),
(84, 'AJ', 'Bahasa Jawa', 'C', 'X', 2, 'akn'),
(85, 'AJ', 'Bahasa Jawa', 'C', 'XI', 2, 'akn');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_matkul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester_matkul` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `id_jurusan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `kode_matkul`, `nama_matkul`, `semester_matkul`, `sks`, `id_jurusan`) VALUES
(0, 'ANIM', 'Animasi Komputer', '3', 2, 'TF');

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan`
--

CREATE TABLE `penjadwalan` (
  `id_penjadwalan` int(11) NOT NULL,
  `id_kelas` varchar(32) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `hari` varchar(6) NOT NULL,
  `sesi` int(11) NOT NULL,
  `kode_jadwal` varchar(16) NOT NULL,
  `keterangan` varchar(64) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjadwalan`
--

INSERT INTO `penjadwalan` (`id_penjadwalan`, `id_kelas`, `id_guru`, `id_mapel`, `hari`, `sesi`, `kode_jadwal`, `keterangan`, `jam_mulai`, `jam_selesai`) VALUES
(1933, 'XaknA', NULL, NULL, 'Senin', 0, '1', 'upacara', '06:30:00', '07:30:00'),
(1934, 'XaknA', 11, 41, 'Senin', 1, '11-41-XaknA', 'Sejarah Indonesia', '07:30:00', '08:10:00'),
(1935, 'XaknA', 11, 41, 'Senin', 2, '11-41-XaknA', 'Sejarah Indonesia', '08:10:00', '08:50:00'),
(1936, 'XaknA', 11, 41, 'Senin', 3, '11-41-XaknA', 'Sejarah Indonesia', '08:50:00', '09:30:00'),
(1937, 'XaknA', 8, 40, 'Senin', 4, '8-40-XaknA', 'Matematika', '09:30:00', '10:10:00'),
(1938, 'XaknA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:10:00', '10:40:00'),
(1939, 'XaknA', 8, 40, 'Senin', 6, '8-40-XaknA', 'Matematika', '10:40:00', '11:20:00'),
(1940, 'XaknA', 8, 48, 'Senin', 7, '8-48-XaknA', 'IPA', '11:20:00', '12:00:00'),
(1941, 'XaknA', 8, 48, 'Senin', 8, '8-48-XaknA', 'IPA', '12:00:00', '12:40:00'),
(1942, 'XaknA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:40:00', '12:55:00'),
(1943, 'XaknA', 5, 39, 'Senin', 10, '5-39-XaknA', 'Bahasa Indonesia', '12:55:00', '13:35:00'),
(1944, 'XaknA', 5, 39, 'Senin', 11, '5-39-XaknA', 'Bahasa Indonesia', '13:35:00', '14:15:00'),
(1945, 'XaknA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1946, 'XaknA', 19, 79, 'Selasa', 1, '19-79-XaknA', 'Bimbingan Konseling', '07:00:00', '07:45:00'),
(1947, 'XaknA', 23, 50, 'Selasa', 2, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '07:45:00', '08:30:00'),
(1948, 'XaknA', 23, 50, 'Selasa', 3, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '08:30:00', '09:15:00'),
(1949, 'XaknA', 23, 50, 'Selasa', 4, '23-50-XaknA', 'Aplikasi Pengolah Angka/Spreadsheet', '09:15:00', '10:00:00'),
(1950, 'XaknA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '10:00:00', '10:30:00'),
(1951, 'XaknA', 7, 46, 'Selasa', 6, '7-46-XaknA', 'Ekonomi Bisnis', '10:30:00', '11:15:00'),
(1952, 'XaknA', 7, 46, 'Selasa', 7, '7-46-XaknA', 'Ekonomi Bisnis', '11:15:00', '12:00:00'),
(1953, 'XaknA', 5, 39, 'Selasa', 8, '5-39-XaknA', 'Bahasa Indonesia', '12:00:00', '12:45:00'),
(1954, 'XaknA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:45:00', '13:00:00'),
(1955, 'XaknA', 5, 39, 'Selasa', 10, '5-39-XaknA', 'Bahasa Indonesia', '13:00:00', '13:45:00'),
(1956, 'XaknA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(1957, 'XaknA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1958, 'XaknA', 14, 47, 'Rabu', 1, '14-47-XaknA', 'Administrasi Umum', '07:00:00', '07:45:00'),
(1959, 'XaknA', 14, 47, 'Rabu', 2, '14-47-XaknA', 'Administrasi Umum', '07:45:00', '08:30:00'),
(1960, 'XaknA', 14, 49, 'Rabu', 3, '14-49-XaknA', 'Etika Profesi', '08:30:00', '09:15:00'),
(1961, 'XaknA', 14, 49, 'Rabu', 4, '14-49-XaknA', 'Etika Profesi', '09:15:00', '10:00:00'),
(1962, 'XaknA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '10:00:00', '10:30:00'),
(1963, 'XaknA', 14, 52, 'Rabu', 6, '14-52-XaknA', 'Perbankan Dasar', '10:30:00', '11:15:00'),
(1964, 'XaknA', 14, 52, 'Rabu', 7, '14-52-XaknA', 'Perbankan Dasar', '11:15:00', '12:00:00'),
(1965, 'XaknA', 14, 52, 'Rabu', 8, '14-52-XaknA', 'Perbankan Dasar', '12:00:00', '12:45:00'),
(1966, 'XaknA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:45:00', '13:00:00'),
(1967, 'XaknA', 25, 84, 'Rabu', 10, '25-84-XaknA', 'Bahasa Jawa', '13:00:00', '13:45:00'),
(1968, 'XaknA', 25, 84, 'Rabu', 11, '25-84-XaknA', 'Bahasa Jawa', '13:45:00', '14:30:00'),
(1969, 'XaknA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1970, 'XaknA', 11, 43, 'Kamis', 1, '11-43-XaknA', 'Seni Budaya', '07:00:00', '07:45:00'),
(1971, 'XaknA', 11, 43, 'Kamis', 2, '11-43-XaknA', 'Seni Budaya', '07:45:00', '08:30:00'),
(1972, 'XaknA', 11, 43, 'Kamis', 3, '11-43-XaknA', 'Seni Budaya', '08:30:00', '09:15:00'),
(1973, 'XaknA', 8, 40, 'Kamis', 4, '8-40-XaknA', 'Matematika', '09:15:00', '10:00:00'),
(1974, 'XaknA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '10:00:00', '10:30:00'),
(1975, 'XaknA', 8, 40, 'Kamis', 6, '8-40-XaknA', 'Matematika', '10:30:00', '11:15:00'),
(1976, 'XaknA', 9, 44, 'Kamis', 7, '9-44-XaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '11:15:00', '12:00:00'),
(1977, 'XaknA', 9, 44, 'Kamis', 8, '9-44-XaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '12:00:00', '12:45:00'),
(1978, 'XaknA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:45:00', '13:00:00'),
(1979, 'XaknA', 13, 38, 'Kamis', 10, '13-38-XaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:00:00', '13:45:00'),
(1980, 'XaknA', 13, 38, 'Kamis', 11, '13-38-XaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:45:00', '14:30:00'),
(1981, 'XaknA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1982, 'XaknA', 23, 51, 'Sabtu', 1, '23-51-XaknA', 'Akuntansi Dasar', '07:00:00', '07:35:00'),
(1983, 'XaknA', 23, 51, 'Sabtu', 2, '23-51-XaknA', 'Akuntansi Dasar', '07:35:00', '08:10:00'),
(1984, 'XaknA', 23, 51, 'Sabtu', 3, '23-51-XaknA', 'Akuntansi Dasar', '08:10:00', '08:45:00'),
(1985, 'XaknA', 23, 51, 'Sabtu', 4, '23-51-XaknA', 'Akuntansi Dasar', '08:45:00', '09:20:00'),
(1986, 'XaknA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:20:00', '09:50:00'),
(1987, 'XaknA', 23, 51, 'Sabtu', 6, '23-51-XaknA', 'Akuntansi Dasar', '09:50:00', '10:25:00'),
(1988, 'XaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:25:00', '11:00:00'),
(1989, 'XaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(1990, 'XaknA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '11:35:00', '11:50:00'),
(1991, 'XaknA', NULL, NULL, 'Sabtu', 10, '40', 'extrakulikuler', '11:50:00', '12:25:00'),
(1992, 'XaknA', NULL, NULL, 'Sabtu', 11, '41', 'extrakulikuler', '12:25:00', '13:00:00'),
(1993, 'XaknA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(1994, 'XaknA', 20, 45, 'Jum`at', 1, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '07:00:00', '07:35:00'),
(1995, 'XaknA', 20, 45, 'Jum`at', 2, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '07:35:00', '08:10:00'),
(1996, 'XaknA', 20, 45, 'Jum`at', 3, '20-45-XaknA', 'Simulasi dan Komunikasi Digital', '08:10:00', '08:45:00'),
(1997, 'XaknA', 6, 42, 'Jum`at', 4, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:45:00', '09:20:00'),
(1998, 'XaknA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:20:00', '09:40:00'),
(1999, 'XaknA', 6, 42, 'Jum`at', 6, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:40:00', '10:15:00'),
(2000, 'XaknA', 6, 42, 'Jum`at', 7, '6-42-XaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:15:00', '10:50:00'),
(2001, 'XaknA', NULL, NULL, 'Jum`at', 8, '37', 'extrakulikuler', '10:50:00', '12:50:00'),
(2002, 'XIaknA', NULL, NULL, 'Senin', 0, '2', 'upacara', '06:30:00', '07:30:00'),
(2003, 'XIaknA', 14, 63, 'Senin', 1, '14-63-XIaknA', 'Administrasi Pajak', '07:30:00', '08:10:00'),
(2004, 'XIaknA', 14, 63, 'Senin', 2, '14-63-XIaknA', 'Administrasi Pajak', '08:10:00', '08:50:00'),
(2005, 'XIaknA', 14, 63, 'Senin', 3, '14-63-XIaknA', 'Administrasi Pajak', '08:50:00', '09:30:00'),
(2006, 'XIaknA', 17, 59, 'Senin', 4, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '09:30:00', '10:10:00'),
(2007, 'XIaknA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:10:00', '10:40:00'),
(2008, 'XIaknA', 17, 59, 'Senin', 6, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '10:40:00', '11:20:00'),
(2009, 'XIaknA', 17, 59, 'Senin', 7, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:20:00', '12:00:00'),
(2010, 'XIaknA', 23, 62, 'Senin', 8, '23-62-XIaknA', 'Komputer Akuntansi', '12:00:00', '12:40:00'),
(2011, 'XIaknA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:40:00', '12:55:00'),
(2012, 'XIaknA', 23, 62, 'Senin', 10, '23-62-XIaknA', 'Komputer Akuntansi', '12:55:00', '13:35:00'),
(2013, 'XIaknA', 23, 62, 'Senin', 11, '23-62-XIaknA', 'Komputer Akuntansi', '13:35:00', '14:15:00'),
(2014, 'XIaknA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2015, 'XIaknA', NULL, NULL, 'Selasa', 1, '-', 'kosong', '07:00:00', '07:45:00'),
(2016, 'XIaknA', 19, 80, 'Selasa', 2, '19-80-XIaknA', 'Bimbingan Konseling', '07:45:00', '08:30:00'),
(2017, 'XIaknA', NULL, NULL, 'Selasa', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(2018, 'XIaknA', 15, 64, 'Selasa', 4, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '10:00:00'),
(2019, 'XIaknA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '10:00:00', '10:30:00'),
(2020, 'XIaknA', 15, 64, 'Selasa', 6, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '10:30:00', '11:15:00'),
(2021, 'XIaknA', 17, 60, 'Selasa', 7, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '11:15:00', '12:00:00'),
(2022, 'XIaknA', 17, 60, 'Selasa', 8, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '12:00:00', '12:45:00'),
(2023, 'XIaknA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:45:00', '13:00:00'),
(2024, 'XIaknA', 17, 60, 'Selasa', 10, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:00:00', '13:45:00'),
(2025, 'XIaknA', 17, 60, 'Selasa', 11, '17-60-XIaknA', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:45:00', '14:30:00'),
(2026, 'XIaknA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2027, 'XIaknA', 5, 55, 'Rabu', 1, '5-55-XIaknA', 'Bahasa Indonesia', '07:00:00', '07:45:00'),
(2028, 'XIaknA', 5, 55, 'Rabu', 2, '5-55-XIaknA', 'Bahasa Indonesia', '07:45:00', '08:30:00'),
(2029, 'XIaknA', 5, 55, 'Rabu', 3, '5-55-XIaknA', 'Bahasa Indonesia', '08:30:00', '09:15:00'),
(2030, 'XIaknA', 9, 58, 'Rabu', 4, '9-58-XIaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '09:15:00', '10:00:00'),
(2031, 'XIaknA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '10:00:00', '10:30:00'),
(2032, 'XIaknA', 9, 58, 'Rabu', 6, '9-58-XIaknA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '10:30:00', '11:15:00'),
(2033, 'XIaknA', 23, 62, 'Rabu', 7, '23-62-XIaknA', 'Komputer Akuntansi', '11:15:00', '12:00:00'),
(2034, 'XIaknA', 23, 62, 'Rabu', 8, '23-62-XIaknA', 'Komputer Akuntansi', '12:00:00', '12:45:00'),
(2035, 'XIaknA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:45:00', '13:00:00'),
(2036, 'XIaknA', 21, 54, 'Rabu', 10, '21-54-XIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:00:00', '13:45:00'),
(2037, 'XIaknA', 21, 54, 'Rabu', 11, '21-54-XIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '13:45:00', '14:30:00'),
(2038, 'XIaknA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2039, 'XIaknA', 8, 56, 'Kamis', 1, '8-56-XIaknA', 'Matematika', '07:00:00', '07:45:00'),
(2040, 'XIaknA', 8, 56, 'Kamis', 2, '8-56-XIaknA', 'Matematika', '07:45:00', '08:30:00'),
(2041, 'XIaknA', 17, 61, 'Kamis', 3, '17-61-XIaknA', 'Akuntansi Keuangan', '08:30:00', '09:15:00'),
(2042, 'XIaknA', 17, 61, 'Kamis', 4, '17-61-XIaknA', 'Akuntansi Keuangan', '09:15:00', '10:00:00'),
(2043, 'XIaknA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '10:00:00', '10:30:00'),
(2044, 'XIaknA', 17, 61, 'Kamis', 6, '17-61-XIaknA', 'Akuntansi Keuangan', '10:30:00', '11:15:00'),
(2045, 'XIaknA', 15, 64, 'Kamis', 7, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '11:15:00', '12:00:00'),
(2046, 'XIaknA', 15, 64, 'Kamis', 8, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '12:00:00', '12:45:00'),
(2047, 'XIaknA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:45:00', '13:00:00'),
(2048, 'XIaknA', 15, 64, 'Kamis', 10, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(2049, 'XIaknA', NULL, NULL, 'Kamis', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2050, 'XIaknA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2051, 'XIaknA', 17, 59, 'Sabtu', 1, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:35:00'),
(2052, 'XIaknA', 17, 59, 'Sabtu', 2, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:35:00', '08:10:00'),
(2053, 'XIaknA', 17, 59, 'Sabtu', 3, '17-59-XIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:10:00', '08:45:00'),
(2054, 'XIaknA', 17, 61, 'Sabtu', 4, '17-61-XIaknA', 'Akuntansi Keuangan', '08:45:00', '09:20:00'),
(2055, 'XIaknA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:20:00', '09:50:00'),
(2056, 'XIaknA', 17, 61, 'Sabtu', 6, '17-61-XIaknA', 'Akuntansi Keuangan', '09:50:00', '10:25:00'),
(2057, 'XIaknA', 17, 61, 'Sabtu', 7, '17-61-XIaknA', 'Akuntansi Keuangan', '10:25:00', '11:00:00'),
(2058, 'XIaknA', 6, 57, 'Sabtu', 8, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:00:00', '11:35:00'),
(2059, 'XIaknA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '11:35:00', '11:50:00'),
(2060, 'XIaknA', 6, 57, 'Sabtu', 10, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:50:00', '12:25:00'),
(2061, 'XIaknA', 6, 57, 'Sabtu', 11, '6-57-XIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '12:25:00', '13:00:00'),
(2062, 'XIaknA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2063, 'XIaknA', 8, 56, 'Jum`at', 1, '8-56-XIaknA', 'Matematika', '07:00:00', '07:35:00'),
(2064, 'XIaknA', 8, 56, 'Jum`at', 2, '8-56-XIaknA', 'Matematika', '07:35:00', '08:10:00'),
(2065, 'XIaknA', 15, 64, 'Jum`at', 3, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(2066, 'XIaknA', 15, 64, 'Jum`at', 4, '15-64-XIaknA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(2067, 'XIaknA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:20:00', '09:40:00'),
(2068, 'XIaknA', 25, 85, 'Jum`at', 6, '25-85-XIaknA', 'Bahasa Jawa', '09:40:00', '10:15:00'),
(2069, 'XIaknA', 25, 85, 'Jum`at', 7, '25-85-XIaknA', 'Bahasa Jawa', '10:15:00', '10:50:00'),
(2070, 'XIaknA', NULL, NULL, 'Jum`at', 8, '38', 'extrakulikuler', '10:50:00', '12:50:00'),
(2071, 'XIIaknA', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(2072, 'XIIaknA', 4, 70, 'Senin', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:30:00', '08:10:00'),
(2073, 'XIIaknA', 4, 70, 'Senin', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:10:00', '08:50:00'),
(2074, 'XIIaknA', 4, 70, 'Senin', 3, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '08:50:00', '09:30:00'),
(2075, 'XIIaknA', 4, 72, 'Senin', 4, '4-72-XIIaknA', 'Akuntansi Keuangan', '09:30:00', '10:10:00'),
(2076, 'XIIaknA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(2077, 'XIIaknA', 4, 72, 'Senin', 6, '4-72-XIIaknA', 'Akuntansi Keuangan', '10:40:00', '11:20:00'),
(2078, 'XIIaknA', 4, 72, 'Senin', 7, '4-72-XIIaknA', 'Akuntansi Keuangan', '11:20:00', '12:00:00'),
(2079, 'XIIaknA', 16, 68, 'Senin', 8, '16-68-XIIaknA', 'Matematika', '12:00:00', '12:40:00'),
(2080, 'XIIaknA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(2081, 'XIIaknA', 16, 68, 'Senin', 10, '16-68-XIIaknA', 'Matematika', '12:55:00', '13:35:00'),
(2082, 'XIIaknA', NULL, NULL, 'Senin', 11, '-', 'kosong', '13:35:00', '14:15:00'),
(2083, 'XIIaknA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2084, 'XIIaknA', 4, 70, 'Selasa', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:45:00'),
(2085, 'XIIaknA', 4, 70, 'Selasa', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:45:00', '08:30:00'),
(2086, 'XIIaknA', 4, 72, 'Selasa', 3, '4-72-XIIaknA', 'Akuntansi Keuangan', '08:30:00', '09:15:00'),
(2087, 'XIIaknA', 4, 72, 'Selasa', 4, '4-72-XIIaknA', 'Akuntansi Keuangan', '09:15:00', '10:00:00'),
(2088, 'XIIaknA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(2089, 'XIIaknA', 4, 72, 'Selasa', 6, '4-72-XIIaknA', 'Akuntansi Keuangan', '10:30:00', '11:15:00'),
(2090, 'XIIaknA', 23, 75, 'Selasa', 7, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '11:15:00', '12:00:00'),
(2091, 'XIIaknA', 23, 75, 'Selasa', 8, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '12:00:00', '12:45:00'),
(2092, 'XIIaknA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(2093, 'XIIaknA', 23, 75, 'Selasa', 10, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(2094, 'XIIaknA', 23, 75, 'Selasa', 11, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:45:00', '14:30:00'),
(2095, 'XIIaknA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2096, 'XIIaknA', 19, 81, 'Rabu', 1, '19-81-XIIaknA', 'Bimbingan Konseling', '07:00:00', '07:45:00'),
(2097, 'XIIaknA', 6, 69, 'Rabu', 2, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:45:00', '08:30:00'),
(2098, 'XIIaknA', 6, 69, 'Rabu', 3, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(2099, 'XIIaknA', 5, 67, 'Rabu', 4, '5-67-XIIaknA', 'Bahasa Indonesia', '09:15:00', '10:00:00'),
(2100, 'XIIaknA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(2101, 'XIIaknA', 5, 67, 'Rabu', 6, '5-67-XIIaknA', 'Bahasa Indonesia', '10:30:00', '11:15:00'),
(2102, 'XIIaknA', 21, 66, 'Rabu', 7, '21-66-XIIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '11:15:00', '12:00:00'),
(2103, 'XIIaknA', 21, 66, 'Rabu', 8, '21-66-XIIaknA', 'Pendidikan Pancasila dan Kewarganegaraan', '12:00:00', '12:45:00'),
(2104, 'XIIaknA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(2105, 'XIIaknA', 16, 68, 'Rabu', 10, '16-68-XIIaknA', 'Matematika', '13:00:00', '13:45:00'),
(2106, 'XIIaknA', 16, 68, 'Rabu', 11, '16-68-XIIaknA', 'Matematika', '13:45:00', '14:30:00'),
(2107, 'XIIaknA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2108, 'XIIaknA', 4, 70, 'Kamis', 1, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:00:00', '07:45:00'),
(2109, 'XIIaknA', 4, 70, 'Kamis', 2, '4-70-XIIaknA', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '07:45:00', '08:30:00'),
(2110, 'XIIaknA', 4, 73, 'Kamis', 3, '4-73-XIIaknA', 'Komputer Akuntansi', '08:30:00', '09:15:00'),
(2111, 'XIIaknA', 4, 73, 'Kamis', 4, '4-73-XIIaknA', 'Komputer Akuntansi', '09:15:00', '10:00:00'),
(2112, 'XIIaknA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(2113, 'XIIaknA', 4, 73, 'Kamis', 6, '4-73-XIIaknA', 'Komputer Akuntansi', '10:30:00', '11:15:00'),
(2114, 'XIIaknA', 6, 69, 'Kamis', 7, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '11:15:00', '12:00:00'),
(2115, 'XIIaknA', 6, 69, 'Kamis', 8, '6-69-XIIaknA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '12:00:00', '12:45:00'),
(2116, 'XIIaknA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(2117, 'XIIaknA', 23, 75, 'Kamis', 10, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:00:00', '13:45:00'),
(2118, 'XIIaknA', 23, 75, 'Kamis', 11, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '13:45:00', '14:30:00'),
(2119, 'XIIaknA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2120, 'XIIaknA', 4, 73, 'Sabtu', 1, '4-73-XIIaknA', 'Komputer Akuntansi', '07:00:00', '07:35:00'),
(2121, 'XIIaknA', 4, 73, 'Sabtu', 2, '4-73-XIIaknA', 'Komputer Akuntansi', '07:35:00', '08:10:00'),
(2122, 'XIIaknA', 10, 74, 'Sabtu', 3, '10-74-XIIaknA', 'Administrasi Pajak', '08:10:00', '08:45:00'),
(2123, 'XIIaknA', 10, 74, 'Sabtu', 4, '10-74-XIIaknA', 'Administrasi Pajak', '08:45:00', '09:20:00'),
(2124, 'XIIaknA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(2125, 'XIIaknA', 10, 74, 'Sabtu', 6, '10-74-XIIaknA', 'Administrasi Pajak', '09:50:00', '10:25:00'),
(2126, 'XIIaknA', NULL, NULL, 'Sabtu', 7, '-', 'kosong', '10:25:00', '11:00:00'),
(2127, 'XIIaknA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(2128, 'XIIaknA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(2129, 'XIIaknA', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(2130, 'XIIaknA', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(2131, 'XIIaknA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2132, 'XIIaknA', 2, 65, 'Jum`at', 1, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '07:00:00', '07:35:00'),
(2133, 'XIIaknA', 2, 65, 'Jum`at', 2, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '07:35:00', '08:10:00'),
(2134, 'XIIaknA', 2, 65, 'Jum`at', 3, '2-65-XIIaknA', 'Pendidikan Agama dan Budi Pekerti', '08:10:00', '08:45:00'),
(2135, 'XIIaknA', 23, 75, 'Jum`at', 4, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(2136, 'XIIaknA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(2137, 'XIIaknA', 23, 75, 'Jum`at', 6, '23-75-XIIaknA', 'Produk Kreatif dan Kewirausahaan', '09:40:00', '10:15:00'),
(2138, 'XIIaknA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:15:00', '10:50:00'),
(2139, 'XIIaknA', NULL, NULL, 'Jum`at', 8, '39', 'extrakulikuler', '10:50:00', '12:50:00'),
(2140, 'XIIaknB', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(2141, 'XIIaknB', 5, 67, 'Senin', 1, '5-67-XIIaknB', 'Bahasa Indonesia', '07:30:00', '08:10:00'),
(2142, 'XIIaknB', 5, 67, 'Senin', 2, '5-67-XIIaknB', 'Bahasa Indonesia', '08:10:00', '08:50:00'),
(2143, 'XIIaknB', 23, 75, 'Senin', 3, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '08:50:00', '09:30:00'),
(2144, 'XIIaknB', 23, 75, 'Senin', 4, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '09:30:00', '10:10:00'),
(2145, 'XIIaknB', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(2146, 'XIIaknB', 23, 75, 'Senin', 6, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '10:40:00', '11:20:00'),
(2147, 'XIIaknB', 23, 75, 'Senin', 7, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '11:20:00', '12:00:00'),
(2148, 'XIIaknB', 4, 70, 'Senin', 8, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:00:00', '12:40:00'),
(2149, 'XIIaknB', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(2150, 'XIIaknB', 4, 70, 'Senin', 10, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:55:00', '13:35:00'),
(2151, 'XIIaknB', 4, 70, 'Senin', 11, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '13:35:00', '14:15:00'),
(2152, 'XIIaknB', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2153, 'XIIaknB', 17, 73, 'Selasa', 1, '17-73-XIIaknB', 'Komputer Akuntansi', '07:00:00', '07:45:00'),
(2154, 'XIIaknB', 17, 73, 'Selasa', 2, '17-73-XIIaknB', 'Komputer Akuntansi', '07:45:00', '08:30:00'),
(2155, 'XIIaknB', 16, 68, 'Selasa', 3, '16-68-XIIaknB', 'Matematika', '08:30:00', '09:15:00'),
(2156, 'XIIaknB', 16, 68, 'Selasa', 4, '16-68-XIIaknB', 'Matematika', '09:15:00', '10:00:00'),
(2157, 'XIIaknB', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(2158, 'XIIaknB', NULL, NULL, 'Selasa', 6, '-', 'kosong', '10:30:00', '11:15:00'),
(2159, 'XIIaknB', 4, 70, 'Selasa', 7, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:15:00', '12:00:00'),
(2160, 'XIIaknB', 4, 70, 'Selasa', 8, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:00:00', '12:45:00'),
(2161, 'XIIaknB', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(2162, 'XIIaknB', NULL, NULL, 'Selasa', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(2163, 'XIIaknB', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2164, 'XIIaknB', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2165, 'XIIaknB', NULL, NULL, 'Rabu', 1, '-', 'kosong', '07:00:00', '07:45:00'),
(2166, 'XIIaknB', 19, 81, 'Rabu', 2, '19-81-XIIaknB', 'Bimbingan Konseling', '07:45:00', '08:30:00'),
(2167, 'XIIaknB', NULL, NULL, 'Rabu', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(2168, 'XIIaknB', 16, 68, 'Rabu', 4, '16-68-XIIaknB', 'Matematika', '09:15:00', '10:00:00'),
(2169, 'XIIaknB', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(2170, 'XIIaknB', 16, 68, 'Rabu', 6, '16-68-XIIaknB', 'Matematika', '10:30:00', '11:15:00'),
(2171, 'XIIaknB', 17, 71, 'Rabu', 7, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '11:15:00', '12:00:00'),
(2172, 'XIIaknB', 17, 71, 'Rabu', 8, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '12:00:00', '12:45:00'),
(2173, 'XIIaknB', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(2174, 'XIIaknB', 17, 71, 'Rabu', 10, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:00:00', '13:45:00'),
(2175, 'XIIaknB', 17, 71, 'Rabu', 11, '17-71-XIIaknB', 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', '13:45:00', '14:30:00'),
(2176, 'XIIaknB', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2177, 'XIIaknB', 14, 74, 'Kamis', 1, '14-74-XIIaknB', 'Administrasi Pajak', '07:00:00', '07:45:00'),
(2178, 'XIIaknB', 14, 74, 'Kamis', 2, '14-74-XIIaknB', 'Administrasi Pajak', '07:45:00', '08:30:00'),
(2179, 'XIIaknB', 14, 74, 'Kamis', 3, '14-74-XIIaknB', 'Administrasi Pajak', '08:30:00', '09:15:00'),
(2180, 'XIIaknB', 6, 69, 'Kamis', 4, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(2181, 'XIIaknB', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(2182, 'XIIaknB', 6, 69, 'Kamis', 6, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:30:00', '11:15:00'),
(2183, 'XIIaknB', 4, 70, 'Kamis', 7, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '11:15:00', '12:00:00'),
(2184, 'XIIaknB', 4, 70, 'Kamis', 8, '4-70-XIIaknB', 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Manufaktur', '12:00:00', '12:45:00'),
(2185, 'XIIaknB', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(2186, 'XIIaknB', 6, 69, 'Kamis', 10, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '13:00:00', '13:45:00'),
(2187, 'XIIaknB', 6, 69, 'Kamis', 11, '6-69-XIIaknB', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '13:45:00', '14:30:00'),
(2188, 'XIIaknB', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2189, 'XIIaknB', 21, 66, 'Sabtu', 1, '21-66-XIIaknB', 'Pendidikan Pancasila dan Kewarganegaraan', '07:00:00', '07:35:00'),
(2190, 'XIIaknB', 21, 66, 'Sabtu', 2, '21-66-XIIaknB', 'Pendidikan Pancasila dan Kewarganegaraan', '07:35:00', '08:10:00'),
(2191, 'XIIaknB', 4, 72, 'Sabtu', 3, '4-72-XIIaknB', 'Akuntansi Keuangan', '08:10:00', '08:45:00'),
(2192, 'XIIaknB', 4, 72, 'Sabtu', 4, '4-72-XIIaknB', 'Akuntansi Keuangan', '08:45:00', '09:20:00'),
(2193, 'XIIaknB', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(2194, 'XIIaknB', 4, 72, 'Sabtu', 6, '4-72-XIIaknB', 'Akuntansi Keuangan', '09:50:00', '10:25:00'),
(2195, 'XIIaknB', 23, 75, 'Sabtu', 7, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '10:25:00', '11:00:00'),
(2196, 'XIIaknB', 23, 75, 'Sabtu', 8, '23-75-XIIaknB', 'Produk Kreatif dan Kewirausahaan', '11:00:00', '11:35:00'),
(2197, 'XIIaknB', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(2198, 'XIIaknB', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(2199, 'XIIaknB', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(2200, 'XIIaknB', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2201, 'XIIaknB', 17, 73, 'Jum`at', 1, '17-73-XIIaknB', 'Komputer Akuntansi', '07:00:00', '07:35:00'),
(2202, 'XIIaknB', 17, 73, 'Jum`at', 2, '17-73-XIIaknB', 'Komputer Akuntansi', '07:35:00', '08:10:00'),
(2203, 'XIIaknB', 17, 73, 'Jum`at', 3, '17-73-XIIaknB', 'Komputer Akuntansi', '08:10:00', '08:45:00'),
(2204, 'XIIaknB', 2, 65, 'Jum`at', 4, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '08:45:00', '09:20:00'),
(2205, 'XIIaknB', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(2206, 'XIIaknB', 2, 65, 'Jum`at', 6, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '09:40:00', '10:15:00'),
(2207, 'XIIaknB', 2, 65, 'Jum`at', 7, '2-65-XIIaknB', 'Pendidikan Agama dan Budi Pekerti', '10:15:00', '10:50:00'),
(2208, 'XIIaknB', NULL, NULL, 'Jum`at', 8, '39', 'extrakulikuler', '10:50:00', '12:50:00'),
(2209, 'XkntrA', NULL, NULL, 'Senin', 0, '1', 'upacara', '06:30:00', '07:30:00'),
(2210, 'XkntrA', 8, 12, 'Senin', 1, '8-12-XkntrA', 'IPA', '07:30:00', '08:10:00'),
(2211, 'XkntrA', 8, 12, 'Senin', 2, '8-12-XkntrA', 'IPA', '08:10:00', '08:50:00'),
(2212, 'XkntrA', NULL, NULL, 'Senin', 3, '-', 'kosong', '08:50:00', '09:30:00'),
(2213, 'XkntrA', 11, 5, 'Senin', 4, '11-5-XkntrA', 'Sejarah Indonesia', '09:30:00', '10:10:00'),
(2214, 'XkntrA', NULL, NULL, 'Senin', 5, '4', 'istirahat 1', '10:10:00', '10:40:00'),
(2215, 'XkntrA', 11, 5, 'Senin', 6, '11-5-XkntrA', 'Sejarah Indonesia', '10:40:00', '11:20:00'),
(2216, 'XkntrA', 11, 5, 'Senin', 7, '11-5-XkntrA', 'Sejarah Indonesia', '11:20:00', '12:00:00'),
(2217, 'XkntrA', 14, 11, 'Senin', 8, '14-11-XkntrA', 'Administrasi Umum', '12:00:00', '12:40:00'),
(2218, 'XkntrA', NULL, NULL, 'Senin', 9, '22', 'istirahat 2', '12:40:00', '12:55:00'),
(2219, 'XkntrA', 14, 11, 'Senin', 10, '14-11-XkntrA', 'Administrasi Umum', '12:55:00', '13:35:00'),
(2220, 'XkntrA', NULL, NULL, 'Senin', 11, '-', 'kosong', '13:35:00', '14:15:00'),
(2221, 'XkntrA', NULL, NULL, 'Selasa', 0, '44', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2222, 'XkntrA', 5, 3, 'Selasa', 1, '5-3-XkntrA', 'Bahasa Indonesia', '07:00:00', '07:45:00'),
(2223, 'XkntrA', 5, 3, 'Selasa', 2, '5-3-XkntrA', 'Bahasa Indonesia', '07:45:00', '08:30:00'),
(2224, 'XkntrA', 5, 3, 'Selasa', 3, '5-3-XkntrA', 'Bahasa Indonesia', '08:30:00', '09:15:00'),
(2225, 'XkntrA', 5, 3, 'Selasa', 4, '5-3-XkntrA', 'Bahasa Indonesia', '09:15:00', '10:00:00'),
(2226, 'XkntrA', NULL, NULL, 'Selasa', 5, '7', 'istirahat 1', '10:00:00', '10:30:00'),
(2227, 'XkntrA', 25, 82, 'Selasa', 6, '25-82-XkntrA', 'Bahasa Jawa', '10:30:00', '11:15:00'),
(2228, 'XkntrA', 25, 82, 'Selasa', 7, '25-82-XkntrA', 'Bahasa Jawa', '11:15:00', '12:00:00'),
(2229, 'XkntrA', 7, 14, 'Selasa', 8, '7-14-XkntrA', 'Korespondensi', '12:00:00', '12:45:00'),
(2230, 'XkntrA', NULL, NULL, 'Selasa', 9, '25', 'istirahat 2', '12:45:00', '13:00:00'),
(2231, 'XkntrA', 7, 14, 'Selasa', 10, '7-14-XkntrA', 'Korespondensi', '13:00:00', '13:45:00'),
(2232, 'XkntrA', 7, 14, 'Selasa', 11, '7-14-XkntrA', 'Korespondensi', '13:45:00', '14:30:00'),
(2233, 'XkntrA', NULL, NULL, 'Rabu', 0, '47', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2234, 'XkntrA', 9, 8, 'Rabu', 1, '9-8-XkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:00:00', '07:45:00'),
(2235, 'XkntrA', 9, 8, 'Rabu', 2, '9-8-XkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:45:00', '08:30:00'),
(2236, 'XkntrA', 19, 76, 'Rabu', 3, '19-76-XkntrA', 'Bimbingan Konseling', '08:30:00', '09:15:00'),
(2237, 'XkntrA', 7, 10, 'Rabu', 4, '7-10-XkntrA', 'Ekonomi Bisnis', '09:15:00', '10:00:00'),
(2238, 'XkntrA', NULL, NULL, 'Rabu', 5, '10', 'istirahat 1', '10:00:00', '10:30:00'),
(2239, 'XkntrA', 7, 10, 'Rabu', 6, '7-10-XkntrA', 'Ekonomi Bisnis', '10:30:00', '11:15:00'),
(2240, 'XkntrA', 7, 14, 'Rabu', 7, '7-14-XkntrA', 'Korespondensi', '11:15:00', '12:00:00'),
(2241, 'XkntrA', 7, 14, 'Rabu', 8, '7-14-XkntrA', 'Korespondensi', '12:00:00', '12:45:00'),
(2242, 'XkntrA', NULL, NULL, 'Rabu', 9, '28', 'istirahat 2', '12:45:00', '13:00:00'),
(2243, 'XkntrA', NULL, NULL, 'Rabu', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(2244, 'XkntrA', NULL, NULL, 'Rabu', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2245, 'XkntrA', NULL, NULL, 'Kamis', 0, '50', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2246, 'XkntrA', 6, 6, 'Kamis', 1, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:00:00', '07:45:00'),
(2247, 'XkntrA', 6, 6, 'Kamis', 2, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:45:00', '08:30:00'),
(2248, 'XkntrA', 6, 6, 'Kamis', 3, '6-6-XkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(2249, 'XkntrA', 11, 7, 'Kamis', 4, '11-7-XkntrA', 'Seni Budaya', '09:15:00', '10:00:00'),
(2250, 'XkntrA', NULL, NULL, 'Kamis', 5, '13', 'istirahat 1', '10:00:00', '10:30:00'),
(2251, 'XkntrA', 11, 7, 'Kamis', 6, '11-7-XkntrA', 'Seni Budaya', '10:30:00', '11:15:00'),
(2252, 'XkntrA', 11, 7, 'Kamis', 7, '11-7-XkntrA', 'Seni Budaya', '11:15:00', '12:00:00'),
(2253, 'XkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '12:00:00', '12:45:00'),
(2254, 'XkntrA', NULL, NULL, 'Kamis', 9, '31', 'istirahat 2', '12:45:00', '13:00:00'),
(2255, 'XkntrA', 8, 4, 'Kamis', 10, '8-4-XkntrA', 'Matematika', '13:00:00', '13:45:00'),
(2256, 'XkntrA', 8, 4, 'Kamis', 11, '8-4-XkntrA', 'Matematika', '13:45:00', '14:30:00'),
(2257, 'XkntrA', NULL, NULL, 'Sabtu', 0, '56', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2258, 'XkntrA', 20, 9, 'Sabtu', 1, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '07:00:00', '07:35:00'),
(2259, 'XkntrA', 20, 9, 'Sabtu', 2, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '07:35:00', '08:10:00'),
(2260, 'XkntrA', 20, 9, 'Sabtu', 3, '20-9-XkntrA', 'Simulasi dan Komunikasi Digital', '08:10:00', '08:45:00'),
(2261, 'XkntrA', 7, 15, 'Sabtu', 4, '7-15-XkntrA', 'Kearsipan', '08:45:00', '09:20:00'),
(2262, 'XkntrA', NULL, NULL, 'Sabtu', 5, '16', 'istirahat 1', '09:20:00', '09:50:00'),
(2263, 'XkntrA', 7, 15, 'Sabtu', 6, '7-15-XkntrA', 'Kearsipan', '09:50:00', '10:25:00'),
(2264, 'XkntrA', 7, 15, 'Sabtu', 7, '7-15-XkntrA', 'Kearsipan', '10:25:00', '11:00:00'),
(2265, 'XkntrA', 7, 15, 'Sabtu', 8, '7-15-XkntrA', 'Kearsipan', '11:00:00', '11:35:00'),
(2266, 'XkntrA', NULL, NULL, 'Sabtu', 9, '34', 'istirahat 2', '11:35:00', '11:50:00'),
(2267, 'XkntrA', NULL, NULL, 'Sabtu', 10, '40', 'extrakulikuler', '11:50:00', '12:25:00'),
(2268, 'XkntrA', NULL, NULL, 'Sabtu', 11, '41', 'extrakulikuler', '12:25:00', '13:00:00'),
(2269, 'XkntrA', NULL, NULL, 'Jum`at', 0, '53', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2270, 'XkntrA', 13, 2, 'Jum`at', 1, '13-2-XkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:00:00', '07:35:00'),
(2271, 'XkntrA', 13, 2, 'Jum`at', 2, '13-2-XkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:35:00', '08:10:00'),
(2272, 'XkntrA', 8, 4, 'Jum`at', 3, '8-4-XkntrA', 'Matematika', '08:10:00', '08:45:00'),
(2273, 'XkntrA', 8, 4, 'Jum`at', 4, '8-4-XkntrA', 'Matematika', '08:45:00', '09:20:00'),
(2274, 'XkntrA', NULL, NULL, 'Jum`at', 5, '19', 'istirahat 1', '09:20:00', '09:40:00'),
(2275, 'XkntrA', NULL, NULL, 'Jum`at', 6, '-', 'kosong', '09:40:00', '10:15:00'),
(2276, 'XkntrA', NULL, NULL, 'Jum`at', 7, '-', 'kosong', '10:15:00', '10:50:00'),
(2277, 'XkntrA', NULL, NULL, 'Jum`at', 8, '37', 'extrakulikuler', '10:50:00', '12:50:00'),
(2278, 'XIkntrA', NULL, NULL, 'Senin', 0, '2', 'upacara', '06:30:00', '07:30:00'),
(2279, 'XIkntrA', 21, 17, 'Senin', 1, '21-17-XIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '07:30:00', '08:10:00'),
(2280, 'XIkntrA', 21, 17, 'Senin', 2, '21-17-XIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '08:10:00', '08:50:00'),
(2281, 'XIkntrA', 8, 19, 'Senin', 3, '8-19-XIkntrA', 'Matematika', '08:50:00', '09:30:00'),
(2282, 'XIkntrA', 5, 18, 'Senin', 4, '5-18-XIkntrA', 'Bahasa Indonesia', '09:30:00', '10:10:00'),
(2283, 'XIkntrA', NULL, NULL, 'Senin', 5, '5', 'istirahat 1', '10:10:00', '10:40:00'),
(2284, 'XIkntrA', 5, 18, 'Senin', 6, '5-18-XIkntrA', 'Bahasa Indonesia', '10:40:00', '11:20:00'),
(2285, 'XIkntrA', NULL, NULL, 'Senin', 7, '-', 'kosong', '11:20:00', '12:00:00'),
(2286, 'XIkntrA', 24, 23, 'Senin', 8, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '12:00:00', '12:40:00'),
(2287, 'XIkntrA', NULL, NULL, 'Senin', 9, '23', 'istirahat 2', '12:40:00', '12:55:00'),
(2288, 'XIkntrA', 24, 23, 'Senin', 10, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '12:55:00', '13:35:00'),
(2289, 'XIkntrA', 24, 23, 'Senin', 11, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '13:35:00', '14:15:00'),
(2290, 'XIkntrA', NULL, NULL, 'Selasa', 0, '45', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2291, 'XIkntrA', 15, 26, 'Selasa', 1, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:45:00'),
(2292, 'XIkntrA', 15, 26, 'Selasa', 2, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:45:00', '08:30:00'),
(2293, 'XIkntrA', NULL, NULL, 'Selasa', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(2294, 'XIkntrA', 19, 77, 'Selasa', 4, '19-77-XIkntrA', 'Bimbingan Konseling', '09:15:00', '10:00:00'),
(2295, 'XIkntrA', NULL, NULL, 'Selasa', 5, '8', 'istirahat 1', '10:00:00', '10:30:00'),
(2296, 'XIkntrA', 24, 23, 'Selasa', 6, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '10:30:00', '11:15:00'),
(2297, 'XIkntrA', 24, 23, 'Selasa', 7, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '11:15:00', '12:00:00'),
(2298, 'XIkntrA', 24, 23, 'Selasa', 8, '24-23-XIkntrA', 'Otomatisasi Tata Kelola Keuangan', '12:00:00', '12:45:00'),
(2299, 'XIkntrA', NULL, NULL, 'Selasa', 9, '26', 'istirahat 2', '12:45:00', '13:00:00'),
(2300, 'XIkntrA', NULL, NULL, 'Selasa', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(2301, 'XIkntrA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2302, 'XIkntrA', NULL, NULL, 'Rabu', 0, '48', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2303, 'XIkntrA', 15, 26, 'Rabu', 1, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:45:00'),
(2304, 'XIkntrA', 15, 26, 'Rabu', 2, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:45:00', '08:30:00'),
(2305, 'XIkntrA', 15, 26, 'Rabu', 3, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:30:00', '09:15:00'),
(2306, 'XIkntrA', 24, 24, 'Rabu', 4, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '09:15:00', '10:00:00'),
(2307, 'XIkntrA', NULL, NULL, 'Rabu', 5, '11', 'istirahat 1', '10:00:00', '10:30:00'),
(2308, 'XIkntrA', 24, 24, 'Rabu', 6, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '10:30:00', '11:15:00'),
(2309, 'XIkntrA', 24, 24, 'Rabu', 7, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '11:15:00', '12:00:00'),
(2310, 'XIkntrA', 24, 24, 'Rabu', 8, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '12:00:00', '12:45:00'),
(2311, 'XIkntrA', NULL, NULL, 'Rabu', 9, '29', 'istirahat 2', '12:45:00', '13:00:00'),
(2312, 'XIkntrA', 24, 24, 'Rabu', 10, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:00:00', '13:45:00'),
(2313, 'XIkntrA', 24, 24, 'Rabu', 11, '24-24-XIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:45:00', '14:30:00'),
(2314, 'XIkntrA', NULL, NULL, 'Kamis', 0, '51', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2315, 'XIkntrA', 9, 21, 'Kamis', 1, '9-21-XIkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:00:00', '07:45:00'),
(2316, 'XIkntrA', 9, 21, 'Kamis', 2, '9-21-XIkntrA', 'Pendidikan Jasmani, Olahraga dan Kesehatan', '07:45:00', '08:30:00'),
(2317, 'XIkntrA', 15, 26, 'Kamis', 3, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:30:00', '09:15:00'),
(2318, 'XIkntrA', 15, 26, 'Kamis', 4, '15-26-XIkntrA', 'Produk Kreatif dan Kewirausahaan', '09:15:00', '10:00:00'),
(2319, 'XIkntrA', NULL, NULL, 'Kamis', 5, '14', 'istirahat 1', '10:00:00', '10:30:00'),
(2320, 'XIkntrA', 12, 16, 'Kamis', 6, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '10:30:00', '11:15:00'),
(2321, 'XIkntrA', 12, 16, 'Kamis', 7, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '11:15:00', '12:00:00'),
(2322, 'XIkntrA', 12, 16, 'Kamis', 8, '12-16-XIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:00:00', '12:45:00'),
(2323, 'XIkntrA', NULL, NULL, 'Kamis', 9, '32', 'istirahat 2', '12:45:00', '13:00:00'),
(2324, 'XIkntrA', 7, 25, 'Kamis', 10, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '13:00:00', '13:45:00'),
(2325, 'XIkntrA', 7, 25, 'Kamis', 11, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '13:45:00', '14:30:00'),
(2326, 'XIkntrA', NULL, NULL, 'Sabtu', 0, '57', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2327, 'XIkntrA', 11, 22, 'Sabtu', 1, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:35:00'),
(2328, 'XIkntrA', 11, 22, 'Sabtu', 2, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:35:00', '08:10:00'),
(2329, 'XIkntrA', 11, 22, 'Sabtu', 3, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:10:00', '08:45:00'),
(2330, 'XIkntrA', 11, 22, 'Sabtu', 4, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:45:00', '09:20:00'),
(2331, 'XIkntrA', NULL, NULL, 'Sabtu', 5, '17', 'istirahat 1', '09:20:00', '09:50:00'),
(2332, 'XIkntrA', 11, 22, 'Sabtu', 6, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '09:50:00', '10:25:00'),
(2333, 'XIkntrA', 11, 22, 'Sabtu', 7, '11-22-XIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '10:25:00', '11:00:00'),
(2334, 'XIkntrA', NULL, NULL, 'Sabtu', 8, '-', 'kosong', '11:00:00', '11:35:00'),
(2335, 'XIkntrA', NULL, NULL, 'Sabtu', 9, '35', 'istirahat 2', '11:35:00', '11:50:00'),
(2336, 'XIkntrA', 7, 25, 'Sabtu', 10, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:50:00', '12:25:00'),
(2337, 'XIkntrA', 7, 25, 'Sabtu', 11, '7-25-XIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '12:25:00', '13:00:00'),
(2338, 'XIkntrA', NULL, NULL, 'Jum`at', 0, '54', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2339, 'XIkntrA', 6, 20, 'Jum`at', 1, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:00:00', '07:35:00'),
(2340, 'XIkntrA', 6, 20, 'Jum`at', 2, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '07:35:00', '08:10:00'),
(2341, 'XIkntrA', 6, 20, 'Jum`at', 3, '6-20-XIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:10:00', '08:45:00'),
(2342, 'XIkntrA', NULL, NULL, 'Jum`at', 4, '-', 'kosong', '08:45:00', '09:20:00'),
(2343, 'XIkntrA', NULL, NULL, 'Jum`at', 5, '20', 'istirahat 1', '09:20:00', '09:40:00'),
(2344, 'XIkntrA', 8, 19, 'Jum`at', 6, '8-19-XIkntrA', 'Matematika', '09:40:00', '10:15:00'),
(2345, 'XIkntrA', 8, 19, 'Jum`at', 7, '8-19-XIkntrA', 'Matematika', '10:15:00', '10:50:00'),
(2346, 'XIkntrA', NULL, NULL, 'Jum`at', 8, '38', 'extrakulikuler', '10:50:00', '12:50:00'),
(2347, 'XIIkntrA', NULL, NULL, 'Senin', 0, '3', 'upacara', '06:30:00', '07:30:00'),
(2348, 'XIIkntrA', 19, 78, 'Senin', 1, '19-78-XIIkntrA', 'Bimbingan Konseling', '07:30:00', '08:10:00'),
(2349, 'XIIkntrA', 16, 30, 'Senin', 2, '16-30-XIIkntrA', 'Matematika', '08:10:00', '08:50:00'),
(2350, 'XIIkntrA', 16, 30, 'Senin', 3, '16-30-XIIkntrA', 'Matematika', '08:50:00', '09:30:00'),
(2351, 'XIIkntrA', 14, 35, 'Senin', 4, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '09:30:00', '10:10:00'),
(2352, 'XIIkntrA', NULL, NULL, 'Senin', 5, '6', 'istirahat 1', '10:10:00', '10:40:00'),
(2353, 'XIIkntrA', 14, 35, 'Senin', 6, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:40:00', '11:20:00'),
(2354, 'XIIkntrA', 14, 35, 'Senin', 7, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:20:00', '12:00:00'),
(2355, 'XIIkntrA', 2, 27, 'Senin', 8, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:00:00', '12:40:00'),
(2356, 'XIIkntrA', NULL, NULL, 'Senin', 9, '24', 'istirahat 2', '12:40:00', '12:55:00'),
(2357, 'XIIkntrA', 2, 27, 'Senin', 10, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '12:55:00', '13:35:00'),
(2358, 'XIIkntrA', 2, 27, 'Senin', 11, '2-27-XIIkntrA', 'Pendidikan Agama dan Budi Pekerti', '13:35:00', '14:15:00'),
(2359, 'XIIkntrA', NULL, NULL, 'Selasa', 0, '46', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2360, 'XIIkntrA', 24, 32, 'Selasa', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(2361, 'XIIkntrA', 24, 32, 'Selasa', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(2362, 'XIIkntrA', 6, 31, 'Selasa', 3, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '08:30:00', '09:15:00'),
(2363, 'XIIkntrA', 6, 31, 'Selasa', 4, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(2364, 'XIIkntrA', NULL, NULL, 'Selasa', 5, '9', 'istirahat 1', '10:00:00', '10:30:00'),
(2365, 'XIIkntrA', 21, 28, 'Selasa', 6, '21-28-XIIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '10:30:00', '11:15:00'),
(2366, 'XIIkntrA', 21, 28, 'Selasa', 7, '21-28-XIIkntrA', 'Pendidikan Pancasila dan Kewarganegaraan', '11:15:00', '12:00:00'),
(2367, 'XIIkntrA', 16, 30, 'Selasa', 8, '16-30-XIIkntrA', 'Matematika', '12:00:00', '12:45:00'),
(2368, 'XIIkntrA', NULL, NULL, 'Selasa', 9, '27', 'istirahat 2', '12:45:00', '13:00:00'),
(2369, 'XIIkntrA', 16, 30, 'Selasa', 10, '16-30-XIIkntrA', 'Matematika', '13:00:00', '13:45:00'),
(2370, 'XIIkntrA', NULL, NULL, 'Selasa', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2371, 'XIIkntrA', NULL, NULL, 'Rabu', 0, '49', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2372, 'XIIkntrA', 24, 32, 'Rabu', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(2373, 'XIIkntrA', 24, 32, 'Rabu', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(2374, 'XIIkntrA', 24, 32, 'Rabu', 3, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '08:30:00', '09:15:00'),
(2375, 'XIIkntrA', 6, 31, 'Rabu', 4, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '09:15:00', '10:00:00'),
(2376, 'XIIkntrA', NULL, NULL, 'Rabu', 5, '12', 'istirahat 1', '10:00:00', '10:30:00'),
(2377, 'XIIkntrA', 6, 31, 'Rabu', 6, '6-31-XIIkntrA', 'Bahasa Inggris dan Bahasa Asing Lainnya*)', '10:30:00', '11:15:00'),
(2378, 'XIIkntrA', 5, 29, 'Rabu', 7, '5-29-XIIkntrA', 'Bahasa Indonesia', '11:15:00', '12:00:00'),
(2379, 'XIIkntrA', 5, 29, 'Rabu', 8, '5-29-XIIkntrA', 'Bahasa Indonesia', '12:00:00', '12:45:00'),
(2380, 'XIIkntrA', NULL, NULL, 'Rabu', 9, '30', 'istirahat 2', '12:45:00', '13:00:00'),
(2381, 'XIIkntrA', NULL, NULL, 'Rabu', 10, '-', 'kosong', '13:00:00', '13:45:00'),
(2382, 'XIIkntrA', NULL, NULL, 'Rabu', 11, '-', 'kosong', '13:45:00', '14:30:00'),
(2383, 'XIIkntrA', NULL, NULL, 'Kamis', 0, '52', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2384, 'XIIkntrA', 24, 32, 'Kamis', 1, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:00:00', '07:45:00'),
(2385, 'XIIkntrA', 24, 32, 'Kamis', 2, '24-32-XIIkntrA', 'Otomatisasi Tata Kelola Kepegawaian', '07:45:00', '08:30:00'),
(2386, 'XIIkntrA', NULL, NULL, 'Kamis', 3, '-', 'kosong', '08:30:00', '09:15:00'),
(2387, 'XIIkntrA', 14, 35, 'Kamis', 4, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '09:15:00', '10:00:00'),
(2388, 'XIIkntrA', NULL, NULL, 'Kamis', 5, '15', 'istirahat 1', '10:00:00', '10:30:00'),
(2389, 'XIIkntrA', 14, 35, 'Kamis', 6, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '10:30:00', '11:15:00'),
(2390, 'XIIkntrA', 14, 35, 'Kamis', 7, '14-35-XIIkntrA', 'Otomatisasi Tata Kelola Humas dan Keprotokolan', '11:15:00', '12:00:00'),
(2391, 'XIIkntrA', NULL, NULL, 'Kamis', 8, '-', 'kosong', '12:00:00', '12:45:00'),
(2392, 'XIIkntrA', NULL, NULL, 'Kamis', 9, '33', 'istirahat 2', '12:45:00', '13:00:00'),
(2393, 'XIIkntrA', 24, 34, 'Kamis', 10, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:00:00', '13:45:00'),
(2394, 'XIIkntrA', 24, 34, 'Kamis', 11, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '13:45:00', '14:30:00'),
(2395, 'XIIkntrA', NULL, NULL, 'Sabtu', 0, '58', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2396, 'XIIkntrA', 22, 36, 'Sabtu', 1, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:35:00'),
(2397, 'XIIkntrA', 22, 36, 'Sabtu', 2, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:35:00', '08:10:00'),
(2398, 'XIIkntrA', 22, 36, 'Sabtu', 3, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(2399, 'XIIkntrA', 22, 36, 'Sabtu', 4, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(2400, 'XIIkntrA', NULL, NULL, 'Sabtu', 5, '18', 'istirahat 1', '09:20:00', '09:50:00'),
(2401, 'XIIkntrA', 24, 33, 'Sabtu', 6, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '09:50:00', '10:25:00'),
(2402, 'XIIkntrA', 24, 33, 'Sabtu', 7, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '10:25:00', '11:00:00'),
(2403, 'XIIkntrA', 24, 33, 'Sabtu', 8, '24-33-XIIkntrA', 'Otomatisasi Tata Kelola Keuangan', '11:00:00', '11:35:00'),
(2404, 'XIIkntrA', NULL, NULL, 'Sabtu', 9, '36', 'istirahat 2', '11:35:00', '11:50:00'),
(2405, 'XIIkntrA', NULL, NULL, 'Sabtu', 10, '42', '-', '11:50:00', '12:15:00'),
(2406, 'XIIkntrA', NULL, NULL, 'Sabtu', 11, '43', '-', '12:15:00', '12:40:00'),
(2407, 'XIIkntrA', NULL, NULL, 'Jum`at', 0, '55', 'Sholat Dhuha', '06:30:00', '07:00:00'),
(2408, 'XIIkntrA', 22, 36, 'Jum`at', 1, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:00:00', '07:35:00'),
(2409, 'XIIkntrA', 22, 36, 'Jum`at', 2, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '07:35:00', '08:10:00'),
(2410, 'XIIkntrA', 22, 36, 'Jum`at', 3, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:10:00', '08:45:00'),
(2411, 'XIIkntrA', 22, 36, 'Jum`at', 4, '22-36-XIIkntrA', 'Produk Kreatif dan Kewirausahaan', '08:45:00', '09:20:00'),
(2412, 'XIIkntrA', NULL, NULL, 'Jum`at', 5, '21', 'istirahat 1', '09:20:00', '09:40:00'),
(2413, 'XIIkntrA', 24, 34, 'Jum`at', 6, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '09:40:00', '10:15:00'),
(2414, 'XIIkntrA', 24, 34, 'Jum`at', 7, '24-34-XIIkntrA', 'Otomatisasi Tata Kelola Sarana dan Prasarana', '10:15:00', '10:50:00'),
(2415, 'XIIkntrA', NULL, NULL, 'Jum`at', 8, '39', 'extrakulikuler', '10:50:00', '12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `request_jadwal`
--

CREATE TABLE `request_jadwal` (
  `id_request` int(10) NOT NULL,
  `id_guru` varchar(10) NOT NULL,
  `hari` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request_jadwal`
--

INSERT INTO `request_jadwal` (`id_request`, `id_guru`, `hari`) VALUES
(10, '5', 'Senin,Selasa,Rabu'),
(11, '4', 'Senin,Selasa,Kamis,Sabtu'),
(12, '8', 'Senin,Kamis,Jum`at'),
(13, '9', 'Rabu,Kamis'),
(14, '19', 'Senin,Selasa,Rabu,Kamis,Jum`at'),
(15, '22', 'Jum`at,Sabtu'),
(16, '10', 'Sabtu'),
(17, '11', 'Senin,Kamis,Sabtu'),
(18, '14', 'Senin,Rabu,Kamis'),
(19, '20', 'Jum`at,Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_jurusan` varchar(5) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `id_jurusan`, `nama_ruangan`) VALUES
('HLM1', '', 'Halim 1'),
('HLM2', '', 'Halim 2'),
('HLM3', '', 'Halim 3'),
('HLM4', '', 'Halim 4');

-- --------------------------------------------------------

--
-- Table structure for table `rumusan`
--

CREATE TABLE `rumusan` (
  `id_rumusan` int(11) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `hari_request` varchar(255) NOT NULL,
  `kelas` mediumtext NOT NULL,
  `total` int(11) NOT NULL,
  `beban_kerja` int(11) NOT NULL,
  `hasil_rumusan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rumusan`
--

INSERT INTO `rumusan` (`id_rumusan`, `id_guru`, `hari_request`, `kelas`, `total`, `beban_kerja`, `hasil_rumusan`) VALUES
(159, 1, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(160, 2, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIaknA,XIIaknB,XIIkntrA', 147, 9, 0.06),
(161, 3, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', '', 0, 0, 0),
(162, 4, 'Senin,Selasa,Kamis,Sabtu', 'XIIaknA,XIIaknB', 68, 31, 1.46),
(163, 5, 'Senin,Selasa,Rabu', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 189, 20, 1.11),
(164, 6, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 347, 24, 0.07),
(165, 7, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIkntrA,XkntrA', 149, 19, 0.13),
(166, 8, 'Senin,Kamis,Jum`at', 'XaknA,XIaknA,XIkntrA,XkntrA', 96, 20, 1.21),
(167, 9, 'Rabu,Kamis', 'XaknA,XIaknA,XIkntrA,XkntrA', 72, 8, 1.11),
(168, 10, 'Sabtu', 'XIIaknA', 7, 3, 1.43),
(169, 11, 'Senin,Kamis,Sabtu', 'XaknA,XIkntrA,XkntrA', 77, 18, 1.23),
(170, 12, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 102, 6, 0.06),
(171, 13, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 98, 4, 0.04),
(172, 14, 'Senin,Rabu,Kamis', 'XaknA,XIaknA,XIIaknB,XIIkntrA,XkntrA', 135, 25, 1.19),
(173, 15, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIkntrA', 102, 14, 0.14),
(174, 16, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIaknA,XIIaknB,XIIkntrA', 147, 12, 0.08),
(175, 17, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIIaknA,XIIaknB', 149, 29, 0.19),
(176, 18, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XkntrA', 98, 6, 0.06),
(177, 19, 'Senin,Selasa,Rabu,Kamis,Jum`at', 'XaknA,XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA,XkntrA', 294, 7, 1.02),
(178, 20, 'Jum`at,Sabtu', 'XaknA,XkntrA', 26, 6, 1.23),
(179, 21, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIaknA,XIIaknA,XIIaknB,XIIkntrA,XIkntrA', 249, 10, 0.04),
(180, 22, 'Jum`at,Sabtu', 'XIIkntrA', 13, 8, 1.62),
(181, 23, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIIaknA,XIIaknB', 198, 29, 0.15),
(182, 24, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XIIkntrA,XIkntrA', 100, 31, 0.31),
(183, 25, 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu', 'XaknA,XIaknA,XIkntrA,XkntrA', 200, 8, 0.04);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_dosen`
--

CREATE TABLE `tugas_dosen` (
  `id_tugas` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_dosen` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_matkul` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_matkul` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_ruangan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tugas_guru`
--

CREATE TABLE `tugas_guru` (
  `id_tugas` varchar(16) NOT NULL,
  `id_guru` varchar(16) NOT NULL,
  `id_mapel` varchar(10) NOT NULL,
  `kode_mapel` varchar(8) NOT NULL,
  `id_kelas` varchar(16) NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `sisa_jam` int(11) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `beban_jam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tugas_guru`
--

INSERT INTO `tugas_guru` (`id_tugas`, `id_guru`, `id_mapel`, `kode_mapel`, `id_kelas`, `tahun_ajaran`, `sisa_jam`, `status`, `beban_jam`) VALUES
('10-74-XIIaknA', '10', '74', 'U', 'XIIaknA', '', 0, '1', 3),
('11-22-XIkntrA', '11', '22', 'AM', 'XIkntrA', '', 0, '1', 6),
('11-41-XaknA', '11', '41', 'H', 'XaknA', '', 0, '1', 3),
('11-43-XaknA', '11', '43', 'G', 'XaknA', '', 0, '1', 3),
('11-5-XkntrA', '11', '5', 'H', 'XkntrA', '', 0, '1', 3),
('11-7-XkntrA', '11', '7', 'G', 'XkntrA', '', 0, '1', 3),
('12-16-XIkntrA', '12', '16', 'A', 'XIkntrA', '', 0, '1', 3),
('12-53-XIaknA', '12', '53', 'A', 'XIaknA', '', 3, '0', 3),
('13-2-XkntrA', '13', '2', 'B', 'XkntrA', '', 0, '1', 2),
('13-38-XaknA', '13', '38', 'B', 'XaknA', '', 0, '1', 2),
('14-11-XkntrA', '14', '11', 'AF', 'XkntrA', '', 0, '1', 2),
('14-13-XkntrA', '14', '13', 'AI', 'XkntrA', '', 4, '0', 4),
('14-35-XIIkntrA', '14', '35', 'AP', 'XIIkntrA', '', 0, '1', 6),
('14-47-XaknA', '14', '47', 'AF', 'XaknA', '', 0, '1', 2),
('14-49-XaknA', '14', '49', 'AE', 'XaknA', '', 0, '1', 2),
('14-52-XaknA', '14', '52', 'AA', 'XaknA', '', 0, '1', 3),
('14-63-XIaknA', '14', '63', 'U', 'XIaknA', '', 0, '1', 3),
('14-74-XIIaknB', '14', '74', 'U', 'XIIaknB', '', 0, '1', 3),
('15-26-XIkntrA', '15', '26', 'Y', 'XIkntrA', '', 0, '1', 7),
('15-64-XIaknA', '15', '64', 'Y', 'XIaknA', '', 0, '1', 7),
('16-30-XIIkntrA', '16', '30', 'D', 'XIIkntrA', '', 0, '1', 4),
('16-68-XIIaknA', '16', '68', 'D', 'XIIaknA', '', 0, '1', 4),
('16-68-XIIaknB', '16', '68', 'D', 'XIIaknB', '', 0, '1', 4),
('17-59-XIaknA', '17', '59', 'AK', 'XIaknA', '', 0, '1', 6),
('17-60-XIaknA', '17', '60', 'AL', 'XIaknA', '', 0, '1', 4),
('17-61-XIaknA', '17', '61', 'W', 'XIaknA', '', 0, '1', 6),
('17-71-XIIaknA', '17', '71', 'AL', 'XIIaknA', '', 4, '0', 4),
('17-71-XIIaknB', '17', '71', 'AL', 'XIIaknB', '', 0, '1', 4),
('17-73-XIIaknB', '17', '73', 'AC', 'XIIaknB', '', 0, '1', 5),
('18-1-XkntrA', '18', '1', 'A', 'XkntrA', '', 3, '0', 3),
('18-37-XaknA', '18', '37', 'A', 'XaknA', '', 3, '0', 3),
('19-76-XkntrA', '19', '76', 'Z', 'XkntrA', '', 0, '1', 1),
('19-77-XIkntrA', '19', '77', 'Z', 'XIkntrA', '', 0, '1', 1),
('19-78-XIIkntrA', '19', '78', 'Z', 'XIIkntrA', '', 0, '1', 1),
('19-79-XaknA', '19', '79', 'Z', 'XaknA', '', 0, '1', 1),
('19-80-XIaknA', '19', '80', 'Z', 'XIaknA', '', 0, '1', 1),
('19-81-XIIaknA', '19', '81', 'Z', 'XIIaknA', '', 0, '1', 1),
('19-81-XIIaknB', '19', '81', 'Z', 'XIIaknB', '', 0, '1', 1),
('2-27-XIIkntrA', '2', '27', 'A', 'XIIkntrA', '', 0, '1', 3),
('2-65-XIIaknA', '2', '65', 'A', 'XIIaknA', '', 0, '1', 3),
('2-65-XIIaknB', '2', '65', 'A', 'XIIaknB', '', 0, '1', 3),
('20-45-XaknA', '20', '45', 'S', 'XaknA', '', 0, '1', 3),
('20-9-XkntrA', '20', '9', 'S', 'XkntrA', '', 0, '1', 3),
('21-17-XIkntrA', '21', '17', 'B', 'XIkntrA', '', 0, '1', 2),
('21-28-XIIkntrA', '21', '28', 'B', 'XIIkntrA', '', 0, '1', 2),
('21-54-XIaknA', '21', '54', 'B', 'XIaknA', '', 0, '1', 2),
('21-66-XIIaknA', '21', '66', 'B', 'XIIaknA', '', 0, '1', 2),
('21-66-XIIaknB', '21', '66', 'B', 'XIIaknB', '', 0, '1', 2),
('22-36-XIIkntrA', '22', '36', 'Y', 'XIIkntrA', '', 0, '1', 8),
('23-50-XaknA', '23', '50', 'AD', 'XaknA', '', 0, '1', 3),
('23-51-XaknA', '23', '51', 'N', 'XaknA', '', 0, '1', 5),
('23-62-XIaknA', '23', '62', 'AC', 'XIaknA', '', 0, '1', 5),
('23-75-XIIaknA', '23', '75', 'Y', 'XIIaknA', '', 0, '1', 8),
('23-75-XIIaknB', '23', '75', 'Y', 'XIIaknB', '', 2, '0', 8),
('24-23-XIkntrA', '24', '23', 'AN', 'XIkntrA', '', 0, '1', 6),
('24-24-XIkntrA', '24', '24', 'AO', 'XIkntrA', '', 0, '1', 6),
('24-32-XIIkntrA', '24', '32', 'AM', 'XIIkntrA', '', 0, '1', 7),
('24-33-XIIkntrA', '24', '33', 'AN', 'XIIkntrA', '', 3, '0', 6),
('24-34-XIIkntrA', '24', '34', 'AO', 'XIIkntrA', '', 2, '0', 6),
('25-82-XkntrA', '25', '82', 'AJ', 'XkntrA', '', 0, '1', 2),
('25-83-XIkntrA', '25', '83', 'AJ', 'XIkntrA', '', 2, '0', 2),
('25-84-XaknA', '25', '84', 'AJ', 'XaknA', '', 0, '1', 2),
('25-85-XIaknA', '25', '85', 'AJ', 'XIaknA', '', 0, '1', 2),
('4-70-XIIaknA', '4', '70', 'AK', 'XIIaknA', '', 0, '1', 7),
('4-70-XIIaknB', '4', '70', 'AK', 'XIIaknB', '', 0, '1', 7),
('4-72-XIIaknA', '4', '72', 'W', 'XIIaknA', '', 0, '1', 6),
('4-72-XIIaknB', '4', '72', 'W', 'XIIaknB', '', 3, '0', 6),
('4-73-XIIaknA', '4', '73', 'AC', 'XIIaknA', '', 0, '1', 5),
('5-18-XIkntrA', '5', '18', 'C', 'XIkntrA', '', 1, '0', 3),
('5-29-XIIkntrA', '5', '29', 'C', 'XIIkntrA', '', 0, '1', 2),
('5-3-XkntrA', '5', '3', 'C', 'XkntrA', '', 0, '1', 4),
('5-39-XaknA', '5', '39', 'C', 'XaknA', '', 0, '1', 4),
('5-55-XIaknA', '5', '55', 'C', 'XIaknA', '', 0, '1', 3),
('5-67-XIIaknA', '5', '67', 'C', 'XIIaknA', '', 0, '1', 2),
('5-67-XIIaknB', '5', '67', 'C', 'XIIaknB', '', 0, '1', 2),
('6-20-XIkntrA', '6', '20', 'F', 'XIkntrA', '', 0, '1', 3),
('6-31-XIIkntrA', '6', '31', 'F', 'XIIkntrA', '', 0, '1', 4),
('6-42-XaknA', '6', '42', 'F', 'XaknA', '', 0, '1', 3),
('6-57-XIaknA', '6', '57', 'F', 'XIaknA', '', 0, '1', 3),
('6-6-XkntrA', '6', '6', 'F', 'XkntrA', '', 0, '1', 3),
('6-69-XIIaknA', '6', '69', 'F', 'XIIaknA', '', 0, '1', 4),
('6-69-XIIaknB', '6', '69', 'F', 'XIIaknB', '', 0, '1', 4),
('7-10-XkntrA', '7', '10', 'J', 'XkntrA', '', 0, '1', 2),
('7-14-XkntrA', '7', '14', 'AG', 'XkntrA', '', 0, '1', 5),
('7-15-XkntrA', '7', '15', 'AH', 'XkntrA', '', 0, '1', 4),
('7-25-XIkntrA', '7', '25', 'AP', 'XIkntrA', '', 2, '0', 6),
('7-46-XaknA', '7', '46', 'J', 'XaknA', '', 0, '1', 2),
('8-12-XkntrA', '8', '12', 'T', 'XkntrA', '', 0, '1', 2),
('8-19-XIkntrA', '8', '19', 'D', 'XIkntrA', '', 1, '0', 4),
('8-4-XkntrA', '8', '4', 'D', 'XkntrA', '', 0, '1', 4),
('8-40-XaknA', '8', '40', 'D', 'XaknA', '', 0, '1', 4),
('8-48-XaknA', '8', '48', 'T', 'XaknA', '', 0, '1', 2),
('8-56-XIaknA', '8', '56', 'D', 'XIaknA', '', 0, '1', 4),
('9-21-XIkntrA', '9', '21', 'I', 'XIkntrA', '', 0, '1', 2),
('9-44-XaknA', '9', '44', 'I', 'XaknA', '', 0, '1', 2),
('9-58-XIaknA', '9', '58', 'I', 'XIaknA', '', 0, '1', 2),
('9-8-XkntrA', '9', '8', 'I', 'XkntrA', '', 0, '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `level`) VALUES
(1, 'alfiandy123malib@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jadwal_khusus`
--
ALTER TABLE `jadwal_khusus`
  ADD PRIMARY KEY (`id_jadwal_khusus`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD PRIMARY KEY (`id_penjadwalan`);

--
-- Indexes for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `rumusan`
--
ALTER TABLE `rumusan`
  ADD PRIMARY KEY (`id_rumusan`);

--
-- Indexes for table `tugas_dosen`
--
ALTER TABLE `tugas_dosen`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `tugas_guru`
--
ALTER TABLE `tugas_guru`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`kode_mapel`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwal_khusus`
--
ALTER TABLE `jadwal_khusus`
  MODIFY `id_jadwal_khusus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  MODIFY `id_penjadwalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2416;

--
-- AUTO_INCREMENT for table `request_jadwal`
--
ALTER TABLE `request_jadwal`
  MODIFY `id_request` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rumusan`
--
ALTER TABLE `rumusan`
  MODIFY `id_rumusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 05:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jadwal_cbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `meminjam`
--

CREATE TABLE `meminjam` (
  `kode_pinjam` int(15) NOT NULL,
  `id_ruang` int(15) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `instansi_peminjam` varchar(50) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `jumlah_mahasiswa` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `keterangan` text NOT NULL,
  `color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meminjam`
--

INSERT INTO `meminjam` (`kode_pinjam`, `id_ruang`, `nama_peminjam`, `instansi_peminjam`, `nama_ruang`, `nama_kegiatan`, `tgl_pinjam`, `start_date`, `end_date`, `jumlah_mahasiswa`, `status`, `keterangan`, `color`) VALUES
(1002, 101, 'Fatur', '', 'LAB KOMPUTER', 'Ngaji Kuy', '', '2022-01-30 09:20:24', '2022-01-31 13:49:55', '', 'Selesai', '', '#FF0000'),
(1007, 101, 'lisa Ervina', 'Promosi Kesehatan', 'Lab Komputer', 'UTS', '', '2022-11-14 14:05', '2022-11-14 15:05', '', 'Selesai', '', '#0000FF'),
(1008, 102, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'Perkuliahan MK Metodologi Penelitian Tk II Prodi D. IIII Gizi', '', '2023-01-23 08:00', '2023-01-23 14:40', '', 'Selesai', '', '#0000FF'),
(1009, 101, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Lab Komputer', 'Perkuliahan MK Aplikasi Komputer', '', '2023-01-18 08:00', '2023-01-18 11:20', '', 'Selesai', '', '#0000FF'),
(1010, 101, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Lab Komputer', 'Perkuliahan MK Aplikasi Komputer Prodi STr Tk II b', '', '2023-01-19 08:00', '2023-01-18 11:20', '', 'Selesai', '', '#0000FF'),
(1011, 102, 'Dr. Meriwati, SKM, MKM', 'Jurusan Gizi', 'Ruang Teater', 'Perkuliahan MK Surveilance Gizi Prodi STr Gizi Tk III', '', '2023-01-17 08:00', '2023-01-17 16:20', '', 'Selesai', '', '#0000FF'),
(1012, 102, 'Dr. Meriwati, SKM, MKM', 'Jurusan Gizi', 'Ruang Teater', 'Perkuliahan MK PPG Prodi STr Tk III', '', '2023-01-19 08:00', '2023-01-19 16:20', '', 'Selesai', '', '#0000FF'),
(1013, 102, 'Dr. Betty Yosephin, SKM, MKM', 'Jurusan Gizi', 'Ruang Teater', 'Perkuliahan MK SPMI Tk II A Prodi D.III Gizi', '', '2023-01-18 08:00', '2023-01-18 12:30', '', 'Selesai', '', '#0000FF'),
(1014, 102, 'Tk III Gizi', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Kewirausahaan', '', '2023-01-20 08:00', '2023-01-20 11:30', '', 'Selesai', '', '#0000FF'),
(1015, 101, 'Alfahri', 'Poltekkes Bengkulu', 'Lab Komputer', 'Ujian MID', '', '2023-01-24 09:50', '2023-02-10 09:50', '', 'Selesai', '', '#0000FF'),
(1016, 102, 'Yuke Firdahaliza ', 'Poltekkes Kemenkes Bengkulu ', 'Ruang Teater', 'Pembelajaran patofisiologi ', '', '2023-01-24 07:35', '2023-01-01 09:50', '', 'Selesai', '', '#0000FF'),
(1017, 102, 'Dr. Meriwati, SKM, MKM', 'Jurusan Gizi Polkeslu', 'Ruang Teater', 'Perkuliahan MK SurveilansTk III Prodi STr Gizi', '', '2023-01-24 08:00', '2023-01-24 16:20', '', 'Batal', '', '#000'),
(1018, 101, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Lab Komputer', 'Perkuliahan Aplikasi Komputer Tk II A Prodi STr', '', '2023-01-25 08:00', '2023-01-25 11:20', '', 'Selesai', '', '#0000FF'),
(1019, 102, 'Dr. Meriwati, SKM, MKM', 'Jurusan Gizi', 'Ruang Teater', 'MK PPG Tk III Prodi STr', '', '2023-01-26 08:00', '2023-01-26 16:20', '', 'Selesai', '', '#0000FF'),
(1020, 101, 'Tetes Wahyu , SST, M. Biomed', 'Jurusan Gizi', 'Lab Komputer', 'MK Aplikom Tk II b Prodi STr', '', '2023-01-26 08:00', '2023-01-26 11:20', '', 'Selesai', '', '#0000FF'),
(1021, 101, 'Dr. Demsa Simbolon, SKM, MKM', 'Jurusan Gizi', 'Lab Komputer', 'MK Biostatistik Kasus Gizi Tk II a Prodi STr Gizi', '', '2023-01-26 13:30', '2023-01-26 16:50', '', 'Selesai', '', '#0000FF'),
(1022, 102, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah Tk II A', '', '2023-01-27 13:00', '2023-01-27 14:40', '', 'Selesai', '', '#0000FF'),
(1023, 101, 'Dr. Demsa Simbolon, SKM, MKM', 'Jurusan Gizi', 'Lab Komputer', 'MK Biostatistik Tk II B STr Gizi', '', '2023-01-27 13:30', '2023-01-27 16:50', '', 'Selesai', '', '#0000FF'),
(1024, 102, 'Bunda Rani', 'Jurusan Gizi', 'Ruang Teater', 'MK Kewirausahaan Tk III Prodi STr', '', '2023-01-27 09:00', '2023-01-27 15:50', '', 'Selesai', '', '#0000FF'),
(1025, 102, 'Promkes', 'Poltekkes Kemenkes Bengkulu', 'Ruang Teater', 'Pembekalan PKN LD', '', '2023-01-27 07:30', '2023-01-27 09:00', '', 'Selesai', '', '#0000FF'),
(1026, 102, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Metodologi Penelitian Tk II B Prodi D. III Gizi', '', '2023-01-30 08:00', '2023-01-30 12:30', '', 'Selesai', '', '#0000FF'),
(1027, 102, 'Yuke Firdahaliza ', 'Poltekkes Kemenkes Bengkulu ', 'Ruang Teater', 'Pembelajaran ', '', '2023-01-31 08:00', '2023-01-31 10:00', '', 'Selesai', '', '#0000FF'),
(1028, 102, 'Yunita, SKM, M. Gizi', 'Jurusan Gizi', 'Ruang Teater', 'MK Surveilans Tk III Prodi STr Gizi', '', '2023-01-31 08:00', '2023-01-31 16:20', '', 'Batal', '', '#000'),
(1029, 102, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'MK Metodologi Penelitian Tk II A Prodi D. III', '', '2023-01-30 13:00', '2023-01-30 14:50', '', 'Selesai', '', '#0000FF'),
(1030, 101, 'Jurusan Gizi', 'Jurusan Gizi', 'Lab Komputer', 'MK Etika Profesi Tk III B Prodi STr Gizi', '', '2023-01-31 08:00', '2023-01-31 10:30', '', 'Selesai', '', '#0000FF'),
(1031, 102, 'Yunita, SKM, M. Gizi', 'Jurusan Gizi', 'Ruang Teater', 'MK Surveilans Gizi Tk III STr ', '', '2023-01-31 11:00', '2023-01-31 13:00', '', 'Batal', '', '#000'),
(1032, 102, 'Aji Setya Guna Darma ', 'Sarjana Terapan Keperawatan tk 4', 'Ruang Teater', 'Pembekalan PKK KEP GADAR & Kritis', '', '2023-01-31 14:00', '2023-01-31 16:00', '', 'Batal', '', '#000'),
(1033, 102, 'Aji Setya Guna Darma ', 'Sarjana Terapan Keperawatan tk 4', 'Ruang Teater', 'Pembekalan PKK KEP GADAR & Kritis', '', '2023-01-31 14:00', '2023-01-31 16:00', '', 'Selesai', '', '#0000FF'),
(1034, 102, 'Jumiyati, SKM, M. Gizi', 'Jurusan Gizi', 'Ruang Teater', 'Pembekalan PKL PIGM D.III Gizi', '', '2023-02-01 08:00', '2023-02-02 16:00', '', 'Selesai', '', '#0000FF'),
(1050, 101, 'Julita Cherly', 'Prodi D3 Kebidanan Poltekkes Kemenkes Bengkulu', 'Lab Komputer', 'UTS Semster IV MK PBAK', '', '2023-02-13 09:00', '2023-02-13 10:00', '52', 'Selesai', '', '#0000FF'),
(1051, 101, 'Julita Cherly', 'Prodi D3 Kebidanan Poltekkes Kemenkes Bengkulu', 'Lab Komputer', 'UTS Semester IV MK Askeb Neonatus Bayi dan Balita', '', '2023-02-14 08:30', '2023-02-14 10:00', '52', 'Selesai', '', '#0000FF'),
(1052, 101, 'Julita Cherly', 'Prodi D3 Kebidanan Poltekkes Kemenkes Bengkulu', 'Lab Komputer', 'UTS Semester IV MK Kesehatan Perempuan dan Perencanaan Keluarga', '', '2023-02-15 08:30', '2023-02-15 10:00', '52', 'Selesai', '', '#0000FF'),
(1053, 101, 'Julita Cherly', 'Prodi D3 Kebidanan Poltekkes Kemenkes Bengkulu', 'Lab Komputer', 'UTS Semester IV MK Kebdianan Komunitas', '', '2023-02-16 08:30', '2023-02-16 10:00', '52', 'Selesai', '', '#0000FF'),
(1054, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UTS Metodelogi penelitian dan Biostatistik', '', '2023-02-08 08:00', '2023-02-08 12:30', '30 Orang', 'Selesai', '', '#0000FF'),
(1055, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UTS Epidemiologi', '', '2023-02-09 08:00', '2023-02-06 11:00', '30 Orang', 'Selesai', '', '#0000FF'),
(1056, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UTS Epidemiologi', '', '2023-02-09 08:00', '2023-02-06 11:00', '30 Orang', 'Selesai', '', '#0000FF'),
(1057, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UTS Bahasa Inggris', '', '2023-02-10 08:00', '2023-02-06 11:00', '30 Orang', 'Selesai', '', '#0000FF'),
(1058, 102, 'Stevy dhea immanuel', 'Poltekkes Kemenkes Bengkulu ', 'Ruang Teater', 'Pembelajaran matkul patofisiologi ', '', '2023-02-07 10:00', '2023-02-07 11:40', '35 orang', 'Batal', '', '#000'),
(1059, 102, 'Tetes Wahyu W, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'MK Aplikasi Komputer Tk II A Prodi STr Gizi', '', '2023-02-08 08:00', '2023-02-08 11:20', '46', 'Selesai', '', '#0000FF'),
(1060, 102, 'Stevy Dhea Immanuel ', 'Polkesli', 'Ruang Teater', 'Pembelajaran patofisiologi ', '', '2023-02-07 10:00', '2023-02-07 11:40', '35', 'Batal', '', '#000'),
(1061, 102, 'Stevy Dhea Immanuel ', 'Polkesli', 'Ruang Teater', 'Pembelajaran patofisiologi ', '', '2023-02-07 10:00', '2023-02-07 11:40', '35', 'Selesai', '', '#0000FF'),
(1062, 102, 'Ramdhan Noer Ikhsan', 'Poltekkes Kemenkes Bengkulu', 'Ruang Teater', 'Perkuliahan Keperawatan GADAR', '', '2023-02-08 13:00', '2023-02-08 17:00', '86', 'Selesai', '', '#0000FF'),
(1063, 102, 'Dr. Tonny C Maigoda, SKM, MA', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK PPG', '', '2023-02-09 13:00', '2023-02-09 16:20', '50', 'Selesai', '', '#0000FF'),
(1064, 101, 'Noviriyanti Arifin', 'Prodi Diploma Tiga Keperawatan', 'Lab Komputer', 'UTS Tk. 2 D3 Keperawatan', '', '2023-02-20 09:00', '2023-02-20 12:00', '98', 'Selesai', '', '#0000FF'),
(1065, 101, 'Noviriyanti Arifin', 'Prodi Diploma Tiga Keperawatan', 'Lab Komputer', 'UTS Tk.2 D3 Keperawatan', '', '2023-02-21 09:00', '2023-02-21 11:00', '98', 'Selesai', '', '#0000FF'),
(1066, 101, 'Noviriyanti Arifin', 'Prodi Diploma Tiga Keperawatan', 'Lab Komputer', 'UTS Tk. 2 D3 Keperawatan', '', '2023-02-22 09:00', '2023-02-22 11:00', '98', 'Selesai', '', '#0000FF'),
(1067, 101, 'Noviriyanti Arifin', 'Prodi Diploma Tiga Keperawatan', 'Lab Komputer', 'UTS Tk.2 D3 Keperawatan', '', '2023-02-23 09:00', '2023-02-23 11:00', '98', 'Selesai', '', '#0000FF'),
(1068, 101, 'Noviriyanti Arifin', 'Prodi Diploma Tiga Keperawatan', 'Lab Komputer', 'UTS Tk.2 Prodi D3 Keperawatan ', '', '2023-02-24 09:00', '2023-02-24 11:00', '98', 'Selesai', '', '#0000FF'),
(1069, 102, 'Mahasiswa Ners ', 'Prodi Pendidikan Profesi Ners Polkeslu', 'Ruang Teater', 'Seminar PPN Keperawatan Gadar dan Kritis', '', '2023-02-10 13:00', '2023-02-10 16:30', '40', 'Selesai', '', '#0000FF'),
(1070, 102, 'Nabilah Indriyana', 'Jurusan gizi', 'Ruang Teater', 'Perkuliahan kewirausahaan', '', '2023-02-11 08:00', '2023-02-10 11:30', '80', 'Selesai', '', '#0000FF'),
(1071, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Bahasa', '', '2023-02-13 09:00', '2023-02-13 11:30', '30 Mahasiswa', 'Selesai', '', '#0000FF'),
(1072, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.3', '', '2023-02-20 07:57', '2023-02-24 16:57', '88', 'Selesai', '', '#0000FF'),
(1073, 102, 'Noviriyanti Arifin', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Sosialisasi Peluang Kerja G to G ke Jepang', '', '2023-02-14 13:00', '2023-02-14 15:00', '86', 'Selesai', '', '#0000FF'),
(1074, 102, 'Noviriyanti Arifin', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Sosialisasi Peluang Kerja G to G ke Jepang', '', '2023-02-14 13:00', '2023-02-14 15:00', '86', 'Selesai', '', '#0000FF'),
(1075, 102, 'Yuke Firdahaliza ', 'Str keperawatan Tk.1 Reguler ', 'Ruang Teater', 'Pembelajaran ', '', '2023-02-14 08:00', '2023-02-14 10:00', '63', 'Selesai', '', '#0000FF'),
(1076, 102, 'Ramdhan Noer Ikhsan', 'D3 Keperawatan Polkeslu', 'Ruang Teater', 'Perkuliahan Kep. Gadar', '', '2023-02-13 13:00', '2023-02-13 17:00', '86 Mahasiswa', 'Selesai', '', '#0000FF'),
(1077, 102, 'Stevy Dhea Immanuel ', 'RKI Str Keperawatan tk 1', 'Ruang Teater', 'Pembelajaran Patofisiologi ', '', '2023-02-14 10:00', '2023-02-14 11:40', '35', 'Selesai', '', '#0000FF'),
(1078, 102, 'Dr. Tonny C Maigoda, SKM, MA', 'Jurusan Gizi', 'Ruang Teater', 'MK Metlid Tk II B Prodi D.III Gizi', '', '2023-02-13 08:00', '2023-02-13 12:30', '46', 'Selesai', '', '#0000FF'),
(1079, 102, 'Dr. Tonny C Maigoda, SKM, MA', 'Jurusan Gizi', 'Ruang Teater', 'MK Metlid Tk II A Prodi D.III Gizi', '', '2023-02-13 13:00', '2023-02-13 14:50', '44', 'Selesai', '', '#0000FF'),
(1080, 102, 'Ramdhan Noer Ikhsan', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Perkuliahan Kep. Gadar', '', '2023-02-14 13:00', '2023-02-14 16:00', '86 Mahasiswa', 'Selesai', '', '#0000FF'),
(1081, 102, 'Ramdhan Noer Ikhsan', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Perkuliahan Kep. Gadar', '', '2023-02-14 08:00', '2023-02-14 12:00', '86 Mahasiswa', 'Batal', '', '#000'),
(1082, 102, 'Tetes Wahyu, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Aplikom Tk II A STr Gizi', '', '2023-02-15 08:00', '2023-02-15 11:20', '50', 'Selesai', '', '#0000FF'),
(1083, 102, 'Tetes Wahyu, SST, M. Biomed', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Aplikom Tk II B STr Gizi', '', '2023-02-16 08:00', '2023-02-16 11:20', '50', 'Selesai', '', '#0000FF'),
(1084, 102, 'Avrilya Iqoranny', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Kewirausahaan Tk III A STr Gizi', '', '2023-02-17 09:00', '2023-02-17 11:30', '50', 'Selesai', '', '#0000FF'),
(1085, 102, 'Ns. Erni Buston, SST., M.Kes', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Perkuliahan Kep. Gadar', '', '2023-02-15 08:00', '2023-02-15 11:00', '86 Mahasiswa', 'Batal', '', '#000'),
(1086, 102, 'Dr. Tonny C Maigoda, SKM, MA', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK PPG Tk III B Prodi STr Gizi', '', '2023-02-16 13:00', '2023-02-16 16:20', '40', 'Selesai', '', '#0000FF'),
(1088, 101, 'Dina Anggaini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Epidemiologi', '', '2023-02-17 10:00', '2023-02-17 11:10', '30 Orang', 'Selesai', '', '#0000FF'),
(1089, 102, 'Aldaffa Dwi Nugroho', 'Jurusan Gizi', 'Ruang Teater', 'Mata Kuliah Surveilans Gizi STR 3A', '', '2023-02-21 08:00', '2023-02-21 11:20', '40 Mahasiswa', 'Selesai', '', '#0000FF'),
(1090, 102, 'Ramdhan Noer Ikhsan', 'D3 Keperawatan Bengkulu', 'Ruang Teater', 'Pertemuan Mahasiswa PKL Jakarta', '', '2023-02-17 13:00', '2023-02-17 17:00', '86 mahasiswa', 'Selesai', '', '#0000FF'),
(1091, 102, 'Fharas Mutiara Hellindra ', 'Jurusan Analis Kesehatan Prodi D-III Farmasi ', 'Ruang Teater', 'Perkuliahan Bahasa Inggris', '', '2023-02-23 15:31', '2023-02-24 15:31', '97', 'Selesai', '', '#0000FF'),
(1092, 102, 'Fharas mutiara hellindra ', 'Jurusan Analis Kesehatan Prodi D-III Farmasi ', 'Ruang Teater', 'Perkuliahan bahasa inggris ', '', '2023-02-24 09:00', '2023-02-24 16:00', '97', 'Selesai', '', '#0000FF'),
(1093, 102, 'Rika Febrianti ', 'Str keperawatan ', 'Ruang Teater', 'Pembelajaran Patofisiologi ', '', '2023-02-21 08:00', '2023-02-21 10:00', '62', 'Selesai', '', '#0000FF'),
(1094, 102, 'Lina sundari', 'PRODI GIZI', 'Ruang Teater', 'kulia metlid', '', '2023-02-12 08:00', '2023-02-12 12:00', '46', 'Selesai', '', '#0000FF'),
(1095, 102, 'Lina sundari', 'D3 gizi 2B', 'Ruang Teater', 'Belajar metlid', '', '2023-02-20 08:30', '2023-02-20 12:30', '46', 'Selesai', '', '#0000FF'),
(1096, 102, 'Verly Prisilia', 'Jurusan Gizi', 'Ruang Teater', 'MK Aplikasi Komputer Tk TT A Prodi STr', '', '2023-02-22 08:00', '2023-02-22 11:20', '50', 'Selesai', '', '#0000FF'),
(1097, 102, 'Yuke Firdahaliza ', 'Str keperawatan Reguler TK.1', 'Ruang Teater', 'Pembelajaran ', '', '2023-02-28 08:00', '2023-02-28 10:00', '62 ', 'Selesai', '', '#0000FF'),
(1098, 102, 'Verly Prisilia', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Aplikasi Komputer Tk II B STr Gizi', '', '2023-02-23 08:00', '2023-02-23 11:20', '50', 'Selesai', '', '#0000FF'),
(1099, 102, 'Verly Prisilia', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Kewirausahaan Tk IIIa STr Gizi', '', '2023-02-24 09:00', '2023-02-24 11:30', '50', 'Batal', '', '#000'),
(1102, 101, 'Atek Chartika', 'Str kep', 'Lab Komputer', 'Uts tk.1', '', '2023-03-06 08:00', '2023-03-06 10:00', '90', 'Selesai', '', '#0000FF'),
(1103, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.1', '', '2023-03-07 08:00', '2023-03-07 10:00', '100', 'Selesai', '', '#0000FF'),
(1104, 101, 'Atek Chartika', 'Str keperawatan', 'Lab Komputer', 'Uts str tk.1', '', '2023-03-08 08:00', '2023-03-08 10:00', '100', 'Selesai', '', '#0000FF'),
(1105, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.1', '', '2023-03-09 08:00', '2023-03-09 10:00', '100', 'Selesai', '', '#0000FF'),
(1106, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.1', '', '2023-03-10 08:00', '2023-03-10 10:00', '100', 'Selesai', '', '#0000FF'),
(1115, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.2', '', '2023-03-13 08:00', '2023-03-13 10:00', '88', 'Selesai', '', '#0000FF'),
(1116, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.2', '', '2023-03-14 08:00', '2023-03-14 10:00', '88', 'Selesai', '', '#0000FF'),
(1117, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.2', '', '2023-03-15 08:00', '2023-03-15 10:00', '88', 'Selesai', '', '#0000FF'),
(1118, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.2', '', '2023-03-16 08:00', '2023-03-16 10:00', '88', 'Selesai', '', '#0000FF'),
(1119, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Uts tk.2', '', '2023-03-17 08:00', '2023-03-17 10:00', '88', 'Selesai', '', '#0000FF'),
(1120, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Kewarganegaraan', '', '2023-03-06 11:00', '2023-03-06 12:00', '58', 'Selesai', '', '#0000FF'),
(1121, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Dokumentasi Kebidanan', '', '2023-03-07 10:00', '2023-03-07 11:00', '58', 'Selesai', '', '#0000FF'),
(1122, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Gizi Dalam Kespro', '', '2023-03-07 11:00', '2023-03-07 12:00', '58', 'Selesai', '', '#0000FF'),
(1123, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Farmakologi', '', '2023-03-08 10:00', '2023-03-08 11:00', '58', 'Selesai', '', '#0000FF'),
(1125, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Pengantar Asuhan Kebidanan', '', '2023-03-10 10:00', '2023-03-10 13:00', '58', 'Selesai', '', '#0000FF'),
(1126, 101, 'Julita Cherly', 'D3 Kebidanan', 'Lab Komputer', 'UTS Keterampilan Klinik Praktik Kebidanan', '', '2023-03-09 10:00', '2023-03-09 12:00', '58', 'Selesai', '', '#0000FF'),
(1127, 102, 'Tiara dika marsela', 'GIZI/TK3B', 'Ruang Teater', 'perkuliahan', '', '2023-02-23 13:00', '2023-02-23 16:20', '40', 'Selesai', '', '#0000FF'),
(1128, 102, 'Farah diba', 'D4 keperawatan', 'Ruang Teater', 'Pkk seminar hasil kepdas', '', '2023-02-24 14:00', '2023-02-24 16:00', '16', 'Selesai', '', '#0000FF'),
(1129, 102, 'M.Bachtiar Sahari', 'Promkes', 'Ruang Teater', 'Latihan paduan suara', '', '2023-02-27 14:00', '2023-02-27 18:00', '35', 'Selesai', '', '#0000FF'),
(1130, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - Dasar-Dasar Komunikasi', '', '2023-03-06 09:00', '2023-02-06 10:00', '98', 'Selesai', '', '#0000FF'),
(1131, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - Dasar-Dasar Komunikasi', '', '2023-03-06 10:00', '2023-03-06 11:00', '98', 'Selesai', '', '#0000FF'),
(1132, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-PERENCANAAN PROGRAM PROMOSI KESEHATAN', '', '2023-03-06 13:00', '2023-03-06 14:00', '82', 'Selesai', '', '#0000FF'),
(1133, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - KEPEMIMPINAN', '', '2023-03-06 14:00', '2023-03-06 15:00', '98', 'Selesai', '', '#0000FF'),
(1134, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-PENGANTAR MEDIA PROMOSI KESEHATAN', '', '2023-03-06 15:00', '2023-03-06 16:00', '82', 'Selesai', '', '#0000FF'),
(1135, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - PENGANTAR DEMOGRAFI', '', '2023-03-07 13:00', '2023-03-07 14:00', '98', 'Batal', '', '#000'),
(1136, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-ILMU PENYAKIT MENULAR & TIDAK MENULAR', '', '2023-03-07 14:00', '2023-03-07 15:00', '82', 'Batal', '', '#000'),
(1137, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - PENGANTAR KESEHATAN MASYARAKAT', '', '2023-03-07 15:00', '2023-03-07 16:00', '98', 'Batal', '', '#000'),
(1138, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - EPIDEMIOLOGI', '', '2023-03-08 11:00', '2023-03-08 12:00', '98', 'Selesai', '', '#0000FF'),
(1139, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-SISTEM INFORMASI KESEHATAN', '', '2023-03-08 13:00', '2023-03-08 14:00', '82', 'Selesai', '', '#0000FF'),
(1140, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - PENGANTAR PSIKOLOGI', '', '2023-03-08 14:00', '2023-03-08 15:00', '98', 'Selesai', '', '#0000FF'),
(1141, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-KEMITRAAN DALAM PROMOSI KESEHATAN', '', '2023-03-08 15:00', '2023-03-08 16:00', '82', 'Selesai', '', '#0000FF'),
(1142, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - PENGANTAR PROMOSI KESEHATAN', '', '2023-03-09 13:00', '2023-03-09 14:00', '98', 'Batal', '', '#000'),
(1143, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-PERILAKU KESEHATAN', '', '2023-03-09 14:00', '2023-03-09 15:00', '82', 'Batal', '', '#000'),
(1144, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK I - JAMINAN KESEHATAN NASIONAL', '', '2023-03-10 13:00', '2023-03-10 14:00', '98', 'Selesai', '', '#0000FF'),
(1145, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK II-MANAJEMEN PENYAKIT BERBASIS WILAYAH', '', '2023-03-10 14:00', '2023-03-10 15:00', '82', 'Selesai', '', '#0000FF'),
(1146, 101, 'Siventri', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK Dietetik Tk II', '', '2023-03-13 10:00', '2023-03-13 12:00', '80', 'Selesai', '', '#0000FF'),
(1147, 101, 'Siventri', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK GDDK Tk I', '', '2023-03-13 13:00', '2023-03-13 15:00', '90', 'Batal', '', '#000'),
(1148, 101, 'Siventri', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK SKP Tk II', '', '2023-03-14 10:00', '2023-03-14 12:00', '80', 'Selesai', '', '#0000FF'),
(1149, 101, 'Siventri', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK IKM Tk I', '', '2023-03-14 13:00', '2023-03-14 15:00', '90', 'Batal', '', '#000'),
(1150, 101, 'Siventri', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK Metodologi Penelitian Tk II', '', '2023-03-15 10:00', '2023-03-15 12:00', '80', 'Selesai', '', '#0000FF'),
(1151, 101, 'Afrizal, S. Gz', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK SKP ', '', '2023-03-06 12:00', '2023-03-06 13:00', '91', 'Selesai', '', '#0000FF'),
(1152, 101, 'Afrizal', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK SPMI', '', '2023-03-08 12:00', '2023-03-08 13:00', '91', 'Selesai', '', '#0000FF'),
(1153, 101, 'Afrizal', 'Jurusan Gizi', 'Lab Komputer', 'UTS MK Dietetik', '', '2023-03-09 12:00', '2023-03-09 13:00', '91', 'Selesai', '', '#0000FF'),
(1154, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Mata Kuliah Pancasila Tk I', '', '2023-03-06 08:00', '2023-03-06 08:50', '98', 'Batal', '', '#000'),
(1155, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK Bahasa Indonesia TK I', '', '2023-03-06 08:50', '2023-03-06 09:35', '98 Mahasiswa', 'Batal', '', '#000'),
(1156, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK EBM dan MK KDPK TK II', '', '2023-03-06 09:40', '2023-03-06 12:20', '70 mahasiswa', 'Batal', '', '#000'),
(1157, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS  MK Asuhan Kebidanan Pada Kasus Komplek TK III', '', '2023-03-06 13:00', '2023-02-06 13:45', '47 Mahasiswa', 'Batal', '', '#000'),
(1158, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS  MK Psikologi dalam Pratik Keb dan Fatofisologi', '', '2023-03-06 13:45', '2023-03-06 15:20', '29 Mahasiswa', 'Batal', '', '#000'),
(1159, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK Fisika Kesehatan dan Biokimia dan  FARMAKOLOGI TK I, ', '', '2023-03-07 08:00', '2023-03-07 09:35', '98 mahasiswi', 'Batal', '', '#000'),
(1160, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Askeb  Remaja dan Askeb Pranikah TK II', '', '2023-03-07 15:00', '2023-03-07 16:00', '70 ', 'Selesai', '', '#0000FF'),
(1161, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Biorep dan UTS Fisika Kesehatan ', '', '2023-03-07 14:00', '2023-03-07 15:00', '47', 'Selesai', '', '#0000FF'),
(1162, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS  MK Praktik Profesional Bidan dan MK Manajemen  TK III', '', '2023-03-07 13:00', '2023-03-07 14:00', '47 Mahasiswa', 'Selesai', '', '#0000FF'),
(1163, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK  Fisiologi Kehamilan dan MK Psikologi TK I', '', '2023-03-08 08:00', '2023-03-07 10:15', '98 Mahasiswa', 'Batal', '', '#000'),
(1164, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS  MK Fisiologi Kehamilan dan MK Psikologi TK I', '', '2023-03-08 08:00', '2023-03-08 10:15', '98 Mahasiswa', 'Batal', '', '#000'),
(1165, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK KB dan MK IKK TK II', '', '2023-03-08 10:20', '2023-02-08 12:15', '70 Mahasiswa', 'Batal', '', '#000'),
(1166, 101, 'Dina Anggraini', 'D-IV Kebidanan ', 'Lab Komputer', 'UTS MK Fetomaternal dan MK Pemberdayaan Masyarakat TK III', '', '2023-03-08 13:00', '2023-03-08 14:35', '47 Mahasiswa', 'Batal', '', '#000'),
(1167, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK IKK Alih Jenjang', '', '2023-03-08 14:40', '2023-03-08 15:25', '29 Mahasiswa', 'Batal', '', '#000'),
(1168, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK Gizi Reproduksi dan MK Sosioantropologi TK I', '', '2023-03-09 15:00', '2023-03-09 16:00', '98 Orang', 'Selesai', '', '#0000FF'),
(1170, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS  MK Patient Safety dan MK Pelayanan Kebidanan Komunitas TK III', '', '2023-03-09 14:00', '2023-03-09 15:00', '47 Mahasiswa', 'Selesai', '', '#0000FF'),
(1171, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS Mk Critical Analysis  dan MK EBM  TK alih Jenjang', '', '2023-03-09 13:00', '2023-03-09 14:00', '29 Mahasiswa', 'Selesai', '', '#0000FF'),
(1172, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK Askeb pada anak dengan kondisi Rentan  TK III', '', '2023-03-10 09:00', '2023-03-10 09:45', '47  Mahasiswa', 'Batal', '', '#000'),
(1173, 101, 'Dina Anggraini', 'D-IV Kebidanan', 'Lab Komputer', 'UTS MK Manajemen Pelayanan Keb Profesional dan MK Mikrobiologi , Parastologi   alih Jenjang', '', '2023-03-10 09:50', '2023-03-10 11:25', '29 Mahasiswa', 'Batal', '', '#000'),
(1175, 101, 'LUPUS TRIP.', 'KESLING', 'Lab Komputer', 'UTS ', '', '2023-03-13 13:00', '2023-03-13 16:00', '82', 'Selesai', '', '#0000FF'),
(1176, 101, 'LUPUS TRIP.', 'KESLING', 'Lab Komputer', 'UTS', '', '2023-03-14 13:00', '2023-03-14 16:00', '82', 'Selesai', '', '#0000FF'),
(1177, 101, 'LUPUS TRIP.', 'KESLING', 'Lab Komputer', 'UTS', '', '2023-03-15 13:00', '2023-03-15 16:00', '82', 'Selesai', '', '#0000FF'),
(1178, 101, 'LUPUS TRIP.', 'KESLING', 'Lab Komputer', 'UTS', '', '2023-03-16 13:00', '2023-03-16 16:00', '82', 'Selesai', '', '#0000FF'),
(1180, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Her uts manjemen bencana dan kep komunitas', '', '2023-02-28 13:00', '2023-02-28 14:10', '48', 'Selesai', '', '#0000FF'),
(1182, 102, 'Stevy Dhea Immanuel ', 'Str TK 1 keperawatan RKI', 'Ruang Teater', 'Pembelajaran patofisiologi ', '', '2023-02-28 10:00', '2023-02-28 11:40', '35 ', 'Selesai', '', '#0000FF'),
(1185, 102, 'HMJ Promkes', 'Promkes', 'Ruang Teater', 'Sidang Musyawarah Besar(Mubes) ', '', '2023-03-03 16:00', '2023-03-03 18:00', '50', 'Selesai', '', '#0000FF'),
(1186, 102, 'HMJ Promkes ', 'Promkes', 'Ruang Teater', 'Musyawarah besar (mubes) ', '', '2023-03-04 07:00', '2023-03-04 16:00', '50', 'Selesai', '', '#0000FF'),
(1187, 102, 'Nitha Carolina Dan Yendea Dwi Agsustin', 'Sarjana Terapan Gizi dan Dietetika', 'Ruang Teater', 'Kuliah Pakar', '', '2023-03-01 07:00', '2023-03-01 13:00', '91', 'Selesai', '', '#0000FF'),
(1188, 101, 'Atek Chartika', 'Str keperawatan', 'Lab Komputer', 'Her uts tk.3', '', '2023-03-01 09:30', '2023-03-01 10:10', '48', 'Selesai', '', '#0000FF'),
(1189, 101, 'Atek Chartika', 'Str keperawatan', 'Lab Komputer', 'Her uts tk.3', '', '2023-03-01 09:30', '2023-03-01 10:10', '48', 'Selesai', '', '#0000FF'),
(1190, 102, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Ruang Teater', 'UTS TK I - PENGANTAR DEMOGRAFI', '', '2023-03-07 09:00', '2023-03-07 10:00', '98', 'Selesai', '', '#0000FF'),
(1191, 102, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Ruang Teater', 'UTS TK II-ILMU PENYAKIT MENULAR & TIDAK MENULAR', '', '2023-03-07 10:00', '2023-03-07 11:00', '82', 'Selesai', '', '#0000FF'),
(1192, 102, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Ruang Teater', 'UTS TK I - PENGANTAR KESEHATAN MASYARAKAT', '', '2023-03-07 11:00', '2023-03-07 12:00', '98', 'Selesai', '', '#0000FF'),
(1193, 102, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Ruang Teater', 'UTS TK I - PENGANTAR PROMOSI KESEHATAN', '', '2023-03-09 08:00', '2023-03-09 10:00', '98', 'Selesai', '', '#0000FF'),
(1194, 102, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Ruang Teater', 'UTS TK II-PERILAKU KESEHATAN', '', '2023-03-09 10:00', '2023-03-09 12:00', '82', 'Selesai', '', '#0000FF'),
(1195, 101, 'STr Tingkat 3', 'Poltekes Kemenkes Bengkulu', 'Lab Komputer', 'HER KEPERAWATAN JIWA', '', '2023-03-02 10:30', '2023-03-02 11:59', '47', 'Selesai', '', '#0000FF'),
(1196, 101, 'Atek chartika', 'Str keperawatan', 'Lab Komputer', 'Her keperawatan komunitas', '', '2023-03-03 11:00', '2023-03-03 11:55', '47', 'Selesai', '', '#0000FF'),
(1197, 101, 'Noviriyanti Arifin ', 'Prodi D3 Keperawatan', 'Lab Komputer', 'UTS Mahasiswa Tk. I', '', '2023-03-20 09:00', '2023-03-20 12:00', '52', 'Selesai', '', '#0000FF'),
(1198, 101, 'Noviriyanti Arifin ', 'Prodi D3 Keperawatan', 'Lab Komputer', 'UTS Mahasiswa Tk.I', '', '2023-03-21 09:00', '2023-03-21 12:00', '52', 'Selesai', '', '#0000FF'),
(1199, 101, 'Noviriyanti Arifin ', 'Prodi D3 Keperawatan', 'Lab Komputer', 'UTS Mahasiswa Tk.I', '', '2023-03-23 09:00', '2023-03-23 12:00', '52', 'Selesai', '', '#0000FF'),
(1200, 101, 'Noviriyanti Arifin ', 'Prodi D3 Keperawatan', 'Lab Komputer', 'UTS Mahasiswa Tk.I', '', '2023-03-24 09:00', '2023-03-24 15:00', '52 ', 'Selesai', '', '#0000FF'),
(1201, 101, 'Noviriyanti Arifin', 'Prodi D3 Keperawatan ', 'Lab Komputer', 'UTS Mahasiswa Tk.I', '', '2023-03-22 09:00', '2023-03-22 12:00', '52', 'Selesai', '', '#0000FF'),
(1203, 102, 'Ledyah citrah', 'Poltekkes kemenkes bengkulu', 'Ruang Teater', 'Seminar sistem perkemihan', '', '2023-03-10 12:30', '2023-03-10 16:00', '47', 'Selesai', '', '#0000FF'),
(1204, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK 3 Promkes', '', '2023-03-20 13:00', '2023-03-20 16:00', '70', 'Selesai', '', '#0000FF'),
(1205, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK 3 Promkes', '', '2023-03-21 13:00', '2023-03-21 16:00', '71', 'Selesai', '', '#0000FF'),
(1206, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK 3 Promkes', '', '2023-03-22 13:00', '2023-03-22 16:00', '70', 'Selesai', '', '#0000FF'),
(1207, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS TK 3 Promkes', '', '2023-03-23 13:00', '2023-03-23 16:00', '70', 'Selesai', '', '#0000FF'),
(1209, 102, 'Ns. Rahma Annisa, S. Kep., M. Kep', 'POLTEKKES KEMENKES BENGKULU', 'Ruang Teater', 'BTCLS ', '', '2023-03-15 07:00', '2023-03-15 17:00', '41', 'Selesai', '', '#0000FF'),
(1210, 102, 'Atek chartika', 'STR KEPERAWATAN', 'Ruang Teater', 'BTCLS', '', '2023-03-16 07:00', '2023-03-16 17:00', '42', 'Selesai', '', '#0000FF'),
(1211, 102, 'Atek chartika', 'Str Keperawatan', 'Ruang Teater', 'BTCLS', '', '2023-03-17 07:00', '2023-03-17 17:00', '42', 'Selesai', '', '#0000FF'),
(1212, 102, 'Atek Chartika', 'STR keperawatan', 'Ruang Teater', 'BTCLS', '', '2023-03-18 07:00', '2023-03-18 16:00', '42', 'Selesai', '', '#0000FF'),
(1213, 104, 'Atek Chartika', 'STR KEPERAWATAN', 'Lab Osca', 'BTCLS', '', '2023-03-16 07:00', '2023-03-16 17:00', '42', 'Selesai', '', '#0000FF'),
(1214, 104, 'ATEK CHARTIKA', 'STR KEPERAWATAN', 'Lab Osca', 'BTCLS', '', '2023-03-17 17:00', '2023-03-17 17:00', '42', 'Selesai', '', '#0000FF'),
(1215, 104, 'Atek Chartika', 'STR KEPERAWATAN', 'Lab Osca', 'BTCLS', '', '2023-03-18 07:00', '2023-03-18 17:00', '42', 'Selesai', '', '#0000FF'),
(1216, 102, 'M. Anugrah Supryadi', 'Gita Swara Medika polkeslu', 'Ruang Teater', 'Latihan Padus Wisuda ', '', '2023-03-13 16:49', '2023-03-19 16:49', '28', 'Selesai', '', '#0000FF'),
(1217, 102, 'Aldaffa Dwi Nugroho', 'Jurusan Gizi', 'Ruang Teater', 'MK Surveilans Gizi STR 3A', '', '2023-03-14 08:00', '2023-03-14 11:40', '40', 'Selesai', '', '#0000FF'),
(1218, 102, 'Hety Rais', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK IOM Tk III B STr', '', '2023-03-13 10:00', '2023-03-13 12:00', '40', 'Selesai', '', '#0000FF'),
(1219, 102, 'Demsa Simbolon', 'Jurusan Gizi', 'Ruang Teater', 'MK Aplikom Tk IIA STr ', '', '2023-03-15 08:00', '2023-03-15 11:20', '46', 'Batal', 'Batal karena sudah di pinjam sama keperawatan lebih dulu', '#000'),
(1220, 102, 'Dr. Demsa Simbolon, SKM, MKM', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Aplikom Tk II B STr', '', '2023-03-16 08:00', '2023-03-16 11:20', '50', 'Batal', 'Batal Karena sudah di pinjam sama keperawatan lebih dulu', '#000'),
(1222, 101, 'Dina Anggraini', 'd4 kebidanan', 'Lab Komputer', 'uts biostatistik', '', '2023-03-17 10:00', '2023-03-17 11:00', '30', 'Selesai', '', '#0000FF'),
(1223, 102, 'Jurusan Gizi', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Surveilans Gizi Tk IIIa STr', '17-03-2023 16:36', '2023-03-21 08:00', '2023-03-21 11:20', '50', 'Selesai', '', '#0000FF'),
(1224, 102, 'Jurusan Gizi', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah MK Kewirausahaan Tk IIIa STr', '17-03-2023 16:37', '2023-03-24 09:00', '2023-03-24 11:30', '50', 'Selesai', '', '#0000FF'),
(1225, 102, 'Lissa Ervina', 'STr Promkes', 'Ruang Teater', 'UTS Tingkat 3', '20-03-2023 00:23', '2023-03-24 13:00', '2023-03-24 16:00', '70', 'Selesai', '', '#0000FF'),
(1226, 101, 'Lissa Ervina', 'Str Promkes', 'Lab Komputer', 'UTS tk II', '20-03-2023 00:30', '2023-03-21 08:00', '2023-03-21 09:00', '82', 'Selesai', '', '#0000FF'),
(1227, 101, 'Lissa Ervina', 'Str Promkes', 'Lab Komputer', 'Ujian Tk II', '20-03-2023 00:31', '2023-03-24 15:00', '2023-03-24 16:00', '82', 'Selesai', '', '#0000FF'),
(1228, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'Her UTS', '20-03-2023 08:07', '2023-03-20 13:00', '2023-03-20 16:00', '30', 'Selesai', '', '#0000FF'),
(1229, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'Her UTS', '20-03-2023 14:31', '2023-03-21 08:00', '2023-03-21 12:00', '30', 'Selesai', '', '#0000FF'),
(1230, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Metode Penelitian dan Biostatistik', '20-03-2023 14:34', '2023-03-27 08:30', '2023-03-27 11:00', '30', 'Selesai', '', '#0000FF'),
(1232, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UAS Bahasa Inggris', '20-03-2023 14:39', '2023-03-29 08:30', '2023-03-29 10:00', '30', 'Selesai', '', '#0000FF'),
(1233, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Epidemiologi', '20-03-2023 14:48', '2023-03-28 08:30', '2023-03-28 10:00', '30', 'Selesai', '', '#0000FF'),
(1234, 102, 'Pak Tetes Wahyu,SST.M.BIOMED', 'Jurusan sarjana terapan gizi dan dietetika tingkat', 'Ruang Teater', 'Mata kuliah dietetika', '20-03-2023 15:36', '2023-03-21 08:00', '2023-03-21 12:00', '90', 'Batal', 'Pak tetes tidak bisa hadir, di ganti lain hari', '#000'),
(1235, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS Promkes', '24-03-2023 10:12', '2023-03-27 11:00', '2023-03-27 14:00', '83', 'Selesai', '', '#0000FF'),
(1236, 101, 'Atek Chartika', 'Str Keperawatan', 'Lab Komputer', 'UTS tk.3', '24-03-2023 10:10', '2023-04-03 08:30', '2023-04-03 10:30', '48', 'Selesai', '', '#0000FF'),
(1237, 101, 'Lissa Ervina', 'Str Promkes', 'Lab Komputer', 'UTS Promosi Kesehatan', '24-03-2023 10:15', '2023-03-28 10:00', '2023-03-28 12:00', '82', 'Selesai', '', '#0000FF'),
(1238, 101, 'Atek Chartika', 'STR KEPERAWATAN', 'Lab Komputer', 'Uts Tk.4 Kewirausahaan', '24-03-2023 10:16', '2023-04-03 10:30', '2023-04-03 12:00', '42', 'Selesai', '', '#0000FF'),
(1239, 101, 'Atek Chartika', 'Str Keperawatan', 'Lab Komputer', 'Uts tk.3 ', '24-03-2023 10:17', '2023-04-04 08:00', '2023-04-04 10:00', '48', 'Selesai', '', '#0000FF'),
(1240, 101, 'Lissa Ervina', 'Str Promosi Kesehatan', 'Lab Komputer', 'UTS Promkes', '24-03-2023 10:17', '2023-03-29 10:00', '2023-03-29 12:00', '82', 'Selesai', '', '#0000FF'),
(1241, 101, 'Atek Chartika', 'Str Keperawatan', 'Lab Komputer', 'Uts tk.4 Bahasa Jepang', '24-03-2023 10:18', '2023-04-04 10:00', '2023-04-04 11:30', '42', 'Selesai', '', '#0000FF'),
(1242, 101, 'Atek Chartika', 'STR keperawatan', 'Lab Komputer', 'UAS TK.3', '24-03-2023 10:19', '2023-04-05 08:00', '2023-04-05 10:00', '48', 'Selesai', '', '#0000FF'),
(1243, 101, 'Atek Chartika', 'STR keperawatan', 'Lab Komputer', 'UAS TK.3', '24-03-2023 10:20', '2023-04-06 08:00', '2023-04-06 10:00', '48', 'Selesai', '', '#0000FF'),
(1244, 101, 'Atek chartika', 'STR keperawatan', 'Lab Komputer', 'UAS TK.3', '24-03-2023 10:21', '2023-04-07 09:00', '2023-04-07 12:00', '48', 'Selesai', '', '#0000FF'),
(1245, 104, 'Farah diba', 'Str keperawatan tk.2', 'Lab Osca', 'Tutorial praktek ibu post partum', '26-03-2023 20:58', '2023-03-27 09:00', '2023-03-27 12:00', '46', 'Selesai', '', '#0000FF'),
(1246, 102, 'Audi Nurul Salsabila ', 'Poltekkes Kemenkes Bengkulu ', 'Ruang Teater', 'MK sosantro', '27-03-2023 08:05', '2023-03-27 08:06', '2023-03-27 09:40', '90', 'Selesai', '', '#0000FF'),
(1247, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Pancasila dan Bahasa Indonesia', '27-03-2023 11:18', '2023-05-15 08:00', '2023-05-15 10:00', '98', 'Selesai', '', '#0000FF'),
(1248, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Fisika Kesehatan, Biologi, dan Farmakologi', '27-03-2023 11:22', '2023-05-16 08:00', '2023-05-16 09:35', '98', 'Diajukan', '', '#28a745'),
(1249, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UAS Fisiologi Kehamilan dan Fsikologi', '27-03-2023 11:29', '2023-05-17 08:00', '2023-05-17 10:00', '98', 'Selesai', '', '#0000FF'),
(1250, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Gizi Repoduksi dan Sosio Antropologi', '27-03-2023 11:32', '2023-05-19 08:00', '2023-05-19 10:00', '98', 'Disetujui', '', '#0000FF'),
(1251, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS EBM dan KDPK II', '27-03-2023 11:35', '2023-05-15 09:40', '2023-05-15 12:20', '70', 'Diajukan', '', '#28a745'),
(1252, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Askeb Remaja, Perimenopause dan askeb Pranikah dan Prakonsepsi', '27-03-2023 11:38', '2023-05-16 09:40', '2023-05-16 11:15', '70', 'Diajukan', '', '#28a745'),
(1253, 101, 'Dina Anggraini ', 'D4 Kebidanan', 'Lab Komputer', 'UAS KB dan IKK', '27-03-2023 11:40', '2023-05-17 10:20', '2023-05-17 12:15', '70', 'Diajukan', '', '#28a745'),
(1254, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UAS Critical Analysis dan Promosi Kesehatan', '27-03-2023 11:42', '2023-05-19 09:40', '2023-05-19 11:15', '70', 'Diajukan', '', '#28a745'),
(1255, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Askeb Kasus Komplek, Anak Rentan, psikologi dan fatofisiologi', '27-03-2023 11:44', '2023-05-15 13:00', '2023-05-15 14:50', '76', 'Diajukan', '', '#28a745'),
(1256, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Praktik Profesional Bidan, Manajemen, Biorep, fisikes dan mikrobiologi', '27-03-2023 11:48', '2023-05-16 11:20', '2023-05-16 14:35', '76', 'Diajukan', '', '#28a745'),
(1257, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'UAS Fetomaternal, Pemberdayaan Masyarakat, IKK dan Manajemen', '27-03-2023 11:51', '2023-05-17 13:00', '2023-05-17 14:35', '76', 'Diajukan', '', '#28a745'),
(1258, 101, 'Dina Anggraini', 'D4 Kebidanan ', 'Lab Komputer', 'UAS Patient Safety, Komunitas, Critical Analysis dan EBM', '27-03-2023 11:54', '2023-05-19 11:20', '2023-05-19 14:20', '76', 'Diajukan', '', '#28a745'),
(1259, 101, 'Noviriyanti Arifin', 'D3 Keperawatan ', 'Lab Komputer', 'UTS Tingkat 1', '28-03-2023 14:20', '2023-03-29 08:30', '2023-03-29 10:00', '53', 'Selesai', '', '#0000FF'),
(1260, 101, 'Noviriyanti Arifin', 'D3 Keperawatan Bengkulu', 'Lab Komputer', 'UAS Tingkat 2', '28-03-2023 14:25', '2023-05-08 08:00', '2023-05-08 12:00', '98', 'Selesai', '', '#0000FF'),
(1261, 105, 'Promosi Kesehatan', 'Poltekkes Kemenkes Bengkulu', 'Unit Pengembangan Bahasa', 'TOEFL Test', '29-03-2023 08:20', '2023-03-29 08:00', '2023-03-29 12:00', '72', 'Selesai', '', '#0000FF'),
(1262, 102, 'Melsa Putri Wulandari', 'Jurusan Gizi', 'Ruang Teater', 'Kuliah Kewirausahaa ', '29-03-2023 14:19', '2023-03-30 09:00', '2023-03-30 11:20', '40', 'Selesai', '', '#0000FF'),
(1263, 101, 'Dina Anggraini', 'D4 Kebidanan', 'Lab Komputer', 'Her UTS', '29-03-2023 21:00', '2023-03-30 09:00', '2023-03-30 11:00', '29', 'Selesai', '', '#0000FF'),
(1264, 101, 'Bobby Ardiansyah ', 'Jurusan Keperawatan (Str Keperawatan 2B)', 'Lab Komputer', 'Her UTS Maternitas ', '30-03-2023 19:46', '2023-03-31 14:00', '2023-03-31 16:00', '86', 'Selesai', '', '#0000FF'),
(1265, 101, 'Atek chartika', 'Str kep', 'Lab Komputer', 'Her uts maternitas', '31-03-2023 07:49', '2023-03-31 10:30', '2023-03-31 12:00', '62', 'Selesai', '', '#0000FF'),
(1267, 102, 'Rika Febrianti ', 'Str keperawatan ', 'Ruang Teater', 'Pembelajaran Patofisiologi ', '02-04-2023 11:41', '2023-04-04 08:00', '2023-04-04 10:00', '62', 'Selesai', '', '#0000FF'),
(1268, 102, 'Hanny Tri Anysha Pinem', 'Jurusan STR GIZI', 'Ruang Teater', 'Kuliah survailance', '04-04-2023 09:52', '2023-04-04 13:00', '2023-04-04 14:30', '40', 'Selesai', '', '#0000FF'),
(1270, 104, 'Tresia Agustiana ', 'D3 keperawatan ', 'Lab Osca', 'Tutorial maternitas ', '05-04-2023 08:16', '2023-04-05 08:30', '2023-04-05 10:00', '12', 'Disetujui', '', '#FF0000');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruang` int(15) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL,
  `lantai` varchar(5) NOT NULL,
  `fasilitas1` varchar(255) NOT NULL,
  `fasilitas2` varchar(255) NOT NULL,
  `fasilitas3` varchar(255) NOT NULL,
  `fasilitas4` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `koor_ruang` varchar(50) NOT NULL,
  `id_user` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruang`, `nama_ruang`, `gedung`, `lantai`, `fasilitas1`, `fasilitas2`, `fasilitas3`, `fasilitas4`, `status`, `koor_ruang`, `id_user`) VALUES
(101, 'Lab Komputer', 'Ibnu An Nafis - Bengkulu', '5', '140', '140', 'Ada', 'kamar mandi dalam', '', '-', 1),
(102, 'Ruang Teater', 'An Nafis', '5', '2', '84', 'Tersedia', '-', '', '-', 1),
(103, 'Auditorium', 'Auditorium', '1', '1000', '1000', '2', '-', '', '-', 1),
(104, 'Lab Osca', 'Ibnu An Nafis', '5', '10', '30', '1', '-', '', '-', 1),
(105, 'Unit Pengembangan Bahasa', 'Unit Pengembangan Bahasa', '2', 'Komputer 40', 'Kursi 40', 'Sound System', 'AC', 'Tersedia', '-', 1),
(106, 'R. KULIAH II.2', 'Ibnu An Nafis', '2', '50', '50', '-', '-', '', '-', 1),
(107, 'R. KULIAH II.3', 'Ibnu An Nafis', '2', '50', '50', '-', '-', '', '-', 1),
(108, 'R. KULIAH 5', 'A', '4', '-', '-', '-', '-', '-', '-', 1),
(109, 'R. KULIAH 7', 'A', '4', '-', '-', '-', '-', '-', '-', 1),
(110, 'R. KULIAH 8', 'A ', '4', '-', '-', '-', '-', '-', '-', 1),
(111, 'R. KULIAH 9', 'A', '4', '-', '-', '-', '-', '-', '-', 1),
(112, 'R. SEMINAR 3', 'A', '5', '-', '-', '-', '-', '-', '-', 1),
(113, 'R. KULIAH 13', 'A', '5', '-', '-', '-', '-', '-', '-', 1),
(114, 'R. KULIAH 14', 'A', '5', '-', '-', '-', '-', '-', '-', 1),
(115, 'AULA', 'A', '6', '-', '-', '-', '-', '-', '-', 1),
(116, 'B.201 (R. KONFERENSI) ', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(117, 'B.202 (R. TRANSIT, R. RAPAT)', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(118, 'B.203 (R. UJIAN DOKTOR)', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(119, 'B.204', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(120, 'B.205 (R. DOSEN 4)', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(121, 'B.206 (R. DOSEN 3)', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(122, 'B.207 (R. DOSEN 2)', 'B', '2', '-', '-', '-', '-', '-', '-', 1),
(123, 'B.208 (R. DOSEN 1)', 'B', '2', '-', '-', '-', '-', '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `telepon`, `username`, `password`, `level`) VALUES
(1, 'admin1', '081390200649', 'adminkep', 'Keperawatan', 'admkp'),
(2, 'admin', '081390200888', 'admin', 'P0ltekkes#', 'admin'),
(3, 'suci', '08', 'suci', 'suci', 'adbhs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`kode_pinjam`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruang`),
  ADD KEY `id_admin` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meminjam`
--
ALTER TABLE `meminjam`
  MODIFY `kode_pinjam` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1271;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD CONSTRAINT `meminjam_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruangan` (`id_ruang`);

--
-- Constraints for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD CONSTRAINT `ruangan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

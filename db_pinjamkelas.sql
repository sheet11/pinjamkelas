-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 11:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pinjamkelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`) VALUES
(1, 'pak ihsan'),
(2, 'pak rendi');

-- --------------------------------------------------------

--
-- Table structure for table `meminjam`
--

CREATE TABLE `meminjam` (
  `kode_pinjam` int(15) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `matkul` varchar(255) NOT NULL,
  `dosen` varchar(50) NOT NULL,
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

INSERT INTO `meminjam` (`kode_pinjam`, `nama_peminjam`, `nama_ruang`, `matkul`, `dosen`, `tgl_pinjam`, `start_date`, `end_date`, `jumlah_mahasiswa`, `status`, `keterangan`, `color`) VALUES
(13, 'TK1 - Kelas A', '', 'asd', 'asd', '01-08-2024 15:08', '2024-08-01T15:14', '2024-08-01T16:14', '123', 'Diajukan', '', '#28a745');

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
(3, 'suci', '08', 'suci', 'suci', 'adbhs'),
(5, 'TK1 - Kelas A', '082278944569', 'tk1', 'tk1', 'mhs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`kode_pinjam`);

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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meminjam`
--
ALTER TABLE `meminjam`
  MODIFY `kode_pinjam` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD CONSTRAINT `ruangan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

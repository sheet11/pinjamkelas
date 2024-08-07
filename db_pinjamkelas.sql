-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 01:52 AM
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
-- Database: `db_pinjamkelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `jumlah_mahasiswa` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `keterangan` text NOT NULL,
  `color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `meminjam`
--

INSERT INTO `meminjam` (`kode_pinjam`, `nama_peminjam`, `nama_ruang`, `matkul`, `dosen`, `tgl_pinjam`, `start_date`, `end_date`, `jumlah_mahasiswa`, `status`, `keterangan`, `color`) VALUES
(13, 'TK1 - Kelas A', '', 'asd', 'asd', '01-08-2024 15:08', '2024-08-01 15:14:00', '2024-08-01 16:14:00', '123', 'Batal', '', '#000');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruang` int(15) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL,
  `lantai` varchar(5) NOT NULL,
  `status` varchar(15) NOT NULL,
  `status_pinjam` enum('Kosong','Sedang di pinjam') NOT NULL DEFAULT 'Kosong'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruang`, `nama_ruang`, `gedung`, `lantai`, `status`, `status_pinjam`) VALUES
(124, 'Kelas II.1', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(125, 'Kelas II.2', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(126, 'Kelas II.3', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(127, 'Kelas II.4', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(128, 'Kelas II.5', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(129, 'Kelas II.6', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(130, 'Kelas II.7', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(131, 'Kelas II.8', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(132, 'Kelas II.9', 'Ibnu An-Nafiz', '2', '', 'Kosong'),
(133, 'Kelas III.9', 'Ibnu An-Nafiz', '3', '', 'Kosong'),
(134, 'Kelas III.8', 'Ibnu An-Nafiz', '3', '', 'Sedang di pinjam');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  ADD PRIMARY KEY (`id_ruang`);

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
  MODIFY `id_ruang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 10:42 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19631232_ppdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `NISN` varchar(10) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `jenis_kelamin` char(100) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`NISN`, `nama_lengkap`, `tempat_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nama_ortu`, `telepon`) VALUES
('1234567890', 'Ani', 'Jakarta', 'Permpuan', 'Islam', 'Jakarta', 'Budi', '081234567890'),
('1234567898', 'Agus Susilo', 'Marabahan', 'Laki-laki', 'Islam', 'Jalan Trans Kalimantan', 'Supono', '08172342233'),
('2345678901', 'Budi', 'Bandung', 'Laki-laki', 'Kristen', 'Bandung', 'Susi', '082345678901'),
('3456789012', 'Cici', 'Surabaya', 'Permpuan', 'Hindu', 'Surabaya', 'Rudi', '083456789012'),
('42432423', 'Adu', 'sdfdsf', 'Laki-laki', 'Islam', 'dfsdf', 'sdfdsf', '43524234'),
('4567890123', 'Dedi', 'Semarang', 'Laki-laki', 'Budha', 'Semarang', 'Tuti', '084567890123'),
('5678901234', 'Euis', 'Medan', 'Permpuan', 'Kristen', 'Medan', 'Udin', '085678901234');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `NISN` varchar(10) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `nilai_un` float NOT NULL,
  `nilai_tes_potensi` float NOT NULL,
  `nilai_tes_kesehatan` float NOT NULL,
  `status_daftar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `NISN`, `id_sekolah`, `nilai_un`, `nilai_tes_potensi`, `nilai_tes_kesehatan`, `status_daftar`) VALUES
(1, '1234567890', 1, 90, 85, 80, 'Diterima'),
(2, '2345678901', 2, 85, 80, 75, 'Diterima'),
(3, '3456789012', 3, 80, 75, 70, 'Tidak Diterima'),
(4, '4567890123', 4, 75, 70, 65, 'Diterima'),
(5, '5678901234', 5, 70, 65, 60, 'Tidak Diterima'),
(6, '1234567890', 7, 80, 80, 80, 'Diterima'),
(7, '1234567890', 7, 70, 75, 80, 'Diterima'),
(8, '1234567898', 5, 90, 89, 89, 'Diterima'),
(10, '1234567890', 1, 80.5, 80.5, 80.5, 'Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `nama_sekolah`, `alamat`) VALUES
(1, 'SMA Negeri 1 Banjarmasin', 'Jl. Raya 1'),
(2, 'SMA Negeri 2', 'Jl. Raya 2'),
(3, 'SMA Negeri 3', 'Jl. Raya 3'),
(4, 'SMA Negeri 4', 'Jl. Raya 4'),
(5, 'SMA Negeri 5', 'Jl. Raya 5'),
(7, 'SMA Kuin Raya', 'Jalan Alalak Utara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  ADD PRIMARY KEY (`NISN`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `NISN` (`NISN`),
  ADD KEY `id_sekolah_1` (`id_sekolah`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`NISN`) REFERENCES `calon_siswa` (`NISN`),
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

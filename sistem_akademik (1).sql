-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 08:54 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_alumni`
--

CREATE TABLE `dt_alumni` (
  `id_alumni` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama_mahasiswa` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tahun_lulus` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dt_dosen`
--

CREATE TABLE `dt_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama_dosen` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telepon` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_dosen`
--

INSERT INTO `dt_dosen` (`id_dosen`, `nip`, `nama_dosen`, `jenis_kelamin`, `alamat`, `no_telepon`, `email`) VALUES
(1, '1000001', 'Dedy Rahmat S.pd', ' laki laki', 'Barru', ' 082345875978', ' dedyrahmat@gmail.com'),
(3, '   2000001', ' Sri Ika Mustika S.pd', '   Perempuan', ' Majene', '   089594343233', '   sriika@gmail.com'),
(4, '3000001', 'Darmawati S.pd', 'Perempuan', 'Majene', '089594343233', 'darmawati@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dt_mahasiswa`
--

CREATE TABLE `dt_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama_mahasiswa` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_mahasiswa`
--

INSERT INTO `dt_mahasiswa` (`id_mahasiswa`, `nim`, `nama_mahasiswa`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `jurusan`) VALUES
(1, '    20510020', ' Hasbullah', '   Laki-Laki', '2001-09-19', ' Mamuju Tengah', '   Sistem Informasi'),
(2, '   20510021', ' Fathur Rachmad Hidayat', ' Laki-Laki', '2001-07-20', ' Mamuju', '   Agribisnis'),
(5, ' 20510022', ' Tenri Balobo', 'Perempuan', '2002-09-27', 'Majene', ' Akuntansi'),
(6, ' 20510023', 'Yosep Bello', 'Laki-Laki', '2002-08-11', 'Toraja', 'Teknik Metalurgi'),
(7, '20510024', 'Nurhayati', 'Perempuan', '2002-05-05', 'Makassar', 'Pertanian');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `username`, `password`, `nama_user`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Prodi SI Uniga', 'admin'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Mahasiswa Prodi SI Uniga', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_alumni`
--
ALTER TABLE `dt_alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `dt_dosen`
--
ALTER TABLE `dt_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `dt_mahasiswa`
--
ALTER TABLE `dt_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_alumni`
--
ALTER TABLE `dt_alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dt_dosen`
--
ALTER TABLE `dt_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_mahasiswa`
--
ALTER TABLE `dt_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

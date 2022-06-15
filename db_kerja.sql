-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 09:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kerja`
--

-- --------------------------------------------------------

--
-- Table structure for table `tampil`
--

CREATE TABLE `tampil` (
  `id_tampil` int(11) NOT NULL,
  `id_pelamar` int(10) NOT NULL,
  `id_kantor` int(15) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tampil`
--

INSERT INTO `tampil` (`id_tampil`, `id_pelamar`, `id_kantor`, `id`) VALUES
(1, 3, 35, 1),
(2, 4, 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kantor`
--

CREATE TABLE `tb_kantor` (
  `id_kantor` int(11) NOT NULL,
  `nama_kantor` varchar(100) NOT NULL,
  `no_kantor` varchar(100) NOT NULL,
  `alamat_kantor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kantor`
--

INSERT INTO `tb_kantor` (`id_kantor`, `nama_kantor`, `no_kantor`, `alamat_kantor`) VALUES
(35, 'PT TOLOL', '13123', 'GANG KONTOL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelamar`
--

CREATE TABLE `tb_pelamar` (
  `id_pelamar` int(10) NOT NULL,
  `nama_pelamar` varchar(200) NOT NULL,
  `umur_pelamar` varchar(200) NOT NULL,
  `alamat_pelamar` text NOT NULL,
  `pengalaman_terakhir` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pelamar`
--

INSERT INTO `tb_pelamar` (`id_pelamar`, `nama_pelamar`, `umur_pelamar`, `alamat_pelamar`, `pengalaman_terakhir`) VALUES
(3, 'ADUL', '123', '131', 'qwe'),
(4, 'AduL', '123', 'alamat', 'sdak');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level` enum('Admin','User') NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `username`, `password`) VALUES
(1, 'Admin', 'admin', 'password'),
(2, 'Admin', 'user', 'password'),
(3, 'Admin', 'cemara', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tampil`
--
ALTER TABLE `tampil`
  ADD PRIMARY KEY (`id_tampil`),
  ADD KEY `id_pelamar` (`id_pelamar`,`id_kantor`,`id`),
  ADD KEY `id_kantor` (`id_kantor`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_kantor`
--
ALTER TABLE `tb_kantor`
  ADD PRIMARY KEY (`id_kantor`);

--
-- Indexes for table `tb_pelamar`
--
ALTER TABLE `tb_pelamar`
  ADD PRIMARY KEY (`id_pelamar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tampil`
--
ALTER TABLE `tampil`
  MODIFY `id_tampil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kantor`
--
ALTER TABLE `tb_kantor`
  MODIFY `id_kantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_pelamar`
--
ALTER TABLE `tb_pelamar`
  MODIFY `id_pelamar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tampil`
--
ALTER TABLE `tampil`
  ADD CONSTRAINT `tampil_ibfk_1` FOREIGN KEY (`id_pelamar`) REFERENCES `tb_pelamar` (`id_pelamar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tampil_ibfk_2` FOREIGN KEY (`id_kantor`) REFERENCES `tb_kantor` (`id_kantor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tampil_ibfk_3` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

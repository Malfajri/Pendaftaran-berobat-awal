-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 10:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poli`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `id` int(11) NOT NULL,
  `pilihan_poli` varchar(255) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `hasil_diagnosa` varchar(255) NOT NULL,
  `id_pasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluhan`
--

INSERT INTO `keluhan` (`id`, `pilihan_poli`, `keluhan`, `hasil_diagnosa`, `id_pasien`) VALUES
(1, 'Poli Umum', 'Pusing', 'Sakit Kepala', 4),
(2, 'Poli Umum', 'bisa', '', 2),
(3, 'Poli Umum', 'aaaaaaaaaa', '', 1),
(4, 'Poli Umum', 'qqqqqq', 'covid 19', 3),
(5, 'Poli Gigi', 'haha', 'demam', 5),
(6, 'Poli Gigi', 'Gigi nyeri', 'Sakit Gigi', 4),
(7, 'Poli Gigi', 'haha', '', 4),
(8, 'Poli Umum', 'Sakit Perut', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `jawatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nrp`, `username`, `password`, `nama`, `jenis_kelamin`, `umur`, `jawatan`) VALUES
(1, '', 'riko', '$2y$10$PYjURVpQ2Mz.dYzLdMyi3OElaU9k3kcxG5iG77q3ec6SakOv86jei', 'Riko Putra', 'Laki Laki', '18', 'Pemerintah Daerah'),
(2, '', 'Agis', '$2y$10$LLjZDyWjdZfWee95/yrP3eOETBDVvvlE5r3Fc5qQHX8EcXSKUqFqC', 'Agis Suryana', 'Laki Laki', '23', 'Bandung'),
(3, '', 'Fajri', '$2y$10$b02rooHymgr1JAoYzeFiz.Dtz97TZw/cmG/v3KfPCJBrHzr/PHHj2', 'Muhammad Alfajri', 'Laki Laki', '22', 'Bogor'),
(4, '', 'ervan', '$2y$10$HKACk65ck.UAPphhwuBMIeUshiEwGlr/.LLn00J0qfttTNBgNEFfS', 'Ervan Nafis', 'Laki Laki', '24', 'TEST'),
(5, '', 'budi', '$2y$10$73HKCYFGJ5JDlygo7mBuMezbzNL51nd.lAQmnx6raUP7Y/6EO7Ol6', 'Budi Setyawan', 'Laki Laki', '22', 'Depok'),
(6, '1143245325', 'celi', '$2y$10$oYGovXV9cEagcFE68CzRgeLa6iMOaskq2EjyRK4D.VOFAezeibhk2', 'asdsa', 'Laki Laki', '23', 'Kepala Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE `super_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nrp` varchar(255) DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`id`, `username`, `password`, `role`, `nama`, `nrp`, `umur`, `jenis_kelamin`) VALUES
(2, 'cs', '$2y$10$aHGMcj1Rv17mvk.cEpd6c.4WFeEGNmuEhNMSMTnhsuY/3DT0p0l.K', 'CS', NULL, NULL, NULL, NULL),
(3, 'dokter', '$2y$10$UG/D0R8SrlKuF9LT4CPkOe3lNZO7UmTC4Wyuac/Li29qBJwBaty/K', 'Dokter', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluhan`
--
ALTER TABLE `keluhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `super_user`
--
ALTER TABLE `super_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

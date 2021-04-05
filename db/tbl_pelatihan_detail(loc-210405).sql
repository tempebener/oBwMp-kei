-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 02:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kesatriaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelatihan_detail`
--

CREATE TABLE `tbl_pelatihan_detail` (
  `id_pelatihan_detail` int(11) NOT NULL,
  `id_pelatihan` int(11) NOT NULL,
  `judul_pelatihan_detail` varchar(50) NOT NULL,
  `judul_pelatihan_detail_seo` varchar(50) NOT NULL,
  `deskripsi_pelatihan_singkat` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `url_download` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelatihan_detail`
--

INSERT INTO `tbl_pelatihan_detail` (`id_pelatihan_detail`, `id_pelatihan`, `judul_pelatihan_detail`, `judul_pelatihan_detail_seo`, `deskripsi_pelatihan_singkat`, `gambar`, `url_download`) VALUES
(1, 6, 'Standar Teknis Pemeliharaan Ayam Layer\r\n', 'standar-teknis-pemeliharaan-ayam-layer', '', 'standar_teknis_pemeliharaan_ayam_layer.png', ''),
(2, 6, 'Regulasi Terkait Bisnis Ayam Layer\r\n', 'regulasi-terkait-bisnis-ayam-layer', '', 'regulasi_terkait_bisnis_ayam_layer.png', ''),
(3, 6, 'Bisnis Proses Ayam Layer', 'bisnis-proses-ayam-layer', '', 'bisnis_proses_ayam_layer.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  ADD PRIMARY KEY (`id_pelatihan_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  MODIFY `id_pelatihan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

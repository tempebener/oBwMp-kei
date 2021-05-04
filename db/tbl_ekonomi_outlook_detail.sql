-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

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
-- Table structure for table `tbl_ekonomi_outlook_detail`
--

CREATE TABLE `tbl_ekonomi_outlook_detail` (
  `id_eo_detail` int(11) NOT NULL,
  `id_eo` int(11) NOT NULL,
  `judul_eo_detail` varchar(100) NOT NULL,
  `judul_eo_detail_seo` varchar(100) NOT NULL,
  `deskripsi_eo_detail` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `url_download` varchar(100) NOT NULL,
  `date_time` date NOT NULL,
  `download_pdf` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ekonomi_outlook_detail`
--

INSERT INTO `tbl_ekonomi_outlook_detail` (`id_eo_detail`, `id_eo`, `judul_eo_detail`, `judul_eo_detail_seo`, `deskripsi_eo_detail`, `gambar`, `url_download`, `date_time`, `download_pdf`, `video`) VALUES
(1, 7, 'Populasi Ternak Sapi', 'populasi-ternak-sapi', '', 'populasi_ternak_sapi.png', '', '2021-04-30', '', ''),
(2, 7, 'Pemotongan Ternak Sapi di RPH\r\n', 'pemotongan-ternak-sapi-di-rph', '', 'pemotongan_ternak_sapi.png', '', '2021-04-30', '', ''),
(3, 7, 'Produksi Kulit Basah', 'produksi-kulit-basah', '', 'produksi_kulit_basah.png', '', '2021-04-30', '', ''),
(4, 7, 'Ekspor Sapi Hidup', 'ekspor-sapi-hidup', '', 'ekspor_sapi_hidup.png', '', '2021-04-30', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  ADD PRIMARY KEY (`id_eo_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  MODIFY `id_eo_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

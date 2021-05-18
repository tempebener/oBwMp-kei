-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 09:34 AM
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
-- Table structure for table `tbl_fotogaleri`
--

CREATE TABLE `tbl_fotogaleri` (
  `id_fotogaleri` int(11) NOT NULL,
  `judul_fotogaleri` varchar(100) NOT NULL,
  `judul_fotogaleri_seo` varchar(200) NOT NULL,
  `deskripsi_fotogaleri` text NOT NULL,
  `gambar_fotogaleri` varchar(50) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status_fotogaleri` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fotogaleri`
--

INSERT INTO `tbl_fotogaleri` (`id_fotogaleri`, `judul_fotogaleri`, `judul_fotogaleri_seo`, `deskripsi_fotogaleri`, `gambar_fotogaleri`, `id_users`, `date_time`, `status_fotogaleri`) VALUES
(1, 'Foto 1', 'foto-1', '', '323.jpg', 1, '2021-05-18 00:00:00', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_fotogaleri`
--
ALTER TABLE `tbl_fotogaleri`
  ADD PRIMARY KEY (`id_fotogaleri`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_fotogaleri`
--
ALTER TABLE `tbl_fotogaleri`
  MODIFY `id_fotogaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

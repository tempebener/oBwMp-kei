-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 09:43 AM
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
-- Table structure for table `tbl_event_detail`
--

CREATE TABLE `tbl_event_detail` (
  `id_event_detail` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `judul_event_detail` varchar(100) NOT NULL,
  `judul_event_detail_seo` varchar(100) NOT NULL,
  `deskripsi_event_detail` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `url_download` varchar(100) NOT NULL,
  `date_time` date NOT NULL,
  `download_pdf` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `date_event_detail` date NOT NULL,
  `time_event_detail` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_event_detail`
--
ALTER TABLE `tbl_event_detail`
  ADD PRIMARY KEY (`id_event_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_event_detail`
--
ALTER TABLE `tbl_event_detail`
  MODIFY `id_event_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 08:35 PM
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
-- Table structure for table `tbl_pengantar`
--

CREATE TABLE `tbl_pengantar` (
  `id_pengantar` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `icon_1` varchar(200) NOT NULL,
  `judul_icon_1` varchar(50) NOT NULL,
  `deskripsi1` text DEFAULT NULL,
  `icon_2` varchar(200) NOT NULL,
  `judul_icon_2` varchar(50) NOT NULL,
  `deskripsi2` text DEFAULT NULL,
  `icon_3` varchar(200) NOT NULL,
  `judul_icon_3` varchar(50) NOT NULL,
  `deskripsi3` text DEFAULT NULL,
  `id_status` mediumint(20) NOT NULL DEFAULT 1,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengantar`
--

INSERT INTO `tbl_pengantar` (`id_pengantar`, `judul`, `deskripsi`, `icon_1`, `judul_icon_1`, `deskripsi1`, `icon_2`, `judul_icon_2`, `deskripsi2`, `icon_3`, `judul_icon_3`, `deskripsi3`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'KESATRIAAN ENTREPRENEUR INDONESIA', 'Kesatriaan Entreprenenur Indonesia (KEI) merupakan lembaga yang konsen dalam membangun generasi muda bangsa, dengan melahirkan sumberdaya kepemimpinan umat di masa depan, mencetak entrepreneur muda untuk menopang perekenomian nasional menuju ekonomi berdikari. Fokus utama kegiatan YKEI mencakup Pendidikan dan Pelatihan Entrepreneur Muda, serta Pesantren Entrepreneur.<br/><br/>\r\nKami meyakini bahwa menciptakan santri entrepreneur dan generasi enterpreuneur muda yang luar biasa, akan menumbuhkan usaha mandiri dan memainkan peran kunci dalam mendorong perekonomian umat dan kemakmuran masa depan Indonesia.', 'kurikulum_pelatihan.png', 'Kurikulum Pelatihan', NULL, 'timeline_pelatihan.png', 'Timeline Pelatihan', NULL, 'program_pelatihan.png', 'Program Pelatihan', NULL, 1, 'admin', '2021-04-08 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pengantar`
--
ALTER TABLE `tbl_pengantar`
  ADD PRIMARY KEY (`id_pengantar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pengantar`
--
ALTER TABLE `tbl_pengantar`
  MODIFY `id_pengantar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

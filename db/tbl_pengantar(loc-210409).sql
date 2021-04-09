-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 08:41 AM
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
  `judul_icon_1` varchar(50) NOT NULL,
  `icon_1` varchar(200) NOT NULL,
  `judul_icon_2` varchar(50) NOT NULL,
  `icon_2` varchar(200) NOT NULL,
  `judul_icon_3` varchar(50) NOT NULL,
  `icon_3` varchar(200) NOT NULL,
  `id_status` mediumint(20) NOT NULL DEFAULT 1,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengantar`
--

INSERT INTO `tbl_pengantar` (`id_pengantar`, `judul`, `deskripsi`, `judul_icon_1`, `icon_1`, `judul_icon_2`, `icon_2`, `judul_icon_3`, `icon_3`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'KESATRIAAN ENTREPRENEUR INDONESIA', 'Kesatriaan Entreprenenur Indonesia (KEI) merupakan lembaga yang konsen dalam membangun generasi muda bangsa, dengan melahirkan sumberdaya kepemimpinan umat di masa depan, mencetak entrepreneur muda untuk menopang perekenomian nasional menuju ekonomi berdikari. Fokus utama kegiatan YKEI mencakup Pendidikan dan Pelatihan Entrepreneur Muda, serta Pesantren Entrepreneur.<br/><br/>\r\nKami meyakini bahwa menciptakan santri entrepreneur dan generasi enterpreuneur muda yang luar biasa, akan menumbuhkan usaha mandiri dan memainkan peran kunci dalam mendorong perekonomian umat dan kemakmuran masa depan Indonesia.', 'Kurikulum Pelatihan', 'kurikulum_pelatihan.png', 'Timeline Pelatihan', 'timeline_pelatihan.png', 'Program Pelatihan', 'program_pelatihan.png', 1, 'admin', '2021-04-08 17:00:00');

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

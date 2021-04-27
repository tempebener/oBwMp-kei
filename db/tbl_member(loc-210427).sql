-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 09:41 AM
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
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(11) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `nama` text NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pend_terakhir` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `usaha_diminati` varchar(50) NOT NULL,
  `foto_ktp` varchar(200) NOT NULL,
  `foto_npwp` varchar(200) NOT NULL,
  `foto_pas` varchar(200) NOT NULL,
  `foto_sku` varchar(200) NOT NULL,
  `partnership_agreement` varchar(200) NOT NULL,
  `status_keanggotaan` varchar(10) DEFAULT 'Member',
  `id_status` mediumint(20) NOT NULL DEFAULT 1,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `no_induk`, `nama`, `alamat`, `no_hp`, `email`, `pend_terakhir`, `pekerjaan`, `usaha_diminati`, `foto_ktp`, `foto_npwp`, `foto_pas`, `foto_sku`, `partnership_agreement`, `status_keanggotaan`, `id_status`, `created_by`, `created_at`) VALUES
(1, '', 'Aditya Bayu Wardhana', 'Jl. Kelapa Tunggal', '08999592439', 'aditya.bayu@gmail.com', 'D3 - Manajemen Informatika', 'Web Developer', 'IT Technologi', 'bayoeway.jpg', 'bayoeway.jpg', 'bayoeway.jpg', 'bayoeway.jpg', 'Saya Setuju', 'Member', 1, 'admin', '2021-03-27 14:03:47'),
(2, '', 'aaa', 'bbb', '0123456', 'b@gmail.com', 'ccc', 'ddd', 'eee', 'man-wearing-blue-shirt-illustration-png-clip-art-thumbnail4.png', '', '', '', '', 'Member', 1, NULL, '2021-03-28 12:26:26'),
(3, '', '111', '222', '0123456', 'b@gmail.com', '333', '444', '555', '16757-200.png', '16757-200.png', '16757-200.png', '16757-200.png', '16757-200.png', 'Member', 1, NULL, '2021-03-28 12:39:15'),
(4, '', 'Huma', 'Cilangkap', '082226564060', 'harishumaidi75@gmail.com', 'Sarjana Peternakan', 'Karyawan Swasta', 'Budidaya Penggemukan Sapi', 'Pakan_Sapi.jpg', 'Pakan_Sapi1.jpg', 'Pakan_Sapi2.jpg', '', '', 'Member', 1, NULL, '2021-04-07 18:25:35'),
(5, '', 'Huma', 'Cilangkap', '082226564060', 'harishumaidi75@gmail.com', 'Sarjana Peternakan', 'Karyawan Swasta', 'Budidaya Penggemukan Sapi', '', '', '', '', '', 'Member', 0, NULL, '2021-04-07 18:26:50'),
(6, '00001', 'aaa', 'bbb', '0123456', 'test@gmail.com', 'ccc', 'ddd', 'eee', 's-logo-subur40.png', 's-logo-subur41.png', 's-logo-subur42.png', 's-logo-subur43.png', 's-logo-subur44.png', 'Member', 1, '1', '2021-04-27 07:34:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 05:35 AM
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
-- Table structure for table `tbl_tutor`
--

CREATE TABLE `tbl_tutor` (
  `id_tutor` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `quotes` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `link` varchar(50) NOT NULL,
  `id_tutor_s` mediumint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tutor`
--

INSERT INTO `tbl_tutor` (`id_tutor`, `nama`, `jabatan`, `quotes`, `foto`, `link`, `id_tutor_s`) VALUES
(1, 'Tumiyana', 'MBA \r\nChairman & CEO Widodo Makmur Perkasa Group\r\n', 'Tetap Semangat, Jangan Menyerah!', 'tumiyana.jpg', '#', 1),
(2, 'Giyono', 'Business Development Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '6.jpg', '#', 1),
(3, 'Nur Iswan', 'CEO PT. Widodofood Makmur Sejahtera', 'Tetap Semangat, Jangan Menyerah!', 'nur.jpg', '#', 1),
(4, 'Jaka Widada', 'Ketua Program Studi Mikrobiologi Pertanian UGM', 'Tetap Semangat, Jangan Menyerah!', '4.jpg', '#', 1),
(5, 'Mochammad Puji Tri', 'Depot Tani Sehat Wonosobo', 'Tetap Semangat, Jangan Menyerah!', '5.jpg', '#', 1),
(6, 'Adhika Mahardika', 'Agrajaya', 'Tetap Semangat, Jangan Menyerah!', '1.jpg', '#', 1),
(7, 'Anam Masrur', 'Permaculture Specialist Lumbung Nuswantoro', 'Tetap Semangat, Jangan Menyerah!', '2.jpg', '#', 1),
(8, 'Arief Budiman', 'Agriculture Entrepreneur Clinics', 'Tetap Semangat, Jangan Menyerah!', '3.jpg', '#', 1),
(9, 'Sapto Tjiptanto', 'Rumah Organic Jogja', 'Tetap Semangat, Jangan Menyerah!', '9.jpg', '#', 1),
(10, 'Shofyan Adi Cahyono', 'Sayur Organik Merbabu', 'Tetap Semangat, Jangan Menyerah!', '10.jpg', '#', 1),
(11, 'Wardiono', 'Sanggar Anak Tani Trucuk Klaten', 'Tetap Semangat, Jangan Menyerah!', '11.jpg', '#', 1),
(12, 'Wednes Ari Yudha', 'Owner Coklat Dhalem', 'Tetap Semangat, Jangan Menyerah!', '12.jpg', '#', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  ADD PRIMARY KEY (`id_tutor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

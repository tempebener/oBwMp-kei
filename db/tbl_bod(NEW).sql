-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2021 pada 11.14
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `tbl_bod`
--

CREATE TABLE `tbl_bod` (
  `id_bod` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` varchar(80) NOT NULL,
  `quotes` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `link` varchar(50) NOT NULL,
  `id_status` mediumint(20) NOT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bod`
--

INSERT INTO `tbl_bod` (`id_bod`, `nama`, `jabatan`, `quotes`, `foto`, `link`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'TUMIYANA', 'President Commissioner Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '1.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(2, 'Raden Marlan', 'CEO Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '2.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(3, 'Teddy M. Subekti', 'Vice CEO Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '3.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(4, 'HB. Soeparno', 'Construction & Energy Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '4.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(5, 'Suyatmi ', 'Marketing Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '5.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(6, 'Tri Agus Bayuseno', 'Technical Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '6.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(7, 'Nur Tjahjo', 'HCD Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '7.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(8, 'Giyono', 'Business Development Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '8.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(9, 'Heri Prasojo', 'CEO PT Pasir Tengah', 'Tetap Semangat, Jangan Menyerah!', '9.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(10, 'Saiful Bari', 'CEO PT Cianjur Arta Makmur', 'Tetap Semangat, Jangan Menyerah!', '10.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(11, 'Nur Iswan', 'CEO PT Widodofood Makmur Sejahtera', 'Tetap Semangat, Jangan Menyerah!', '11.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(12, 'Ali Mas\'adi', 'CEO PT Widodo Makmur Unggas', 'Tetap Semangat, Jangan Menyerah!', '12.jpg', '#', 1, 'admin', '2021-03-27 14:03:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bod`
--
ALTER TABLE `tbl_bod`
  ADD PRIMARY KEY (`id_bod`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bod`
--
ALTER TABLE `tbl_bod`
  MODIFY `id_bod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

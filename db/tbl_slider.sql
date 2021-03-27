-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2021 pada 10.14
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.26

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
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `jdl_1` text NOT NULL,
  `jdl_2` text NOT NULL,
  `slider_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `foto` varchar(200) NOT NULL,
  `link` varchar(50) NOT NULL,
  `id_slider_s` mediumint(20) NOT NULL,
  `slider_pengguna_id` int(11) DEFAULT NULL,
  `slider_author` varchar(60) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `jdl_1`, `jdl_2`, `slider_tanggal`, `foto`, `link`, `id_slider_s`, `slider_pengguna_id`, `slider_author`, `status`) VALUES
(10, 'Joglo', 'Deskripsi', '2021-03-27 07:16:30', 'f9fafeed19a1574b495335d4c8429295.jpg', '#', 1, 1, 'M Fikri Setiadi', 0),
(12, 'Joglo', 'Deskirpsi', '2021-03-27 07:16:30', 'joglos.jpg', '#', 1, NULL, NULL, 0),
(13, 'dfs', '', '2021-03-27 08:53:28', '602872c59a4b8b33123031f0e16f61a9.jpg', '', 0, 1, 'M Fikri Setiadi', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2021 pada 10.35
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
-- Struktur dari tabel `tbl_pelatihan`
--

CREATE TABLE `tbl_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `judul_pelatihan` varchar(100) NOT NULL,
  `judul_pelatihan_seo` varchar(50) NOT NULL,
  `deskripsi_singkat` varchar(11) NOT NULL,
  `deskirpsi_full` text NOT NULL,
  `foto` varchar(25) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelatihan`
--

INSERT INTO `tbl_pelatihan` (`id_pelatihan`, `judul_pelatihan`, `judul_pelatihan_seo`, `deskripsi_singkat`, `deskirpsi_full`, `foto`, `id_users`, `date_time`) VALUES
(1, 'UMKM PRODUK PERTANIAN', 'umkm-produk-pertanian', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'beras.jpg', 0, '2021-04-01'),
(2, 'UMKM PRODUK OLAHAN DAGING', 'umkm-produk-olahan-daging', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'produk_olahan.jpg', 0, '2021-04-01'),
(3, 'BUDIDAYA PADI & JAGUNG', 'budidaya-padi-jagung', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'jagung.png', 0, '2021-04-01'),
(4, 'PENGGEMUKAN SAPI', 'penggemukan-sapi', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'sapi.jpg', 0, '2021-04-01'),
(5, 'BUDIDAYA AYAM BROILER', 'budidaya-ayam-broiler', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_broiler.jpg', 0, '2021-04-01'),
(6, 'BUDIDAYA AYAM LAYER', 'budidaya-ayam-layer', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_layer.jpg', 0, '2021-04-01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

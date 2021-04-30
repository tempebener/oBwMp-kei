-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2021 pada 10.26
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
-- Struktur dari tabel `tbl_ekonomi_outlook_detail`
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
-- Dumping data untuk tabel `tbl_ekonomi_outlook_detail`
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
-- Indeks untuk tabel `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  ADD PRIMARY KEY (`id_eo_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  MODIFY `id_eo_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

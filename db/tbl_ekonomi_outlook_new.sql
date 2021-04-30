-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2021 pada 10.27
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
-- Struktur dari tabel `tbl_ekonomi_outlook`
--

CREATE TABLE `tbl_ekonomi_outlook` (
  `id_eo` int(11) NOT NULL,
  `judul_eo` varchar(100) NOT NULL,
  `judul_eo_seo` varchar(100) NOT NULL,
  `deskripsi_eo` text NOT NULL,
  `foto_eo` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ekonomi_outlook`
--

INSERT INTO `tbl_ekonomi_outlook` (`id_eo`, `judul_eo`, `judul_eo_seo`, `deskripsi_eo`, `foto_eo`, `date_time`) VALUES
(1, 'Publikasi Tanaman Pangan Jagung', 'publikasi-tanaman-pangan-jagung', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '1.1.jpg', '2021-03-27 00:00:00'),
(2, 'Ringkasan Eksekutif Komoditas Beras di Indonesia', 'ringkasan-eksekutif-komoditas-beras-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '2.1.jpg', '2021-03-27 00:00:00'),
(3, 'Data Produksi Kulit Ternak Besar di Indonesia', 'data-produksi-kulit-ternak-besar-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '3.1.jpg', '2021-03-27 00:00:00'),
(4, 'Outlook Komoditas Telur Ayam Ras di Indonesia', 'outlook-komoditas-telur-ayam-ras-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '4.1.jpg', '2021-03-27 00:00:00'),
(5, 'Statistik Perdagangan Komoditas Daging Sapi dan Daging Kerbau', 'statistik-perdagangan-komoditas-daging-sapi-dan-daging-kerbau', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '5.1.jpg', '2021-03-27 00:00:00'),
(6, 'Keragaan Komoditas Ayam', 'keragaan-komoditas-ayam', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '6.1.jpg', '2021-03-27 00:00:00'),
(7, 'Statistik Peternakan Sapi di Indonesia', 'statistik-peternakan-sapi-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '7.1.jpg', '2021-03-27 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_ekonomi_outlook`
--
ALTER TABLE `tbl_ekonomi_outlook`
  ADD PRIMARY KEY (`id_eo`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_ekonomi_outlook`
--
ALTER TABLE `tbl_ekonomi_outlook`
  MODIFY `id_eo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

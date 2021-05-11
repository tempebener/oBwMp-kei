-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2021 pada 06.52
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
-- Struktur dari tabel `tbl_pelatihan_detail`
--

CREATE TABLE `tbl_pelatihan_detail` (
  `id_pelatihan_detail` int(11) NOT NULL,
  `id_pelatihan` int(11) NOT NULL,
  `judul_pelatihan_detail` varchar(50) NOT NULL,
  `judul_pelatihan_detail_seo` varchar(50) NOT NULL,
  `deskripsi_pelatihan_singkat` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `url_download` varchar(50) NOT NULL,
  `date_time` date NOT NULL,
  `download_pdf` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelatihan_detail`
--

INSERT INTO `tbl_pelatihan_detail` (`id_pelatihan_detail`, `id_pelatihan`, `judul_pelatihan_detail`, `judul_pelatihan_detail_seo`, `deskripsi_pelatihan_singkat`, `gambar`, `url_download`, `date_time`, `download_pdf`, `video`) VALUES
(1, 6, 'Standar Teknis Pemeliharaan Ayam Layer\r\n', 'standar-teknis-pemeliharaan-ayam-layer', 'Pulvinar sit malesuada curabitur pellentesque laoreet integer eu malesuada vulputate. Cursus eu odio laoreet arcu. Placerat eget venenatis odio curabitur Pulvinar sit malesuada curabitur pellentesque laoreet integer eu malesuada vulputate. Cursus eu odio laoreet arcu. Placerat eget venenatis odio curabitur.', 'standar_teknis_pemeliharaan_ayam_layer.png', '', '2021-04-06', '', ''),
(2, 6, 'Regulasi Terkait Bisnis Ayam Layer\r\n', 'regulasi-terkait-bisnis-ayam-layer', '', 'regulasi_terkait_bisnis_ayam_layer.png', '', '2021-04-06', '', ''),
(3, 6, 'Bisnis Proses Ayam Layer', 'bisnis-proses-ayam-layer', '', 'bisnis_proses_ayam_layer.png', '', '2021-04-06', '', ''),
(4, 6, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang.png', '', '2021-04-06', '', ''),
(5, 6, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan.png', '', '2021-04-06', '', ''),
(6, 6, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(7, 6, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(8, 5, 'Standar Teknis Pemeliharaan Ayam Broiler', 'standar-teknis-pemeliharaan-ayam-broiler', '', 'standar_teknis_pemeliharaan_ayam_broiler.png', '', '2021-04-06', '', ''),
(9, 5, 'Regulasi Terkait Bisnis Ayam Broiler', 'regulasi-terkait-bisnis-ayam-broiler', '', 'regulasi_terkait_bisnis_ayam_broiler.png', '', '2021-04-06', '', ''),
(10, 5, 'Bisnis Proses Ayam Broiler', 'bisnis-proses-ayam-broiler', '', 'bisnis_proses_ayam_broiler.png', '', '2021-04-06', '', ''),
(11, 5, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang.png', '', '2021-04-06', '', ''),
(12, 5, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan.png', '', '2021-04-06', '', ''),
(13, 5, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(14, 5, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(15, 4, 'Standar Teknis Pemeliharaan Sapi', 'standar-teknis-pemeliharaan-sapi', '', 'standar_teknis_pemeliharaan_sapi.png', '', '2021-04-06', '', ''),
(16, 4, 'Regulasi Terkait Bisnis Penggemukan Sapi', 'regulasi-terkait-bisnis-penggemukan-sapi', '', 'regulasi_terkait_bisnis_penggemukan_sapi.png', '', '2021-04-06', '', ''),
(17, 4, 'Bisnis Proses Penggemukan Sapi', 'bisnis-proses-penggemukan-sapi', '', 'bisnis_proses_penggemukan_sapi.png', '', '2021-04-06', '', ''),
(18, 4, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang_sapi.png', '', '2021-04-06', '', ''),
(19, 4, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan_sapi.png', '', '2021-04-06', '', ''),
(20, 4, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(21, 4, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(22, 4, 'Analisa Finansial dan Mitigasi Resiko', 'analisa-finansial-dan-mitigasi-resiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06', '', ''),
(23, 3, 'Standar Produksi dan Produktifitas', 'standar-produksi-dan-produktifitas', '', 'standar_produksi_dan_produktifitas.png', '', '2021-04-06', '', ''),
(24, 3, 'Regulasi Pertanian', 'regulasi-pertanian', '', 'regulasi_pertanian.png', '', '2021-04-06', '', ''),
(25, 3, 'Bisnis Proses Budidaya', 'bisnis-proses-budidaya', '', 'bisnis_proses_budidaya.png', '', '2021-04-06', '', ''),
(26, 3, 'Manajemen Pengelolaan Lahan dan Pemupukan', 'manajemen-pengelolaan-lahan-dan-pemupukan', '', 'manajemen_pengelolaan_lahan_dan_pemupukan.png', '', '2021-04-06', '', ''),
(27, 3, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_bisnis.png', '', '2021-04-06', '', ''),
(28, 3, 'Manajemen Panen', 'manajemen-panen', '', 'manajemen_panen.png', '', '2021-04-06', '', ''),
(29, 3, 'Pengelolaan air', 'pengelolaan-air', '', 'pengelolaan_air.png', '', '2021-04-06', '', ''),
(30, 3, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(31, 3, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(32, 3, 'Analisa Finansial dan Mitigasi Risiko', 'analisa-finansial-dan-mitigasi-risiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06', '', ''),
(33, 3, 'Manajemen Pasca Panen', 'manajemen-pasca-panen', '', 'manajemen_panen.png', '', '2021-04-06', '', ''),
(34, 2, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06', '', ''),
(35, 2, 'Standar Teknis Usaha', 'standar-teknis-usaha', '', 'standar_teknis_usaha.png', '', '2021-04-06', '', ''),
(36, 2, 'Laba Usaha dan Laba Operasional', 'laba-usaha-dan-laba-operasional', '', 'laba_usaha_dan_laba_oprasional.png', '', '2021-04-06', '', ''),
(37, 2, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(38, 2, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(39, 2, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06', '', ''),
(40, 1, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06', '', ''),
(41, 1, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06', '', ''),
(42, 1, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', ''),
(43, 1, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', ''),
(44, 6, 'asasasas', 'asasasas-23042021141319', '<p>asasasas</p>\r\n', 'sapi1.jpg', '', '2021-04-23', 'BKLPK.pdf', 'ssss');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  ADD PRIMARY KEY (`id_pelatihan_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  MODIFY `id_pelatihan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

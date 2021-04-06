-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 08:24 AM
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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `status`) VALUES
(1, 'Afghanistan', 1),
(2, 'Albania', 1),
(3, 'Algeria', 1),
(4, 'Andorra', 1),
(5, 'Angola', 1),
(6, 'Antigua and Barbuda', 1),
(7, 'Argentina', 1),
(8, 'Armenia', 1),
(9, 'Australia', 1),
(10, 'Austria', 1),
(11, 'Azerbaijan', 1),
(12, 'Bahamas', 1),
(13, 'Bahrain', 1),
(14, 'Bangladesh', 1),
(15, 'Barbados', 1),
(16, 'Belarus', 1),
(17, 'Belgium', 1),
(18, 'Belize', 1),
(19, 'Benin', 1),
(20, 'Bhutan', 1),
(21, 'Bolivia', 1),
(22, 'Bosnia and Herzegovina', 1),
(23, 'Botswana', 1),
(24, 'Brazil', 1),
(25, 'Brunei', 1),
(26, 'Bulgaria', 1),
(27, 'Burkina Faso', 1),
(28, 'Burundi', 1),
(29, 'Cabo Verde', 1),
(30, 'Cambodia', 1),
(31, 'Cameroon', 1),
(32, 'Canada', 1),
(33, 'Central African Republic', 1),
(34, 'Chad', 1),
(35, 'Chile', 1),
(36, 'China', 1),
(37, 'Colombia', 1),
(38, 'Comoros', 1),
(39, 'Congo, Republic of the', 1),
(40, 'Congo, Democratic Republic of the', 1),
(41, 'Costa Rica', 1),
(42, 'Cote d Ivoire', 1),
(43, 'Croatia', 1),
(44, 'Cuba', 1),
(45, 'Cyprus', 1),
(46, 'Czech Republic', 1),
(47, 'Denmark', 1),
(48, 'Djibouti', 1),
(49, 'Dominica', 1),
(50, 'Dominican Republic', 1),
(51, 'Ecuador', 1),
(52, 'Egypt', 1),
(53, 'El Salvador', 1),
(54, 'Equatorial Guinea', 1),
(55, 'Eritrea', 1),
(56, 'Estonia', 1),
(57, 'Ethiopia', 1),
(58, 'Fiji', 1),
(59, 'Finland', 1),
(60, 'France', 1),
(61, 'Gabon', 1),
(62, 'Gambia', 1),
(63, 'Georgia', 1),
(64, 'Germany', 1),
(65, 'Ghana', 1),
(66, 'Greece', 1),
(67, 'Grenada', 1),
(68, 'Guatemala', 1),
(69, 'Guinea', 1),
(70, 'Guinea-Bissau', 1),
(71, 'Guyana', 1),
(72, 'Haiti', 1),
(73, 'Honduras', 1),
(74, 'Hungary', 1),
(75, 'Iceland', 1),
(76, 'India', 1),
(77, 'Indonesia', 1),
(78, 'Iran', 1),
(79, 'Iraq', 1),
(80, 'Ireland', 1),
(81, 'Italy', 1),
(82, 'Jamaica', 1),
(83, 'Japan', 1),
(84, 'Jordan', 1),
(85, 'Kazakhstan', 1),
(86, 'Kenya', 1),
(87, 'Kiribati', 1),
(88, 'Kosovo', 1),
(89, 'Kuwait', 1),
(90, 'Kyrgyzstan', 1),
(91, 'Laos', 1),
(92, 'Latvia', 1),
(93, 'Lebanon', 1),
(94, 'Lesotho', 1),
(95, 'Liberia', 1),
(96, 'Libya', 1),
(97, 'Liechtenstein', 1),
(98, 'Lithuania', 1),
(99, 'Luxembourg', 1),
(100, 'Macedonia', 1),
(101, 'Madagascar', 1),
(102, 'Malawi', 1),
(103, 'Malaysia', 1),
(104, 'Maldives', 1),
(105, 'Mali', 1),
(106, 'Malta', 1),
(107, 'Marshall Islands', 1),
(108, 'Mauritania', 1),
(109, 'Mauritius', 1),
(110, 'Mexico', 1),
(111, 'Micronesia', 1),
(112, 'Moldova', 1),
(113, 'Monaco', 1),
(114, 'Mongolia', 1),
(115, 'Montenegro', 1),
(116, 'Morocco', 1),
(117, 'Mozambique', 1),
(118, 'Myanmar (Burma)', 1),
(119, 'Namibia', 1),
(120, 'Nauru', 1),
(121, 'Nepal', 1),
(122, 'Netherlands', 1),
(123, 'New Zealand', 1),
(124, 'Nicaragua', 1),
(125, 'Niger', 1),
(126, 'Nigeria', 1),
(127, 'North Korea', 1),
(128, 'Norway', 1),
(129, 'Oman', 1),
(130, 'Pakistan', 1),
(131, 'Palau', 1),
(132, 'Palestine', 1),
(133, 'Panama', 1),
(134, 'Papua New Guinea', 1),
(135, 'Paraguay', 1),
(136, 'Peru', 1),
(137, 'Philippines', 1),
(138, 'Poland', 1),
(139, 'Portugal', 1),
(140, 'Qatar', 1),
(141, 'Romania', 1),
(142, 'Russia', 1),
(143, 'Rwanda', 1),
(144, 'St. Kitts and Nevis', 1),
(145, 'St. Lucia', 1),
(146, 'St. Vincent and The Grenadines', 1),
(147, 'Samoa', 1),
(148, 'San Marino', 1),
(149, 'Sao Tome and Principe', 1),
(150, 'Saudi Arabia', 1),
(151, 'Senegal', 1),
(152, 'Serbia', 1),
(153, 'Seychelles', 1),
(154, 'Sierra Leone', 1),
(155, 'Singapore', 1),
(156, 'Slovakia', 1),
(157, 'Slovenia', 1),
(158, 'Solomon Islands', 1),
(159, 'Somalia', 1),
(160, 'South Africa', 1),
(161, 'South Korea', 1),
(162, 'South Sudan', 1),
(163, 'Spain', 1),
(164, 'Sri Lanka', 1),
(165, 'Sudan', 1),
(166, 'Suriname', 1),
(167, 'Swaziland', 1),
(168, 'Sweden', 1),
(169, 'Switzerland', 1),
(170, 'Syria', 1),
(171, 'Taiwan', 1),
(172, 'Tajikistan', 1),
(173, 'Tanzania', 1),
(174, 'Thailand', 1),
(175, 'Timor-Leste', 1),
(176, 'Togo', 1),
(177, 'Tonga', 1),
(178, 'Trinidad and Tobago', 1),
(179, 'Tunisia', 1),
(180, 'Turkey', 1),
(181, 'Turkmenistan', 1),
(182, 'Tuvalu', 1),
(183, 'Uganda', 1),
(184, 'Ukraine', 1),
(185, 'United Arab Emirates', 1),
(186, 'United Kingdom (UK)', 1),
(187, 'United States of America (USA)', 1),
(188, 'Uruguay', 1),
(189, 'Uzbekistan', 1),
(190, 'Vanuatu', 1),
(191, 'Vatican City (Holy See)', 1),
(192, 'Venezuela', 1),
(193, 'Vietnam', 1),
(194, 'Yemen', 1),
(195, 'Zambia', 1),
(196, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Kedatangan Tamu Asing', '2016-09-08 13:00:55', 1, 'M Fikri Setiadi', 5, '202aa754590dfc1070c624bad294abbc.jpg'),
(3, 'Pemilu Osis 2016-2017', '2017-01-21 01:58:16', 1, 'M Fikri Setiadi', 3, 'dc088a9fb62333012ff7a601828219d7.jpg'),
(4, 'Kegiatan Belajar Siswa', '2017-01-24 01:31:13', 1, 'M Fikri Setiadi', 7, '203bc0411a07ed0430d39bcc38ec2c56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(5) NOT NULL,
  `id_users` int(11) NOT NULL,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci DEFAULT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status_lang_news` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `views` int(20) NOT NULL,
  `tag_seo` varchar(200) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `id_users`, `judul`, `judul_seo`, `headline`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`, `status_lang_news`, `views`, `tag_seo`) VALUES
(1, 1, 'Klinik Tani, Kembangkan Potensi Pertanian di Lombok Timur', 'klinik-tani-kembangkan-potensi-pertanian-di-lombok-timur', 'Y', 'LOMBOK TIMUR—Pada 2016 setelah menyelesaikan studi S2  jurusan Pengelolaan Tanah dan Air di Universitas Brawijaya Malang, Amrullah Fiqri  kembali ke kampung halamannya di Lombok Timur, Nusa Tenggara Barat untuk mengabdi. \r\n\r\nDia  melakukan eksplorasi lingkungan setempat  dan menemukan produktivitas lahan sudah kritis di kawasan Suryawangi.\r\n\r\n“Visi saya adalah mengurangi penggunaan pupuk kimia yang berlebihan dan memberikan edukasi ke petani dan pelaku pertanian setempat tentang manajemen pupuk sebenarnya,” ujar Amrullah kepada Peluang, melalui Whatsapp, Senin (29/3/21).\r\n\r\nAmrullah pun mengumpulkan beberapa sarjana pertanian untuk membentuk sebuah teamwork. Mulanya dia buat percontohan budi daya cabai dengan menyediakan seluruh bahannya.\r\n\r\nDia pun mendirikan UKM Klinik Tani yang berbasis di  Jalan TGH. M. Amin Ismail, Suryawangi, Labuhan Haji, Lombok Timur untuk mengembangkan potensi  pertanian di kampung halamannya.\r\n\r\nAkhirnya, tujuan utamanya pun berhasil tercapai. Kualitas lahan pertanian di sekitar kampung halamannya makin membaik. Terutama setelah Fiqri menggunakan pupuk organik hasil dari formula yang dibuat Fiqri bersama rekan-rekannya di Klinik Tani.\r\n\r\n“Masalah kesulitan mendapat produk pertanian di wilayah kami pun ikut terselesaikan karena Klinik Tani ini juga memproduksi dengan volume cukup banyak,” cetus alumniProduk kami pasarkan di Lombok, Sumbawa, dan Bima Fakultas Pertanian Universitas Brawijaya ini.\r\n\r\nSarjana  Ilmu Tanah Universitas Mataram ini mampu menghasilkan pupuk organik sebanyak  seribu karung per bulannya. Produk Linik Tani dipasarkan di Lombok, Sumbawa, dan Bima. \r\n\r\n“Prospek pertanian di Lombok Timur besar, karena pusat pertanian NTB itu berada di Lombok Timur didukung oleh sumber daya alam yang melimpah,” ujar pria kelahiran 11 Juni 1990 ini.\r\n\r\nKerja keras rupanya dilirik Pertamina untuk menjadi binaan. Hasilnya produknya pun meningkat hingga 3 kali lipat menjadi 3 ribu karung/ bulan. Usahanya itu pun berimbas pada banyaknya lapangan pekerjaan yang disediakan. Hingga kini sudah ada 8 orang warga sekitar yang ia jadikan karyawan.\r\n\r\nMeskipun demikian Amrullah mengungkapkan, omzet tidak menentu,khususnya pada masa pandemi. Terkadang bisa mencapai Rp50-100 juta per bulan, tergantung ketersediaan bahan dan musim tanam petani setempat\r\n\r\n“Karena tim saya di lapangan adalah penyuluh swadaya, maka dengan hasil penjualan pupuk organik tersebut merupakan sebagai gaji/hak untuk kami peroleh. Rencananya kami akan mendirikan pabrik pupuk organik di sekitar pusat-pusat  pertanian berskala kecil supaya petani bisa melihat langsung proses produksi dan semoga bisa bermanfaat bagi khalayak banyak,” tutup Amrullah (Van).', NULL, 'kamis', '2021-04-01', '00:00:00', 'klinik-tani.jpeg', 1, '', 'Y', 'Y', 0, NULL),
(2, 1, 'HARGA NAIK, PETANI KARET LUBUKLINGGAU/MUSI RAWAS PERLUAS KEBUNNYA', 'harga-naik-petani-karet-lubuklinggau', 'Y', 'Penangkar benih karet minta pemerintah memperhatikan harga karet. “Kalau harga karet tinggi maka petani semangat menanam karet sehingga permintaan bibit karet tinggi. Akhir-akhir ini harga karet kembali naik dan banyak petani memperluas karet dan membeli benih siap salur dari kami,” kata Suparno, pemilik CV Mutiara Bonggol, penangkar benih karet, kopi dan lada di Desa Ae Temam, Kecamatan LubukLlinggau Selatan Kotamadya Lubuklnggau, Sumatera Selatan.\r\n\r\nSaat ini CV Mutiara Bonggol sedang menyiapkan pembibitan untuk pengembangan karet 50 ha di Kabupaten Musi Rawas dengan anggaran Ditjen Perkebunan. Perusahaan ini salah satu yang ditunjuk menjadi pemasok benih siap salur , selain itu ada perusahaan lain. Di Kotamadya Lubuklinggau dan Kabupaten Musi Rawas sendiri total ada 6 perusanaan penangkar karet. Pengembangan karet pada awalnya mencapai 100 ha tetapi dengan refocusing tinggal 50 ha.\r\n\r\n“Sebenarnya kita sudah siapkan bibit tetapi anggaran malah berkurang. Saat ini benih karet siap salur mencapai 200.000 batang sedang untuk pengembangan 50 ha hanya perlu benih 25.000 batang-27.000 batang. Sisanya akan disalurkan ke daerah lain. Kepulauan Meranti, Sumbar dan Bengkulu sudah menghubungi kami,” katanya.\r\n\r\nCV Mutiara Bonggol sendiri sudah beroperasi sejak tahun 1990an dirintis oleh almarhum Gepeng. Entres karet berasal dari Balai Penelitian Sembawa. Selama ini selain memenuhi kebutuhan benih untuk program pengembangan karet di Lubuklinggau dan Musi Rawas, juga untuk Riau, Sumut, Jambi dan perusahaan swasta di Kalimantan.\r\n\r\nLubuklinggau dan Musi Rawas sendiri merupakan daerah karet. Dulu berupa hutan karet bukan kebun karet. Karet berasal dari seedling dan dicampur dengan tanaman lain seperti durian, kopi dan lain-lain. Produksinya hanya 7 kg/ha setiap panen. Ketika harga turun dalam 10 tahun terakhir banyak yang mengkonversi menjadi kebun sawit.\r\nSekarang sudah banyak petani karet yang menggunakan benih karet bersertifikat dan mengikuti SOP penanaman dan budidaya karet. Produksinya 20-35 kg/ha setiap sadap. Sekarang harga karet mulai naik dan petani seperti ini kembali bersemangat untuk memperluas karetnya. Petani juga sudah mengerti karet yang bermutu seperti apa sehingga memproduksi bokar dengan kadar karet kering optimal.\r\n\r\nRumus harga karet yang ideal bagi petani adalah harga 1 kg karet setara dengan harga 1 kg beras. Harga karet 1 kg Rp10.000 bagi petani sudah bagus.', NULL, NULL, '2021-04-01', '00:00:00', 'mediaperkebunan.jpeg', 1, '', 'Y', 'Y', 0, NULL),
(3, 1, 'Hulu dan Hilir, Siasat Kementan Tingkatkan Produksi Susu Nasional', 'hulu-dan-hilir-siasat-kementan-tingkatkan-produksi-susu-nasional', 'Y', 'Dirjen PKH Kementan, Nasrullah mengatakan, di hulu terdapat peningkatan populasi sapi perah, perbaikan kualitas susu dan peningkatan produktivitas. Sementara di hilir, terdapat diversifikasi dan inovasi produk, peningkatan mutu dan keamanan produk, serta promosi produk dan perluasan pasar.\r\n \r\nNasrullah menuturkan, peningkatan populasi sapi perah dengan menerapkan program Sapi Kerbau Komoditas Andalan Negeri (SIKOMANDAN) sebagai replacement induk. SIKOMANDAN menjadi salah satu kegiatan utama dalam rangka meningkatkan penyediaan produksi daging sapi dalam negeri bagi masyarakat.\r\n \r\nSIKOMANDAN dikemas dengan serangkaian kegiatan yang terintegrasi dan saling bersinergi dari hulu sampai hilir. Dimulai dari upaya peningkatan kelahiran diikuti upaya penurunan angka kematian dan upaya pengendalian penyakit lainnya, serta melakukan upaya peningkatan produktivitas ternak dengan penyediaan pakan yang cukup.\r\n \r\nSedangkan replacement indukan selain melalui induk yang berasal dari lokal, juga melalui pemasukan sapi perah yang memiliki kualitas genetik bibit yang tinggi serta telah memenuhi aspek kesehatan hewan dari negara yang telah diharmonisasikan dengan pemerintah Indonesia.\r\n \r\nKemudian dilakukan rearing untuk menyediakan pengganti indukan sapi perah dengan menggunakan pedet yang dihasilkan dalam peternakan sendiri dengan menjaga keseimbangan komposisi sapi perah yang dipelihara minimal 20% dari total populasi.\r\n \r\n\"Kegiatan rearing ini bisa dilakukan di unit-unit milik pemerintah, antara lain BBPTU Baturaden dan UPT milik pemerintah daerah provinsi/kabupaten,\" tuturnya.\r\n \r\nSelain itu, akan diusahakan menerapkan kemitraan dan insentif investasi. Harapannya ada kemitraan antara peternak dengan perusahaan sapi perah dan koperasi susu, serta industri pengolahan susu, dan ada pengurangan pajak penghasilan (tax allowance) untuk pelaku usaha yang melakukan usaha budidaya atau pembibitan sapi perah.\r\n \r\nUntuk memperbaiki kualitas susu, akan dilakukan pelatihan terhadap GAP (Good Agriculture Practices, GMP (Good Manufacturing Practices) dan GHP (Good Handling Practices). Selain itu, juga akan dilakukan perbaikan peralatan serta infrastruktur dan memfasilitasi sarana prasarana pengolahan susu untuk UMKM.\r\n \r\nUntuk fasilitasi izin edar (PiRT/MD), juga akan bekerjasama dengan BPOM. Untuk sertifikasi susu organik (pilot project) akan kerja sama dengan Denmark di Kabupaten Pasuruan. Aspek produktivitas pun akan ditingkatkan. Melalui perbaikan genetik dengan pemanfaatan pejantan unggul sapi perah Indonesia hasil uji zuriat/Progeny Test. Menerapkan Good Farming Practicess di kelompok dan mengembangkan jenis Sapi Baru.\r\n \r\n\"Yang tidak kalah penting adalah meningkatkan kompetensi SDM (sumber daya manusia) di kelompok. Serta, perbaikan kualitas dan kuantitas pakan,\" ucapmya.\r\n \r\nSementara itu, di hilir akan dilakukan diversifikasi dan inovasi produk dengan cara mendorong pengembangan produk melalui peran industri pengolahan dalam meningkatkan cita rasa, citra produk, gizi dan kepraktisan konsumsi pangan.\r\n \r\nKesadaran masyarakat untuk tidak memproduksi, menyediakan atau memperdagangkan dan mengkonsumsi pangan yang tidak aman juga akan ikut ditingkatkan. Serta memfasilitasi pengembangan Unit Pengolahan Hasil (UPH) peternakan berbasis sumber daya lokal dan memfasilitasi Sertifikasi Organik Pangan Asal Ternak.\r\n \r\nPeningkatan mutu dan keamanan produk juga akan dilakukan dengan pemenuhan standar keamanan dan mutu/kualitas pangan asal ternak yang dihasilkan. Juga akan dilakukan kerja sama dengan BPOM untuk memfasilitasi dan pendampingan izin edar produk olahan pangan hasil peternakan sehingga dapat dipasarkan lebih luas.\r\n \r\nPromosi produk dan perluasan pasar juga akan dilakukan. Meliputi, perluasan akses atau jaringan pemasaran melalui media online (e-commerce dan marketplace). Sedangkan promosi produk olahan peternakan bisa melalui pameran dalam dan luar negeri.\r\n \r\nDirektur Pengolahan dan Pemasaran Hasil Peternakan, Fini Murfiani menambahkan, ada juga upaya hulu-hilir yang akan dilakukan dalam pengembangan usaha. Pemerintah akan mengoptimalkan pemanfaatan pembiayaan, baik yg berasal dari Kredit Usaha Rakyat (KUR) yang tersedia di perbankan, maupun dari Program Kemitraan Bina Lingkungan (PKBL) yang difasilitasi oleh beberapa BUMN.\r\n \r\n\"Ini sebagai komitmen pemerintah dalam membantu peternak dan mengembangkan industrialisasi peternakan melalui penyaluran program kredit bersubsidi yaitu KUR dan PKBL. Selain tentunya penyediaan Asuransi Ternak Sapi/Kerbau (ATS/K) sebagai upaya penanganan resiko dalam melakukan usaha para peternak \" ujar Fini.\r\n \r\nFini menerangkan, ada beberapa daerah yang diprioritaskan secara nasional menjalankan seluruh program ini. Pemilihan daerah ini berdasarkan Keputusan Menteri Pertanian No. 472/Kpts/RC.040/6/2018 Tentang Lokasi Kawasan Pertanian Nasional.\r\n \r\nDaerah tersebut yaitu, Sumatera Utara (Karo), Sumatera Barat (Tanah Datar, Kota Padang Panjang, Kota Bukit Tinggi), Jawa Barat (Bogor, Bandung, Bandung Barat), Jawa Tengah (Boyolali, Semarang, Kota Semarang) DIY (Sleman), Jawa Timur (Tulungagung, Blitar, Malang, Kota Batu, Pasuruan), Sulawesi Selatan (Enrekang).', NULL, NULL, '2021-04-01', '00:00:00', 'mediaperkebunan.jpeg', 1, '', 'Y', 'Y', 0, NULL),
(4, 1, 'Kompartementalisasi Jamin Keamanan Produk Ternak', 'kompartementalisasi-jamin-keamanan-produk-ternak', 'Y', 'Sebanyak 116 unit usaha peternakan unggas yang telah mengantongi sertifikat kompartemen bebas AI. Pmerintah mengklaim angka itu mengalami kenaikan setiap tahunnya.\r\n\r\n \r\n\r\n“Sejak 2008, sejumlah 377 sertifikat telah dikeluarkan. Unit usaha peternakan yang telah menerima sertifikat kompartemen bebas AI kemudian terus dipantau,” kata Direktur Jenderal Peternakan dan Kesehatan Hewan), Nasrullah beberapa waktu lalu. Jika kemudian ditemukan kasus AI atau terdapat ketidaksesuaian dengan standar, maka pemerintah tak segan mencabut sertifikat tersebut.\r\n\r\n \r\n\r\nNasrullah yakin bahwa produk peternakan Indonesia akan tembus ke pasatr dunia, apabila memenuhi standar mutu dan kesehatan hewan yang baik sepanjang hulu hingga hilir. Maka dari itu, penerapan persyaratan yang ketat untuk status kompartemen bebas penyakit AI merupakan jaminan agar sistem sertifikasi tanah air senantiasa dipercaya oleh negara tujuan ekspor.\r\n\r\n \r\n\r\nTak Hanya AI\r\n\r\nMeskipun kasus AI telah jauh menurun di Indonesia, namun adanya kompartementalisasi bebas AI ini menjadi alternatif tepat nan penting. Karena, pencapaian bebas wilayah dan negara untuk penyakit AI di dalam negeri masih menghadapi banyak tantangan.\r\n\r\n \r\n\r\n“Indonesia telah menjalankan berbagai persyaratan teknis implementasi kompartemen bebas AI sesuai standar OIE (world organization for animal health) atau organisasi kesehatan hewan dunia,” tambah Direktur Kesehatan Hewan, Fadjar Sumping Tjaturrasa.\r\n\r\n \r\n\r\nNamun, mekanisme pengakuan resmi status bebas penyakit AI oleh OIE ini belum tersedia. Sehingga, pencapaian kompartemen bebas AI Indonesia ini disampaikan untuk dimuat di bulletin OIE. Dirinya mengklaim, pelaporan implementasi dan pencapaian program kompartemen telah dikirim ke OIE. Harapannya, organisasi tersebut akan memberikan respon positif.\r\n\r\n \r\n\r\nFadjar kemudian mengimbau para pelaku usaha agar segera mengajukan permintaan sertifikasi kompartemen bebas AI untuk unggas. Baik di tingkat breeding, hatchery maupun komersil. “Setelah pengajuan, akan dilakukan peninjauan dan inspeksi oleh tim ke peternakan/farm. Hasil inspeksi ini akan dikaji kembali bersama dengan komisi ahli. Terakhir, sampai kepada penerbitan sertifikat,” lanjut dia.\r\n\r\n \r\n\r\nPenjaminan kesehatan hewan melalui kompartemen ini rupanya berhasil. Indonesia kembali melakukan ekspor produk unggas ke Timor Leste. Padahal, kegiatan tersebut sempat mandek pada 2019. Selain untuk penyakit AI, Ditjen PKH juga telah menggunakan pendekatan yang sama untuk kompartemen bebas penyakit lain, seperti Brucellosis pada sapi dan kambing, serta ASF (African Swine Fever) yang biasa menyerang babi. ist/ed/ajeng', NULL, NULL, '2021-04-01', '00:00:00', 'ternak.jpeg', 1, '', 'Y', 'Y', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bod`
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bod`
--

INSERT INTO `tbl_bod` (`id_bod`, `nama`, `jabatan`, `quotes`, `foto`, `link`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'TUMIYANA', 'President Commissioner Widodo Makmur Holding', 'Kehidupan itu seperti kurva parabola. Agar hidup menjadi dinamis sebelum puncak kurva terlampaui, siapkan kurva kedua untuk pencapaian yang lebih tinggi', '1.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(2, 'Raden Marlan', 'CEO Widodo Makmur Holding', 'Manusia harus selalu bergerak dinamis. Harus memacu diri sendiri untuk menjadi pribadi yang lebih baik setiap harinya. Mereka yang bersifat stagnan dan apatis niscaya akan termasuk golongan orang-orang yang merugi', '2.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(3, 'Teddy M. Subekti', 'Vice CEO Widodo Makmur Holding', 'Terus belajar, lakukan inisiatif dan buat prestasi. Tidak cukup hanya menyelesaikan pekerjaan-pekerjaan', '3.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(4, 'HB. Soeparno', 'Construction & Energy Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '4.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(5, 'Suyatmi ', 'Marketing Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '5.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(6, 'Tri Agus Bayuseno', 'Technical Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '6.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(7, 'Nur Tjahjo', 'HCD Director Widodo Makmur Holding', 'Kekuatan anak muda bukan di power, tapi jiwa inovatif dan berpikir out of the box', '7.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(8, 'Giyono', 'Business Development Director Widodo Makmur Holding', 'Tidak ada sukses yang instant. Semua berproses, maka jadilah jadilah pribadi yang selalu berkembang, sehingga selalu temotivasi untuk menggali faktor \'X\' dan mampu mengaktualisasi diri. Tidak ada jalan pintas, semua memerlukan proses, komitmen dan disiplin', '8.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(9, 'Heri Prasojo', 'CEO PT Pasir Tengah', 'Tetap Semangat, Jangan Menyerah!', '9.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(10, 'Saiful Bari', 'CEO PT Cianjur Arta Makmur', 'Tetap Semangat, Jangan Menyerah!', '10.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(11, 'Nur Iswan', 'CEO PT Widodofood Makmur Sejahtera', 'Tetap Semangat, Jangan Menyerah!', '11.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(12, 'Ali Mas\'adi', 'CEO PT Widodo Makmur Unggas', 'Tetap Semangat, Jangan Menyerah!', '12.jpg', '#', 1, 'admin', '2021-03-27 14:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ekonomi_outlook`
--

CREATE TABLE `tbl_ekonomi_outlook` (
  `id_eo` int(11) NOT NULL,
  `judul_eo` varchar(100) NOT NULL,
  `deskripsi_eo` text NOT NULL,
  `foto_eo` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ekonomi_outlook`
--

INSERT INTO `tbl_ekonomi_outlook` (`id_eo`, `judul_eo`, `deskripsi_eo`, `foto_eo`, `date_time`) VALUES
(1, 'Publikasi Tanaman Pangan Jagung', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '1.jpg', '2021-03-27 00:00:00'),
(2, 'Ringkasan Eksekutif Komoditas Beras di Indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '2.jpg', '2021-03-27 00:00:00'),
(3, 'Data Produksi Kulit Ternak Besar di Indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '3.jpg', '2021-03-27 00:00:00'),
(4, 'Outlook Komoditas Telur Ayam Ras di Indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '4.jpg', '2021-03-27 00:00:00'),
(5, 'Statistik Perdagangan Komoditas Daging Sapi dan Daging Kerbau', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '5.jpg', '2021-03-27 00:00:00'),
(6, 'Keragaan Komoditas Ayam', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '6.jpg', '2021-03-27 00:00:00'),
(7, 'Statistik Peternakan Sapi di Indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '7.jpg', '2021-03-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '927482658274982', 'M Fikri Setiadi', 'L', 'Padang', '25 September 1993', 'Teknik Komputer', 'f6bbe1e04e78e0d715e9830a605794aa.jpg', '2017-01-26 07:49:43'),
(2, '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', NULL, '2017-01-26 13:38:54'),
(3, '-', 'Joko Subroto', 'L', 'Jakarta', '25 September 1989', 'PPKN, Matematika', NULL, '2017-01-26 13:41:20'),
(4, '-', 'Kusta Otomo', 'L', 'Jakarta', '25 September 1989', 'Seni Budaya', NULL, '2017-01-26 13:42:08'),
(5, '-', 'Yuliani Ningsih', 'P', 'Padang', '27 September 1993', 'Bahasa Indonesia', NULL, '2017-01-26 13:42:48'),
(6, '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', NULL, '2017-01-26 13:43:46'),
(7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 13:45:11'),
(8, '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', NULL, '2017-01-27 04:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(11) NOT NULL,
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

INSERT INTO `tbl_member` (`id_member`, `nama`, `alamat`, `no_hp`, `email`, `pend_terakhir`, `pekerjaan`, `usaha_diminati`, `foto_ktp`, `foto_npwp`, `foto_pas`, `foto_sku`, `partnership_agreement`, `status_keanggotaan`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'Aditya Bayu Wardhana', 'Jl. Kelapa Tunggal', '08999592439', 'aditya.bayu@gmail.com', 'D3 - Manajemen Informatika', 'Web Developer', 'IT Technologi', 'bayoeway.jpg', 'bayoeway.jpg', 'bayoeway.jpg', 'bayoeway.jpg', 'Saya Setuju', 'Member', 1, 'admin', '2021-03-27 14:03:47'),
(2, 'aaa', 'bbb', '0123456', 'b@gmail.com', 'ccc', 'ddd', 'eee', 'man-wearing-blue-shirt-illustration-png-clip-art-thumbnail4.png', '', '', '', '', 'Member', 1, NULL, '2021-03-28 12:26:26'),
(3, '111', '222', '0123456', 'b@gmail.com', '333', '444', '555', '16757-200.png', '16757-200.png', '16757-200.png', '16757-200.png', '16757-200.png', 'Member', 1, NULL, '2021-03-28 12:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelatihan`
--

CREATE TABLE `tbl_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `judul_pelatihan` varchar(100) NOT NULL,
  `judul_pelatihan_seo` varchar(50) NOT NULL,
  `deskripsi_singkat` varchar(11) NOT NULL,
  `deskirpsi_full` text NOT NULL,
  `foto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelatihan`
--

INSERT INTO `tbl_pelatihan` (`id_pelatihan`, `judul_pelatihan`, `judul_pelatihan_seo`, `deskripsi_singkat`, `deskirpsi_full`, `foto`) VALUES
(1, 'UMKM PRODUK PERTANIAN', 'umkm-produk-pertanian', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'beras.jpg'),
(2, 'UMKM PRODUK OLAHAN DAGING', 'umkm-produk-olahan-daging', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'produk_olahan.jpg'),
(3, 'BUDIDAYA PADI & JAGUNG', 'budidaya-padi jagung', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'jagung.png'),
(4, 'PENGGEMUKAN SAPI', 'penggemukan-sapi', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'sapi.jpg'),
(5, 'BUDIDAYA AYAM BROILER', 'budidaya-ayam-broiler', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_broiler.jpg'),
(6, 'BUDIDAYA AYAM LAYER', 'budidaya-ayam-layer', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_layer.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelatihan_detail`
--

CREATE TABLE `tbl_pelatihan_detail` (
  `id_pelatihan_detail` int(11) NOT NULL,
  `id_pelatihan` int(11) NOT NULL,
  `judul_pelatihan_detail` varchar(50) NOT NULL,
  `judul_pelatihan_detail_seo` varchar(50) NOT NULL,
  `deskripsi_pelatihan_singkat` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `url_download` varchar(50) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelatihan_detail`
--

INSERT INTO `tbl_pelatihan_detail` (`id_pelatihan_detail`, `id_pelatihan`, `judul_pelatihan_detail`, `judul_pelatihan_detail_seo`, `deskripsi_pelatihan_singkat`, `gambar`, `url_download`, `date_time`) VALUES
(1, 6, 'Standar Teknis Pemeliharaan Ayam Layer\r\n', 'standar-teknis-pemeliharaan-ayam-layer', '', 'standar_teknis_pemeliharaan_ayam_layer.png', '', '2021-04-06'),
(2, 6, 'Regulasi Terkait Bisnis Ayam Layer\r\n', 'regulasi-terkait-bisnis-ayam-layer', '', 'regulasi_terkait_bisnis_ayam_layer.png', '', '2021-04-06'),
(3, 6, 'Bisnis Proses Ayam Layer', 'bisnis-proses-ayam-layer', '', 'bisnis_proses_ayam_layer.png', '', '2021-04-06'),
(4, 6, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang.png', '', '2021-04-06'),
(5, 6, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan.png', '', '2021-04-06'),
(6, 6, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(7, 6, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06'),
(8, 5, 'Standar Teknis Pemeliharaan Ayam Broiler', 'standar-teknis-pemeliharaan-ayam-broiler', '', 'standar_teknis_pemeliharaan_ayam_broiler.png', '', '2021-04-06'),
(9, 5, 'Regulasi Terkait Bisnis Ayam Broiler', 'regulasi-terkait-bisnis-ayam-broiler', '', 'regulasi_terkait_bisnis_ayam_broiler.png', '', '2021-04-06'),
(10, 5, 'Bisnis Proses Ayam Broiler', 'bisnis-proses-ayam-broiler', '', 'bisnis_proses_ayam_broiler.png', '', '2021-04-06'),
(11, 5, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang.png', '', '2021-04-06'),
(12, 5, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan.png', '', '2021-04-06'),
(13, 5, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(14, 5, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06'),
(15, 4, 'Standar Teknis Pemeliharaan Sapi', 'standar-teknis-pemeliharaan-sapi', '', 'standar_teknis_pemeliharaan_sapi.png', '', '2021-04-06'),
(16, 4, 'Regulasi Terkait Bisnis Penggemukan Sapi', 'regulasi-terkait-bisnis-penggemukan-sapi', '', 'regulasi_terkait_bisnis_penggemukan_sapi.png', '', '2021-04-06'),
(17, 4, 'Bisnis Proses Penggemukan Sapi', 'bisnis-proses-penggemukan-sapi', '', 'bisnis_proses_penggemukan_sapi.png', '', '2021-04-06'),
(18, 4, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang_sapi.png', '', '2021-04-06'),
(19, 4, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan_sapi.png', '', '2021-04-06'),
(20, 4, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(21, 4, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06'),
(22, 4, 'Analisa Finansial dan Mitigasi Resiko', 'analisa-finansial-dan-mitigasi-resiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06'),
(23, 3, 'Standar Produksi dan Produktifitas', 'standar-produksi-dan-produktifitas', '', 'standar_produksi_dan_produktifitas.png', '', '2021-04-06'),
(24, 3, 'Regulasi Pertanian', 'regulasi-pertanian', '', 'regulasi_pertanian.png', '', '2021-04-06'),
(25, 3, 'Bisnis Proses Budidaya', 'bisnis-proses-budidaya', '', 'bisnis_proses_budidaya.png', '', '2021-04-06'),
(26, 3, 'Manajemen Pengelolaan Lahan dan Pemupukan', 'manajemen-pengelolaan-lahan-dan-pemupukan', '', 'manajemen_pengelolaan_lahan_dan_pemupukan.png', '', '2021-04-06'),
(27, 3, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_bisnis.png', '', '2021-04-06'),
(28, 3, 'Manajemen Panen', 'manajemen-panen', '', 'manajemen_panen.png', '', '2021-04-06'),
(29, 3, 'Pengelolaan air', 'pengelolaan-air', '', 'pengelolaan_air.png', '', '2021-04-06'),
(30, 3, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(31, 3, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06'),
(32, 3, 'Analisa Finansial dan Mitigasi Risiko', 'analisa-finansial-dan-mitigasi-risiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06'),
(33, 3, 'Manajemen Pasca Panen', 'manajemen-pasca-panen', '', 'manajemen_panen.png', '', '2021-04-06'),
(34, 2, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06'),
(35, 2, 'Standar Teknis Usaha', 'standar-teknis-usaha', '', 'standar_teknis_usaha.png', '', '2021-04-06'),
(36, 2, 'Laba Usaha dan Laba Operasional', 'laba-usaha-dan-laba-operasional', '', 'laba_usaha_dan_laba_oprasional.png', '', '2021-04-06'),
(37, 2, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(38, 2, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06'),
(39, 2, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06'),
(40, 1, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06'),
(41, 1, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06'),
(42, 1, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06'),
(43, 1, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'admin', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', 'db5dec647062751f2fb236b9bc3f1c54.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 01:17:30', 'M Fikri Setiadi'),
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 01:16:20', 'M Fikri Setiadi'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 07:16:16', 'M Fikri Setiadi'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 07:15:28', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-03-25 04:10:02', '127.0.0.1', 'Firefox'),
(932, '2021-03-26 03:45:05', '127.0.0.1', 'Firefox'),
(933, '2021-03-27 03:44:10', '127.0.0.1', 'Firefox'),
(934, '2021-03-27 12:04:33', '::1', 'Opera'),
(935, '2021-03-28 12:01:00', '127.0.0.1', 'Firefox'),
(936, '2021-03-28 12:11:12', '::1', 'Opera'),
(937, '2021-03-28 18:00:05', '127.0.0.1', 'Firefox'),
(938, '2021-03-30 02:34:35', '127.0.0.1', 'Firefox'),
(939, '2021-03-31 02:57:02', '127.0.0.1', 'Firefox'),
(940, '2021-03-31 07:10:49', '::1', 'Opera'),
(941, '2021-04-01 03:04:41', '127.0.0.1', 'Firefox'),
(942, '2021-04-03 07:26:44', '127.0.0.1', 'Firefox'),
(943, '2021-04-05 04:53:16', '127.0.0.1', 'Firefox'),
(944, '2021-04-05 06:55:25', '::1', 'Opera'),
(945, '2021-04-06 02:43:50', '127.0.0.1', 'Firefox'),
(946, '2021-04-06 06:08:26', '::1', 'Opera');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `jdl_1` text NOT NULL,
  `jdl_2` text NOT NULL,
  `slider_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `foto` varchar(200) NOT NULL,
  `link` varchar(50) NOT NULL,
  `id_slider_s` mediumint(20) NOT NULL,
  `slider_pengguna_id` int(11) DEFAULT NULL,
  `slider_author` varchar(60) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `jdl_1`, `jdl_2`, `slider_tanggal`, `foto`, `link`, `id_slider_s`, `slider_pengguna_id`, `slider_author`, `status`) VALUES
(10, 'JOGLO TUMIYONO \r\n', 'Joglo Terbesar di asia tenggara yang menjadi pusat pelatihan dan pendampingan para anak muda yang terdidik dan terampil yang siap menjadi entrepreneur muda.\r\n', '2021-03-27 07:16:30', 'f9fafeed19a1574b495335d4c8429295.jpg', '#', 1, 1, 'M Fikri Setiadi', 0),
(12, 'EMPOWERING PEOPLE \r\n', 'Menjadi Motor Penggerak Perekonomian Nasional Dengan Mencetak Entrepreneur Muda Dan Santri Penggerak Ekonomi Umat.\r\n', '2021-03-27 07:16:30', 'wmp2.png', '#', 1, NULL, NULL, 0),
(13, 'KESATRIAAN ENTREPRENEUR INDONESIA\r\n', 'Mencetak 1.000.000 entrepreneur muda yang akan menopang perekenomian nasional menuju ekonomi yang berdikari. \r\n', '2021-03-27 07:16:30', 'joglo1.jpg', '#', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_s`
--

CREATE TABLE `tbl_slider_s` (
  `id_slider_s` int(2) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider_s`
--

INSERT INTO `tbl_slider_s` (`id_slider_s`, `nama_status`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Persiapan siswa menjelang ujian nasional', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:24:42', 1, 'Pendidikan', 27, '0a927c6d34dc5560b72f053313f14638.jpg', 1, 'M Fikri Setiadi', 0, 'persiapan-siswa-menjelang-ujian-nasional'),
(22, 'Prestasi membangga dari siswa MSchool', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:38:21', 6, 'Prestasi', 1, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 1, 'M Fikri Setiadi', 0, 'prestasi-membangga-dari-siswa-mschool'),
(23, 'Pelaksanaan Ujian Nasional MSchool', '<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:41:30', 1, 'Pendidikan', 3, '12bfb1953df800c59835a2796f8c6619.jpg', 1, 'M Fikri Setiadi', 0, 'pelaksanaan-ujian-nasional-mschool'),
(24, 'Proses belajar mengajar MSchool', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:46:29', 1, 'Pendidikan', 162, 'ea114dc1ec5275560a5ef3238fd04722.jpg', 1, 'M Fikri Setiadi', 0, 'proses-belajar-mengajar-mschool'),
(25, 'iPhone 8 Baru Mengungkapkan Fitur Mengecewakan', '<p>Apple CEO Tim Cook delivers the opening keynote address the 2017 Apple.</p>\r\n\r\n<p><br />\r\nSudah lama sekali sejak Apple mampu menyimpan kejutan nyata dari beledu digital dan mengungkapkan &#39;satu hal&#39; yang sebenarnya selama sebuah keynote. Fase desain dan prototyping yang panjang, ditambah dengan rantai pasokan yang diperluas, telah menghasilkan garis manufaktur yang bocor.<br />\r\n<br />\r\nTariklah permintaan yang tak terpuaskan dari si geekerati dan Anda tidak akan pernah bisa menyimpan rahasianya ... bahkan jika penonton akan berpura-pura bahwa segala sesuatu yang dikatakan Tim Cook adalah sebuah wahyu.<br />\r\n<br />\r\nSemuanya di tampilkan untuk portofolio iPhone baru, meskipun jika kita jujur ??tidak ada hal baru yang bisa dilihat. Ini hanya Tim Cook dan timnya yang membuat model tahun lalu &#39;sedikit lebih baik&#39; dan mengajukan konsumen proposisi yang sama seperti setiap produsen smartphone lainnya.<br />\r\n<br />\r\nMungkin aku berharap terlalu banyak dari Apple. Pengulangan Timey dari mimpi Silicon Valley tidak dibangun dengan risiko, mendorong amplop, atau bereksperimen dengan bentuk atau fungsinya. Bagaimana Tim Cook bisa mendorong inovasi ketika begitu banyak kekaisarannya dibangun di seputar kebutuhan akan penjualan siklis iPhone yang terjamin? Jika penjualan smartphone turun, maka yayasan Cupertino akan berada dalam bahaya.<br />\r\n<br />\r\nJawaban Apple untuk ini adalah iPhone 8. Sementara iPhone 7S dan iPhone 7S Plus menjaga harapan, iPhone 8 bisa bereksperimen dengan bentuk, harga, dan kekuatan. Ini adalah handset yang akan mendorong batas teknologi Apple dengan layar OLED yang cerah dan jelas di bawah kaca melengkung yang membentuk bagian luarnya. Inilah smartphone yang membawa kekuatan magis wireless charging ke ekosistem iOS dan akan menawarkan pengenalan wajah untuk keamanan.<br />\r\n<br />\r\nYang semua terdengar hebat tapi itu satu set poin peluru yang bisa diterapkan ke banyak handset Android terkemuka yang ada di pasaran saat ini. Bahkan dengan andalannya yang maju untuk tahun 2017, Apple melakukan sedikit lebih banyak daripada mengenalkan teknologi yang ada ke portofolio iOS.<br />\r\n<br />\r\nItu tidak terlihat seperti ini beberapa bulan yang lalu. Fitur yang diduga dikeluarkan oleh Apple dari iPhone 8 memamerkan beberapa pemikiran terbaru tentang perangkat mobile, termasuk pengisian daya nirkabel jarak jauh dan sensor biometrik tertanam di bawah layar kaca. Ini perlahan-lahan telah terbantahkan oleh industri rumahan dan desas-desus, sampai-sampai kita cukup tahu apa yang terjadi dari iPhone 8.<br />\r\n<br />\r\nTentu saja iPhone 8 (dan lebih dari kemungkinan iPhone 7S dan 7S Plus) akan mendapat keuntungan dari perubahan pada konstruksi interior. Akan ada pencantuman iOS 11 dan integrasi perangkat lunak yang ketat ke perangkat keras. Akan ada anggukan Apple untuk kesederhanaan di UI dan aplikasi pihak ketiga akan segera menghadirkan fitur lanjutan kepada pengguna rata-rata.<br />\r\n<br />\r\nIni bukan perubahan sepele, tapi yang menyoroti ini adalah menjelaskan bagaimana sosis dibuat. Mereka adalah rakit tweak untuk paket yang sama. Anda bisa menambahkan kancing diamante ke gaun Anda, mengganti lapisannya, dan mengeluarkan pinggulnya karena tahun-tahun yang lewat, tapi pakaiannya tetap sama seperti yang orang lihat berkali-kali. Itu cukup bagi bisnis Apple untuk terus melakukannya dengan baik dan membuat pemegang saham tetap bahagia, namun Anda tidak dapat terus kembali ke bidang yang sama dan berharap untuk tetap berada di puncak permainan smartphone. Sesuatu harus diberikan.<br />\r\n<br />\r\nPortofolio Apple 2017 membajak bidang yang sama persis dengan tahun-tahun sebelumnya. Tulang punggung penjualan akan terdiri dari iPhone 7S dan iPhone 7S Plus yang berulang-ulang saat Tim Cook kembali menanam benih di alur yang sama persis seperti model sebelumnya. IPhone 8 dapat diluncurkan tepat waktu, namun stok akan sulit didapat dan Apple akan, sekali lagi, tidak merilis angka penjualan. Ini akan menjadi hal baru yang menarik dan berkilau, tapi mari kita panggil apa adanya.</p>\r\n\r\n<p>Tim Cook akan menyilangkan jari-jarinya sehingga cukup banyak orang yang senang bisa &#39;membeli iPhone lain&#39; dan terus menggelontorkannya tanpa melihat persaingan. IPhone 8 adalah Apple yang bermain mengejar kemajuan teknologi kompetisi, dengan harapan tidak ada yang memperhatikan bahwa iPhone Baru Kaisar tidak semudah yang terlihat.</p>\r\n', '2018-08-08 13:26:08', 5, 'Penelitian', 3, 'a0b99616241c9aded7f2a02661798d98.jpg', 1, 'M Fikri Setiadi', 0, 'iphone-8-baru-mengungkapkan-fitur-mengecewakan');

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `country`, `created_at`, `status`, `role`) VALUES
(1, 'Super', 'Admin', 'admin@admin.com', '0100 500 600', '21232f297a57a5a743894a0e4a801fc3', 14, '2018-03-02 14:51:38', 1, 'admin'),
(11, 'John ', 'Doe', 'user@mail.com', '', 'ee11cbb19052e40b07aac0ca060c23ee', 44, '2018-03-04 23:31:53', 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_power`
--

CREATE TABLE `user_power` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `power_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_power`
--

INSERT INTO `user_power` (`id`, `name`, `power_id`) VALUES
(1, 'add', 1),
(2, 'edit', 2),
(3, 'delete', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `action`) VALUES
(1, 11, 1),
(2, 11, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbl_bod`
--
ALTER TABLE `tbl_bod`
  ADD PRIMARY KEY (`id_bod`);

--
-- Indexes for table `tbl_ekonomi_outlook`
--
ALTER TABLE `tbl_ekonomi_outlook`
  ADD PRIMARY KEY (`id_eo`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- Indexes for table `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  ADD PRIMARY KEY (`id_pelatihan_detail`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tbl_slider_s`
--
ALTER TABLE `tbl_slider_s`
  ADD PRIMARY KEY (`id_slider_s`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indexes for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  ADD PRIMARY KEY (`id_tutor`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_power`
--
ALTER TABLE `user_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bod`
--
ALTER TABLE `tbl_bod`
  MODIFY `id_bod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_ekonomi_outlook`
--
ALTER TABLE `tbl_ekonomi_outlook`
  MODIFY `id_eo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  MODIFY `id_pelatihan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_slider_s`
--
ALTER TABLE `tbl_slider_s`
  MODIFY `id_slider_s` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_power`
--
ALTER TABLE `user_power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

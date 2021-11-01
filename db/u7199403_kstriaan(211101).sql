-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2021 at 01:50 PM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u7199403_kstriaan`
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
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'N', 'user', 'N', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'N', 'user', 'N', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'N', 'user', 'N', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, ''),
(76, 'Slider', 'admin', 'manajemenuser', '', '', 'N', 'user', 'N', 0, ''),
(77, 'Pengantar', 'admin', 'listpengantar', '', '', 'Y', 'user', 'Y', 0, ''),
(78, 'Pelatihan', 'admin', 'listpelatihan', '', '', 'Y', 'user', 'Y', 0, ''),
(79, 'Ekonomi Outlook', 'admin', 'eo_list', '', '', 'Y', 'user', 'Y', 0, ''),
(80, 'Member', 'admin', 'listmember', '', '', 'Y', 'user', 'Y', 0, '');

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
(1, 1, 'Dukung 10.000 UMKM, Widodo Makmur Kerja Sama dengan Mitra Daerah', 'dukung-10000-umkm-widodo-makmur-kerja-sama-dengan-mitra-daerah', 'Y', 'PT Widodo Makmur Unggas (WMU) dan Mitra UMKM Daerah menandatangani perjanjian kerjasama (MoU) guna mendukung penguatan 10.000 UMKM di Indonesia. Kerjasama ini merupakan bagian dari komitmen WMU untuk maju dan tumbuh bersama dalam menyediakan produk pangan hewani berkualitas bagi seluruh masyarakat Indonesia. WMU menjamin dalam pengadaan bahan baku yang halal dan terjamin kualitasnya. Tidak hanya itu, WMU akan memberikan benefit bagi UMKM seperti adanya potongan harga dan kemudahan dalam skema pembayaran. Seremonial penandatanganan kerjasama ini dilakukan secara virtual bersama 3 mitra pengelola UMKM, yaitu Holistika Institute, The Local Enablers dan Lokalkarya. Mitra UMKM ini mayoritas bergerak di industri makanan olahan. Dengan memastikan kualitas bahan baku serta pendampingan dalam peningkatan kualitas produk yang diberikan oleh WMU bisa menjadi salah satu solusi bangkitnya UMKM di tengah era adaptasi normal baru. Melalui unit usaha Commercial Broiler Farm dan Rumah Potong Ayam (RPA) yang dikelola dengan menerapkan sistem pemotongan modern, sertifikasi halal dan NKV (Nomor Kontrol Veteriner), proses penyediaan bahan baku daging ayam dapat terjamin kualitasnya. Ditambah WMU juga memastikan bahwa pasokan bahan baku daging ayam tersebut dapat mencapai ke pelosok Indonesia dan dengan harga terjangkau. Tri Mahawijaya Herlambang selaku Direktur Pemasaran WMU menyampaikan hal serupa mengenai bentuk kerjasama yang terjalin. “Pada kesempatan ini, melalui berbagai kerjasama yang dijalin dengan berbagai pihak ketiga dan mitra UMKM, WMU akan menyediakan bahan baku berkualitas yang terjangkau guna mendukung UMKM untuk naik kelas. 10.000 UMKM ini juga akan terus berkembang jumlahnya, karena sekarang ini kita memasuki eranya kolaborasi sehingga kita harus tumbuh bersama untuk mencapai tujuan Indonesia Maju,\"ujarnya dalam keterangan tertulis. Tingginya pelaku UMKM di Indonesia, membuat WMU juga berencana untuk memberikan literasi dan edukasi terkait peningkatan kualitas produk. Target yang dimiliki oleh WMU yaitu untuk konsisten berkontribusi terhadap negeri khususnya untuk keberlangsungan dari UMKM. \"UMKM kini menjadi salah satu kunci pertumbuhan dan garda pertahanan dalam menjaga ekonomi nasional. Namun, Kami para pelaku UMKM juga membutuhkan booster dan pendampingan yang tepat untuk dapat naik kelas. Holistika Institute berharap dengan adanya kerjasama dengan PT Widodo Makmur Unggas dapat menjadi booster untuk mitra UMKM. Kami percaya PT WMU, sebagai perusahan yang dimiliki oleh anak bangsa, dapat merawat kunci pertumbuhan dan garda pertahanan ekonomi nasional, yaitu UMKM,\" ujar Cecep selaku Ketua Holistika Institute. \"Kami berharap melalui kerja sama dengan PT Widodo Makmur Unggas dapat membantu memecahkan berbagai masalah yang dihadapi dan menjadi jembatan akselerasi bagi kemajuan UMKM.\" tambah Bambang Bayu selaku Ketua The Local Enablers. Harapan lain juga disampaikan oleh Erik Dwiharta, Ketua Lokalkarya, \"Kami berharap melalui kerjasama dan dukungan dari WMU, UMKM Indonesia khususnya yang ada di ujung timur Pulau Jawa ini menjadi lebih semangat memajukan usaha dan produksi yang berkualitas.\" PT Widodo Makmur Unggas (WMU) merupakan anak perusahaan PT Widodo Makmur Perkasa (WMP), bergerak di bidang peternakan ayam terintegrasi vertikal yang berbasis di Jakarta. WMU memiliki unit-unit bisnis meliputi breeding farm, hatchery, commercial broiler farm, commercial layer farm, slaughterhouse, dan feedmill di beberapa lokasi fasilitas yang tersebar di Pulau Jawa.<br/>Sumber: mediaindonesia.com', NULL, 'kamis', '2021-04-01', '00:00:00', 'wmu.jpg', 1, '', 'Y', 'Y', 0, NULL),
(2, 1, 'Berdayakan Anak Muda untuk UMKM dan Pertanian', 'berdayakan-anak-muda-untuk-umkm-dan-pertanian', 'Y', 'PT Widodo Makmur Perkasa tengah serius melibatkan anak muda dalam dunia UMKM dan pertanian. Perusahaan yang memproduksi bahan pangan dan penyediaan papan tersebut memberikan pendidikan kepada anak muda agar mampu berdiri sendiri di dunia usaha. \"Membentuk klaster anak muda tersebut harus membuat kepengurusan snediri sehingga mampu berdiri sendiri,\" kata Chairman and CEO PT Widodo Makmur Perkasa, Tumiyana, dalam webinar Indonesia Bicara: Membangkitkan Potensi UMKM yang diadakan Media Indonesia, Rabu (1/4). Dengan klaster tersebut, lembaga keuangan akan tidak takut untuk gagal karena dari PT Widodo Makmur Perkasa juga terus memberikan bimbingan. \"Klaster tersebut diorganisasi dalam koperasi yang kemudian menjadi badan usaha. PT Widodo Makmur Perkasa membuat pabrik tepung telur dan likuid telur. Ketika production over, bisa perpanjang distribusinya,\" jelasnya. Saat ini pelaku UMKM yang berkolaborasi dengan PT Widodo Makmur Perkasa mencapai 4.025 yang terklaster tanaman, jagung yang dioptik menjadi pakan ternak, peternak broiler, UMKM khusus sapi, dan lainnya. \"Khusus untuk kebutuhan jagung di PT Widodo Makmur Perkasa di ujung tahun nanti membutuhkan 35 ribu ton, sehingga konversi ke lahan jika panen 2 kali sekitar 17 ribu hektare,\" ujar Tumiyana. Dirinya menyampaikan bahwa pihaknya berencana memaksimalkan peran anak muda jika diberi Kredit Usaha Rakyat (KUR) sebesar Rp500 miliar untuk menanam jagung atau bahan pakan ternak seluas 1.000 hektare. Ini menarik 500 orang untuk bekerja dengan asumsi luas tanam 2 hektare. Di kesempatan yang sama, Staf Ahli Menteri Bidang Ekonomi Makro Kemenkop dan UKM Rulli Nuryanto melihat konsep yang dilakukan PT Widodo Makmur Perkasa untuk mendidik anak muda dapat meningkatkan skala ekonomi usaha tersebut. \"Secara konsep sudah sama untuk mendorong anak muda berwirausaha dan kembali ke sektor pertanian karena dari hasil survei yang mampu tumbuh adalah sektor pertanian,\" ucapnya. Direktur Utama PT BRI Sunarso menilai UMKM lebih membutuhkan edukasi, bimbingan, dan binaan daripada advokasi. Edukasi membuat posisi UMKM bisa sejajar dengan lembaga pembiayaan sehingga daya tawarnya tinggi dan mendapatkan pembiayaan dengan harga murah. \"Contohnya membentuk klaster atau badan hukum bisa memudahkan lembaga pembiayaan dan mengurangi risiko. Pemilihan sektor industri juga harus tahu titik ekonomi yang cepat pulih,\" ungkapnya. Sunarso mengatakan salah satu yang bisa menumbuhkan perekonomian yaitu pertumbuhan kredit. Ini bisa diperoleh dengan berbagai cara antara lain menurunkan suku bunga, mendorong konsumsi rumah tangga, dan faktor lain. Secara tidak langsung, permintaan tepung telur atau likuid telur yang diproduksi oleh PT Widodo Makmur Perkasa bisa banyak karena konsumsi naik sehingga ekonomi berputar. <br/>Sumber: mediaindonesia.com', NULL, NULL, '2021-04-01', '00:00:00', 'indonesia_bicara.jpeg', 1, '', 'Y', 'Y', 0, NULL),
(3, 1, 'Widodo Makmur Unggas kerja sama dengan 3 pengelola UMKM Daerah', 'widodo-makmur-unggas-kerja-sama-dengan-3-pengelola-umkm-daerah', 'Y', 'PT Widodo Makmur Unggas (WMU) dan Mitra UMKM Daerah menandatangani perjanjian kerjasama (MoU) guna mendukung penguatan 10.000 UMKM di Indonesia. Kerja sama ini merupakan bagian dari komitmen WMU untuk maju dan tumbuh bersama dalam menyediakan produk pangan hewani berkualitas bagi seluruh masyarakat Indonesia.\r\n\r\nWMU dalam menjalankan bisnisnya ingin menjamin pengadaan bahan baku produk pangan hewani secara halal dan  kualitas yang terjaga. Tidak hanya itu, WMU akan memberikan benefit bagi UMKM seperti adanya potongan harga dan kemudahan dalam skema pembayaran.\r\n\r\nBaca Juga: Widodo Makmur Unggas ekspansi ke Yogyakarta\r\n\r\nSeremonial penandatanganan kerja sama ini dilakukan secara virtual bersama 3 mitra pengelola UMKM, yaitu Holistika Institute, The Local Enablers dan Lokalkarya. Mitra UMKM ini mayoritas  bergerak di industri makanan olahan.\r\n\r\nDengan memastikan kualitas bahan baku serta pendampingan dalam peningkatan kualitas produk yang diberikan oleh WMU bisa menjadi salah satu solusi bangkitnya UMKM di tengah era adaptasi normal baru.\r\n\r\nMelalui unit usaha Commercial Broiler Farm dan Rumah Potong Ayam (RPA) yang dikelola dengan menerapkan sistem pemotongan modern, sertifikasi halal dan NKV (Nomor Kontrol Veteriner), proses penyediaan bahan baku daging ayam dapat terjamin kualitasnya. Ditambah WMU juga memastikan bahwa pasokan bahan baku daging ayam tersebut dapat mencapai ke pelosok Indonesia dan dengan harga terjangkau.\r\n\r\nTri Mahawijaya Herlambang selaku Direktur Pemasaran WMU mengatakan,  melalui berbagai kerja sama yang dijalin dengan berbagai pihak ketiga dan mitra UMKM, WMU akan menyediakan bahan baku berkualitas yang terjangkau guna mendukung UMKM untuk naik kelas.\r\n\r\n\"Jumlah UMKM ini juga akan terus berkembang jumlahnya, karena sekarang ini kita memasuki eranya kolaborasi sehingga kita harus tumbuh bersama untuk mencapai tujuan Indonesia Maju.\" kata Tri dalam keterangan resminya, Kamis (10/9).\r\n\r\nTingginya pelaku UMKM di Indonesia, membuat WMU juga berencana untuk memberikan literasi dan edukasi terkait peningkatan kualitas produk. Target yang dimiliki oleh WMU yaitu untuk konsisten berkontribusi terhadap negeri khususnya untuk keberlangsungan dari UMKM.\r\n\r\nSementara Holistika Institute berharap dengan adanya kerja sama dengan PT Widodo Makmur Unggas dapat menjadi booster untuk mitra UMKM.\r\n\r\n\"UMKM kini menjadi salah satu kunci pertumbuhan dan garda pertahanan dalam menjaga ekonomi nasional. Namun, para pelaku UMKM juga membutuhkan booster dan pendampingan yang tepat untuk dapat naik kelas. Kami percaya WMU dapat merawat kunci pertumbuhan dan garda pertahanan ekonomi nasional, yaitu UMKM,\" kata Cecep.\r\n\r\nBambang Bayu selaku Ketua The Local Enablers berharap, kerja sama tersebut dapat membantu memecahkan berbagai masalah yang dihadapi dan menjadi jembatan akselerasi bagi kemajuan UMKM.\r\n\r\nBaca Juga: Widodo Makmur Unggas memulai pembangunan pabrik pakan ayam di Ngawi\r\n\r\nSementara Erik Dwiharta Ketua Lokalkarya berharap dengan dukungan dari WMU maka UMKM Indonesia khususnya yang ada di ujung timur Pulau Jawa ini menjadi lebih semangat memajukan usaha dan produksi yang berkualitas.\r\n\r\nPT Widodo Makmur Unggas (WMU) merupakan anak perusahaan PT Widodo Makmur Perkasa (WMP), bergerak di bidang peternakan ayam terintegrasi vertikal yang berbasis di Jakarta.  WMP merupakan perusahaan milik mantan Dirut WIKA Tumiyana.\r\n\r\nWMU memiliki unit-unit bisnis meliputi breeding farm, hatchery, commercial broiler farm, commercial layer farm, slaughterhouse, dan feedmill di  beberapa lokasi fasilitas yang tersebar di Pulau Jawa. <br/>Sumber: KONTAN.CO.ID', NULL, NULL, '2021-04-01', '00:00:00', 'wmu_feedmill.jpg', 1, '', 'Y', 'Y', 0, NULL),
(4, 1, 'Widodo Makmur Unggas Pasok Bahan Baku Daging Ayam bagi 10 Ribu Mitra UMKM', 'widodo-makmur-unggas-pasok-bahan-baku-daging-ayam-bagi-10-ribu-mitra-umkm', 'Y', '<p style=\"text-align:justify\">PT Widodo Makmur Unggas (WMU) dan Mitra UMKM Daerah menandatangani perjanjian kerjasama (MoU) guna mendukung penguatan 10.000 UMKM di Indonesia. Kerjasama ini merupakan bagian dari komitmen WMU untuk maju dan tumbuh bersama dalam menyediakan produk pangan hewani berkualitas bagi seluruh masyarakat Indonesia. WMU menjamin dalam pengadaan bahan baku yang halal dan terjamin kualitasnya. Tidak hanya itu, WMU akan memberikan benefit bagi UMKM seperti adanya potongan harga dan kemudahan dalam skema pembayaran. Seremonial penandatanganan kerjasama ini dilakukan secara virtual bersama 3 mitra pengelola UMKM, yaitu Holistika Institute, The Local Enablers dan Lokalkarya. Mitra UMKM ini mayoritas bergerak di industri makanan olahan. Dengan memastikan kualitas bahan baku serta pendampingan dalam peningkatan kualitas produk yang diberikan oleh WMU bisa menjadi salah satu solusi bangkitnya UMKM di tengah era adaptasi normal baru. Melalui unit usaha Commercial Broiler Farm dan Rumah Potong Ayam (RPA) yang dikelola dengan menerapkan sistem pemotongan modern, sertifikasi halal dan NKV (Nomor Kontrol Veteriner), proses penyediaan bahan baku daging ayam dapat terjamin kualitasnya. Ditambah WMU juga memastikan bahwa pasokan bahan baku daging ayam tersebut dapat mencapai ke pelosok Indonesia dan dengan harga terjangkau. Direktur Pemasaran WMU Tri Mahawijaya Herlambang menyampaikan hal serupa mengenai bentuk kerjasama yang terjalin. &ldquo;Pada kesempatan ini, melalui berbagai kerjasama yang dijalin dengan berbagai pihak ketiga dan mitra UMKM, WMU akan menyediakan bahan baku berkualitas yang terjangkau guna mendukung UMKM untuk naik kelas. 10.000 UMKM ini juga akan terus berkembang jumlahnya, karena sekarang ini kita memasuki eranya kolaborasi sehingga kita harus tumbuh bersama untuk mencapai tujuan Indonesia Maju,&quot; kata dia dalam keterangan tertulis di Jakarta, Rabu (9/9/2020). Tingginya pelaku UMKM di Indonesia, membuat WMU juga berencana untuk memberikan literasi dan edukasi terkait peningkatan kualitas produk. Target yang dimiliki oleh WMU yaitu untuk konsisten berkontribusi terhadap negeri khususnya untuk keberlangsungan dari UMKM. &quot;UMKM kini menjadi salah satu kunci pertumbuhan dan garda pertahanan dalam menjaga ekonomi nasional. Namun, Kami para pelaku UMKM juga membutuhkan booster dan pendampingan yang tepat untuk dapat naik kelas. Holistika Institute berharap dengan adanya kerjasama dengan PT Widodo Makmur Unggas dapat menjadi booster untuk mitra UMKM. Kami percaya PT WMU, sebagai perusahan yang dimiliki oleh anak bangsa, dapat merawat kunci pertumbuhan dan garda pertahanan ekonomi nasional, yaitu UMKM,&quot; ungkap Ketua Holistika Institute Cecep. PT Widodo Makmur Unggas (WMU) merupakan anak perusahaan PT Widodo Makmur Perkasa (WMP), bergerak di bidang peternakan ayam terintegrasi vertikal yang berbasis di Jakarta. WMU memiliki unit-unit bisnis meliputi breeding farm, hatchery, commercial broiler farm, commercial layer farm, slaughterhouse, dan feedmill di beberapa lokasi fasilitas yang tersebar di Pulau Jawa.<br />\r\nKementerian Pertanian RI (Kementan) melalui Direktorat Jenderal Peternakan dan Kesehatan Hewan (Ditjen PKH) tengah mengupayakan langkah stabilisasi pasokan dengan harapan harga ayam hidup di tingkat peternak berangsur mengalami kenaikan dan stabil. Salah satunya, telah diterbitkannya Surat Edaran (SE) Dirjen PKH No. 09246T/SE/PK/230./F/08/2020 Tentang Pengurangan DOC FS Melalui Cutting Hatching Egg (HE) Umur 18 Hari, Penyesuaian Setting HE dan Afkir Dini Parent Stock (PS) Tahun 2020. Ketua Umum Gabungan Perusahaan Pembibitan Unggas (GPPU) Indonesia, Achmad Dawami, menyambut baik keluarnya SE Dirjen PKH yang baru. Karena, menurut Achmad, dalam jangka pendek, SE ini bisa efektif menjadi jurus ampuh untuk menyelesaikan persoalan klasik yaitu kelebihan pasokan (over supply). &quot;Secara efektif bisa, tetapi harga tidak akan naik secara instan. Paling cepat, hasilnya dapat dirasakan 1,5 bulan yang akan datang. Karena butuh proses, penegakan instruksi Dirjen dan implementasinya sangatlah penting,&quot; katanya kepada wartawan, Selasa (8/9/2020). Achmad meminta agar SE Dirjen ini dapat berjalan efektif, dibutuhkan pengawasan ketat dari pemerintah dan penerapan sanksi bagi yang tidak mematuhi instruksi. Karena, beberapa perusahaan saat ini ada yang melakukan pemusnahan bibit ayam atau cutting sendiri untuk menyeimbangkan neraca. Menurutnya, upaya menyeimbangkan pasokan dan permintaan lewat SE Dirjen ini cukup baik. Apalagi, ditengah pandemi Covid-19, permintaan terhadap ayam pasti berkurang. Terutama, dari industri hotel, restoran, dan catering di banyak daerah yang memilih tutup sementara. Situasi itu membuat para produsen ayam, baik peternak mandiri maupun peternak mitra perusahaan pembibitan ayam mencari pasar baru. Selain SE Dirjen, Achmad juga meminta tiga hal kepada pemerintah agar kelebihan pasokan ini tidak terulang. Pertama, bereskan masalah rantai distribusi ayam yang panjang. Kedua, ayam hidup ini sangat mudah dipengaruhi isu yang langsung menggoyang harga. Dan yang ketiga, sumber data produksi harus akurat, sehingga dari data tersebut pemerintah dapat memperkirakan berapa produksi dan berapa permintaan setiap tahunnya.<br />\r\nPimpinan Perhimpunan Insan Perunggasan Rakyat (Pinsar), Singgih Januratmoko optimis SE Dirjen mampu kembali mengerek harga ayam yang anjlok akibat kelebihan pasokan. Menurutnya, aturan ini akan kelihatan dampaknya 35 hari lagi karena waktunya ayam panen. &quot;Terutama dengan implementasi afkir dini, seharusnya akhir bulan harga ayam sudah baik,&quot; ujarnya. Singgih melihat persoalan harga sangat bergantung pada jumlah pasokan. Singgih menekankan, perlunya pengaturan pasokan mulai dari sisi hulu. Singgih mengatakan, Kementan RI yang mengatur sisi produksi harusnya sudah bisa memperhitungkan jumlah produk saat panen dengan permintaan pasar. Jadi, potensi kelebihan pasokan bisa diketahui sejak awal. Kondisi kelebihan pasokan ini, kata Singgih, terus terjadi. Semenjak awal tahun 2019, harga ayam di peternak sering jatuh di bawah Harga Pokok Penjualan (HPP). Untuk itu, Singgih berharap pemerintah bisa lebih tegas dalam mengatur produksi,dan memberikan sanksi tegas bagi yang tidak patuh. Selain itu, sigap jika ada potensi kelebihan pasokan. &quot;Jadi kalau telur ayam masuk ke mesin setter yang akan menetas 21 hari kemudian, dan kalau sudah tahu bakal kelebihan harusnya ditarik dulu dong. Supaya DOC (day old chick) nggak berlebihan, jadi pasokan ayamnya juga nggak berlebihan,&quot; jelasnya. Dunia perunggasan banyak menaruh harapan kepada Dirjen PKH yang baru, Nasrullah, untuk melakukan langkah cepat agar situasi kelebihan pasokan bisa dikendalikan dan harga ayam ditingkat peternak bisa kembali stabil sesuai acuan Permendag.<br />\r\nSumber: Liputan6.com</p>\r\n', NULL, NULL, '2021-04-01', '00:00:00', 'wmu-daging-ayam-naik.jpg', 1, '', 'Y', 'Y', 0, NULL),
(5, 1, 'Ciptakan Entrepreneur Muda, Bank BPD DIY Bersinergi dengan PT Widodo Makmur Perkasa', 'ciptakan-entrepreneur-muda-bank-bpd-diy-bersinergi-dengan-pt-widodo-makmur-perkasa', 'Y', '<p style=\"text-align:justify\">PT Bank BPD DIY dan PT Widodo Makmur Perkasa (WMP) jalin kerjasama tentang program kemitraan pertanian dan peternakan. Naskah kerjasama ditandatangani oleh Direktur Utama Bank BPD DIY, Santoso Rohmad dan CEO PT Widodo Makmur Perkasa, H. Tumiyana di Pusdiklat Kesatrian Entepreneur Indonesia, Klaten, Jawa Tengah pada Rabu (24/3). Melalui kerjasama tersebut Bank BPD DIY dan PT WMP akan berkolaborasi memberikan pelatihan, pembinaan dan akses pembiayaan kepada pengusaha muda dibidang peternakan ayam petelur dan petani jagung. Dibawah Yayasan Kesatrian Enterpreneur Indonesia yang merupakan bagian dari PT WMP para peternak akan diberikan pelatihan dan pembekalan tentang pengelolaan ternak ayam petelur secara profesional. Disisi lain, Bank BPD DIY akan memberikan bantuan permodalan melalui fasilitas kredit kepada para peternak yang sudah mulai berjalan dengan baik.</p>\r\n\r\n<p style=\"text-align:justify\">Santoso Rohmad dalam kesempatan tersebut menyampaikan bahwa Bank BPD DIY sangat mendukung terwujudnya kerjasama tersebut untuk menciptakan pengusaha-pengusaha muda yang tangguh dan inovatif. Menurutnya, ditengah pandemi dan tantangan ekonomi yang cukup berat seperti saat ini dibutukan inovasi dan ide-ide kreatif agar mampu bertahan dan berkembang. &ldquo;Kami sangat bangga bisa terlibat dalam upaya melahirkan kesatria-kesatria muda yang akan menjadi pengusaha sukses dimasa depan. Bank BPD DIY akan selalu terbuka dan memberikan solusi terbaik khususnya untuk kebutuhan permodalan. Bank BPD DIY memiliki berbagai produk kredit yang dapat dimanfaatkan sesuai kebutuhan&rdquo; ungkap Santoso. Lebih lanjut Santoso menyampaikan bahwa Bank BPD DIY juga akan memberikan pelatihan kepada peternak muda terkait literasi keuangan dan akses terhadap perbankan. Sementara itu, CEO PT WMP, H. Tumiyana menyampaikan bahwa anak-anak muda Indonesia harus ikut ambil bagian dalam industri pangan di tanah air. Menurutnya, kebutuhan pangan akan selalu ada dan terus meningkat. Oleh karenanya harus diciptakan petani dan peternak unggul dalam jumlah yang banyak agar mampu memenuhi permintaan. Dekan Fakultas Peternakan UGM, Prof. Dr.Ir. Ali Agus, DAA, DEA yang juga hadir dalam kesempatan tersebut menyambut gembira program kemitraan pertanian dan peternakan yang jalankan oleh PT WMP dan Bank BPD DIY tersebut. &ldquo;Dengan sinergi ini Insya Allah akan memberikan manfaat dan penguatan kepada generasi muda Indonesia khususnya generasi pangan&rdquo; katanya Pendandatanganan kerjasama tersebut juga menandai dimulainya pelatihan yang bertajuk &ldquo;Kesatriaan Peternak Muda Angkatan Ke-2&rdquo; yang diikuti oleh 30 peserta dengan range usia antara 25 s.d 35 tahun dari wilayah Gunungkidul, Bantul, Klaten, dan Boyolali yang sebelumnya telah menjalani screening berupa tes wawancara dan dokumen. Peternak muda tersebut akan dilatih untuk menjadi wirausaha ayam telur sektor mikro dan nantinya dapat dibiayai dengan kredit KUR dari Bank BPD DIY dengan plafon sebesar Rp20 juta s.d Rp35 juta. Tahun 2021 Bank BPD DIY menargetkan penyaluran kredit KUR sebesar Rp500 miliar. Hingga saat ini tercatat ada 11.570 nasabah yang telah menafaatkan kredit KUR Bank BPD DIY.<br />\r\nSumber: TRIBUNJOGJA.COM</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', NULL, 'kamis', '2021-04-01', '00:00:00', 'pt-bank-bpd-diy-dan-pt-widodo-makmur-perkasa.jpg', 1, '', 'Y', 'Y', 0, NULL),
(0, 4, 'WMP Holding Perkuat Kemitraan Cakupan Lahan hingga 5000  hektar  dengan Koperasi Petani Jagung Tuban', 'wmp-holding-perkuat-kemitraan-cakupan-lahan-hingga-5000--hektar--dengan-koperasi-petani-jagung-tuban', 'Y', '<p>Tuban, 2 September 2021.</p>\r\n\r\n<p>Widodo Makmur Perkasa (WMP) Holding melalui anak usahanya, PT. Widodofood Makmur Sejahtera (WMS) melakukan penandatanganan Memorandum of Understanding (MoU) dengan Koperasi Petani Indonesia (KPI) Tuban untuk memastikan ketersediaan pasokan jagung di lini bisnis poultry. Penandatanganan MoU dilakukan oleh Direktur Utama WMS, Nur Iswan dan Ketua KPI Tuban, Nur Hadi di Desa Senori, Kecamatan Merakurak, Kabupaten Tuban. MoU ini membahas kerjasama kemitraan untuk komoditas jagung dengan cakupan luas lahan hingga 5.000 hektar.</p>\r\n\r\n<p>Nur Iswan menyatakan pasokan kebutuhan jagung di lini bisnis poultry Widodo Makmur Group dipenuhi melalui intergrated farming dan kemitraan dengan petani jagung. Kebutuhan jagung Widodo makmur Group pada 2026 diproyeksikan mencapai 552 ribu ton dan akan bersumber dari Gabungan Kelompok Tani (Gapoktan) maupun Koperasi Petani.</p>\r\n\r\n<p>Dalam rangka mengamankan 50% pasokan bahan baku Jagung dan sesuai misi WMP Holding, WMS telah dan akan terus memperkuat Kemitraan dengan Para Petani terutama di Lumbung-lumbung Jagung nasional.</p>\r\n\r\n<p>&ldquo;Kami menargetkan kemitraan dengan Koperasi Petani Indonesia Tuban akan mencapai luasan lima ribu hektar hingga tahun 2026 nanti.&rdquo; Jelas Nur Iswan.</p>\r\n\r\n<p>Acara penandatangan MoU ini juga dihadiri Wakil Bupati Tuban, H. Riyadi, S.H yang didampingi Kepala Dinas Pertanian serta Kepala Dinas Koperasi dan Perdagangan Kabupaten Tuban. Dalam sambutannya, Wakil Bupati Tuban menyambut baik dan mendukung penuh kesepakatan WMS dan KPI Tuban.</p>\r\n\r\n<p>&ldquo;Penandatanganan MoU ini merupakan bentuk sinergi dan kerjasama lintas sektoral yang melibatkan swasta dan perbankan, untuk memajukan petani sekaligus mendorong perekonomian di Kabupaten Tuban.&rdquo; Kata Wabup Tuban.</p>\r\n\r\n<p>Selain Wakil Bupati Tuban, turut hadir perwakilan dari BRI Agro Cabang Jawa Timur dan BRI Agro KCP Kabupaten Gresik serta Sidoarjo. BRI Agro melalui tiga perwakilannya menyebut siap memberikan dukungan pembiayaan bagi program kemitraan jagung antara WMS dengan KPI Tuban.</p>\r\n\r\n<p>Kesepakatan ini difasilitasi oleh Yayasan Kesatrian Enterpreneur Indonesia (KEI) WMP Holding yang salah satu misinya adalah melakukan pendidikan, pelatihan dan penguatan capacity building petani dan peternak Indonesia.</p>\r\n\r\n<p>Kabupaten Tuban merupakan lumbung jagung nasional yang memiliki jumlah produksi jagung tertinggi di Jawa Timur. Luas panen jagung pada tahun 2019 mencapai 122.992 hektar dengan produksi sebesar 693.183 Ton. ***</p>\r\n', NULL, 'Jumat', '2021-09-24', '10:30:07', 'DSC07668(2).jpg', 1, '', 'Y', 'Y', 0, NULL);

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
(7, 'Nur Tjahjo', 'HCD Director Widodo Makmur Holding', 'Kekuatan anak muda bukan di power, tapi jiwa inovatif dan berpikir out of the box', '7.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(8, 'Giyono', 'Business Development Director Widodo Makmur Holding', 'Tidak ada sukses yang instant. Semua berproses, maka jadilah jadilah pribadi yang selalu berkembang, sehingga selalu temotivasi untuk menggali faktor \'X\' dan mampu mengaktualisasi diri. Tidak ada jalan pintas, semua memerlukan proses, komitmen dan disiplin', '8.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(9, 'Heri Prasojo', 'CEO PT Pasir Tengah', 'Tetap Semangat, Jangan Menyerah!', '9.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(10, 'Saiful Bari', 'CEO PT Cianjur Arta Makmur', 'Tetap Semangat, Jangan Menyerah!', '10.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(11, 'Nur Iswan', 'CEO PT Widodofood Makmur Sejahtera', 'Tetap Semangat, Jangan Menyerah!', '11.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(12, 'Ali Mas\'adi', 'CEO PT Widodo Makmur Unggas', 'Tetap Semangat, Jangan Menyerah!', '12.jpg', '#', 1, 'admin', '2021-03-27 14:03:47'),
(13, 'Tri Agus Bayuseno', 'Technical Director Widodo Makmur Holding', 'Tetap Semangat, Jangan Menyerah!', '6.jpg', '#', 1, 'admin', '2021-03-27 14:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ekonomi_outlook`
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
-- Dumping data for table `tbl_ekonomi_outlook`
--

INSERT INTO `tbl_ekonomi_outlook` (`id_eo`, `judul_eo`, `judul_eo_seo`, `deskripsi_eo`, `foto_eo`, `date_time`) VALUES
(1, 'Publikasi Tanaman Pangan Jagung', 'publikasi-tanaman-pangan-jagung', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '1.1.jpg', '2021-03-27 00:00:00'),
(2, 'Ringkasan Eksekutif Komoditas Beras di Indonesia', 'ringkasan-eksekutif-komoditas-beras-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '2.1.jpg', '2021-03-27 00:00:00'),
(5, 'Statistik Perdagangan Komoditas Daging Sapi dan Daging Kerbau', 'statistik-perdagangan-komoditas-daging-sapi-dan-daging-kerbau', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '5.1.jpg', '2021-03-27 00:00:00'),
(6, 'Outlook Komoditas Ayam', 'outlook-komoditas-ayam', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '6.1.jpg', '2021-03-27 00:00:00'),
(7, 'Statistik Peternakan Sapi di Indonesia', 'statistik-peternakan-sapi-di-indonesia', 'Want to know more about our university? The feedback submitted by our students is an effective way to show how beneficial the studying at Teachzy university can be.', '7.1.jpg', '2021-03-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ekonomi_outlook_detail`
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
  `video` varchar(100) NOT NULL,
  `status_eo_detail` varchar(10) NOT NULL DEFAULT 'Publish'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ekonomi_outlook_detail`
--

INSERT INTO `tbl_ekonomi_outlook_detail` (`id_eo_detail`, `id_eo`, `judul_eo_detail`, `judul_eo_detail_seo`, `deskripsi_eo_detail`, `gambar`, `url_download`, `date_time`, `download_pdf`, `video`, `status_eo_detail`) VALUES
(1, 7, 'Populasi Ternak Sapi', 'populasi-ternak-sapi', '', 'populasi_ternak_sapi.png', '', '2021-04-30', '', '', 'Publish'),
(2, 7, 'Pemotongan Ternak Sapi di RPH\r\n', 'pemotongan-ternak-sapi-di-rph', '', 'pemotongan_ternak_sapi.png', '', '2021-04-30', '', '', 'Publish'),
(3, 7, 'Produksi Kulit Basah', 'produksi-kulit-basah', '', 'produksi_kulit_basah.png', '', '2021-04-30', '', '', 'Publish'),
(6, 7, 'Ekspor Sapi Hidup', 'ekspor-sapi-hidup-04052021132606', '', 'Eksporsapi.png', '', '2021-05-04', 'Eksporsapi.png', '', 'Publish'),
(7, 7, 'Impor Sapi Hidup', 'impor-sapi-hidup-04052021132646', '', 'impor1.png', '', '2021-05-04', 'impor1.png', '', 'Publish'),
(8, 7, 'Ekspor Kulit', 'ekspor-kulit-04052021133901', '', 'expor.png', '', '2021-05-04', 'expor.png', '', 'Publish'),
(9, 7, 'Impor Kulit', 'impor-kulit-04052021134000', '', 'ImporKulit.png', '', '2021-05-04', 'ImporKulit.png', '', 'Publish'),
(10, 6, 'Populasi Ayam Ras Pedaging', 'populasi-ayam-ras-pedaging-04052021134219', '', '123.png', '', '2021-05-04', '123.png', '', 'Publish'),
(11, 6, 'Populasi Ayam Ras Petelur', 'populasi-ayam-ras-petelur-04052021151836', '', 'POPULASI.png', '', '2021-05-04', '', '', 'Publish'),
(12, 6, 'Produksi Daging Ayam Ras Pedaging', 'produksi-daging-ayam-ras-pedaging-04052021151946', '', 'produksi.png', '', '2021-05-04', '', '', 'Publish'),
(13, 6, 'Produksi Telur', 'produksi-telur-04052021152049', '', 'telur.png', '', '2021-05-04', '', '', 'Publish'),
(14, 6, 'Perkembangan Harga Eceran Daging Broiler', 'perkembangan-harga-eceran-daging-broiler-04052021152149', '', 'hargaeceran.png', '', '2021-05-04', '', '', 'Publish'),
(15, 6, 'Perkembangan Harga Eceran Telur Ayam Ras', 'perkembangan-harga-eceran-telur-ayam-ras-04052021152234', '', 'hargaayamras.png', '', '2021-05-04', '', '', 'Publish'),
(16, 6, 'Konsumsi Daging Ayam', 'konsumsi-daging-ayam-04052021152304', '', 'konsumsidaging.png', '', '2021-05-04', '', '', 'Publish'),
(17, 6, 'Konsumsi Telur Ayam Ras', 'konsumsi-telur-ayam-ras-04052021152401', '', 'konsumsitelur.png', '', '2021-05-04', '', '', 'Publish'),
(18, 5, 'Produksi Daging', 'produksi-daging-05052021103455', '', 'produksidaging.png', '', '2021-05-05', '', '', 'Publish'),
(19, 5, 'Perkembangan Rata-rata Harga Eceran di Tingkat Nasional', 'perkembangan-ratarata-harga-eceran-di-tingkat-nasional-05052021103545', '', 'hargadagigsapi.png', '', '2021-05-05', '', '', 'Publish'),
(20, 5, 'Perkembangan Harga Eceran Daging Sapi ', 'perkembangan-harga-eceran-daging-sapi--05052021103614', '', 'perkembanganharga.png', '', '2021-05-05', '', '', 'Publish'),
(21, 5, 'Ekspor Daging Sapi dan Jeroan Sapi', 'ekspor-daging-sapi-dan-jeroan-sapi-05052021103635', '', 'eksdaging.png', '', '2021-05-05', '', '', 'Publish'),
(22, 5, 'Impor Daging Sapi dan Jeroan Sapi', 'impor-daging-sapi-dan-jeroan-sapi-05052021103829', '', 'impordaging.png', '', '2021-05-05', '', '', 'Publish'),
(23, 5, 'Konsumsi per Kapita', 'konsumsi-per-kapita-05052021103854', '', 'konsumsidaging1.png', '', '2021-05-05', '', '', 'Publish'),
(24, 2, 'Lahan, Produktivitas, dan Produksi Padi Nasional', 'lahan-produktivitas-dan-produksi-padi-nasional-05052021110354', '', 'lahan.png', '', '2021-05-05', '', '', 'Publish'),
(25, 2, 'Harga Gabah di Tingkat Petani Tahun 2020', 'harga-gabah-di-tingkat-petani-tahun-2020-05052021110414', '', 'harga2020.png', '', '2021-05-05', '', '', 'Publish'),
(26, 2, 'Perkembangan Harga Eceran Komoditas Beras ', 'perkembangan-harga-eceran-komoditas-beras--05052021110440', '', 'hargaeceran1.png', '', '2021-05-05', '', '', 'Publish'),
(27, 2, 'Ekspor Komoditas Beras Tahun 2012-2021', 'ekspor-komoditas-beras-tahun-20122021-05052021110514', '', 'eksporberas.png', '', '2021-05-05', '', '', 'Publish'),
(28, 2, 'Impor Komoditas Beras Tahun 2012-2021', 'impor-komoditas-beras-tahun-20122021-05052021110526', '', 'imporberas.png', '', '2021-05-05', '', '', 'Publish'),
(29, 2, 'Konsumsi per Kapita', 'konsumsi-per-kapita-05052021110553', '', 'konsumsiberas.png', '', '2021-05-05', '', '', 'Publish'),
(30, 1, 'Lahan, Produktivitas, dan Produksi Jagung', 'lahan-produktivitas-dan-produksi-jagung-05052021110729', '', 'lahanjagung.png', '', '2021-05-05', '', '', 'Publish'),
(31, 1, 'Perkembangan Harga Produsen dan Konsumen Jagung', 'perkembangan-harga-produsen-dan-konsumen-jagung-05052021110750', '', 'hargajagung.png', '', '2021-05-05', '', '', 'Publish'),
(32, 1, 'Stok Jagung di Pabrik Pakan', 'stok-jagung-di-pabrik-pakan-05052021110819', '', 'stokjaung.png', '', '2021-05-05', '', '', 'Publish'),
(33, 1, 'Harga Terima dan Kadar Air Pembelian Jagung oleh Pabrik Pakan di Indonesia Bulan Juli 2020-Maret 202', 'harga-terima-dan-kadar-air-pembelian-jagung-oleh-pabrik-pakan-di-indonesia-bulan-juli-2020maret-2021', '', 'hargaterima.png', '', '2021-05-05', '', '', 'Publish'),
(34, 1, 'Ekspor Komoditas Jagung Tahun 2012-2021', 'ekspor-komoditas-jagung-tahun-20122021-05052021110859', '', 'eksporjagung.png', '', '2021-05-05', '', '', 'Publish'),
(35, 1, 'Impor Komoditas Jagung Tahun 2012-2021', 'impor-komoditas-jagung-tahun-20122021-05052021110918', '', 'imporjagung.png', '', '2021-05-05', '', '', 'Publish'),
(36, 1, 'Konsumsi Jagung', 'konsumsi-jagung-05052021110940', '', 'konjagung.png', '', '2021-05-05', '', '', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id_event` int(11) NOT NULL,
  `judul_event` varchar(100) NOT NULL,
  `judul_event_seo` varchar(200) NOT NULL,
  `deskripsi_event` text NOT NULL,
  `foto_event` varchar(50) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id_event`, `judul_event`, `judul_event_seo`, `deskripsi_event`, `foto_event`, `id_users`, `date_time`) VALUES
(1, 'UMKM PRODUK PERTANIAN', 'umkm-produk-pertanian', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'beras.jpg', 1, '2021-05-10 00:00:00'),
(2, 'UMKM PRODUK OLAHAN DAGING', 'umkm-produk-olahan-daging', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'produk_olahan.jpg', 1, '2021-05-10 00:00:00'),
(3, 'BUDIDAYA PADI & JAGUNG', 'budidaya-padi-jagung', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'jagung.png', 1, '2021-05-10 00:00:00'),
(4, 'PENGGEMUKAN SAPI', 'penggemukan-sapi', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'sapi.jpg', 1, '2021-05-10 00:00:00'),
(5, 'BUDIDAYA AYAM BROILER', 'budidaya-ayam-broiler', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_broiler.jpg', 1, '2021-05-10 00:00:00'),
(6, 'BUDIDAYA AYAM LAYER', 'budidaya-ayam-layer', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_layer.jpg', 1, '2021-05-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_detail`
--

CREATE TABLE `tbl_event_detail` (
  `id_event_detail` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `judul_event_detail` varchar(100) NOT NULL,
  `judul_event_detail_seo` varchar(100) NOT NULL,
  `deskripsi_event_detail` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `url_download` varchar(100) NOT NULL,
  `date_time` date NOT NULL,
  `download_pdf` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `date_event_detail` date NOT NULL,
  `time_event_detail` time NOT NULL,
  `time_event_detail_end` time NOT NULL,
  `tempat_event_detail` varchar(200) NOT NULL,
  `biaya_event_detail` int(100) NOT NULL,
  `status_event_detail` varchar(10) NOT NULL DEFAULT 'Publish'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event_detail`
--

INSERT INTO `tbl_event_detail` (`id_event_detail`, `id_event`, `judul_event_detail`, `judul_event_detail_seo`, `deskripsi_event_detail`, `gambar`, `url_download`, `date_time`, `download_pdf`, `video`, `date_event_detail`, `time_event_detail`, `time_event_detail_end`, `tempat_event_detail`, `biaya_event_detail`, `status_event_detail`) VALUES
(16, 4, 'Webinar Kesatriaan Seri #01', 'webinar-kesatriaan-seri-01', '<p>UNDANGAN<br />\r\nWebinar Kesatriaan Seri #01</p>\r\n\r\n<p>&rdquo;Tantangan Alih Generasi Peternak Muda Menuju Swasembada Daging Sapi Nasional&rdquo;</p>\r\n\r\n<p>Bersama ini kami mengundang rekan-rekan muda untuk bergabung dalam webinar yang diselenggarakan pada :</p>\r\n\r\n<p>Hari/Tgl &nbsp; &nbsp; : Senin, 26 April 2021<br />\r\nWaktu &nbsp; &nbsp; &nbsp; &nbsp;: 13.00 WIB</p>\r\n\r\n<p>ZOOM ID &nbsp; : 637 100 1919<br />\r\nPasscode &nbsp; : KEI2021</p>\r\n\r\n<p>Join Zoom Meeting<br />\r\n<a href=\"https://us02web.zoom.us/j/6371001919?pwd=UEtxekl6Nzdneis3ZGFGTGNScGNXdz09#success\">https://us02web.zoom.us/j/6371001919?pwd=UEtxekl6Nzdneis3ZGFGTGNScGNXdz09</a></p>\r\n\r\n<p>Semoga berkenan hadir secara daring..<br />\r\nTerima kasih ????????????</p>\r\n\r\n<p>PENGURUS<br />\r\nYAYASAN KESATRIAAN<br />\r\nENTREPRENEUR INDONESIA</p>\r\n', '0fa0f168-feda-4610-9a84-abef375205ac.jpg', '', '2021-05-21', '', '', '2021-04-21', '13:00:00', '16:00:00', 'zoom', 0, 'Publish');

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
-- Table structure for table `tbl_fotogaleri`
--

CREATE TABLE `tbl_fotogaleri` (
  `id_fotogaleri` int(11) NOT NULL,
  `judul_fotogaleri` varchar(100) NOT NULL,
  `judul_fotogaleri_seo` varchar(200) NOT NULL,
  `deskripsi_fotogaleri` text NOT NULL,
  `gambar_fotogaleri` varchar(50) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status_fotogaleri` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fotogaleri`
--

INSERT INTO `tbl_fotogaleri` (`id_fotogaleri`, `judul_fotogaleri`, `judul_fotogaleri_seo`, `deskripsi_fotogaleri`, `gambar_fotogaleri`, `id_users`, `date_time`, `status_fotogaleri`) VALUES
(1, 'Sarasehan Petani dan Peternak Muda', 'sarasehan-petani-dan-peternak-muda', '', 'DSCF0570.JPG', 4, '2021-06-03 00:00:00', 'Y'),
(2, 'Sarasehan Petani dan Peternak Muda', 'sarasehan-petani-dan-peternak-muda', '', 'DSCF0621.JPG', 4, '2021-06-03 00:00:00', 'Y'),
(7, 'Penandatanganan MoU antara PT. Widodofood Makmur Sejahtera dan Koperasi Petani Indonesia Tuban', 'penandatanganan-mou-antara-pt-widodofood-makmur-sejahtera-dan-koperasi-petani-indonesia-tuban', '', 'DSC07668(2).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(8, 'Penandatanganan MoU antara PT. Widodofood Makmur Sejahtera dan Gapoktan Tani Sejahtera Wonogiri', 'penandatanganan-mou-antara-pt-widodofood-makmur-sejahtera-dan-gapoktan-tani-sejahtera-wonogiri', '', 'DSC07951(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(10, 'Peringatan HUT PT. WMP ke-26 ', 'peringatan-hut-pt-wmp-ke26-', '', 'HUT_WMP.jpg', 4, '2021-09-24 00:00:00', 'Y'),
(11, 'Pertemuan  tokoh perwakilan UMKM sentra batik kain, batik kayu, tenun lurik, kerajinan gamelan dan k', 'pertemuan--tokoh-perwakilan-umkm-sentra-batik-kain-batik-kayu-tenun-lurik-kerajinan-gamelan-dan-kelir-serta-makanan-khas-dan-konveksi-di-kecamatan-bayat', '', 'pertemuan_UMKM(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(12, 'Pelatihan LMP', 'pelatihan-lmp', '', 'Pelatihan_LMP(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(13, 'Kesatriaan Tani Muda Angkatan I', 'kesatriaan-tani-muda-angkatan-i', '', 'Kelas_Tani_Muda(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(14, 'Kesatriaan Tani Muda Angkatan I', 'kesatriaan-tani-muda-angkatan-i', '', 'DSCF0236(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(15, 'Kesatriaan Tani Muda Angkatan I bersama Bapak Arif Budiman', 'kesatriaan-tani-muda-angkatan-i-bersama-bapak-arif-budiman', '', 'Pemateri_Pak_Arif_Budiman-1(1).jpg', 4, '2021-09-24 00:00:00', 'Y'),
(16, 'Penandatangan MoU antara Yayasan KEI dan BPS Kab. Klaten sekaligus memperingati Hari Statistik Nasio', 'penandatangan-mou-antara-yayasan-kei-dan-bps-kab-klaten-sekaligus-memperingati-hari-statistik-nasional-', '', '20210927_103007(1).jpg', 4, '2021-09-27 00:00:00', 'Y');

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
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0),
(9, 'Huma', 'harishumaidi75@gmail.com', '082226564060', 'Hallo KEI', '2021-04-08 01:23:13', 1);

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
(6, '00003', 'adjie sandy', 'ciracas', '021021', 'ajiedwisandy@gmail.com', 's1', 'IT', 'asasasa', 'HEADER-WEB.jpg', '', 'HEADER-SUB-MENU.jpg', '', '', 'Member', 1, '1', '2021-05-04 05:57:50'),
(7, '00004', 'adjie sandy', 'ciracas', '021021', 'crudlaces@gmail.com', 's1', 'IT', 'asasasa', 'hargajagung.png', '', 'imporjagung.png', '', '', 'Member', 1, NULL, '2021-06-07 09:39:48'),
(8, '00005', 'huma', 'jakarta', '082226564060', 'harishumaidi75@gmail.com', 's3', 'swasta', 'semua', '350.jpg', '', 'sapi1.jpg', '', '', 'Member', 1, NULL, '2021-07-21 09:14:07');

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
  `foto` varchar(25) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelatihan`
--

INSERT INTO `tbl_pelatihan` (`id_pelatihan`, `judul_pelatihan`, `judul_pelatihan_seo`, `deskripsi_singkat`, `deskirpsi_full`, `foto`, `id_users`, `date_time`) VALUES
(1, 'UMKM PRODUK PERTANIAN', 'umkm-produk-pertanian', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'beras.jpg', 1, '2021-04-01'),
(2, 'UMKM PRODUK OLAHAN DAGING', 'umkm-produk-olahan-daging', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'produk_olahan.jpg', 1, '2021-04-01'),
(3, 'BUDIDAYA PADI & JAGUNG', 'budidaya-padi-jagung', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'jagung.png', 1, '2021-04-01'),
(4, 'PENGGEMUKAN SAPI', 'penggemukan-sapi', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'sapi.jpg', 1, '2021-04-01'),
(5, 'BUDIDAYA AYAM BROILER', 'budidaya-ayam-broiler', 'Jacob coord', 'Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.', 'ayam_broiler.jpg', 1, '2021-04-01'),
(6, 'BUDIDAYA AYAM LAYER', 'budidaya-ayam-layer', 'Jacob coord', '<p>Every week, we organize a variety of events for our students and undergraduates. From webinars to creative events, there are activities that are always worth your attention.</p>\r\n', 'ayam_layer.jpg', 1, '2021-07-22');

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
  `date_time` date NOT NULL,
  `download_pdf` varchar(100) NOT NULL,
  `status_lang_news` varchar(2) NOT NULL DEFAULT 'Y',
  `video` varchar(100) NOT NULL,
  `status_pelatihan_detail` varchar(10) NOT NULL DEFAULT 'Publish'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelatihan_detail`
--

INSERT INTO `tbl_pelatihan_detail` (`id_pelatihan_detail`, `id_pelatihan`, `judul_pelatihan_detail`, `judul_pelatihan_detail_seo`, `deskripsi_pelatihan_singkat`, `gambar`, `url_download`, `date_time`, `download_pdf`, `status_lang_news`, `video`, `status_pelatihan_detail`) VALUES
(1, 6, 'Standar Teknis Pemeliharaan Ayam Layer', 'standar-teknis-pemeliharaan-ayam-layer', '<p>Ayam Layer adalah Ayam Petelur yang dipelihara hingga usia sekitar 75 minggu dengan masa produksi sekitar usia 20 hingga 75 minggu.</p>\r\n\r\n<p>Dasar Pemeliharaan Ayam Petelur yaitu :</p>\r\n\r\n<ol>\r\n	<li>Breeding</li>\r\n	<li>Magement Kandang</li>\r\n	<li>Management Kesehatan</li>\r\n	<li>Feeding</li>\r\n</ol>\r\n\r\n<p>Ada beberapa hal yang harus diperhatikan ketika memilih Ayam Ras Petelur antara lain produksi telur ayam tinggi, ukuran telur normal yaitu sekitar 60gram - 65 gram, ayam bebas dari sifat mengeram, nilai afkir tinggi dan konversi pakan rendah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber : <a href=\"http://indoagropedia.pertanian.go.id/books/ayam2/chapter/ayam-layer\">Pertanian</a> dan <a href=\"http://p4tkpertanian.kemdikbud.go.id/wp-content/uploads/2019/06/DIKLAT-PURNA-TUGAS.pdf\">P4TKPertanian Kemendikbud</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'standar_teknis_pemeliharaan_ayam_layer.png', '', '2021-10-25', '', 'Y', '', 'Publish'),
(2, 6, 'Regulasi Terkait Bisnis Ayam Layer', 'regulasi-terkait-bisnis-ayam-layer', '', 'regulasi_terkait_bisnis_ayam_layer.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(3, 6, 'Bisnis Proses Ayam Layer', 'bisnis-proses-ayam-layer', '', 'bisnis_proses_ayam_layer.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(4, 6, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '<p>Kandang yang baik memiliki beberapa syarat yaitu :</p>\r\n\r\n<ul>\r\n	<li>Mempunyai aliran udara yang baik</li>\r\n	<li>Mempunya sumber air bersih</li>\r\n	<li>Letak kandang berada pada lokasi yang tinggi dengan konstruksi tinggi ujung atap dari lantai 2,5 cm, lebar kandang 5,6 meter dan jalan tengah dibuat 80 cm.</li>\r\n</ul>\r\n\r\n<p>Kandang untuk Ayam Petelur dibagi menjadi tiga yaitu Kandang Indukan, Kandang Grower dan Kandang Layer.</p>\r\n\r\n<p>sumber : <a href=\"http://p4tkpertanian.kemdikbud.go.id/wp-content/uploads/2019/06/DIKLAT-PURNA-TUGAS.pdf\">P4TKPertanian Kemdikbud</a></p>\r\n', 'manajemen_pengelolaan_kandang.png', '', '2021-10-25', '', 'Y', '', 'Publish'),
(5, 6, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '<p>Ransum ayam petelur dibedakan berdasarkan periode pemeliharaannya yaitu :</p>\r\n\r\n<ul>\r\n	<li>Starter : 0-4 mg</li>\r\n	<li>Grower : 4-10 mg</li>\r\n	<li>Grower II : 11 - &gt;16 mg</li>\r\n	<li>Pre-Layer : 16-18 mg</li>\r\n	<li>Layer : &lt;18 mg</li>\r\n</ul>\r\n\r\n<p>Pakan yang berkualitas baik memiliki beberapa ciri diantaranya adalah tidak menggumpal, tidak tengik dan tidak berjamur.</p>\r\n\r\n<p>Ransum juga harus diganti dengan melalui beberapa tahap. Untuk menunjang produktivitas, Ayam Layer juga harus diberikan Vitamin untuk mencegah ayam stress.</p>\r\n\r\n<p>Sumber : <a href=\"http://p4tkpertanian.kemdikbud.go.id/wp-content/uploads/2019/06/DIKLAT-PURNA-TUGAS.pdf\">P4TKPertanian Kemdikbud</a></p>\r\n', 'manajemen_pengelolaan_pakan.png', '', '2021-10-25', '', 'Y', '', 'Publish'),
(6, 6, 'Model Kemitraan Ayam Layer', 'model-kemitraan-ayam-layer', '', 'model_kemitraan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(7, 6, 'Struktur Biaya dan Pembukuan Ayam Layer', 'struktur-biaya-dan-pembukuan-ayam-layer', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-07-22', '', 'Y', '', 'publish'),
(8, 5, 'Standar Teknis Pemeliharaan Ayam Broiler', 'standar-teknis-pemeliharaan-ayam-broiler', '<p>Ayam Broiler atau Ayam Pedaging adalah ayam ras yang mampu tumbuh cepat sehingga dapat menghasilkan daging dalam waktu relatif singkat yaitu 5 hingga 7 minggu.</p>\r\n\r\n<p>Dalam pemeliharaan Ayam Broiler, terdapat beberapa syarat kondisi teknis yang ideal yang harus diperhatikan yaitu Lokasi Kandang, Sirkulasi Udara di dalam Kandang, Kemudahan dalam Mendapatkan Sarana Produksi serta Suhu Udara di Dalam Kandang.</p>\r\n\r\n<p>sumber : <a href=\"https://dispertan.bantenprov.go.id/lama/read/artikel/339/BUDIDAYA-AYAM-PEDAGING-BROILER.html\">Dinas Pertanian Provinsi Banten</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'standar_teknis_pemeliharaan_ayam_broiler.png', '', '2021-10-25', '', 'Y', '', 'Publish'),
(9, 5, 'Regulasi Terkait Bisnis Ayam Broiler', 'regulasi-terkait-bisnis-ayam-broiler', '', 'regulasi_terkait_bisnis_ayam_broiler.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(10, 5, 'Bisnis Proses Ayam Broiler', 'bisnis-proses-ayam-broiler', '', 'bisnis_proses_ayam_broiler.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(11, 5, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '<p>Kandang ayam broiler memiliki dua tipe yaitu berbentuk panggung dan tanpa panggung (litter). Masing-masing tipe memiliki keunggulan masing-masing. Tipe Panggung memiliki lantai kandang yang cenderung lebih bersih karena kotoran ayam langsung jatuh ke tanah dan tidak memerlukan alas kandang sehingga pengelolaan lebih efisien. Namun, biaya pembuatan jenis kandang ini lebih besar. Sedangkan tipe Litter merupakan jenis kandang yang banyak dipakai oleh peternak karena lebih mudah dalam pembuatannya dan biayanya lebih murah.</p>\r\n\r\n<p>Sumber : <a href=\"https://dispertan.bantenprov.go.id/lama/read/artikel/339/BUDIDAYA-AYAM-PEDAGING-BROILER.html\">Dinas Pertanian Provinsi Banten</a></p>\r\n', 'manajemen_pengelolaan_kandang.png', '', '2021-10-25', '', 'Y', '', 'Publish'),
(12, 5, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(13, 5, 'Model Kemitraan Ayam Broiler', 'model-kemitraan-ayam-broiler', '', 'model_kemitraan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(14, 5, 'Struktur Biaya dan Pembukuan  Ayam Broiler', 'struktur-biaya-dan-pembukuan--ayam-broiler', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(15, 4, 'Standar Teknis Pemeliharaan Sapi', 'standar-teknis-pemeliharaan-sapi', '', 'standar_teknis_pemeliharaan_sapi.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(16, 4, 'Regulasi Terkait Bisnis Penggemukan Sapi', 'regulasi-terkait-bisnis-penggemukan-sapi', '', 'regulasi_terkait_bisnis_penggemukan_sapi.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(17, 4, 'Bisnis Proses Penggemukan Sapi', 'bisnis-proses-penggemukan-sapi', '', 'bisnis_proses_penggemukan_sapi.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(18, 4, 'Manajemen Pengelolaan Kandang', 'manajemen-pengelolaan-kandang', '', 'manajemen_pengelolaan_kandang_sapi.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(19, 4, 'Manajemen Pengelolaan Pakan', 'manajemen-pengelolaan-pakan', '', 'manajemen_pengelolaan_pakan_sapi.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(20, 4, 'Model Kemitraan Penggemukan Sapi', 'model-kemitraan-penggemukan-sapi', '', 'model_kemitraan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(21, 4, 'Struktur Biaya dan Pembukuan Penggemukan Sapi', 'struktur-biaya-dan-pembukuan-penggemukan-sapi', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(22, 4, 'Analisa Finansial dan Mitigasi Resiko', 'analisa-finansial-dan-mitigasi-resiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(23, 3, 'Standar Produksi dan Produktifitas', 'standar-produksi-dan-produktifitas', '', 'standar_produksi_dan_produktifitas.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(24, 3, 'Regulasi Pertanian', 'regulasi-pertanian', '', 'regulasi_pertanian.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(25, 3, 'Bisnis Proses Budidaya', 'bisnis-proses-budidaya', '', 'bisnis_proses_budidaya.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(26, 3, 'Manajemen Pengelolaan Lahan dan Pemupukan padi', 'manajemen-pengelolaan-lahan-dan-pemupukan-padi', '', 'manajemen_pengelolaan_lahan_dan_pemupukan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(27, 3, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_bisnis.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(28, 3, 'Manajemen Panen', 'manajemen-panen', '', 'manajemen_panen.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(29, 3, 'Pengelolaan air', 'pengelolaan-air', '', 'pengelolaan_air.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(30, 3, 'Model Kemitraan BP', 'model-kemitraan-bp', '', 'model_kemitraan.png', '', '2021-07-22', '', 'Y', '', 'Publish'),
(31, 3, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(32, 3, 'Analisa Finansial dan Mitigasi Risiko', 'analisa-finansial-dan-mitigasi-risiko', '', 'analisa_finansial_dan_mitigasi_resiko.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(33, 3, 'Manajemen Pasca Panen', 'manajemen-pasca-panen', '', 'manajemen_panen.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(34, 2, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(35, 2, 'Standar Teknis Usaha', 'standar-teknis-usaha', '', 'standar_teknis_usaha.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(36, 2, 'Laba Usaha dan Laba Operasional', 'laba-usaha-dan-laba-operasional', '', 'laba_usaha_dan_laba_oprasional.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(37, 2, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(38, 2, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(39, 2, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(40, 1, 'Gambaran Umum Karakteristik Bisnis', 'gambaran-umum-karakteristik-bisnis', '', 'gambaran_umum_karakteristik_produk_olahan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(41, 1, 'Manajemen Pemasaran', 'manajemen-pemasaran', '', 'manajemen_pemasaran .png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(42, 1, 'Model Kemitraan', 'model-kemitraan', '', 'model_kemitraan.png', '', '2021-04-06', '', 'Y', '', 'Publish'),
(43, 1, 'Struktur Biaya dan Pembukuan', 'struktur-biaya-dan-pembukuan', '', 'struktur_biaya_dan_pembukuan.png', '', '2021-04-06', '', 'Y', '', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengantar`
--

CREATE TABLE `tbl_pengantar` (
  `id_pengantar` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `icon_1` varchar(200) NOT NULL,
  `judul_icon_1` varchar(50) NOT NULL,
  `deskripsi1` text DEFAULT NULL,
  `icon_2` varchar(200) NOT NULL,
  `judul_icon_2` varchar(50) NOT NULL,
  `deskripsi2` text DEFAULT NULL,
  `icon_3` varchar(200) NOT NULL,
  `judul_icon_3` varchar(50) NOT NULL,
  `deskripsi3` text DEFAULT NULL,
  `id_status` mediumint(20) NOT NULL DEFAULT 1,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengantar`
--

INSERT INTO `tbl_pengantar` (`id_pengantar`, `judul`, `deskripsi`, `icon_1`, `judul_icon_1`, `deskripsi1`, `icon_2`, `judul_icon_2`, `deskripsi2`, `icon_3`, `judul_icon_3`, `deskripsi3`, `id_status`, `created_by`, `created_at`) VALUES
(1, 'KESATRIAAN ENTREPRENEUR INDONESIA', '<p dir=\"ltr\" style=\"text-align:justify\">Kesatriaan Entrepreneur Indonesia (KEI) merupakan yayasan dibawah naungan PT Widodo Makmur Perkasa, Tbk. Kami bertekad menjadi motor penggerak perekonomian nasional dengan mencetak 1.000.000 entrepreneur muda melalui pengembangan keterampilan dan pengetahuan untuk membangun dan memimpin usaha secara mandiri. Kelas perdana entrepreneur muda kami dimulai sejak November 2020 dengan jumlah peserta angkatan pertama sebanyak 60 orang.</p>\r\n', 'Logo_Training.png', 'Pendidikan dan Pelatihan', '<p style=\"text-align:justify\">Pendidikan dan pelatihan merupakan salah satu program utama kami yang bertujuan untuk mencetak entrepreneur muda pada sektor pertanian, peternakan dan pangan. Dalam pelatihan yang dilakukan secara berkala, para calon entrepreneur muda akan dibekali pengetahuan seputar agrobisnis. Para peserta yang kemudian lolos seleksi berhak mengikuti program lanjutan berupa inkubasi bisnis dan berkesempatan mendapat akses pembiayaan dan kemitraan dengan usaha besar di dunia pertanian dan peternakan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Logo_Inkubator_bisnis.png', 'Inkubator Bisnis dan Permodalan ', '<p style=\"text-align:justify\">Mitra atau enterpreneur muda yang tengah merintis usahanya akan didampingi secara intensif dengan diberikan layanan berupa konsultasi dan mentoring dari tenaga ahli yang telah berpengalaman dibidangnya. Selain itu, para Mitra juga akan diberi akses sumber informasi dan dukungan pengembangan inovasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Logo_workshop.png', 'Workshop dan Seminar', '<p dir=\"ltr\" style=\"text-align:justify\">Program ini merupakan program kolaborasi dari beberapa pihak seperti Universitas, Asosiasi dan Pelaku Ekonomi dengan tujuan untuk mengembangkan jaringan, menggagas problem solving dan melakukan aksi bersama melalui networking. Workshop dan Seminar dilakukan dengan jumlah peserta terbatas dengan key speaker yang expert dibidangnya. Program ini diselenggarakan dalam dua format, virtual event melalui aplikasi meeting online dan workshop offline yang berlokasi di Joglo Tumiyono sebagai pusat pelatihan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'admin', '2021-04-08 17:00:00');

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
(946, '2021-04-06 06:08:26', '::1', 'Opera'),
(947, '2021-04-06 07:05:25', '103.66.198.42', 'Opera'),
(948, '2021-04-06 07:07:28', '110.137.51.39', 'Chrome'),
(949, '2021-04-06 08:17:58', '182.2.133.92', 'Chrome'),
(950, '2021-04-06 11:40:40', '114.124.214.172', 'Chrome'),
(951, '2021-04-06 13:33:17', '114.5.250.93', 'Chrome'),
(952, '2021-04-06 15:12:47', '103.213.129.126', 'Chrome'),
(953, '2021-04-06 16:34:01', '114.122.72.217', 'Chrome'),
(954, '2021-04-06 16:35:14', '114.122.72.69', 'Chrome'),
(955, '2021-04-06 16:37:13', '114.122.69.21', 'Chrome'),
(956, '2021-04-07 01:06:48', '103.40.122.89', 'Chrome'),
(957, '2021-04-07 01:09:34', '103.66.198.42', 'Chrome'),
(958, '2021-04-07 01:19:53', '114.79.20.98', 'Chrome'),
(959, '2021-04-07 01:47:40', '114.5.250.93', 'Chrome'),
(960, '2021-04-07 04:14:35', '125.161.189.226', 'Chrome'),
(961, '2021-04-07 06:24:18', '114.122.69.141', 'Chrome'),
(962, '2021-04-07 06:27:33', '140.213.9.230', 'Other'),
(963, '2021-04-07 09:02:09', '114.122.69.21', 'Other'),
(964, '2021-04-07 10:40:13', '180.245.64.78', 'Firefox'),
(965, '2021-04-07 10:55:09', '140.213.9.224', 'Chrome'),
(966, '2021-04-07 17:17:49', '103.40.122.89', 'Chrome'),
(967, '2021-04-07 17:56:27', '34.96.130.5', 'Other'),
(968, '2021-04-08 01:12:18', '103.66.198.42', 'Chrome'),
(969, '2021-04-08 01:25:03', '114.79.22.12', 'Chrome'),
(970, '2021-04-08 03:45:52', '112.215.170.4', 'Chrome'),
(971, '2021-04-08 04:07:06', '120.188.65.156', 'Chrome'),
(972, '2021-04-08 09:34:30', '182.2.72.248', 'Chrome'),
(973, '2021-04-08 09:45:18', '182.2.132.66', 'Chrome'),
(974, '2021-04-08 10:06:23', '3.113.215.118', 'Chrome'),
(975, '2021-04-08 16:05:31', '114.79.21.138', 'Chrome'),
(976, '2021-04-08 18:07:19', '34.96.130.26', 'Other'),
(977, '2021-04-08 20:35:32', '34.86.35.18', 'Other'),
(978, '2021-04-08 23:58:35', '103.40.122.89', 'Chrome'),
(979, '2021-04-09 03:09:17', '103.66.198.42', 'Chrome'),
(980, '2021-04-09 03:26:06', '110.138.89.1', 'Chrome'),
(981, '2021-04-09 04:28:26', '182.2.69.134', 'Chrome'),
(982, '2021-04-09 05:14:20', '114.5.250.93', 'Chrome'),
(983, '2021-04-09 08:40:15', '110.138.81.92', 'Chrome'),
(984, '2021-04-09 11:32:39', '114.5.105.126', 'Chrome'),
(985, '2021-04-09 13:20:23', '182.2.71.236', 'Chrome'),
(986, '2021-04-10 03:22:28', '103.40.122.89', 'Chrome'),
(987, '2021-04-10 03:26:51', '103.213.129.126', 'Chrome'),
(988, '2021-04-10 04:47:25', '180.245.64.78', 'Chrome'),
(989, '2021-04-10 05:21:32', '34.86.35.23', 'Other'),
(990, '2021-04-10 07:03:09', '182.2.70.115', 'Chrome'),
(991, '2021-04-10 07:07:42', '140.213.33.11', 'Chrome'),
(992, '2021-04-10 13:44:02', '182.2.71.135', 'Chrome'),
(993, '2021-04-10 14:30:58', '114.5.250.93', 'Chrome'),
(994, '2021-04-10 17:50:13', '112.215.242.97', 'Chrome'),
(995, '2021-04-10 18:03:17', '114.79.23.67', 'Chrome'),
(996, '2021-04-11 01:41:44', '114.4.212.164', 'Chrome'),
(997, '2021-04-11 03:45:00', '13.66.139.30', 'Bing'),
(998, '2021-04-11 11:01:43', '182.2.36.114', 'Chrome'),
(999, '2021-04-11 11:02:12', '182.2.40.114', 'Chrome'),
(1000, '2021-04-11 11:38:57', '114.122.75.164', 'Chrome'),
(1001, '2021-04-11 19:04:35', '182.2.137.159', 'Chrome'),
(1002, '2021-04-12 01:21:48', '103.66.198.42', 'Chrome'),
(1003, '2021-04-12 01:28:06', '114.5.211.60', 'Chrome'),
(1004, '2021-04-12 03:49:43', '180.245.86.114', 'Chrome'),
(1005, '2021-04-12 03:59:28', '92.118.160.37', 'Vario'),
(1006, '2021-04-12 07:45:20', '13.66.139.30', 'Bing'),
(1007, '2021-04-12 11:53:07', '35.180.26.153', 'Chrome'),
(1008, '2021-04-12 21:20:23', '112.215.235.58', 'Chrome'),
(1009, '2021-04-12 21:20:48', '140.213.15.140', 'Chrome'),
(1010, '2021-04-13 02:22:07', '103.66.198.42', 'Firefox'),
(1011, '2021-04-13 06:56:48', '110.138.82.126', 'Chrome'),
(1012, '2021-04-14 01:07:50', '103.66.198.42', 'Chrome'),
(1013, '2021-04-14 07:17:09', '110.138.80.134', 'Chrome'),
(1014, '2021-04-15 01:18:18', '103.66.198.42', 'Chrome'),
(1015, '2021-04-16 01:19:33', '103.66.198.42', 'Chrome'),
(1016, '2021-04-16 02:05:43', '140.213.35.125', 'Chrome'),
(1017, '2021-04-16 04:00:29', '140.213.35.129', 'Chrome'),
(1018, '2021-04-16 07:48:13', '114.4.212.251', 'Other'),
(1019, '2021-04-16 07:52:57', '103.40.122.89', 'Chrome'),
(1020, '2021-04-16 09:18:40', '110.138.83.184', 'Chrome'),
(1021, '2021-04-16 12:59:34', '118.136.102.60', 'Chrome'),
(1022, '2021-04-17 14:02:47', '103.213.129.230', 'Firefox'),
(1023, '2021-04-17 19:33:47', '114.124.166.133', 'Chrome'),
(1024, '2021-04-17 19:34:31', '114.124.170.28', 'Chrome'),
(1025, '2021-04-18 03:59:25', '103.213.129.230', 'Firefox'),
(1026, '2021-04-18 05:34:23', '13.66.139.157', 'Bing'),
(1027, '2021-04-18 10:48:12', '140.213.35.110', 'Chrome'),
(1028, '2021-04-19 02:41:21', '103.66.198.42', 'Chrome'),
(1029, '2021-04-19 07:41:00', '103.40.122.89', 'Chrome'),
(1030, '2021-04-19 07:55:42', '140.213.35.110', 'Chrome'),
(1031, '2021-04-19 09:15:28', '110.138.81.251', 'Chrome'),
(1032, '2021-04-19 16:43:08', '51.15.251.143', 'Other'),
(1033, '2021-04-20 01:26:53', '118.136.102.60', 'Chrome'),
(1034, '2021-04-20 02:33:21', '103.66.198.42', 'Chrome'),
(1035, '2021-04-20 05:09:44', '36.70.170.186', 'Chrome'),
(1036, '2021-04-20 11:03:35', '103.40.122.89', 'Chrome'),
(1037, '2021-04-20 18:23:37', '103.40.122.89', 'Chrome'),
(1038, '2021-04-21 01:55:00', '182.2.69.188', 'Chrome'),
(1039, '2021-04-21 02:06:28', '103.66.198.42', 'Chrome'),
(1040, '2021-04-21 04:31:09', '182.2.169.168', 'Chrome'),
(1041, '2021-04-21 07:32:24', '114.4.215.64', 'Chrome'),
(1042, '2021-04-21 19:15:23', '103.40.122.89', 'Chrome'),
(1043, '2021-04-22 01:09:11', '103.66.198.42', 'Chrome'),
(1044, '2021-04-22 10:46:14', '114.124.174.92', 'Safari'),
(1045, '2021-04-22 14:25:14', '51.158.118.231', 'Other'),
(1046, '2021-04-23 01:17:17', '114.124.239.226', 'Chrome'),
(1047, '2021-04-23 01:21:56', '103.66.198.42', 'Chrome'),
(1048, '2021-04-23 07:06:55', '110.138.90.158', 'Chrome'),
(1049, '2021-04-24 13:35:29', '182.2.74.130', 'Other'),
(1050, '2021-04-24 13:40:57', '125.166.136.219', 'Chrome'),
(1051, '2021-04-24 13:46:34', '115.178.255.119', 'Chrome'),
(1052, '2021-04-24 14:01:30', '182.253.61.5', 'Opera'),
(1053, '2021-04-24 14:37:34', '114.10.7.119', 'Chrome'),
(1054, '2021-04-24 16:11:01', '34.228.195.73', 'Chrome'),
(1055, '2021-04-24 17:26:31', '114.124.244.141', 'Chrome'),
(1056, '2021-04-24 17:51:08', '114.124.239.188', 'Chrome'),
(1057, '2021-04-24 20:33:03', '36.73.57.183', 'Chrome'),
(1058, '2021-04-24 21:11:46', '120.188.82.107', 'Chrome'),
(1059, '2021-04-24 21:15:52', '18.198.189.162', 'Firefox'),
(1060, '2021-04-25 04:59:45', '114.10.7.119', 'Chrome'),
(1061, '2021-04-25 07:54:24', '118.136.102.60', 'Chrome'),
(1062, '2021-04-25 19:47:33', '120.188.82.107', 'Chrome'),
(1063, '2021-04-26 05:57:31', '103.213.129.234', 'Opera'),
(1064, '2021-04-26 09:22:51', '103.66.198.42', 'Chrome'),
(1065, '2021-04-27 00:41:13', '207.46.13.171', 'Bing'),
(1066, '2021-04-27 02:55:15', '103.66.198.42', 'Chrome'),
(1067, '2021-04-27 03:27:03', '61.94.124.187', 'Chrome'),
(1068, '2021-04-27 23:25:37', '207.46.13.171', 'Bing'),
(1069, '2021-04-28 01:54:55', '103.66.198.42', 'Chrome'),
(1070, '2021-04-28 02:53:31', '180.242.145.133', 'Chrome'),
(1071, '2021-04-29 01:48:01', '103.66.198.42', 'Chrome'),
(1072, '2021-04-30 01:35:35', '103.66.198.42', 'Chrome'),
(1073, '2021-04-30 04:39:56', '110.138.90.190', 'Chrome'),
(1074, '2021-05-03 02:06:15', '103.66.198.42', 'Chrome'),
(1075, '2021-05-03 04:21:29', '114.5.211.51', 'Other'),
(1076, '2021-05-04 01:16:36', '103.66.198.42', 'Chrome'),
(1077, '2021-05-04 05:51:14', '36.69.100.166', 'Firefox'),
(1078, '2021-05-04 07:39:56', '182.0.169.100', 'Other'),
(1079, '2021-05-04 12:05:29', '180.244.165.84', 'Chrome'),
(1080, '2021-05-05 01:11:38', '103.66.198.42', 'Chrome'),
(1081, '2021-05-05 03:22:12', '167.99.60.182', 'Mozilla'),
(1082, '2021-05-05 03:40:41', '110.138.93.126', 'Firefox'),
(1083, '2021-05-05 05:17:23', '159.89.178.51', 'Mozilla'),
(1084, '2021-05-05 15:02:46', '180.252.123.250', 'Chrome'),
(1085, '2021-05-06 01:29:55', '103.66.198.42', 'Chrome'),
(1086, '2021-05-07 01:05:41', '103.66.198.42', 'Chrome'),
(1087, '2021-05-07 08:00:36', '125.165.141.176', 'Firefox'),
(1088, '2021-05-10 01:10:04', '103.66.198.42', 'Chrome'),
(1089, '2021-05-10 03:05:04', '125.161.169.70', 'Chrome'),
(1090, '2021-05-10 06:26:07', '207.46.13.171', 'Bing'),
(1091, '2021-05-11 01:09:52', '103.66.198.42', 'Chrome'),
(1092, '2021-05-13 12:16:53', '103.213.129.234', 'Chrome'),
(1093, '2021-05-13 14:10:48', '107.150.52.195', 'Chrome'),
(1094, '2021-05-14 06:56:09', '118.136.6.226', 'Chrome'),
(1095, '2021-05-17 01:40:53', '103.66.198.42', 'Chrome'),
(1096, '2021-05-17 03:41:58', '36.70.82.76', 'Firefox'),
(1097, '2021-05-18 01:07:19', '103.66.198.42', 'Chrome'),
(1098, '2021-05-18 01:36:55', '114.79.1.126', 'Chrome'),
(1099, '2021-05-18 07:29:47', '51.158.108.61', 'Other'),
(1100, '2021-05-19 01:20:45', '103.66.198.42', 'Chrome'),
(1101, '2021-05-19 04:56:09', '54.183.118.204', 'Firefox'),
(1102, '2021-05-19 15:00:17', '54.175.216.196', 'Chrome'),
(1103, '2021-05-19 22:17:12', '40.77.167.5', 'Bing'),
(1104, '2021-05-20 01:05:05', '103.66.198.42', 'Chrome'),
(1105, '2021-05-20 02:35:37', '69.30.225.101', 'Chrome'),
(1106, '2021-05-20 05:41:58', '157.55.39.145', 'Bing'),
(1107, '2021-05-20 06:06:54', '180.243.45.187', 'Chrome'),
(1108, '2021-05-20 13:47:50', '51.15.205.3', 'Other'),
(1109, '2021-05-21 01:13:44', '157.55.39.145', 'Bing'),
(1110, '2021-05-21 01:36:56', '103.66.198.42', 'Chrome'),
(1111, '2021-05-21 03:19:55', '40.77.167.5', 'Bing'),
(1112, '2021-05-22 13:01:07', '213.211.241.42', 'Chrome'),
(1113, '2021-05-23 16:54:51', '182.0.201.171', 'Chrome'),
(1114, '2021-05-23 17:00:05', '182.0.208.175', 'Chrome'),
(1115, '2021-05-24 01:18:30', '103.66.198.42', 'Chrome'),
(1116, '2021-05-24 02:48:45', '35.183.133.136', 'Chrome'),
(1117, '2021-05-24 06:22:06', '110.138.124.240', 'Chrome'),
(1118, '2021-05-25 01:25:13', '103.66.198.42', 'Chrome'),
(1119, '2021-05-25 06:09:08', '36.70.90.89', 'Chrome'),
(1120, '2021-05-27 01:40:43', '103.66.198.42', 'Chrome'),
(1121, '2021-05-28 00:53:06', '40.77.167.5', 'Bing'),
(1122, '2021-05-28 01:14:40', '103.66.198.42', 'Chrome'),
(1123, '2021-05-28 03:33:57', '157.55.39.145', 'Bing'),
(1124, '2021-05-28 19:23:31', '157.55.39.145', 'Bing'),
(1125, '2021-05-29 14:42:22', '118.136.103.38', 'Chrome'),
(1126, '2021-05-30 04:14:58', '118.136.103.38', 'Chrome'),
(1127, '2021-05-31 04:41:36', '103.66.198.42', 'Chrome'),
(1128, '2021-05-31 04:42:48', '110.138.91.153', 'Firefox'),
(1129, '2021-05-31 04:54:19', '114.5.214.215', 'Other'),
(1130, '2021-06-01 16:15:55', '64.225.54.38', 'Mozilla'),
(1131, '2021-06-01 17:34:57', '157.55.39.145', 'Bing'),
(1132, '2021-06-03 03:09:35', '103.66.198.42', 'Chrome'),
(1133, '2021-06-03 18:34:55', '134.122.7.157', 'Mozilla'),
(1134, '2021-06-03 18:45:12', '161.35.180.73', 'Mozilla'),
(1135, '2021-06-03 19:32:12', '40.77.167.5', 'Bing'),
(1136, '2021-06-03 22:08:44', '157.55.39.145', 'Bing'),
(1137, '2021-06-04 03:47:41', '103.66.198.42', 'Firefox'),
(1138, '2021-06-04 17:27:22', '157.55.39.145', 'Bing'),
(1139, '2021-06-06 19:28:46', '54.153.59.2', 'Chrome'),
(1140, '2021-06-07 09:08:39', '103.66.198.42', 'Chrome'),
(1141, '2021-06-07 17:33:16', '157.55.39.145', 'Bing'),
(1142, '2021-06-08 02:09:42', '103.66.198.42', 'Chrome'),
(1143, '2021-06-08 14:57:36', '20.191.45.212', 'Mozilla'),
(1144, '2021-06-09 01:14:42', '103.66.198.42', 'Chrome'),
(1145, '2021-06-09 03:42:39', '103.16.220.130', 'Chrome'),
(1146, '2021-06-09 12:13:59', '157.55.39.145', 'Bing'),
(1147, '2021-06-09 16:18:29', '118.136.102.61', 'Chrome'),
(1148, '2021-06-10 02:29:58', '13.235.216.64', 'Chrome'),
(1149, '2021-06-10 10:26:47', '103.66.198.42', 'Chrome'),
(1150, '2021-06-10 13:23:19', '20.191.45.212', 'Mozilla'),
(1151, '2021-06-10 17:26:54', '157.55.39.145', 'Bing'),
(1152, '2021-06-12 00:14:35', '157.55.39.145', 'Bing'),
(1153, '2021-06-12 23:47:26', '40.77.167.5', 'Bing'),
(1154, '2021-06-13 17:24:33', '157.55.39.145', 'Bing'),
(1155, '2021-06-14 02:07:54', '103.66.198.42', 'Chrome'),
(1156, '2021-06-14 08:53:42', '120.188.1.136', 'Other'),
(1157, '2021-06-15 04:37:16', '103.40.122.89', 'Other'),
(1158, '2021-06-15 06:23:53', '103.66.198.42', 'Chrome'),
(1159, '2021-06-15 16:49:55', '157.55.39.145', 'Bing'),
(1160, '2021-06-16 10:46:06', '20.191.45.212', 'Mozilla'),
(1161, '2021-06-16 18:06:29', '157.55.39.145', 'Bing'),
(1162, '2021-06-17 04:02:14', '103.66.198.42', 'Firefox'),
(1163, '2021-06-18 14:59:07', '50.16.241.114', 'Mozilla'),
(1164, '2021-06-19 15:52:46', '3.137.149.73', 'Chrome'),
(1165, '2021-06-19 18:01:21', '40.77.167.59', 'Bing'),
(1166, '2021-06-21 13:27:36', '34.71.20.225', 'Firefox'),
(1167, '2021-06-21 19:14:10', '34.71.20.225', 'Chrome'),
(1168, '2021-06-22 07:35:47', '40.77.167.59', 'Bing'),
(1169, '2021-06-22 08:08:07', '103.40.122.89', 'Chrome'),
(1170, '2021-06-22 18:05:35', '40.77.167.59', 'Bing'),
(1171, '2021-06-23 16:09:21', '103.247.141.30', 'Chrome'),
(1172, '2021-06-25 18:00:28', '40.77.167.59', 'Bing'),
(1173, '2021-06-26 20:49:30', '78.182.141.42', 'Firefox'),
(1174, '2021-06-26 21:38:08', '40.77.167.59', 'Bing'),
(1175, '2021-06-28 17:58:11', '40.77.167.59', 'Bing'),
(1176, '2021-06-29 02:28:48', '52.204.97.54', 'Mozilla'),
(1177, '2021-06-29 06:49:08', '20.191.45.212', 'Mozilla'),
(1178, '2021-06-30 04:03:29', '103.66.198.42', 'Firefox'),
(1179, '2021-06-30 11:33:32', '198.204.240.242', 'Chrome'),
(1180, '2021-06-30 15:51:33', '163.172.180.25', 'Other'),
(1181, '2021-07-01 17:56:04', '40.77.167.59', 'Bing'),
(1182, '2021-07-04 01:52:48', '40.77.167.59', 'Bing'),
(1183, '2021-07-04 04:28:13', '40.77.167.69', 'Bing'),
(1184, '2021-07-04 12:44:18', '54.213.7.95', 'Chrome'),
(1185, '2021-07-04 12:47:43', '35.182.16.108', 'Chrome'),
(1186, '2021-07-04 17:56:17', '40.77.167.59', 'Bing'),
(1187, '2021-07-06 05:15:18', '180.248.178.27', 'Chrome'),
(1188, '2021-07-07 01:06:16', '142.54.177.6', 'Chrome'),
(1189, '2021-07-07 07:11:02', '103.40.122.89', 'Chrome'),
(1190, '2021-07-07 18:58:46', '40.77.167.59', 'Bing'),
(1191, '2021-07-08 06:29:39', '167.71.181.206', 'Mozilla'),
(1192, '2021-07-08 07:37:06', '167.71.106.96', 'Mozilla'),
(1193, '2021-07-09 00:51:23', '18.157.87.39', 'Safari'),
(1194, '2021-07-09 09:49:10', '40.77.167.30', 'Bing'),
(1195, '2021-07-09 19:53:53', '40.77.167.59', 'Bing'),
(1196, '2021-07-11 07:35:25', '50.16.247.234', 'Mozilla'),
(1197, '2021-07-11 08:35:26', '40.77.167.30', 'Bing'),
(1198, '2021-07-11 13:32:39', '40.77.167.59', 'Bing'),
(1199, '2021-07-12 23:06:47', '3.120.145.13', 'Chrome'),
(1200, '2021-07-13 07:17:21', '103.40.122.89', 'Chrome'),
(1201, '2021-07-13 18:55:52', '40.77.167.59', 'Bing'),
(1202, '2021-07-17 05:14:00', '52.5.190.19', 'Mozilla'),
(1203, '2021-07-17 19:58:47', '207.46.13.34', 'Bing'),
(1204, '2021-07-19 04:39:22', '103.40.122.89', 'Chrome'),
(1205, '2021-07-19 05:53:39', '103.66.198.42', 'Chrome'),
(1206, '2021-07-19 16:24:14', '103.213.129.153', 'Firefox'),
(1207, '2021-07-19 16:25:55', '118.136.6.79', 'Chrome'),
(1208, '2021-07-19 20:36:31', '157.55.39.138', 'Bing'),
(1209, '2021-07-21 02:08:43', '140.213.7.158', 'Firefox'),
(1210, '2021-07-21 02:28:50', '112.215.238.160', 'Firefox'),
(1211, '2021-07-21 03:05:54', '103.66.198.42', 'Chrome'),
(1212, '2021-07-21 03:07:56', '110.138.92.185', 'Chrome'),
(1213, '2021-07-21 15:50:36', '157.55.39.29', 'Bing'),
(1214, '2021-07-22 03:48:40', '118.96.66.104', 'Chrome'),
(1215, '2021-07-22 03:51:43', '103.66.198.42', 'Chrome'),
(1216, '2021-07-23 01:13:53', '103.66.198.42', 'Chrome'),
(1217, '2021-07-24 08:09:36', '50.16.241.113', 'Mozilla'),
(1218, '2021-07-24 16:33:46', '35.154.36.178', 'Chrome'),
(1219, '2021-07-25 12:18:36', '157.55.39.138', 'Bing'),
(1220, '2021-07-25 20:35:32', '157.55.39.138', 'Bing'),
(1221, '2021-07-26 03:29:10', '92.118.160.9', 'Other'),
(1222, '2021-07-26 05:11:37', '103.40.122.89', 'Chrome'),
(1223, '2021-07-26 05:41:45', '110.138.90.137', 'Firefox'),
(1224, '2021-07-26 05:52:44', '180.252.118.57', 'Firefox'),
(1225, '2021-07-26 05:56:44', '103.66.198.42', 'Chrome'),
(1226, '2021-07-26 05:56:45', '110.50.80.198', 'Chrome'),
(1227, '2021-07-26 09:29:52', '110.50.80.197', 'Chrome'),
(1228, '2021-07-26 13:39:48', '114.5.212.184', 'Chrome'),
(1229, '2021-07-26 15:41:13', '92.118.160.61', 'Vario'),
(1230, '2021-07-27 01:53:45', '144.86.173.78', 'Other'),
(1231, '2021-07-27 02:03:50', '144.86.173.33', 'Other'),
(1232, '2021-07-27 03:48:14', '103.66.198.42', 'Firefox'),
(1233, '2021-07-27 03:58:12', '180.244.195.246', 'Chrome'),
(1234, '2021-07-28 06:36:07', '180.243.18.99', 'Chrome'),
(1235, '2021-07-28 20:35:20', '157.55.39.138', 'Bing'),
(1236, '2021-07-30 04:27:01', '103.82.15.175', 'Internet Explorer'),
(1237, '2021-07-31 00:12:28', '92.118.160.37', 'Other'),
(1238, '2021-07-31 05:28:29', '144.86.173.148', 'Other'),
(1239, '2021-07-31 09:16:57', '144.86.173.128', 'Other'),
(1240, '2021-07-31 20:35:34', '157.55.39.138', 'Bing'),
(1241, '2021-08-01 07:06:57', '54.208.100.253', 'Mozilla'),
(1242, '2021-08-01 12:33:29', '92.118.160.45', 'Vario'),
(1243, '2021-08-01 23:02:07', '92.118.160.57', 'Vario'),
(1244, '2021-08-02 13:22:24', '92.118.160.61', 'Other'),
(1245, '2021-08-03 20:33:34', '40.77.167.26', 'Bing'),
(1246, '2021-08-04 00:46:48', '159.203.64.111', 'Mozilla'),
(1247, '2021-08-04 04:44:20', '144.86.173.77', 'Other'),
(1248, '2021-08-04 09:48:31', '144.86.173.86', 'Other'),
(1249, '2021-08-04 13:48:25', '50.16.241.113', 'Mozilla'),
(1250, '2021-08-04 17:04:48', '207.46.13.157', 'Bing'),
(1251, '2021-08-05 01:28:58', '40.77.167.26', 'Bing'),
(1252, '2021-08-05 17:53:49', '138.197.111.205', 'Mozilla'),
(1253, '2021-08-05 18:09:15', '134.209.39.40', 'Mozilla'),
(1254, '2021-08-06 03:00:33', '144.86.173.67', 'Other'),
(1255, '2021-08-06 13:13:47', '45.130.83.76', 'Internet Explorer'),
(1256, '2021-08-06 19:24:33', '144.86.173.12', 'Other'),
(1257, '2021-08-06 21:03:33', '45.130.83.81', 'Internet Explorer'),
(1258, '2021-08-07 02:35:21', '51.158.108.61', 'Other'),
(1259, '2021-08-07 21:32:38', '45.130.83.27', 'Internet Explorer'),
(1260, '2021-08-08 10:03:10', '92.118.160.41', 'Vario'),
(1261, '2021-08-08 12:57:42', '45.130.83.81', 'Internet Explorer'),
(1262, '2021-08-09 02:06:31', '92.118.160.13', 'Other'),
(1263, '2021-08-09 08:57:41', '92.118.160.41', 'Vario'),
(1264, '2021-08-09 16:59:37', '163.172.148.199', 'Other'),
(1265, '2021-08-10 01:21:04', '103.66.198.42', 'Chrome'),
(1266, '2021-08-10 18:34:43', '92.118.160.57', 'Other'),
(1267, '2021-08-10 21:14:14', '40.77.167.26', 'Bing'),
(1268, '2021-08-13 11:33:51', '3.101.79.96', 'Other'),
(1269, '2021-08-13 16:09:36', '207.46.13.157', 'Bing'),
(1270, '2021-08-14 16:17:18', '5.255.231.205', 'YandexBot'),
(1271, '2021-08-16 02:22:30', '207.46.13.121', 'Bing'),
(1272, '2021-08-18 03:14:19', '110.137.51.26', 'Chrome'),
(1273, '2021-08-18 14:48:34', '199.47.87.141', 'Other'),
(1274, '2021-08-19 04:03:00', '103.66.198.42', 'Chrome'),
(1275, '2021-08-19 19:45:44', '207.46.13.26', 'Bing'),
(1276, '2021-08-20 02:06:51', '103.66.198.42', 'Chrome'),
(1277, '2021-08-20 21:49:44', '207.46.13.121', 'Bing'),
(1278, '2021-08-21 05:15:36', '34.226.244.159', 'Other'),
(1279, '2021-08-22 23:47:26', '207.46.13.121', 'Bing'),
(1280, '2021-08-23 14:45:23', '209.145.58.226', 'Other'),
(1281, '2021-08-26 08:35:35', '20.191.45.212', 'Mozilla'),
(1282, '2021-08-29 17:53:14', '20.191.45.212', 'Mozilla'),
(1283, '2021-08-30 23:43:07', '207.46.13.121', 'Bing'),
(1284, '2021-08-31 10:42:43', '125.166.87.194', 'Firefox'),
(1285, '2021-09-01 04:03:33', '223.255.230.49', 'Firefox'),
(1286, '2021-09-01 05:50:36', '223.255.230.34', 'Firefox'),
(1287, '2021-09-01 06:50:16', '116.206.13.83', 'Firefox'),
(1288, '2021-09-01 10:38:53', '157.245.216.86', 'Mozilla'),
(1289, '2021-09-04 16:48:56', '189.151.116.204', 'Internet Explorer'),
(1290, '2021-09-05 22:31:37', '61.135.15.181', 'Chrome'),
(1291, '2021-09-06 06:06:16', '110.138.95.99', 'Chrome'),
(1292, '2021-09-07 02:27:52', '223.255.230.12', 'Firefox'),
(1293, '2021-09-07 03:04:00', '103.66.198.42', 'Chrome'),
(1294, '2021-09-07 17:08:46', '207.46.13.121', 'Bing'),
(1295, '2021-09-07 19:07:38', '167.99.63.238', 'Mozilla'),
(1296, '2021-09-07 20:53:05', '174.138.61.55', 'Mozilla'),
(1297, '2021-09-08 00:48:04', '54.177.155.162', 'Other'),
(1298, '2021-09-08 02:21:00', '223.255.230.29', 'Firefox'),
(1299, '2021-09-08 02:59:31', '103.66.198.42', 'Chrome'),
(1300, '2021-09-09 11:12:14', '103.66.198.42', 'Chrome'),
(1301, '2021-09-09 15:00:59', '157.55.39.174', 'Bing'),
(1302, '2021-09-10 13:55:19', '103.66.198.42', 'Firefox'),
(1303, '2021-09-11 05:20:19', '114.5.213.33', 'Chrome'),
(1304, '2021-09-11 06:12:13', '112.215.238.180', 'Firefox'),
(1305, '2021-09-11 10:32:40', '103.66.198.42', 'Firefox'),
(1306, '2021-09-12 02:44:52', '52.5.190.19', 'Mozilla'),
(1307, '2021-09-12 09:23:02', '34.72.203.35', 'Firefox'),
(1308, '2021-09-12 23:35:34', '34.72.203.35', 'Chrome'),
(1309, '2021-09-13 05:40:12', '140.213.7.198', 'Firefox'),
(1310, '2021-09-13 05:41:23', '140.213.13.138', 'Firefox'),
(1311, '2021-09-13 07:16:49', '34.136.239.120', 'Chrome'),
(1312, '2021-09-13 21:36:55', '223.255.229.76', 'Chrome'),
(1313, '2021-09-14 01:43:55', '140.213.11.192', 'Firefox'),
(1314, '2021-09-14 01:55:40', '140.213.15.58', 'Firefox'),
(1315, '2021-09-15 00:59:42', '140.213.13.83', 'Firefox'),
(1316, '2021-09-15 04:53:39', '140.213.13.244', 'Firefox'),
(1317, '2021-09-15 10:50:28', '212.192.241.31', 'Other'),
(1318, '2021-09-15 18:30:39', '51.15.195.246', 'Other'),
(1319, '2021-09-15 19:51:06', '207.46.13.121', 'Bing'),
(1320, '2021-09-15 23:03:41', '3.97.71.142', 'Chrome'),
(1321, '2021-09-16 06:42:04', '74.120.14.114', 'Other'),
(1322, '2021-09-16 09:02:56', '50.16.241.113', 'Mozilla'),
(1323, '2021-09-16 11:55:12', '205.169.39.21', 'Chrome'),
(1324, '2021-09-16 22:41:54', '51.158.108.77', 'Other'),
(1325, '2021-09-17 06:42:34', '157.55.39.174', 'Bing'),
(1326, '2021-09-17 06:44:20', '140.213.2.212', 'Firefox'),
(1327, '2021-09-17 07:06:16', '140.213.9.183', 'Firefox'),
(1328, '2021-09-17 11:00:51', '212.192.241.31', 'Other'),
(1329, '2021-09-18 15:12:47', '5.45.207.79', 'YandexBot'),
(1330, '2021-09-18 15:55:16', '120.188.37.102', 'Chrome'),
(1331, '2021-09-19 00:26:33', '207.46.13.76', 'Bing'),
(1332, '2021-09-20 01:22:24', '112.215.238.52', 'Firefox'),
(1333, '2021-09-20 05:45:47', '112.215.238.48', 'Firefox'),
(1334, '2021-09-20 10:15:39', '35.212.72.131', 'Chrome'),
(1335, '2021-09-20 10:17:39', '35.211.210.203', 'Chrome'),
(1336, '2021-09-21 01:31:16', '112.215.171.207', 'Firefox'),
(1337, '2021-09-21 01:35:24', '112.215.170.159', 'Firefox'),
(1338, '2021-09-21 02:38:01', '125.165.139.2', 'Chrome'),
(1339, '2021-09-21 04:02:58', '112.215.170.179', 'Firefox'),
(1340, '2021-09-21 07:01:51', '36.79.104.19', 'Firefox'),
(1341, '2021-09-21 08:08:22', '112.215.171.216', 'Firefox'),
(1342, '2021-09-21 11:16:06', '157.55.39.163', 'Bing'),
(1343, '2021-09-22 01:40:00', '140.213.33.142', 'Firefox'),
(1344, '2021-09-23 05:10:39', '140.213.35.204', 'Firefox'),
(1345, '2021-09-23 07:10:55', '140.213.0.66', 'Firefox'),
(1346, '2021-09-24 01:21:01', '140.213.33.98', 'Firefox'),
(1347, '2021-09-24 03:26:56', '112.215.170.196', 'Firefox'),
(1348, '2021-09-24 04:21:27', '182.2.71.116', 'Chrome'),
(1349, '2021-09-24 07:25:03', '103.66.198.42', 'Chrome'),
(1350, '2021-09-24 08:00:18', '140.213.7.8', 'Firefox'),
(1351, '2021-09-24 08:04:21', '112.215.171.247', 'Firefox'),
(1352, '2021-09-24 17:12:59', '207.46.13.40', 'Bing'),
(1353, '2021-09-24 21:49:10', '13.77.171.82', 'Other'),
(1354, '2021-09-25 02:51:17', '3.133.127.207', 'Chrome'),
(1355, '2021-09-25 22:15:11', '37.77.124.135', 'Internet Explorer'),
(1356, '2021-09-26 02:25:38', '54.208.100.253', 'Mozilla'),
(1357, '2021-09-27 01:56:36', '140.213.35.222', 'Firefox'),
(1358, '2021-09-27 01:57:59', '140.213.5.19', 'Firefox'),
(1359, '2021-09-27 07:05:59', '112.215.171.26', 'Firefox'),
(1360, '2021-09-27 11:46:45', '176.32.25.239', 'Internet Explorer'),
(1361, '2021-09-29 16:12:43', '207.46.13.24', 'Bing'),
(1362, '2021-09-29 23:06:32', '157.245.0.212', 'Mozilla'),
(1363, '2021-10-01 02:51:56', '140.213.5.8', 'Firefox'),
(1364, '2021-10-01 04:10:04', '103.66.198.42', 'Chrome'),
(1365, '2021-10-01 19:40:31', '207.46.13.64', 'Bing'),
(1366, '2021-10-02 00:54:05', '207.46.13.40', 'Bing'),
(1367, '2021-10-02 12:32:17', '92.118.160.57', 'Vario'),
(1368, '2021-10-03 02:42:38', '92.118.160.45', 'Vario'),
(1369, '2021-10-03 06:50:16', '50.16.241.113', 'Mozilla'),
(1370, '2021-10-03 19:31:45', '92.118.160.13', 'Other'),
(1371, '2021-10-04 03:30:07', '112.215.151.175', 'Firefox'),
(1372, '2021-10-04 05:30:27', '34.133.167.121', 'Firefox'),
(1373, '2021-10-04 17:25:30', '213.180.203.98', 'YandexBot'),
(1374, '2021-10-05 01:16:54', '164.90.139.46', 'Mozilla'),
(1375, '2021-10-05 02:03:54', '103.66.198.42', 'Chrome'),
(1376, '2021-10-05 03:01:10', '45.55.38.209', 'Mozilla'),
(1377, '2021-10-07 02:52:36', '103.66.198.42', 'Chrome'),
(1378, '2021-10-07 22:08:01', '23.96.112.140', 'Other'),
(1379, '2021-10-07 22:51:49', '54.211.210.221', 'Firefox'),
(1380, '2021-10-08 05:52:32', '112.215.235.86', 'Firefox'),
(1381, '2021-10-08 09:17:49', '52.5.190.19', 'Mozilla'),
(1382, '2021-10-09 23:01:00', '207.46.13.181', 'Bing'),
(1383, '2021-10-11 05:39:45', '92.118.160.17', 'Other'),
(1384, '2021-10-11 12:30:57', '213.180.203.98', 'YandexBot'),
(1385, '2021-10-11 18:12:51', '207.46.13.181', 'Bing'),
(1386, '2021-10-12 08:12:03', '103.66.198.42', 'Chrome'),
(1387, '2021-10-12 14:25:02', '13.53.171.209', 'Firefox'),
(1388, '2021-10-12 21:41:51', '213.180.203.98', 'YandexBot'),
(1389, '2021-10-13 17:54:47', '157.55.39.2', 'Bing'),
(1390, '2021-10-14 03:52:31', '140.213.163.234', 'Firefox'),
(1391, '2021-10-15 09:20:43', '103.66.198.42', 'Chrome'),
(1392, '2021-10-16 15:38:47', '207.46.13.181', 'Bing'),
(1393, '2021-10-17 23:31:03', '92.118.160.37', 'Other'),
(1394, '2021-10-18 02:33:19', '103.40.122.89', 'Firefox'),
(1395, '2021-10-18 03:30:52', '103.66.198.42', 'Chrome'),
(1396, '2021-10-18 03:32:05', '36.84.18.166', 'Other'),
(1397, '2021-10-18 03:34:00', '112.215.238.45', 'Firefox'),
(1398, '2021-10-18 03:34:17', '140.213.163.124', 'Other'),
(1399, '2021-10-18 14:48:59', '18.221.237.168', 'Chrome'),
(1400, '2021-10-19 02:30:16', '103.40.122.89', 'Firefox'),
(1401, '2021-10-19 02:48:50', '92.118.160.5', 'Vario'),
(1402, '2021-10-21 04:11:09', '180.244.159.223', 'Firefox'),
(1403, '2021-10-21 04:49:14', '103.66.198.42', 'Chrome'),
(1404, '2021-10-21 17:59:52', '157.55.39.2', 'Bing'),
(1405, '2021-10-22 02:06:12', '103.40.122.89', 'Firefox'),
(1406, '2021-10-22 03:18:55', '103.66.198.42', 'Chrome'),
(1407, '2021-10-22 08:32:43', '34.77.162.11', 'Other'),
(1408, '2021-10-22 21:32:45', '207.46.13.181', 'Bing'),
(1409, '2021-10-25 01:39:52', '92.118.160.13', 'Other'),
(1410, '2021-10-25 01:46:26', '103.40.122.89', 'Firefox'),
(1411, '2021-10-25 14:54:07', '92.118.160.57', 'Vario'),
(1412, '2021-10-26 05:04:50', '103.40.122.89', 'Firefox'),
(1413, '2021-10-26 14:46:49', '51.158.118.231', 'Other'),
(1414, '2021-10-26 15:57:57', '34.77.162.4', 'Other'),
(1415, '2021-10-27 11:43:03', '51.158.98.24', 'Other'),
(1416, '2021-10-27 12:04:56', '51.158.103.247', 'Other'),
(1417, '2021-10-27 13:16:08', '157.245.51.244', 'Chrome'),
(1418, '2021-10-28 03:34:04', '103.40.122.89', 'Firefox'),
(1419, '2021-10-29 16:01:54', '157.55.39.178', 'Bing'),
(1420, '2021-10-29 19:01:28', '40.77.167.48', 'Bing'),
(1421, '2021-10-30 04:31:50', '34.77.162.8', 'Other'),
(1422, '2021-10-30 19:25:46', '92.118.160.17', 'Vario'),
(1423, '2021-11-01 02:33:48', '103.40.122.89', 'Firefox');

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
-- Table structure for table `tbl_skema_kemitraan`
--

CREATE TABLE `tbl_skema_kemitraan` (
  `id_skema_kemitraan` int(11) NOT NULL,
  `judul_skema_kemitraan` varchar(50) NOT NULL,
  `judul_skema_kemitraan_seo` varchar(50) NOT NULL,
  `deskripsi_skema_kemitraan` text NOT NULL,
  `keterangan_skema_kemitraan` longtext NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skema_kemitraan`
--

INSERT INTO `tbl_skema_kemitraan` (`id_skema_kemitraan`, `judul_skema_kemitraan`, `judul_skema_kemitraan_seo`, `deskripsi_skema_kemitraan`, `keterangan_skema_kemitraan`, `foto`) VALUES
(1, 'Skema Kemitraan Budidaya Ayam Layer', 'skema-kemitraan-budidaya-ayam-layer', '<p dir=\"ltr\" style=\"text-align:justify\">Ayam layer adalah ayam petelur yang dipelihara hingga umur sekitar 75 minggu dengan masa produksi sekitar umur 20 hingga 75 minggu. Widodo Makmur Perkasa (WMP) Holding memproyeksikan kemitraan Ayam Layer hingga tahun 2026 sejumlah 233 mitra.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Skema Kemitraan Budidaya Ayam Layer adalah strategi bisnis yang diatur antara peternak ayam layer perorangan, Koperasi dani Pesantren di Indonesia dengan Yayasan Kesatriaan Entrepreneur Indonesia (KEI) dan PT. Widodo Makmur Unggas Tbk. Kerja sama ini bertujuan untuk mengembangkan ekosistem bisnis dan meningkatkan industri perunggasan di setiap skala.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Berikut adalah gambaran alur Skema Kemitraan untuk Budidaya Ayam Layer. Yayasan KEI selaku fasilitator akan lebih dulu melakukan seleksi terhadap Mitra. Mitra yang lolos seleksi akan mendapat akses ke lembaga pembiayaan.&nbsp;</p>\r\n', '<p style=\"text-align:justify\"><strong>Keterangan :</strong></p>\r\n\r\n<ol start=\"1\" style=\"list-style-type:decimal\">\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entrepreneur Indonesia melakukan seleksi terhadap Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entrepreneur Indonesia memfasilitasi akses ke perbankan sebagai lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">MoU antara PT. Widodo Makmur Unggas Tbk sebagai penyedia bahan baku dan offtaker dengan lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Perjanjian kerja sama antara Mitra dan PT. Widodo Makmur Unggas Tbk</li>\r\n	<li style=\"text-align:justify\">Pengajuan kredit (KUR) berupa kredit investasi dan kredit modal kerja oleh Mitra ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Survei, persetujuan, akad dan pencairan</li>\r\n	<li style=\"text-align:justify\">Pembangunan fasilitas kandang menggunakan dana dari kredit investasi yang telah di cairkan</li>\r\n	<li style=\"text-align:justify\">Pihak pembiayaan dalam hal ini perbankan melakukan pembayaaran bahan baku ke PT. Widodo Makmur Unggas Tbk atas perintah pembayaran dari Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan suplai bahan baku kebutuhan peternak</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan pendampingan teknis kepada Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Mitra menjual hasil panen kepada Pihak PT. Widodo Makmur Unggas Tbk</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan pembayaran hasil penjualan ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan melakukan pembayaran keuntungan ke Mitra</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Catatan</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li style=\"text-align:justify\">Mitra : kelompok peternak/UMKM/peternak perorangan/Koperasi Pesantren Indonesia</li>\r\n	<li style=\"text-align:justify\">Yayasan Kesatrian Entreprenuer Indonesia (YKEI) : sebagai pihak yang memfasilitasi akses ke perbankan dan melakukan seleksi kepada Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk : sebagai pihak penyedia bahan baku dan oftaker hasil panen</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan : lembaga yang menyediakan kredit investasi dan kredit modal kerja</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:46.35pt; text-align:justify\">&nbsp;</p>\r\n', 'bal.png'),
(2, 'Skema Kemitraan Budidaya Ayam Broiler', 'skema-kemitraan-budidaya-ayam-broiler', '<p dir=\"ltr\" style=\"text-align:justify\">Ayam Broiler adalah ayam ras yang tumbuh lebih cepat sehingga mampu menghasilkan daging dalam waktu relatif singkat yaitu 5 sampai 7 minggu. Proyeksi Mitra Strategis WMP Holding hingga tahun 2026 ditargetkan sebanyak 37 mitra, sementara untuk Mitra Peternak ditargetkan berjumlah 1.108 mitra.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Skema Kemitraan Budidaya Ayam Broiler adalah strategi bisnis yang diatur antara peternak ayam broiler perorangan, Koperasi dan Pesantren di Indonesia dengan Yayasan Kesatriaan Entrepreneur Indonesia (KEI) dan PT. Widodo Makmur Unggas Tbk. Kerja sama ini bertujuan untuk mengembangkan ekosistem bisnis dan meningkatkan industri perunggasan di setiap skala.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Berikut adalah gambaran alur Skema Kemitraan untuk Budidaya Ayam Broiler. Yayasan KEI selaku fasilitator akan lebih dulu melakukan seleksi terhadap Mitra. Hanya mitra yang memenuhi syarat yang akan mendapat akses pembiayaan ke perbankan.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Keterangan </strong></p>\r\n\r\n<ol start=\"1\" style=\"list-style-type:decimal\">\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entreprenuer Indonesia melakukan seleksi terhadap Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entreprenuer Indonesia memfasilitasi akses ke perbankan sebagai lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">MoU antara PT. Widodo Makmur Unggas Tbk sebagai penyedia bahan baku dan offtaker dengan lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Perjanjian kerja sama antara Mitra dan PT. Widodo Makmur Unggas Tbk</li>\r\n	<li style=\"text-align:justify\">Pengajuan kredit (KUR) berupa kredit investasi dan kredit modal kerja oleh Mitra ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Survei,Persetujuan, akad dan pencairan</li>\r\n	<li style=\"text-align:justify\">Pembangunan fasilitas kandang menggunakan dari kredit investasi yang telah di cairkan</li>\r\n	<li style=\"text-align:justify\">Pihak pembiayaan dalam hal ini perbankan melakukan pembayaaran bahan baku ke PT. Widodo Makmur Unggas Tbk atas perintah pembayaran dari mitra</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan suplai bahan baku kebutuhan peternak</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan pendampingan teknis kepada Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Mitra menjual hasil panen kepada pihak PT. Widodo Makmur Unggas Tbk</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk melakukan pembayaran hasil penjualan ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan melakukan pembayaran keuntungan ke Mitra</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><strong>Catatan</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li style=\"text-align:justify\">Mitra : kelompok peternak/UMKM/peternak perorangan/Koperasi Pesantren Indonesia</li>\r\n	<li style=\"text-align:justify\">Yayasan Kesatrian Entreprenuer Indonesia (YKEI) : sebagai pihak yang memfasilitasi akses ke perbankan dan melakukan seleksi kepada Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Widodo Makmur Unggas Tbk : sebagai pihak penyedia bahan baku dan oftaker hasil panen</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan : lembaga yang menyediakan kredit investasi dan kredit modal kerja</li>\r\n</ul>\r\n', 'bab.png'),
(3, 'Skema Kemitraan Penggemukan Sapi', 'skema-kemitraan-penggemukan-sapi', '<p dir=\"ltr\" style=\"text-align:justify\">WMP Holding memiliki sejumlah peternakan sapi yang tersebar di Jawa Barat dan Jawa Tengah. Salah satu peternakan sapi yang terbesar berlokasi di Cianjur dengan luas area 140 hektar dan kapasitas sapi mencapai 172.000 per tahun. WMP Holding melalui PT. Pasir Tengah menginisiasi gerakan kemitraan peternak sapi potong untuk pertama kalinya di Indonesia. Hal ini dilakukan sebagai bentuk dukungan terhadap produk pemerintah dalam peningkatan jumlah stok sapi dalam negeri dengan melibatkan para peternak sebagai mitra.&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Skema Kemitraan Penggemukan Sapi adalah strategi bisnis yang diatur antara peternak sapi perorangan, Koperasi dan Pesantren di Indonesia dengan Yayasan Kesatriaan Entrepreneur Indonesia (KEI) dan PT. Pasir Tengah. Kerja sama ini bertujuan untuk mengembangkan ekosistem bisnis yang menguntungkan bagi kedua belah pihak.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Berikut adalah gambaran alur Skema Kemitraan untuk Budidaya Penggemukan Sapi. Yayasan KEI selaku fasilitator akan lebih dulu melakukan seleksi terhadap Mitra. Hanya mitra yang memenuhi syarat yang akan mendapat akses pembiayaan ke perbankan</p>\r\n', '<p><strong>Keterangan :</strong></p>\r\n\r\n<ol start=\"1\" style=\"list-style-type:decimal\">\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entreprenuer Indonesia melakukan seleksi terhadap Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatriaan Entreprenuer Indonesia memfasilitasi akses ke perbankan sebagai lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">MoU antara PT. Pasir Tengah sebagai penyedia bahan baku dan offtaker dengan lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Perjanjian kerja sama antara Mitra dan PT. Pasir Tengah</li>\r\n	<li style=\"text-align:justify\">Pengajuan kredit (KUR) berupa kredit investasi dan kredit modal kerja oleh Mitra ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Survei, persetujuan, akad dan pencairan</li>\r\n	<li style=\"text-align:justify\">Pembangunan fasilitas kandang menggunakan dari kredit investasi yang telah di cairkan</li>\r\n	<li style=\"text-align:justify\">Pihak pembiayaan dalam hal ini perbankan melakukan pembayaaran bahan baku ke PT. Pasir Tengah atas perintah pembayaran dari Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Pasir Tengah melakukan suplai bahan baku kebutuhan peternak</li>\r\n	<li style=\"text-align:justify\">PT. Pasir Tengah melakukan pendampingan teknis kepada Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Mitra menjual hasil panen kepada pihak PT. Pasir Tengah</li>\r\n	<li style=\"text-align:justify\">PT. Pasir Tengah melakukan pembayaran hasil penjualan ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan melakukan pembayaran keuntungan ke Mitra</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><strong>Catatan</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li style=\"text-align:justify\">Mitra : kelompok peternak/UMKM/peternak perorangan/Koperasi Pesantren Indonesia</li>\r\n	<li style=\"text-align:justify\">Yayasan Kesatrian Entreprenuer Indonesia (YKEI) : sebagai pihak yang memfasilitasi akses ke perbankan dan melakukan seleksi kepada Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Pasir Tengah: sebagai pihak penyedia bahan baku dan oftaker hasil panen</li>\r\n	<li style=\"text-align:justify\">Lembaga Pembiayaan : lembaga yang menediakan kredit investasi dan kredit modal kerja</li>\r\n</ul>\r\n', 'sapisss.png'),
(4, 'Skema Kemitraan Budidaya Jagung dan Padi', 'skema-kemitraan-budidaya-jagung-dan-padi', '<p dir=\"ltr\" style=\"text-align:justify\">PT. Widodofood Makmur Sejahtera (WMS) memiliki target serapan dari program kemitraan gabah sebesar 94.000 ton pada tahun 2026. Sementara untuk jagung ditargetkan mencapai 270.000 ton pada tahun yang sama. Tingginya angka proyeksi ini berbanding lurus dengan jumlah petani mitra yang dibutuhkan. Hingga tahun 2026, jumlah mitra yang dibutuhkan untuk memenuhi kebutuhan budidaya padi mencapai 15.000 orang dan 45.000 orang untuk kemitraan budidaya jagung.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Skema Kemitraan Budidaya Jagung dan Padi adalah strategi bisnis yang diatur antara petani jagung atau padi perorangan, Koperasi dan Pesantren di Indonesia dengan Yayasan Kesatriaan Entrepreneur Indonesia (KEI) dan WMS.&nbsp; Kerja sama ini bertujuan untuk mengembangkan ekosistem bisnis yang menguntungkan kedua belah pihak.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Berikut adalah gambaran alur Skema Kemitraan untuk Budidaya Jagung dan Padi. Yayasan KEI selaku fasilitator akan lebih dulu melakukan seleksi terhadap Mitra. Hanya mitra yang memenuhi syarat yang akan mendapat akses pembiayaan ke perbankan.</p>\r\n', '<p><strong>Ket</strong></p>\r\n\r\n<ol start=\"1\" style=\"list-style-type:decimal\">\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatrian Entreprenuer Indonesia melakukan seleksi terhadap Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatrian Entreprenuer Indonesia memfasilitasi akses ke perbankan sebagai lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">MoU antara PT.Widodofood Makmur Sejahtera sebagai penyedia bahan baku dan offtaker dan lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Perjanjian kerja sama antara Mitra dan PT. Widodofood Makmur Sejahtera</li>\r\n	<li style=\"text-align:justify\">Pengajuan kredit (KUR) berupa kredit investasi dan kredit modal kerja oleh Mitra ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Survei, persetujuan, akad dan pencairan</li>\r\n	<li style=\"text-align:justify\">Pihak pembiayaan dalam hal ini perbankan melakukan pembayaaran bahan baku ke PT.Widodofood Makmur Sejahtera atas perintah pembayaran dari Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Widodofood Makmur Sejahtera melakukan suplai bahan baku kebutuhan peternak</li>\r\n	<li style=\"text-align:justify\">PT.Widodofood Makmur Sejahtera melakukan pendampingan teknis kepada Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Mitra menjual hasil panen kepada pihak PT.Widodofood Makmur Sejahtera</li>\r\n	<li style=\"text-align:justify\">PT.Widodofood Makmur Sejahtera melakukan pembayaran hasil penjualan ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan melakukan pembayaran keuntungan ke Mitra</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><strong>Catatan</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li style=\"text-align:justify\">Mitra : kelompok peternak/UMKM/peternak perorangan/koperasi pesantren</li>\r\n	<li style=\"text-align:justify\">Yayasan Kesatrian Entreprenuer Indonesia (YKEI) : sebagai pihak yang memfasilitasi akses ke perbankan dan melakukan seleksi kepada Mitra</li>\r\n	<li style=\"text-align:justify\">PT Widodofood Makmur Sejahtera : sebagai pihak penyedia bahan baku dan offtaker hasil panen</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan : lembaga yang menyediakan kredit investasi dan kredit modal kerja</li>\r\n</ul>\r\n', 'jaguung.png'),
(5, 'Skema Kemitraan Produk Olahan', 'skema-kemitraan-produk-olahan', '<p style=\"margin-left:.25in; text-align:justify\">Skema kemitraan produk olahan merupakan suatu strategis bisnis dalam bentuk kerja sama antara kelompok peternak/UMKM/peternak perorangan/Koperasi Pesantren Indonesia, Yayasan Kesatriaan Entreprenuer Indonesia dan PT. Cianjur Arta Makmur untuk meraih manfaat bersama maupun keuntungan bersama sesuai prinsip saling membutuhkan dan saling mengisi sesuai kesepakatan yang muncul.</p>\r\n', '<p><strong>Ket</strong></p>\r\n\r\n<ol start=\"1\" style=\"list-style-type:decimal\">\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatrian Entreprenuer Indonesia melakukan seleksi terhadap Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Yayasan Kesatrian Entreprenuer Indonesia memfasilitasi akses ke perbankan sebagai lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">MoU antara PT. Cianjur Arta Makmur sebagai penyedia bahan baku dan offtaker dengan lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Perjanjian kerja sama antara Mitra dan PT. Cianjur Arta Makmur</li>\r\n	<li style=\"text-align:justify\">Pengajuan kredit (KUR) berupa kredit investasi dan kredit modal kerja oleh Mitra ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Survei, persetujuan, akad dan pencairan</li>\r\n	<li style=\"text-align:justify\">Pembangunan fasilitas operasional</li>\r\n	<li style=\"text-align:justify\">Pihak pembiayaan dalam hal ini perbankan melakukan pembayaran bahan baku ke PT. Cianjur Arta Makmur atas perintah pembayaran dari Mitra</li>\r\n	<li style=\"text-align:justify\">PT. Cianjur Arta Makmur melakukan suplai bahan baku kebutuhan peternak</li>\r\n	<li style=\"text-align:justify\">PT. Cianjur Arta Makmur melakukan pendampingan teknis kepada Mitra</li>\r\n	<li style=\"text-align:justify\">Pihak Mitra menjual hasil panen kepada pihak PT. Cianjur Arta Makmur</li>\r\n	<li style=\"text-align:justify\">PT. Cianjur Arta Makmur melakukan pembayaran hasil penjualan ke lembaga pembiayaan</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan melakukan pembayaran keuntungan ke mitra</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><strong>Catatan</strong></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li style=\"text-align:justify\">Mitra : kelompok peternak/UMKM/peternak perorangan/Koperasi Pesantren Indonesia</li>\r\n	<li style=\"text-align:justify\">Yayasan Kesatrian Entreprenuer Indonesia (YKEI) : sebagai pihak yang memfasilitasi akses ke perbankan dan melakukan seleksi kepada mitra</li>\r\n	<li style=\"text-align:justify\">PT. Cianjur Arta Makmur : sebagai pihak penyedia bahan baku dan offtaker</li>\r\n	<li style=\"text-align:justify\">Lembaga pembiayaan : lembaga yang menyediakan kredit investasi dan kredit modal kerja</li>\r\n</ul>\r\n', 'olahab.png');

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
(10, 'JOGLO TUMIYONO ', 'Joglo Tumiyono merupakan joglo terbesar di Asia Tenggara yang menjadi pusat pelatihan dan pembelajaran para entrepreneur muda agar siap menjadi pelaku ekonomi di bidang peternakan, pertanian atau pengolahan bahan makanan.', '2021-03-27 07:16:30', 'joglo_002.jpg', '#', 1, 1, 'M Fikri Setiadi', 0),
(12, 'EMPOWERING PEOPLE ', 'Mencetak Entrepreneur Muda yang Tangguh, sebagai Pelaku Utama Penggerak Perekonomian Nasional di Masa Depan', '2021-03-27 07:16:30', 'wmp2.png', '#', 1, NULL, NULL, 0),
(13, 'KESATRIAAN ENTREPRENEUR INDONESIA', 'Menjadi Pusat Pelatihan dan Inkubator Bisnis Terbaik bagi Entrepreneur Muda serta UMKM Sektor Pertanian, Peternakan dan Pangan.', '2021-03-27 07:16:30', 'joglo1.jpg', '#', 1, NULL, NULL, 0);

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
(1, 'Tumiyana', 'Chairman & CEO Widodo Makmur Perkasa Group', 'Tetap Semangat, Jangan Menyerah!', 'tumiyana.jpg', '#', 1),
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `no_induk`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
(1, '00001', 'admin11', '0aeb7c27f9bcb1d132047a943ea8df700ab21c3a617674ad982e967c05f0ad7ff686b982929a21902bb15836a90db0f75c90d87486ae99164d653d2f7076671f', 'Ajie', 'adjiedwisandy@gmail.com', '0812677713444', 'life-is-journey-enjoy-ride_68166-160.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
(2, '00002', 'admin_kei', 'ed20e9be14d7229e14c7d3cccf3990c8d6cd0b6afad3a686dde8c7ccc66148a17d75e853b24c43e84af894ce0ff1ecec33fe314d13f58eaff05ba5335629766a', 'Admin KEI', 'admin@kesatriaanentrepreneur.id', '0888', 'png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png', 'admin', 'N', '21232f297a57a5a743894a0e4a801fc3-20210418110450'),
(3, '00003', '', '0aeb7c27f9bcb1d132047a943ea8df700ab21c3a617674ad982e967c05f0ad7ff686b982929a21902bb15836a90db0f75c90d87486ae99164d653d2f7076671f', 'adjie sandy', 'ajiedwisandy@gmail.com', '', '', 'member', 'Y', ''),
(4, '', '', '3406f350045aca2c9d62cba0e6134a2f177591dc56e1b0c74ca9f0dc83bdc52b79013ffb7db4996add50d83f7761f8ab45120e13253b67fb4b5841cf87fed12a', 'kesatriaaan', 'kesatriaan.entrepreneur@gmail.com', '021021', '', 'admin', 'N', 'd41d8cd98f00b204e9800998ecf8427e-20210507151025'),
(5, '00004', '', '0aeb7c27f9bcb1d132047a943ea8df700ab21c3a617674ad982e967c05f0ad7ff686b982929a21902bb15836a90db0f75c90d87486ae99164d653d2f7076671f', 'adjie sandy', 'crudlaces@gmail.com', '', '', 'member', 'N', ''),
(6, '00005', '', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'huma', 'harishumaidi75@gmail.com', '', '', 'member', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, '4750bf69e103ade024ac0d8c9d49ba30-20171010120424', 18),
(15, '4750bf69e103ade024ac0d8c9d49ba30-20171010120424', 46),
(17, '1febb523d4e1b96472fea9495d2eb987-20171206120525', 64),
(26, '1febb523d4e1b96472fea9495d2eb987-20171206120525', 62),
(19, '1febb523d4e1b96472fea9495d2eb987-20171206120525', 34),
(20, '1febb523d4e1b96472fea9495d2eb987-20171206120525', 18),
(21, '99922f48ac546217be824666b09797dc-20171206190033', 64),
(22, '99922f48ac546217be824666b09797dc-20171206190033', 62),
(23, '99922f48ac546217be824666b09797dc-20171206190033', 34),
(24, '99922f48ac546217be824666b09797dc-20171206190033', 18),
(25, '1febb523d4e1b96472fea9495d2eb987-20171206120525', 63),
(27, '4750bf69e103ade024ac0d8c9d49ba30-20200802101416', 18),
(29, '4750bf69e103ade024ac0d8c9d49ba30-20200802101416', 31),
(30, '4750bf69e103ade024ac0d8c9d49ba30-20200802101416', 34),
(31, '403453bcb0dc4f4c2b4c1240708b9e9a-20200822151555', 18),
(32, '403453bcb0dc4f4c2b4c1240708b9e9a-20200822151555', 34),
(33, '403453bcb0dc4f4c2b4c1240708b9e9a-20200822151555', 31),
(34, 'c82c4c5bf986a25ed60e2dc37d9973a6-20200826142649', 34),
(35, 'c82c4c5bf986a25ed60e2dc37d9973a6-20200826142649', 31),
(36, 'c82c4c5bf986a25ed60e2dc37d9973a6-20200826142649', 18),
(37, '0192023a7bbd73250516f069df18b500-20200902212256', 18),
(38, '21232f297a57a5a743894a0e4a801fc3-20200902212903', 18),
(39, '50f84daf3a6dfd6a9f20c9f8ef428942-20200902230811', 18),
(40, '12f5c8584c8ee3d7fb5be39ebb33ee4f-20200902231357', 18),
(41, 'd41d8cd98f00b204e9800998ecf8427e-20200902233724', 18),
(42, '7ebce48bba4eebf22a5b387eceac83e6-20200902233913', 18),
(43, '96dbaef496bbaf875688fccd76dbe8bd-20200902234904', 18),
(44, 'e301b636f716a8bf2a2ff81e1c6c0c2d-20200903093044', 18),
(45, '12f5c8584c8ee3d7fb5be39ebb33ee4f-20200903094110', 18),
(46, '59ec5f53e83f614e2d80b438ccbf6faf-20200903094714', 18),
(47, '4d7e8ee8324c7bad20148c7082d20738-20200903095048', 18),
(48, '36b3d5b785e54f9249602da6184a3ed0-20200903095202', 18),
(49, '46e86f8906c3f937493d8d8399d39ffe-20200903095354', 18),
(50, '294ab22f55ec8088a0c77f47a62e4b42-20200903175349', 18),
(51, 'e301b636f716a8bf2a2ff81e1c6c0c2d-20200903175722', 18),
(52, '1377b0c3bc668b6fb1028debc5ac9f5a-20200903134045', 18),
(53, '11ea1ab8eca31a872f1051abd71ad824-20200905183142', 18),
(54, 'fbf0b61f2a17dea13358d142cb4903c8-20200905183825', 18),
(55, '93c6a33d28a8b29ed945dbf2530786cd-20200905225712', 18),
(56, '0e105b9bd58a8646f9a009f700d02f65-20200906093748', 18),
(57, '01c61fca9e5d6b7321b70f1ccc541e99-20200906111342', 18),
(58, '94e0fefb571df6ca5086ecda17418132-20200906111817', 18),
(59, 'f7c078c7a3224833d0c4eef483dcf0df-20200906120123', 18),
(60, '9ae8fd2404f978b8e74dd8e3d7a71227-20200906120343', 18),
(61, 'f7c078c7a3224833d0c4eef483dcf0df-20200906184028', 18),
(62, 'eacd2a8767b2c6346181fc831738499c-20200906191941', 18),
(63, 'cf29b04c8efe5004fdacc7f3a06e3ea3-20200906192945', 18),
(64, 'e0c8870b5d266a042f657f71e2aebfa1-20200906200004', 18),
(65, 'b26aae4ec3481ab6dd6795d78b63e14e-20200907075447', 18),
(66, 'f7f5e161737af4d2f14823e203a4bf19-20200907213225', 18),
(67, '8585224705086d53c87997db70a960ad-20200908064936', 18),
(68, '761cd16b141770ecb0bbb8a4e5962d16-20200908075721', 18),
(69, '030bb3fbc7d3581b32048a90ccd23afb-20200909220620', 18),
(70, 'f53aeb17a3a12b03800c7e257c25b446-20200909230323', 18),
(71, 'ab99640e8c6e590701f03dbddc63f892-20200910000516', 18),
(72, '4c609de60e1d78d58bcd02b2498edaf6-20200910141400', 18),
(73, 'ca86314e4ebec40dde4c9a7843d38262-20200911041103', 18),
(74, 'b0d1778aa31a668d54922a5015c7b7bd-20200911161235', 18),
(75, '4100b5fe988c92d54fec52f5e9e229d2-20200911184956', 18),
(76, '2d7885c3438e2d22f1a75ae919b896c3-20200911193307', 18),
(77, '9f4846d5bac6bad925887537117bdccc-20200912075105', 18),
(78, '4be2e2c66f038b336e040df602d575d7-20200912203702', 18),
(79, 'a26ecca9fbbecdeef5564c3819c55298-20200912224147', 18),
(80, '84872abbbe4b43d69424639d855dc65c-20200913003958', 18),
(81, '76c6a3c3f8d8148ac4ebe7e32e368148-20200913053403', 18),
(82, '98e55e22f72f37c91a534927d4e17148-20200913143306', 18),
(83, '912673f7846d43f1ed7e7cab4ca226cd-20200913144929', 18),
(84, '171c78959c442e18b839b0d9d401c1bb-20200914013256', 18),
(85, 'c5a04a7d7a1b17a859efc5c270675a67-20200914230612', 18),
(86, '64e1b8d34f425d19e1ee2ea7236d3028-20200915104935', 18),
(87, '59ec5f53e83f614e2d80b438ccbf6faf-20200915105056', 18),
(88, '12f5c8584c8ee3d7fb5be39ebb33ee4f-20200916112433', 18),
(89, 'c26c605792c4d8753cb510a47e48018f-20200916122856', 18),
(90, '888e1a8a9a8fd11f5ffc65b0c3ae402f-20200916133307', 18),
(91, 'fe5b26faaf0855b3036b978c8546e75e-20200916133927', 18),
(92, 'd797fffd337f0c3a1bb164772dc0965c-20200917082048', 18),
(93, '0eea7e88f3f2a1a702d3b6c9101d6014-20200917145408', 18),
(94, 'b3070d03e770e2e496184820a599db42-20200917193842', 18),
(95, '04eeb91c946bcde153bc303fb9263ad9-20200918064645', 18),
(96, '74178961a24876d3295ba320213fde7b-20200918085201', 18),
(97, 'dcfdcdf0666d3cec12b6c47dba2a5fd5-20200920031249', 18),
(98, '64a778dc00b76b910c182857a8aeb519-20200920194838', 18),
(99, 'ee97bfc7971be8a1f69dfefe950c9135-20200920215256', 18),
(100, '2f47ddea4c0704e65ecf2a7add2fb0cb-20200921200318', 18),
(101, 'b320ec6e1985bafdac3269040e92aabf-20200921211258', 18),
(102, '039ae983f529e8c2df9774b79d5e1a52-20200923064658', 18),
(103, '1c0d912d5a00c0cfc65f4746dba18a6b-20200923192207', 18),
(104, '793103cc932ddd6d28e455299aad4ab7-20200924213047', 18),
(105, '588e715dcce9ed0e0bbdaf1f94ac2803-20200925013109', 18),
(106, 'd567910c203284bcc56502ea12f65cfb-20200928140544', 18),
(107, '9e7946652766856c31695373624d88cd-20200929125823', 18),
(108, '8d19d9a2c4db6a2b4e8632749221b2c4-20200929214812', 18),
(109, '21d18855a1070bbe31a1d9b630434a33-20201001102105', 18),
(110, '5dbf7d82aa88bf580cbc065654df1e02-20201001113546', 18),
(111, 'dfa41ed137e4256b53556c1145c3029b-20201001170442', 18),
(112, '5d62e60f375238e705bfc3533f4da684-20201001191947', 18),
(113, '8953156e7721f122ed8cc99728da49a4-20201001223251', 18),
(114, 'c25c146958fe97567023c0c4f7bbd4eb-20201002095853', 18),
(115, '6f7432e47c598dba27b182596196be70-20201002100143', 18),
(116, '85dc07fc4902d4a05974815aebcf75c2-20201002122439', 18),
(117, 'eb6832f7031858bfd573164fe641c694-20201002122521', 18),
(118, 'aa58bb0849991effb9b4566491022c42-20201004164518', 18),
(119, 'a5d2c93bc3636391e6e856222599d857-20201005060450', 18),
(120, 'c64c0615782d52ebba46b8d2d79fe34a-20201006005631', 18),
(121, 'db318679972cb14f0fe040653b013621-20201006184254', 18),
(122, '10e37fd8e6f0cda2299f36dce201c5e1-20201006190823', 18),
(123, '04e2bf80b0ea6b3360bedaaad3ff0228-20201006214138', 18),
(124, '6e480489ef6410cef86bd46ae09f36df-20201007201203', 18),
(125, 'abcf1c46afaeffc1542b0628e6c6ff17-20201007204100', 18),
(126, '4eab1443b53025bc89110b52205262a6-20201009140822', 18),
(127, '3c1603dd19cec06eed7ec9b9c3922ea5-20201010171158', 18),
(128, '3aaf38951acba11d95aaa8aa3c30ed5f-20201011105550', 18),
(129, 'c70d03dd8a0c9e8385b9e5be4bdc4cb6-20201011124606', 18),
(130, 'ec2d579d492aa1aae4b29d1e1bce6bd0-20201012142629', 18),
(131, 'fdcfad90bf5a36f7745390f946725e36-20201012143221', 18),
(132, 'eeef52ad9cb2ac6fbfe72345761d08d8-20201013124156', 18),
(133, 'dfedc8ddb5a615ddc306c2cde26b80c4-20201014082944', 18),
(134, '6c753597f00d88b1d214c241794ac6dd-20201014133616', 18),
(135, '3e4775fe272c6285e67baf4501417b32-20201014142729', 18),
(136, '8b211f8a33146bd64efc6e19233ea52a-20201015052952', 18),
(137, '9d442521d3dd88e15b434051f319ef5f-20201015175005', 18),
(138, 'b9e9f2c50a7195ed082871ee36d0c041-20201015220432', 18),
(139, 'c2b5a66c6db74404f3b6bec1f18a7279-20201016094441', 18),
(140, '3729c539b6d325903596bdc64a68de3d-20201016122153', 18),
(141, 'e41425bf05e82b7ec1ba83472215d048-20201016172542', 18),
(142, '65b7db136eb015a6b7f1dc411e028cb7-20201017074520', 18),
(143, '2d1909af72649f78186372d2c5214441-20201017102959', 18),
(144, '51b8f286b6dbdd1699d6cc0dd99e658d-20201017114339', 18),
(145, '6fe546e45ac2a77094776c17fd883547-20201019171421', 18),
(146, '50ff8a4ad3ebb415ddb7f74784d9126f-20201020123752', 18),
(147, '88d3b80becc16665c2a635f1431aebb0-20201021101157', 18),
(148, '5583da4881968e01fa1633ad464b00fc-20201021111420', 18),
(149, 'd11307397171203a5d51abb82cb49d9d-20201021123243', 18),
(150, 'dc92355f1dab536a7b09c40825072455-20201024001517', 18);

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
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

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
-- Indexes for table `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  ADD PRIMARY KEY (`id_eo_detail`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `tbl_event_detail`
--
ALTER TABLE `tbl_event_detail`
  ADD PRIMARY KEY (`id_event_detail`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_fotogaleri`
--
ALTER TABLE `tbl_fotogaleri`
  ADD PRIMARY KEY (`id_fotogaleri`);

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
-- Indexes for table `tbl_pengantar`
--
ALTER TABLE `tbl_pengantar`
  ADD PRIMARY KEY (`id_pengantar`);

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
-- Indexes for table `tbl_skema_kemitraan`
--
ALTER TABLE `tbl_skema_kemitraan`
  ADD PRIMARY KEY (`id_skema_kemitraan`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

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
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `id_bod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_ekonomi_outlook`
--
ALTER TABLE `tbl_ekonomi_outlook`
  MODIFY `id_eo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_ekonomi_outlook_detail`
--
ALTER TABLE `tbl_ekonomi_outlook_detail`
  MODIFY `id_eo_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_event_detail`
--
ALTER TABLE `tbl_event_detail`
  MODIFY `id_event_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_fotogaleri`
--
ALTER TABLE `tbl_fotogaleri`
  MODIFY `id_fotogaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pelatihan_detail`
--
ALTER TABLE `tbl_pelatihan_detail`
  MODIFY `id_pelatihan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_pengantar`
--
ALTER TABLE `tbl_pengantar`
  MODIFY `id_pengantar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1424;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_skema_kemitraan`
--
ALTER TABLE `tbl_skema_kemitraan`
  MODIFY `id_skema_kemitraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2021 at 03:52 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.6

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
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(10) NOT NULL,
  `jdl_about_1` varchar(50) NOT NULL,
  `jdl_about_2` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `jdl_about_1`, `jdl_about_2`, `description`, `foto`) VALUES
(1, 'WELCOME TO LMP', 'About LMP', '<p>Diawali dengan bidang konstruksi, lini bisnis yang digawangi oleh PT.&nbsp; Langgeng Makmur Perkasa &nbsp;didirikan tahun 2002 untuk kemudian disebut Langgeng Land ini mengembangkan sayap usahanya dengan merambah ke sektor properti. Saat ini lini bisnis Property dan Construction&nbsp;berfokus pada penciptaan nilai &ndash; nilai lebih melalui hunian bertingkat yang berkualitas dan memiliki beberapa segmentasi. Perusahaan juga senantiasa melakukan inovasi &ndash; inovasi produk untuk meningkatkan kepercayaan konsumen.</p>\r\n', 'resepsionist.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `views` int(20) NOT NULL,
  `tag_seo` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `link_berita` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `youtube`, `judul_seo`, `headline`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`, `views`, `tag_seo`, `link_berita`) VALUES
(768, 0, 'admin', 'WISMAYA RESIDENCE KONEKTIFITAS TERBAIK DI KOTA BEKASI.', '', 'wismaya-residence-konektifitas-terbaik-di-kota-bekasi', '', '<p><span style=\"font-size:12px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Property sekarang ini merupakan asset yang penting dimiliki setiap orang di Indonesia. Hal ini tentunya karena nilai jual property itu sendiri akan selalu naik dari tahun ke tahun. Berinvestasi dalam bentuk property adalah langkah yang sangat baik untuk menghindari masalah keuangan di kemudian hari.&nbsp;Salah satu hal yang terpenting untuk pemilihan Apartment adalah lokasi yang strategis.&nbsp;Lokasi Strategis adalah lokasi yang dekat dengan keramaian, mudah ditemukan dan mudah untuk di ingat. Loka</span></span></p>\r\n', '', 'Sabtu', '2019-06-15', '18:17:59', '5_Benefit_wismaya-3.jpg', 0, '', 'Y', 0, '', 'http://www.langgengproperty.com/2018/01/wismaya-residence-konektifitas-terbaik.html'),
(767, 0, 'admin', 'GENERASI MILLENIAL WAJIB PUNYA INVESTASI!', '', 'generasi-millenial-wajib-punya-investasi', '', '<p><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#f9f9f9; font-size:13px\">istilah generasi Millenial mungkin sudah akrab ditelinga anda, generasi ini sering dibicarakan dalam kehidupan sehari &ndash; hari masyarakat tentunya di zaman sekarang ini. Apa itu generasi Millenial? Generasi Millenial juga dikenal sebagai generasi Y yang merupakan kelompok demografi setelah Generasi X (Gen-X). Tidak ada batas waktu yang pasti untuk awal dan akhir dari kelompok ini sendiri. Karakteristik generasi milenial berbeda-beda berdasarkan wilayah dan kondisi sosial-ekonomi.</span></span></span></p>\r\n', '', 'Sabtu', '2019-06-15', '18:17:15', 'image_gen_milenial-12.jpg', 0, '', 'Y', 0, '', 'http://www.langgengproperty.com/2017/12/generasi-millenial-wajib-punya-investasi.html'),
(765, 0, 'admin', 'EDUTAINMENT PARK PERTAMA DI KOTA BEKASI', '', 'edutainment-park-pertama-di-kota-bekasi', '', '<p>Edutainment Park adalah taman bermain yang diperuntukkan bagi anak anak usia 2-15 tahun yang menghubungkan seni, budaya, inovasi, ilmu pengetahuan, teknologi dan lingkungan, dengan memberikan peluang bagi anak &ndash; anak utuk melakukan eksplorasi dan pembelajaran melalui berbagai eksibisi...</p>\r\n', '', 'Sabtu', '2019-06-15', '18:16:01', 'edupark_411.jpg', 0, '', 'Y', 0, '', 'http://www.langgengproperty.com/2017/10/1st-edutainment-park-di-kota-bekasi.html'),
(766, 0, 'admin', 'LIMA BENEFIT TINGGAL DI APARTMENT DI WISMAYA RESIDENCE', '', 'lima-benefit-tinggal-di-apartment-di-wismaya-residence', '', '<p>Apartment merupakan hunian yang kini semakin di gemari oleh masyarakat Indonesia, khususnya yang tinggal di pusat kota. Banyak alasan yang melatar belakangi orang membeli hunian vertikal ini, salah satunya adalah lokasi yang strategis. erikut ini kita akan sharing minimal 5 keuntungan tinggal di apartment yang semakin...</p>\r\n', '', 'Sabtu', '2019-06-15', '18:16:26', 'edupark_412.jpg', 0, '', 'Y', 0, '', 'http://www.langgengproperty.com/2017/10/lima-benefit-tinggal-di-apartment.html');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `nama` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id_email`, `nama`, `number`, `email`, `time`) VALUES
(3, 'Hendra', '', 'hencip31198@gmail.com', '0000-00-00 00:00:00'),
(4, 'David', '', 'vdavidhen@yahoo.com', '0000-00-00 00:00:00'),
(5, 'Iwan G', '', 'gunawan.iwan49@gmail.com', '0000-00-00 00:00:00'),
(6, 'Devi', '', 'devi.pramiswari@yahoo.com', '0000-00-00 00:00:00'),
(7, 'Lusi', '', 'lusianacd11@gmail.com', '0000-00-00 00:00:00'),
(8, 'Apip', '', 'leliapip@yahoo.com', '0000-00-00 00:00:00'),
(9, 'Ikin', '', 'ikin@vision_ease.com', '0000-00-00 00:00:00'),
(10, 'Ketty', '', 'ketty_enza@yahoo.com', '0000-00-00 00:00:00'),
(11, 'David', '', 'lim_david76@hotmail.com', '0000-00-00 00:00:00'),
(12, 'Indri', '', 'anastasia_indri@ymail.com', '0000-00-00 00:00:00'),
(13, 'Ave', '', 'aveguso@yahoo.com', '0000-00-00 00:00:00'),
(14, 'Suharno', '', 'sunonagata@gmail.com', '0000-00-00 00:00:00'),
(15, 'Agus', '', 'agus.gunawan@asco.co.id', '0000-00-00 00:00:00'),
(16, 'Indah', '', 'indahsuciati86@gmail.com', '0000-00-00 00:00:00'),
(17, 'Devo', '', 'radendevo@yahoo.com', '0000-00-00 00:00:00'),
(18, 'Santi', '', 'santiunileverpireitb2b@gmail.com', '0000-00-00 00:00:00'),
(19, 'Bu Faisal', '', 'qyas_qyf@yahoo.com', '0000-00-00 00:00:00'),
(20, 'Prima', '', 'subagjap@yahoo.com', '0000-00-00 00:00:00'),
(21, 'pak Meiko', '', 'meiko585@gmail.com', '0000-00-00 00:00:00'),
(22, 'Apri', '', 'apri_mailkee@yahoo.co.id', '0000-00-00 00:00:00'),
(23, 'Yudi', '', 'yudi_megakarya@yahoo.com', '0000-00-00 00:00:00'),
(24, 'Rudy', '', 'rudy_setya1@yahoo.com', '0000-00-00 00:00:00'),
(25, 'Budi', '', 'kurniawan.jaya99@gmail.com', '0000-00-00 00:00:00'),
(26, 'Gaby', '', 'kayla_taufan@yahoo.co.id', '0000-00-00 00:00:00'),
(27, 'Faiqal', '', 'faiqal_effendy@yahoo.com', '0000-00-00 00:00:00'),
(28, 'Julius', '', 'juliustjunmetro@gmail.com', '0000-00-00 00:00:00'),
(29, 'Lola', '', 'lola2rose@yahoo.com', '0000-00-00 00:00:00'),
(30, 'Wahyu', '', 'wahyudantos@gmail.com', '0000-00-00 00:00:00'),
(31, 'Pak KIKI', '', 'kiki@sansico.com', '0000-00-00 00:00:00'),
(32, 'Agung', '', 'agunghendrawan@yahoo.com', '0000-00-00 00:00:00'),
(33, 'Eti', '', 'ettysetiawaty@yahoo.com', '0000-00-00 00:00:00'),
(34, 'Pak Ganda', '', 'ganda.septianda@yahoo.com', '0000-00-00 00:00:00'),
(35, 'Sigit', '', 'sigit254@gmail.com', '0000-00-00 00:00:00'),
(36, 'Fitri', '', 'fitriani@yahoo.co.id', '0000-00-00 00:00:00'),
(37, 'Pak Susilo', '', 'susilo.widarta@gmail.com', '0000-00-00 00:00:00'),
(38, 'Budi', '', 'bintang_indotech@yahoo.co.id', '0000-00-00 00:00:00'),
(39, 'Novin', '', 'suryabanyuwetan@gmail.com', '0000-00-00 00:00:00'),
(40, 'Herawati', '', 'herawati36@gmail.com', '0000-00-00 00:00:00'),
(41, 'Ratih', '', 'ratih.erdi@gmail.com', '0000-00-00 00:00:00'),
(42, 'Adriani', '', 'Mikha.adriani@yahoo.com', '0000-00-00 00:00:00'),
(43, 'Darwin', '', 'darwin_1994@live.com', '0000-00-00 00:00:00'),
(44, 'Yani', '', 'nur.yani32@gmail.com', '0000-00-00 00:00:00'),
(45, 'Afri', '', 'afri_kurniawan82@yahoo.co.id', '0000-00-00 00:00:00'),
(46, 'Anton', '', 'didikantonius@gmail.com', '0000-00-00 00:00:00'),
(47, 'Saiful', '', 'saeful_zanan@yahoo.com', '0000-00-00 00:00:00'),
(48, 'Nur', '', 'm.nur_96@yahoo.com', '0000-00-00 00:00:00'),
(49, 'Dewi', '', 'dewiyanti2104@gmail.com', '0000-00-00 00:00:00'),
(50, 'Purmindarto', '', 'Purmindarto@gmail.com', '0000-00-00 00:00:00'),
(51, 'Ilyah', '', 'ilyahmuhammad@yahoo.co.id', '0000-00-00 00:00:00'),
(52, 'Setiawan', '', 'setiawan.hosana@yahoo.com', '0000-00-00 00:00:00'),
(53, 'Samuel', '', 'Samueltamba@perdania.co.id', '0000-00-00 00:00:00'),
(54, 'Erfizal', '', 'Erfizal.fikri.y@gmail.com', '0000-00-00 00:00:00'),
(55, 'Wiwiek', '', 'wiwiek.w19@Gmail.com', '0000-00-00 00:00:00'),
(56, 'Ary', '', 'aryyuliarto@gmail.com', '0000-00-00 00:00:00'),
(57, 'Agus', '', 'agusjayadi.aj@Gmail.com', '0000-00-00 00:00:00'),
(58, 'Pramudya', '', 'Pramudya.okky@gmail.com', '0000-00-00 00:00:00'),
(59, 'Irvan', '', 'irvan.dedi@hawkinsbck.com', '0000-00-00 00:00:00'),
(60, 'Tia', '', 'Tiasilalahi@gmail.com', '0000-00-00 00:00:00'),
(61, 'Lia', '', 'Liaandries77@gmail.com', '0000-00-00 00:00:00'),
(62, 'Heri', '', 'Heri.geologist@gmail.com', '0000-00-00 00:00:00'),
(63, 'Hotasi', '', 'Hotasisimamorahas@gmail.com', '0000-00-00 00:00:00'),
(64, 'Nita', '', 'Nitamunandar@gmail.com', '0000-00-00 00:00:00'),
(65, 'Widhie', '', 'Widhie.fungitiveplanb@gmail.com', '0000-00-00 00:00:00'),
(66, 'Ainun', '', 'Ainunwaskita@gmail.com', '0000-00-00 00:00:00'),
(67, 'Agus Riswanto', '', 'leonardo58.ar15@gmail.com', '0000-00-00 00:00:00'),
(68, 'PT IFCA CONSULTING INDONESIA', '', 'musatan@ifca.co.id', '0000-00-00 00:00:00'),
(69, 'Sudirman Ali', '', 'safirakeerom@gmail.com', '0000-00-00 00:00:00'),
(70, 'Djong Fanny Novianty', '', 'Fannov82@yahoo.co.id', '0000-00-00 00:00:00'),
(71, 'Arif Rachmadi', '', 'ar_rachmadi@yahoo.com', '0000-00-00 00:00:00'),
(72, 'Martin H simatupang', '', 'martinsimatupang@yahoo.com', '0000-00-00 00:00:00'),
(73, 'Frederick Marshal', '', 'fmarshal@gmail.com', '0000-00-00 00:00:00'),
(74, 'Oskar Pariang Pakpahan', '', 'oskar.pakpahan@gmail.com', '0000-00-00 00:00:00'),
(75, 'Agung Tjahyono', '', 'agung4241@gmail.com', '0000-00-00 00:00:00'),
(76, 'Haryanto', '', 'jr.haryanto@gmail.com', '0000-00-00 00:00:00'),
(77, 'Yulia Sisca', '', 'yuliasisca2009@gmail.com', '0000-00-00 00:00:00'),
(78, 'I gusti ngurah satria perwira', '', 'mysatriaku@yahoo.com', '0000-00-00 00:00:00'),
(79, 'Ariesta Kusumaningtyas', '', 'restaariesta31@gmail.com', '0000-00-00 00:00:00'),
(80, 'Sumpono Brama', '', 'bsumpono@gmail.com', '0000-00-00 00:00:00'),
(81, 'Sulistyo', '', 'Suldua@yahoo.co.id', '0000-00-00 00:00:00'),
(82, 'Meita Harahap', '', 'meitaharahap@gmail.com', '0000-00-00 00:00:00'),
(83, 'Alexnder Bingky', '', 'alexbingky@gmail.com', '0000-00-00 00:00:00'),
(84, 'Slamet Prabudi Setianto', '', 'ato106@yahoo.com', '0000-00-00 00:00:00'),
(85, 'Prihantini Puspita', '', 'silver0420@gmail.com', '0000-00-00 00:00:00'),
(86, 'Dilla Tri Rahayu', '', 'diliatrs@gmail.com', '0000-00-00 00:00:00'),
(87, 'Vita Praminingsih', '', 'vitapramaningsih21@gmail.com', '0000-00-00 00:00:00'),
(88, 'Fifi Sumanty', '', 'iin.fifi.s@gmail.com', '0000-00-00 00:00:00'),
(89, 'Arjuna Sakir', '', 'arjuna.sakir@yahoo.com', '0000-00-00 00:00:00'),
(90, 'Mindarti', '', 'mimienmarjdono@gmail.com', '0000-00-00 00:00:00'),
(91, 'Agus Jayadi', '', 'agusjayadi.aj@Gmail.com', '0000-00-00 00:00:00'),
(92, 'Zaky', '', 'zakydhanisworo@gmail.com', '0000-00-00 00:00:00'),
(93, 'Anwar', '', 'anwar_agus@yahoo.co.id', '0000-00-00 00:00:00'),
(94, 'Mulfi', '', 'mas.mulfi@gmail.com', '0000-00-00 00:00:00'),
(95, 'Jainal Aripin', '', 'jejenalarip@gmail.com', '0000-00-00 00:00:00'),
(96, 'Marmi', '', 'marimi10juni@gmail.com', '0000-00-00 00:00:00'),
(97, 'Ratu Atin', '', 'atin@koyorad.co.id', '0000-00-00 00:00:00'),
(98, 'Arief Muqarrabin', '', 'arief_muq@yahoo.com', '0000-00-00 00:00:00'),
(99, 'Rusli Amidjaja', '', 'ruslibudiman@yahoo.co.id', '0000-00-00 00:00:00'),
(100, 'Nita Nathalia', '', 'kantornotarisnitathalia@gmail.com', '0000-00-00 00:00:00'),
(101, 'Nano', '', 'nano.bsharoni@gmai.com', '0000-00-00 00:00:00'),
(102, 'Beng Tardjani', '', 'btardjani@yahoo.com', '0000-00-00 00:00:00'),
(103, 'Hanny Nurcahyani', '', 'hanny_koe@yahoo.com', '0000-00-00 00:00:00'),
(104, 'Meilyana', '', 'tas_zoth@Yahoo.com', '0000-00-00 00:00:00'),
(105, 'Rama Anugraha Palasetya ', '', 'ramaanugraha@Yahoo.com', '0000-00-00 00:00:00'),
(106, 'Widiastuti', '', 'eres.widodo@yahoo.com', '0000-00-00 00:00:00'),
(107, 'dwi setiawati', '', 'tia_bursa@yahoo.com', '0000-00-00 00:00:00'),
(108, 'Abdul Salam M', '', 'salamabdul0314@gmail.com', '0000-00-00 00:00:00'),
(109, 'Rika Hendriany', '', 'rieka_one1234@yahoo.co.id', '0000-00-00 00:00:00'),
(110, 'M. Asri Gunawan', '', 'muhammadasri.g@gmail.com', '0000-00-00 00:00:00'),
(111, 'Badriyah', '', 'badac@gmail.com', '0000-00-00 00:00:00'),
(112, 'Diah Dharmanti', '', 'diahdharmanti@yahoo.com', '0000-00-00 00:00:00'),
(113, 'Amalia Windiawati', '', 'awi.0527@yahoo.com', '0000-00-00 00:00:00'),
(114, 'IR. Nanan Yanie E', '', 'nanan.yanie2@gmail.com', '0000-00-00 00:00:00'),
(115, 'Khanda Pradana Mamesah', '', 'Jesicaadisaputro@gmail.com', '0000-00-00 00:00:00'),
(116, 'Erwin Safuri', '', 'erwin.sarufi6@gmail.com', '0000-00-00 00:00:00'),
(117, 'Helmut Hermawan', '', 'helmut@aspacmining.com', '0000-00-00 00:00:00'),
(118, 'Tri Kusno Wibowo', '', 'kuznotrey@gmail.com', '0000-00-00 00:00:00'),
(119, 'Sri Wahyuningsih', '', 'sriwahyuningsih2509@yahoo.com', '0000-00-00 00:00:00'),
(120, 'Nurrahmi  Norman', '', 'nurrahmi.norman@gmail.com', '0000-00-00 00:00:00'),
(121, 'Lie Ferly', '', 'lieferly@ymail.com', '0000-00-00 00:00:00'),
(122, 'Reny Nazar', '', 'reny_n@gmf-aeroasia.co.id', '0000-00-00 00:00:00'),
(123, 'Karen Priyanka', '', 'karenpriyanka@gmail.com', '0000-00-00 00:00:00'),
(124, 'Teddy ', '', 'teddystudentcastle@Gmail.com', '0000-00-00 00:00:00'),
(125, 'Susanto Gunawan', '', 'rahmatrezajumadi84@gmail.com', '0000-00-00 00:00:00'),
(126, 'Lisa Novianti', '', 'lisnovti@yahoo.com', '0000-00-00 00:00:00'),
(127, 'Hemah Malini', '', 'hemma.y18@gmail.com', '0000-00-00 00:00:00'),
(128, 'Fika Rahmadani Utami', '', 'fika.martoprawiro@gmail.com', '0000-00-00 00:00:00'),
(129, 'Kiki Devki', '', 'kiki_haidar@Yahoo.co.id', '0000-00-00 00:00:00'),
(130, 'Rizky Kahuripan', '', 'rizki.kahuripan@Yahoo.com', '0000-00-00 00:00:00'),
(131, 'Sigit Priyanto', '', 'sigit.sh@outlook.com', '0000-00-00 00:00:00'),
(132, 'Dedeh Budiarti', '', 'andri.budiman@medcoenergi.com', '0000-00-00 00:00:00'),
(133, 'Sherli Oktaviani', '', 'sherlyoktaviani@Gmail.com', '0000-00-00 00:00:00'),
(134, 'Nita Gandhari', '', 'Nitamunandar@gmail.com', '0000-00-00 00:00:00'),
(135, 'Ratna Ayu Windisari', '', 'Yudha.ptpancasetia@yahoo.com', '0000-00-00 00:00:00'),
(136, 'Tomy Wardana', '', 'wardana_tommy@yahoo.com', '0000-00-00 00:00:00'),
(137, 'Suyatmi', '', 'Agusmaida@Gmail.com', '0000-00-00 00:00:00'),
(138, 'Hervy Yantri', '', 'hervyyantri@gmail.com', '0000-00-00 00:00:00'),
(139, 'Mervy Susanti Sihombing', '', 'ejraaa@gmail.com', '0000-00-00 00:00:00'),
(140, 'Guruh Tirta Lunggana ', '', 'Kazhimsakhi@gmail.com', '0000-00-00 00:00:00'),
(141, 'Karmelia Andries', '', 'Liaandries77@gmail.com', '0000-00-00 00:00:00'),
(142, 'Riyadi', '', 'Riadisuccess@gmail.com', '0000-00-00 00:00:00'),
(143, 'Tiara Lestari', '', 'tiara.lestari.susilowaty@gmail.com', '0000-00-00 00:00:00'),
(144, 'Anna Veronica Endang', '', 'Annaveta888@gmail.com', '0000-00-00 00:00:00'),
(145, 'Achmad Taufik', '', 'achmadtoufik@Yahoo.com', '0000-00-00 00:00:00'),
(146, 'Yan Permata', '', 'yan_matta@Yahoo.co.id', '0000-00-00 00:00:00'),
(147, 'Syeba Reinty', '', 'syebaa@yahoo.com', '0000-00-00 00:00:00'),
(148, 'Anthony Stefanus', '', 'kembarjayapanel@Gmail.com', '0000-00-00 00:00:00'),
(149, 'Rita cahyani', '', 'cahyani.rita@Gmail.com', '0000-00-00 00:00:00'),
(150, 'Johanes April Candra', '', 'Aprilcandra@yahoo.com', '0000-00-00 00:00:00'),
(151, 'Efran Maidas', '', 'efran.maidas@Htn.co.id', '0000-00-00 00:00:00'),
(152, 'Inggit ida ningsih', '', 'riawahyuni64@Gmail.com', '0000-00-00 00:00:00'),
(153, 'Hari Widodo', '', 'widodohari@Yahoo.com', '0000-00-00 00:00:00'),
(154, 'M Noor Rasyid', '', 'rhadera@Yahoo.co.id', '0000-00-00 00:00:00'),
(155, 'Angga Danang Kusuma ', '', 'anggadanang@gmail.com', '0000-00-00 00:00:00'),
(156, 'Selvy Darma', '', 'selvyd@gmail.com', '0000-00-00 00:00:00'),
(157, 'Ketut Suka Astawa', '', 'kesawasupreme1@gmail.com', '0000-00-00 00:00:00'),
(158, 'Hidayat Muharam', '', 'Hidayat.muharam@conocophilips.com', '0000-00-00 00:00:00'),
(159, 'Nurhayati', '', 'Nurhayatimustika26@gmail.com', '0000-00-00 00:00:00'),
(160, 'Chandra Kurnia', '', 'chandrakurnia442gmail.com', '0000-00-00 00:00:00'),
(161, 'Bimo Ekabudiputra', '', 'Bimoeka.b@Gmail.com', '0000-00-00 00:00:00'),
(162, 'Azwanita', '', 'azwa5179@gmail.com', '0000-00-00 00:00:00'),
(163, 'Tri Fatah Suryono', '', 'trifatah@yahoo.com', '0000-00-00 00:00:00'),
(164, 'Alifah septiana', '', 'septianaalifah@yahoo.com', '0000-00-00 00:00:00'),
(165, 'Ahmad Saekhi', '', 'akhmadsaekhu@Gmail.com', '0000-00-00 00:00:00'),
(166, 'Anwar', '', 'anwar_agus@yahoo.co.id', '0000-00-00 00:00:00'),
(167, 'Achmad Saiban Latanro', '', 'uls43@askrida.co.id', '0000-00-00 00:00:00'),
(168, 'Rita Hakim', '', 'mohdhata5713@icloud.com', '0000-00-00 00:00:00'),
(169, 'Sudarmono', '', 'sudarmono65@gmail.com', '0000-00-00 00:00:00'),
(170, 'Purwanto', '', 'purwanto_73@ymail.com', '0000-00-00 00:00:00'),
(171, 'Sumarni', '', 'ssumarni156@gmail.com', '0000-00-00 00:00:00'),
(172, 'Yoga Rusmana', '', 'y_rusmana@yahoo.com', '0000-00-00 00:00:00'),
(173, 'Bita Raharti', '', 'erestacibubur@yahoo.com', '0000-00-00 00:00:00'),
(174, 'PT ADHI KARTIKA JAYA', '', 'Tjahjo_jj@yahoo.com', '0000-00-00 00:00:00'),
(175, 'H Sugeng Rusman', '', 'sugeng_rusman143@yahoo.com', '0000-00-00 00:00:00'),
(176, 'Dwy Nurul Akbarani', '', 'dwyakbar@outlook.com', '0000-00-00 00:00:00'),
(177, 'Dina Aryanti', '', 'Dina.suharto@gmail.com', '0000-00-00 00:00:00'),
(178, 'Erry', '', 'errybest@Yahoo.com', '0000-00-00 00:00:00'),
(179, 'Esra', '', 'esrabanurea@gmail.com', '0000-00-00 00:00:00'),
(180, 'Faizal', '', 'faizallemanresto@gmail.com', '0000-00-00 00:00:00'),
(181, 'Reza', '', 'contactreza@yahoo.com', '0000-00-00 00:00:00'),
(182, 'Feby', '', 'feby.ferdinan@Yahoo.com', '0000-00-00 00:00:00'),
(183, 'Felix', '', 'felix.harwanto@landari.com', '0000-00-00 00:00:00'),
(184, 'Gidion', '', 'gidionwijaja17fs@yahoo.com', '0000-00-00 00:00:00'),
(185, 'Ardhi', '', 'ardhi.hanief@gmail.com', '0000-00-00 00:00:00'),
(186, 'Harry', '', 'Harryputra.b@Gmail.com', '0000-00-00 00:00:00'),
(187, 'Hary', '', 'Haryprasetyoaji@Gmail.com', '0000-00-00 00:00:00'),
(188, 'Dosti', '', 'mydosti09@yahoo.com', '0000-00-00 00:00:00'),
(189, 'Hendjaja', '', 'hendjaja@Gmail.com', '0000-00-00 00:00:00'),
(190, 'Hermawan', '', 'hermawan@kinden.co.id', '0000-00-00 00:00:00'),
(191, 'Iman', '', 'iman.suseno@gmail.com', '0000-00-00 00:00:00'),
(192, 'Irwan', '', 'irwansadikin@gmail.com', '0000-00-00 00:00:00'),
(193, 'Ie', '', 'ie2701@live.com', '0000-00-00 00:00:00'),
(194, 'Janto', '', 'nyonyojanto@Gmail.com', '0000-00-00 00:00:00'),
(195, 'Jona', '', 'jonalex@cbn.net.id', '0000-00-00 00:00:00'),
(196, 'Qbonks', '', 'qbonks@yahoo.com', '0000-00-00 00:00:00'),
(197, 'ambon', '', 'ambonmanise2001@gmail.com', '0000-00-00 00:00:00'),
(198, 'Santi', '', 'mangihutasiantidauruk@yahoo.com', '0000-00-00 00:00:00'),
(199, 'Reza', '', 'Rezaabdulah@gmail.com', '0000-00-00 00:00:00'),
(200, 'Alvarez', '', 'rejent.alvarez@gmail.com', '0000-00-00 00:00:00'),
(201, 'Harada', '', 'harada84@yahoo.com', '0000-00-00 00:00:00'),
(202, 'Lim', '', 'medicore2001@yahoo.com', '0000-00-00 00:00:00'),
(203, 'Linda', '', 'lindaoctarina@yahoo.com', '0000-00-00 00:00:00'),
(204, 'Putra Lestari', '', 'Batik_bali_Lestari@yahoo.com', '0000-00-00 00:00:00'),
(205, 'Vidia', '', 'vidia@gembool.com', '0000-00-00 00:00:00'),
(206, 'Raveena', '', 'raveena9@msn.com', '0000-00-00 00:00:00'),
(207, 'rudrat', '', 'rudatindonesia@yahoo.com', '0000-00-00 00:00:00'),
(208, 'Felisia Merdina', '', 'felisia@udangku.com', '0000-00-00 00:00:00'),
(209, 'Yakobus', '', 'yakobus@balingbaling.com', '0000-00-00 00:00:00'),
(210, 'Amiratussa', '', 'amriatussa@gmail.com', '0000-00-00 00:00:00'),
(211, 'Chitra Hayuning Putri', '', 'cc.putri@gmail.com', '0000-00-00 00:00:00'),
(212, 'Renny Baselo', '', 'magfood@cbn.net.id', '0000-00-00 00:00:00'),
(213, 'Heru', '', 'heru_soeseno@Yahoo.com', '0000-00-00 00:00:00'),
(214, 'Ika Yarmanti', '', 'ksi@dnet.id', '0000-00-00 00:00:00'),
(215, 'Lily', '', 'lily_sabdi@yahoo.com', '0000-00-00 00:00:00'),
(216, 'Elisa', '', 'elisadewi@bmw.tunas.co.id', '0000-00-00 00:00:00'),
(217, 'Rudik Setiawan', '', 'mas_Rudik@yahoo.com', '0000-00-00 00:00:00'),
(218, 'Anissa', '', 'ssa@trimegah.com', '0000-00-00 00:00:00'),
(219, 'Invo', '', 'Invo@bilikkayu.com', '0000-00-00 00:00:00'),
(220, 'Agus', '', 'agus_topo@plasa.com', '0000-00-00 00:00:00'),
(221, 'Fadhla', '', 'nurfadhla29@Gmail.com', '0000-00-00 00:00:00'),
(222, 'H. Salahudin', '', 'bangtaqwa@yahoo.co.id', '0000-00-00 00:00:00'),
(223, 'Drg. Bobby', '', 'bobbygnd@yahoo.com', '0000-00-00 00:00:00'),
(224, 'Fauzan', '', 'gwfauzan@yahoo.com', '0000-00-00 00:00:00'),
(225, 'Istiadi', '', 'istiadi.hanafiah@firstlogistics.co.id', '0000-00-00 00:00:00'),
(226, 'Sholahudin', '', 'taqwalaila@Yahoo.com', '0000-00-00 00:00:00'),
(227, 'Wati', '', 'rrosaarwati@yahoo.co.id', '0000-00-00 00:00:00'),
(228, 'rosalina', '', 'rosalinamanurung@yahoo.co.id', '0000-00-00 00:00:00'),
(229, 'Proyek69', '', 'Proyek69@gmail.com', '0000-00-00 00:00:00'),
(230, 'Rudi', '', 'Rudi.nugraha@yahoo.com', '0000-00-00 00:00:00'),
(231, 'Irwan', '', 'irwan.triperkasa@gmail.com', '0000-00-00 00:00:00'),
(232, 'Andi', '', 'andreas.andi34@yahoo.co.id', '0000-00-00 00:00:00'),
(233, 'Yosep', '', 'yosephre@yahoo.com', '0000-00-00 00:00:00'),
(234, 'Jophie', '', 'joophie@yahoo.com', '0000-00-00 00:00:00'),
(235, 'Mano', '', 'vmano@gmail.com', '0000-00-00 00:00:00'),
(236, 'Dari', '', 'dikedari@yahoo.com', '0000-00-00 00:00:00'),
(237, 'Sugi', '', 'sugi1801@yahoo.co.id', '0000-00-00 00:00:00'),
(238, 'Bintang', '', 'faribintang@yahoo.com', '0000-00-00 00:00:00'),
(239, 'Jaya', '', 'lanabuanajaya@yahoo.com', '0000-00-00 00:00:00'),
(240, 'Srijaya', '', 'rsijaya@ymail.com', '0000-00-00 00:00:00'),
(241, 'Joy', '', 'joy2soewandi@gmail.com', '0000-00-00 00:00:00'),
(242, 'Rizky', '', 'virgiorizky@Gmail.com', '0000-00-00 00:00:00'),
(243, 'Lestari', '', 'lestari.tjur@gmail.com', '0000-00-00 00:00:00'),
(244, 'Agus', '', 'hygus79@Yahoo.co.id', '0000-00-00 00:00:00'),
(245, 'Sari', '', 'maliestrapermatasari@gmail.com', '0000-00-00 00:00:00'),
(246, 'Dani', '', 'daniliatama@gmail.com', '0000-00-00 00:00:00'),
(247, 'Rizky ardi', '', 'oriceorganic@yahoo.com', '0000-00-00 00:00:00'),
(248, 'ruslan', '', 'ruslan09aqilah@gmail.com', '0000-00-00 00:00:00'),
(249, 'titin agustina', '', 'agustina@kraviti.com', '0000-00-00 00:00:00'),
(250, 'dwi jayanto', '', 'tunasgryamandiri@yahoo.co.id', '0000-00-00 00:00:00'),
(251, 'meika purnamasari', '', 'princessmeika85@yahoo.com', '0000-00-00 00:00:00'),
(252, 'vitri', '', 'vitridanastri@yahoo.com', '0000-00-00 00:00:00'),
(253, 'chrisna', '', 'chrisna@bhasman.com', '0000-00-00 00:00:00'),
(254, 'd wawan', '', 'd.wawan@sk_distribution.com', '0000-00-00 00:00:00'),
(255, 'rustam nahrawi', '', 'celadona888@Yahoo.com', '0000-00-00 00:00:00'),
(256, 'fitriyanti', '', 'fitriyanti602@yahoo.co.id', '0000-00-00 00:00:00'),
(257, 'herry prabowo', '', 'rdpertani@telkom.net', '0000-00-00 00:00:00'),
(258, 'ahmad rofiq', '', 'rofiqachmad@gmail.com', '0000-00-00 00:00:00'),
(259, 'dwi djoko', '', 'grafikaprima@cbn.net.id', '0000-00-00 00:00:00'),
(260, 'giffa', '', 'giffa.indonesia@gmail.com', '0000-00-00 00:00:00'),
(261, 'vera', '', 'vera_wenny@hotmail.com', '0000-00-00 00:00:00'),
(262, 'I made sugandhi', '', 'tripplestaribali@yahoo.co.id', '0000-00-00 00:00:00'),
(263, 'ahmad sudarma', '', 'ahmda.sudarma@Yahoo.com', '0000-00-00 00:00:00'),
(264, 'hudhaya', '', 'hudhaya@Yahoo.com', '0000-00-00 00:00:00'),
(265, 'seto', '', 'ptnindoproductions@yahoo.com', '0000-00-00 00:00:00'),
(266, 'rinanda', '', 'r_halfi_m@yahoo.co.id', '0000-00-00 00:00:00'),
(267, 'syariefudin', '', 'syarief_ittelkom@yahoo.co.id', '0000-00-00 00:00:00'),
(268, 'dwi', '', 'cs@renyfeby.com', '0000-00-00 00:00:00'),
(269, 'n. yoga', '', 'mahonipie@hotmail.com', '0000-00-00 00:00:00'),
(270, 'Sideebony', '', 'sideebony@Yahoo.com', '0000-00-00 00:00:00'),
(271, 'Pinkcom', '', 'pinkcom@Yahoo.com', '0000-00-00 00:00:00'),
(272, 'Melinda.w.tanjung', '', 'melinda.w.tanjung@Kubota.com', '0000-00-00 00:00:00'),
(273, 'Lapo_opal', '', 'lapo_opal@hotmail.com', '0000-00-00 00:00:00'),
(274, 'Silvi.ervina', '', 'silvi.ervina@kubota.com', '0000-00-00 00:00:00'),
(275, 'Hamirullah', '', 'hamirullah@goldcoin-id.com', '0000-00-00 00:00:00'),
(276, 'Donny', '', 'donny@sucorinvest.com', '0000-00-00 00:00:00'),
(277, 'Sbiru94_kayukelapa', '', 'sbiru94_kayukelapa@yahoo.com', '0000-00-00 00:00:00'),
(278, 'Putri', '', 'putri@Mitrakerinci.com', '0000-00-00 00:00:00'),
(279, 'Sirkulasi', '', 'sirkulasi@trobos.com', '0000-00-00 00:00:00'),
(280, 'Martiana', '', 'martiana@bnisecurities.co.id', '0000-00-00 00:00:00'),
(281, 'Malina_herliana', '', 'malina_herliana@Yahoo.com', '0000-00-00 00:00:00'),
(282, 'Paknow_pdg', '', 'paknow_pdg@yahoo.co.id', '0000-00-00 00:00:00'),
(283, 'Madha.kaplingebun', '', 'madha.kaplingebun@gmail.com', '0000-00-00 00:00:00'),
(284, 'Fauzan.hangriawan', '', 'fauzan.hangriawan@gmail.com', '0000-00-00 00:00:00'),
(285, 'Egi', '', 'egi@sirclo.co.id', '0000-00-00 00:00:00'),
(286, 'Lukmanuntan', '', 'lukmanuntan@gmail.com', '0000-00-00 00:00:00'),
(287, 'Jainuri_23', '', 'jainuri_23@Yahoo.com', '0000-00-00 00:00:00'),
(288, 'Ixoranet', '', 'ixoranet@yahoo.com', '0000-00-00 00:00:00'),
(289, 'Priyadi', '', 'priyadi@sandika.com', '0000-00-00 00:00:00'),
(290, 'Giri_angga', '', 'giri_angga@yahoo.co.uk', '0000-00-00 00:00:00'),
(291, 'Febri', '', 'triwibowo.febri@yahoo.com', '0000-00-00 00:00:00'),
(292, 'Redsha', '', 'redshanoor@gmail.com', '0000-00-00 00:00:00'),
(293, 'Hardy', '', 'dheedion@gmail.com', '0000-00-00 00:00:00'),
(294, 'Ricky', '', 'badrock35@gmail.com', '0000-00-00 00:00:00'),
(295, 'Muhammad Ilham', '', 'ilham.casmad1986@Gmail.com', '0000-00-00 00:00:00'),
(296, 'Baguz Freeman', '', 'baguz.febrianto@gmail.com', '0000-00-00 00:00:00'),
(297, 'Dhana', '', 'dhanaalisha@gmail.com', '0000-00-00 00:00:00'),
(298, 'Socrates Matulessy', '', 'futbolfutsal@hotmail.com', '0000-00-00 00:00:00'),
(299, 'Delly Chaniago', '', 'delly.chaniago@gmail.com', '0000-00-00 00:00:00'),
(300, 'Faulina Faulin', '', 'fawfaulina@Gmail.com', '0000-00-00 00:00:00'),
(301, 'Dyah Layung Sekar', '', 'dyahlayungsekar@Yahoo.com', '0000-00-00 00:00:00'),
(302, 'Michael William', '', 'm.wp99@yahoo.com', '0000-00-00 00:00:00'),
(303, 'Faisal Adhyaksa', '', 'faisaladhyaksa@Gmail.com', '0000-00-00 00:00:00'),
(304, 'Arlan Reza', '', 'arlanreza@yahoo.com', '0000-00-00 00:00:00'),
(305, 'Ervan Hasbullah', '', 'ervan_uno@yahoo.com', '0000-00-00 00:00:00'),
(306, 'Nina Aviana', '', 'nonon.nina@mail.com', '0000-00-00 00:00:00'),
(307, 'Retno', '', 'retnomarianne17@gmail.com', '0000-00-00 00:00:00'),
(308, 'Belinda', '', 'belindadesyana@Gmail.com', '0000-00-00 00:00:00'),
(309, 'Erric Prastomo', '', 'secrett121@yahoo.com', '0000-00-00 00:00:00'),
(310, 'Marcella', '', 'm.a.marcellajo@gmail.com', '0000-00-00 00:00:00'),
(311, 'Nicky', '', 'okita_88@yahoo.com', '0000-00-00 00:00:00'),
(312, 'Pinka P', '', 'pinkaprabangkara@gmail.com', '0000-00-00 00:00:00'),
(313, 'Putra adhitria', '', 'putra_adhitria3@yahoo.com', '0000-00-00 00:00:00'),
(314, 'Markus', '', 'riceoriceyummy@gmail.com', '0000-00-00 00:00:00'),
(315, 'Cardika', '', 'cardikarasta@yahoo.com', '0000-00-00 00:00:00'),
(316, 'Fery Pebriant', '', 'feripebrianto@gmail.com', '0000-00-00 00:00:00'),
(317, 'Re Devil', '', 'richie_slutz@ymail.com', '0000-00-00 00:00:00'),
(318, 'Agus', '', 'agus.ojk@Gmail.com', '0000-00-00 00:00:00'),
(319, 'my hobbies', '', 'allaboutmyhobbies69@gmail.com', '0000-00-00 00:00:00'),
(320, 'jvo tatto studio', '', 'jevotatto@Gmail.com', '0000-00-00 00:00:00'),
(321, 'monica debby', '', 'monicadebby1991@gmail.com', '0000-00-00 00:00:00'),
(322, 'Lucky L', '', 'luckyfer506@gmail.com', '0000-00-00 00:00:00'),
(323, 'Naratia 22', '', 'naratia22@yahoo.com', '0000-00-00 00:00:00'),
(324, 'Dika prima', '', 'dikapro87@gmail.com', '0000-00-00 00:00:00'),
(325, 'purwidyos', '', 'puriwidyosusanti@gmail.com', '0000-00-00 00:00:00'),
(326, 'debora', '', 'deborasinaga484@gmail.com', '0000-00-00 00:00:00'),
(327, 'aldirt', '', 'aldirt_luky@Yahoo.com', '0000-00-00 00:00:00'),
(328, 'oemhy', '', 'umianitasari@gmail.com', '0000-00-00 00:00:00'),
(329, 'dicky', '', 'dickyherya1@yahoo.co.id', '0000-00-00 00:00:00'),
(330, 'hendry', '', 'hendri_pemuja@yahoo.com', '0000-00-00 00:00:00'),
(331, 'jovanka', '', 'jojovanchka@gmail.com', '0000-00-00 00:00:00'),
(332, 'vella', '', 'v.mmeilitaparcalata25@gmail.com', '0000-00-00 00:00:00'),
(333, 'njoo henny budiman', '', 'hennyjoo@Gmail.com', '0000-00-00 00:00:00'),
(334, 'melisa jacklyne', '', 'melisajacklyne@gmail.com', '0000-00-00 00:00:00'),
(335, 'Distributor resmi mci', '', 'dina_yulita82@yahoo.com', '0000-00-00 00:00:00'),
(336, 'Yudz', '', 'prawokoyudha05@gmail.com', '0000-00-00 00:00:00'),
(337, 'virgoplasma', '', 'mintosaja@Gmail.com', '0000-00-00 00:00:00'),
(338, 'Sri', '', 'u_c_e@yahoo.com', '0000-00-00 00:00:00'),
(339, 'Hance', '', 'geminastitihandayani@Gmail.com', '0000-00-00 00:00:00'),
(340, 'Ela karmila', '', 'ela.karmila3@gmail.com', '0000-00-00 00:00:00'),
(341, 'patrick wangsa', '', 'patrick.wangsa@hotmail.com', '0000-00-00 00:00:00'),
(342, 'limatul azizah', '', 'lim15_17@yahoo.com', '0000-00-00 00:00:00'),
(343, 'allan sengkey', '', 'alansengkey@gmail.com', '0000-00-00 00:00:00'),
(344, 'yandi', '', 'risyandi_K@yahoo.com', '0000-00-00 00:00:00'),
(345, 'rachmat julian', '', 'fixerus10@yahoo.com', '0000-00-00 00:00:00'),
(346, 'erwin pangestu', '', 'pangestu_erwin@yahoo.com', '0000-00-00 00:00:00'),
(347, 'Henry Desmo', '', 'henryid213t@yahoo.com', '0000-00-00 00:00:00'),
(348, 'Sccung', '', 'sccung@yahoo.com', '0000-00-00 00:00:00'),
(349, 'Henrdra Wijaya', '', 'whendra369@gmail.com', '0000-00-00 00:00:00'),
(350, 'Pj sukaryadi', '', 'puji.sukaryadi@yahoo.com', '0000-00-00 00:00:00'),
(351, 'Catrine', '', 'catrine.mars@yahoo.com', '0000-00-00 00:00:00'),
(352, 'Datu', '', 'm.datu@yahoo.com', '0000-00-00 00:00:00'),
(353, 'Drs Edi', '', 'kuandeedy@yahoo.com', '0000-00-00 00:00:00'),
(354, 'Gani', '', 'ganikadiat@yahoo.com', '0000-00-00 00:00:00'),
(355, 'Gunawan', '', 'gunaw_gun08@yahoo.com', '0000-00-00 00:00:00'),
(356, 'hendro', '', 'indramusic@indo.net.id', '0000-00-00 00:00:00'),
(357, 'Ir Dibyo', '', 'dibyo@vivovilasbali.com', '0000-00-00 00:00:00'),
(358, 'jusman', '', 'jusman_Darma@yahoo.com', '0000-00-00 00:00:00'),
(359, 'yuli', '', 'yulli_wallenda@yahoo.com', '0000-00-00 00:00:00'),
(360, 'dharman', '', 'd.sentosa@gmail.com', '0000-00-00 00:00:00'),
(361, 'ayu zhafarina', '', 'zhafa.childish@gmail.com', '0000-00-00 00:00:00'),
(362, 'triana', '', 'triamarelia@gmail.com', '0000-00-00 00:00:00'),
(363, 'nurman', '', 'biroproperti@Gmail.com', '0000-00-00 00:00:00'),
(364, 'antonia', '', 'antonia_yunita@yahoo.com', '0000-00-00 00:00:00'),
(365, 'hepy', '', 'hepy@outlook.com', '0000-00-00 00:00:00'),
(366, 'Joseph', '', 'joseph.yudianto@Yahoo.com', '0000-00-00 00:00:00'),
(367, 'kennedy', '', 'fnukennedy@Gmail.com', '0000-00-00 00:00:00'),
(368, 'Rudy', '', 'vrudy.dwinanto@gmail.com', '0000-00-00 00:00:00'),
(369, 'dharrma', '', 'yuares.a.dharma@simedarby.com', '0000-00-00 00:00:00'),
(370, 'edwin', '', 'edwinphd@yahoo.com', '0000-00-00 00:00:00'),
(371, 'yuli', '', 'melisa.yulianti@le-intl.com', '0000-00-00 00:00:00'),
(372, 'noor yusuuf', '', 'noor.yusuf@cikarangdryport.com', '0000-00-00 00:00:00'),
(373, 'agus', '', 'hadnaagus@yahoo.com', '0000-00-00 00:00:00'),
(374, 'muchtar', '', 'muchtaarmg@gmail.com', '0000-00-00 00:00:00'),
(375, 'latu', '', 'ylatupapua@Yahoo.com', '0000-00-00 00:00:00'),
(376, 'nugroho', '', 'nugroho.wibowo@halillburton.com', '0000-00-00 00:00:00'),
(377, 'jul', '', 'julvizar@hotmail.com', '0000-00-00 00:00:00'),
(378, 'cahyo', '', 'cahyo.w@gmail.com', '0000-00-00 00:00:00'),
(379, 'Han', '', 'moehan_84@Hotmail.com', '0000-00-00 00:00:00'),
(380, 'budi', '', 'budi@sungkono.net', '0000-00-00 00:00:00'),
(381, 'achmad hidayat', '', 'ahid07@Gmail.com', '0000-00-00 00:00:00'),
(382, 'nanink ', '', 'nanink@Gmail.com', '0000-00-00 00:00:00'),
(383, 'tjandra', '', 'tjandra.suryanto@gmail.com', '0000-00-00 00:00:00'),
(384, 'budi harnata', '', 'budi.harnata@gmail.com', '0000-00-00 00:00:00'),
(385, 'm yusuf', '', 'yusuf_shalahuddin@Yahoo.com', '0000-00-00 00:00:00'),
(386, 'herry', '', 'ymherry@yahoo.com', '0000-00-00 00:00:00'),
(387, 'Adhe', '', 'adhekasundawa@gmail.com', '0000-00-00 00:00:00'),
(388, 'Lena Rosalina', '', 'lena.rosalina@bayumaritim.com', '0000-00-00 00:00:00'),
(389, 'Safitri', '', 'safitri@yahoo.com', '0000-00-00 00:00:00'),
(390, 'Fajaryati', '', 'Fajaryaati.prve@Gmail.com', '0000-00-00 00:00:00'),
(391, 'Rima Setya', '', 'rima_Setya_06@yahoo.com', '0000-00-00 00:00:00'),
(392, 'Budi Harjo', '', 'n.budiharjo@Gmail.com', '0000-00-00 00:00:00'),
(393, 'Imbuh Sudrajat', '', 'Imbuh.sudrajat@gmail.com', '0000-00-00 00:00:00'),
(394, 'Aries Hidayat', '', 'Aries.Hidayat921@yahoo.com', '0000-00-00 00:00:00'),
(395, 'tri', '', 'Tri_vidyaeka@yahoo.com', '0000-00-00 00:00:00'),
(396, 'Hanief', '', 'hanief_rabanie@yahoo.co.id', '0000-00-00 00:00:00'),
(397, 'Adinda', '', 'Adindaika80@yahoo.com', '0000-00-00 00:00:00'),
(398, 'Rika Aulia', '', 'Rikaaulia80@Gmail.com', '0000-00-00 00:00:00'),
(399, 'Enar Faleh', '', 'enarfaleh79@gmail.com', '0000-00-00 00:00:00'),
(400, 'Rhiga', '', 'Rhiga_nee@gmail.com', '0000-00-00 00:00:00'),
(401, 'Mia', '', 'Miayagakinai@Gmail.com', '0000-00-00 00:00:00'),
(402, 'Kenamay', '', 'Kenamaylove@gmail.com', '0000-00-00 00:00:00'),
(403, 'Reynord', '', 'reynordafloh@gmail.com', '0000-00-00 00:00:00'),
(404, 'Giantik', '', 'giantik_alif@Gmail.com', '0000-00-00 00:00:00'),
(405, 'Zul', '', 'zul478@gmail.com', '0000-00-00 00:00:00'),
(406, 'uuidi santoso', '', 'uuidisantoso@gmail.com', '0000-00-00 00:00:00'),
(407, 'Nurlaela', '', 'nurlaela23yuliarti@gmail.com', '0000-00-00 00:00:00'),
(408, 'Ulie', '', 'ullie753@gmail.com', '0000-00-00 00:00:00'),
(409, 'Boeday Bella', '', 'boedaybella2014@gmail.com', '0000-00-00 00:00:00'),
(410, 'Rosli', '', 'Rosli8652@gmail.com', '0000-00-00 00:00:00'),
(411, 'Ucup', '', 'ucups@gmail.com', '0000-00-00 00:00:00'),
(412, 'Danu Riandra', '', 'danurlovelyaisyah4@gmail.com', '0000-00-00 00:00:00'),
(413, 'Andriana', '', 'anfy.91@gmail.com', '0000-00-00 00:00:00'),
(414, 'Indah Setiowati', '', 'icurlu78@gmail.com', '0000-00-00 00:00:00'),
(415, 'Yessy', '', 'yessy_maretty@yahoo.co.id', '0000-00-00 00:00:00'),
(416, 'Sisca Riana', '', 'sisca.riana@yahoo.com', '0000-00-00 00:00:00'),
(417, 'Timan Alfonso', '', 'timanteyeng@gmail.com', '0000-00-00 00:00:00'),
(418, 'Gomgom Malau', '', 'gomgom.malau@hotmail.com', '0000-00-00 00:00:00'),
(419, 'Ismail Shaleh', '', 'shalehmail@salamtour.com', '0000-00-00 00:00:00'),
(420, 'Goenawan Muhammad Hamzah', '', 'gunawan.muhammad.hamzah@gmail.com', '0000-00-00 00:00:00'),
(421, 'Ronald Sitohang', '', 'ronaldositohang99@Gmail.com', '0000-00-00 00:00:00'),
(422, 'Aroels Bagas', '', 'aroelsbagas99@gmail.com', '0000-00-00 00:00:00'),
(423, 'Budi Prayitno', '', 'mz.boedy@Gmail.com', '0000-00-00 00:00:00'),
(424, 'Fachrul Kubays', '', 'fachrulkubays@gmail.com', '0000-00-00 00:00:00'),
(425, 'Yatun Santika', '', 'katayat@gmail.com', '0000-00-00 00:00:00'),
(426, 'Alam Saputra', '', 'alamsaputra@hotmail.com', '0000-00-00 00:00:00'),
(427, 'Rahman Fauzi', '', 'fauzie88@gmail.com', '0000-00-00 00:00:00'),
(428, 'Rima Jufry', '', 'rima_310@yahoo.co.id', '0000-00-00 00:00:00'),
(429, 'Maulana', '', 'sound.maulana@gmail.com', '0000-00-00 00:00:00'),
(430, 'Andry Prima', '', 'andry_prima@yahoo.co.id', '0000-00-00 00:00:00'),
(431, 'Dian Aqshaa', '', 'oshidary.dian@gmail.com', '0000-00-00 00:00:00'),
(432, 'Yuna Sukmana', '', 'yunayupi@gmail.com', '0000-00-00 00:00:00'),
(433, 'Arwies Sudharta', '', 'arwien.okta@Gmail.com', '0000-00-00 00:00:00'),
(434, 'Steven Massewa', '', 'st_masse@yahoo.com', '0000-00-00 00:00:00'),
(435, 'Beby', '', 'loveby_princesslife@ymail.com', '0000-00-00 00:00:00'),
(436, 'Erna Mariani', '', 'erna_riani@yahoo.com', '0000-00-00 00:00:00'),
(437, 'Anelia Gustantri', '', 'liagustantri@yahoo.co.id', '0000-00-00 00:00:00'),
(438, 'Muhammad Sudrajat', '', 'muhammad.sudrajat@gmail.com', '0000-00-00 00:00:00'),
(439, 'Tofan Witjaksono', '', 'tofanw@Gmail.com', '0000-00-00 00:00:00'),
(440, 'Indra', '', 'indra.ppa07@Gmail.com', '0000-00-00 00:00:00'),
(441, 'Syaiful', '', 'mihaylo.syaiful@Gmail.com', '0000-00-00 00:00:00'),
(442, 'Gigih', '', 'iman_gip@yahoo.com', '0000-00-00 00:00:00'),
(443, 'ARB', '', 'arfandi.bachri@Gmail.com', '0000-00-00 00:00:00'),
(444, 'Ardhiko Widayrso', '', 'w.ardhiko@yahoo.com', '0000-00-00 00:00:00'),
(445, 'Dewi Sanca', '', 'dewisanca@yahoo.com', '0000-00-00 00:00:00'),
(446, 'Andry Aziz', '', 'azisandry@gmail.com', '0000-00-00 00:00:00'),
(447, 'Liena', '', 'na_tgr@yahoo.com', '0000-00-00 00:00:00'),
(448, 'Taufan', '', 'taufansamudera57@ymail.com', '0000-00-00 00:00:00'),
(449, 'Adam ', '', 'rizki.adam@yahoo.com', '0000-00-00 00:00:00'),
(450, 'Ericko', '', 'ericko.chanz@yahoo.com', '0000-00-00 00:00:00'),
(451, 'Adhisara Kridowasono', '', 'kridorafter@gmail.com', '0000-00-00 00:00:00'),
(452, 'Victor Lensun', '', 'vlensun@Gmail.com', '0000-00-00 00:00:00'),
(453, 'Ismail salleh', '', 'ii_mael@yahoo.co.id', '0000-00-00 00:00:00'),
(454, 'Rivan Pradana', '', 'rivanrostiar@gmail.com', '0000-00-00 00:00:00'),
(455, 'Merry Thirtapraja', '', 'indah_good63@yahoo.co.id', '0000-00-00 00:00:00'),
(456, 'Vicky', '', 'vickysuwiknyo@yahoo.com', '0000-00-00 00:00:00'),
(457, 'Rizky Ariaditya', '', 'billiardhollick@yahoo.com', '0000-00-00 00:00:00'),
(458, 'Delvi Winosri', '', 'delviwinosari@gmail.com', '0000-00-00 00:00:00'),
(459, 'Riyent Nainggolan', '', 'wine.bcs@gmail.com', '0000-00-00 00:00:00'),
(460, 'Okta Novi', '', 'oktanoviyanto@Yahoo.co.id', '0000-00-00 00:00:00'),
(461, 'Ari W', '', 'a121_wibowo@yahoo.com', '0000-00-00 00:00:00'),
(462, 'Sela', '', 'selawati2015@gmail.com', '0000-00-00 00:00:00'),
(463, 'Olivia', '', 'olivia_2456@yahoo.com', '0000-00-00 00:00:00'),
(464, 'MuzeAidi', '', 'muze.community@gmail.com', '0000-00-00 00:00:00'),
(465, 'Febianus', '', 'Febianus.abraham@yahoo.com', '0000-00-00 00:00:00'),
(466, 'Ananda Dini', '', 'diniyawesi@Gmail.com', '0000-00-00 00:00:00'),
(467, 'Agus Mulyawan', '', 'koesmadie85@yahoo.com', '0000-00-00 00:00:00'),
(468, 'Fauzi Nugraha', '', 'zedings@Gmail.com', '0000-00-00 00:00:00'),
(469, 'Heru Tri Yuniarto', '', 'bru_heru@yahoo.com', '0000-00-00 00:00:00'),
(470, 'Ahmad Doni', '', 'ahmaddoni61@Gmail.com', '0000-00-00 00:00:00'),
(471, 'Chloe', '', 'nicolinelu@Gmail.com', '0000-00-00 00:00:00'),
(472, 'Novar Imran', '', 'novar_imran@yahoo.com', '0000-00-00 00:00:00'),
(473, 'Farrah Lady susanto', '', 'farrahladysusanto@Gmail.com', '0000-00-00 00:00:00'),
(474, 'Novy Sulistyowati', '', 'novysusilowati@ymail.com', '0000-00-00 00:00:00'),
(475, 'Adeira', '', 'adeiradewi@gmail.com', '0000-00-00 00:00:00'),
(476, 'Anton Silva', '', 'prastiawan@gmail.com', '0000-00-00 00:00:00'),
(477, 'Raden Bagus Ariwibowo', '', 'bagusariwibowo@ymail.com', '0000-00-00 00:00:00'),
(478, 'Bernadus wawan', '', 'bernadus_wawan@yahoo.com', '0000-00-00 00:00:00'),
(479, 'Astari Putri', '', 'astaripu@Gmail.com', '0000-00-00 00:00:00'),
(480, 'Ericc Saputra', '', 'ericsaputra2703@gmail.com', '0000-00-00 00:00:00'),
(481, 'Windra', '', 'ridwansoft@gmail.com', '0000-00-00 00:00:00'),
(482, 'Sanny', '', 'lim.sanny@gmail.com', '0000-00-00 00:00:00'),
(483, 'Deavy Indah P', '', 'indodevi@Yahoo.com', '0000-00-00 00:00:00'),
(484, 'Dhiny Thiansue', '', 'shinta.andiny@Yahoo.com', '0000-00-00 00:00:00'),
(485, 'Kunaeni', '', 'st_kunaeni82@gmail.com', '0000-00-00 00:00:00'),
(486, 'Hidayat Riyan', '', 'toem_poe_riyan@rocketmail.com', '0000-00-00 00:00:00'),
(487, 'Alif Raditya Fahmi', '', 'fahmiraditya87@gmail.com', '0000-00-00 00:00:00'),
(488, 'Nicolaus', '', 'njoehanes@yahoo.com', '0000-00-00 00:00:00'),
(489, 'Be Together', '', 'express.sukses.bersama@gmail.com', '0000-00-00 00:00:00'),
(490, 'Budi Setyawan', '', 'dysse.dilapanga@gmail.com', '0000-00-00 00:00:00'),
(491, 'M.S', '', 'serrikabagus@gmail.com', '0000-00-00 00:00:00'),
(492, 'Andi Muhammad', '', 'andimuhammad2801@gmail.com', '0000-00-00 00:00:00'),
(493, 'Tania Mustika', '', 'twidjaja.mustika@Gmail.com', '0000-00-00 00:00:00'),
(494, 'Yericha', '', 'yericha.lie@Gmail.com', '0000-00-00 00:00:00'),
(495, 'Nova', '', 'Novasantosarahamad@gmail.com', '0000-00-00 00:00:00'),
(496, 'Pahe', '', 'pahe_amerop@yahoo.com', '0000-00-00 00:00:00'),
(497, 'Albert', '', 'albert766hi@Yahoo.com', '0000-00-00 00:00:00'),
(498, 'Robert', '', 'robertparuhum@lawyer.com', '0000-00-00 00:00:00'),
(499, 'Issya', '', 'issya88@Gmail.com', '0000-00-00 00:00:00'),
(500, 'Om Joko', '', 'omjoko06@yahoo.co.id', '0000-00-00 00:00:00'),
(501, 'smsong', '', 'smsong@95retail.com', '0000-00-00 00:00:00'),
(502, 'heru', '', 'heru.it@hkrealtindo.co.id', '0000-00-00 00:00:00'),
(503, 'interior Design', '', 'llinteriordezign@gmail.com', '0000-00-00 00:00:00'),
(504, 'Rig Hani', '', 'rig_hani@yahoo.com', '0000-00-00 00:00:00'),
(505, 'Marianto', '', 'mariantowidji@Gmail.com', '0000-00-00 00:00:00'),
(506, 'Bimo Sarashadi', '', 'bimo.sarashadi@gmail.com', '0000-00-00 00:00:00'),
(507, 'Ardy Bungsu', '', 'ardy.bungsu@Gmail.com', '0000-00-00 00:00:00'),
(508, 'Mini Sumini', '', 'minisumini2707@Yahoo.co.id', '0000-00-00 00:00:00'),
(509, 'Istan', '', 'istantoups@Yahoo.com', '0000-00-00 00:00:00'),
(510, 'Hanwidpur', '', 'hanwidpur@Gmail.com', '0000-00-00 00:00:00'),
(511, 'Kasihint', '', 'kasihint@Gmail.com', '0000-00-00 00:00:00'),
(512, 'Wpp_widya', '', 'wpp_widya@yahoo.co.od', '0000-00-00 00:00:00'),
(513, 'Info', '', 'info@pesan.com', '0000-00-00 00:00:00'),
(514, 'Pesancom', '', 'pesancom@ymail.com', '0000-00-00 00:00:00'),
(515, 'Malariyanto', '', 'malariyanto@yahoo.com', '0000-00-00 00:00:00'),
(516, 'Double.s.kreasimutuniaga', '', 'double.s.kreasimutuniaga@gmail.com', '0000-00-00 00:00:00'),
(517, 'Linaji', '', 'linaji@gmail.com', '0000-00-00 00:00:00'),
(518, 'Yosephms', '', 'yosephms@yahoo.com', '0000-00-00 00:00:00'),
(519, 'Lukisanbos', '', 'lukisanbos@yahoo.co.id', '0000-00-00 00:00:00'),
(520, 'Anjrah2006', '', 'anjrah2006@gmail.com', '0000-00-00 00:00:00'),
(521, 'Sainurizals', '', 'sainurizals@Yahoo.com', '0000-00-00 00:00:00'),
(522, 'Ranggarae01', '', 'ranggarae01@gmail.com', '0000-00-00 00:00:00'),
(523, 'Syaifudin79', '', 'syaifudin79@gmail.com', '0000-00-00 00:00:00'),
(524, 'Panjiislam', '', 'panjiislam@gmail.com', '0000-00-00 00:00:00'),
(525, 'Kuswindarto', '', 'kuswindarto@Yahoo.com', '0000-00-00 00:00:00'),
(526, 'Iklanbaris', '', 'iklanbaris@ybisnis.com', '0000-00-00 00:00:00'),
(527, 'Aceps', '', 'aceps@rocketmail.com', '0000-00-00 00:00:00'),
(528, 'Asnawist', '', 'asnawist@Gmail.com', '0000-00-00 00:00:00'),
(529, 'Info', '', 'info@balimediaplus.com', '0000-00-00 00:00:00'),
(530, 'Sen_aurelia', '', 'sen_aurelia@yahoo.com.sg', '0000-00-00 00:00:00'),
(531, 'Muhib2169', '', 'muhib2169@yahoo.co.uk', '0000-00-00 00:00:00'),
(532, 'Haspan', '', 'haspan@haspan-berkat-jaya.Com', '0000-00-00 00:00:00'),
(533, 'Aswardi.p', '', 'aswardi.p@pgi.panasonic.co.id', '0000-00-00 00:00:00'),
(534, 'Djunaidi', '', 'djunaidi@Hotmail.com', '0000-00-00 00:00:00'),
(535, 'Bonjomart', '', 'bonjomart@yahoo.com', '0000-00-00 00:00:00'),
(536, 'Me', '', 'me@didikm.com', '0000-00-00 00:00:00'),
(537, 'Bahanmbittoto', '', 'bahanmbittoto@Gmail.com', '0000-00-00 00:00:00'),
(538, 'Mayapada68', '', 'mayapada68@yahoo.co.id', '0000-00-00 00:00:00'),
(539, 'Iqbalsmc', '', 'iqbalsmc@ymail.com', '0000-00-00 00:00:00'),
(540, 'Rusnyear', '', 'rusnyear@gmail.com', '0000-00-00 00:00:00'),
(541, 'Hendri1484', '', 'hendri1484@yahoo.com', '0000-00-00 00:00:00'),
(542, 'Mandiri_ud', '', 'mandiri_ud@yahoo.com', '0000-00-00 00:00:00'),
(543, 'Agus', '', 'agus@aboutcirebon.com', '0000-00-00 00:00:00'),
(544, 'Yanmurma', '', 'yanmurma@yahoo.co.id', '0000-00-00 00:00:00'),
(545, 'Fedy_romanti', '', 'fedy_romanti@yahoo.com', '0000-00-00 00:00:00'),
(546, 'Bungjamalullail', '', 'bungjamalullail@gmail.com', '0000-00-00 00:00:00'),
(547, 'Jamallail', '', 'jamallail@ymail.com', '0000-00-00 00:00:00'),
(548, 'Iqbal', '', 'iqbal@Gmail.com', '0000-00-00 00:00:00'),
(549, 'Marvinsitorus', '', 'marvinsitorus@hargahotel.com', '0000-00-00 00:00:00'),
(550, 'Yayasanislamputratanjung', '', 'yayasanislamputratanjung@Yahoo.com', '0000-00-00 00:00:00'),
(551, 'Wowor99', '', 'wowor99@yahoo.com', '0000-00-00 00:00:00'),
(552, 'M.heripurwanto', '', 'm.heripurwanto@yahoo.com', '0000-00-00 00:00:00'),
(553, 'Taufiq_archits', '', 'taufiq_archits@yahoo.com', '0000-00-00 00:00:00'),
(554, 'Budisatoe', '', 'budisatoe@Yahoo.co.id', '0000-00-00 00:00:00'),
(555, 'Putramelala', '', 'putramelala@yahoo.com', '0000-00-00 00:00:00'),
(556, 'Dharmacitrasarana', '', 'dharmacitrasarana@Yahoo.com', '0000-00-00 00:00:00'),
(557, 'Sales', '', 'sales@citywebindo.com', '0000-00-00 00:00:00'),
(558, 'Rumadi', '', 'rumadi@gmail.com', '0000-00-00 00:00:00'),
(559, 'Dovier', '', 'dovier@djcomnet.com', '0000-00-00 00:00:00'),
(560, 'Pesan.greenangelicacs', '', 'pesan.greenangelicacs@yahoo.com', '0000-00-00 00:00:00'),
(561, 'Tsys.adv', '', 'tsys.adv@gmail.com', '0000-00-00 00:00:00'),
(562, 'Faruk.anz', '', 'faruk.anz@gmail.com', '0000-00-00 00:00:00'),
(563, 'Ritapunto12', '', 'ritapunto12@gmail.com', '0000-00-00 00:00:00'),
(564, 'Merrybassil', '', 'merrybassil@Yahoo.com', '0000-00-00 00:00:00'),
(565, 'Mukhlisvisi008', '', 'mukhlisvisi008@yahoo.co.id', '0000-00-00 00:00:00'),
(566, 'Rich_boyx', '', 'rich_boyx@yahoo.co.id', '0000-00-00 00:00:00'),
(567, 'Imh4f', '', 'imh4f@Yahoo.com', '0000-00-00 00:00:00'),
(568, 'Mujjaddid_uk3', '', 'mujjaddid_uk3@ymail.com', '0000-00-00 00:00:00'),
(569, 'Wa_wa_n', '', 'wa_wa_n@ymail.com', '0000-00-00 00:00:00'),
(570, 'Iklandetik', '', 'iklandetik@yahoo.com', '0000-00-00 00:00:00'),
(571, 'Regina_iklan', '', 'regina_iklan@yahoo.com', '0000-00-00 00:00:00'),
(572, 'Sektiida', '', 'sektiida@Yahoo.com', '0000-00-00 00:00:00'),
(573, 'Etalase_parfum', '', 'etalase_parfum@yahoo.com', '0000-00-00 00:00:00'),
(574, 'Bidic9', '', 'bidic9@gmail.com', '0000-00-00 00:00:00'),
(575, 'Yayan_wijaya', '', 'yayan_wijaya@yahoo.co.id', '0000-00-00 00:00:00'),
(576, 'Bundamia', '', 'bundamia@gmail.com', '0000-00-00 00:00:00'),
(577, 'Sigitsmail', '', 'sigitsmail@Gmail.com', '0000-00-00 00:00:00'),
(578, 'Aiys39', '', 'aiys39@yahoo.com', '0000-00-00 00:00:00'),
(579, 'Yoyonsyn', '', 'yoyonsyn@Yahoo.co.id', '0000-00-00 00:00:00'),
(580, 'Meylani81', '', 'meylani81@Gmail.com', '0000-00-00 00:00:00'),
(581, 'Dwibudiacahyanto', '', 'dwibudiacahyanto@gmail.com', '0000-00-00 00:00:00'),
(582, 'Pejatenparkresidence', '', 'pejatenparkresidence@gmail.com', '0000-00-00 00:00:00'),
(583, 'Ade_rayani', '', 'ade_rayani@yahoo.co.id', '0000-00-00 00:00:00'),
(584, 'Ardi.siagian', '', 'ardi.siagian@yahoo.com', '0000-00-00 00:00:00'),
(585, 'Fuad', '', 'fuad@warungjamtangan.com', '0000-00-00 00:00:00'),
(586, 'Me', '', 'me@andycka', '0000-00-00 00:00:00'),
(587, 'Extutanahabang', '', 'extutanahabang@Ymail.com', '0000-00-00 00:00:00'),
(588, 'Fashionxtwo', '', 'fashionxtwo@yahoo.co.id', '0000-00-00 00:00:00'),
(589, 'Indo', '', 'indo@cateringjakarta.net', '0000-00-00 00:00:00'),
(590, 'Omnivorme', '', 'omnivorme@Yahoo.com', '0000-00-00 00:00:00'),
(591, 'Info', '', 'info@filterairsegar.com', '0000-00-00 00:00:00'),
(592, 'Info', '', 'info@pusatlogo.com', '0000-00-00 00:00:00'),
(593, 'Teamsales', '', 'teamsales@inixindo.co.id', '0000-00-00 00:00:00'),
(594, 'Adie_siroz', '', 'adie_siroz@yahoo.com', '0000-00-00 00:00:00'),
(595, 'Lautan.rezeki', '', 'lautan.rezeki@yahoo.com', '0000-00-00 00:00:00'),
(596, 'Lautan.rezeki71', '', 'lautan.rezeki71@gmail.com', '0000-00-00 00:00:00'),
(597, 'Zakiyatulmasuhfah', '', 'zakiyatulmasuhfah@Gmail.com', '0000-00-00 00:00:00'),
(598, 'Dyh_maret09', '', 'dyh_maret09@Yahoo.com', '0000-00-00 00:00:00'),
(599, 'Edma.wpa', '', 'edma.wpa@gmail.com', '0000-00-00 00:00:00'),
(600, 'Suratno229', '', 'suratno229@gmail.com', '0000-00-00 00:00:00'),
(601, 'Vsibrillian', '', 'vsibrillian@Gmail.com', '0000-00-00 00:00:00'),
(602, 'Hendyhamdan', '', 'hendyhamdan@gmail.com', '0000-00-00 00:00:00'),
(603, 'Luminos_eiros', '', 'luminos_eiros@Yahoo.com', '0000-00-00 00:00:00'),
(604, 'Sansekerta88', '', 'sansekerta88@Yahoo.com', '0000-00-00 00:00:00'),
(605, 'Serbanet', '', 'serbanet@Ymail.com', '0000-00-00 00:00:00'),
(606, 'Syamriji', '', 'syamriji@yahoo.com', '0000-00-00 00:00:00'),
(607, 'Rudy', '', 'rudy@tokonet.com', '0000-00-00 00:00:00'),
(608, 'Ativon_aritama', '', 'ativon_aritama@yahoo.com', '0000-00-00 00:00:00'),
(609, 'Info', '', 'info@ppcindo.com', '0000-00-00 00:00:00'),
(610, 'Amigosejatiadv', '', 'amigosejatiadv@yahoo.com', '0000-00-00 00:00:00'),
(611, 'Revan_m', '', 'revan_m@Yahoo.com', '0000-00-00 00:00:00'),
(612, 'Komorus', '', 'komorus@Yahoo.com', '0000-00-00 00:00:00'),
(613, 'Junatham', '', 'junatham@yahoo.com', '0000-00-00 00:00:00'),
(614, 'Cs', '', 'cs@roripon.com', '0000-00-00 00:00:00'),
(615, 'Apri', '', 'apri@jellygamat.com', '0000-00-00 00:00:00'),
(616, 'Purnawarman.mtes1', '', 'purnawarman.mtes1@gmail.com', '0000-00-00 00:00:00'),
(617, 'Fenhin', '', 'fenhin@Gmail.com', '0000-00-00 00:00:00'),
(618, 'Mtduatuju', '', 'mtduatuju@gmail.com', '0000-00-00 00:00:00'),
(619, 'Datamediahost', '', 'datamediahost@yahoo.com', '0000-00-00 00:00:00'),
(620, 'Ads', '', 'ads@blognusa.com', '0000-00-00 00:00:00'),
(621, 'Iffah.mumpuni', '', 'iffah.mumpuni@Gmail.com', '0000-00-00 00:00:00'),
(622, 'Ycomunity3', '', 'ycomunity3@Gmail.com', '0000-00-00 00:00:00'),
(623, 'Alexmobile99', '', 'alexmobile99@gmail.com', '0000-00-00 00:00:00'),
(624, 'Bambang', '', 'bambang@maclayexpert.com', '0000-00-00 00:00:00'),
(625, 'Sales', '', 'sales@sarajaradvertising.com', '0000-00-00 00:00:00'),
(626, 'Box', '', 'box@lusagatraining.com', '0000-00-00 00:00:00'),
(627, 'Lusagatraining', '', 'lusagatraining@Yahoo.com', '0000-00-00 00:00:00'),
(628, 'M.yasin.abas', '', 'm.yasin.abas@gmail.com', '0000-00-00 00:00:00'),
(629, 'Akuronaldi', '', 'akuronaldi@gmail.com', '0000-00-00 00:00:00'),
(630, 'Rahmawati81', '', 'rahmawati81@gmail.com', '0000-00-00 00:00:00'),
(631, 'Winniewisudani', '', 'winniewisudani@gmail.com', '0000-00-00 00:00:00'),
(632, 'Ayu.fatmasari', '', 'ayu.fatmasari@toyota-boshoku.com', '0000-00-00 00:00:00'),
(633, 'Karinakennard', '', 'karinakennard@gmail.com', '0000-00-00 00:00:00'),
(634, 'Dr.larasatiraha', '', 'dr.larasatiraha@gmail.com', '0000-00-00 00:00:00'),
(635, 'Arifin.ma0271', '', 'arifin.ma0271@gmail.com', '0000-00-00 00:00:00'),
(636, 'Ezystar9', '', 'ezystar9@gmail.com', '0000-00-00 00:00:00'),
(637, 'Osman_jyd', '', 'osman_jyd@yahoo.co.id', '0000-00-00 00:00:00'),
(638, 'Sekigahara_3112', '', 'sekigahara_3112@yahoo.com', '0000-00-00 00:00:00'),
(639, 'Tiara.lestari.sulisilowaty', '', 'tiara.lestari.sulisilowaty@gmail.com', '0000-00-00 00:00:00'),
(640, 'Yenguan1984', '', 'yenguan1984@gmail.com', '0000-00-00 00:00:00'),
(641, 'Devi_sonyahi', '', 'Devi_Sonyahi@gmail.com', '0000-00-00 00:00:00'),
(642, 'Fitri_kuchink', '', 'Fitri_Kuchink@gmail.com', '0000-00-00 00:00:00'),
(643, 'Harley_ridwan_putranto', '', 'Harley_Ridwan_Putranto@gmail.com', '0000-00-00 00:00:00'),
(644, 'Johnson_silitonga', '', 'johnson_silitonga@gmail.com', '0000-00-00 00:00:00'),
(645, 'Muhamad_septiandi', '', 'Muhamad_Septiandi@gmail.com', '0000-00-00 00:00:00'),
(646, 'Panji_usmar', '', 'Panji_Usmar@gmail.com', '0000-00-00 00:00:00'),
(647, 'Putra_fardian', '', 'Putra_Fardian@gmail.com', '0000-00-00 00:00:00'),
(648, 'Soleh_property', '', 'Soleh_Property@gmail.com', '0000-00-00 00:00:00'),
(649, 'Umar_setia_budi', '', 'Umar_setia_budi@gmail.com', '0000-00-00 00:00:00'),
(650, 'A12i_wibowo', '', 'a12i_wibowo@yahoo.com', '0000-00-00 00:00:00'),
(651, 'Achmadi', '', 'achmadi@patcotech.com', '0000-00-00 00:00:00'),
(652, 'Achmadtoufik', '', 'achmadtoufik@yahoo.com', '0000-00-00 00:00:00'),
(653, 'Adegrant', '', 'adegrant@hotmail.com', '0000-00-00 00:00:00'),
(654, 'Adhesukandawa', '', 'adhesukandawa@gmail.com', '0000-00-00 00:00:00'),
(655, 'Adi.santosobgr', '', 'adi.santosobgr@yahoo.co.id', '0000-00-00 00:00:00'),
(656, 'Adindaika80', '', 'adindaika80@yahoo.com', '0000-00-00 00:00:00'),
(657, 'Adisusanto', '', 'adisusanto@seid.sharp-world.com', '0000-00-00 00:00:00'),
(658, 'Adityarahmat', '', 'adityarahmat@yahoo.com', '0000-00-00 00:00:00'),
(659, 'Adiwijaya', '', 'adiwijaya@wika.co.id', '0000-00-00 00:00:00'),
(660, 'Ahmadfawzy', '', 'ahmadfawzy@hotmail.com', '0000-00-00 00:00:00'),
(661, 'Ahun_1987', '', 'ahun_1987@hotmail.com', '0000-00-00 00:00:00'),
(662, 'Alamsaputra', '', 'Alamsaputra@hotmail.com', '0000-00-00 00:00:00'),
(663, 'Aldo_fernnadez28', '', 'aldo_fernnadez28@yahoo.co.id', '0000-00-00 00:00:00'),
(664, 'Aly_masadi', '', 'aly_masadi@yahoo.com', '0000-00-00 00:00:00'),
(665, 'Amelia', '', 'amelia@aisin-indonesia.co.id', '0000-00-00 00:00:00'),
(666, 'Andih.halim', '', 'andih.halim@yahoo.com', '0000-00-00 00:00:00'),
(667, 'Andih_halim', '', 'andih_halim@yahoo.com', '0000-00-00 00:00:00'),
(668, 'Andhika_putera', '', 'Andhika_Putera@gmail.com', '0000-00-00 00:00:00'),
(669, 'Andrejoses76', '', 'andrejoses76@gmail.com', '0000-00-00 00:00:00'),
(670, 'Andri.budiman', '', 'andri.budiman@medcoenergi.com', '0000-00-00 00:00:00'),
(671, 'Andry_prima', '', 'andry_prima@yhoo.co.id', '0000-00-00 00:00:00'),
(672, 'Antonia_yunita', '', 'antonia_yunita@yahoo.com', '0000-00-00 00:00:00'),
(673, 'Anwar_agus', '', 'anwar_agus@yahoo.co.id', '0000-00-00 00:00:00'),
(674, 'Aprilcandra', '', 'aprilcandra@yahoo.com', '0000-00-00 00:00:00'),
(675, 'Ar', '', 'ar@tiptop.co.id', '0000-00-00 00:00:00'),
(676, 'Ar_rachmadi', '', 'ar_rachmadi@yahoo.com', '0000-00-00 00:00:00'),
(677, 'Ardhiko', '', 'ardhiko@yahoo.com', '0000-00-00 00:00:00'),
(678, 'Ardisultan', '', 'ardisultan@yahoo.com', '0000-00-00 00:00:00'),
(679, 'Ardy', '', 'ardy@nagai.co.id', '0000-00-00 00:00:00'),
(680, 'Arief_muq', '', 'arief_muq@yahoo.com', '0000-00-00 00:00:00'),
(681, 'Arieffadillah077', '', 'arieffadillah077@gmail.com', '0000-00-00 00:00:00'),
(682, 'Aries_hidayat921', '', 'aries_hidayat921@yahoo.com', '0000-00-00 00:00:00'),
(683, 'Arifin.ma0271', '', 'arifin.ma0271@gmail.com', '0000-00-00 00:00:00'),
(684, 'Arifuddinsaputra2', '', 'arifuddinsaputra2@yahoo.com', '0000-00-00 00:00:00'),
(685, 'Arizca.arifiani', '', 'arizca.arifiani@yahoo.com', '0000-00-00 00:00:00'),
(686, 'Arjuna.sakir', '', 'arjuna.sakir@yahoo.com', '0000-00-00 00:00:00'),
(687, 'Arlanleza', '', 'arlanleza@yahoo.com', '0000-00-00 00:00:00'),
(688, 'Aroelbagas99', '', 'aroelbagas99@gmail.com', '0000-00-00 00:00:00'),
(689, 'Aryyuliarto', '', 'aryyuliarto@gmail.com', '0000-00-00 00:00:00'),
(690, 'Asholeduddinshiddieq', '', 'Asholeduddinshiddieq@yahoo.com', '0000-00-00 00:00:00'),
(691, 'Atin', '', 'atin@koyorad.co.id', '0000-00-00 00:00:00'),
(692, 'Atmadjaari', '', 'atmadjaari@yahoo.com', '0000-00-00 00:00:00'),
(693, 'Ato106', '', 'ato106@yahoo.com', '0000-00-00 00:00:00'),
(694, 'Aulia.tiara', '', 'aulia.tiara@isuzu.astra.co.id', '0000-00-00 00:00:00'),
(695, 'Auliadirgantari21', '', 'auliadirgantari21@gmail.com', '0000-00-00 00:00:00'),
(696, 'Auliya.wulan83', '', 'Auliya.wulan83@yahoo.com', '0000-00-00 00:00:00'),
(697, 'Aureille_forthtress', '', 'aureille_forthtress@yahoo.co.id', '0000-00-00 00:00:00'),
(698, 'Aurel_cen', '', 'aurel_cen@yahoo.com', '0000-00-00 00:00:00'),
(699, 'Awal210787', '', 'awal210787@yahoo.com', '0000-00-00 00:00:00'),
(700, 'Awi.0527', '', 'awi.0527@yahoo.com', '0000-00-00 00:00:00');
INSERT INTO `email` (`id_email`, `nama`, `number`, `email`, `time`) VALUES
(701, 'Azizsandry', '', 'azizsandry@gmail.com', '0000-00-00 00:00:00'),
(702, 'Badac', '', 'badac@gmail.com', '0000-00-00 00:00:00'),
(703, 'Bagus.febrianto', '', 'bagus.febrianto@gmail.com', '0000-00-00 00:00:00'),
(704, 'Bagusariwibowo', '', 'bagusariwibowo@ymail.com', '0000-00-00 00:00:00'),
(705, 'Bayu.suralaya', '', 'bayu.suralaya@yamazaki.co.id', '0000-00-00 00:00:00'),
(706, 'Bernadus_wawan', '', 'bernadus_wawan@yahoo.com', '0000-00-00 00:00:00'),
(707, 'Bethariewulandari', '', 'bethariewulandari@gmail.com', '0000-00-00 00:00:00'),
(708, 'Billiardholick', '', 'billiardholick@yahoo.com', '0000-00-00 00:00:00'),
(709, 'Biond_alone', '', 'biond_alone@yahoo.co.id', '0000-00-00 00:00:00'),
(710, 'Bru_heru', '', 'bru_heru@yahoo.com', '0000-00-00 00:00:00'),
(711, 'Btradjani', '', 'btradjani@yahoo.com', '0000-00-00 00:00:00'),
(712, 'Caradikarasta', '', 'caradikarasta@yahoo.com', '0000-00-00 00:00:00'),
(713, 'Catherine_1987', '', 'catherine_1987@ymail.com', '0000-00-00 00:00:00'),
(714, 'Catrine.mars', '', 'catrine.mars@yahoo.com', '0000-00-00 00:00:00'),
(715, 'Cdfciadwifortuna', '', 'cdfciadwifortuna@yahoo.com', '0000-00-00 00:00:00'),
(716, 'Chris100380', '', 'chris100380@gmail.com', '0000-00-00 00:00:00'),
(717, 'Cinthya_282', '', 'cinthya_282@yahoo.com', '0000-00-00 00:00:00'),
(718, 'Citraratulangie77', '', 'citraratulangie77@gmail.com', '0000-00-00 00:00:00'),
(719, 'Clarisa_fu', '', 'clarisa_fu@yahoo.com', '0000-00-00 00:00:00'),
(720, 'Cv.mjajkt', '', 'cv.mjajkt@gmail.com', '0000-00-00 00:00:00'),
(721, 'D3w1d3w1', '', 'd3w1d3w1@yahoo.com', '0000-00-00 00:00:00'),
(722, 'Danargono', '', 'danargono@yahoo.co.id', '0000-00-00 00:00:00'),
(723, 'Danielss76', '', 'danielss76@gmail.com', '0000-00-00 00:00:00'),
(724, 'Deasy', '', 'deasy@bumimulia.com', '0000-00-00 00:00:00'),
(725, 'Deddyandriyan', '', 'deddyandriyan@prowell-energy.com', '0000-00-00 00:00:00'),
(726, 'Dede_idris', '', 'dede_idris@yahoo.com', '0000-00-00 00:00:00'),
(727, 'Dewi.sulistyowati', '', 'dewi.sulistyowati@sea.ccamatil.com', '0000-00-00 00:00:00'),
(728, 'Dewisanca', '', 'dewisanca@yahoo.com', '0000-00-00 00:00:00'),
(729, 'Di_dans', '', 'di_dans@yahoo.com', '0000-00-00 00:00:00'),
(730, 'Diahayu.anjasari', '', 'diahayu.anjasari@ymail.com', '0000-00-00 00:00:00'),
(731, 'Dianfortuna', '', 'dianfortuna@yahooo.co.id', '0000-00-00 00:00:00'),
(732, 'Dibyo', '', 'dibyo@vivovilasbali.com', '0000-00-00 00:00:00'),
(733, 'Diliatrs', '', 'diliatrs@gmail.com', '0000-00-00 00:00:00'),
(734, 'Dimas_indriyawan', '', 'dimas_indriyawan@gmail.com', '0000-00-00 00:00:00'),
(735, 'Dina.suharto', '', 'dina.suharto@gmail.com', '0000-00-00 00:00:00'),
(736, 'Donnydone88', '', 'donnydone88@yahoo.com', '0000-00-00 00:00:00'),
(737, 'Dwyakbar', '', 'dwyakbar@outlook.com', '0000-00-00 00:00:00'),
(738, 'Dyahlayungsekar', '', 'dyahlayungsekar@yahoo.com', '0000-00-00 00:00:00'),
(739, 'Edwinphd', '', 'edwinphd@yahoo.com', '0000-00-00 00:00:00'),
(740, 'Efendi_kalfan', '', 'efendi_kalfan@yahoo.co.id', '0000-00-00 00:00:00'),
(741, 'Efran.maidias', '', 'efran.maidias@htn.co.id', '0000-00-00 00:00:00'),
(742, 'Enarfaleh79', '', 'enarfaleh79@gmail.com', '0000-00-00 00:00:00'),
(743, 'Endangwismaya', '', 'endangwismaya@gmail.com', '0000-00-00 00:00:00'),
(744, 'Erastacibubur', '', 'erastacibubur@yahoo.com', '0000-00-00 00:00:00'),
(745, 'Eres.widodo', '', 'eres.widodo@yahoo.com', '0000-00-00 00:00:00'),
(746, 'Erna.riani', '', 'Erna.riani@yahoo.com', '0000-00-00 00:00:00'),
(747, 'Express.sukses.bersama', '', 'express.sukses.bersama@gmail.com', '0000-00-00 00:00:00'),
(748, 'Ezystar9', '', 'ezystar9@gmail.com', '0000-00-00 00:00:00'),
(749, 'Fabianus.abraham', '', 'fabianus.abraham@yahoo.com', '0000-00-00 00:00:00'),
(750, 'Fadia_45132', '', 'fadia_45132@yahoo.com', '0000-00-00 00:00:00'),
(751, 'Fajargustaf', '', 'fajargustaf@yahoo.com', '0000-00-00 00:00:00'),
(752, 'Fajarwahyuz', '', 'Fajarwahyuz@rocketmaiil.com', '0000-00-00 00:00:00'),
(753, 'Fajaryati.prve', '', 'fajaryati.prve@gmail.com', '0000-00-00 00:00:00'),
(754, 'Fannov82', '', 'fannov82@yahoo.co.id', '0000-00-00 00:00:00'),
(755, 'Farhan0987', '', 'farhan0987@gmail.com', '0000-00-00 00:00:00'),
(756, 'Fauzie88', '', 'fauzie88@yahoo.com', '0000-00-00 00:00:00'),
(757, 'Fi_q_sari', '', 'fi_q_sari@yahoo.com', '0000-00-00 00:00:00'),
(758, 'Ganiaakdiat', '', 'ganiaakdiat@yahoo.com', '0000-00-00 00:00:00'),
(759, 'Giantik_alif', '', 'giantik_alif@gmail.com', '0000-00-00 00:00:00'),
(760, 'Grand_everest31', '', 'grand_Everest31@yahoo.com', '0000-00-00 00:00:00'),
(761, 'Gunaw_gun008', '', 'gunaw_gun008@yahoo.com', '0000-00-00 00:00:00'),
(762, 'Gunawan.jenni', '', 'gunawan.jenni@yahoo.com', '0000-00-00 00:00:00'),
(763, 'Hadnaagus', '', 'hadnaagus@yahoo.com', '0000-00-00 00:00:00'),
(764, 'Hanief_rabanie', '', 'hanief_rabanie@yahoo.co.id', '0000-00-00 00:00:00'),
(765, 'Hanny_koe', '', 'hanny_koe@yahoo.com', '0000-00-00 00:00:00'),
(766, 'Henryid213t', '', 'henryid213t@yahoo.com', '0000-00-00 00:00:00'),
(767, 'Hepy', '', 'hepy@outlook.com', '0000-00-00 00:00:00'),
(768, 'Heri.geologist', '', 'heri.geologist@gmail.com', '0000-00-00 00:00:00'),
(769, 'Herusaya33', '', 'herusaya33@yahoo.com', '0000-00-00 00:00:00'),
(770, 'Hidayat.muharah', '', 'hidayat.muharah@conocophilips.com', '0000-00-00 00:00:00'),
(771, 'Hsajidayusuf', '', 'hsajidayusuf@yahoo.com', '0000-00-00 00:00:00'),
(772, 'Hulmut', '', 'hulmut@aspacmining.com', '0000-00-00 00:00:00'),
(773, 'Ibnu.haris', '', 'ibnu.haris@suzuki.co.id', '0000-00-00 00:00:00'),
(774, 'Ichachirsa', '', 'Ichachirsa@yahoo.com', '0000-00-00 00:00:00'),
(775, 'Ichsan.ichsan', '', 'ichsan.ichsan@rocketmail.com', '0000-00-00 00:00:00'),
(776, 'Icy90s', '', 'icy90s@yahoo.com', '0000-00-00 00:00:00'),
(777, 'Idasulastri75', '', 'idasulastri75@gmail.com', '0000-00-00 00:00:00'),
(778, 'Ii_mael', '', 'ii_mael@yahoo.co.id', '0000-00-00 00:00:00'),
(779, 'Iin.fifi.s', '', 'iin.fifi.s@gmail.com', '0000-00-00 00:00:00'),
(780, 'Ika', '', 'ika@nsk.com', '0000-00-00 00:00:00'),
(781, 'Ilyahmuhammad', '', 'ilyahmuhammad@yahoo.co.id', '0000-00-00 00:00:00'),
(782, 'Imallenpraditya', '', 'imallenpraditya@gmail.com', '0000-00-00 00:00:00'),
(783, 'Iman_gip', '', 'iman_gip@yahoo.com', '0000-00-00 00:00:00'),
(784, 'Imelsumel82', '', 'imelsumel82@gmail.com', '0000-00-00 00:00:00'),
(785, 'Info.bigmerchandise', '', 'info.bigmerchandise@gmail.com', '0000-00-00 00:00:00'),
(786, 'Inriwanwidiarja', '', 'inriwanwidiarja@yahoo.com', '0000-00-00 00:00:00'),
(787, 'Istaka', '', 'istaka@istaka.co.id', '0000-00-00 00:00:00'),
(788, 'Jajananodi', '', 'jajananodi@yahoo.co.id', '0000-00-00 00:00:00'),
(789, 'Jayavaro', '', 'jayavaro@yahoo.com', '0000-00-00 00:00:00'),
(790, 'Jokosutoro', '', 'jokosutoro@denso.co.id', '0000-00-00 00:00:00'),
(791, 'K3zia_cnc', '', 'k3zia_cnc@yahoo.com', '0000-00-00 00:00:00'),
(792, 'Kirana_yunita', '', 'kirana_yunita@yahoo.com', '0000-00-00 00:00:00'),
(793, 'Kiswoyo', '', 'kiswoyo@ngkbusi.com', '0000-00-00 00:00:00'),
(794, 'Kuswanto_afif', '', 'kuswanto_afif@yahoo.com', '0000-00-00 00:00:00'),
(795, 'Lanabuanajaya', '', 'lanabuanajaya@yahoo.com', '0000-00-00 00:00:00'),
(796, 'Lieferly', '', 'lieferly@ymail.com', '0000-00-00 00:00:00'),
(797, 'Lily.chen84', '', 'lily.chen84@yahoo.com', '0000-00-00 00:00:00'),
(798, 'Lydia_white81', '', 'lydia_white81@yahoo.com', '0000-00-00 00:00:00'),
(799, 'M.boy_job', '', 'm.boy_job@yahoo.com', '0000-00-00 00:00:00'),
(800, 'Mabariaagus', '', 'mabariaagus@ymail.com', '0000-00-00 00:00:00'),
(801, 'Megawatysoenjoto', '', 'megawatysoenjoto@gmsil.com', '0000-00-00 00:00:00'),
(802, 'Mei', '', 'mei@doctor.com', '0000-00-00 00:00:00'),
(803, 'Meidi', '', 'meidi@me.com', '0000-00-00 00:00:00'),
(804, 'Meina_rishine', '', 'meina_rishine@yahoo.com', '0000-00-00 00:00:00'),
(805, 'Meliana_chai', '', 'meliana_chai@yahoo.com', '0000-00-00 00:00:00'),
(806, 'Michaelreagen', '', 'michaelreagen@yahoo.com', '0000-00-00 00:00:00'),
(807, 'Mulyanto', '', 'mulyanto@tbina.co.id', '0000-00-00 00:00:00'),
(808, 'Mureno_022', '', 'mureno_022@yahoo.com', '0000-00-00 00:00:00'),
(809, 'N_atan12', '', 'n_atan12@yahoo.com', '0000-00-00 00:00:00'),
(810, 'Nando_patria', '', 'nando_patria@yahoo.com', '0000-00-00 00:00:00'),
(811, 'Natalie_ramayanti', '', 'natalie_ramayanti@yahoo.com', '0000-00-00 00:00:00'),
(812, 'Nugroho_budi_10', '', 'nugroho_budi_10@yahoo.com', '0000-00-00 00:00:00'),
(813, 'Nul_zulhadi', '', 'nul_zulhadi@yahoo.com', '0000-00-00 00:00:00'),
(814, 'Nurhuda.astari', '', 'nurhuda.astari@lotte.co.id', '0000-00-00 00:00:00'),
(815, 'Oki_2lak', '', 'oki_2lak@yahoo.com', '0000-00-00 00:00:00'),
(816, 'Pcc', '', 'pcc@pertamina.com', '0000-00-00 00:00:00'),
(817, 'Pipih.purwati', '', 'pipih.purwati@yahoo.com', '0000-00-00 00:00:00'),
(818, 'Pit_sha99', '', 'pit_sha99@yahoo.com', '0000-00-00 00:00:00'),
(819, 'Rahmah.febriana', '', 'rahmah.febriana@gmail.com', '0000-00-00 00:00:00'),
(820, 'Raraidpradjadisastra', '', 'raraidpradjadisastra@gmail.com', '0000-00-00 00:00:00'),
(821, 'Reza.gubarda', '', 'reza.gubarda@yahoo.com', '0000-00-00 00:00:00'),
(822, 'Reza.rahardian', '', 'reza.rahardian@gmail.com', '0000-00-00 00:00:00'),
(823, 'Rhenifitri', '', 'rhenifitri@ymail.com', '0000-00-00 00:00:00'),
(824, 'Riantika_fs', '', 'Riantika_FS@gmail.com', '0000-00-00 00:00:00'),
(825, 'Rimanoge06', '', 'rimanoge06@ymail.com', '0000-00-00 00:00:00'),
(826, 'Riom_2006', '', 'riom_2006@yahoo.co.id', '0000-00-00 00:00:00'),
(827, 'Ristiana.manao', '', 'ristiana.manao@live.com', '0000-00-00 00:00:00'),
(828, 'Rukasahrulianre', '', 'rukasahrulianre@yahoo.co.id', '0000-00-00 00:00:00'),
(829, 'San_cha501', '', 'san_cha501@yahoo.com', '0000-00-00 00:00:00'),
(830, 'Saranapersadagroup', '', 'saranapersadagroup@gmail.com', '0000-00-00 00:00:00'),
(831, 'Septianenciel', '', 'septianenciel@yahoo.com', '0000-00-00 00:00:00'),
(832, 'Sesper', '', 'sesper@bgrindonesia.com', '0000-00-00 00:00:00'),
(833, 'Setyoadi00', '', 'setyoadi00@yahoo.com', '0000-00-00 00:00:00'),
(834, 'Sheron.gabrielramdani', '', 'sheron.gabrielramdani@gmail.com', '0000-00-00 00:00:00'),
(835, 'Snoopy_uniq74', '', 'snoopy_uniq74@yahoo.com', '0000-00-00 00:00:00'),
(836, 'Sofie_sw_00', '', 'sofie_sw_00@yahoo.com', '0000-00-00 00:00:00'),
(837, 'Susan.pranata', '', 'susan.pranata@intiland.com', '0000-00-00 00:00:00'),
(838, 'Suzy', '', 'suzy@ciputra.com', '0000-00-00 00:00:00'),
(839, 'Syahrial.lubis', '', 'syahrial.lubis@marriotthotels.com', '0000-00-00 00:00:00'),
(840, 'Syebaa', '', 'syebaa@yahoo.com', '0000-00-00 00:00:00'),
(841, 'Tarie_mynov', '', 'tarie_mynov@yahoo.com', '0000-00-00 00:00:00'),
(842, 'Taufikrahul24', '', 'taufikrahul24@gmail.com', '0000-00-00 00:00:00'),
(843, 'Tirtaaa', '', 'Tirtaaa@hotmail.com', '0000-00-00 00:00:00'),
(844, 'Titienfebriyanti', '', 'titienfebriyanti@yahoo.com', '0000-00-00 00:00:00'),
(845, 'Tommy', '', 'tommy@himalayains.com', '0000-00-00 00:00:00'),
(846, 'Triastiti.kusumaningrum', '', 'triastiti.kusumaningrum@yahoo.com', '0000-00-00 00:00:00'),
(847, 'Umar.khattab', '', 'umar.khattab@nissan.indomobil.co.id', '0000-00-00 00:00:00'),
(848, 'W_indira', '', 'w_indira@gs.astra.co.id', '0000-00-00 00:00:00'),
(849, 'Wisnu', '', 'wisnu@aquanano.id', '0000-00-00 00:00:00'),
(850, 'Wury.dwh16', '', 'wury.dwh16@gmail.com', '0000-00-00 00:00:00'),
(851, 'Yanti', '', 'yanti@cubicindonesia.com', '0000-00-00 00:00:00'),
(852, 'Yudidabhur', '', 'yudidabhur@gmail.com', '0000-00-00 00:00:00'),
(853, 'Zackly.lim', '', 'zackly.lim@yahoo.com', '0000-00-00 00:00:00'),
(854, 'Zubaidah', '', 'zubaidah@iginnotek.com', '0000-00-00 00:00:00'),
(855, 'Abiadh_ramadhan', '', 'abiadh_ramadhan@gmail.com', '0000-00-00 00:00:00'),
(856, 'Achmal_kenamay', '', 'Achmal_Kenamay@gmail.com', '0000-00-00 00:00:00'),
(857, 'Ade_ira', '', 'Ade_Ira@gmail.com', '0000-00-00 00:00:00'),
(858, 'Adhisara_kridowasono', '', 'adhisara_kridowasono@gmail.com', '0000-00-00 00:00:00'),
(859, 'Adlan_syahmi', '', 'Adlan_Syahmi@gmail.com', '0000-00-00 00:00:00'),
(860, 'Adrian_damora', '', 'adrian_damora@gmail.com', '0000-00-00 00:00:00'),
(861, 'Afrianto_noor', '', 'Afrianto_Noor@gmail.com', '0000-00-00 00:00:00'),
(862, 'Agung_purmindarto', '', 'Agung_Purmindarto@gmail.com', '0000-00-00 00:00:00'),
(863, 'Agung_tjahyono', '', 'Agung_Tjahyono@gmail.com', '0000-00-00 00:00:00'),
(864, 'Agus_jayadi', '', 'Agus_Jayadi@gmail.com', '0000-00-00 00:00:00'),
(865, 'Agus_maidamayanto', '', 'agus_maidamayanto@gmail.com', '0000-00-00 00:00:00'),
(866, 'Agus_munandar', '', 'Agus_Munandar@gmail.com', '0000-00-00 00:00:00'),
(867, 'Agus_supriyono', '', 'Agus_Supriyono@gmail.com', '0000-00-00 00:00:00'),
(868, 'Agusriswanto_leonardo', '', 'Agusriswanto_Leonardo@gmail.com', '0000-00-00 00:00:00'),
(869, 'Ahmad_doni', '', 'ahmad_doni@gmail.com', '0000-00-00 00:00:00'),
(870, 'Ainun_hadi', '', 'Ainun_Hadi@gmail.com', '0000-00-00 00:00:00'),
(871, 'Aji_salim', '', 'Aji_Salim@yahoo.com', '0000-00-00 00:00:00'),
(872, 'Akhmad_hidayat', '', 'Akhmad_Hidayat@gmail.com', '0000-00-00 00:00:00'),
(873, 'Akhmad_saekhu', '', 'akhmad_saekhu@yahoo.co.id', '0000-00-00 00:00:00'),
(874, 'Aldi_ch', '', 'aldi_ch@gmail.com', '0000-00-00 00:00:00'),
(875, 'Alex_george', '', 'Alex_George@gmail.com', '0000-00-00 00:00:00'),
(876, 'Alexander_bingky_tedjonegoro', '', 'Alexander_bingky_tedjonegoro@gmail.com', '0000-00-00 00:00:00'),
(877, 'Alief_castollani', '', 'Alief_Castollani@gmail.com', '0000-00-00 00:00:00'),
(878, 'Alief_nugroho', '', 'Alief_Nugroho@gmail.com', '0000-00-00 00:00:00'),
(879, 'Alif_raditya_fahmi', '', 'Alif_Raditya_Fahmi@gmail.com', '0000-00-00 00:00:00'),
(880, 'Amelia_starsignal', '', 'amelia_starsignal@yahoo.co.id', '0000-00-00 00:00:00'),
(881, 'Andriana_rofi', '', 'Andriana_Rofi@gmail.com', '0000-00-00 00:00:00'),
(882, 'Andry_monizar', '', 'andry_monizar@gmail.com', '0000-00-00 00:00:00'),
(883, 'Angga_danang', '', 'Angga_Danang@gmail.com', '0000-00-00 00:00:00'),
(884, 'Anna_v_e_t_a', '', 'Anna_V_E_T_A@gmail.com', '0000-00-00 00:00:00'),
(885, 'Annisa_dwi_noviyanti', '', 'Annisa_Dwi_Noviyanti@yahoo.com', '0000-00-00 00:00:00'),
(886, 'Anton_prastiawan', '', 'Anton_Prastiawan@gmail.com', '0000-00-00 00:00:00'),
(887, 'Antoni_martin', '', 'Antoni_Martin@gmail.com', '0000-00-00 00:00:00'),
(888, 'Antony_stefanus', '', 'antony_stefanus@gmail.com', '0000-00-00 00:00:00'),
(889, 'Anwar_halim', '', 'anwar_halim@yahoo.com', '0000-00-00 00:00:00'),
(890, 'Arcky_karfiansyah', '', 'arcky_karfiansyah@gmail.com', '0000-00-00 00:00:00'),
(891, 'Arfandi_r._bachri', '', 'Arfandi_R._Bachri@gmail.com', '0000-00-00 00:00:00'),
(892, 'Arief_rachman', '', 'Arief_Rachman@gmail.com', '0000-00-00 00:00:00'),
(893, 'Arif_kharsadi', '', 'Arif_Kharsadi@gmail.com', '0000-00-00 00:00:00'),
(894, 'Arwien_sudharta', '', 'arwien_sudharta@gmail.com', '0000-00-00 00:00:00'),
(895, 'Astari_putri', '', 'Astari_Putri@gmail.com', '0000-00-00 00:00:00'),
(896, 'Audi_rizki', '', 'audi_rizki@gmail.com', '0000-00-00 00:00:00'),
(897, 'Azil_adi_permana', '', 'Azil_Adi_Permana@gmail.com', '0000-00-00 00:00:00'),
(898, 'Bambang_sumpono', '', 'bambang_sumpono@gmail.com', '0000-00-00 00:00:00'),
(899, 'Belinda_desyana', '', 'Belinda_Desyana@gmail.com', '0000-00-00 00:00:00'),
(900, 'Betty_ronaldo', '', 'betty_ronaldo@yahoo.com', '0000-00-00 00:00:00'),
(901, 'Bimo_ekabudiputra', '', 'Bimo_Ekabudiputra@gmail.com', '0000-00-00 00:00:00'),
(902, 'Biro_properti', '', 'biro_properti@gmail.com', '0000-00-00 00:00:00'),
(903, 'Budi_harnata', '', 'Budi_Harnata@gmail.com', '0000-00-00 00:00:00'),
(904, 'Budi_maulana', '', 'Budi_maulana@gmail.com', '0000-00-00 00:00:00'),
(905, 'Budi_prayitno', '', 'Budi_Prayitno@gmail.com', '0000-00-00 00:00:00'),
(906, 'Budi Sungkono', '', 'Budi_Sungkono@sungkono.net', '0000-00-00 00:00:00'),
(907, 'Cahyo_wibowo', '', 'Cahyo_Wibowo@gmail.com', '0000-00-00 00:00:00'),
(908, 'Chandra_kurnia', '', 'Chandra_Kurnia@gmail.com', '0000-00-00 00:00:00'),
(909, 'Cynthia_rosally', '', 'cynthia_rosally@yahoo.com', '0000-00-00 00:00:00'),
(910, 'Daffa_augusta', '', 'Daffa_Augusta@gmail.com', '0000-00-00 00:00:00'),
(911, 'Danur_lovelyaisyah', '', 'Danur_Lovelyaisyah@gmail.com', '0000-00-00 00:00:00'),
(912, 'Dede Hamdani', '', 'Dede_Hamdani@ymail.com', '0000-00-00 00:00:00'),
(913, 'Delly_chaniago', '', 'delly_chaniago@gmail.com', '0000-00-00 00:00:00'),
(914, 'Delvi_winosri', '', 'Delvi_Winosri@gmail.com', '0000-00-00 00:00:00'),
(915, 'Devi_sonyahi', '', 'Devi_Sonyahi@gmail.com', '0000-00-00 00:00:00'),
(916, 'Dhana_aprilia', '', 'Dhana_aprilia@gmail.com', '0000-00-00 00:00:00'),
(917, 'Dhanu_dhiraja', '', 'dhanu_dhiraja@gmail.com', '0000-00-00 00:00:00'),
(918, 'Dharmawan_sentosa', '', 'Dharmawan_Sentosa@gmail.com', '0000-00-00 00:00:00'),
(919, 'Diah_dharmanti', '', 'Diah_Dharmanti@yahoo.com', '0000-00-00 00:00:00'),
(920, 'Dian_lestari', '', 'dian_lestari@gmail.com', '0000-00-00 00:00:00'),
(921, 'Diar_yansyah', '', 'diar_yansyah@gmail.com', '0000-00-00 00:00:00'),
(922, 'Dicky_sukmana', '', 'Dicky_Sukmana@gmail.com', '0000-00-00 00:00:00'),
(923, 'Dini_noviyanti', '', 'Dini_Noviyanti@gmail.com', '0000-00-00 00:00:00'),
(924, 'Dlaskreia_a', '', 'DLaskreia_A@gmail.com', '0000-00-00 00:00:00'),
(925, 'Dysse_dilapanga', '', 'Dysse_Dilapanga@gmail.com', '0000-00-00 00:00:00'),
(926, 'Eka_ferdyansyah', '', 'Eka_Ferdyansyah@gmail.com', '0000-00-00 00:00:00'),
(927, 'Eko_novianto', '', 'Eko_Novianto@gmail.com', '0000-00-00 00:00:00'),
(928, 'Eric_himmler', '', 'Eric_Himmler@gmail.com', '0000-00-00 00:00:00'),
(929, 'Ericko_chandra', '', 'ericko_chandra@yahoo.com', '0000-00-00 00:00:00'),
(930, 'Ervan_hasbullah', '', 'Ervan_Hasbullah@yahoo.com', '0000-00-00 00:00:00'),
(931, 'Erwin_sarufi', '', 'Erwin_Sarufi@gmail.com', '0000-00-00 00:00:00'),
(932, 'Ezra_valentino', '', 'Ezra_Valentino@gmail.com', '0000-00-00 00:00:00'),
(933, 'Fachrullah_kubays', '', 'Fachrullah_Kubays@gmail.com', '0000-00-00 00:00:00'),
(934, 'Faisal_adhyaksa', '', 'Faisal_Adhyaksa@gmail.com', '0000-00-00 00:00:00'),
(935, 'Farrah_lady_susanto', '', 'Farrah_Lady_Susanto@gmail.com', '0000-00-00 00:00:00'),
(936, 'Fatma_kusti', '', 'fatma_kusti@gmail.com', '0000-00-00 00:00:00'),
(937, 'Faulina_fawfaw', '', 'faulina_fawfaw@gmail.com', '0000-00-00 00:00:00'),
(938, 'Febby_christiani', '', 'febby_christiani@yahoo.co.id', '0000-00-00 00:00:00'),
(939, 'Febby_vinan', '', 'Febby_ViNan@gmail.com', '0000-00-00 00:00:00'),
(940, 'Feri_pebrianto', '', 'feri_pebrianto@gmail.com', '0000-00-00 00:00:00'),
(941, 'Fherantawati_sudargo', '', 'Fherantawati_Sudargo@gmail.com', '0000-00-00 00:00:00'),
(942, 'Fika_martoprawiro', '', 'Fika_Martoprawiro@gmail.com', '0000-00-00 00:00:00'),
(943, 'Fikri_erfizal', '', 'Fikri_Erfizal@gmail.com', '0000-00-00 00:00:00'),
(944, 'Finance_bekasi_pt._acs', '', 'Finance_Bekasi_PT._ACS@gmail.com', '0000-00-00 00:00:00'),
(945, 'Firman_kaban', '', 'firman_kaban@yahoo.com', '0000-00-00 00:00:00'),
(946, 'Fitri_kuchink', '', 'Fitri_Kuchink@gmail.com', '0000-00-00 00:00:00'),
(947, 'Fnu_kennedy', '', 'Fnu_Kennedy@gmail.com', '0000-00-00 00:00:00'),
(948, 'Galih_putra', '', 'Galih_Putra@gmail.com', '0000-00-00 00:00:00'),
(949, 'Gandhi_dhartiono', '', 'Gandhi_Dhartiono@gmail.com', '0000-00-00 00:00:00'),
(950, 'Gatot_sukoco', '', 'gatot_sukoco@gmail.com', '0000-00-00 00:00:00'),
(951, 'Goenawan_muhammad', '', 'Goenawan_Muhammad@gmail.com', '0000-00-00 00:00:00'),
(952, 'gomgom malau', '', 'gomgom_malau@hotmail.com', '0000-00-00 00:00:00'),
(953, 'Gostee_vira', '', 'Gostee_Vira@gmail.com', '0000-00-00 00:00:00'),
(954, 'Hardy', '', 'Hardy@gmail.com', '0000-00-00 00:00:00'),
(955, 'Hari_widodo', '', 'Hari_Widodo@yahoo.com', '0000-00-00 00:00:00'),
(956, 'Haris_handianto', '', 'Haris_Handianto@gmail.com', '0000-00-00 00:00:00'),
(957, 'Harley_ridwan_putranto', '', 'Harley_Ridwan_Putranto@gmail.com', '0000-00-00 00:00:00'),
(958, 'Haryanto_jarot', '', 'haryanto_jarot@gmail.com', '0000-00-00 00:00:00'),
(959, 'Hendra_wijaya99', '', 'Hendra_Wijaya99@gmail.com', '0000-00-00 00:00:00'),
(960, 'Henry Wibowo', '', 'Henry_Wibowo@hotmail.com', '0000-00-00 00:00:00'),
(961, 'Heri_arighy', '', 'heri_arighy@gmail.com', '0000-00-00 00:00:00'),
(962, 'Heri_sinaga', '', 'heri_sinaga@yahoo.com', '0000-00-00 00:00:00'),
(963, 'Hersyah_bei', '', 'Hersyah_Bei@gmail.com', '0000-00-00 00:00:00'),
(964, 'Hilda_geminy', '', 'hilda_geminy@gmail.com', '0000-00-00 00:00:00'),
(965, 'Hot_asi_simamora_debataraja', '', 'Hot_Asi_Simamora_Debataraja@gmail.com', '0000-00-00 00:00:00'),
(966, 'Ical_marshal', '', 'Ical_Marshal@gmail.com', '0000-00-00 00:00:00'),
(967, 'Iezham_syaikha', '', 'iezham_syaikha@gmail.com', '0000-00-00 00:00:00'),
(968, 'Ilham_casmad', '', 'Ilham_Casmad@gmail.com', '0000-00-00 00:00:00'),
(969, 'Imbuh_sudrajat', '', 'imbuh_sudrajat@gmail.com', '0000-00-00 00:00:00'),
(970, 'Immanuel_gultom', '', 'Immanuel_Gultom@gmail.com', '0000-00-00 00:00:00'),
(971, 'Inten_mitsubishi', '', 'Inten_Mitsubishi@gmail.com', '0000-00-00 00:00:00'),
(972, 'Irma_merdiana', '', 'Irma_Merdiana@gmail.com', '0000-00-00 00:00:00'),
(973, 'Jati_purweko', '', 'jati_purweko@gmail.com', '0000-00-00 00:00:00'),
(974, 'Jeffer_sr', '', 'jeffer_sr@gmail.com', '0000-00-00 00:00:00'),
(975, 'Jhonson_silitonga', '', 'Jhonson_Silitonga@gmail.com', '0000-00-00 00:00:00'),
(976, 'Jiyul_w', '', 'Jiyul_W@gmail.com', '0000-00-00 00:00:00'),
(977, 'Josua Gultom', '', 'Josua_Gultom@outlook.com', '0000-00-00 00:00:00'),
(978, 'Juliana_sutana', '', 'Juliana_Sutana@gmail.com', '0000-00-00 00:00:00'),
(979, 'Khoehauw_min', '', 'Khoehauw_Min@gmail.com', '0000-00-00 00:00:00'),
(980, 'Lavinie_vasconcelos', '', 'lavinie_vasconcelos@yahoo.com', '0000-00-00 00:00:00'),
(981, 'Lim_theresya', '', 'Lim_Theresya@gmail.com', '0000-00-00 00:00:00'),
(982, 'Linda_rachman', '', 'Linda_Rachman@gmail.com', '0000-00-00 00:00:00'),
(983, 'Luki_iwana', '', 'luki_iwana@gmail.com', '0000-00-00 00:00:00'),
(984, 'Mariska_pribadi', '', 'Mariska_Pribadi@gmail.com', '0000-00-00 00:00:00'),
(985, 'Mira_miranti', '', 'Mira_Miranti@gmail.com', '0000-00-00 00:00:00'),
(986, 'Miss_chy', '', 'Miss_Chy@yahoo.com', '0000-00-00 00:00:00'),
(987, 'Muhammad_faiq_putra_prakoso', '', 'Muhammad_Faiq_Putra_Prakoso@gmail.com', '0000-00-00 00:00:00'),
(988, 'Musri_arbi', '', 'Musri_Arbi@gmail.com', '0000-00-00 00:00:00'),
(989, 'Nabilla_nabilla', '', 'nabilla_nabilla@gmail.com', '0000-00-00 00:00:00'),
(990, 'Nani_fitriani', '', 'Nani_Fitriani@gmail.com', '0000-00-00 00:00:00'),
(991, 'Naomi_simanullang', '', 'Naomi_Simanullang@gmail.com', '0000-00-00 00:00:00'),
(992, 'Neny_nurhaeni', '', 'Neny_Nurhaeni@yahoo.com', '0000-00-00 00:00:00'),
(993, 'Nisa_sutedjo', '', 'nisa_sutedjo@yahoo.com', '0000-00-00 00:00:00'),
(994, 'Nofi_suryana', '', 'Nofi_Suryana@yahoo.com', '0000-00-00 00:00:00'),
(995, 'Nur_dna', '', 'Nur_Dna@gmail.com', '0000-00-00 00:00:00'),
(996, 'Nuri_nurjatnika', '', 'Nuri_Nurjatnika@gmail.com', '0000-00-00 00:00:00'),
(997, 'Obi_maulana', '', 'obi_maulana@gmail.com', '0000-00-00 00:00:00'),
(998, 'Pia_luthfiah', '', 'pia_luthfiah@gmail.com', '0000-00-00 00:00:00'),
(999, 'Putut_fajar', '', 'Putut_Fajar@gmail.com', '0000-00-00 00:00:00'),
(1000, 'Qonita_garini', '', 'qonita_garini@gmail.com', '0000-00-00 00:00:00'),
(1001, 'Rahma_julia', '', 'Rahma_Julia@gmail.com', '0000-00-00 00:00:00'),
(1002, 'Randi_bulo', '', 'Randi_Bulo@gmail.com', '0000-00-00 00:00:00'),
(1003, 'Razipfalsyah_falsyah', '', 'razipfalsyah_Falsyah@gmail.com', '0000-00-00 00:00:00'),
(1004, 'Resta_ariesta', '', 'Resta_Ariesta@gmail.com', '0000-00-00 00:00:00'),
(1005, 'Resty_maharani', '', 'Resty_Maharani@gmail.com', '0000-00-00 00:00:00'),
(1006, 'Ridwan_noor', '', 'Ridwan_Noor@gmail.com', '0000-00-00 00:00:00'),
(1007, 'Riri_liesmaiyar', '', 'Riri_Liesmaiyar@gmail.com', '0000-00-00 00:00:00'),
(1008, 'Rista_arintika', '', 'rista_arintika@gmail.com', '0000-00-00 00:00:00'),
(1009, 'Rizkillah_ekasari', '', 'RIZKILLAH_EKASARI@gmail.com', '0000-00-00 00:00:00'),
(1010, 'Robby_antony', '', 'Robby_Antony@yahoo.com', '0000-00-00 00:00:00'),
(1011, 'Roy_budiman', '', 'Roy_Budiman@gmail.com', '0000-00-00 00:00:00'),
(1012, 'Salman_al-farisyi', '', 'Salman_Al-Farisyi@gmail.com', '0000-00-00 00:00:00'),
(1013, 'Sapto_nugroho', '', 'sapto_nugroho@gmail.com', '0000-00-00 00:00:00'),
(1014, 'Shabrina_mz', '', 'shabrina_mz@gmail.com', '0000-00-00 00:00:00'),
(1015, 'Sofyan_fauzy', '', 'sofyan_fauzy@gmail.com', '0000-00-00 00:00:00'),
(1016, 'Surya_ip', '', 'Surya_IP@gmail.com', '0000-00-00 00:00:00'),
(1017, 'Suryadi_surya', '', 'Suryadi_Surya@gmail.com', '0000-00-00 00:00:00'),
(1018, 'Suzuki_sunter_dealer', '', 'Suzuki_Sunter_dealer@yahoo.co.id', '0000-00-00 00:00:00'),
(1019, 'Syahla_atiqah', '', 'Syahla_Atiqah@gmail.com', '0000-00-00 00:00:00'),
(1020, 'Tegar_pribadi', '', 'tegar_pribadi@gmail.com', '0000-00-00 00:00:00'),
(1021, 'Teguh', '', 'Teguh@gmail.com', '0000-00-00 00:00:00'),
(1022, 'teguh darma pratomo', '', 'teguh_darma_pratomo@pt-ica.com', '0000-00-00 00:00:00'),
(1023, 'Tenny_sukmaningsih', '', 'tenny_sukmaningsih@gmail.com', '0000-00-00 00:00:00'),
(1024, 'Tiara_lestari', '', 'Tiara_Lestari@gmail.com', '0000-00-00 00:00:00'),
(1025, 'Titin_hindarsyah', '', 'TITIN_HINDARSYAH@gmail.com', '0000-00-00 00:00:00'),
(1026, 'Tony_the_property', '', 'Tony_the_property@gmail.com', '0000-00-00 00:00:00'),
(1027, 'Uki_kooki', '', 'uki_kooki@gmail.com', '0000-00-00 00:00:00'),
(1028, 'Vera_tjahyono', '', 'Vera_Tjahyono@gmail.com', '0000-00-00 00:00:00'),
(1029, 'Vina_lia', '', 'Vina_Lia@yahoo.com', '0000-00-00 00:00:00'),
(1030, 'Wulan_danar', '', 'Wulan_Danar@gmail.com', '0000-00-00 00:00:00'),
(1031, 'Yudistira_nugroho', '', 'yudistira_nugroho@yahoo.co.id', '0000-00-00 00:00:00'),
(1032, 'Zul_imanullah', '', 'Zul_Imanullah@gmail.com', '0000-00-00 00:00:00'),
(1033, 'Citraratulangie77', '', 'citraratulangie77@gmail.com', '0000-00-00 00:00:00'),
(1034, 'Lukman_azis', '', 'lukman_azis@gmail.com', '0000-00-00 00:00:00'),
(1035, 'Kneysa_sastrawijaya_mc', '', 'Kneysa_Sastrawijaya_MC@gmail.com', '0000-00-00 00:00:00'),
(1036, 'Lukman_azis', '', 'lukman_azis@gmail.com', '0000-00-00 00:00:00'),
(1037, 'Sabrina_carment', '', 'sabrina_carment@gmail.com', '0000-00-00 00:00:00'),
(1038, 'Sabrina_nuzlia', '', 'sabrina_nuzlia@gmail.com', '0000-00-00 00:00:00'),
(1039, 'Vanisa_ayu', '', 'vanisa_ayu@gmail.com', '0000-00-00 00:00:00'),
(1040, 'Yuyu_kasim', '', 'Yuyu_Kasim@gmail.com', '0000-00-00 00:00:00'),
(1041, 'Novanto ', '', 'Novantosarahhmad@gmail.com', '2018-04-04 01:57:08'),
(1042, 'pahe ', '', 'pahe_amerop@yahoo.com', '2018-04-04 01:57:35'),
(1043, 'albert', '', 'albert766hi@gmail.com', '2018-04-04 01:58:05'),
(1044, 'Robert', '', 'Robertparuhum@lawyer.com', '2018-04-04 01:58:24'),
(1045, 'Issya', '', 'Issya88@gmail.com', '2018-04-04 02:00:20'),
(1046, 'Om Joko', '', 'Omjoko06@yahoo.co.id', '2018-04-04 02:00:40'),
(1047, 'Smsong', '', 'smsong@95retail.com', '2018-04-04 02:01:05'),
(1048, 'Heru', '', 'Heru.it@hkrealtindo.co.id', '2018-04-04 02:01:32'),
(1049, 'lin', '', 'llinteriordezign@Gmail.com', '2018-04-04 02:03:38'),
(1050, 'rig', '', 'rig_hani@yahoo.com', '2018-04-04 02:04:03'),
(1051, 'Maria', '', 'Mariantowidji@gmail.com', '2018-04-04 02:04:26'),
(1052, 'Bimo', '', 'Bimo.sarashadi@gmail.com', '2018-04-04 02:05:47'),
(1053, 'Ardy', '', 'Ardy.bungsu@gmail.com', '2018-04-04 02:06:22'),
(1054, 'Mini', '', 'Minisumini2707@yahoo.co.id', '2018-04-04 02:06:40'),
(1055, 'Istanto', '', 'Istantoups@yahoo.com', '2018-04-04 02:07:05'),
(1056, 'Kasih', '', 'Kasihint@gmail.com', '2018-04-04 02:08:25'),
(1057, 'Yudistira', '', 'Yudistirasaudarma@gmail.com', '2018-04-04 02:09:20'),
(1058, 'Rizal', '', 'Febrizal.effendi@gmail.com', '2018-04-04 02:09:44'),
(1059, 'yohana', '', 'Yohanayonathan@gmail.com', '2018-04-04 02:13:28'),
(1060, 'Erni', '', 'erni511@yahoo.com', '2018-04-04 02:13:48'),
(1061, 'Andri', '', 'andri@justinfo.me', '2018-04-04 02:14:49'),
(1062, 'Kurnia', '', 'Kurnia.galang@yahoo.co.id', '2018-04-04 02:15:03'),
(1063, 'Fandy', '', 'Fandy110788@gmail.com', '2018-04-04 02:15:24'),
(1064, 'Sunaryo', '', 'Sunaryo@sunaryo-tan.com', '2018-04-04 02:15:49'),
(1065, 'wiwi', '', 'gracewiwi80@yahoo.com', '2018-04-04 02:16:04'),
(1066, 'Didik', '', 'Di2k_1986@yahoo.com', '2018-04-04 02:16:39'),
(1067, 'Ivan', '', 'ivan.sarifudin@yahoo.com', '2018-04-04 02:16:57'),
(1068, 'Suwandi', '', 'awiesuwandi@gmail.com', '2018-04-04 02:17:20'),
(1069, 'Donny', '', 'donny@wisuma.com', '2018-04-04 02:17:38'),
(1070, 'Hendy', '', 'Hendy_montella@yahoo.com', '2018-04-04 02:17:57'),
(1071, 'Eddy', '', 'eddy_hui@Kiatravels.com', '2018-04-04 02:18:19'),
(1072, 'Irwanto', '', 'irwantojo@Gmail.com', '2018-04-04 02:18:40'),
(1073, 'Adelia', '', 'adelia.iklandetik@yahoo.com', '2018-04-04 02:18:55'),
(1074, 'Costa', '', 'Costaristo_tee@yahoo.com', '2018-04-04 02:19:14'),
(1075, 'Setiyadi', '', 'setiyadi_dhs@yahoo.com', '2018-04-04 02:19:30'),
(1076, 'Dika', '', 'Arbik4@gmail.com', '2018-04-04 02:19:44'),
(1077, 'Ririn', '', 'itsme_ririn@yahoo.co.id', '2018-04-04 02:20:04'),
(1078, 'Endank', '', 'Jayazherdank@yahoo.com', '2018-04-04 02:20:25'),
(1079, 'Agung', '', 'budiono_agung@Yahoo.com', '2018-04-04 02:20:40'),
(1080, 'ares', '', 'ares.mandoer@gmail.com', '2018-04-04 02:21:01'),
(1081, 'mega', '', 'matahari_megasurya@yahoo.com', '2018-04-04 02:21:25'),
(1082, 'surya', '', 'megasurya@Yahoo.com', '2018-04-04 02:21:40'),
(1083, 'Riya', '', 'Khurriyatul1975@yahoo.com', '2018-04-04 02:21:58'),
(1084, 'Jul', '', 'Nay05jul70@gmail.com', '2018-04-04 02:22:20'),
(1085, 'Fahri', '', 'Fahriinsyan@yahoo.co.id', '2018-04-04 02:22:40'),
(1086, 'Karsina', '', 'ina_karsinah@Yahoo.com', '2018-04-04 02:23:04'),
(1087, 'Anto', '', 'tulushadianto@Yahoo.com', '2018-04-04 02:23:24'),
(1088, 'Yogh', '', 'Yogha@rumahhoki.net', '2018-04-04 02:23:51'),
(1089, 'Zul', '', 'Nzulianco@yahoo.com', '2018-04-04 02:24:55'),
(1090, 'Chandra', '', 'Chandra@seputar-bandung.com', '2018-04-04 02:25:20'),
(1091, 'Samsudin', '', 'Dadi.samsudin@gmail.com', '2018-04-04 02:25:40'),
(1092, 'Abie', '', 'Abie_uph@yahoo.com', '2018-04-04 02:26:32'),
(1093, 'Ryan', '', 'ryan.feriandri@gmail.com', '2018-04-04 02:30:22'),
(1094, 'Hoky', '', 'Tophoky@yahoo.com', '2018-04-04 02:30:44'),
(1095, 'kusuma', '', 'kusuma90210@yahoo.com', '2018-04-04 02:31:03'),
(1096, 'Nugroho', '', 'Widiadinugroho@Gmail.com', '2018-04-04 02:31:33'),
(1097, 'Hasanudin', '', 'roni_hasanudin@yahoo.co.id', '2018-04-04 02:31:54'),
(1098, 'Salam', '', 'Hamdan.salam@nikawa.co.id', '2018-04-04 02:32:15'),
(1099, 'Bronson', '', 'forirbronson@ymail.com', '2018-04-04 02:32:33'),
(1100, 'Andrea', '', 'Andreasawang@yahoo.com', '2018-04-04 02:32:55'),
(1101, 'Herawati', '', 'yulsi.herawati@yahoo.com', '2018-04-04 02:36:11'),
(1102, 'Burhan', '', 'Burhan270855@yahoo.com', '2018-04-04 02:36:31'),
(1103, 'Arum', '', 'Arumraya@Gmail.com', '2018-04-04 02:36:47'),
(1104, 'Joe', '', 'Joe.nangin@Yahoo.co.id', '2018-04-04 02:37:03'),
(1105, 'lexy', '', 'lexy_flair@yahoo.co.id', '2018-04-04 02:37:19'),
(1106, 'Purnama', '', 'poernama_blk@yahoo.com', '2018-04-04 02:37:37'),
(1107, 'Noni', '', 'Nonigustiami@Gmail.com', '2018-04-04 02:37:51'),
(1108, 'Sandji', '', 'mrsandji@yahoo.com', '2018-04-04 02:38:05'),
(1109, 'Arif', '', 'Arifkoemar@gmail.com', '2018-04-04 02:38:19'),
(1110, 'Starly', '', 'Starlyn888@yahoo.com', '2018-04-04 02:38:36'),
(1111, 'Gunawan', '', 'ahli.gunawan@yahoo.com', '2018-04-04 02:38:59'),
(1112, 'Musyaffa', '', 'Akhmad.musyaffa@gmail.com', '2018-04-04 02:39:23'),
(1113, 'Hamzah', '', '1amirhamzah@gmail.com', '2018-04-04 02:39:41'),
(1114, 'Fera', '', 'riferamail@yahoo.com', '2018-04-04 02:39:58'),
(1115, 'Mario', '', 'mariolasut@Gmail.com', '2018-04-04 02:40:16'),
(1116, 'yohana', '', 'yohana_lestari@yahoo.com', '2018-04-04 02:40:45'),
(1117, 'Sofyan', '', 'sofyandarmawan@gmail.com', '2018-04-04 02:41:02'),
(1118, 'Toro', '', 'I.diwantoro@yahoo.coid', '2018-04-04 02:41:25'),
(1119, 'Toro', '', 'I.diwantoro@yahoo.co.id', '2018-04-04 02:41:47'),
(1120, 'Adhytia', '', 'Adhytia0488@gmail.com', '2018-04-04 02:42:15'),
(1121, 'Rosa', '', 'rosali579@gmail.com', '2018-04-04 02:42:32'),
(1122, 'Johan', '', 'Johanesaw@Gmail.com', '2018-04-04 02:42:45'),
(1123, 'Rino', '', 'rino.light@Gmail.com', '2018-04-04 02:42:58'),
(1124, 'Yona', '', 'myonassis31@yahoo.com', '2018-04-04 02:51:11'),
(1125, 'Calista', '', 'callistatravelindo@gmail.com', '2018-04-04 02:51:32'),
(1126, 'Happy', '', 'Happyquantum9@gmail.com', '2018-04-04 02:51:52'),
(1127, 'Wina', '', 'Lidwina_happy@yahoo.co.id', '2018-04-04 02:52:18'),
(1128, 'Taufan', '', 'taufan_Adv@yahoo.com', '2018-04-04 02:52:38'),
(1129, 'ari', '', 'are_goes.1212@yahoo.com', '2018-04-04 02:52:56'),
(1130, 'Raja', '', 'Asarajar@gmail.com', '2018-04-04 02:53:09'),
(1131, 'Omar', '', 'Omar.abdillah.1234@gmail.com', '2018-04-04 02:53:31'),
(1132, 'David', '', 'david@kliksaya.com', '2018-04-04 02:53:56'),
(1133, 'Yogi', '', 'Yogiwidianto@yahoo.com', '2018-04-04 02:54:18'),
(1134, 'Firza', '', 'f.firza@yahoo.com', '2018-04-04 02:55:11'),
(1135, 'Firza', '', 'f.firza@yahoo.com', '2018-04-04 02:55:16'),
(1136, 'Winy', '', 'Prana.winy@yahoo.com', '2018-04-04 02:55:46'),
(1137, 'Edwin', '', 'edwinrafflis@yahoo.co.id', '2018-04-04 02:56:18'),
(1138, 'Ria', '', 'Rianur71@gmail.com', '2018-04-04 02:56:36'),
(1139, 'Endri', '', 'Alia.endri@gmail.com', '2018-04-04 02:56:52'),
(1140, 'Bharata', '', 'bharata75@gmail.com', '2018-04-04 02:57:08'),
(1141, 'Kukuh', '', 'kukuhtw@gmail.com', '2018-04-04 02:57:19'),
(1142, 'Ani', '', 'Anikkuswadji@yahoo.com', '2018-04-04 02:57:37'),
(1143, 'Dharma', '', 'Karyadharma@gmail.com', '2018-04-04 02:57:55'),
(1144, 'Iwan', '', 'Iwansastrawan@ymail.com', '2018-04-04 02:58:13'),
(1145, 'Eva', '', 'Evarina51@yahoo.co.id', '2018-04-04 02:58:31'),
(1146, 'Diki', '', 'diki_satria@yahoo.com', '2018-04-04 03:00:09'),
(1147, 'Rohmat', '', 'rohmat.ib@gmail.com', '2018-04-04 03:00:33'),
(1148, 'Saputra', '', 'Saputra_es@yahoo.com', '2018-04-04 03:01:01'),
(1149, 'Diva', '', 'Divamaleeva@yahoo.com', '2018-04-04 03:01:43'),
(1150, 'Hendy', '', 'hendyhamdan@gmail.com', '2018-04-04 03:01:54'),
(1151, 'syam', '', 'syamriji@yahoo.com', '2018-04-04 03:02:09'),
(1152, 'rudy', '', 'Rudy@tokonet.com', '2018-04-04 03:02:25'),
(1153, 'Tama', '', 'Ativon_aritama@yahoo.com', '2018-04-04 03:02:47'),
(1154, 'Ami', '', 'amigosejatiadv@yahoo.com', '2018-04-04 03:03:54'),
(1155, 'Revan', '', 'revan_m@Yahoo.com', '2018-04-04 03:04:08'),
(1156, 'Komorus', '', 'komorus@yahoo.com', '2018-04-04 03:04:19'),
(1157, 'Juna', '', 'Junatham@Yahoo.com', '2018-04-04 03:04:37'),
(1158, 'Purnawaman', '', 'Purnawaman.mtes1@gmail.com', '2018-04-04 03:05:08'),
(1159, 'Feni', '', 'fenhin@gmail.com', '2018-04-04 03:05:20'),
(1160, 'Iffah', '', 'iffah.mumpuni@gmail.com', '2018-04-04 03:05:35'),
(1161, 'Alex', '', 'Alexmobile99@gmail.co', '2018-04-04 03:05:53'),
(1162, 'alex', '', 'Alexmobile99@gmail.com', '2018-04-04 03:06:10'),
(1163, 'Bambang', '', 'bambang@myclayexpert.com', '2018-04-04 03:06:41'),
(1164, 'Thomas Chandra', '', 'Thomasyarindo@yahoo.com', '2018-04-04 03:23:59'),
(1165, 'Tekad', '', 'Tekad@fahrenheit.co.id', '2018-04-04 03:24:16'),
(1166, 'Yani', '', 'Yarindo_adm@Yahoo.com', '2018-04-04 03:24:38'),
(1167, 'Nasir', '', 'Nasi@fahrenheit.co.id', '2018-04-04 03:25:02'),
(1168, 'Radit', '', 'Raditesuseno@korindo.co.id', '2018-04-04 03:25:18'),
(1169, 'Tn Hikari', '', 'hikari_tel@yahoo.com', '2018-04-04 03:25:35'),
(1170, 'Yuni Simandjuntak', '', 'yuni_debora@yahoo.com', '2018-04-04 03:26:07'),
(1171, 'Utomo Hermawan', '', 'wawan_72@ymail.com', '2018-04-04 03:26:28'),
(1172, 'Faizal Tami', '', 'faizaltami@yahoo.com', '2018-04-04 03:27:08'),
(1173, 'Wahyudi', '', 'oristianwahyudi@yahoo.com', '2018-04-04 03:27:33'),
(1174, 'Edwin', '', 'lewin_016@yahoo.co.id', '2018-04-04 03:27:53'),
(1175, 'M Fajar', '', 'Sendiri_randy@yahoo.com', '2018-04-04 03:28:15'),
(1176, 'Nur Sobariah', '', 'Nur_ilasdp@Yahoo.com', '2018-04-04 03:28:39'),
(1177, 'Eva', '', 'Eva_oristiancute@yahoo.com', '2018-04-04 03:29:08'),
(1178, 'Riswan', '', 'kang_mas58@yahoo.com', '2018-04-04 03:29:44'),
(1179, 'Hery Prasetyo', '', 'hery_kuja@Yahoo.com', '2018-04-04 03:30:05'),
(1180, 'M Abdi', '', 'abdi_kucing@yahoo.com', '2018-04-04 03:30:27'),
(1181, 'M Ikhsan', '', 'taruna_style@rocketmail.com', '2018-04-04 03:30:48'),
(1182, 'Deni', '', 'Denny_cadet@yahoo.com', '2018-04-04 03:31:03'),
(1183, 'Danang ', '', 'Danang.prast@yahoo.com', '2018-04-04 03:31:18'),
(1184, 'Benny', '', 'Eliez.flapz@plasa.com', '2018-04-04 03:31:37'),
(1185, 'Dini', '', 'tengkudini@Yahoo.com', '2018-04-04 03:47:06'),
(1186, 'Syifa', '', 'syifa08@yahoo.co.id', '2018-04-04 06:04:16'),
(1187, 'Kalijogo', '', 'Kalijogo@ymail.com', '2018-04-04 06:04:42'),
(1188, 'Sutiono', '', 'Sutiono111279@yahoo.co.id', '2018-04-04 06:05:07'),
(1189, 'Fredy', '', 'Fredyspirit@ymail.com', '2018-04-04 06:05:35'),
(1190, 'Fredy', '', 'Fredyspirit@ymail.com', '2018-04-04 06:05:36'),
(1191, 'Fredy', '', 'Fredyspirit@ymail.com', '2018-04-04 06:05:36'),
(1192, 'Agung', '', 'agung@dewagung.com', '2018-04-04 07:52:36'),
(1193, 'Titan', '', 'titam.rich1@gmail.com', '2018-04-04 07:52:57'),
(1194, 'Sasongko', '', 'sasongkobawono@Yahoo.com', '2018-04-04 07:53:20'),
(1195, 'Jaya', '', 'Allshopjaya@gmail.com', '2018-04-04 07:54:43'),
(1196, 'Rohani', '', 'Rohani.pgbn@gmail.com', '2018-04-04 07:55:10'),
(1197, 'Yohanes', '', 'yohanes.yang@gmail.com', '2018-04-04 07:55:26'),
(1198, 'yohanes', '', 'yohanes_843@yahoo.com', '2018-04-04 07:55:44'),
(1199, 'Henri', '', 'henrigunawan@gmail.com', '2018-04-04 07:56:02'),
(1200, 'adbar', '', 'adbaris@gmail.com', '2018-04-04 07:56:19'),
(1201, 'Made', '', 'imade@herbalmabruuk.com', '2018-04-04 07:56:41'),
(1202, 'Windra', '', 'Swawindra@gmail.com', '2018-04-04 07:57:07'),
(1203, 'Lestari', '', 'griyajawi_lestari@yahoo.com', '2018-04-04 07:57:34'),
(1204, 'Dhani', '', 'dhani.tasik@Gmail.com', '2018-04-04 07:58:03'),
(1205, 'Tanliekaa', '', 'tanliehoa@Gmail.com', '2018-04-04 07:58:28'),
(1206, 'Tunardy', '', 'tunardy@gmail.com', '2018-04-04 07:59:28'),
(1207, 'Rakhmat', '', 'rakhmat26@gmail.com', '2018-04-04 07:59:47'),
(1208, 'Darmawan', '', 'Darmawanku@gmail.com', '2018-04-04 08:00:05'),
(1209, 'Sanjaya', '', 'sumsanjaya@yahoo.co.id', '2018-04-04 08:00:23'),
(1210, 'Andy', '', 'andy@rajawanet.com', '2018-04-04 08:00:38'),
(1211, 'Iqbal', '', 'iqbal.ismail@detik.com', '2018-04-04 08:00:51'),
(1212, 'edy', '', 'edy@okypulsa.com', '2018-04-04 08:01:06'),
(1213, 'Valindi', '', 'valindi_adv@yahoo.com', '2018-04-04 08:01:25'),
(1214, 'Dhiraes', '', 'Dhiraes@yahoo.com', '2018-04-04 08:02:13'),
(1215, 'Fatur', '', 'fatur@mitrasukses.co.id', '2018-04-04 08:03:49'),
(1216, 'Pramanaa', '', 'pramana@tokohaba.com', '2018-04-04 08:04:25'),
(1217, 'ribowo', '', 'ribowo@ymail.com', '2018-04-04 08:04:38'),
(1218, 'zubed', '', 'zubed03@gmail.com', '2018-04-04 08:05:17'),
(1219, 'Ribowo', '', 'ribowo125@gmail.com', '2018-04-04 08:05:56'),
(1220, 'Anwar', '', 'anwarmaddu@msn.com', '2018-04-04 08:06:19'),
(1221, 'Iskandar', '', 'iskandarevy@yahoo.com', '2018-04-04 08:06:38'),
(1222, 'Hendro', '', 'hendrorusmono@gmail.com', '2018-04-04 08:06:53'),
(1223, 'Doni', '', 'donikurniawan@gmail.com', '2018-04-04 08:11:28'),
(1224, 'Ussup', '', 'ussup1180@yahoo.com', '2018-04-04 08:11:40'),
(1225, 'Alvin', '', 'alvin.andreas@yahoo.co.id', '2018-04-04 08:11:56'),
(1226, 'Ernes', '', 'ernestyosua@gmail.com', '2018-04-04 08:12:32'),
(1227, 'Ardy', '', 'rdy_35@yahoo.com', '2018-04-04 08:12:47'),
(1228, 'Rico', '', 'riccoles0202@gmail.com', '2018-04-04 08:13:10'),
(1229, 'Yudi', '', 'yudiusman@rocketmail.com', '2018-04-04 08:13:31'),
(1230, 'Mita', '', 'mita.dbcn@yahoo.com', '2018-04-04 08:13:48'),
(1231, 'Aditya', '', 'aditya_Sejati@yahoo.com', '2018-04-04 08:14:02'),
(1232, 'Alia', '', 'alia.ifada@yahoo.co.id', '2018-04-04 08:14:18'),
(1233, 'Laras', '', 'Nutylaras@yahoo.com', '2018-04-04 08:14:36'),
(1234, 'Kunto', '', 'kunto_hi99@yahoo.com', '2018-04-04 08:14:53'),
(1235, 'ayu', '', 'ayjog2@yahoo.com', '2018-04-04 08:15:12'),
(1236, 'Januardi', '', 'J4nu4rdi@yahoo.co.id', '2018-04-04 08:15:30'),
(1237, 'Lucky', '', 'Lucky_trihadi@yahoo.com', '2018-04-04 08:15:55'),
(1238, 'endi', '', 'endinugroho@Gmail.com', '2018-04-04 08:16:09'),
(1239, 'aziz', '', 'aziz_50@yahoo.com', '2018-04-04 08:17:34'),
(1240, 'Doel', '', 'bangdoel.bd@gmail.com', '2018-04-04 08:19:42'),
(1241, 'yaddy', '', 'yeddy.lesmana@yahoo.co.id', '2018-04-04 08:20:38'),
(1242, 'Ghiyason', '', 'ghiyason@gmail.com', '2018-04-04 08:20:53'),
(1243, 'Dimas', '', 'dimasaria7@gmail.com', '2018-04-04 08:21:15'),
(1244, 'Purwa', '', 'purwa7@yahoo.com', '2018-04-04 08:21:39'),
(1245, 'Ruby', '', 'ruby_sunarya@yahoo.com', '2018-04-04 08:21:55'),
(1246, 'imam', '', 'imam.handy@kandy.co.id', '2018-04-04 08:36:07'),
(1247, 'Putra', '', 'putragarudamas@yahoo.com', '2018-04-04 08:36:20'),
(1248, 'Yasinarbiki', '', 'yasinarbiki@gmail.com', '2018-04-04 08:36:35'),
(1249, 'Harman', '', 'harman@eso.astra.co.id', '2018-04-04 08:36:53'),
(1250, 'harman', '', 'harman_rf@yahoo.co.id', '2018-04-04 08:37:13'),
(1251, 'Suharyadi', '', 'pdamauharyadi@gmail.com', '2018-04-04 08:37:43'),
(1252, 'Dio', '', 'dioyanuar@ymail.com', '2018-04-04 08:38:01'),
(1253, 'Agung', '', 'agunghendrawan@yahoo.com', '2018-04-04 08:38:16'),
(1254, 'Etty', '', 'Ettysetiawati@yahoo.com', '2018-04-04 08:38:37'),
(1255, 'Febri', '', 'febriyantiwindy@gmail.com', '2018-04-04 08:38:54'),
(1256, 'Nanang', '', 'nanangkurniawan@yahoo.com', '2018-04-04 08:39:11'),
(1257, 'Mega', '', 'mega.nur@lintasarta.co.id', '2018-04-04 08:39:24'),
(1258, 'Zindi', '', 'zindi.rohmatika@lintasarta.co.id', '2018-04-04 08:39:43'),
(1259, 'Rio', '', 'Disanrio.nur@lintasarta.co.id', '2018-04-04 08:40:04'),
(1260, 'Agil', '', 'Agil.abidi@gmail.com', '2018-04-04 08:40:19'),
(1261, 'Hanna', '', 'hanna.jaidi@gmail.com', '2018-04-04 08:40:35'),
(1262, 'Lisa', '', 'Lisa.prasef@gmail.com', '2018-04-04 08:40:52'),
(1263, 'Iskim', '', 'iskim214@gmail.com', '2018-04-04 08:41:05'),
(1264, 'Daud', '', 'Daudw@cbn.net.id', '2018-04-04 08:41:23'),
(1265, 'Yja', '', 'yja200510@hotmail.net', '2018-04-04 08:41:57'),
(1266, 'yusan', '', 'yusanfood15@gmail.com', '2018-04-04 08:42:11'),
(1267, 'Andre', '', 'andre-timor@Yahoo.com', '2018-04-04 08:42:23'),
(1268, 'syamsul', '', 'syamsoul888@gmail.com', '2018-04-04 08:42:38'),
(1269, 'Eni', '', 'Eninipermanasari@gmail.com', '2018-04-05 02:20:56'),
(1270, 'Anto', '', 'antoandresva@gmail.com', '2018-04-05 02:21:15'),
(1271, 'Agus', '', 'Agus.rachmat85@gmail.com', '2018-04-05 02:21:32'),
(1272, 'Bunda', '', 'bunda.ute@gmail.com', '2018-04-05 02:21:49'),
(1273, 'Suharyadi', '', 'pdamSuharyadi@gmail.com', '2018-04-05 02:22:05'),
(1274, 'Siwi', '', 'Siwinurhayati85@Gmail.com', '2018-04-05 02:22:21'),
(1275, 'Revi', '', 'revihada@yahoo.com', '2018-04-05 02:22:35'),
(1276, 'Raffi', '', 'Bandungraffi@gmail.com', '2018-04-05 02:22:52'),
(1277, 'Josef', '', 'josef_teacher@yahoo.co.id', '2018-04-05 02:25:30'),
(1278, 'Salman', '', 'salmanalbar22@yahoo.com', '2018-04-05 02:25:46'),
(1279, 'irfan', '', 'irfannasrul@gmail.com', '2018-04-05 02:30:59'),
(1280, 'Victor', '', 'victorchandra@gmail.com', '2018-04-05 02:31:14'),
(1281, 'Ganda', '', 'ganda.septianda@yahoo.com', '2018-04-05 02:31:33'),
(1282, 'Etty', '', 'Ettysetiawati@yahoo.com', '2018-04-05 02:31:44'),
(1283, 'Wahyu', '', 'wahyudantos@gmail.com', '2018-04-05 02:32:03'),
(1284, 'Agung', '', 'agunghendrawan@yahoo.com', '2018-04-05 02:32:14'),
(1285, 'Agus', '', 'Agus.rachmat85@gmail.com', '2018-04-05 02:32:30'),
(1286, 'Indra', '', 'indra.palasar@yahoo.com', '2018-04-05 02:33:08'),
(1287, 'Hari', '', 'hari.indrajaya@gmail.com', '2018-04-05 02:33:43'),
(1288, 'Haritz', '', 'haritz.smc@Yahoo.com', '2018-04-05 02:33:59'),
(1289, 'Haritz', '', 'haritz.smc@Yahoo.com', '2018-04-05 02:33:59'),
(1290, 'Nina', '', 'Nina_tan32@gmail.com', '2018-04-05 02:34:19'),
(1291, 'sitanggang', '', 'Sitanggang1805@Gmail.com', '2018-04-05 02:36:40'),
(1292, 'Nuril', '', 'Nuril.nurul@yahoo.com', '2018-04-05 02:36:54'),
(1293, 'Heni', '', 'heni.lenka@gmail.com', '2018-04-05 02:37:07'),
(1294, 'Inez', '', 'Inez_tgr@yahoo.com', '2018-04-05 03:32:09'),
(1295, 'Suzan', '', 'susansujimi@yahoo.com', '2018-04-05 03:32:27'),
(1296, 'Sundra', '', 'Sundra_79@yahoo.com', '2018-04-05 03:32:48'),
(1297, 'Feri', '', 'feri_gunawan35@yahoo.com', '2018-04-05 03:33:09'),
(1298, 'Lukman', '', 'Lukman.famg@Gmail.com', '2018-04-05 03:33:32'),
(1299, 'Yusuf', '', 'Yussuffsally@gmail.com', '2018-04-05 03:33:56'),
(1300, 'Wahyu', '', 'Wahyu.ryansyah91@gmail.com', '2018-04-05 03:34:15'),
(1301, 'Anaz', '', 'anazmanasa@gamail.com', '2018-04-05 03:34:30'),
(1302, 'Adel', '', 'ata3917@yahoo.com', '2018-04-05 03:34:57'),
(1303, 'Mantik', '', 'mantik01@Yahoo.com', '2018-04-05 03:36:35'),
(1304, 'Fanny', '', 'Fanny.arianti@gmail.com', '2018-04-05 03:36:57'),
(1305, 'Yulius', '', 'Yulius.usman@arkaprin.com', '2018-04-05 03:37:28'),
(1306, 'Mansyur', '', 'mansyurtju@gmail.com', '2018-04-05 04:17:24'),
(1307, 'Adi', '', 'Adi@padma.co.id', '2018-04-05 04:17:39'),
(1308, 'Budi', '', 'budi.goit@gmail.com', '2018-04-05 04:18:05'),
(1309, 'Yeni', '', 'yennikosasih@Yahoo.co.id', '2018-04-05 04:18:18'),
(1310, 'Peter', '', 'pbun01@gmail.com', '2018-04-05 04:18:36'),
(1311, 'Surianto', '', 'eriksuryanto@gmail.com', '2018-04-05 04:19:18'),
(1312, 'Alfred', '', 'alfredo@hotmail.com', '2018-04-05 04:19:36'),
(1313, 'Ika', '', 'Yazid_faizin@yahoo.com', '2018-04-05 04:19:55'),
(1314, 'Regina', '', 'Lady.mystik@Gmail.com', '2018-04-05 04:20:14'),
(1315, 'Anto', '', 'Hok18@yahoo.co.id', '2018-04-05 04:20:31'),
(1316, 'Gredy', '', 'gredypim@gmail.com', '2018-04-05 04:20:48'),
(1317, 'Pipin', '', 'tiopanpp@gmail.com', '2018-04-05 04:21:03'),
(1318, 'Yanti', '', 'yanthing09@Yahoo.co.id', '2018-04-05 04:21:20'),
(1319, 'Danu', '', 'danuindahprabowo@yahoo.co.id', '2018-04-05 04:21:36'),
(1320, 'Riky', '', 'riky1920@gmail.com', '2018-04-05 04:22:25'),
(1321, 'Helli', '', 'helianydamian@gmail.com', '2018-04-05 04:22:42'),
(1322, 'sandy', '', 'sandy_widjaya@yahoo.com', '2018-04-05 04:23:01'),
(1323, 'Dharmadi', '', 'darmadis@yahoo.com', '2018-04-05 04:23:13'),
(1324, 'Zidni', '', 'Rahmatika@lintasarta.com', '2018-04-05 05:13:28'),
(1325, 'Windy', '', 'windy.febriyanti@lintasarta.co.id', '2018-04-05 05:22:56'),
(1326, 'Wendy', '', 'wendy.nurannisa@Lintasarta.co.id', '2018-04-05 05:24:07'),
(1327, 'Hanna', '', 'hanna.jaidi@gmail.com', '2018-04-05 05:24:17'),
(1328, 'Hanna', '', 'hanna.jaidi@gmail.com', '2018-04-05 05:24:18'),
(1329, 'vera', '', 'vera.indraswari@lintasarta.co.id', '2018-04-05 05:24:39'),
(1330, 'ben', '', 'bandz1975@gmail.com', '2018-04-05 05:24:55'),
(1331, 'Yufa', '', 'yufakaysha@Gmail.com', '2018-04-05 05:25:14'),
(1332, 'fuziah', '', 'fauziyyahisma04@gmail.com', '2018-04-05 05:26:56'),
(1333, 'Dewi', '', 'dewi_at28@yahoo.com', '2018-04-05 05:27:13'),
(1334, 'Thomas', '', 'thom4sv@yahoo.com.au', '2018-04-05 05:29:05'),
(1335, 'Lanny', '', 'lanny.vivid@gmail.com', '2018-04-05 05:29:24'),
(1336, 'Hendi', '', 'hhendi@gmx.com', '2018-04-05 05:29:38'),
(1337, 'Aria', '', 'Ariaranaldo@yahoo.com', '2018-04-05 05:29:52'),
(1338, 'Emil', '', 'emil_lia73@yahoo.co.id', '2018-04-05 05:30:08'),
(1339, 'Andreas', '', 'fotobridalhelena@Gmail.com', '2018-04-05 05:30:32'),
(1340, 'Djoko', '', 'djokogedug@yahoo.com', '2018-04-05 05:30:49'),
(1341, 'Poppy', '', 'poppytheodora@yahoo.co.id', '2018-04-05 05:31:04'),
(1342, 'Deni', '', 'denijohn.w@gmail.com', '2018-04-05 05:31:19'),
(1343, 'Edo', '', 'e_wiryomartani@yahoo.com', '2018-04-05 05:31:43'),
(1344, 'Astrid', '', 'astrid_2510@yahoo.com', '2018-04-05 05:32:01'),
(1345, 'Calvin', '', 'kk.chee@ymail.com', '2018-04-05 05:32:20'),
(1346, 'Thomas', '', 'Nicolee26@Hotmail.com', '2018-04-05 05:32:37'),
(1347, 'Andry', '', 'robivh@Yahoo.com', '2018-04-05 05:32:50'),
(1348, 'Jimmy', '', 'jimmy.lukiyanto@gmail.com', '2018-04-05 07:56:03'),
(1349, 'Andi', '', 'andika.ns@Gmail.com', '2018-04-05 07:56:13'),
(1350, 'Hendra', '', 'hencip31198@gmail.com', '2018-04-05 07:56:36'),
(1351, 'David', '', 'vdavidhen@yahoo.com', '2018-04-05 07:57:16'),
(1352, 'Iwan G', '', 'gunawan.iwan49@Gmail.com', '2018-04-05 07:57:33'),
(1353, 'Devi', '', 'devi.pramiswari@yahoo.com', '2018-04-05 07:57:53'),
(1354, 'lusi', '', 'lusianacd11@Gmail.com', '2018-04-05 08:01:23'),
(1355, 'apip', '', 'leliapip@yahoo.com', '2018-04-05 08:01:40'),
(1356, 'ikin', '', 'ikin@vision.com', '2018-04-05 08:02:03'),
(1357, 'Ketty', '', 'ketty_enza@yahoo.com', '2018-04-05 08:02:17'),
(1358, 'David', '', 'lim_david76@Hotmail.com', '2018-04-05 08:03:06'),
(1359, 'Indri', '', 'anastastia_indri@Ymail.com', '2018-04-05 08:03:45'),
(1360, 'Ave', '', 'aveguso@yahoo.com', '2018-04-05 08:03:58'),
(1361, 'Suharno', '', 'sunonagata@Gmail.com', '2018-04-05 08:04:15'),
(1362, 'Agus', '', 'agus.gunawan@asco.co.id', '2018-04-05 08:04:35'),
(1363, 'Indah', '', 'indahsuciati86@Gmail.com', '2018-04-05 08:04:51'),
(1364, 'Devo', '', 'radendevo@yahoo.com', '2018-04-05 08:05:04'),
(1365, 'Santi', '', 'Santiunileverpireitb2b@gmail.com', '2018-04-05 08:05:45'),
(1366, 'faisal', '', 'qyas_qyf@yahoo.com', '2018-04-05 08:06:13'),
(1367, 'prima', '', 'subagjap@yahoo.com', '2018-04-05 08:07:56'),
(1368, 'meiko', '', 'meiko585@gmail.com', '2018-04-05 08:08:28'),
(1369, 'Apri', '', 'Apri_mailkee@Yahoo.co.id', '2018-04-05 08:08:49'),
(1370, 'yudi', '', 'yudi_megakarya@yahoo.com', '2018-04-05 08:09:05'),
(1371, 'Rudy', '', 'rudy_setya1@Yahoo.com', '2018-04-05 08:09:22'),
(1372, 'Budi', '', 'kurniawan.jaya99@gmail.com', '2018-04-05 08:09:41'),
(1373, 'Gaby', '', 'kayla_taufan@Yahoo.co.id', '2018-04-05 08:10:03'),
(1374, 'faiqal', '', 'faiqal_effendy@Yahoo.com', '2018-04-05 08:10:20'),
(1375, 'Julius', '', 'juliusjunmetro@Gmail.com', '2018-04-05 08:10:38'),
(1376, 'lola', '', 'lola2rose@Yahoo.com', '2018-04-05 08:10:50'),
(1377, 'Wahyu', '', 'wahyudantos@gmail.com', '2018-04-05 08:11:40'),
(1378, 'kiki', '', 'kiki@sansico.com', '2018-04-05 08:11:52'),
(1379, 'Agung', '', 'agunghendrawan@yahoo.com', '2018-04-05 08:12:03'),
(1380, 'etty', '', 'Ettysetiawati@yahoo.com', '2018-04-05 08:12:18'),
(1381, 'hans', '', 'hans.hermanto28@Gmail.com', '2018-04-05 08:22:21'),
(1382, 'Fikri', '', 'aceng69fikri@Gmail.com', '2018-04-05 08:22:36'),
(1383, 'Irwan', '', 'irwan.hadiwiranata@Yahoo.com', '2018-04-05 08:22:56'),
(1384, 'sidiq', '', 'sidikcmp@gmail.com', '2018-04-05 08:23:15'),
(1385, 'turyono', '', 'turyanoyon@Yahoo.co.id', '2018-04-05 08:25:46'),
(1386, 'Fira', '', 'yolanda.melvira@gmail.com', '2018-04-05 08:26:05'),
(1387, 'Azhari', '', 'md.azhary@yahoo.com', '2018-04-05 08:26:22'),
(1388, 'Andry', '', 'andry.febriansyah@gmail.com', '2018-04-05 08:28:02'),
(1389, 'Diana', '', 'diana@Gmail.com', '2018-04-05 08:28:12'),
(1390, 'Nyoman', '', 'nyomanmertega@Gmail.com', '2018-04-05 08:28:25'),
(1391, 'Pulo', '', 'Pt.pulodamarabadi@yahoo.com', '2018-04-05 08:28:54'),
(1392, 'Devi', '', 'devicwit@yahoo.co.id', '2018-04-05 08:46:53'),
(1393, 'Riana', '', 'riana_123@gmail.com', '2018-04-05 08:47:09'),
(1394, 'agus', '', 'Agus.karseno@enesis.com', '2018-04-05 08:47:40'),
(1395, 'Andi', '', 'andi.halim@yahoo.co.id', '2018-04-05 08:48:23'),
(1396, 'Nando', '', 'nando_patria@yahoo.com', '2018-04-05 08:48:45');
INSERT INTO `email` (`id_email`, `nama`, `number`, `email`, `time`) VALUES
(1397, 'Inriawan atmadja', '', 'legal7@indomaret.co.id', '2018-04-05 08:49:26'),
(1398, 'Salman', '', 'salman.alfarisyi@gmail.com', '2018-04-05 08:49:48'),
(1399, 'alwin', '', 'alwintarigan76@Gmail.com', '2018-04-05 08:50:09'),
(1400, 'tony', '', 'Delon_s.r@yahoo.com', '2018-04-05 08:50:41'),
(1401, 'didik', '', 'didikantonius@gmail.com', '2018-04-05 08:51:00'),
(1402, 'Wibowo', '', 'c_wibhowo_ms@yahoo.com', '2018-04-05 08:51:55'),
(1403, 'Yasin', '', 'm.yasin.abas@Gmail.com', '2018-04-05 08:52:18'),
(1404, 'Ronaldi', '', 'akuronaldi@gmail.com', '2018-04-05 08:52:37'),
(1405, 'Freddy', '', 'freddy@periplus.co.id', '2018-04-05 08:52:54'),
(1406, 'Prio', '', 'sixprio.ananto@pthai.com', '2018-04-05 08:53:19'),
(1407, 'arief', '', 'arief@mnaconsulting.co.id', '2018-04-05 08:53:46'),
(1408, 'Algian', '', 'algiansukarno@gmail.com', '2018-04-05 08:54:07'),
(1409, 'aldo', '', 'aldo_fernandez28@yahoo.co.id', '2018-04-06 03:44:26'),
(1410, 'Ade Syahrial', '', 'syahrial.lubis@marriothotels.com', '2018-04-06 03:44:52'),
(1411, 'Adi Susanto', '', 'adi.santosobgr@yahoo.co.id', '2018-04-06 03:45:28'),
(1412, 'adi', '', 'adisusanto@seid.sharp-world.com', '2018-04-06 03:45:53'),
(1413, 'Afrianto', '', 'afrianto.noor@gmail.com', '2018-04-06 03:59:24'),
(1414, 'aldi', '', 'aldich81@gmail.com', '2018-04-06 03:59:45'),
(1415, 'Aldi', '', 'aldich81@gmail.com', '2018-04-06 04:10:24'),
(1416, 'Aldi', '', 'aldich81@gmail.com', '2018-04-06 04:10:24'),
(1417, 'Alex', '', 'alextaroreh@gmail.com', '2018-04-06 04:12:09'),
(1418, 'Amin', '', 'Khoehauwmin@Gmail.com', '2018-04-06 04:12:27'),
(1419, 'Anwar', '', 'anwar_halim.150485@yahoo.com', '2018-04-06 04:12:50'),
(1420, 'Betharie', '', 'bethariewulandari@gmail.com', '2018-04-06 04:13:08'),
(1421, 'Muhammad boy', '', 'm.boy_job@yahoo.com', '2018-04-06 04:13:28'),
(1422, 'Danar', '', 'danargono@yahoo.co.id', '2018-04-06 04:13:46'),
(1423, 'Deddy', '', 'deddyandriyan@prowell-energy.com', '2018-04-06 04:14:08'),
(1424, 'Dede', '', 'dede_idris@yahoo.com', '2018-04-06 04:14:22'),
(1425, 'Eka', '', 'maestroeka@gmail.com', '2018-04-06 04:14:46'),
(1426, 'Fajar', '', 'fajargustaf@Yahoo.com', '2018-04-06 04:15:00'),
(1427, 'Lie', '', 'lieferly@gmail.com', '2018-04-06 04:15:17'),
(1428, 'Haris', '', 'haris.handianto@gmail.com', '2018-04-06 04:15:48'),
(1429, 'Hendrik', '', 'fbks.ptacs@gmail.com', '2018-04-06 04:16:29'),
(1430, 'Nur Ikhlas', '', 'nurikhlas.dna@Gmail.com', '2018-04-06 04:18:51'),
(1431, 'Indra', '', 'salimst@yahoo.com', '2018-04-06 04:19:11'),
(1432, 'meina', '', 'meina_rishine@Yahoo.com', '2018-04-06 04:19:33'),
(1433, 'ardi', '', 'ardisultan@yahoo.com', '2018-04-06 04:19:46'),
(1434, 'hersyah', '', 'hersyah.bei@gmail.com', '2018-04-06 04:20:03'),
(1435, 'umar', '', 'umar.khattab@nissan.indomobil.co.id', '2018-04-06 04:20:26'),
(1436, 'Dwi', '', 'cdfciadwifortuna@yahoo.com', '2018-04-06 04:20:49'),
(1437, 'San', '', 'san_cha501@yahoo.com', '2018-04-06 04:21:04'),
(1438, 'Gusti', '', 'goestee21@gmail.com', '2018-04-06 04:21:23'),
(1439, 'Heri', '', 'heri.arighy@Gmail.com', '2018-04-06 04:21:39'),
(1440, 'Jeff', '', 'jeff.sr08@gmail.com', '2018-04-06 04:21:57'),
(1441, 'Oki', '', 'oki_2lak@yahoo.com', '2018-04-06 04:22:13'),
(1442, 'Riom', '', 'riom_2006@yahoo.co.id', '2018-04-06 04:22:34'),
(1443, 'Ida', '', 'idasulastri75@gmail.com', '2018-04-06 04:22:57'),
(1444, 'monize', '', 'monizarkonsultan@Gmail.com', '2018-04-06 04:23:26'),
(1445, 'Susi', '', 'ahun_1987@Hotmail.com', '2018-04-06 04:23:51'),
(1446, 'Yudi', '', 'yudidabhur@Gmail.com', '2018-04-06 04:24:15'),
(1447, 'Lisa', '', 'dianfortuna@yahoo.co.id', '2018-04-06 04:26:11'),
(1448, 'Meidy', '', 'meidi@me.com', '2018-04-06 04:26:25'),
(1449, 'lita', '', 'ar@tiptop.co.id', '2018-04-06 04:26:40'),
(1450, 'Pieter', '', 'pit_sha99@Yahoo.com', '2018-04-06 04:27:03'),
(1451, 'Rully', '', 'rukasahrulianre@Yahoo.co.id', '2018-04-06 04:27:25'),
(1452, 'Sofie', '', 'sofie_sw_00@yahoo.com', '2018-04-06 04:27:42'),
(1453, 'Setyo', '', 'setyoadi00@yahoo.com', '2018-04-06 04:28:08'),
(1454, 'suko', '', 'sukoiswanto729@gmail.com', '2018-04-06 04:28:26'),
(1455, 'Surya', '', 'surya.suryadi@gmail.com', '2018-04-06 04:28:43'),
(1456, 'susan', '', 'susan.pranata@intiland.com', '2018-04-06 04:29:00'),
(1457, 'suzy', '', 'suzy@ciputra.com', '2018-04-06 04:29:14'),
(1458, 'Syeba', '', 'syebaa@yahoo.com', '2018-04-06 04:29:26'),
(1459, 'Lestari', '', 'tarie_mynov@yahoo.com', '2018-04-06 04:29:49'),
(1460, 'Arifiani', '', 'azrica.arifiani@yahoo.com', '2018-04-06 04:30:26'),
(1461, 'Riri', '', 'riripro@gmail.com', '2018-04-06 04:30:45'),
(1462, 'Tommy', '', 'tommy@himalayains.com', '2018-04-06 04:31:08'),
(1463, 'Tony', '', 'tonytheproperty@Gmail.com', '2018-04-06 04:31:25'),
(1464, 'wawan', '', 'jayavaro@yahoo.com', '2018-04-06 04:31:42'),
(1465, 'Wury', '', 'wury.dwh16@gmail.com', '2018-04-06 04:32:01'),
(1466, 'Clarisa', '', 'clarisa_fu@yahoo.com', '2018-04-06 04:32:19'),
(1467, 'zoe', '', 'mei@doctor.com', '2018-04-06 04:32:42'),
(1468, 'zulhadi', '', 'nul_zulhadi@Yahoo.com', '2018-04-06 04:32:59'),
(1469, 'Dede', '', 'dedehamdani@Ymail.com', '2018-04-06 04:33:11'),
(1470, 'Sigit', '', 'tristawijayanti@Yahoo.com', '2018-04-06 04:33:28'),
(1471, 'Teguh', '', 'teguh.pratomo@pt-ica.com', '2018-04-06 04:33:48'),
(1472, 'Melati', '', 'pcc@pertamina.com', '2018-04-06 04:35:18'),
(1473, 'Sudaryanto', '', 'istaka@istaka.co.id', '2018-04-06 04:35:46'),
(1474, 'Adi wijaya', '', 'adiwijaya@wika.co.id', '2018-04-06 04:36:12'),
(1475, 'suryani', '', 'sesper@bgrindonesia.com', '2018-04-06 04:36:30'),
(1476, 'Ameliaa', '', 'amelia@aisin-indonesia.co.id', '2018-04-06 04:38:27'),
(1477, 'Dewii', '', 'dewi.sulistyowati@sea.ccamatil.com', '2018-04-06 04:38:53'),
(1478, 'Yanti', '', 'yanti@cubicindonesia.com', '2018-04-06 04:39:11'),
(1479, 'Joko', '', 'jokosutoro@denso.co.id', '2018-04-06 04:39:31'),
(1480, 'Indira', '', 'w_indira@gs.astra.co.id', '2018-04-06 04:39:47'),
(1481, 'Aulia', '', 'aulia.tiara@isuzu.astra.co.id', '2018-04-06 04:40:05'),
(1482, 'Zubaidah', '', 'zubaidah@iginnotek.com', '2018-04-06 04:40:24'),
(1483, 'Nur huda', '', 'nurhuda.astari@lotte.co.id', '2018-04-06 04:45:16'),
(1484, 'Ardy', '', 'ardy@nagai.co.id', '2018-04-06 04:45:32'),
(1485, 'Kiswoyo', '', 'kiswoyo@ngkbusi.com', '2018-04-06 04:45:47'),
(1486, 'Ika', '', 'ika@nsk.com', '2018-04-06 04:45:57'),
(1487, 'Ibnu', '', 'ibnu.haris@suzuki.co.id', '2018-04-06 04:46:23'),
(1488, 'Achmadi', '', 'achmadi@patotech.com', '2018-04-06 04:46:40'),
(1489, 'Bayu', '', 'bayu.surlaya@yamazaki.co.id', '2018-04-06 04:46:59'),
(1490, 'Deasy', '', 'deasy@bumimulia.com', '2018-04-06 04:47:12'),
(1491, 'Wahyu', '', 'wahyudantos@gmail.com', '2018-04-06 07:21:44'),
(1492, 'Daniel', '', 'danielss76@gmail.com', '2018-04-06 07:22:39'),
(1493, 'Tegar', '', 'abie.arbian@Gmail.com', '2018-04-06 07:23:05'),
(1494, 'Yunus', '', 'cv.mjajkt@Gmail.com', '2018-04-06 07:23:21'),
(1495, 'Wisnu', '', 'wisnu@aquanano.id', '2018-04-06 07:23:42'),
(1496, 'Boby', '', 'saranapersadagroup@Gmail.com', '2018-04-06 07:24:00'),
(1497, 'Donny', '', 'donnydone88@yahoo.com', '2018-04-06 07:24:18'),
(1498, 'Aulia', '', 'auliadirgantari21@gmail.com', '2018-04-06 07:24:40'),
(1499, 'Eka', '', 'eka.ferdyansyah@Gmail.com', '2018-04-06 07:24:52'),
(1500, 'Galih', '', 'galih.putra03@gmail.com', '2018-04-06 07:25:07'),
(1501, 'Gatot', '', 'gatot.sukoco11@gmail.com', '2018-04-06 07:25:31'),
(1502, 'Reza', '', 'reza.rahardian@gmail.com', '2018-04-06 07:25:52'),
(1503, 'Tadi', '', 'tadimasaf@kieraceramics.com', '2018-04-06 08:11:58'),
(1504, 'Sri', '', 'Sri_borowati@mkcj.co.id', '2018-04-06 08:12:23'),
(1505, 'Ary', '', 'ary@china-glaze.co.id', '2018-04-06 08:24:31'),
(1506, 'silvia', '', 'silvia@kyoraku.co.id', '2018-04-06 08:24:56'),
(1507, 'ori', '', 'ori@toyoboyo.co.id', '2018-04-06 08:25:09'),
(1508, 'odas', '', 'odas@toyoboyo.co.id', '2018-04-06 08:25:25'),
(1509, 'sherida', '', 'sherida@ptssk.co.id', '2018-04-06 08:29:34'),
(1510, 'Abbas', '', 'abbas@ci-id.com', '2018-04-06 08:29:54'),
(1511, 'Rina', '', 'rina@ci-id.com', '2018-04-06 08:30:10'),
(1512, 'Anita', '', 'anita.carliani@dipsol.co.id', '2018-04-06 08:36:44'),
(1513, 'Sumanti', '', 'ignaciasizy.sumanti@sampoerna.com', '2018-04-06 08:37:11'),
(1514, 'Eka', '', 'eka.mulyaningtyas@kao.co.id', '2018-04-06 08:37:30'),
(1515, 'Dadang', '', 'dadang@monokem.com', '2018-04-06 08:38:00'),
(1516, 'Warjo', '', 'warjo@monokem.com', '2018-04-06 08:38:15'),
(1517, 'Merta', '', 'merta@matsukojaya.com', '2018-04-06 08:38:38'),
(1518, 'Budi ', '', 'budi.hariono@dic.co.id', '2018-04-06 08:39:00'),
(1519, 'Yulia', '', 'yulia@nttte.co.id', '2018-04-06 08:39:16'),
(1520, 'Rizall', '', 'rizal@ntte.co.id', '2018-04-06 08:39:39'),
(1521, 'Rini', '', 'rini@showakosan.co.id', '2018-04-06 08:39:56'),
(1522, 'Vera Elizabeth', '', 'vera.elisabeth@sohoglobalhealth.com', '2018-04-06 08:44:21'),
(1523, 'Vonny', '', 'vonny.lumongga@id.panasonic.com', '2018-04-06 08:44:44'),
(1524, 'asakura', '', 'asakura@ahi.co.id', '2018-04-06 08:45:02'),
(1525, 'Intan Yaniar', '', 'intan.yaniar@component.astra.co.id', '2018-04-06 08:45:27'),
(1526, 'Atsumi', '', 'atsumi@dnet.net.id', '2018-04-06 08:45:48'),
(1527, 'Hiroshi', '', 'hiroshi_maruyama@atsumitec.co.jp', '2018-04-06 08:46:43'),
(1528, 'Yani', '', 'yani@aztecs-ind.co.id', '2018-04-06 08:47:08'),
(1529, 'Imelda', '', 'imelda@aztecs-ind.co.id', '2018-04-06 08:47:28'),
(1530, 'yusman', '', 'yusman@banshu.com', '2018-04-06 08:47:42'),
(1531, 'yunan', '', 'yunan-imansyah@chiyodakogyo.co.id', '2018-04-06 08:48:10'),
(1532, 'Buyung', '', 'buyung@chuhatsu.co.id', '2018-04-06 08:48:28'),
(1533, 'Sandra', '', 'sandra.sunaryo@linc-logistic.com', '2018-04-06 08:49:09'),
(1534, 'Dewi', '', 'dewi.sulistyowati@sea.ccamatil.com', '2018-04-06 08:49:35'),
(1535, 'Kharisma', '', 'kharisma.an.kumala@sea.ccamatil.com', '2018-04-06 08:54:49'),
(1536, 'Yanti', '', 'yanti@cubicindonesia.com', '2018-04-06 08:55:41'),
(1537, 'upik', '', 'upik@denkowahana.com', '2018-04-06 08:56:01'),
(1538, 'Badruzzaman', '', 'badruzzaman_irfani@denso.co.id', '2018-04-06 08:56:29'),
(1539, 'nia', '', 'skoniaturohmah@denso.co.id', '2018-04-06 08:56:48'),
(1540, 'Joko', '', 'djoko-s@dnet.net.id', '2018-04-06 08:57:13'),
(1541, 'Normanita', '', 'normanita_shintya@ferron-pharma.com', '2018-04-06 08:57:38'),
(1542, 'Marito', '', 'marito_sitompul@ferron-pharma.com', '2018-04-06 08:58:06'),
(1543, 'Sakata', '', 't-sakata@fuji-kinzoku.co.id', '2018-04-06 08:58:32'),
(1544, 'Kyosuke', '', 'kyosuke_handa@fujimaki.co.jp', '2018-04-06 08:58:57'),
(1545, 'susan', '', 'susanrandf@gmail.com', '2018-04-10 06:48:16'),
(1546, 'judi', '', 'judimcmahon1414@gmail.com', '2018-04-10 06:48:51'),
(1547, 'amy', '', 'amyadvice@gmail.com', '2018-04-10 06:49:03'),
(1548, 'heni', '', 'henisupatmi@gmail.com', '2018-04-10 06:49:29'),
(1549, 'lesley', '', 'lesley.cornelius6@gmail.com', '2018-04-10 06:49:48'),
(1550, 'vita', '', 'darmavita@gmail.com', '2018-04-10 06:50:04'),
(1551, 'Jennifer', '', 'jenniferRMartino@gmail.com', '2018-04-10 06:50:32'),
(1552, 'niesha', '', 'nieshajeenwal@gmail.com', '2018-04-10 06:50:57'),
(1553, 'ory', '', 'nez.oryza@Gmail.com', '2018-04-10 06:51:26'),
(1554, 'marco', '', 'drbinmarco@gmail.com', '2018-04-10 06:51:41'),
(1555, 'umah', '', 'umahni@Gmail.com', '2018-04-10 06:51:54'),
(1556, 'udin', '', 'ajaenudien@gmail.com', '2018-04-10 06:52:09'),
(1557, 'loren', '', 'gigiloren7@gmail.com', '2018-04-10 06:52:27'),
(1558, 'akhtar', '', 'dr.akhtarstar@gmail.com', '2018-04-10 06:52:46'),
(1559, 'silva', '', 'silvanamak@gmail.com', '2018-04-10 06:53:01'),
(1560, 'adja', '', 'adja.sitar@Gmail.com', '2018-04-10 06:53:22'),
(1561, 'bona', '', 'bourbonandgloss@gmail.com', '2018-04-10 06:53:49'),
(1562, 'martha', '', 'ransmartha@Gmail.com', '2018-04-10 06:54:03'),
(1563, 'iffah', '', 'iffah.amalia@gmail.com', '2018-04-10 06:54:19'),
(1564, 'derma', '', 'dermafleece@gmail.com', '2018-04-10 06:54:34'),
(1565, 'annie', '', 'anniewalker514@Gmail.com', '2018-04-10 06:54:53'),
(1566, 'lu', '', 'panglu.xiong@gmail.com', '2018-04-10 06:55:15'),
(1567, 'dede', '', 'dede.maulana22@gmail.com', '2018-04-10 06:55:36'),
(1568, 'Randi', '', 'randi.bulo@gmail.com', '2018-04-10 06:56:21'),
(1569, 'looky', '', 'lukmanihwana@gmail.com', '2018-04-10 06:56:37'),
(1570, 'adlan', '', 'adlanbontang@Gmail.com', '2018-04-10 06:56:51'),
(1571, 'linda', '', 'linda28rachman@gmail.com', '2018-04-10 06:57:12'),
(1572, 'ridwanoor', '', 'ridwanoor@Gmail.com', '2018-04-10 06:57:32'),
(1573, 'erwin', '', 'zacky.lim@gmail.com', '2018-04-10 06:57:50'),
(1574, 'ricky', '', 'hutomo007@Gmail.com', '2018-04-10 06:58:03'),
(1575, 'meliana', '', 'meliana_chai@yahoo.com', '2018-04-10 06:58:23'),
(1576, 'budi', '', 'nugroho_budi_10@Yahoo.com', '2018-04-10 06:58:44'),
(1577, 'naomi', '', 'naomimanulang@gmail.com', '2018-04-10 06:59:07'),
(1578, 'yanto', '', 'yusantoad15@gmail.com', '2018-04-10 06:59:24'),
(1579, 'andre', '', 'andre_timor@yahoo.com', '2018-04-10 06:59:38'),
(1580, 'syamsul', '', 'syamsul888@gmail.com', '2018-04-10 06:59:55'),
(1581, 'galih', '', 'galihsp.nisancikarang@gmail.com', '2018-04-10 07:00:14'),
(1582, 'melyana', '', 'melmeyanna@gmail.com', '2018-04-10 07:00:32'),
(1583, 'kim', '', 'iskim214@gmail.com', '2018-04-10 07:00:49'),
(1584, 'daud', '', 'Daudw@cbn.net.id', '2018-04-10 07:01:08'),
(1585, 'hee', '', 'yja200510@hotmail.net', '2018-04-10 07:01:20'),
(1586, 'irvan septian kurniawan', '085693010355', 'irvanseptian80@gmail.com', '2018-04-14 08:24:47'),
(1587, 'irvan septian kurniawan', '085693010355', 'irvanseptian80@gmail.com', '2018-04-14 08:25:24'),
(1588, 'irvan septian kurniawan', '085693010355', 'irvanseptian80@gmail.com', '2018-04-14 08:25:40'),
(1589, 'aaa', '', 'adjie@email.com', '2019-06-16 22:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `lokasi` varchar(250) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `foto`, `lokasi`, `deskripsi`, `time`) VALUES
(1, 'WISMAYA RESIDENCE', 'PRESSCON_VIVA_EROPA.jpg', 'Bekasi', '<p><span style=\"color:#444444; font-family:Raleway,sans-serif\">Apartment 36 lantai yang modern dan berkelas di kota Bekasi. Dilengkapi dengan Edutaiment park, dan menjamin keamanan selama 24 jam, menjamin Privacy dan Kenyamanan Penghuninya.</span></p>\r\n', '2018-02-13 18:00:47'),
(2, 'GROUND BREAKING WISMAYA RESIDENCE', 'ground_breaking_WR.jpg', 'Bekasi', '<p style=\"box-sizing: border-box; margin-bottom: 25px; margin-top: 0px; letter-spacing: 0.04em; color: #444444; font-family: Raleway, sans-serif;\">Seperti yang telah diketahui, harga properti akan semakin meningkat seturut dilengkapinya fasilitas transportasi dan infrastruktur pada suatu lokasi. Hal yang serupa akan terjadi pada Bekasi berkat pembangunan tol BECAKAYU (Bekasi &ndash; Cawang &ndash; Kampung Melayu) yang dijadwalkan selesai pada tahun 2017 yang akan mendantang. &ldquo;Dengan masifnya pembangunan infrastruktur di kota ini, maka ekonomi Bekasi akan terus tumbuh. Di sinilah peluang investasi di sektor properti masih sangat cerah,&rdquo; ujar Panangian Simanungkalit, pengamat properti Indonesia.</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 25px; margin-top: 0px; letter-spacing: 0.04em; color: #444444; font-family: Raleway, sans-serif;\">Melihat kesempatan ini PT Langgeng Makmur Perkasa (LMP Group) telah melakukan groundbreaking sebuah proyek hunian apartmen berkelas yang modern Wismaya Residence pada akhir Januari lalu. Lokasinya yang strategis, yaitu berada di tengah exit tol Bekasi Barat dan exit tol Bekasi Timur, dan selangkah menuju jalan tol Becakayu, sangat sesuai untuk kehidupan masyarakat yang semakin sibuk. Bukan itu saja, berdasarkan rencana tata ruang wilayah kota Bekasi 2011 &ndash; 2035 kawasan strategis kota ini juga direncanakan terkoneksi langsung dengan stasiun LRT (Light Rail Transit) yang diperkirakan beroperasi tahun 2018.</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 25px; margin-top: 0px; letter-spacing: 0.04em; color: #444444; font-family: Raleway, sans-serif;\">\"Jika konsumen dan investor menunggu beberapa tahun lagi, maka akan sulit menemukan apartemen berkelas dengan harga kompetitif yang kini ditawarkan oleh Wismaya,\" ungkap Yuyu Y Kasim, Direktur Pengembangan Bisnis PT Langgeng Makmur Perkasa.</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 25px; margin-top: 0px; letter-spacing: 0.04em; color: #444444; font-family: Raleway, sans-serif;\">Wismaya Residence yang telah menerima animo baik dari masyarakat Bekasi ini akan memiliki dua menara apartemen setinggi 35 lantai berisi 2.316 unit, dengan berbagai pilihan tipe ukuran yang menarik. Hunian ini memadukan unsur modern dengan akses tradisional stylish pada 5 elemen kehidupan yang berkelas; Grand Lobby, Healthy Living, Recreation, Edutaiment Park, dan Leisure &amp; Lifestyle.</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 25px; margin-top: 0px; letter-spacing: 0.04em; color: #444444; font-family: Raleway, sans-serif;\">&ldquo;Kami memahami bahwa tahun 2018, sejumlah proyek infrastruktur dan transportasi di Bekasi telah selesai, sehingga bisa digunakan untuk melayani masyarakat. Karena itulah kami merencanakan handover paling lambat akhir tahun 2018,&rdquo; - Iwan Risdianto, General Manager Marketing PT Langgeng Makmur Perkasa.</p>', '2018-02-13 18:01:53'),
(3, 'Wismaya Residence Launching layanan Video Call', 'IMG_0856.JPG', 'Marketing Gallery Wismaya Residence', '<p>RadarOnline.id, JAKARTA&nbsp;&ndash;Wismaya Residence sebuah hunian Apartemen yang berlokasi di Bekasi ini ingin memberikan pelayanan yang terbaik untuk para pelanggan. Melihat pesatnya pertumbuhan technology digital, Langgeng Land dengan jeli melihat dan memamfaatkan layanan Video Call untuk Telemarketingnya.</p>\r\n\r\n<p>Layanan Telemarketing melalui Video Call hari ini, Jumat 5 Januari 2018 resmi diluncurkan dengan dihadiri para direksi Wismaya Residence seperti Direktur Komersial PT LMP, Yuyu Yusran Kasim dan Direktur HCD PT WMP, Nur Tjahyo.</p>\r\n\r\n<p>Yuyu Yasrin Kasim dalam keterangan mengatakan bahwa Video Call ini diluncurkan untuk memberikan pelayanan yang terbaik bagi para pelanggan dan dia melihat pesatnya teknologi digital saat ini beberapa cara konvensional mulai ditinggalkan oleh beberapa generasi. Dalam mengikuti arus digital tersebut, Wimaya Residence muncul dengan konsep yang berbeda, dia juga menjelaskan bahwa konsep ini tidak pernah dilakukan sebelumnya oleh perusahaan property yakni Layanan Telemarketing dengan Video Call.</p>\r\n\r\n<p>&ldquo;Sebenarnya kita ingin mempermudah customer&rsquo;s mendapat informasi sejak pertama kali berkomunikasi dengan Wismaya Residence. Nah Video Call ini memudahkan kita untuk menunjukkan langsung ke customers seperti apa sih show unitnya, nah saat itu juga kan dengan video call kita bisa langsung suit kameranya ke show unit, kita tunjukkan kemudin kita jelaskan.&rdquo; Ujar Yaya.</p>\r\n\r\n<p>Dengan Nomor 0855 8356677 via WhatsApps (WA) para pelanggan bisa chat massage dan juga melakukan Video Call. Keunggulan Video Call ini, anda bisa langsung bertatap muka dengan staf telemarketing, mencari informasi secara langsung apabila tidak sempat mampir ke Marketing Gallery Wismaya Residence, anda bisa melihat Show Unit bahkan melihat Progress site project melalui Video Call.</p>\r\n\r\n<p>Melalui layanan Video Call ini diyakini akan memberikan engagement yang lebih kuat antara Wismaya Residence dan Calon&nbsp; Custemernya. Membuat calon custemer lebih mudah menentukan unit mana yang akan dipilih.</p>\r\n\r\n<p>Layanan Video Call ini sudah mulai diuji coba pada bulan November 2017 kepada para calon custeomers untuk menyeimbangkan beberapa hal dan mengkombinasikan pola konvensional dengan pola modern.</p>\r\n\r\n<p>Yuyu mengatakan bahwa 1 minggu pertama layanan ini mulai diuji coba ada delapan orang yang berhasil berkomunikasi dan responnya &ldquo;Kaget&rdquo; kok ada Telemarketing property yang menghubungi via Video Call. Sampai akhir Desember 2017 sebanyak 28 orang yang sudah menggunakan layanan Video Call ini.</p>\r\n\r\n<p>Bekerjasama dengan provider jasa telekomunikansi layanan Video Call ini didukung dengan layanan data dengan kecepatan 50 mbps. Dengan kecepatan 50 mbps layanan video call ini akan stabil digunakan untuk menghubungi atau dihubungi para calon pelanggan.</p>\r\n\r\n<p>&ldquo;Kita bekali dengan layanan data sampai 50 mbps dan kita juga kerjasama dengan salah satu provider tersebut untuk membantu memaksimalkan layanan khusus dari nomor kita. Jadi kita lihat dulu dengan 50 mbps ini kalau kurang juga, tapi sejauh ini sudah berjalan lancar.&rdquo; Kata Yuyu&nbsp;</p>\r\n\r\n<p>Untuk target penjulan Wismaya Residence di tahun 2017 Yuyu mengatakan bahwa target penjualan hampir tercapai 40 persen dan Yuyu berharap dengan adanya penambahan layanan Video Call ini bisa tercepai 70 persen di tahun 2018 ini.</p>\r\n', '2019-06-18 23:37:40'),
(4, 'PENGUNDIAN VIVA EROPA MERCEDESZ BENZ CLA- 200', 'a.jpg', 'Bekasi', '<p>PT Langgeng Makmur Perkasa (LMP), melalui Langgeng Land selaku developer Wismaya Residence hari ini melangsungkan pengundian Wismaya Viva Eropa dengan grand prize satu unit mobil mewah Meredes Benz CLA 200.</p>\r\n\r\n<p>Tak hanya itu, hadiah hiburan lain pun di undi bersama satu unit sepeda motor Yamaha NMX, dua unit Iphone 6 dan empat tiket perjalanan wisata ke Raja Ampat. Wismaya Viva Eropa merupakan nama program yang berjalan sejak 2016. Viva dalam kebudayaan Eropa memiliki arti hidup, semangat, gembira, atau bahagia. Wismaya Residence sendiri memiliki tagline Priceless Home for Living.</p>\r\n\r\n<p>&quot;Bila dielaborasi dalam sebuah kesatuan nama, akan terlihat dan terasa bahwa Wismaya Residence benar-benar menawarkan kualitas hidup, kenyamanan hidup, kemewahan hidup, dan segala nilai yang membuat hidup semakin bahagia,&quot;ujar Direktur Marketing PT LMP Hamidjaja Sutiknja, Sabtu (9/9/2017).</p>\r\n\r\n<p>Pihaknya mengucapkan terimakasi atas apresiasi seluruh customer dalam program undian ini, antusias masyarakat ternyata cukup baik dalam acara tersebut. &quot;Semoga para pemenang bisa memanfaatkan hadiah tersebut dengan sebaik-baiknya. Sekali lagi kami mengucapkan terimakasih sudah memilih Wismaya Residence untuk hunian dan investasi masa depan,&quot; tutupnya.</p>\r\n', '2019-06-18 23:42:44'),
(5, 'WISMAYA LATTE ART', 'IMG_8806.JPG', 'Jakarta', '<p>Datang dan ikuti Latte Art Competition yang berhadiah Uang tunai, Apron dan Merchandise menarik dari Nescafe Dolce Gusto ! Segera Kunjungi Marketing Gallery Wismaya Residence pada hari Sabtu, 28 Oktober 2017...</p>\r\n', '2019-06-19 21:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id_footer` int(11) NOT NULL,
  `tentang_kami` text NOT NULL,
  `alamat` text NOT NULL,
  `telepone` varchar(20) NOT NULL,
  `handpone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id_footer`, `tentang_kami`, `alamat`, `telepone`, `handpone`, `email`, `keterangan`) VALUES
(1, '<p>Diawali dengan bidang konstruksi, Lini Bisnis yang digawangi oleh PT. Langgeng Makmur Perkasa yang didirikan tahun 2002 untuk kemudian disebut Langgeng Land ini mengembangkan sayap usahanya dengan merambah ke sektor property dan Investasi.</p>\r\n', 'Graha Widodo Makmur', '021-84306786/87', '081511106677', 'admin@langgengland.co.id', 'Mon - Sun: 9:00 - 18:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_event`
--

CREATE TABLE `gallery_event` (
  `id_ge` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `foto_ge` varchar(200) NOT NULL,
  `times` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_event`
--

INSERT INTO `gallery_event` (`id_ge`, `id`, `foto_ge`, `times`) VALUES
(2, 5, '68b7b052-49fa-4f44-bae9-872e5256aca3.jpg', '2019-06-20 04:57:06'),
(3, 5, '6fc08637-73d9-4227-8b5b-4788b7ba3a35.jpg', '2019-06-20 04:57:42'),
(4, 5, 'c47509b7-5154-45fd-9438-64f1169d5492.jpg', '2019-06-20 04:58:22'),
(5, 5, '92013e33-8bf1-40f9-8204-2d741494ff1d.jpg', '2019-06-20 04:58:51'),
(6, 5, '2800dd4e-ea27-47d0-bdb7-b149ab670ab4.jpg', '2019-06-20 04:59:17'),
(7, 5, '30f8fe4d-8284-4c8d-af2a-fcf3b91b447b.jpg', '2019-06-20 04:59:41'),
(8, 5, '1e5567c2-610c-4baa-9cd3-d033fbcdcd51.jpg', '2019-06-20 05:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_projects`
--

CREATE TABLE `gallery_projects` (
  `id_gp` int(11) NOT NULL,
  `id_projects` int(10) NOT NULL,
  `foto_galeri` varchar(250) NOT NULL,
  `times` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_projects`
--

INSERT INTO `gallery_projects` (`id_gp`, `id_projects`, `foto_galeri`, `times`) VALUES
(1, 2, 'IMG_1615.jpg', '2018-02-13 18:38:54'),
(2, 2, '2br-2.jpg', '2018-02-13 18:39:05'),
(3, 2, '983826_795474807179104_912522364140683652_n.jpg', '2018-02-13 18:39:18'),
(4, 2, 'IMG_20151212_104627-1.jpg', '2018-02-13 18:39:42'),
(5, 1, 'Show_unit_1.jpg', '2018-02-13 18:41:24'),
(6, 1, 'Show_unit_2.jpg', '2018-02-13 18:41:29'),
(7, 1, 'Show_unit_3.jpg', '2018-02-13 18:41:36'),
(8, 1, 'Show_unit_4.jpg', '2018-02-13 18:41:40'),
(9, 1, 'Show_unit_5.jpg', '2018-02-13 18:41:44'),
(10, 1, 'Show_unit_6.jpg', '2018-02-13 18:41:48'),
(11, 1, 'Show_unit_7.jpg', '2018-02-13 18:41:53'),
(12, 1, 'tipe_1_bedroom.jpg', '2018-02-13 18:41:58'),
(13, 1, 'tipe_2_bedroom.jpg', '2018-02-13 18:42:03'),
(14, 1, 'tipe_3_bedroom.jpg', '2018-02-13 18:42:08'),
(15, 1, 'tipe_studio.jpg', '2018-02-13 18:42:12'),
(51, 10, 'AERIAL_20190121.jpg', '2019-07-14 21:01:10'),
(52, 10, 'JGTRACK.jpg', '2019-07-14 21:01:28'),
(53, 10, 'PGROUND_(LINGKUNGAN).jpg', '2019-07-14 21:01:45'),
(54, 10, 'POOL_20190121.jpg', '2019-07-14 21:02:07'),
(55, 10, 'MASJID_fix_(1).jpg', '2019-07-14 21:02:25'),
(56, 10, 'Update_05.jpg', '2019-07-14 21:04:14'),
(57, 10, 'Update_06.jpg', '2019-07-14 21:04:30'),
(58, 10, 'Update_07.jpg', '2019-07-14 21:04:46'),
(59, 10, 'Update_08.jpg', '2019-07-14 21:05:01'),
(60, 10, '5m.jpg', '2019-07-14 21:05:17'),
(61, 9, '002.jpg', '2019-09-09 02:22:53'),
(62, 9, '001.jpg', '2019-09-09 02:25:19'),
(63, 9, '003.jpg', '2019-09-09 02:25:37'),
(64, 9, '004.jpg', '2019-09-09 02:26:01'),
(65, 9, '005.jpg', '2019-09-09 02:26:31'),
(66, 9, '006.jpg', '2019-09-09 02:26:47'),
(67, 9, '007.jpg', '2019-09-09 02:27:05'),
(68, 9, '008.jpg', '2019-09-09 02:27:23'),
(69, 9, '009.jpg', '2019-09-09 02:27:43'),
(70, 9, '010.jpg', '2019-09-09 02:28:08'),
(71, 9, '011.jpg', '2019-09-09 02:28:27'),
(72, 9, '012.jpg', '2019-09-09 02:28:46'),
(73, 9, '013.jpg', '2019-09-09 02:29:05'),
(74, 9, '014.jpg', '2019-09-09 02:29:23'),
(75, 9, '015.jpg', '2019-09-09 02:29:43'),
(77, 9, '016.jpg', '2019-09-09 02:30:26'),
(78, 9, '017.jpg', '2019-09-09 02:30:43'),
(79, 9, '018.jpg', '2019-09-09 02:31:01'),
(81, 9, '019.jpg', '2019-09-09 02:31:44'),
(83, 8, 'edit_81.jpg', '2019-09-09 03:00:16'),
(85, 8, 'edit_71.jpg', '2019-09-09 03:00:57'),
(86, 8, 'edit_3.jpg', '2019-09-09 03:01:23'),
(87, 8, 'DSCN92061.jpg', '2019-09-09 03:05:51'),
(88, 8, 'DJI_0017b.JPG', '2019-09-10 21:57:51'),
(89, 8, 'DJI_0034b.JPG', '2019-09-10 21:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `level_users`
--

CREATE TABLE `level_users` (
  `id_level` int(10) NOT NULL,
  `nama_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_users`
--

INSERT INTO `level_users` (`id_level`, `nama_level`) VALUES
(2, 'warehouse'),
(4, 'Manager'),
(5, 'admin'),
(6, 'sales');

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
(82, 'barang', 'admin', 'listbarang', '', '', 'Y', 'user', 'Y', 0, ''),
(81, 'gudang', 'admin', 'listgudang', '', '', 'Y', 'user', 'Y', 0, ''),
(77, 'action edit', 'admin', 'action_edit', '', '', 'Y', 'user', 'Y', 0, ''),
(78, 'kategori', 'admin', 'kategoribrg', '', '', 'Y', 'user', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id_projects` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `lokasi` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `peta` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id_projects`, `title`, `kategori`, `foto`, `lokasi`, `deskripsi`, `kontak`, `peta`, `time`) VALUES
(9, 'Wismaya Residence ', 'apartment', 'Gate.jpg', 'Jl. M. M. Hasibuan no 52 Kota Bekasi', '<p>Apartment terbaik&nbsp; yang memiliki 5 Keunggulan dan TOD sebenar-benar nya di Kota Bekasi.</p>\r\n', '021 - 88356677', '', '2019-07-14 19:22:50'),
(11, 'Student Castle Apartment Yogyakarta', 'apartment', 'SCA_resize_thumbnail_web.jpg', 'Jl. Seturan Yogyakarta', '<p>Apartemen pertama untuk Pelajar dan Mahasiswa di Yogyakarta</p>\r\n', '0274 - 4333000', '', '2019-10-15 02:13:20'),
(12, 'Magalia Homes', 'perumahan', 'Magalia_resize_thumbnail_web.jpg', 'Karang Tengah - Kota Tangerang', '<p>Housing Landed yang menghadirkan kenyamanan, privasi dan kemewahan, di barat Jakarta</p>\r\n', '081511106677', '', '2019-10-15 02:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `jdl_1` text NOT NULL,
  `jdl_2` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `link` varchar(50) NOT NULL,
  `id_slider_s` mediumint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `jdl_1`, `jdl_2`, `foto`, `link`, `id_slider_s`) VALUES
(10, 'Joglo', 'Deskripsi', 'joglo2.JPG', '#', 1),
(12, 'Joglo', 'Deskirpsi', 'joglos.jpg', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider_s`
--

CREATE TABLE `slider_s` (
  `id_slider_s` int(2) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_s`
--

INSERT INTO `slider_s` (`id_slider_s`, `nama_status`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id_support` int(2) NOT NULL,
  `judul_support` varchar(200) NOT NULL,
  `deskripsi_support` text NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepone` varchar(20) NOT NULL,
  `handpone` varchar(20) NOT NULL,
  `peta` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id_support`, `judul_support`, `deskripsi_support`, `lokasi`, `email`, `telepone`, `handpone`, `peta`, `foto`) VALUES
(1, 'Supports', '<p>Welcome To Langgeng land</p>\r\n', 'Graha Widodo Makmur ', '', '02184306786/87', '081511106677', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15861.697402069103!2d106.900549!3d-6.3390450000000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x284be730643a5ade!2sGraha+Widodo+Makmur!5e0!3m2!1sid!2sid!4v1562127019036!5m2!1sid!2sid', 'banner_web_logo_LMP_revisi_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nik_employee` varchar(22) NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL,
  `tgl_gabung` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nik_employee`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`, `tgl_gabung`, `tgl_keluar`, `alamat`) VALUES
('admin', 'ed947c142e01d237c97b3520c398e7a8015f38b22799c86c5565a8a8f36a25008041b08dded604b454ce6f080c30ae9b1e1f74154251bfdae6991045021ed28e', '123456', 'Ajies', 'adjiedwisandy@gmail.com', '081284857609', '14553255_1764512750456659_109914453692121088_n1.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7', '0000-00-00', '0000-00-00', 'jln bogem'),
('admin2', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', '', 'admin', 'admin@kstrian.com', '1212', '', 'admin', 'N', 'c84258e9c39059a89ab77d846ddab909-20210325071819', '0000-00-00', '0000-00-00', 'aaaaa');

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
(29, 'b69c93ee70ba1ad7836c5fa2ecbafc93-20180808172554', 34),
(30, 'b69c93ee70ba1ad7836c5fa2ecbafc93-20180808172554', 31),
(31, '0ca97907b8c6c5c8732d4223ed04b9b9-20181203004605', 2),
(33, '0ca97907b8c6c5c8732d4223ed04b9b9-20181203005956', 18),
(35, 'bb0ed6ad56f41c6de469776171261226-20181203011902', 76),
(37, 'bb0ed6ad56f41c6de469776171261226-20181203011902', 77),
(38, 'bb0ed6ad56f41c6de469776171261226-20181203011902', 78),
(39, 'bb0ed6ad56f41c6de469776171261226-20181203011902', 79),
(40, '63eefbd45d89e8c91f24b609f7539942-20190207174807', 82),
(41, '63eefbd45d89e8c91f24b609f7539942-20190207174807', 0),
(42, '63eefbd45d89e8c91f24b609f7539942-20190207174807', 0),
(43, 'b4cc344d25a2efe540adbf2678e2304c-20190221092200', 2),
(44, '4750bf69e103ade024ac0d8c9d49ba30-20190309182458', 82),
(45, 'd686a53fb86a6c31fa6faa1d9333267e-20190309182818', 82);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(188, 0, 'admin', '2', '2', '', 'download-1.jpg', '', 'https://www.youtube.com/embed/qIxtTXspmu8', 0, 'Senin', '2019-06-17', '10:48:45', ''),
(187, 0, 'admin', '1', '1', '', 'download2.jpg', '', 'https://www.youtube.com/embed/fPQVuXr1d54', 0, 'Sabtu', '2019-06-15', '19:11:52', ''),
(189, 0, 'admin', '3', '3', '', 'download-21.jpg', '', 'https://www.youtube.com/embed/Mmrdft0_K5o', 0, 'Senin', '2019-06-17', '10:51:07', ''),
(190, 0, 'admin', '4', '4', '', 'download-3.jpg', '', 'https://www.youtube.com/embed/TCNmf2o8CRA', 0, 'Senin', '2019-06-17', '10:51:39', ''),
(191, 0, 'admin', '5', '5', '', 'download-4.jpg', '', 'https://www.youtube.com/embed/ytF54EBjQ-4', 0, 'Senin', '2019-06-17', '10:52:14', ''),
(192, 0, 'admin', 'Anak muda zaman sekarang sudah berani berinvestasi!', 'anak-muda-zaman-sekarang-sudah-berani-berinvestasi', '', 'Thumbnail_website_(anak_muda).jpg', '', 'https://www.youtube.com/embed/AZYKw67offg', 0, 'Senin', '2019-06-17', '10:52:41', ''),
(193, 0, 'admin', '5 KEUNGGULAN WISMAYA RESIDENCE', '5-keunggulan-wismaya-residence', '', 'Thumbnail_website_(5_keunggulan)-01-01.jpg', '', 'https://www.youtube.com/embed/Dp2xQEaslvc', 0, 'Senin', '2019-06-17', '10:53:20', ''),
(194, 0, 'admin', 'Golden Memories at Wismaya Residence', 'golden-memories-at-wismaya-residence', '<p>Dalam memperingati Hari Musik Nasional, Wismaya Residence memeriahkannya dengan acara Golden Memories. Acara yang dimeriahkan oleh Seniman Bekasi dan bintang tamu yang sangat spesial 2 D (Deddy Dhukun &amp; Dian Pramana Poetra). Acara Golden memories yang bertujuan untuk bernostalgia bersama, mendapatkan apresiasi yang sangat besar, sampai Bapak Noval selaku DPR-RI ikut datang dan memeriahkan acara Golden Memories. Semoga peringatan musik nasional ini menjadi pemersatu NKRI. Yuk liat keseruan acara Golden memories. Untuk Info lebih lanjut jangan lupa check sosial media kami yang lain : Instagram : <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.instagram.com%2Fwismayaresidencebekasi%2F&amp;v=rvWDPIyCKZI&amp;redir_token=dv39vFfy4zIejwDZOta_0E_yz2R8MTU2MDkxMzI5MUAxNTYwODI2ODkx&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">https://www.instagram.com/wismayaresi...</a> Fanpage : <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2FWismayaResidenceBekasi%2F&amp;v=rvWDPIyCKZI&amp;redir_token=dv39vFfy4zIejwDZOta_0E_yz2R8MTU2MDkxMzI5MUAxNTYwODI2ODkx&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">https://www.facebook.com/WismayaResid...</a> Website : <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" href=\"https://www.youtube.com/redirect?q=http%3A%2F%2Flanggengland.co.id%2F&amp;v=rvWDPIyCKZI&amp;redir_token=dv39vFfy4zIejwDZOta_0E_yz2R8MTU2MDkxMzI5MUAxNTYwODI2ODkx&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">http://langgengland.co.id/</a> Blogspot : <a class=\"yt-simple-endpoint style-scope yt-formatted-string\" href=\"https://www.youtube.com/redirect?q=http%3A%2F%2Fwww.langgengproperty.com%2F&amp;v=rvWDPIyCKZI&amp;redir_token=dv39vFfy4zIejwDZOta_0E_yz2R8MTU2MDkxMzI5MUAxNTYwODI2ODkx&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">http://www.langgengproperty.com/</a></p>\r\n', 'Thumbnail_website_golden_memories-02.jpg', '', 'https://www.youtube.com/embed/rvWDPIyCKZI?start=2', 0, 'Senin', '2019-06-17', '10:53:54', ''),
(195, 0, 'adminlmp', 'Progress Project Wismaya Residence Mei 2019', 'progress-project-wismaya-residence-mei-2019', '<p>berikut Progress Pembangunan Wismaya Residence Mei 2019</p>\r\n', 'logo_wismaya.jpg', '', ' https://www.youtube.com/embed/hup0rfVLAYU', 0, 'Jumat', '2019-07-05', '04:13:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `wmu_conf_perusahaan`
--

CREATE TABLE `wmu_conf_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `npwp_perusahaan` varchar(100) NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fax` varchar(150) NOT NULL,
  `website` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wmu_conf_perusahaan`
--

INSERT INTO `wmu_conf_perusahaan` (`id_perusahaan`, `nama_perusahaan`, `npwp_perusahaan`, `alamat_perusahaan`, `telepon`, `email`, `fax`, `website`, `kode_pos`, `logo`) VALUES
(1, 'KEI', '', 'Jalan Cilangkap, Jakarta Timur', '021-xxxxxxxx', '', '0751461691', '', 13740, 'kei.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id_footer`);

--
-- Indexes for table `gallery_event`
--
ALTER TABLE `gallery_event`
  ADD PRIMARY KEY (`id_ge`);

--
-- Indexes for table `gallery_projects`
--
ALTER TABLE `gallery_projects`
  ADD PRIMARY KEY (`id_gp`);

--
-- Indexes for table `level_users`
--
ALTER TABLE `level_users`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_projects`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `slider_s`
--
ALTER TABLE `slider_s`
  ADD PRIMARY KEY (`id_slider_s`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `wmu_conf_perusahaan`
--
ALTER TABLE `wmu_conf_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1590;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id_footer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_event`
--
ALTER TABLE `gallery_event`
  MODIFY `id_ge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery_projects`
--
ALTER TABLE `gallery_projects`
  MODIFY `id_gp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `level_users`
--
ALTER TABLE `level_users`
  MODIFY `id_level` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id_projects` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slider_s`
--
ALTER TABLE `slider_s`
  MODIFY `id_slider_s` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `wmu_conf_perusahaan`
--
ALTER TABLE `wmu_conf_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

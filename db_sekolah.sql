-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 12:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`) VALUES
(6, '12.webp', 'acara apa'),
(7, '132.jpg', 'iuavhbjlnkv');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`) VALUES
(35, 'PPLG', '  PPLG atau Pengembangan Perangkat Lunak dan Gim adalah sebuah jurusan di SMK (Sekolah Menengah Kejuruan). Jurusan ini mempelajari dan mendalami cara-cara mengembangkan perangkat lunak. Mulai dari pembuatan, pemeliharaan, manajemen kualitas, dan manajemen organisasi pengembangan perangkat lunak.                                                                                  ', 'pplg.jpeg'),
(36, 'MPLB', 'Program Keahlian Manajemen Perkantoran Layanan Bisnis (MPLB) adalah program keahlian yang dulunya merupakan program keahlian Administrasi Perkantoran', 'mplb.png'),
(37, 'TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi (TJKT) yang sebelumnya bernama Teknik Komputer Jaringan (TKJ) merupakan salah satu program keahlian di bidang teknologi dan informasi', 'tjkt.jpeg'),
(38, 'Pemasaran', '  Jurusan ini adalah jurusan PMN (pemasaran) yang berganti nama dari BDP (Bidang Daring Pemasaran),JURUSAN ini mempelajari tentang Marketing cara mempromosikan barang dan jasa kepada beragam pelanggan dan berfokus pada periklanan dan penjualan.                                                      ', 'pmn.jpg'),
(39, 'Perhotelan', 'Jurusan perhotelan menjadi salah satu jurusan pada jenjang Sekolah Menengah Kejuruan atau SMK yang masih cukup banyak diminati hingga saat ini. Di jurusan ini, mempelajari materi-materi yang berkaitan dengan dunia perhotelan dan pariwisata.', 'htl.jpg'),
(40, 'DKV', 'Desain komunikasi visual masih merupakan bagian dari ilmu seni. Sebelum menjadi DKV, jurusan ini disebut desain grafis. Mahasiswa desain grafis banyak belajar tentang grafis dan gambar 2D pada media cetak, yang sangat berbeda dengan materi perkuliahan DKV saat ini.', 'dkv.png'),
(41, 'Kuliner', ' Jurusan Bisnis Kuliner(KLN) mempelajari implementasi ilmu bisnis di bidang kuliner. Jadi, melalui jurusan ini Quipperian bisa mendalami 2 ilmu sekaligus, bisnis dan kuliner. Jurusan Bisnis Kuliner di Indonesia terbilang masih sangat jarang.                            ', 'kln.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `alamat`, `telepon`, `logo`, `tentang_sekolah`, `foto_sekolah`, `google_maps`) VALUES
(1, 'Smk Wikrama Bogor', 'Jl. Raya Wangun No.21, RT.01/RW.06, Sindangsari,\r\n Kec. Bogor Timur., \r\n Kota Bogor, \r\n Jawa Barat 16146                                                                                                                                                                                                                                                                                            ', '0251-8242411 ', 'p.png', '                                                                                                                                                                        SMK Wikrama Bogor didirikan oleh Ir. Itasia Dina Sulvianti dan Dr.H.RP Agus Lelana dibawah naungan Yayasan Prawitama pada tahun 1996 di bekas gudang KUD. Kompetensi keahlian yang pertama dibuka pada saat itu adalah sekretaris dengan jumlah hanya 34 siswa.Dan Sekarang Sudah memiliki banyak sekali cabang Seperti Wikrama Garut, Banjarmasin, Jepara, dan Semarang\r\n                                                                                                                                                                                                                                                                      ', 'sekolah.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.0158481205144!2d106.84162231424396!3d-6.644953095195107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c89505b4c37d%3A0x307fc4a38e65fa2b!2sWikrama%20Bogor%20Vocational%20School!5e0!3m2!1sen!2sid!4v1679590707918!5m2!1sen!2sid                                                                          ');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`) VALUES
(2, 'Abi', 'rflinta', '7b5b40e9d2c268ddc876d026cfd08583'),
(13, 'Rafi', 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

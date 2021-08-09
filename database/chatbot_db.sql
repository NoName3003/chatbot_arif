-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2021 pada 04.54
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `frequent_asks`
--

CREATE TABLE `frequent_asks` (
  `id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `frequent_asks`
--

INSERT INTO `frequent_asks` (`id`, `question_id`) VALUES
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(5, 15),
(6, 15),
(7, 17),
(8, 15),
(9, 18),
(10, 19),
(11, 20),
(12, 21),
(13, 22),
(14, 23),
(15, 15),
(16, 23),
(17, 23),
(18, 23),
(19, 24),
(20, 25),
(21, 25),
(22, 26),
(23, 26),
(24, 27),
(25, 27),
(26, 27),
(27, 27),
(28, 27),
(29, 29),
(30, 30),
(31, 29),
(32, 31),
(33, 30),
(34, 33),
(35, 33),
(36, 34),
(37, 3),
(38, 1),
(39, 8),
(40, 3),
(41, 8),
(42, 2),
(43, 31),
(44, 1),
(45, 1),
(46, 2),
(47, 31),
(48, 30),
(49, 1),
(50, 2),
(51, 31),
(52, 30),
(53, 2),
(54, 31),
(55, 30),
(56, 2),
(57, 33),
(58, 8),
(59, 8),
(60, 8),
(61, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text,
  `response_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `question`, `response_id`) VALUES
(1, 'bercak nekrotik', 1),
(2, 'bintik hitam', 2),
(3, 'bercak pada daun', 3),
(4, 'tidak membentuk malai', 4),
(5, 'malai tidak terbentuk', 4),
(6, 'malai tidak keluar', 5),
(7, 'batang mudah patah', 6),
(8, 'bercak sempit memanjang', 7),
(9, 'bercak sempit panjang', 7),
(10, 'bercak berbentuk jorong', 8),
(11, 'bercak jorong', 8),
(30, 'pengendalian bb', 27),
(31, 'Busuk Batang', 28),
(33, 'bercak coklat', 30),
(34, 'Pengendalian bc', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `responses`
--

CREATE TABLE `responses` (
  `id` int(30) NOT NULL,
  `response_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `responses`
--

INSERT INTO `responses` (`id`, `response_message`) VALUES
(1, 'Penyakit yang memiliki gejala tersebut yaitu: Busuk Batang'),
(2, 'Penyakit yang memiliki gejala tersebut yaitu: Busuk Batang dan Lapuk Daun'),
(3, 'Penyakit yang memiliki gejala tersebut yaitu: Bercak Coklat, Bercak Coklat Sempit, Blast, Lapuk Daun dan Stackburn'),
(4, 'Penyakit yang memiliki gejala tersebut yaitu: Bercak Coklat dan Kerdil Rumput'),
(5, 'Penyakit yang memiliki gejala tersebut yaitu: Bercak Coklat dan Kerdil Rumput'),
(6, 'Penyakit yang memiliki gejala tersebut yaitu: Bercak Coklat dan Blast'),
(7, 'Penyakit yang memiliki gejala tersebut yaitu: Bercak Coklat Sempit'),
(8, 'Penyakit yang memiliki gejala tersebut yaitu: Blast, Lapuk Daun dan Stackburn'),
(9, '1. Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. \r\n2. Penyakit busuk batang menyebabkan tanaman padi terganggu\r\nselama awal pengisian malai.\r\n3. Penyakit busuk batang padi terdapat di semua negara.\r\npenanam padi di daerah tropis dan beriklim sedang. Penyebab\r\npenyakit menyerang tanaman pada batang terutama pangkal\r\nbatang dekat dengan permukaan tanah. Kerugian yang timbul\r\nterutama disebabkan secara tidak langsung akibat batang\r\nbusuk dan tanaman menjadi mudah rebah.'),
(10, 'Pengendalian Secara Teknis:\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\na. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. \r\nb. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.'),
(11, '1. Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. \r\n2. Penyakit busuk batang menyebabkan tanaman padi terganggu\r\nselama awal pengisian malai.\r\n3. Penyakit busuk batang padi terdapat di semua negara.\r\npenanam padi di daerah tropis dan beriklim sedang. Penyebab\r\npenyakit menyerang tanaman pada batang terutama pangkal\r\nbatang dekat dengan permukaan tanah. Kerugian yang timbul\r\nterutama disebabkan secara tidak langsung akibat batang\r\nbusuk dan tanaman menjadi mudah rebah.\r\n\r\nPengandalian Busuk Batang'),
(12, '1. Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. \r\n2. Penyakit busuk batang menyebabkan tanaman padi terganggu\r\nselama awal pengisian malai.\r\n3. Penyakit busuk batang padi terdapat di semua negara.\r\npenanam padi di daerah tropis dan beriklim sedang. Penyebab\r\npenyakit menyerang tanaman pada batang terutama pangkal\r\nbatang dekat dengan permukaan tanah. Kerugian yang timbul\r\nterutama disebabkan secara tidak langsung akibat batang\r\nbusuk dan tanaman menjadi mudah rebah.\r\n\r\nLanjutkan ke <b>Pengandalian Busuk Batang</b>'),
(13, 'Pengendalian Secara Teknis:\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\na. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. \r\nb. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.'),
(14, 'Pengendalian Secara Teknis:\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\na. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. \r\nb. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.'),
(15, 'Pengendalian Secara Teknis:\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\n<li>Pengendalian Secara Pestisida:\r\na. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. \r\nb. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(16, 'Pengendalian Secara Teknis:\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\n<li>a. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>b. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(17, '<ui>Pengendalian Secara Teknis:</ui>\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\n<li>a. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>b. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(18, '<ul>Pengendalian Secara Teknis:</ul>\r\nA. Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.\r\nB. Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. \r\nC. Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K\r\ncenderung dapat menurunkan infeksi penyakit. \r\nD. Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.\r\n\r\nPengendalian Secara Pestisida:\r\n<li>a. Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>b. Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(19, '<ul>Pengendalian Secara Teknis:</ul>\r\n<li>Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.</li>\r\n<li>Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. </li>\r\n<li>Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K cenderung dapat menurunkan infeksi penyakit. </li>\r\n<li>Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.</li>\r\n\r\n<ul>Pengendalian Secara Pestisida:</ul>\r\n<li>Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(20, '<ul>Pengendalian Secara Teknis:</ul>\r\n<li>Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.</li>\r\n<li>Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. </li>\r\n<li>Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K cenderung dapat menurunkan infeksi penyakit. </li>\r\n<li>Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.</li>\r\n<ul></ul>\r\n<ul>Pengendalian Secara Pestisida:</ul>\r\n<li>Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(21, '<li>Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. </li>\r\n<li>Penyakit busuk batang menyebabkan tanaman padi terganggu selama awal pengisian malai.\r\n<li>Penyakit busuk batang padi terdapat di semua negara penanam padi di daerah tropis dan beriklim sedang. Penyebab penyakit menyerang tanaman pada batang terutama pangkal batang dekat dengan permukaan \r\n anah. Kerugian yang timbul terutama disebabkan secara tidak langsung akibat batang busuk dan tanaman menjadi mudah rebah.</li>\r\n\r\n<ul>Lanjutkan ke <b>Pengandalian Busuk Batang</b></ul>'),
(22, '<ul>Pengendalian Secara Teknis:</ul>\r\n<li>Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.</li>\r\n<li>Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. </li>\r\n<li>Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K cenderung dapat menurunkan infeksi penyakit. </li>\r\n<li>Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.</li>\r\n<ul></ul>\r\n<ul>Pengendalian Secara Pestisida:</ul>\r\n<li>Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(23, '<li>Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. </li>\r\n<li>Penyakit busuk batang menyebabkan tanaman padi terganggu selama awal pengisian malai.\r\n<li>Penyakit busuk batang padi terdapat di semua negara penanam padi di daerah tropis dan beriklim sedang. Penyebab penyakit menyerang tanaman pada batang terutama pangkal batang dekat dengan permukaan \r\n anah. Kerugian yang timbul terutama disebabkan secara tidak langsung akibat batang busuk dan tanaman menjadi mudah rebah.</li>\r\n\r\n<ul>Lanjutkan ke <b>Pengandalian Busuk Batang Teknis</b></ul>'),
(24, '<ul>Pengendalian Secara Teknis:</ul>\r\n<li>Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.</li>\r\n<li>Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. </li>\r\n<li>Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K cenderung dapat menurunkan infeksi penyakit. </li>\r\n<li>Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.</li>\r\n<ul></ul>\r\n<ul>Pengendalian Secara Pestisida:</ul>\r\n<li>Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(25, '<li>Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. </li>\r\n<li>Penyakit busuk batang menyebabkan tanaman padi terganggu selama awal pengisian malai.\r\n<li>Penyakit busuk batang padi terdapat di semua negara penanam padi di daerah tropis dan beriklim sedang. Penyebab penyakit menyerang tanaman pada batang terutama pangkal batang dekat dengan permukaan \r\n anah. Kerugian yang timbul terutama disebabkan secara tidak langsung akibat batang busuk dan tanaman menjadi mudah rebah.</li>\r\n\r\n<ul>Lanjutkan ke <b>Pengandalian Busuk Batang</b></ul>'),
(26, '<li>Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. </li>\r\n<li>Penyakit busuk batang menyebabkan tanaman padi terganggu selama awal pengisian malai.\r\n<li>Penyakit busuk batang padi terdapat di semua negara penanam padi di daerah tropis dan beriklim sedang. Penyebab penyakit menyerang tanaman pada batang terutama pangkal batang dekat dengan permukaan \r\n anah. Kerugian yang timbul terutama disebabkan secara tidak langsung akibat batang busuk dan tanaman menjadi mudah rebah.</li>\r\n\r\n<ul>Lanjutkan ke <b>Pengandalian BB</b></ul>'),
(27, '<ul>Pengendalian Secara Teknis:</ul>\r\n<li>Lakukan sanitasi lahan, pembakaran jerami dan tunggu atau setiap sisa tanaman setelah panen.</li>\r\n<li>Pengeringan lahan. Keringkan petakan dan biarkan tanah sampai retak sebelum diairi lagi. </li>\r\n<li>Gunakan pemupukan berimbang; pupuk nitrogen sesuai anjuran dan pemupukan K cenderung dapat menurunkan infeksi penyakit. </li>\r\n<li>Penggunaan varietas tahan/menanam jenis yang tahan atau sekurang-kurangnya jenis yang tidak mudah rebah.</li>\r\n<ul></ul>\r\n<ul>Pengendalian Secara Pestisida:</ul>\r\n<li>Melakukan pemupukan yang seimbang dan dilakukan penyemprotan tunggul-tunggul padi dengan fungisida. </li>\r\n<li>Gunakan fungisida (bila diperlukan) yang berbahan aktif belerang, benomyl, difenokonazol, ferimzone atau validamycin.</li>'),
(28, '<ul>Deskripsi</ul>\r\n<li>Penyakit ini disebabkan jamur Sclerotium oryzae cattaneo. </li>\r\n<li>Penyakit busuk batang menyebabkan tanaman padi terganggu selama awal pengisian malai.\r\n<li>Penyakit busuk batang padi terdapat di semua negara penanam padi di daerah tropis dan beriklim sedang. Penyebab penyakit menyerang tanaman pada batang terutama pangkal batang dekat dengan permukaan \r\n anah. Kerugian yang timbul terutama disebabkan secara tidak langsung akibat batang busuk dan tanaman menjadi mudah rebah.</li>\r\n<ul></ul>\r\n<ul>Lanjutkan ke <b>Pengandalian BB</b></ul>'),
(29, '<ul>Deskripsi</ul>\r\n<li>Penyakit ini disebabkan oleh jamur Drechslera oryzae.</li>\r\n<li>Penyebaran penyakit ini disebabkan oleh benih yang terinfeksi, angin dan sisa tanaman yang terserang.</li>\r\n<ul></ul>\r\n<ul>'),
(30, '<ul>Deskripsi</ul>\r\n<li>Penyakit ini disebabkan oleh jamur Drechslera oryzae.</li>\r\n<li>Penyebaran penyakit ini disebabkan oleh benih yang terinfeksi, angin dan sisa tanaman yang terserang.</li>\r\n<ul></ul>\r\n<ul>Lanjutkan ke <b>Pengandalian BC</b></ul>'),
(31, '<ul>Pengendalian Secara Teknis</ul>\r\n<li>Memperbaiki hara tanaman, penyakit ini sering terjadi pada tanah yang miskin hara. </li>\r\n<li>Menggunakan varietas tahan. </li>\r\n</li>Menghindari kekurangan air, penyakit cenderung lebih parah pada tanaman kekurangan air. </li>\r\n<li>Perlakuan biji, perendaman dengan air panas (53-54C) 10-12 menit sebelum penanaman. </li>\r\n<li>Sanitasi dan pergiliran tanaman, pindahkan atau bajak sisa tanaman dan jerami padi untuk menurunkan jamur yang menyebabkan infeksi akan datang.</li>\r\n<ul></ul>\r\n<ul>Pengendalian Secara Pestisida</ul>\r\n<li>Penyemprotan, Bahan yang terbukti efektif antara lain edifenfos (hinosan 50 EC), mankozeb (dithane M-45), anti biyotika dan bahan lain nya. </li>\r\n<li>Gunakan fungisida Rabcide 50WP.</li>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Pakar Padi'),
(4, 'intro', 'Selamat Datang, ada yang bisa saya bantu?'),
(6, 'short_name', 'Pakar'),
(10, 'no_result', 'Maaf, saya tidak paham maksud anda!'),
(11, 'logo', 'uploads/1625719440_1619140500_avatar.png'),
(12, 'bot_avatar', 'uploads/bot_avatar.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unanswered`
--

CREATE TABLE `unanswered` (
  `id` int(30) NOT NULL,
  `question` text,
  `no_asks` int(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `unanswered`
--

INSERT INTO `unanswered` (`id`, `question`, `no_asks`) VALUES
(1, 'w', 1),
(2, 'z', 1),
(3, 'asda', 1),
(4, 'pw', 1),
(5, 'qwe', 0),
(6, 'asd', 0),
(7, 'Pengandalian BC', 0),
(8, 'anjing', 0),
(9, 'ss', 0),
(10, 'we', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, '2021-01-20 14:02:37', '2021-05-05 15:55:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `frequent_asks`
--
ALTER TABLE `frequent_asks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unanswered`
--
ALTER TABLE `unanswered`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `frequent_asks`
--
ALTER TABLE `frequent_asks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `unanswered`
--
ALTER TABLE `unanswered`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

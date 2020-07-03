-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 10:24 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Author 1'),
(2, 'Author 2'),
(3, 'Author 3'),
(4, 'Author 4'),
(5, 'Author 5');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `genre_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `count_view` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `image`, `genre_id`, `author_id`, `status_id`, `count_view`, `updated_at`, `created_at`) VALUES
(1, 'Title 100', 'Desciption 1', 'book-1589708507241.jpg', 1, 1, 2, 29, '2020-07-03 17:41:54', '2020-05-17 09:28:11'),
(2, 'Title 2', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707785740.jpeg', 2, 1, 2, 47, '2020-07-03 18:38:45', '2020-05-17 09:29:45'),
(3, 'Title 3', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707802155.jpg', 3, 1, 2, 45, '2020-07-03 20:15:30', '2020-05-17 09:30:02'),
(4, 'Title 4', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589731830168.jpg', 4, 1, 2, 140, '2020-07-03 18:06:40', '2020-05-17 09:30:18'),
(5, 'Title 5', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707834254.jpg', 5, 1, 1, 35, '2020-07-03 19:44:02', '2020-05-17 09:30:34'),
(6, 'Title 6', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707857084.jpg', 6, 1, 2, 36, '2020-07-03 17:54:24', '2020-05-17 09:30:57'),
(8, 'Title 8', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707896801.jpg', 7, 2, 2, 34, '2020-07-03 20:15:22', '2020-05-17 09:31:36'),
(9, 'Title 9', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707942932.jpg', 2, 2, 1, 27, '2020-07-03 20:11:25', '2020-05-17 09:32:22'),
(10, 'Title 10', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707957168.jpg', 3, 2, 1, 27, '2020-06-17 02:59:54', '2020-05-17 09:32:37'),
(11, 'Title 11', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589707981860.gif', 4, 2, 2, 17, '2020-07-03 20:15:54', '2020-05-17 09:33:01'),
(12, 'Title 12', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708014660.jpg', 5, 2, 2, 6, '2020-06-01 02:38:48', '2020-05-17 09:33:34'),
(13, 'Title 13', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708042027.jpg', 6, 2, 2, 20, '2020-07-03 20:15:49', '2020-05-17 09:34:02'),
(14, 'Title 14', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708056385.jpg', 7, 2, 2, 8, '2020-06-01 02:38:10', '2020-05-17 09:34:16'),
(15, 'Title 15', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708070184.jpg', 7, 3, 1, 20, '2020-07-03 20:11:33', '2020-05-17 09:34:30'),
(16, 'Title 16', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.', 'book-1589708084228.jpg', 2, 3, 1, 22, '2020-07-03 20:16:40', '2020-05-17 09:34:44'),
(17, 'Title 17', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708118091.jpg', 3, 3, 1, 2, '2020-05-31 22:51:10', '2020-05-17 09:35:18'),
(18, 'Title 18', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708130675.jpg', 4, 3, 1, 2, '2020-06-01 01:28:52', '2020-05-17 09:35:30'),
(19, 'Title 19', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708155904.jpg', 5, 3, 1, 480, '2020-07-03 20:11:27', '2020-05-17 09:35:55'),
(20, 'Title 20', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708174679.jpg', 6, 3, 1, 0, '2020-05-17 09:36:14', '2020-05-17 09:36:14'),
(21, 'Title 21', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708192512.jpg', 7, 3, 1, 0, '2020-05-17 09:36:32', '2020-05-17 09:36:32'),
(22, 'Title 22', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708207545.jpg', 1, 4, 2, 6, '2020-06-01 02:37:47', '2020-05-17 09:36:47'),
(23, 'Title 23', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708228163.jpg', 2, 4, 1, 9, '2020-07-03 19:09:47', '2020-05-17 09:37:08'),
(24, 'Title 24', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708245173.jpg', 3, 4, 1, 15, '2020-07-03 19:10:00', '2020-05-17 09:37:25'),
(25, 'Title 25', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708267880.jpg', 4, 4, 2, 8, '2020-06-01 02:38:41', '2020-05-17 09:37:47'),
(26, 'Title 26', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708281668.jpg', 5, 4, 1, 1, '2020-06-02 08:06:49', '2020-05-17 09:38:01'),
(27, 'Title 27', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708297575.jpg', 6, 4, 1, 11, '2020-07-03 19:09:51', '2020-05-17 09:38:17'),
(28, 'Title 28', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708312940.jpg', 7, 4, 1, 0, '2020-05-17 09:38:32', '2020-05-17 09:38:32'),
(29, 'Title 29', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708332095.jpg', 7, 5, 1, 0, '2020-05-17 09:38:52', '2020-05-17 09:38:52'),
(30, 'Title 30', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708358609.jpg', 2, 5, 1, 8, '2020-07-03 19:09:34', '2020-05-17 09:39:18'),
(31, 'Title 31', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708381085.jpg', 3, 5, 1, 5, '2020-07-03 20:15:35', '2020-05-17 09:39:41'),
(32, 'Title 32', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708397491.jpg', 4, 5, 1, 7, '2020-07-03 17:43:10', '2020-05-17 09:39:57'),
(33, 'Title 33', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708411741.jpg', 5, 5, 1, 6, '2020-06-17 01:58:35', '2020-05-17 09:40:11'),
(34, 'Title 34', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708442890.jpg', 6, 5, 1, 4, '2020-06-17 02:23:09', '2020-05-17 09:40:42'),
(35, 'Title 35', 'Buku ini menceritakan tentang sebuah keluarga yang memkiliki konflik di masa lalu,konflik yang belum pernah di publikasikan atau di bicarakan sebelumnya ,karena dapat merusak keharmonisan yang ada di dalam keluarga ini. sampai akhirnya waktu yang tidak pernah terduga oleh siapapun tiba, bagai bom waktu yang meledak begitu saja, rahasia yang selama bertahun-tahun di sembunyikan akhirnya terbongkar.\n\nKarena salah satu anak yang tahu tentang masalah ini sudah capek karena memendam rahasia ini selama bertahun-tahun lamanya, di saat semua ini terbongkar semua anak-anak nya pun merasa sangat kaget dan tidak pernah terduga akan ada masalah seperti ini di keluarga nya. \n\nKedua orang tua nya pun menjelaskan bahwa anak bungsunya mempunyai kembaran yang sudah meninggal saat di lahirkan bersama anak yang sekarang di beri nama \' Awan \' dan kembaran nya yang sudah meninggal dan diberi nama \' A \' yang tertulis di batu nisan yang mungil.', 'book-1589708462527.jpg', 7, 5, 1, 12, '2020-07-03 20:11:35', '2020-05-17 09:41:02'),
(37, 'Title 36', 'Description 37', 'book-1589736664356.jpg', 1, 2, 2, 6, '2020-07-03 18:43:33', '2020-05-17 17:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_of_borrow` varchar(255) DEFAULT NULL,
  `date_of_return` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `user_id`, `book_id`, `date_of_borrow`, `date_of_return`, `updated_at`) VALUES
(27, 39, 2, '2020-06-01 08:37:44', NULL, '2020-06-01 01:37:44'),
(28, 39, 4, '2020-06-01 08:37:52', '2020-06-01 09:08:11', '2020-06-01 02:08:11'),
(29, 39, 6, '2020-06-01 08:38:00', '2020-06-01 09:06:21', '2020-06-01 02:06:21'),
(30, 39, 8, '2020-06-01 08:38:06', '2020-06-01 08:45:49', '2020-06-01 01:45:49'),
(31, 27, 1, '2020-06-01 09:33:53', NULL, '2020-06-01 02:33:53'),
(32, 27, 4, '2020-06-01 09:34:04', NULL, '2020-06-01 02:34:04'),
(33, 27, 6, '2020-06-01 09:34:12', '2020-06-01 09:34:45', '2020-06-01 02:34:45'),
(34, 27, 8, '2020-06-01 09:34:22', '2020-06-17 09:45:49', '2020-06-17 02:45:49'),
(35, 27, 10, '2020-06-01 09:34:35', '2020-06-17 09:51:32', '2020-06-17 02:51:32'),
(36, 38, 3, '2020-06-01 09:35:18', '2020-06-02 16:00:37', '2020-06-02 09:00:37'),
(37, 38, 6, '2020-06-01 09:35:24', '2020-06-02 15:53:06', '2020-06-02 08:53:06'),
(38, 38, 14, '2020-06-01 09:35:44', '2020-06-01 09:36:14', '2020-06-01 02:36:14'),
(39, 38, 24, '2020-06-01 09:35:51', '2020-06-02 15:41:21', '2020-06-02 08:41:21'),
(40, 38, 35, '2020-06-01 09:36:03', '2020-06-01 09:36:16', '2020-06-01 02:36:16'),
(41, 41, 11, '2020-06-01 09:37:06', NULL, '2020-06-01 02:37:06'),
(42, 41, 37, '2020-06-01 09:37:12', NULL, '2020-06-01 02:37:12'),
(43, 40, 22, '2020-06-01 09:37:47', NULL, '2020-06-01 02:37:47'),
(44, 40, 14, '2020-06-01 09:38:10', NULL, '2020-06-01 02:38:10'),
(45, 42, 25, '2020-06-01 09:38:41', NULL, '2020-06-01 02:38:41'),
(46, 42, 12, '2020-06-01 09:38:48', NULL, '2020-06-01 02:38:48'),
(47, 38, 9, '2020-06-02 14:38:23', '2020-06-02 14:42:15', '2020-06-02 07:42:15'),
(48, 38, 9, '2020-06-02 14:43:34', '2020-06-02 14:45:19', '2020-06-02 07:45:19'),
(49, 38, 34, '2020-06-02 14:55:05', '2020-06-02 15:06:46', '2020-06-02 08:06:46'),
(50, 38, 26, '2020-06-02 14:56:17', '2020-06-02 15:06:49', '2020-06-02 08:06:49'),
(51, 38, 9, '2020-06-02 15:09:12', '2020-06-02 15:27:26', '2020-06-02 08:27:26'),
(52, 38, 13, '2020-06-02 15:24:50', '2020-06-02 15:39:20', '2020-06-02 08:39:20'),
(53, 38, 9, '2020-06-02 15:27:41', '2020-06-02 15:28:07', '2020-06-02 08:28:07'),
(54, 38, 9, '2020-06-02 15:28:29', '2020-06-02 15:34:58', '2020-06-02 08:34:58'),
(55, 38, 24, '2020-06-02 15:53:50', '2020-06-02 15:56:10', '2020-06-02 08:56:10'),
(56, 38, 23, '2020-06-02 15:55:02', '2020-06-02 15:59:31', '2020-06-02 08:59:31'),
(57, 38, 24, '2020-06-02 16:02:59', '2020-06-02 16:04:55', '2020-06-02 09:04:55'),
(58, 38, 27, '2020-06-02 16:03:46', '2020-06-02 16:04:01', '2020-06-02 09:04:01'),
(59, 38, 24, '2020-06-02 16:07:16', '2020-06-02 16:07:28', '2020-06-02 09:07:28'),
(60, 38, 5, '2020-06-02 16:11:42', '2020-06-02 16:12:42', '2020-06-02 09:12:42'),
(61, 38, 5, '2020-06-02 16:29:05', '2020-06-02 16:29:16', '2020-06-02 09:29:16'),
(62, 38, 3, '2020-06-02 16:30:19', '2020-06-02 16:30:27', '2020-06-02 09:30:27'),
(63, 38, 3, '2020-06-02 16:30:54', '2020-06-02 16:31:01', '2020-06-02 09:31:01'),
(64, 38, 3, '2020-06-02 16:31:34', '2020-06-02 16:31:41', '2020-06-02 09:31:41'),
(65, 38, 3, '2020-06-02 16:32:37', '2020-06-02 16:32:45', '2020-06-02 09:32:45'),
(66, 38, 3, '2020-06-02 16:33:54', '2020-06-02 16:34:01', '2020-06-02 09:34:01'),
(67, 27, 6, '2020-06-17 09:14:22', NULL, '2020-06-17 02:14:22'),
(68, 47, 8, '2020-06-17 10:22:07', '2020-06-17 10:22:44', '2020-06-17 03:22:44'),
(69, 48, 16, '2020-07-03 23:32:41', '2020-07-03 23:40:35', '2020-07-03 16:40:35'),
(70, 48, 30, '2020-07-04 00:06:36', '2020-07-04 02:09:34', '2020-07-03 19:09:34'),
(71, 48, 8, '2020-07-04 00:12:52', '2020-07-04 02:09:38', '2020-07-03 19:09:38'),
(72, 48, 35, '2020-07-04 00:21:26', '2020-07-04 02:09:42', '2020-07-03 19:09:42'),
(73, 48, 23, '2020-07-04 00:44:23', '2020-07-04 00:48:03', '2020-07-03 17:48:03'),
(74, 48, 23, '2020-07-04 00:44:39', '2020-07-04 00:47:33', '2020-07-03 17:47:33'),
(75, 48, 23, '2020-07-04 00:48:55', '2020-07-04 02:09:47', '2020-07-03 19:09:47'),
(76, 48, 27, '2020-07-04 00:54:41', '2020-07-04 01:22:30', '2020-07-03 18:22:30'),
(77, 48, 27, '2020-07-04 01:23:03', '2020-07-04 02:09:51', '2020-07-03 19:09:51'),
(78, 48, 5, '2020-07-04 01:34:59', '2020-07-04 02:09:56', '2020-07-03 19:09:56'),
(79, 48, 24, '2020-07-04 01:38:56', '2020-07-04 02:10:00', '2020-07-03 19:10:00'),
(80, 48, 16, '2020-07-04 01:41:22', '2020-07-04 02:03:59', '2020-07-03 19:03:59'),
(81, 48, 19, '2020-07-04 01:42:40', '2020-07-04 02:01:29', '2020-07-03 19:01:29'),
(82, 48, 9, '2020-07-04 01:43:20', '2020-07-04 02:00:15', '2020-07-03 19:00:15'),
(83, 48, 15, '2020-07-04 01:43:41', '2020-07-04 01:46:35', '2020-07-03 18:46:35'),
(84, 48, 9, '2020-07-04 02:05:32', '2020-07-04 03:11:25', '2020-07-03 20:11:25'),
(85, 48, 19, '2020-07-04 02:48:03', '2020-07-04 03:11:27', '2020-07-03 20:11:27'),
(86, 48, 16, '2020-07-04 03:06:17', '2020-07-04 03:11:30', '2020-07-03 20:11:30'),
(87, 48, 15, '2020-07-04 03:08:44', '2020-07-04 03:11:33', '2020-07-03 20:11:33'),
(88, 48, 35, '2020-07-04 03:11:17', '2020-07-04 03:11:35', '2020-07-03 20:11:35'),
(89, 48, 8, '2020-07-04 03:12:45', NULL, '2020-07-03 20:12:45'),
(90, 48, 3, '2020-07-04 03:15:30', NULL, '2020-07-03 20:15:30'),
(91, 48, 13, '2020-07-04 03:15:49', NULL, '2020-07-03 20:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Genre1'),
(2, 'Genre2'),
(3, 'Genre3'),
(4, 'Genre4'),
(5, 'Genre5'),
(6, 'Genre6'),
(7, 'Genre7');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Superadmin'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `role_id`, `updated_at`, `created_at`) VALUES
(1, 'Superadmin 1', 'superadmin@example.com', '$2b$12$1lBh2xFeKJsciJZfxZd9AONqt8QNN0UX8BaUiLjEbptXXNESsrpW6', 1, '2020-05-17 09:26:24', '2020-05-17 09:23:32'),
(2, 'Admin', 'admin@example.com', '$2b$12$3ozWTiq/jZS8KM6Rrxy5n.R8sWAcrd9gs2mXhd20n7j5gFKu4i/Du', 2, '2020-05-17 09:26:28', '2020-05-17 09:23:51'),
(27, 'user1111', 'user1111@example.com', '$2b$12$bituO7ZGCM9fjf66ZYgsnuuV06Y9s593lCFSCnTbFQavWY/72HU7i', 3, '2020-05-31 08:16:36', '2020-05-31 08:16:36'),
(38, 'User 2222', 'user2222@example.com', '$2b$12$L452cn5eq96pMx4ib6MV1.PGqobD/ndAVxz6BxSzEMNWXLn79kQrS', 3, '2020-05-31 13:47:58', '2020-05-31 13:47:58'),
(39, 'User 3333', 'user3333@example.com', '$2b$12$hZVQt3809Pauts3qn12IcuJtZYJ3VfSZtvz9l7aM1boNXbcBtpyTe', 3, '2020-05-31 13:54:47', '2020-05-31 13:54:47'),
(40, 'User 5555', 'user5555@example.com', '$2b$12$QQB1FCDQizPQiux8DkbnRO6oYsIPhHUB4.kAC8AptoMsTjCH3y9vq', 3, '2020-05-31 15:15:47', '2020-05-31 15:15:47'),
(41, 'user 4444', 'user4444@example.com', '$2b$12$Qkaijd8n/z9fby6OFgGGMuDtsanV5Fy.RDh49.HxhPgxLXOzeyEoC', 3, '2020-05-31 15:31:07', '2020-05-31 15:31:07'),
(42, 'user 6666', 'user6666@example.com', '$2b$12$96qZSYI.hoxBdrdLPzawGOC0qrSUDGMVL6FnYaUicHwENY6/cX5qe', 3, '2020-05-31 15:31:53', '2020-05-31 15:31:53'),
(44, 'User 7777', 'user7777@example.com', '$2b$12$NlllW6pD.N179U1K9hHX6OGvl5DCg554jZ0N2ghB/7xpx7tdlo/92', 3, '2020-06-16 22:08:51', '2020-06-16 22:08:51'),
(45, 'user 8888', 'user8888@example.com', '$2b$12$mO2BRD.0C3.DEzybtDBfPu3oTZOiHyDcHzL3PaC7rGTSiRaYNN2ma', 3, '2020-06-16 22:31:34', '2020-06-16 22:31:34'),
(46, 'user 1010', 'user1010@example.com', '$2b$12$mYuTGmCwO/UsOMG4xbthyeh5gKKmDkpdN9n0t5GM44EoEk7OOErCG', 3, '2020-06-16 23:39:30', '2020-06-16 23:39:30'),
(47, 'user 9000', 'user9000@example.com', '$2b$12$gj9D6ur1dmcRI1u/K4GKwOPnd6jd0koTWE1dYqbKd..8KgVN5yRtq', 3, '2020-06-17 03:14:53', '2020-06-17 03:14:53'),
(48, 'Izulzulfian', 'zul@example.com', '$2b$12$FpwS65b6Yp6em8YP5YYStOMOHnvdT8nyGV3VHEa1zqXYVfX28ArZO', 3, '2020-07-03 16:13:48', '2020-07-03 16:13:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

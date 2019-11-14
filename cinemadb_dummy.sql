-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Nov 2019 pada 18.17
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemadb_dummy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`) VALUES
(1, 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie_tb`
--

CREATE TABLE `movie_tb` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `release_date` date NOT NULL,
  `duration` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `movie_tb`
--

INSERT INTO `movie_tb` (`movie_id`, `title`, `genre`, `release_date`, `duration`) VALUES
(1, 'Avengers', 'Action', '2019-07-01', 180),
(2, 'Mr Bean', 'comedy', '2019-09-01', 120),
(3, 'Dilan 1990', 'romance', '2019-08-01', 110);

-- --------------------------------------------------------

--
-- Struktur dari tabel `showing_tb`
--

CREATE TABLE `showing_tb` (
  `showing_id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `theater_id` int(10) NOT NULL,
  `show_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `showing_tb`
--

INSERT INTO `showing_tb` (`showing_id`, `movie_id`, `theater_id`, `show_time`) VALUES
(1, 1, 1, '2019-07-01 02:00:00'),
(2, 1, 1, '2019-11-14 06:00:00'),
(3, 1, 2, '2019-07-01 02:00:00'),
(4, 2, 2, '2019-09-01 02:00:00'),
(5, 3, 1, '2019-08-01 02:00:00'),
(6, 3, 2, '2019-11-14 02:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `theater_tb`
--

CREATE TABLE `theater_tb` (
  `theater_id` int(11) NOT NULL,
  `theater_name` varchar(100) NOT NULL,
  `number_of_seats` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `theater_tb`
--

INSERT INTO `theater_tb` (`theater_id`, `theater_name`, `number_of_seats`) VALUES
(1, 'theater 1', 100),
(2, 'theater 2', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `movie_tb`
--
ALTER TABLE `movie_tb`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `showing_tb`
--
ALTER TABLE `showing_tb`
  ADD PRIMARY KEY (`showing_id`);

--
-- Indexes for table `theater_tb`
--
ALTER TABLE `theater_tb`
  ADD PRIMARY KEY (`theater_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movie_tb`
--
ALTER TABLE `movie_tb`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `showing_tb`
--
ALTER TABLE `showing_tb`
  MODIFY `showing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `theater_tb`
--
ALTER TABLE `theater_tb`
  MODIFY `theater_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

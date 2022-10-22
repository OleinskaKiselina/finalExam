-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 04:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `arhiva`
--

CREATE TABLE `arhiva` (
  `id_arhive` int(11) NOT NULL,
  `ime_p` varchar(30) NOT NULL,
  `kolicina` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arhiva`
--

INSERT INTO `arhiva` (`id_arhive`, `ime_p`, `kolicina`, `cena`, `datum`) VALUES
(1, 'Sveska A4', 2, 90, '2022-10-11'),
(2, 'Sveska A3', 2, 456, '2022-10-11'),
(3, 'Sveska A3', 2, 456, '2022-10-11'),
(4, 'Golf', 2, 500, '2022-10-11'),
(5, 'Bojanka', 3, 99, '2022-10-11'),
(6, 'Golf', 1, 500, '2022-10-11'),
(7, 'Sveska A3', 3, 456, '2022-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `artikal`
--

CREATE TABLE `artikal` (
  `id` int(3) NOT NULL,
  `naziv` varchar(30) NOT NULL,
  `sifra` varchar(30) NOT NULL,
  `kolicina` int(5) NOT NULL,
  `proizvodjac` varchar(30) NOT NULL,
  `cena` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikal`
--

INSERT INTO `artikal` (`id`, `naziv`, `sifra`, `kolicina`, `proizvodjac`, `cena`) VALUES
(1, 'Sveska A4', '1111', 40, 'Sveska A4', 90),
(3, 'Sveska A3', '1112', 1, 'Sveska A3', 456),
(5, 'Golf', '1122', 2, 'Golf', 500),
(6, 'Bojanka', '7723', 116, 'Bojanka', 22),
(8, 'Ddasds', 'ff12', 222, 'Ddasds', 22);

-- --------------------------------------------------------

--
-- Table structure for table `racun`
--

CREATE TABLE `racun` (
  `id_racuna` int(11) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `racun`
--

INSERT INTO `racun` (`id_racuna`, `datum`) VALUES
(4, '2022-10-10'),
(5, '2022-10-10'),
(6, '2022-10-10'),
(7, '2022-10-11'),
(8, '2022-10-11'),
(9, '2022-10-11'),
(10, '2022-10-11'),
(11, '2022-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `racun_artikal`
--

CREATE TABLE `racun_artikal` (
  `IdPorudzbine` int(11) NOT NULL,
  `id_racuna` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kolicina_prodat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `racun_artikal`
--

INSERT INTO `racun_artikal` (`IdPorudzbine`, `id_racuna`, `id`, `kolicina_prodat`) VALUES
(1, 4, 3, 3),
(2, 4, 5, 2),
(3, 5, 3, 2),
(4, 5, 5, 3),
(5, 6, 3, 3),
(6, 6, 5, 2),
(7, 7, 1, 2),
(8, 7, 3, 2),
(9, 8, 3, 2),
(10, 9, 5, 2),
(11, 10, 6, 3),
(12, 10, 5, 1),
(13, 11, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `radnici`
--

CREATE TABLE `radnici` (
  `id` int(3) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `jmbg` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radnici`
--

INSERT INTO `radnici` (`id`, `ime`, `prezime`, `jmbg`, `username`, `password`) VALUES
(1, 'Stefan', 'Djukic', '11111111', 'da', 'da');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arhiva`
--
ALTER TABLE `arhiva`
  ADD PRIMARY KEY (`id_arhive`);

--
-- Indexes for table `artikal`
--
ALTER TABLE `artikal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sifra` (`sifra`);

--
-- Indexes for table `racun`
--
ALTER TABLE `racun`
  ADD PRIMARY KEY (`id_racuna`);

--
-- Indexes for table `racun_artikal`
--
ALTER TABLE `racun_artikal`
  ADD PRIMARY KEY (`IdPorudzbine`);

--
-- Indexes for table `radnici`
--
ALTER TABLE `radnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `jmbg` (`jmbg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arhiva`
--
ALTER TABLE `arhiva`
  MODIFY `id_arhive` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artikal`
--
ALTER TABLE `artikal`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `racun`
--
ALTER TABLE `racun`
  MODIFY `id_racuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `racun_artikal`
--
ALTER TABLE `racun_artikal`
  MODIFY `IdPorudzbine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `radnici`
--
ALTER TABLE `radnici`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 06:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `integratif`
--


--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `jenis_sumbangan`
--

CREATE TABLE `jenis_sumbangan` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_sumbangan`
--

INSERT INTO `jenis_sumbangan` (`id`, `name`) VALUES
(1, 'Masker'),
(2, 'Hand Sanitizer'),
(3, 'Vitaman'),
(4, 'Obat'),
(5, 'Uang'),
(6, 'Sarung Tangan'),
(7, 'Baju Bekas');

-- --------------------------------------------------------
-- Table structure for table `sumbangan`
--

CREATE TABLE `sumbangan` (
  `id` int(50) NOT NULL,
  `userid` int(50) NOT NULL,
  `jenis` int(10) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumbangan`
--

INSERT INTO `sumbangan` (`id`, `userid`, `jenis`, `jumlah`) VALUES
(22, 21, 1, 1),
(23, 22, 2, 1),
(24, 23, 3, 2),
(25, 24, 4, 5),
(26, 25, 5, 9000),
(27, 26, 6, 10),
(28, 26, 7, 2);


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`) VALUES
(1, 'Mirsyadali', 0),
(2, 'ali', 0),
(3, 'robi', 0),
(4, 'kamarudin', 0),
(5, 'Darmis', 0),
(6, 'Darwin', 0);


--
-- Indexes for dumped tables
--

-- Indexes for table `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  ADD PRIMARY KEY (`id`);

--

-- Indexes for table `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis` (`jenis`),
  ADD KEY `userid` (`userid`);
--


-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--




-- AUTO_INCREMENT for table `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--

-- AUTO_INCREMENT for table `sumbangan`
--
ALTER TABLE `sumbangan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--

-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD CONSTRAINT `sumbangan_ibfk_1` FOREIGN KEY (`jenis`) REFERENCES `jenis_sumbangan` (`id`),
  ADD CONSTRAINT `sumbangan_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;


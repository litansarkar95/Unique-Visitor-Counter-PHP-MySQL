-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 04:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `themindspeaks`
--
-- --------------------------------------------------------
--
-- Table structure for table `unique_visitors`
-


CREATE TABLE `unique_visitors` (
  `date` date NOT NULL,
  `ip` text DEFAULT NULL,
  `views` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_visitors`
--
INSERT INTO `unique_visitors` (`date`, `ip`, `views`) VALUES
('2021-02-04', '::1', 1),
('2021-02-12', '3::1', 2),
('2021-02-13', '1::1', 2),
('2021-02-14', '::1', 1),
('2021-02-15', '::1', 1);

--
-- Indexes for dumped tables
--


--
-- Indexes for table `unique_visitors`
--
ALTER TABLE `unique_visitors`
  ADD PRIMARY KEY (`date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

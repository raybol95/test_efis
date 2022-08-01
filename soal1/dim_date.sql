-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 11:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
-- Table structure for table `dim_date`
--

CREATE TABLE `dim_date` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `quater_of_year` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `is_weekend` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_date`
--

INSERT INTO `dim_date` (`id`, `date`, `month`, `quater_of_year`, `year`, `is_weekend`) VALUES
(1, '2020-12-04', 12, 4, 2020, 0),
(2, '2020-08-16', 8, 3, 2020, 1),
(3, '2020-02-25', 2, 1, 2020, 0),
(4, '2020-07-13', 7, 3, 2020, 0),
(5, '2020-10-09', 10, 4, 2020, 0),
(6, '2021-01-23', 1, 1, 2021, 1),
(7, '2020-09-10', 9, 3, 2020, 0),
(8, '2020-03-02', 3, 1, 2020, 0),
(9, '2020-06-01', 6, 2, 2020, 0),
(10, '2020-11-16', 11, 4, 2020, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_date`
--
ALTER TABLE `dim_date`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_date`
--
ALTER TABLE `dim_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

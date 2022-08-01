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
-- Table structure for table `fact_order_accumulating`
--

CREATE TABLE `fact_order_accumulating` (
  `order_date_id` int(11) DEFAULT NULL,
  `invoice_date_id` int(11) DEFAULT NULL,
  `payment_date_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `payment_number` varchar(255) DEFAULT NULL,
  `total_order_quantity` int(11) DEFAULT NULL,
  `total_order_usd_amount` decimal(10,0) DEFAULT NULL,
  `order_to_invoice_lag_days` int(11) DEFAULT NULL,
  `invoice_to_payment_lag_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fact_order_accumulating`
--

INSERT INTO `fact_order_accumulating` (`order_date_id`, `invoice_date_id`, `payment_date_id`, `customer_id`, `order_number`, `invoice_number`, `payment_number`, `total_order_quantity`, `total_order_usd_amount`, `order_to_invoice_lag_days`, `invoice_to_payment_lag_days`) VALUES
(1, 1, 1, 3924, 'ORD-134', 'INV-587', 'PYM-761', 3, '4', 9, 8898),
(8, 8, 8, 3923, 'ORD-223', 'INV-525', 'PYM-777', 5, '6', 3, 3),
(8, 8, 8, 3923, 'ORD-223', 'INV-525', 'PYM-777', 10, '176', 3, 3),
(8, 8, 8, 3923, 'ORD-223', 'INV-525', 'PYM-777', 3, '32', 3, 3),
(7, 7, 7, 3923, 'ORD-206', 'INV-557', 'PYM-792', 9, '11', 7, 88),
(5, 5, 5, 3924, 'ORD-201', 'INV-581', 'PYM-802', 7, '74', 4, 10),
(6, 6, 6, 3923, 'ORD-205', 'INV-647', 'PYM-803', 7, '123', 78, 1),
(2, 2, 2, 3924, 'ORD-142', 'INV-642', 'PYM-817', 9, '11', 6, 95),
(4, 4, 4, 3925, 'ORD-181', 'INV-549', NULL, 9, '95', 6, NULL),
(3, 3, 3, 3924, 'ORD-170', 'INV-554', NULL, 5, '88', 84, NULL),
(3, 3, 3, 3924, 'ORD-170', 'INV-554', NULL, 10, '12', 84, NULL),
(9, 9, 9, 3925, 'ORD-225', NULL, NULL, 4, '42', NULL, NULL),
(10, 10, 10, 3924, 'ORD-240', NULL, NULL, 4, '70', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 23, 2021 at 05:16 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `carregistration`
--

DROP TABLE IF EXISTS `carregistration`;
CREATE TABLE IF NOT EXISTS `carregistration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_no` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carregistration`
--

INSERT INTO `carregistration` (`id`, `car_no`, `make`, `model`, `available`) VALUES
(20, 'C003', 'Honda', 'Swift', 'Yes'),
(19, 'C002', 'Honda', 'civic', 'Yes'),
(18, 'C001', 'Honda', 'Grace', 'Yes'),
(21, 'C004', 'Honda', 'Fit', 'Yes'),
(22, 'C005', 'Toyota', 'Allion', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `name`, `address`, `mobile`) VALUES
(14, 'A003', 'usitha', 'Katugastota', 76666666),
(13, 'A002', 'Ruchira', 'Hedeniya', 766650271),
(12, 'A001', 'isuri', 'katugastota', 76666666),
(15, 'A004', 'ravidu', 'fbvhfdbf', 765555);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
CREATE TABLE IF NOT EXISTS `rental` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

DROP TABLE IF EXISTS `returncar`;
CREATE TABLE IF NOT EXISTS `returncar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elapsed` int NOT NULL,
  `fine` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `carid`, `custid`, `return_date`, `elapsed`, `fine`) VALUES
(19, 'C001', 'A001', '2021-08-20', 3, 300),
(18, 'C001', 'A003', '2021-08-20', 3, 300),
(17, 'C002', 'A001', '2021-08-20', 2, 200),
(15, 'C001', 'A001', '2021-08-21', 1, 100),
(16, 'C001', 'A001', '2021-08-21', 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Userid` varchar(255) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Userid`, `Firstname`, `LastName`, `Username`, `Password`) VALUES
('US001', 'usitha', 'kodi', 'ukodi', '123'),
('US002', 'Ruchira', 'Pemasiri', 'ruchira', '123'),
('US003', 'ravidu', 'dfdf', 'ravidu', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

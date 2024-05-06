-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 11:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `user_type`, `picture`) VALUES
(2, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '11th@gmail.com', 'admin', 'profile.jpg'),
(3, 'rdu1', '3bb5f9f037bafd994e930bce19d2aff6aa7f68d449838714da16e3f5e1cd7a91', '11thhokage@gmail.com', 'user', 'userprofile1.jpg'),
(4, 'frontend1', 'c515aab4b06d70c7613a27e2782623c1ae025b557c291d72e29b6055bbca5b3f', 'hokage@gmail.com', 'user', 'userprofile2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `deliver_received`
--

CREATE TABLE `deliver_received` (
  `post_trans_number` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `date_received` date NOT NULL,
  `vendor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `deliver_received`
--

INSERT INTO `deliver_received` (`post_trans_number`, `item_name`, `item_qty`, `expiry_date`, `date_received`, `vendor_name`) VALUES
(9, 'saridon250mg', 10, '2026-10-06', '2023-10-06', 'vendor1'),
(10, 'saridon250mg', 10, '2026-10-06', '2023-10-06', 'vendor1'),
(11, 'saridon250mg', 10, '2026-10-07', '2023-10-06', 'vendor1'),
(12, 'saridon250mg', 10, '2026-10-06', '2023-10-06', 'vendor2'),
(13, 'erythromycin500mg', 10, '2026-10-06', '2023-10-06', 'vendor3'),
(14, 'biogesic500mg', 10, '2026-10-06', '2023-10-06', 'vendor2');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `code` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `unit_type` varchar(50) NOT NULL,
  `unit_qty` int(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `vendor_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`code`, `item_name`, `price`, `unit_type`, `unit_qty`, `picture`, `vendor_name`) VALUES
(3, 'saridon', 7, 'mg', 250, 'saridon_pic_2mb.jpg', 'vendor1'),
(4, 'erythromycin', 9.5, 'mg', 500, 'erythromycin_pic_2mb.jpg', 'vendor2'),
(5, 'biogesic', 6, 'mg', 500, 'biogesic_pic_.jpg', 'vendor3');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouse_code` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `vendor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_code`, `item_name`, `item_qty`, `expiry_date`, `vendor_name`) VALUES
(11, 'saridon250mg', 20, '2026-10-06', 'vendor1'),
(12, 'saridon250mg', 10, '2026-10-07', 'vendor1'),
(13, 'saridon250mg', 10, '2026-10-06', 'vendor2'),
(14, 'erythromycin500mg', 10, '2026-10-06', 'vendor3'),
(15, 'biogesic500mg', 10, '2026-10-06', 'vendor2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliver_received`
--
ALTER TABLE `deliver_received`
  ADD PRIMARY KEY (`post_trans_number`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouse_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deliver_received`
--
ALTER TABLE `deliver_received`
  MODIFY `post_trans_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouse_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

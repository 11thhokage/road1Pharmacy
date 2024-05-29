-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 12:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `role_as` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `role_as`, `picture`) VALUES
(2, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '11th@gmail.com', 1, 'profile.jpg'),
(3, 'rdu1', '3bb5f9f037bafd994e930bce19d2aff6aa7f68d449838714da16e3f5e1cd7a91', '11thhokage@gmail.com', 3, 'userprofile1.jpg'),
(4, 'frontend1', 'c515aab4b06d70c7613a27e2782623c1ae025b557c291d72e29b6055bbca5b3f', 'hokage@gmail.com', 2, 'userprofile2.jpg'),
(5, 'frontend2', '20e9fc406ce47e90c133a530e6cc6edbc69f35c4d8c7001b5104f2e529452808', 'frontend2@gmail.com', 2, 'frontend2.jpg'),
(6, 'rdu2', '60f07aef1e7f335fc1b27297e146d2fcd5f82ae89ae3354445017b847258d2af', 'rdu2@gmail.com', 3, '2mb_nar2.jpg'),
(7, 'rdu3', '2f0ac71a35c22baab1eb777ee595b9521db9ea4b68649de7d83d95143168b5f2', 'rdu3@gmail.com', 3, 'rdu3.jpg'),
(8, 'frontend3', '3f570764b8ca90c8d61adfbd3a8289ea0254a00705fc2d400ab5b49c475c8f22', 'frontend3@gmail.com', 2, 'frontend3.jpg'),
(9, 'testfr2', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'robinandrew.zoup@gmail.com', 2, 'testfr.jpg'),
(10, 'testrdu5', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'paulbenedicts482@gmail.com', 3, 'testrdu5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `delivered_items`
--

CREATE TABLE `delivered_items` (
  `id` int(11) NOT NULL,
  `last_id` int(11) NOT NULL,
  `receipt_trans_number` varchar(256) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `unit_price` double NOT NULL,
  `item_qty` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivered_items`
--

INSERT INTO `delivered_items` (`id`, `last_id`, `receipt_trans_number`, `item_name`, `unit_price`, `item_qty`, `expiry_date`, `subtotal`) VALUES
(5, 104, '1234qaz', 'saridon 250mg', 4, 10, '2026-03-09', 40),
(6, 104, '1234qaz', 'erythromycin 500mg', 8, 10, '2025-09-09', 80),
(7, 105, 'QWE123', 'saridon 250mg', 4, 5, '2026-10-03', 20),
(9, 107, 'paul123', 'biogesic 500mg', 4, 10, '2026-03-11', 40),
(10, 108, 'laup321', 'Loratadine 120mg', 5, 5, '2026-03-11', 25),
(11, 109, 'ben123', 'Mefenamic Acid 250mg', 6, 10, '2026-03-11', 60),
(12, 11, 'ben123', 'Arseflora 25ml', 8, 10, '2026-03-11', 80),
(13, 110, 'lloyd123', 'Neozep 250mg', 4, 5, '2026-03-11', 20),
(14, 111, 'fgh1235', 'Drenex 30mg', 25, 20, '2026-03-12', 500),
(15, 14, 'fgh1235', 'Drenex 30mg', 25, 10, '2026-03-13', 250),
(16, 112, 'mnt-124', 'saridon 250mg', 5, 5, '2026-04-08', 25),
(17, 16, 'mnt-124', 'biogesic 500mg', 4, 10, '2026-04-08', 40),
(18, 113, 'zsef123', 'Loratadine 120mg', 5, 10, '2026-04-19', 50),
(19, 114, 'jki456', 'biogesic 500mg', 4, 10, '2026-04-20', 40),
(20, 115, 'tite', 'ACETYLCYSTEINE  200MG', 7.64, 1, '2026-05-14', 7.64),
(21, 116, 'hotdog', 'ACETYLCYSTEINE 200MG', 7.64, 1, '2027-02-15', 7.64),
(22, 117, 'twst123', 'ACETYLCYSTEINE 200MG', 7.64, 5, '2026-05-15', 38.2),
(23, 22, 'twst123', 'ACYCLOVIR 100MG', 9.82, 3, '2026-05-15', 29.46),
(24, 23, 'twst123', 'ACYCLOVIR 400MG', 5.67, 4, '2026-05-15', 22.68),
(30, 123, 'Found from Warehouse2024-05-23-19:42:12', 'ACYCLOVIR 100MG', 0, 2, '2026-05-23', 0),
(31, 124, 'Found from Warehouse 2024-05-23-20:14:29', 'ACETYLCYSTEINE 200MG', 0, 1, '2026-05-23', 0),
(32, 125, 'Subracted from warehouse 2024-05-23-22:22:52', 'ACETYLCYSTEINE 200MG', 0, 2, '2026-05-15', 0),
(33, 126, 'Subracted from warehouse 2024-05-23-22:23:07', 'ACETYLCYSTEINE 200MG', 0, 1, '2026-05-15', 0),
(34, 127, 'Subtract from warehouse 2024-05-23-22:33:20', 'ACETYLCYSTEINE 200MG', 0, 3, '2026-05-15', 0),
(35, 128, 'Found from Warehouse 2024-05-23-22:45:21', 'ACETYLCYSTEINE 200MG', 0, 1, '2026-05-15', 0),
(36, 129, 'Subtract from warehouse 2024-05-23-22:46:10', 'ACETYLCYSTEINE 200MG', 0, 1, '2026-05-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deliver_received`
--

CREATE TABLE `deliver_received` (
  `post_trans_number` int(11) NOT NULL,
  `receipt_trans_number` varchar(256) NOT NULL,
  `date_received` date NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `received_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `deliver_received`
--

INSERT INTO `deliver_received` (`post_trans_number`, `receipt_trans_number`, `date_received`, `vendor_name`, `total`, `received_by`) VALUES
(104, '1234qaz', '2024-03-09', 'vendor1', 120, 'rdu1'),
(105, 'QWE123', '2024-09-03', 'vendor1', 20, 'rdu1'),
(107, 'paul123', '2024-03-11', 'vendor1', 40, 'rdu1'),
(108, 'laup321', '0000-00-00', 'Vendor 6', 25, 'rdu1'),
(109, 'ben123', '2024-11-03', 'vendor1', 140, 'rdu1'),
(110, 'lloyd123', '2024-03-11', 'vendor1', 20, 'rdu1'),
(111, 'fgh1235', '2024-03-12', 'vendor1', 750, 'rdu1'),
(112, 'mnt-124', '2024-04-08', 'vendor1', 65, 'rdu1'),
(113, 'zsef123', '2024-04-19', 'vendor3', 50, 'rdu1'),
(114, 'jki456', '2024-04-20', 'vendor2', 40, 'rdu1'),
(115, 'tite', '0000-00-00', 'applied pharmaceutical dnt/ beta drug', 7.64, 'rdu1'),
(116, 'hotdog', '2024-05-14', 'applied pharmaceutical dnt/ beta drug', 7.64, 'rdu1'),
(117, 'twst123', '2024-05-15', 'applied pharmaceutical dnt/ beta drug', 90.34, 'rdu1'),
(123, 'Found from Warehouse2024-05-23-19:42:12', '2024-05-23', 'applied pharmaceutical dnt/ beta drug', 0, 'Admin'),
(124, 'Found from Warehouse 2024-05-23-20:14:29', '2024-05-23', 'applied pharmaceutical dnt/ beta drug', 0, 'Admin'),
(125, 'Subracted from warehouse 2024-05-23-22:22:52', '2024-05-23', '', 0, 'Admin'),
(126, 'Subracted from warehouse 2024-05-23-22:23:07', '2024-05-23', '', 0, 'Admin'),
(127, 'Subtract from warehouse 2024-05-23-22:33:20', '2024-05-23', '', 0, 'Admin'),
(128, 'Found from Warehouse 2024-05-23-22:45:21', '2024-05-23', 'applied pharmaceutical dnt/ beta drug', 0, 'Admin'),
(129, 'Subtract from warehouse 2024-05-23-22:46:10', '2024-05-23', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `greet_response`
--

CREATE TABLE `greet_response` (
  `id` int(11) NOT NULL,
  `response` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `greet_response`
--

INSERT INTO `greet_response` (`id`, `response`) VALUES
(1, 'Hi! Need a new medicine?'),
(2, 'Hello! Looking for alternatives?'),
(3, 'Greetings! Need a different med?'),
(4, 'Welcome! Which medicine to replace?'),
(5, 'Hey! Need a new med?');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_response`
--

CREATE TABLE `instruction_response` (
  `id` int(11) NOT NULL,
  `instructions` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruction_response`
--

INSERT INTO `instruction_response` (`id`, `instructions`) VALUES
(1, 'For alternatives, type: \'alternative\' followed by the medicine name and size. To check availability, type: \'check\' with the medicine name and size.'),
(2, 'Type \'alternative\' with the medicine name and size for options. Use \'check\' with the medicine name and size to see availability.'),
(3, 'Need alternatives? Type \'alternative\' plus medicine name and size. For availability, type \'check\' with medicine name and size.');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `code` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `what_for` varchar(256) NOT NULL,
  `unit_price` double NOT NULL,
  `mark_up` double NOT NULL,
  `price` double NOT NULL,
  `type` varchar(256) NOT NULL,
  `classification` varchar(256) NOT NULL,
  `vendor_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`code`, `item_name`, `what_for`, `unit_price`, `mark_up`, `price`, `type`, `classification`, `vendor_name`) VALUES
(114, 'ACETYLCYSTEINE 200MG', 'Mucolytic, to break down mucus', 7.64, 135.6, 18, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(115, 'ACYCLOVIR 100MG', 'TBA', 9.82, 52.75, 15, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(116, 'ACYCLOVIR 400MG', 'TBA', 5.67, 111.64, 12, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(117, 'ALLOPURINOL 100MG', 'TBA', 0.72, 177.78, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(118, 'ALLOPURINOL 300MG', 'TBA', 1.39, 187.77, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(119, 'AMBROXOL 30MG', 'TBA', 0.55, 263.64, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(120, 'AMBROXOL 75MG', 'TBA', 3.8, 373.68, 18, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(121, 'AMIODARONE 200MG', 'TBA', 6.39, 228.64, 21, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(122, 'AMLODIPINE 10MG', 'TBA', 0.62, 565.16, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(123, 'ATENOLOL 50MG', 'TBA', 1.22, 227.87, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(124, 'ATENOLOL 100MG', 'TBA', 1.99, 201.51, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(125, 'ATORVASTATIN 10MG', 'TBA', 0.77, 679.22, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(126, 'ATORVASTATIN 20MG', 'TBA', 0.98, 1124.49, 12, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(127, 'ATORVASTATIN 40MG', 'TBA', 2.93, 514.33, 18, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(128, 'AZITHROMYCIN 500MG', 'TBA', 11, 445.45, 60, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(129, 'BETAHISTINE 8MG', 'TBA', 2.55, 429.41, 14, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(130, 'BETAHISTINE 16MG', 'TBA', 3.15, 487.3, 19, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(131, 'BETAHISTINE 24MG', 'TBA', 9.45, 196.3, 28, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(132, 'BUTAMIRATE 50MG', 'TBA', 5.1, 153.9, 13, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(133, 'CANDESARTAN 8MG', 'TBA', 3.61, 232.41, 12, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(134, 'CAPTOPRIL 25MG', 'TBA', 0.37, 575.68, 3, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(135, 'CARBAMAZEPINE 200MG', 'TBA', 1.9, 321.05, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(136, 'CARBOCISTEINE 500MG', 'TBA', 0.97, 312.37, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(137, 'CARVIDELOL 6.25MG', 'TBA', 2.91, 140.55, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(138, 'CARVIDELOL 25MG', 'TBA', 4.12, 94.17, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(139, 'CEFACLOR 500MG', 'TBA', 6.22, 462.7, 35, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(140, 'CEFALEXIN 500MG', 'TBA', 2.33, 200.43, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(141, 'CEFIXIME 200MG', 'TBA', 4.5, 455.56, 25, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(142, 'CEFIXIME 400MG', 'TBA', 12.5, 156, 32, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(143, 'CEFUROXIME 500MG', 'TBA', 8.49, 347.59, 38, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(144, 'CELECOXIB 200MG', 'TBA', 1.93, 780.83, 17, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(145, 'CELECOXIB 400MG', 'TBA', 3.95, 836.71, 37, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(146, 'CETIRIZINE 30MG', 'TBA', 0.3, 900, 3, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(147, 'CHLORAMPHENICOL 500MG', 'TBA', 2.51, 178.88, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(148, 'CILOSTAZOL 100MG', 'TBA', 8.19, 339.56, 36, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(149, 'CIPROFLOXACIN 500MG', 'TBA', 1.72, 306.98, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(150, 'CLINDAMYCIN 300MG', 'TBA', 3.41, 163.93, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(151, 'CLONIDINE 75MCG', 'TBA', 3.85, 289.61, 15, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(152, 'CLONIDINE 150MCG', 'TBA', 3.72, 410.75, 19, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(153, 'CLOPIDOGREL 75MG', 'TBA', 0.95, 794.74, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(154, 'CO-AMOXICLAV 625MG', 'TBA', 9, 200, 27, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(155, 'COLCHICINE 500MG', 'TBA', 2.75, 9.09, 3, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(156, 'DICECLOFENAC 100MG', 'TBA', 0.65, 976.92, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(157, 'DIGOXINE 250MG', 'TBA', 2.9, 72.41, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(158, 'DIPHENHYDRAMINE 25MG', 'TBA', 0.58, 417.24, 3, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(159, 'DIPHENHYDRAMINE 50MG', 'TBA', 0.65, 669.23, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(160, 'DOXYCYLINE 100MG', 'TBA', 0.11, 4445.45, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(161, 'ERYTHROMYCINE 500MG', 'TBA', 4.5, 100, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(162, 'ESOMEPRAZOLE 40MG', 'TBA', 4.28, 530.84, 27, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(163, 'ETHAMBUTOL 400MG', 'TBA', 2.46, 143.9, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(164, 'ETORICOXIB 90MG', 'TBA', 6.93, 361.76, 32, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(165, 'ETORICOXIB 120MG', 'TBA', 8, 375, 38, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(166, 'FEBOXUSTAT 40MG', 'TBA', 8.57, 226.72, 28, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(167, 'FUROSEMIDE 20MG', 'TBA', 0.37, 170.27, 1, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(168, 'GABAPENTIN 300MG', 'TBA', 3.42, 1303.51, 48, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(169, 'GLIBENCLAMIDE 5MG', 'TBA', 0.23, 552.17, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(170, 'GLICLAZIDE 30MG', 'TBA', 2, 175, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(171, 'GLICLAZIDE 60MG', 'TBA', 4.5, 166.67, 12, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(172, 'GLIMEPERIDE 2MG', 'TBA', 0.91, 559.34, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(173, 'GLIMEPERIDE 4MG', 'TBA', 3.27, 511.06, 20, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(174, 'IBUPROFEN 200MG', 'TBA', 0.11, 1718.18, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(175, 'IBUPROFEN 400MG', 'TBA', 0.59, 577.97, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(176, 'IRBESARTAN 150MG', 'TBA', 3.52, 326.14, 15, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(177, 'IRBESARTAN 300MG', 'TBA', 7.29, 133.2, 17, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(178, 'KETOPROFEN 50MG', 'TBA', 1.23, 306.5, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(179, 'KETOROLAC 10MG', 'TBA', 6.5, 176.92, 18, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(180, 'LAGUNDI 300MG', 'TBA', 0.91, 339.56, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(181, 'LAGUNDI 600MG', 'TBA', 1.83, 337.16, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(182, 'LANZOPRAZOLE 30MG', 'TBA', 18.04, 55.21, 28, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(183, 'LEVITIRACETAM 500MG', 'TBA', 6.45, 55.21, 10, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(184, 'LEVOFLOXACIN 500MG', 'TBA', 3.6, 705.56, 29, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(185, 'LEVOTHYROXINE 50MCG', 'TBA', 1.72, 161.63, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(186, 'LEVOTHYROXINE 100MCG', 'TBA', 4.64, 72.41, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(187, 'LOPERAMIDE 2MG', 'TBA', 0.48, 525, 3, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(188, 'LORATADINE 10MG', 'TBA', 1.04, 573.08, 7, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(189, 'LOSARTAN 50MG', 'TBA', 0.6, 733.33, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(190, 'LOSARTAN 100MG', 'TBA', 1.5, 433.33, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(191, 'METFORMIN 500MG', 'TBA', 0.65, 207.69, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(192, 'METHYLDOPA 250MG', 'TBA', 3.85, 107.79, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(193, 'METHYLPREDNISOLONE 16MG', 'TBA', 6.95, 259.71, 25, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(194, 'METOPROLOL 50MG', 'TBA', 0.55, 263.64, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(195, 'METRONIDAZOLE 500MG', 'TBA', 0.85, 488.24, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(196, 'MONTELUKAST 5MG', 'TBA', 3.52, 169.89, 10, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(197, 'NAPROXEN SODIUM 500MG', 'TBA', 4.2, 90.48, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(198, 'NEBIVOLOL 5MG', 'TBA', 6.77, 461.3, 38, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(199, 'NITROFURANTOIN 100MG', 'TBA', 1.85, 170.27, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(200, 'OFLOXACIN 200MG', 'TBA', 1.8, 344.44, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(201, 'OFLOXACIN 400MG', 'TBA', 2.92, 413.7, 15, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(202, 'OMEPRAZOLE 40MG', 'TBA', 3.45, 247.83, 12, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(203, 'PANTOPRAZOLE 40MG', 'TBA', 3.57, 247.83, 13, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(204, 'PREDNISONE 5MG', 'TBA', 0.54, 176.24, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(205, 'PREDNISONE 20MG', 'TBA', 2.35, 112.77, 5, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(206, 'PREGABALIN 75MG', 'TBA', 2.98, 705.37, 24, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(207, 'REBAMIPIDE 100MG', 'TBA', 14.84, 115.63, 32, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(208, 'RIFAMPICIN 450MG', 'TBA', 7.5, 20, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(209, 'ROSUVASTATIN 10MG', 'TBA', 4.06, 343.35, 18, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(210, 'ROSUVASTATIN 20MG', 'TBA', 2.95, 747.46, 25, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(211, 'SALBUTAMOL 2MG', 'TBA', 0.17, 488.24, 1, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(212, 'SALBUTAMOL 4MG', 'TBA', 0.29, 417.24, 2, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(213, 'SIMVASTATIN 20MG', 'TBA', 0.76, 689.47, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(214, 'SODIUM BICARBONATE 650MG', 'TBA', 0.9, 288.89, 4, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(215, 'SPIRONOLACTONE 25MG', 'TBA', 3.19, 150.78, 8, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(216, 'TELMISARTAN 40MG', 'TBA', 1.93, 366.32, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(217, 'TELMISARTAN 80MG', 'TBA', 4.83, 210.56, 15, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(218, 'TRAMADOL 50MG', 'TBA', 1.02, 488.24, 6, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(219, 'TRANEXAMIC 500MG', 'TBA', 3.82, 240.31, 13, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(220, 'TRIMETAZIDINE 35MG', 'TBA', 2.77, 224.91, 9, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(221, 'URSEODEOXYCHOLIC ACID 250MG', 'TBA', 17.43, 123.75, 39, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(222, 'URSEODEOXYCHOLIC ACID 300MG', 'TBA', 18.43, 127.89, 42, 'Generic', 'medicine', 'applied pharmaceutical dnt/ beta drug'),
(223, 'GREEN CROSS REGULAR 70% 75ML', '', 22.05, 17.91, 26, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(224, 'GREEN CROSS REGULAR 70% 150ML', '', 32.45, 20.18, 39, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(225, 'GREEN CROSS REGULAR 70% 250ML', '', 46.46, 18.38, 55, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(226, 'GREEN CROSS REGULAR 70% 500ML', '', 82.51, 18.77, 98, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(227, 'GREEN CROSS W/ MOISTURIZER 70% 75ML', '', 18.67, 37.21, 26, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(228, 'GREEN CROSS W/ MOISTURIZER 70% 150ML', '', 32.98, 18.25, 39, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(229, 'GREEN CROSS W/ MOISTURIZER 70% 250ML', '', 48.61, 19.32, 58, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(230, 'GREEN CROSS W/ MOISTURIZER 70% 300ML', '', 80.04, 18.69, 95, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(231, 'GREEN CROSS W/ MOISTURIZER 70% 500ML', '', 84.36, 17.35, 99, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(232, 'GREEN CROSS ETHYL ALCOHOL 70% 75ML', '', 21.42, 21.38, 26, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(233, 'GREEN CROSS ETHYL ALCOHOL 70% 150ML', '', 33.79, 18.38, 40, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(234, 'GREEN CROSS ETHYL ALCOHOL 70% 250ML', '', 49.13, 18.05, 58, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(235, 'GREEN CROSS ETHYL ALCOHOL 70% 300ML', '', 80.04, 18.69, 95, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(236, 'GREEN CROSS ETHYL ALCOHOL 70% 500ML', '', 85.6, 15.65, 99, '', 'alcohol', 'RIGHT PRICE CORPORATION'),
(237, 'ACYCLOVIR CREAM 5G', '', 95, 268.42, 350, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(238, 'CALAMINE+ZINC OXIDE 3.5G', '', 34.56, 30.21, 45, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(239, 'CLOBETASOL CREAM 10G', '', 39.5, 264.56, 144, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(240, 'DICLOFENAC GEL 30G', '', 113.4, 120.46, 250, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(241, 'ERYTHROMYCIN 5G', '', 116.84, 62.62, 190, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(242, 'MUPIROCIN OINTMENT 5G', '', 46.2, 257.14, 165, 'Generic', 'creams and ointment', 'applied pharmaceutical dnt/ beta drug'),
(243, 'ALGESIA TABLET ', 'ANTI-INFLAMMATORY', 0, 0, 55, 'Branded', 'medicine', 'UNITED'),
(244, 'ABBOCATH GAUGE #18 ', '', 0, 0, 65, '', 'medical supp', 'Pamilijhan'),
(245, 'UNICARE (ADULT) M X 10 ', '', 0, 0, 175, '', 'diaper', 'allpcm/Suysing'),
(246, 'UNICARE (ADULT) L X 10 ', '', 0, 0, 198, '', 'diaper', 'allpcm/Suysing'),
(247, 'UNICARE PANTS (ADULT) M X 10 ', '', 0, 0, 195, '', 'diaper', 'allpcm/Suysing'),
(248, 'UNICARE PANTS (ADULT) L X 10 ', '', 0, 0, 227, '', 'diaper', 'allpcm/Suysing'),
(249, 'UNICARE PANTS (ADULT) XL X 10 ', '', 0, 0, 270, '', 'diaper', 'allpcm/Suysing'),
(253, 'CARE ADULT M X 1 ', '', 0, 0, 20, '', 'diaper', 'allpcm/Suysing'),
(254, 'CARE ADULT L X 1 ', '', 0, 0, 25, '', 'diaper', 'allpcm/Suysing'),
(255, 'CARE ADULT M X 10 ', '', 0, 0, 190, '', 'diaper', 'allpcm/Suysing'),
(256, 'CARE ADULT L X 10 ', '', 0, 0, 190, '', 'diaper', 'allpcm/Suysing'),
(257, 'GRAND ADULT ', '', 0, 0, 225, '', 'diaper', 'allpcm/Suysing'),
(258, 'GRAND ADULT L X 8 ', '', 0, 0, 225, '', 'diaper', 'allpcm/Suysing'),
(259, 'EQ PANTS M X 10 ', '', 0, 0, 78, '', 'diaper', 'allpcm/Suysing'),
(260, 'EQ PANTS L X 10 ', '', 0, 0, 88, '', 'diaper', 'allpcm/Suysing'),
(261, 'EQ PANTS XL X 10 ', '', 0, 0, 94, '', 'diaper', 'allpcm/Suysing'),
(262, 'EQ PANTS XXL X 10 ', '', 0, 0, 99, '', 'diaper', 'allpcm/Suysing'),
(263, 'EQ PANTS M X 24 ', '', 0, 0, 178, '', 'diaper', 'allpcm/Suysing'),
(264, 'EQ PANTS L X 24 ', '', 0, 0, 198, '', 'diaper', 'allpcm/Suysing'),
(265, 'EQ PANTS XL X 24 ', '', 0, 0, 215, '', 'diaper', 'allpcm/Suysing'),
(266, 'EQ PANTS XXL X 24 ', '', 0, 0, 225, '', 'diaper', 'allpcm/Suysing'),
(267, 'EQ PANTS XXXL X 24 ', '', 0, 0, 285, '', 'diaper', 'allpcm/Suysing'),
(268, 'EQ PANTS M X 40 ', '', 0, 0, 295, '', 'diaper', 'allpcm/Suysing'),
(269, 'EQ PANTS L X 40 ', '', 0, 0, 328, '', 'diaper', 'allpcm/Suysing'),
(270, 'EQ PANTS XL X 40 ', '', 0, 0, 358, '', 'diaper', 'allpcm/Suysing'),
(271, 'EQ PANTS XXL X 40 ', '', 0, 0, 380, '', 'diaper', 'allpcm/Suysing'),
(272, 'EQ PANTS XXXL X 40 ', '', 0, 0, 470, '', 'diaper', 'allpcm/Suysing'),
(273, 'EQ DRY NB X 4 ', '', 0, 0, 34, '', 'diaper', 'allpcm/Suysing'),
(274, 'EQ DRY S X 4 ', '', 0, 0, 36, '', 'diaper', 'allpcm/Suysing'),
(275, 'EQ DRY M X 4 ', '', 0, 0, 42, '', 'diaper', 'allpcm/Suysing'),
(276, 'EQ DRY L X 4 ', '', 0, 0, 44, '', 'diaper', 'allpcm/Suysing'),
(277, 'EQ DRY XL X 4 ', '', 0, 0, 52, '', 'diaper', 'allpcm/Suysing'),
(278, 'EQ DRY XXL X 3 ', '', 0, 0, 46, '', 'diaper', 'allpcm/Suysing'),
(279, 'EQ DRY NB X 22 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(280, 'EQ DRY S X 20 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(281, 'EQ DRY M X 18 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(282, 'EQ DRY L X 16 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(283, 'EQ DRY XL X 14 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(284, 'EQ DRY XXL X 12 ', '', 0, 0, 168, '', 'diaper', 'allpcm/Suysing'),
(285, 'EQ DRY NB X 44 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(286, 'EQ DRY S X 40 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(287, 'EQ DRY M X 36 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(288, 'EQ DRY L X 32 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(289, 'EQ DRY XL X 48 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(290, 'EQ DRY XXL X 24 ', '', 0, 0, 330, '', 'diaper', 'allpcm/Suysing'),
(291, 'EQ DRY M X 54 ', '', 0, 0, 580, '', 'diaper', 'allpcm/Suysing'),
(292, 'EQ DRY M X 84 ', '', 0, 0, 735, '', 'diaper', 'allpcm/Suysing'),
(293, 'EQ DRY L X 48 ', '', 0, 0, 480, '', 'diaper', 'allpcm/Suysing'),
(294, 'EQ DRY L X 72 ', '', 0, 0, 710, '', 'diaper', 'allpcm/Suysing'),
(295, 'EQ PLUS S X 4 ', '', 0, 0, 30, '', 'diaper', 'allpcm/Suysing'),
(296, 'EQ PLUS L X 4 ', '', 0, 0, 33, '', 'diaper', 'allpcm/Suysing'),
(297, 'EQ PLUS XL X 4 ', '', 0, 0, 42, '', 'diaper', 'allpcm/Suysing'),
(298, 'EQ PLUS S X 12 ', '', 0, 0, 85, '', 'diaper', 'allpcm/Suysing'),
(299, 'EQ PLUS M X 12 ', '', 0, 0, 95, '', 'diaper', 'allpcm/Suysing'),
(300, 'EQ PLUS L X 12 ', '', 0, 0, 110, '', 'diaper', 'allpcm/Suysing'),
(301, 'EQ PLUS XL X 12 ', '', 0, 0, 125, '', 'diaper', 'allpcm/Suysing'),
(302, 'EQ PLUS XXL X 12 ', '', 0, 0, 148, '', 'diaper', 'allpcm/Suysing'),
(303, 'EQ PLUS S X 36 ', '', 0, 0, 238, '', 'diaper', 'allpcm/Suysing'),
(304, 'EQ PLUS M X 34 ', '', 0, 0, 238, '', 'diaper', 'allpcm/Suysing'),
(305, 'EQ PLUS L X 28 ', '', 0, 0, 238, '', 'diaper', 'allpcm/Suysing'),
(306, 'EQ PLUS XL X 24 ', '', 0, 0, 238, '', 'diaper', 'allpcm/Suysing'),
(307, 'EQ PLUS XXL X 20 ', '', 0, 0, 238, '', 'diaper', 'allpcm/Suysing'),
(308, 'PEDIASURE (VAN/CHCO) 400G', '', 0, 0, 630, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(309, 'PEDIASURE (VAN/CHCO) 900G', '', 0, 0, 1360, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(310, 'PEDIASURE (VAN/CHCO) 1.8KG', '', 0, 0, 2540, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(311, 'PEDIASURE (VAN/CHCO) 3+ 400G', '', 0, 0, 630, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(312, 'PEDIASURE (VAN/CHCO) 3+ 900G', '', 0, 0, 1415, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(313, 'PEDIASURE (VAN/CHCO) 3+ 1.8KG', '', 0, 0, 2370, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(314, 'ENSURE GOLD VANILLA 400G', '', 0, 0, 925, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(315, 'ENSURE GOLD VANILLA 850G', '', 0, 0, 1795, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(316, 'ENSURE GOLD VANILLA 1.6KG', '', 0, 0, 3310, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(317, 'ENSURE GOLD CHOCO 400G', '', 0, 0, 935, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(318, 'ENSURE GOLD CHOCO 850G', '', 0, 0, 2050, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(319, 'ANLENE GOLD 300G', '', 0, 0, 235, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(320, 'ANMUM (VAN/CHCO) 180G', '', 0, 0, 205, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(321, 'ANMUM (VAN/CHCO) 375G', '', 0, 0, 415, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(322, 'ANMUM (VAN/CHCO) 800G', '', 0, 0, 830, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(323, 'ANMUM (VAN/CHCO) 900G', '', 0, 0, 530, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(324, 'HAPPY PANTS M X 4 ', '', 0, 0, 35, '', 'diaper', 'allpcm/Suysing'),
(325, 'HAPPY PANTS L X 4 ', '', 0, 0, 38, '', 'diaper', 'allpcm/Suysing'),
(326, 'HAPPY PANTS XL X 4 ', '', 0, 0, 42, '', 'diaper', 'allpcm/Suysing'),
(327, 'HAPPY PANTS XXL X 4 ', '', 0, 0, 47, '', 'diaper', 'allpcm/Suysing'),
(328, 'HAPPY PANTS XXXL X 4 ', '', 0, 0, 52, '', 'diaper', 'allpcm/Suysing'),
(329, 'HAPPY PANTS M X 12 ', '', 0, 0, 96, '', 'diaper', 'allpcm/Suysing'),
(330, 'HAPPY PANTS L X 12 ', '', 0, 0, 105, '', 'diaper', 'allpcm/Suysing'),
(331, 'HAPPY PANTS XL X 12 ', '', 0, 0, 120, '', 'diaper', 'allpcm/Suysing'),
(332, 'HAPPY PANTS XXL X 12 ', '', 0, 0, 125, '', 'diaper', 'allpcm/Suysing'),
(333, 'HAPPY PANTS XXXL X 12 ', '', 0, 0, 1145, '', 'diaper', 'allpcm/Suysing'),
(334, 'HAPPY PANTS ', '', 0, 0, 185, '', 'diaper', 'allpcm/Suysing'),
(335, 'HAPPY PANTS L X 24 ', '', 0, 0, 205, '', 'diaper', 'allpcm/Suysing'),
(336, 'HAPPY PANTS XL X 24 ', '', 0, 0, 225, '', 'diaper', 'allpcm/Suysing'),
(337, 'HAPPY PANTS XXL X 24 ', '', 0, 0, 240, '', 'diaper', 'allpcm/Suysing'),
(338, 'HAPPY PANTS XXXL X 24 ', '', 0, 0, 285, '', 'diaper', 'allpcm/Suysing'),
(339, 'HAPPY PANTS M X 48 ', '', 0, 0, 355, '', 'diaper', 'allpcm/Suysing'),
(340, 'HAPPY PANTS L X 48 ', '', 0, 0, 395, '', 'diaper', 'allpcm/Suysing'),
(341, 'HAPPY PANTS XL X 48 ', '', 0, 0, 435, '', 'diaper', 'allpcm/Suysing'),
(342, 'HAPPY PANTS XXL X 48 ', '', 0, 0, 455, '', 'diaper', 'allpcm/Suysing'),
(343, 'HAPPY PANTS XXXL X 48 ', '', 0, 0, 545, '', 'diaper', 'allpcm/Suysing'),
(344, 'HAPPY DRY PANTS M X 4 ', '', 0, 0, 26, '', 'diaper', 'allpcm/Suysing'),
(345, 'HAPPY DRY PANTS L X 4 ', '', 0, 0, 29, '', 'diaper', 'allpcm/Suysing'),
(346, 'HAPPY DRY PANTS XL X 4 ', '', 0, 0, 33, '', 'diaper', 'allpcm/Suysing'),
(347, 'HAPPY DRY PANTS S X 12 ', '', 0, 0, 75, '', 'diaper', 'allpcm/Suysing'),
(348, 'HAPPY DRY PANTS M X 12 ', '', 0, 0, 86, '', 'diaper', 'allpcm/Suysing'),
(349, 'HAPPY DRY PANTS L X 12 ', '', 0, 0, 98, '', 'diaper', 'allpcm/Suysing'),
(350, 'HAPPY DRY PANTS XL X 12 ', '', 0, 0, 106, '', 'diaper', 'allpcm/Suysing'),
(351, 'HAPPY DRY PANTS S X 30 ', '', 0, 0, 165, '', 'diaper', 'allpcm/Suysing'),
(352, 'HAPPY DRY PANTS M X 30 ', '', 0, 0, 195, '', 'diaper', 'allpcm/Suysing'),
(353, 'HAPPY DRY PANTS L X 30 ', '', 0, 0, 225, '', 'diaper', 'allpcm/Suysing'),
(354, 'HAPPY DRY PANTS XL X 30 ', '', 0, 0, 240, '', 'diaper', 'allpcm/Suysing'),
(355, 'ACTISERVE/ 1 TO 1 MARKETING 400G', '', 0, 0, 830, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(356, 'SIMILAC 1 GPLUS (0-6) 900G', '', 0, 0, 1775, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(357, 'SIMILAC 1 GPLUS (0-6) 1.8KG', '', 0, 0, 2810, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(358, 'SIMILAC 2 GPLUS (6-12) 400G', '', 0, 0, 775, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(359, 'SIMILAC 2 GPLUS (6-12) 900G', '', 0, 0, 1620, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(360, 'SIMILAC 2 GPLUS (6-12) 1.8KG', '', 0, 0, 2760, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(361, 'SIMILAC 3 GPLUS (1-3) 400G', '', 0, 0, 570, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(362, 'SIMILAC 3 GPLUS (1-3) 900G', '', 0, 0, 1235, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(363, 'SIMILAC 3 GPLUS (1-3) 1.8KG', '', 0, 0, 2190, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(364, 'SIMILAC 4 GPLUS (3+) 460G', '', 0, 0, 460, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(365, 'SIMILAC 4 GPLUS (3+) 900G', '', 0, 0, 1100, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(366, 'SIMILAC 4 GPLUS (3+) 1.8KG', '', 0, 0, 1930, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(367, 'SIMILAC TUMMICARE (0-12) 800G', '', 0, 0, 1670, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(368, 'SIMILAC TUMMICARE (0-12) 1.6KG', '', 0, 0, 2950, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(369, 'SIMILAC TUMMICARE (1-3) 800G', '', 0, 0, 1450, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(370, 'SIMILAC TUMMICARE (1-3) 1.6KG', '', 0, 0, 2610, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(371, 'ENFAMIL A+ 1 (0-6) 400G', '', 0, 0, 665, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(372, 'ENFAMIL A+ 1 (0-6) 900G', '', 0, 0, 1735, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(373, 'ENFAMIL A+ 1 (0-6) 1.2KG', '', 0, 0, 2110, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(374, 'ENFAMIL A+ 1 (0-6) 1.8KG', '', 0, 0, 2955, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(375, 'ENFAMIL A+ 1 LF (0-6) 900G', '', 0, 0, 2140, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(376, 'ENFAMIL A+ 2 (6-12) 350G', '', 0, 0, 705, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(377, 'ENFAMIL A+ 2 (6-12) 900G', '', 0, 0, 1695, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(378, 'ENFAMIL A+ 2 (6-12) 1.2KG', '', 0, 0, 2195, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(379, 'ENFAMIL A+ 2 (6-12) 1.8KG', '', 0, 0, 2960, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(380, 'ENFAMIL A+ 2 LF (6-12) 900G', '', 0, 0, 1860, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(381, 'ENFAGROW A+ 3 (1-3) 350G', '', 0, 0, 530, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(382, 'ENFAGROW A+ 3 (1-3) 1.2KG', '', 0, 0, 1710, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(383, 'ENFAGROW A+ 3 (1-3) 1.8KG', '', 0, 0, 2350, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(384, 'ENFAGROW A+ 3 (1-3) 2.4KG', '', 0, 0, 2940, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(385, 'ENFAMIL A+ 3 LF (1-3) 900G', '', 0, 0, 1575, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(386, 'ENFAMIL A+ 3 LF (1-3) 1.8KG', '', 0, 0, 2870, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(387, 'ENFAGROW A+ 4 (3+) 350G', '', 0, 0, 425, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(388, 'ENFAGROW A+ 4 (3+) 1.2KG', '', 0, 0, 1470, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(389, 'ENFAGROW A+ 4 (3+) 1.8KG', '', 0, 0, 1980, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(390, 'ENFAGROW A+ 4 (3+) 2.4KG', '', 0, 0, 2510, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(391, 'LACTUM (0-6) 150G', '', 0, 0, 116, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(392, 'LACTUM (0-6) 350G', '', 0, 0, 260, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(393, 'LACTUM (0-6) 700G', '', 0, 0, 505, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(394, 'LACTUM (0-6) 1.2KG', '', 0, 0, 840, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(395, 'LACTUM (0-6) 2KG', '', 0, 0, 1250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(396, 'LACTUM (6-12) 150G', '', 0, 0, 112, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(397, 'LACTUM (6-12) 350G', '', 0, 0, 250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(398, 'LACTUM (6-12) 700G', '', 0, 0, 495, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(399, 'LACTUM (6-12) 1.2KG', '', 0, 0, 770, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(400, 'LACTUM (6-12) 2KG', '', 0, 0, 1210, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(401, 'LACTUM (1-3) MILK 150G', '', 0, 0, 116, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(402, 'LACTUM (1-3) MILK 1.2KG', '', 0, 0, 250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(403, 'LACTUM (1-3) MILK 350G', '', 0, 0, 250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(404, 'LACTUM (1-3) MILK 1.6KG', '', 0, 0, 990, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(405, 'LACTUM (1-3) MILK 2KG', '', 0, 0, 1195, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(406, 'LACTUM (1-3) MILK 2.4KG', '', 0, 0, 1335, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(407, 'LACTUM (1-3) CHCO 350G', '', 0, 0, 299, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(408, 'LACTUM (1-3) CHCO 1.2KG', '', 0, 0, 850, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(409, 'LACTUM (3+) MILK 350G', '', 0, 0, 245, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(410, 'LACTUM (3+) MILK 900G', '', 0, 0, 595, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(411, 'LACTUM (3+) MILK 1.2KG', '', 0, 0, 790, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(412, 'LACTUM (3+) MILK 1.6KG', '', 0, 0, 965, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(413, 'LACTUM (3+) MILK 2KG', '', 0, 0, 1200, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(414, 'LACTUM (3+) CHCO 350G', '', 0, 0, 290, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(415, 'LACTUM (3+) CHCO 1.2KG', '', 0, 0, 840, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(416, 'BONNA 150G', '', 0, 0, 108, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(417, 'BONAMIL 150G', '', 0, 0, 108, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(418, 'BONNA 350G', '', 0, 0, 260, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(419, 'BONAMIL 350G', '', 0, 0, 242, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(420, 'BONNA 1.2KG', '', 0, 0, 835, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(421, 'BONAMIL 1.2KG', '', 0, 0, 778, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(422, 'BONNA 2KG', '', 0, 0, 1260, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(423, 'BONAMIL 2.4KG', '', 0, 0, 1440, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(424, 'BONAKID (1-3) 150G', '', 0, 0, 238, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(425, 'BONAKID (1-3) 800G', '', 0, 0, 455, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(426, 'BONAKID (1-3) 1.2KG', '', 0, 0, 778, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(427, 'BONAKID (1-3) 2KG', '', 0, 0, 1195, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(428, 'BONAKID (1-3) 2.4KG', '', 0, 0, 1275, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(429, 'BONAKID (3+) 350G', '', 0, 0, 238, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(430, 'BONAKID (3+) 1.2KG', '', 0, 0, 765, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(431, 'BONAKID (3+) 1.6KG', '', 0, 0, 975, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(432, 'BONAKID (3+) 2.4KG', '', 0, 0, 1275, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(433, 'NAN-OPTIPRO 1 400G', '', 0, 0, 740, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(434, 'NAN-OPTIPRO 1 900G', '', 0, 0, 1570, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(435, 'NAN-OPTIPRO 1 1.4KG', '', 0, 0, 2040, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(436, 'NAN-OPTIPRO 1 2.4KG', '', 0, 0, 3240, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(438, 'NAN-OPTIPRO 2 900G', '', 0, 0, 1450, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(439, 'NAN-OPTIPRO 2 1.4KG', '', 0, 0, 1940, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(440, 'NAN-OPTIPRO 2 2.4KG', '', 0, 0, 3100, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(441, 'NAN-OPTIPRO 3 900G', '', 0, 0, 1100, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(442, 'NAN-OPTIPRO 3 1.4KG', '', 0, 0, 1545, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(443, 'NAN-OPTIPRO 3 1.8KG', '', 0, 0, 1995, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(444, 'NAN-OPTIPRO 3 2.4KG', '', 0, 0, 2560, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(445, 'NAN-OPTIPRO 4 700G', '', 0, 0, 770, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(446, 'NAN-OPTIPRO 4 1.3KG', '', 0, 0, 1380, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(447, 'NAN-OPTIPRO 4 2.4KG', '', 0, 0, 2240, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(448, 'NAN-INFINIPRO 1 400G', '', 0, 0, 765, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(449, 'NAN-INFINIPRO 1 800G', '', 0, 0, 1585, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(450, 'NAN-INFINIPRO 1 1.4KG', '', 0, 0, 2510, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(451, 'NAN-INFINIPRO 1 2.1KG', '', 0, 0, 3390, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(452, 'NAN-INFINIPRO 2 800G', '', 0, 0, 1495, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(453, 'NAN-INFINIPRO 2 1.4KG', '', 0, 0, 2380, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(454, 'NAN-INFINIPRO 2 2.1KG', '', 0, 0, 3295, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(455, 'NAN-INFINIPRO 3 800G', '', 0, 0, 1235, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(456, 'NAN-INFINIPRO 3 1.4KG', '', 0, 0, 1990, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(457, 'NAN-INFINIPRO 3 2.1KG', '', 0, 0, 2745, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(458, 'NAN-INFINIPRO 4 800G', '', 0, 0, 1085, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(459, 'NAN AL-110 800G', '', 0, 0, 880, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(460, 'BIRCHTREE FRTD MLK 300G', '', 0, 0, 99, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(461, 'BIRCHTREE FRTD MLK 700G', '', 0, 0, 235, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(462, 'BIRCHTREE FRTD MLK 1.0KG', '', 0, 0, 310, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(463, 'BIRCHTREE FRTD MLK 2.0KG', '', 0, 0, 592, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(464, 'BIRCHTREE FRTD CHCO 1KG', '', 0, 0, 296, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(465, 'BIRCHTREE FULLCRM 300G', '', 0, 0, 147, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(466, 'BIRCHTREE FULLCRM 700G', '', 0, 0, 334, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(467, 'ALASKA MILK 300G', '', 0, 0, 102, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(468, 'ALASKA MILK 450G', '', 0, 0, 150, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(469, 'ALASKA MILK 700G', '', 0, 0, 228, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(470, 'ALASKA MILK 900G', '', 0, 0, 285, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(471, 'ALASKA MILK 1.6KG', '', 0, 0, 475, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(472, 'ALASKA MILK 2KG', '', 0, 0, 585, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(473, 'ALASKA CHOCO 300', '', 0, 0, 105, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(474, 'ALASKA CHOCO 900G', '', 0, 0, 285, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(475, 'NIDO FORTIFIED 370G', '', 0, 0, 210, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(476, 'NIDO FORTIFIED 700G', '', 0, 0, 395, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(477, 'NIDO FORTIFIED 1.2KG', '', 0, 0, 640, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(478, 'NIDO FORTIFIED 1.6KG', '', 0, 0, 835, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(479, 'NIDO FORTIFIED 2KG', '', 0, 0, 985, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(480, 'NIDO JR. (1-3) 160G', '', 0, 0, 97, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(481, 'NIDO JR. (1-3) 420G', '', 0, 0, 280, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(482, 'NIDO JR. (1-3) 750G', '', 0, 0, 530, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(483, 'NIDO JR. (1-3) 1.2KG', '', 0, 0, 810, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(484, 'NIDO JR. (1-3) 1.6KG', '', 0, 0, 985, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(485, 'NIDO JR. (1-3) 2KG', '', 0, 0, 1225, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(486, 'NIDO JR. (1-3) 2.4KG', '', 0, 0, 1370, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(487, 'NIDO 3+ 370G', '', 0, 0, 250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(488, 'NIDO 3+ 700G', '', 0, 0, 515, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(489, 'NIDO 3+ 1.2KG', '', 0, 0, 810, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(490, 'NIDO 3+ 1.6KG', '', 0, 0, 985, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(491, 'NIDO 3+ 2KG', '', 0, 0, 1225, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(492, 'NIDO 3+ 2.4KG', '', 0, 0, 1370, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(493, 'NIDO 5+ 370G', '', 0, 0, 250, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(494, 'NIDO 5+ 1.2KG', '', 0, 0, 750, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(495, 'NIDO 5+ 2KG', '', 0, 0, 1170, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(496, 'NESTOGEN 1 135G', '', 0, 0, 78, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(497, 'NESTOGEN 1 340G', '', 0, 0, 195, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(498, 'NESTOGEN 1 700G', '', 0, 0, 410, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(499, 'NESTOGEN 1 1.3KG', '', 0, 0, 750, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(500, 'NESTOGEN 1 2KG', '', 0, 0, 1110, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(501, 'NESTOGEN 2 135G', '', 0, 0, 78, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(502, 'NESTOGEN 2 340G', '', 0, 0, 195, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(503, 'NESTOGEN 2 700G', '', 0, 0, 405, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(504, 'NESTOGEN 2 1.3G', '', 0, 0, 740, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(505, 'NESTOGEN 2 2KG', '', 0, 0, 1100, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(506, 'NESTOGEN 3 135G', '', 0, 0, 78, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(507, 'NESTOGEN 3 340G', '', 0, 0, 188, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(508, 'NESTOGEN 3 700G', '', 0, 0, 395, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(509, 'NESTOGEN 3 1.3KG', '', 0, 0, 698, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(510, 'NESTOGEN 3 2KG', '', 0, 0, 1025, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(511, 'NESTOGEN 4 700G', '', 0, 0, 395, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(512, 'NESTOGEN 4 2KG', '', 0, 0, 1025, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(513, 'NESTOGEN CLASSIC 135G', '', 0, 0, 57, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(514, 'NESTOGEN L-LACTOSE (0-6) 340G', '', 0, 0, 299, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(515, 'BB FORTIFIED 750G', '', 0, 0, 270, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(516, 'BB FORTIFIED 900G', '', 0, 0, 330, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(517, 'BB FORTIFIED 1.2KG', '', 0, 0, 430, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(518, 'BB FORTIFIED 1.6KG', '', 0, 0, 530, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(519, 'BB FORTIFIED 2KG', '', 0, 0, 700, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(520, 'BB FORTIFIED 2.4KG', '', 0, 0, 825, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(521, 'BB CHOCO 33G', '', 0, 0, 11, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(522, 'BB CHOCO 300G', '', 0, 0, 120, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(523, 'BB CHOCO 900G', '', 0, 0, 330, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(524, 'BB JR (1-3) 150G', '', 0, 0, 65, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(525, 'BB JR (1-3) 420G', '', 0, 0, 192, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(526, 'BB JR (1-3) 750G', '', 0, 0, 370, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(527, 'BB JR (1-3) 1.2KG', '', 0, 0, 630, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(528, 'BB JR (1-3) 1.6KG', '', 0, 0, 835, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(529, 'BB JR (1-3) 2KG', '', 0, 0, 930, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(530, 'BB JR (1-3) 2.4KG', '', 0, 0, 1130, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(532, 'BB ADULT PLUS 33G', '', 0, 0, 18, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(533, 'BB ADULT PLUS 180G', '', 0, 0, 100, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(534, 'BB ADULT PLUS 300G', '', 0, 0, 152, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(535, 'BB ADULT PLUS 600G', '', 0, 0, 295, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(536, 'BB ADULT PLUS 1KG', '', 0, 0, 486, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(538, 'BB ADULT PLUS 1.6KG', '', 0, 0, 598, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(539, 'BB ADULT PLUS 1.2KG', '', 0, 0, 565, '', 'milk', 'actiserve/ 1 to 1 marketing'),
(540, 'BETET ', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(541, 'BIODERM OINTMENT 15G ', '', 0, 0, 38, '', 'medical supp', 'pamilijhan'),
(542, 'BIODERM OINTMENT 5G', '', 0, 0, 26, '', 'medical supp', 'pamilijhan'),
(543, 'BL TUBE  ', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(544, 'BUTTERFLY GAUGE (23) ', '', 0, 0, 28, '', 'medical supp', 'pamilijhan'),
(545, 'BUTTERFLY GAUGE (25) ', '', 0, 0, 28, '', 'medical supp', 'pamilijhan'),
(546, 'CORD CLAMP BNB ', '', 0, 0, 7, '', 'medical supp', 'pamilijhan'),
(547, 'CEBU DE MACHO (APOLLO) 10G', '', 0, 0, 34, '', 'medical supp', 'pamilijhan'),
(548, 'CEBU DE MACHO (JAR) 15G', '', 0, 0, 58, '', 'medical supp', 'pamilijhan'),
(549, 'CORD CLAMP SRP ', '', 0, 0, 8, '', 'medical supp', 'pamilijhan'),
(550, 'EFFICASCENT OINTMENT 10G', '', 0, 0, 28, '', 'medical supp', 'pamilijhan'),
(551, 'ELASTIC BANDAGE (2X5) ', '', 0, 0, 50, '', 'medical supp', 'pamilijhan'),
(552, 'ELASTIC BANDAGE (3X5) ', '', 0, 0, 62, '', 'medical supp', 'pamilijhan'),
(553, 'ELASTIC BANDAGE (4X5) ', '', 0, 0, 68, '', 'medical supp', 'pamilijhan'),
(554, 'ELASTIC BANDAGE (6X5) ', '', 0, 0, 95, '', 'medical supp', 'pamilijhan'),
(555, 'FOLEY CATHETER FR 12 ', '', 0, 0, 25, '', 'medical supp', 'pamilijhan'),
(556, 'GAUZE PAD 2X2 ', '', 0, 0, 2, '', 'medical supp', 'pamilijhan'),
(557, 'GAUZE PAD 3X3 ', '', 0, 0, 3, '', 'medical supp', 'pamilijhan'),
(558, 'GAUZE PAD 4X4 ', '', 0, 0, 5, '', 'medical supp', 'pamilijhan'),
(559, 'KATIALIS LARGE ', '', 0, 0, 65, '', 'medical supp', 'pamilijhan'),
(560, 'KATIALIS MEDIUM ', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(561, 'KATIALIS SMALL ', '', 0, 0, 30, '', 'medical supp', 'pamilijhan'),
(562, 'KATINKO MEDIUM ', '', 0, 0, 85, '', 'medical supp', 'pamilijhan'),
(563, 'KATINKO OIL ROLL-ON 10ML', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(564, 'LABORATORY SURGICAL CAP ', '', 0, 0, 10, '', 'medical supp', 'pamilijhan'),
(565, 'LADY PILLS ', '', 0, 0, 48, '', 'medical supp', 'pamilijhan'),
(566, 'LUBRICATING JELLY 150G', '', 0, 0, 250, '', 'medical supp', 'pamilijhan'),
(567, 'LUBRICATING JELLY (SACHET) 3G', '', 0, 0, 12, '', 'medical supp', 'pamilijhan'),
(568, 'MICROSET & MACROSET (PEDIA & ADULT) BNB ', '', 0, 0, 38, '', 'medical supp', 'pamilijhan'),
(569, 'MICROSET & MACROSET (PEDIA & ADULT) SRP ', '', 0, 0, 48, '', 'medical supp', 'pamilijhan'),
(570, 'MEDICINE DROPPER ', '', 0, 0, 10, '', 'medical supp', 'pamilijhan'),
(571, 'MEDICINE MEASURING CUP ', '', 0, 0, 10, '', 'medical supp', 'pamilijhan'),
(572, 'OXYGEN CANNULA  W/ MASK (PEDIA) ', '', 0, 0, 78, '', 'medical supp', 'pamilijhan'),
(573, 'OXYGEN CANNULA W/O MASK (PEDIA) ', '', 0, 0, 68, '', 'medical supp', 'pamilijhan'),
(574, 'PREGNANCY TEST ', '', 0, 0, 50, '', 'medical supp', 'pamilijhan'),
(575, 'SANITARY BALM 20G', '', 0, 0, 35, '', 'medical supp', 'pamilijhan'),
(576, 'SPECIMEN CONTAINER - URINE (NON-STERILE) ', '', 0, 0, 15, '', 'medical supp', 'pamilijhan'),
(577, 'SPECIMEN CONTAINER (STERILE) - URINE/STOOL ', '', 0, 0, 20, '', 'medical supp', 'pamilijhan'),
(578, 'SURGICAL  GLOVES (6, 7, 7.5, 8) ', '', 0, 0, 22, '', 'medical supp', 'pamilijhan'),
(579, 'SURGICAL CAP  (DISPOSABLE) ', '', 0, 0, 10, '', 'medical supp', 'pamilijhan'),
(580, 'SURGICAL TAPE (PARTNERS) 1 INCH ', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(581, 'SURGICAL TAPE 1 INCH ', '', 0, 0, 58, '', 'medical supp', 'pamilijhan'),
(582, 'SURGICAL TAPE 1 INCH (3M) ', '', 0, 0, 65, '', 'medical supp', 'pamilijhan'),
(583, 'SURGICAL TAPE (PARTNERS) 1/2 INCH ', '', 0, 0, 29, '', 'medical supp', 'pamilijhan'),
(584, 'TRIANGULAR BANDAGE ', '', 0, 0, 78, '', 'medical supp', 'pamilijhan'),
(585, 'TRUST CONDOM ', '', 0, 0, 48, '', 'medical supp', 'pamilijhan'),
(586, 'TRUST PILLS ', '', 0, 0, 55, '', 'medical supp', 'pamilijhan'),
(587, 'URINE BAG (ADULT) ', '', 0, 0, 52, '', 'medical supp', 'pamilijhan'),
(588, 'VICKS 10G', '', 0, 0, 64, '', 'medical supp', 'pamilijhan'),
(589, 'VICKS (JAR)  25G', '', 0, 0, 135, '', 'medical supp', 'pamilijhan'),
(590, 'VICKS (JAR) 50G', '', 0, 0, 213, '', 'medical supp', 'pamilijhan'),
(591, 'VICKS 5G', '', 0, 0, 38, '', 'medical supp', 'pamilijhan'),
(592, 'VICKS BABYRUB 10G', '', 0, 0, 50, '', 'medical supp', 'pamilijhan'),
(593, 'VICKS BABYRUB 50G', '', 0, 0, 98, '', 'medical supp', 'pamilijhan'),
(594, 'VICKS INHALER ', '', 0, 0, 106, '', 'medical supp', 'pamilijhan'),
(595, 'WHITE FLOWER #3 ', '', 0, 0, 105, '', 'medical supp', 'pamilijhan'),
(596, 'WHITE FLOWER #4 ', '', 0, 0, 58, '', 'medical supp', 'pamilijhan'),
(597, 'WHITE FLOWER #5 ', '', 0, 0, 45, '', 'medical supp', 'pamilijhan'),
(598, 'BACIFLORA ', '', 0, 0, 39, '', 'supplement', 'geneonlove'),
(599, 'BARLEY CAPSULE ', '', 0, 0, 10.5, '', 'supplement', 'geneonlove'),
(600, 'BIGUERLAI TEA ', '', 0, 0, 9, '', 'supplement', 'geneonlove'),
(601, 'BIOFIT TEA ', '', 0, 0, 9, '', 'supplement', 'geneonlove'),
(602, 'BRISOFER OB ', '', 0, 0, 8, '', 'supplement', 'geneonlove'),
(603, 'ENOUVIM-OB ', '', 0, 0, 18.5, '', 'supplement', 'geneonlove'),
(604, 'EVENING PRIMROSE 1000MG', '', 0, 0, 18.5, '', 'supplement', 'geneonlove'),
(605, 'EYE-BERRY CAPSULE ', '', 0, 0, 20, '', 'supplement', 'geneonlove'),
(606, 'FISH OIL ', '', 0, 0, 12, '', 'supplement', 'geneonlove'),
(607, 'GLOBIFER FORTE ', '', 0, 0, 18, '', 'supplement', 'geneonlove'),
(608, 'ISIGHT PLUS ', '', 0, 0, 12, '', 'supplement', 'geneonlove'),
(609, 'KIDNEY CARE ', '', 0, 0, 17, '', 'supplement', 'geneonlove'),
(610, 'LIVER AID CAPSULE ', '', 0, 0, 21, '', 'supplement', 'geneonlove'),
(611, 'MELATONIN (MELATON) ', '', 0, 0, 12, '', 'supplement', 'geneonlove'),
(612, 'MEMORY PLUSGOLD CAPSULE ', '', 0, 0, 18.5, '', 'supplement', 'geneonlove'),
(613, 'MORINGAVITA 250MG', '', 0, 0, 12, '', 'supplement', 'geneonlove'),
(614, 'MORINGAVITA 500MG', '', 0, 0, 8, '', 'supplement', 'geneonlove'),
(615, 'MX3 CAPSULE ', '', 0, 0, 18.5, '', 'supplement', 'geneonlove'),
(616, 'MX3 COFFEE ', '', 0, 0, 18.5, '', 'supplement', 'geneonlove'),
(617, 'NEUROCARE PLUS ', '', 0, 0, 28, '', 'supplement', 'geneonlove'),
(618, 'OBYNAL-M ', '', 0, 0, 18, '', 'supplement', 'geneonlove'),
(619, 'OPTAGARD 500MG', '', 0, 0, 15, '', 'supplement', 'geneonlove'),
(620, 'PHOSPOLIPIDS (ESSENTIALE FORTE P)  ', '', 0, 0, 37, '', 'supplement', 'geneonlove'),
(621, 'PLEMEX ', '', 0, 0, 9, '', 'supplement', 'geneonlove'),
(622, 'POWERLIVER ', '', 0, 0, 12, '', 'supplement', 'geneonlove'),
(623, 'SAMBONG TABLET ', '', 0, 0, 8, '', 'supplement', 'geneonlove'),
(624, 'TAHEEBO TEA ', '', 0, 0, 15, '', 'supplement', 'geneonlove'),
(625, 'XANTHONE PLUS GOLD ', '', 0, 0, 16, '', 'supplement', 'geneonlove'),
(626, 'FLUOCINOLONE ACETONIDE + POLYMYCIN SULFATE OTIC DR', '', 0, 0, 345, 'Generic', 'eyedorps', 'applied pharmaceutical dnt/ beta drug'),
(627, 'PREDNISOLONE ACETATE EYE DROPS (PREDBIZ) ', '', 0, 0, 298, 'Generic', 'eyedorps', 'applied pharmaceutical dnt/ beta drug'),
(628, 'ALTHEA PILLS ', '', 0, 0, 485, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(629, 'DAPHNE PILLS ', '', 0, 0, 157, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(630, 'DEPOTRUST VIALS ', '', 0, 0, 145, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(631, 'DIANE PILLS ', '', 0, 0, 752, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(632, 'LYNDAVEL PILLS SRP ', '', 0, 0, 105, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(633, 'LYNDAVEL PILLS MW ', '', 0, 0, 98, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(634, 'MARVELON 28 PILLS ', '', 0, 0, 155, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(635, 'MICROPIL PLUS ', '', 0, 0, 155, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(636, 'AEROVENT  NEBULES ', '', 0, 0, 15, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(637, 'BUDESONIDE NEBULE ', '', 0, 0, 58, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(638, 'COMBIPOL SALBU+IPRATROPIUM ', '', 0, 0, 29, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(639, 'HIVENT NEBULES ', '', 0, 0, 15, '', 'medicine misc', 'applied pharmaceutical dnt/ beta drug'),
(643, 'AMPICILLIN VIAL 250MG', '', 0, 0, 35, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(644, 'AMPICILLIN VIAL 500MG', '', 0, 0, 45, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(645, 'CEFTRIAXONE IM/IV 1G', '', 0, 0, 135, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(646, 'CEFTRIAXONE W/ DILUENT IM/IV 1G', '', 0, 0, 175, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(647, 'CEFUROXIME AXETIL IM/IV 750MG', '', 0, 0, 150, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(648, 'APPLIED PHARMACEUTICAL DNT/ BETA DRUG ', '', 0, 0, 85, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(649, 'DYPHENHYDRAMINE 50MG/ML ', '', 0, 0, 90, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(650, 'GENTAMICIN 40MG/ML ', '', 0, 0, 68, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(651, 'GENTAMICIN AMPULE ', '', 0, 0, 68, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(652, 'GENTAMICIN VIAL ', '', 0, 0, 45, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(653, 'HYDRALAZINE HCL VIAL 20MG', '', 0, 0, 85, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(654, 'HYDROCORTISONE IM/IV 100MG', '', 0, 0, 85, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(655, 'HYDROCORTISONE IM/IV 200MG', '', 0, 0, 125, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(656, 'HYOSCINE AMPULE 20MG/ML ', '', 0, 0, 68, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(657, 'IRON IV 200MG/ML (100MG/5ML) ', '', 0, 0, 176, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(658, 'KETOROLAC  AMPULE 30MG/ML ', '', 0, 0, 85, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(659, 'OXYTOCIN AMPULE ', '', 0, 0, 68, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(660, 'PARACETAMOL AMPULE ', '', 0, 0, 58, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(661, 'PHYTOMENADION VIT. K  AMPULE ', '', 0, 0, 78, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(662, 'RANITIDINE 25MG/ML ', '', 0, 0, 75, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(663, 'TRANEXAMIC ACID 100MG/ML (500MG/5ML) ', '', 0, 0, 125, 'Generic', 'ampules and vials', 'applied pharmaceutical dnt/ beta drug'),
(697, 'ALLERTA 16MG', 'ALLERGY RELIEF', 0, 0, 30, 'Branded', 'medicine', 'UNITED'),
(698, 'ALNIX 10MG', 'ALLERGY RELIEF', 0, 0, 34, 'Branded', 'medicine', 'UNITED'),
(699, 'AMBROLEX 30MG', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 14, 'Branded', 'medicine', 'UNITED'),
(700, 'AMBROLEX 75MG', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 15.75, 'Branded', 'medicine', 'UNITED'),
(701, 'AMOCLAV 625MG', 'ANTIBIOTIC', 0, 0, 49.75, 'Branded', 'medicine', 'UNITED'),
(702, 'AMOXIL 250MG', 'ANTIBIOTIC', 0, 0, 9.5, 'Branded', 'medicine', 'UNITED'),
(703, 'AMOXIL 500MG', 'ANTIBIOTIC', 0, 0, 19, 'Branded', 'medicine', 'UNITED');
INSERT INTO `items` (`code`, `item_name`, `what_for`, `unit_price`, `mark_up`, `price`, `type`, `classification`, `vendor_name`) VALUES
(704, 'AMVASC 5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 31, 'Branded', 'medicine', 'UNITED'),
(705, 'AMVASC BE 5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 19.5, 'Branded', 'medicine', 'UNITED'),
(706, 'ANSIMAR 400MG', 'ASTHMA MANAGEMENT', 0, 0, 38.5, 'Branded', 'medicine', 'UNITED'),
(707, 'ANTAMIN  ', 'ALLERGY RELIEF', 0, 0, 5.5, 'Branded', 'medicine', 'UNITED'),
(708, 'ANTIOX 500MG', 'ANTIOXIDANT', 0, 0, 102, 'Branded', 'medicine', 'UNITED'),
(709, 'ARCALION ', 'FATIGUE REDUCTION', 0, 0, 23.5, 'Branded', 'medicine', 'UNITED'),
(710, 'ASCOF FORTE CAPSULE ', 'COUGH REMEDY', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(711, 'ASCOF FORTE TABLET ', 'COUGH REMEDY', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(712, 'ASMALIN SYRUP 60ML', 'BRONCHODILATOR (ASTHMA)', 0, 0, 143, 'Branded', 'medicine', 'UNITED'),
(713, 'ASPELET 80MG', 'ANTIPLATELET (PREVENTS BLOOD CLOTS)', 0, 0, 4, 'Branded', 'medicine', 'UNITED'),
(714, 'AUGMENTIN 275MG', 'ANTIBIOTIC', 0, 0, 39.75, 'Branded', 'medicine', 'UNITED'),
(715, 'AUGMENTIN 625MG', 'ANTIBIOTIC', 0, 0, 48.9, 'Branded', 'medicine', 'UNITED'),
(716, 'BETALOC 100MG', 'BETA-BLOCKER (HEART CONDITIONS)', 0, 0, 35, 'Branded', 'medicine', 'UNITED'),
(717, 'BETALOC 50MG', 'BETA-BLOCKER (HEART CONDITIONS)', 0, 0, 20.5, 'Branded', 'medicine', 'UNITED'),
(718, 'BIOCLAVID 275MG', 'ANTIBIOTIC', 0, 0, 34, 'Branded', 'medicine', 'UNITED'),
(719, 'BIOCLAVID 625MG', 'ANTIBIOTIC', 0, 0, 42, 'Branded', 'medicine', 'UNITED'),
(720, 'BIOGESIC ', 'PAIN AND FEVER RELIEF', 0, 0, 4.5, 'Branded', 'medicine', 'UNITED'),
(722, 'BIOGESIC STRAWBERRY SYRUP 60ML 250MG', 'PAIN AND FEVER RELIEF', 0, 0, 134, 'Branded', 'medicine', ' ROAD 1 EXCEL ROAD 1 EXCEL 100% 10 I60  UNITED      	 UNITED Turn on screen reader support   To enable screen reader support, press Ctrl+Alt+Z To learn about keyboard shortcuts, press Ctrl+slashAnonymous Rhino has joined the document. Error Function '),
(723, 'BISOLVON CAP  ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 22, 'Branded', 'medicine', 'UNITED'),
(724, 'BISOLVON TAB ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 14, 'Branded', 'medicine', 'UNITED'),
(725, 'BONAMINE PEDIA ', ' ANTIEMETIC (PREVENTS VOMITING)', 0, 0, 15, 'Branded', 'medicine', 'UNITED'),
(726, 'BP NORM 10MG', 'BLOOD PRESSURE CONTROL', 0, 0, 23.5, 'Branded', 'medicine', 'UNITED'),
(727, 'CALTRATE D3 ', 'CALCIUM SUPPLEMENT', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(728, 'CALTRATE PLUS ', 'CALCIUM SUPPLEMENT', 0, 0, 9.5, 'Branded', 'medicine', 'UNITED'),
(729, 'CARDIOSEL 100MG', 'BETA-BLOCKER (HEART CONDITIONS)', 0, 0, 7, 'Branded', 'medicine', 'UNITED'),
(730, 'CARDIOSEL 50MG', 'BETA-BLOCKER (HEART CONDITIONS)', 0, 0, 8.5, 'Branded', 'medicine', 'UNITED'),
(731, 'CATAPRES ', 'BLOOD PRESSURE CONTROL', 0, 0, 33.5, 'Branded', 'medicine', 'UNITED'),
(732, 'CECON TAB ', 'VITAMIN C SUPPLEMENT', 0, 0, 10, 'Branded', 'medicine', 'UNITED'),
(733, 'CEFALIN 250MG', 'ANTIBIOTIC', 0, 0, 27, 'Branded', 'medicine', 'UNITED'),
(734, 'CEFALINE 500MG', 'ANTIBIOTIC', 0, 0, 53, 'Branded', 'medicine', 'UNITED'),
(735, 'CENTRUM ', 'MULTIVITAMIN', 0, 0, 12, 'Generic', 'medicine', 'UNITED'),
(736, 'CENTRUM SILVER ADVANCE ', 'MULTIVITAMIN', 0, 0, 14, 'Branded', 'medicine', 'UNITED'),
(737, 'CEPOREX 250MG', 'ANTIBIOTIC', 0, 0, 22, 'Branded', 'medicine', 'UNITED'),
(738, 'CEPOREX 500MG', 'ANTIBIOTIC', 0, 0, 44, 'Branded', 'medicine', 'UNITED'),
(739, 'CHLOROMYCETIN 500MG', 'ANTIBIOTIC', 0, 0, 72.5, 'Branded', 'medicine', 'UNITED'),
(740, 'CIPROBAV 250MG', 'ANTIBIOTIC', 0, 0, 32.5, 'Branded', 'medicine', 'UNITED'),
(741, 'CIPROBAV 500MG', 'ANTIBIOTIC', 0, 0, 46.25, 'Branded', 'medicine', 'UNITED'),
(742, 'CLARICORT 5MG', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 50, 'Branded', 'medicine', 'UNITED'),
(743, 'CLARITIN 10MG', 'ALLERGY RELIEF', 0, 0, 39, 'Branded', 'medicine', 'UNITED'),
(744, 'CLUSIVOL ', 'MULTIVITAMIN', 0, 0, 8, 'Branded', 'medicine', 'UNITED'),
(745, 'CO-ALEVA ', 'ANTIHISTAMINE', 0, 0, 30.5, 'Branded', 'medicine', 'UNITED'),
(746, 'CO-DIOVAN 80MG', 'BLOOD PRESSURE CONTROL', 0, 0, 66.75, 'Branded', 'medicine', 'UNITED'),
(747, 'COMBANTRIN 125MG', 'ANTIHELMINTIC (WORM INFECTIONS)', 0, 0, 48, 'Branded', 'medicine', 'UNITED'),
(748, 'COMBIZAR 100MG', 'BLOOD PRESSURE CONTROL', 0, 0, 38.5, 'Branded', 'medicine', 'UNITED'),
(749, 'COMBIZAR  50MG', 'BLOOD PRESSURE CONTROL', 0, 0, 30, 'Branded', 'medicine', 'UNITED'),
(750, 'CONCORE  2.5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 27, 'Branded', 'medicine', 'UNITED'),
(751, 'CONZACE ', 'MULTIVITAMIN', 0, 0, 15, 'Branded', 'medicine', 'UNITED'),
(752, 'DAONIL ', 'DIABETES MANAGEMENT', 0, 0, 6.5, 'Branded', 'medicine', 'UNITED'),
(753, 'DECILONE 500MG', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 7.5, 'Branded', 'medicine', 'UNITED'),
(754, 'DECILONE FORTE ', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 34, 'Branded', 'medicine', 'UNITED'),
(755, 'DECOLGEN FORTE ', 'COLD AND FLU RELIEF', 0, 0, 8, 'Branded', 'medicine', 'UNITED'),
(756, 'DECOLGEN ND ', 'COLD AND FLU RELIEF', 0, 0, 8, 'Branded', 'medicine', 'UNITED'),
(757, 'DIAMICRON 60MG', 'DIABETES MANAGEMENT', 0, 0, 23, 'Branded', 'medicine', 'UNITED'),
(758, 'DIAMICRON 80MG', 'DIABETES MANAGEMENT', 0, 0, 9.75, 'Branded', 'medicine', 'UNITED'),
(759, 'DOLO-NEUROBION ', 'PAIN RELIEF AND NERVE HEALTH', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(760, 'DOXIUM 500MG', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 42, 'Branded', 'medicine', 'UNITED'),
(761, 'DULCOLAX ', 'LAXATIVE', 0, 0, 26, 'Branded', 'medicine', 'UNITED'),
(762, 'DUOMAX ', 'MULTIVITAMIN', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(763, 'DUPHASTON 10MG', 'HORMONAL THERAPY', 0, 0, 93, 'Branded', 'medicine', 'UNITED'),
(764, 'DUVADILAN 14MG', 'CIRCULATION IMPROVEMENT', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(765, 'DRENEX 3000MCG', 'LAXATIVE', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(766, 'DRENEX 750MCG', 'LAXATIVE', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(767, 'ECTRIN ', 'ANTIHISTAMINE', 0, 0, 25.5, 'Branded', 'medicine', 'UNITED'),
(768, 'ENERVON ACTIVE ', 'MULTIVITAMIN', 0, 0, 15, 'Branded', 'medicine', 'UNITED'),
(769, 'ERYTHROX ', 'ANTIBIOTIC', 0, 0, 5.75, 'Branded', 'medicine', 'UNITED'),
(770, 'EUGLOCON 5MG', 'DIABETES MANAGEMENT', 0, 0, 12.5, 'Branded', 'medicine', 'UNITED'),
(771, 'FIBROSINE ', 'LAXATIVE', 0, 0, 19, 'Branded', 'medicine', 'UNITED'),
(772, 'FIXCOM-3 ', 'APPETITE STIMULANT', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(773, 'FLUIMUCIL 100MG', 'ANTI-INFLAMMATORY', 0, 0, 18, 'Branded', 'medicine', 'UNITED'),
(774, 'FLUIMUCIL 200MG', 'ANTI-INFLAMMATORY', 0, 0, 21, 'Branded', 'medicine', 'UNITED'),
(775, 'FORTIFER FA ', 'IRON SUPPLEMENT', 0, 0, 17, 'Branded', 'medicine', 'UNITED'),
(776, 'FORTIFER TAB ', 'IRON SUPPLEMENT', 0, 0, 11, 'Branded', 'medicine', 'UNITED'),
(777, 'GAVISCON DOUBLE-ACTION SUSPENSION ', 'ANTIULCER', 0, 0, 42, 'Branded', 'medicine', 'UNITED'),
(778, 'GAVISCON DOUBLE-ACTION TABLET ', 'ANTIULCER', 0, 0, 25, 'Branded', 'medicine', 'UNITED'),
(779, 'GAVISCON SUSPENSION  ', 'ANTIULCER', 0, 0, 35, 'Branded', 'medicine', 'UNITED'),
(780, 'GAVISCON TABLET  ', 'ANTIULCER', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(781, 'GLUBITOR 30MG', 'DIABETES MANAGEMENT', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(782, 'GLUBITOR 80MG', 'DIABETES MANAGEMENT', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(783, 'GLUBITOR OD 30MG', 'DIABETES MANAGEMENT', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(784, 'GLUMET  ', 'DIABETES MANAGEMENT', 0, 0, 12, 'Generic', 'medicine', 'UNITED'),
(785, 'GLUMET 500MG', 'DIABETES MANAGEMENT', 0, 0, 9.75, 'Branded', 'medicine', 'UNITED'),
(786, 'GLUMET XR 500MG', 'DIABETES MANAGEMENT', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(787, 'GLYCEROL ADULT X 1S ', 'LAXATIVE', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(788, 'HEMARATE FA  ', 'IRON SUPPLEMENT', 0, 0, 26, 'Branded', 'medicine', 'UNITED'),
(789, 'HEMARATE TABLET  ', 'IRON SUPPLEMENT', 0, 0, 28, 'Branded', 'medicine', 'UNITED'),
(790, 'HEMOSTAN 250MG', 'ANTIFIBRINOLYTIC (PREVENTS BLEEDING)', 0, 0, 21.5, 'Branded', 'medicine', 'UNITED'),
(791, 'HEMOSTAN 500MG', 'ANTIFIBRINOLYTIC (PREVENTS BLEEDING)', 0, 0, 47, 'Branded', 'medicine', 'UNITED'),
(792, 'HIMOX  250MG', 'ANTIBIOTIC', 0, 0, 10, 'Branded', 'medicine', 'UNITED'),
(793, 'HIMOX  500MG', 'ANTIBIOTIC', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(794, 'HISTACORT ', 'ANTIHISTAMINE', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(795, 'IBERET ACTIVE G', 'MULTIVITAMIN', 0, 0, 34, 'Branded', 'medicine', 'UNITED'),
(796, 'IBERET FOLIC ', 'MULTIVITAMIN', 0, 0, 35, 'Branded', 'medicine', 'UNITED'),
(797, 'IMDUR 20MG 20MG', 'ANGINA MANAGEMENT', 0, 0, 36.5, 'Branded', 'medicine', 'UNITED'),
(798, 'IMDUR 20MG', 'ANGINA MANAGEMENT', 0, 0, 36.5, 'Branded', 'medicine', 'UNITED'),
(799, 'IMDUR 40MG', 'ANGINA MANAGEMENT', 0, 0, 51.75, 'Branded', 'medicine', 'UNITED'),
(800, 'IMMUNOMAX ', 'IMMUNE SYSTEM SUPPORT', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(801, 'IMMUNOPRO ', 'IMMUNE SYSTEM SUPPORT', 0, 0, 9.5, 'Branded', 'medicine', 'UNITED'),
(802, 'IMMUNOSIN ', 'IMMUNE SYSTEM SUPPORT', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(803, 'IMMUNOSIN TAB ', 'IMMUNE SYSTEM SUPPORT', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(804, 'IMODIUM ', 'ANTIDIARRHEAL', 0, 0, 19, 'Branded', 'medicine', 'UNITED'),
(805, 'INDERAL 10MG', 'ANXIETY AND ALLERGY RELIEF', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(806, 'INDERAL 40MG', 'BLOOD PRESSURE CONTROL', 0, 0, 23.5, 'Branded', 'medicine', 'UNITED'),
(807, 'INFOLOX ', 'ANTIBIOTIC', 0, 0, 105, 'Branded', 'medicine', 'UNITED'),
(808, 'INOFLOX 400MG', 'ANTIBIOTIC', 0, 0, 105, 'Branded', 'medicine', 'UNITED'),
(809, 'ITERAX 10MG', 'ANXIETY AND ALLERGY RELIEF', 0, 0, 14.5, 'Branded', 'medicine', 'UNITED'),
(810, 'ITERAX 20MG', 'ANXIETY AND ALLERGY RELIEF', 0, 0, 25.5, 'Branded', 'medicine', 'UNITED'),
(811, 'KREMIL-S ', 'ANTACID', 0, 0, 9, 'Branded', 'medicine', 'UNITED'),
(812, 'KREMIL-S ADVANCE ', 'ANTACID', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(813, 'LECIT-E ', 'VITAMIN E SUPPLEMENT', 0, 0, 10.5, 'Branded', 'medicine', 'UNITED'),
(814, 'LIFEZAR  ', 'BLOOD PRESSURE CONTROL', 0, 0, 32.5, 'Branded', 'medicine', 'UNITED'),
(815, 'LIFEZAR 100MG', 'BLOOD PRESSURE CONTROL', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(816, 'LIFEZAR 50MG', 'BLOOD PRESSURE CONTROL', 0, 0, 27, 'Branded', 'medicine', 'UNITED'),
(817, 'LITEC 500MG', 'ANTIBIOTIC', 0, 0, 42, 'Branded', 'medicine', 'UNITED'),
(818, 'LLANOL ', 'ANTI-INFLAMMATORY', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(819, 'LOMOTIL ', 'ANTIDIARRHEAL', 0, 0, 12, 'Branded', 'medicine', 'united'),
(820, 'LOVISCOL ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(821, 'MAALOX PLUS ', 'ANTACID', 0, 0, 18, 'Branded', 'medicine', 'UNITED'),
(822, 'MAALOX TAB ', 'ANTACID', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(823, 'MEPTIN 25MG', 'BRONCHODILATOR (ASTHMA)', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(824, 'MEPTIN 50MG', 'BRONCHODILATOR (ASTHMA)', 0, 0, 18.5, 'Branded', 'medicine', 'UNITED'),
(825, 'MICARDIS 40MG', 'BLOOD PRESSURE CONTROL', 0, 0, 31, 'Branded', 'medicine', 'UNITED'),
(826, 'MICARDIS PLUS  40MG', 'BLOOD PRESSURE CONTROL', 0, 0, 26.5, 'Branded', 'medicine', 'UNITED'),
(827, 'MICARDIS 80MG', 'BLOOD PRESSURE CONTROL', 0, 0, 44.5, 'Branded', 'medicine', 'UNITED'),
(828, 'MICARDIS PLUS  80MG', 'BLOOD PRESSURE CONTROL', 0, 0, 46, 'Branded', 'medicine', 'UNITED'),
(829, 'MIDOL ', 'PAIN RELIEF', 0, 0, 11, 'Branded', 'medicine', 'UNITED'),
(830, 'MINIDIAB 25MG', 'DIABETES MANAGEMENT', 0, 0, 13.8, 'Branded', 'medicine', 'UNITED'),
(831, 'MINIDIAB 50MG', 'DIABETES MANAGEMENT', 0, 0, 22, 'Branded', 'medicine', 'UNITED'),
(832, 'MINOCIN ', 'ANTIBIOTIC', 0, 0, 49, 'Branded', 'medicine', 'UNITED'),
(833, 'MORIAMIN FORTE ', 'MULTIVITAMIN', 0, 0, 14, 'Branded', 'medicine', 'UNITED'),
(834, 'MOTILIUM 10MG', 'GASTROINTESTINAL RELIEF', 0, 0, 32.5, 'Branded', 'medicine', 'UNITED'),
(835, 'MUCOBRON FORTE ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(836, 'MUCOSOLVAN ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 21, 'Branded', 'medicine', 'UNITED'),
(837, 'MUCOTUSS FORTE ', 'COUGH RELIEF', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(838, 'MUSKELAX ', 'MUSCLE RELAXANT', 0, 0, 17.5, 'Branded', 'medicine', 'UNITED'),
(839, 'MYONAL TABLET ', 'MUSCLE RELAXANT', 0, 0, 27, 'Branded', 'medicine', 'UNITED'),
(840, 'MYRA-E ', 'VITAMIN E SUPPLEMENT', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(841, 'MYRACOF ', 'COUGH RELIEF', 0, 0, 4.5, 'Branded', 'medicine', 'UNITED'),
(842, 'MYRIN ', 'TUBERCULOSIS TREATMENT', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(843, 'MYRIN-P FORTE ', 'TUBERCULOSIS TREATMENT', 0, 0, 19, 'Branded', 'medicine', 'UNITED'),
(844, 'NEUROBION 500MG', 'NERVE HEALTH', 0, 0, 48.75, 'Branded', 'medicine', 'UNITED'),
(845, 'NEUROBION TAB ', 'NERVE HEALTH', 0, 0, 27, 'Branded', 'medicine', 'UNITED'),
(846, 'NEUROGEN-E  ', 'MULTIVITAMIN', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(847, 'NORIZEC 2MG', 'GASTROINTESTINAL RELIEF', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(848, 'NORIZEC 3MG', 'GASTROINTESTINAL RELIEF', 0, 0, 26.5, 'Branded', 'medicine', 'UNITED'),
(849, 'NORTEN 16MG', 'BLOOD PRESSURE CONTROL', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(850, 'NORTEN 5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 24, 'Branded', 'medicine', 'UNITED'),
(851, 'NORVASC 15MG', 'BLOOD PRESSURE CONTROL', 0, 0, 39, 'Branded', 'medicine', 'UNITED'),
(852, 'NORVASC 5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 24, 'Branded', 'medicine', 'UNITED'),
(853, 'OBMAX ', 'MULTIVITAMIN', 0, 0, 8, 'Branded', 'medicine', 'UNITED'),
(854, 'ORADEXON 500MG', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 7.75, 'Branded', 'medicine', 'UNITED'),
(855, 'PHARMATON ', 'MULTIVITAMIN', 0, 0, 29, 'Branded', 'medicine', 'UNITED'),
(856, 'PLASIL 15MG', 'ANTIEMETIC (PREVENTS VOMITING)', 0, 0, 9.5, 'Branded', 'medicine', 'UNITED'),
(857, 'PLENDIL 25MG', 'BLOOD PRESSURE CONTROL', 0, 0, 23.75, 'Branded', 'medicine', 'UNITED'),
(858, 'PLENDIL 5MG', 'BLOOD PRESSURE CONTROL', 0, 0, 34.5, 'Branded', 'medicine', 'UNITED'),
(859, 'PLENDIL 15MG', 'BLOOD PRESSURE CONTROL', 0, 0, 58, 'Branded', 'medicine', 'UNITED'),
(860, 'POTENCEE 1000MG', 'VITAMIN C SUPPLEMENT', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(861, 'PRED. ORGANON 5MG', 'STEROID (ANTI-INFLAMMATORY)', 0, 0, 5, 'Branded', 'medicine', 'UNITED'),
(862, 'PROPAN W/ IRON ', 'MULTIVITAMIN WITH IRON', 0, 0, 33, 'Branded', 'medicine', 'UNITED'),
(863, 'PROVERA 8MG 8MG', 'HORMONAL THERAPY', 0, 0, 14.5, 'Branded', 'medicine', 'UNITED'),
(864, 'PROVIRON 25MG', 'ANDROGEN DEFICIENCY', 0, 0, 46.75, 'Branded', 'medicine', 'UNITED'),
(865, 'QUADTAB ', 'MULTIVITAMIN', 0, 0, 13, 'Branded', 'medicine', 'UNITED'),
(866, 'REVALAN 500MG', 'ANTIOXIDANT', 0, 0, 26, 'Branded', 'medicine', 'UNITED'),
(867, 'REVICON ', 'MULTIVITAMIN', 0, 0, 6, 'Branded', 'medicine', 'UNITED'),
(868, 'RIMACTIZIDE D. 300MG', 'TUBERCULOSIS TREATMENT', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(869, 'RIMACTIZIDE D. 450/400MG ', 'TUBERCULOSIS TREATMENT', 0, 0, 40, 'Branded', 'medicine', 'UNITED'),
(870, 'ROGIN-E ', 'MULTIVITAMIN', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(871, 'SANGOBION ', 'IRON SUPPLEMENT', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(872, 'SARIDON ', 'PAIN RELIEF', 0, 0, 8, 'Branded', 'medicine', 'UNITED'),
(873, 'SENOKOT FORTE ', 'LAXATIVE', 0, 0, 24, 'Branded', 'medicine', 'UNITED'),
(874, 'SENOKOT TABLET ', 'LAXATIVE', 0, 0, 17, 'Branded', 'medicine', 'UNITED'),
(875, 'SERC 16MG', 'VERTIGO RELIEF', 0, 0, 53.5, 'Branded', 'medicine', 'UNITED'),
(876, 'SERC 24MG', 'VERTIGO RELIEF', 0, 0, 73.25, 'Branded', 'medicine', 'UNITED'),
(877, 'SERC 8MG', 'VERTIGO RELIEF', 0, 0, 43, 'Branded', 'medicine', 'UNITED'),
(878, 'SIBELLIUM 5MG', 'MIGRAINE PREVENTION', 0, 0, 85.75, 'Branded', 'medicine', 'UNITED'),
(879, 'SIMECO ', 'ANTACID', 0, 0, 7, 'Branded', 'medicine', 'UNITED'),
(880, 'SIMECO TABLET ', 'ANTACID', 0, 0, 7, 'Branded', 'medicine', 'UNITED'),
(881, 'SINUPRET ', 'SINUS RELIEF', 0, 0, 14, 'Branded', 'medicine', 'UNITED'),
(882, 'SINUPRET FORTE ', 'SINUS RELIEF', 0, 0, 20, 'Branded', 'medicine', 'UNITED'),
(883, 'SKELAN 500MG', 'PAIN RELIEF', 0, 0, 22, 'Branded', 'medicine', 'UNITED'),
(884, 'SOLMUX BRONCHO 60ML', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 0, 0, 167, 'Branded', 'medicine', 'UNITED'),
(885, 'SORBIFER DURULES 310MG', 'IRON SUPPLEMENT', 0, 0, 16, 'Branded', 'medicine', 'UNITED'),
(886, 'SUPRA NEURON ', 'NERVE HEALTH', 0, 0, 18, 'Branded', 'medicine', 'UNITED'),
(887, 'TEMPRA 325MCG', 'PAIN AND FEVER RELIEF', 0, 0, 5, 'Branded', 'medicine', 'UNITED'),
(888, 'TEMPRA FORTE 500MG', 'PAIN AND FEVER RELIEF', 0, 0, 6, 'Branded', 'medicine', 'UNITED'),
(889, 'THERABLOC 10MG', 'BETA-BLOCKER (HEART CONDITIONS)', 0, 0, 17, 'Branded', 'medicine', 'UNITED'),
(890, 'TRAJENTA 5MG', 'DIABETES MANAGEMENT', 0, 0, 71, 'Branded', 'medicine', 'UNITED'),
(891, 'TRITAB ', 'MULTIVITAMIN', 0, 0, 12, 'Branded', 'medicine', 'UNITED'),
(892, 'VASTAREL 20MG', 'ANGINA MANAGEMENT', 0, 0, 24, 'Branded', 'medicine', 'UNITED'),
(893, 'VASTAREL 35MG', 'ANGINA MANAGEMENT', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(894, 'VIRLIX 10MG', 'ALLERGY RELIEF', 0, 0, 27.5, 'Branded', 'medicine', 'UNITED'),
(895, 'VOLTAREN 100MG', 'PAIN RELIEF', 0, 0, 66, 'Branded', 'medicine', 'UNITED'),
(896, 'VOLTAREN 25MG', 'PAIN RELIEF', 0, 0, 18.5, 'Branded', 'medicine', 'UNITED'),
(897, 'VOLTAREN 50MG', 'PAIN RELIEF', 0, 0, 32, 'Branded', 'medicine', 'UNITED'),
(898, 'XENICAL 120MG', 'WEIGHT MANAGEMENT', 0, 0, 37, 'Branded', 'medicine', 'UNITED'),
(899, 'ALLERKID 30ML', 'ALLERGY RELIEF', 160.64, 12.05, 180, 'Branded', 'medicine', 'UNITED'),
(900, 'ALLERKID DROPS ', ' ALLERGY RELIEF', 175.5, 12.25, 197, 'Branded', 'medicine', 'UNITED'),
(901, 'ALLERKID DROPS 60ML', 'ALLERGY RELIEF', 267.17, 12.29, 300, 'Branded', 'medicine', 'UNITED'),
(902, 'ALNIX DROPS ', 'ALLERGY RELIEF', 186.46, 12.62, 210, 'Branded', 'medicine', 'UNITED'),
(903, 'ALNIX PLUS SYRUP 60ML', 'ALLERGY RELIEF', 292.4, 12.17, 328, 'Branded', 'medicine', 'UNITED'),
(904, 'ALNIX SYRUP 30ML', 'ALLERGY RELIEF', 162.14, 11.01, 180, 'Branded', 'medicine', 'UNITED'),
(905, 'ALNIX SYRUP 60ML', 'ALLERGY RELIEF', 267.59, 14, 305, 'Branded', 'medicine', 'UNITED'),
(906, 'BIOGESIC ORANGE DROPS ', 'PAIN AND FEVER RELIEF', 65.49, 11.48, 73, 'Branded', 'medicine', 'UNITED'),
(907, 'BIOGESIC ORANGE SYRUP (120MG) 60ML ', 'PAIN AND FEVER RELIEF', 85.18, 10.35, 94, 'Branded', 'medicine', 'UNITED'),
(908, 'BIOGESIC ORANGE SYRUP (250MG) 60ML ', 'PAIN AND FEVER RELIEF', 121.74, 11.71, 136, 'Branded', 'medicine', 'UNITED'),
(909, 'BIOGESIC STRAWBERRY SYRUP (120MG) 60ML ', 'PAIN AND FEVER RELIEF', 85.18, 10.35, 94, 'Branded', 'medicine', 'UNITED'),
(910, 'CEELIN CHEWABLES 100MG/30 ', 'VITAMIN C SUPPLEMENT', 153.08, 5.82, 162, 'Branded', 'medicine', 'UNITED'),
(911, 'CEELIN DROPS 15ML', 'VITAMIN C SUPPLEMENT', 68.75, 10.54, 76, 'Branded', 'medicine', 'UNITED'),
(912, 'CEELIN GUMMIES ', 'VITAMIN C SUPPLEMENT', 169.81, 11.89, 190, 'Branded', 'medicine', 'UNITED'),
(913, 'CEELIN PLUS 120ML', 'VITAMIN C SUPPLEMENT', 146.79, 10.36, 162, 'Branded', 'medicine', 'UNITED'),
(914, 'CEELIN PLUS 15ML', 'VITAMIN C SUPPLEMENT', 86.11, 12.64, 97, 'Branded', 'medicine', 'UNITED'),
(915, 'CEELIN PLUS 250ML', 'VITAMIN C SUPPLEMENT', 273.16, 10.55, 302, 'Branded', 'medicine', 'UNITED'),
(916, 'CEELIN PLUS 30ML', 'VITAMIN C SUPPLEMENT', 150.47, 10.32, 166, 'Branded', 'medicine', 'UNITED'),
(917, 'CEELIN PLUS 60ML', 'VITAMIN C SUPPLEMENT', 63, 11.11, 70, 'Branded', 'medicine', 'UNITED'),
(918, 'CEELIN SYRUP 120ML', 'VITAMIN C SUPPLEMENT', 116.08, 10.27, 128, 'Branded', 'medicine', 'UNITED'),
(919, 'CEELIN SYRUP 250ML', 'VITAMIN C SUPPLEMENT', 22.8, 10.52, 25, 'Branded', 'medicine', 'UNITED'),
(920, 'CEELIN SYRUP 30ML', 'VITAMIN C SUPPLEMENT', 135.78, 0.9, 137, 'Branded', 'medicine', 'UNITED'),
(921, 'CEELIN SYRUP 60ML', 'VITAMIN C SUPPLEMENT', 63, 11.11, 70, 'Branded', 'medicine', 'UNITED'),
(922, 'CONZACE CAP ', 'MULTIVITAMIN', 12.32, 12.61, 14, 'Branded', 'medicine', 'UNITED'),
(923, 'DISUDRIN DROPS ', 'COLD AND FLU RELIEF', 118.24, 15.02, 136, 'Branded', 'medicine', 'UNITED'),
(924, 'DISUDRIN SYRUP 60ML', 'COLD AND FLU RELIEF', 128.81, 10.23, 142, 'Branded', 'medicine', 'UNITED'),
(925, 'DOLAN 100MG/60ML ', 'PAIN AND FEVER RELIEF', 91.11, 11.95, 102, 'Branded', 'medicine', 'UNITED'),
(926, 'DOLAN 200MG/60ML ', 'PAIN AND FEVER RELIEF', 137.74, 12.53, 155, 'Branded', 'medicine', 'UNITED'),
(927, 'E-ZINC DROPS ', 'ZINC SUPPLEMENT', 94.35, 12.34, 106, 'Branded', 'medicine', 'UNITE'),
(928, 'E-ZINC SYRUP 60ML', 'ZINC SUPPLEMENT', 100.52, 12.41, 113, 'Branded', 'medicine', 'UNITED'),
(929, 'ENERVON X 30S ', 'MULTIVITAMIN', 199.29, 5.37, 210, 'Branded', 'medicine', 'UNITED'),
(930, 'EXPEL (15MG) 60ML ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 121.88, 9.94, 134, 'Branded', 'medicine', 'UNITED'),
(931, 'EXPEL DROPS 15ML', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 105.35, 12, 118, 'Branded', 'medicine', 'UNITED'),
(932, 'FERLIN 120ML', 'IRON SUPPLEMENT', 313.75, 12.19, 352, 'Branded', 'medicine', 'UNITED'),
(933, 'FERLIN DROPS ', 'IRON SUPPLEMENT', 141.15, 11.93, 158, 'Branded', 'medicine', 'UNITED'),
(934, 'HEMARATE TAB ', 'IRON SUPPLEMENT', 22.64, 14.84, 26, 'Branded', 'medicine', 'UNITED'),
(935, 'HEMOSTAN 50MCG', 'ANTIFIBRINOLYTIC (PREVENTS BLEEDING)', 40.52, 15.99, 47, 'Branded', 'medicine', 'UNITED'),
(936, 'HYDRITE SACHET 2.7G ', 'ORAL REHYDRATION', 15.68, 27.55, 20, 'Branded', 'medicine', 'UNITED'),
(937, 'HYDRITE SACHET APPLE ', 'ORAL REHYDRATION', 15.46, 29.37, 20, 'Branded', 'medicine', 'UNITED'),
(938, 'HYDRITE SACHET BANANA ', 'ORAL REHYDRATION', 15.46, 29.37, 20, 'Branded', 'medicine', 'UNITED'),
(939, 'HYDRITE SACHET ORIG ', 'ORAL REHYDRATION', 15.46, 29.37, 20, 'Branded', 'medicine', 'UNITED'),
(940, 'IMMUNOSIN SYRUP 60ML', 'IMMUNE SYSTEM SUPPORT', 273.49, 15.18, 315, 'Branded', 'medicine', 'UNITED'),
(941, 'LORAPED 60ML', 'ALLERGY RELIEF', 267.59, 12.11, 300, 'Branded', 'medicine', 'UNITED'),
(942, 'NEOZEP DROPS ', 'COLD AND FLU RELIEF', 102.39, 10.36, 113, 'Branded', 'medicine', 'UNITED'),
(943, 'NEOZEP SYRUP 60ML', 'COLD AND FLU RELIEF', 105.47, 9.98, 116, 'Branded', 'medicine', 'UNITED'),
(944, 'NUTRILIN 15ML', 'MULTIVITAMIN', 81.38, 10.59, 90, 'Branded', 'medicine', 'UNITED'),
(945, 'NUTRILIN 250ML', 'MULTIVITAMIN', 334.31, 10.07, 368, 'Branded', 'medicine', 'UNITED'),
(946, 'NUTRILIN 30ML', 'MULTIVITAMIN', 123.27, 10.32, 136, 'Branded', 'medicine', 'UNITED'),
(947, 'NUTROPLEX 120ML', 'MULTIVITAMIN', 156.9, 10.26, 173, 'Branded', 'medicine', 'UNITED'),
(948, 'NUTROPLEX 250ML', 'MULTIVITAMIN', 284.87, 10.22, 314, 'Branded', 'medicine', 'UNITED'),
(949, 'NUTROPLEX 60ML', 'MULTIVITAMIN', 82.59, 10.18, 91, 'Branded', 'medicine', 'UNITED'),
(950, 'RESTIME DROPS ', 'COLD AND FLU RELIEF', 116.35, 15.17, 134, 'Branded', 'medicine', 'UNITED'),
(951, 'SKELAN FORTE ', 'PAIN RELIEF', 19.13, 9.77, 21, 'Branded', 'medicine', 'UNITED'),
(952, 'REXIDOL ', 'PAIN AND FEVER RELIEF', 5.45, 46.79, 8, 'Branded', 'medicine', 'UNITED'),
(953, 'SOLMUX 100MG/60ML ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 109.52, 12.3, 123, 'Branded', 'medicine', 'UNITED'),
(954, 'SOLMUX 200MG/60ML ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 115.44, 12.61, 130, 'Branded', 'medicine', 'UNITED'),
(955, 'SOLMUX ADVANCE W/ ZINC ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 13.2, 13.63, 15, 'Branded', 'medicine', 'UNITED'),
(956, 'SOLMUX CAPSULE 500MG', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 10.3, 16.5, 12, 'Branded', 'medicine', 'UNITED'),
(957, 'SOLMUX DROPS ', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 111.32, 12.29, 125, 'Branded', 'medicine', 'UNITED'),
(958, 'SOLMUX FORTE 60ML', 'MUCOLYTIC (HELPS CLEAR MUCUS)', 123.06, 12.95, 139, 'Branded', 'medicine', 'UNITED'),
(959, 'TIKI-TIKI 120ML', 'MULTIVITAMIN', 113.81, 10.71, 126, 'Branded', 'medicine', 'UNITED'),
(960, 'TIKI-TIKI 15ML', 'MULTIVITAMIN', 52.54, 10.39, 58, 'Branded', 'medicine', 'UNITED'),
(961, 'TIKI-TIKI 30ML', 'MULTIVITAMIN', 83.31, 10.43, 92, 'Branded', 'medicine', 'UNITED'),
(962, 'TIKI-TIKI 60ML', 'MULTIVITAMIN', 62.7, 10.04, 69, 'Branded', 'medicine', 'UNITED'),
(963, 'TUSERAN FORTE CAPSULE ', 'TUSERAN FORTE CAPSULE', 9.9, 11.11, 11, 'Branded', 'medicine', 'UNITED');

-- --------------------------------------------------------

--
-- Table structure for table `push_orders`
--

CREATE TABLE `push_orders` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL DEFAULT '',
  `reason` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `push_orders`
--

INSERT INTO `push_orders` (`id`, `item_name`, `reason`, `qty`, `status`) VALUES
(3, 'erythromycin 500 mg', 'Low_on_Stock', 1, 'read'),
(4, 'erythromycin 500 mg', 'Low_on_Stock', 11, 'read'),
(5, 'erythromycin 500 mg', 'Low_on_Stock', 11, 'read'),
(6, 'erythromycin 500 mg', 'Low_on_Stock', 11, 'read'),
(7, 'biogesic 500 mg', 'customer_request', 2, 'read'),
(8, 'erythromycin 500 mg', 'customer_request', 12, 'read'),
(9, 'erythromycin 500 mg', 'customer_request', 12, 'read'),
(10, 'biogesic 500 mg', 'Low_on_Stock', 12, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL DEFAULT '',
  `reason` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `item_name`, `reason`, `qty`, `expiry_date`, `status`) VALUES
(4, 'erythromycin500mg', 'Damaged', 1, '0000-00-00', 'read'),
(5, 'erythromycin500mg', 'Damaged', 100, '0000-00-00', 'read'),
(6, 'erythromycin500mg', 'Damaged', 100, '0000-00-00', 'read'),
(7, 'erythromycin500mg', 'Damaged', 123, '0000-00-00', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `training_greetings`
--

CREATE TABLE `training_greetings` (
  `id` int(11) NOT NULL,
  `greetings` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_greetings`
--

INSERT INTO `training_greetings` (`id`, `greetings`) VALUES
(11, 'Hi! Looking for alternatives to a specific medicine? Tell me the name, and I\'ll help!'),
(12, 'Hello! Need an alternative medication? Provide the medicine name, and I\'ll find options for you.'),
(13, 'Greetings! I can recommend alternative medicines. Which medicine are you looking to replace?'),
(14, 'Welcome! Tell me the name of the medicine you\'re seeking an alternative for, and I\'ll check for you.'),
(15, 'Hey there! Need a different medicine? Let me know the current one, and I\'ll suggest alternatives.'),
(16, 'Good day! I\'m here to help you find alternative medications. What\'s the name of the medicine?'),
(17, 'Hi! Want a different medication option? Share the name of the medicine, and I\'ll find alternatives.'),
(18, 'Hello! I can suggest alternative medicines. What medication are you looking to replace?'),
(19, 'Welcome! Let me help you find alternative medicines. Which medicine do you need an alternative for?'),
(20, 'Hi there! Looking for a substitute medication? Tell me the current medicine name, and I\'ll find alternatives.');

-- --------------------------------------------------------

--
-- Table structure for table `training_items`
--

CREATE TABLE `training_items` (
  `id` int(11) NOT NULL,
  `words` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_items`
--

INSERT INTO `training_items` (`id`, `words`) VALUES
(1, 'SARIDON'),
(2, '250MG'),
(3, 'NEOZEP'),
(5, '100MG'),
(8, '500MG'),
(9, 'TEST'),
(10, '2MG'),
(11, 'ACETYLCYSTEINE'),
(12, '200MG'),
(14, 'ACYCLOVIR'),
(15, '400MG'),
(16, 'ALLOPURINOL'),
(17, '300MG'),
(18, 'AMBROXOL'),
(19, '30MG'),
(20, '75MG'),
(21, 'AMIODARONE'),
(22, 'AMLODIPINE'),
(23, '10MG'),
(24, 'ATENOLOL'),
(25, '50MG'),
(26, 'ATORVASTATIN'),
(27, '20MG'),
(28, '40MG'),
(29, 'AZITHROMYCIN'),
(30, 'BETAHISTINE'),
(31, '8MG'),
(32, '16MG'),
(33, '24MG'),
(34, 'BUTAMIRATE'),
(35, 'CANDESARTAN'),
(36, 'CAPTOPRIL'),
(37, '25MG'),
(38, 'CARBAMAZEPINE'),
(39, 'CARBOCISTEINE'),
(40, 'CARVIDELOL'),
(41, '6.25MG'),
(42, 'CEFACLOR'),
(43, 'CEFALEXIN'),
(44, 'CEFIXIME'),
(45, 'CEFUROXIME'),
(46, 'CELECOXIB'),
(47, 'CETIRIZINE'),
(48, 'CHLORAMPHENICOL'),
(49, 'CILOSTAZOL'),
(50, ''),
(51, 'CIPROFLOXACIN'),
(52, 'CLINDAMYCIN'),
(53, 'CLONIDINE'),
(54, '75MCG'),
(55, '150MCG'),
(56, 'CLOPIDOGREL'),
(57, 'CO-AMOXICLAV'),
(58, '625MG'),
(59, 'COLCHICINE'),
(60, 'DICECLOFENAC'),
(61, 'DIGOXINE'),
(62, 'DIPHENHYDRAMINE'),
(63, 'DOXYCYLINE'),
(64, 'ERYTHROMYCINE'),
(65, 'ESOMEPRAZOLE'),
(66, 'ETHAMBUTOL'),
(67, 'ETORICOXIB'),
(68, '90MG'),
(69, '120MG'),
(70, 'FEBOXUSTAT'),
(71, 'FUROSEMIDE'),
(72, 'GABAPENTIN'),
(73, 'GLIBENCLAMIDE'),
(74, '5MG'),
(75, 'GLICLAZIDE'),
(76, '60MG'),
(77, 'GLIMEPERIDE'),
(78, '4MG'),
(79, 'IBUPROFEN'),
(80, 'IRBESARTAN'),
(81, '150MG'),
(82, 'KETOPROFEN'),
(83, 'KETOROLAC'),
(84, 'LAGUNDI'),
(85, '600MG'),
(86, 'LANZOPRAZOLE'),
(87, 'LEVITIRACETAM'),
(88, 'LEVOFLOXACIN'),
(89, 'LEVOTHYROXINE'),
(90, '50MCG'),
(91, '100MCG'),
(92, 'LOPERAMIDE'),
(93, 'LORATADINE'),
(94, 'LOSARTAN'),
(95, 'METFORMIN'),
(96, 'METHYLDOPA'),
(97, 'METHYLPREDNISOLONE'),
(98, 'METOPROLOL'),
(99, 'METRONIDAZOLE'),
(100, 'MONTELUKAST'),
(101, 'NAPROXEN'),
(102, 'SODIUM'),
(103, 'NEBIVOLOL'),
(104, 'NITROFURANTOIN'),
(105, 'OFLOXACIN'),
(106, 'OMEPRAZOLE'),
(107, 'PANTOPRAZOLE'),
(108, 'PREDNISONE'),
(109, 'PREGABALIN'),
(110, 'REBAMIPIDE'),
(111, 'RIFAMPICIN'),
(112, '450MG'),
(113, 'ROSUVASTATIN'),
(114, 'SALBUTAMOL'),
(115, 'SIMVASTATIN'),
(116, 'BICARBONATE'),
(117, '650MG'),
(118, 'SPIRONOLACTONE'),
(119, 'TELMISARTAN'),
(120, '80MG'),
(121, 'TRAMADOL'),
(122, 'TRANEXAMIC'),
(123, 'TRIMETAZIDINE'),
(124, '35MG'),
(125, 'URSEODEOXYCHOLIC'),
(126, 'ACID'),
(127, 'ALGESIA'),
(128, 'TABLET'),
(129, 'ALLERKID'),
(130, '30ML'),
(131, 'DROPS'),
(132, '60ML'),
(133, 'ALLERTA'),
(134, 'ALNIX'),
(135, 'PLUS'),
(136, 'SYRUP'),
(137, 'AMBROLEX'),
(138, 'AMOCLAV'),
(139, 'AMOXIL'),
(140, 'AMVASC'),
(141, 'BE'),
(142, 'ANSIMAR'),
(143, 'ANTAMIN'),
(144, 'ANTIOX'),
(145, 'ARCALION'),
(146, 'ASCOF'),
(147, 'FORTE'),
(148, 'CAPSULE'),
(149, 'ASMALIN'),
(150, 'ASPELET'),
(151, 'AUGMENTIN'),
(152, '275MG'),
(153, 'BETALOC'),
(154, 'BIOCLAVID'),
(155, 'BIOGESIC'),
(156, '\'ORANGE\''),
(157, '\'STRAWBERRY\''),
(158, 'STRAWBERRY'),
(159, 'BISOLVON'),
(160, 'CAP'),
(161, 'TAB'),
(162, 'BONAMINE'),
(163, 'PEDIA'),
(164, 'BP'),
(165, 'NORM'),
(166, 'CALTRATE'),
(167, 'D3'),
(168, 'CARDIOSEL'),
(169, 'CATAPRES'),
(170, 'CECON'),
(171, 'CEFALIN'),
(172, 'CEFALINE'),
(173, 'CENTRUM'),
(174, 'SILVER'),
(175, 'ADVANCE'),
(176, 'CEPOREX'),
(177, 'CHLOROMYCETIN'),
(178, 'CIPROBAV'),
(179, 'CLARICORT'),
(180, 'CLARITIN'),
(181, 'CLUSIVOL'),
(182, 'CO-ALEVA'),
(183, 'CO-DIOVAN'),
(184, 'COMBANTRIN'),
(185, '125MG'),
(186, 'COMBIZAR'),
(187, 'CONCORE'),
(188, '2.5MG'),
(189, 'CONZACE'),
(190, 'DAONIL'),
(191, 'DECILONE'),
(192, 'DECOLGEN'),
(193, 'ND'),
(194, 'DIAMICRON'),
(195, 'DOLO-NEUROBION'),
(196, 'DOXIUM'),
(197, 'DULCOLAX'),
(198, 'DUOMAX'),
(199, 'DUPHASTON'),
(200, 'DUVADILAN'),
(201, '14MG'),
(202, 'DRENEX'),
(203, '3000MCG'),
(204, '750MCG'),
(205, 'ECTRIN'),
(206, 'ENERVON'),
(207, 'ACTIVE'),
(208, 'ERYTHROX'),
(209, 'EUGLOCON'),
(210, 'FIBROSINE'),
(211, 'FIXCOM-3'),
(212, 'FLUIMUCIL'),
(213, 'FORTIFER'),
(214, 'FA'),
(215, 'GAVISCON'),
(216, 'DOUBLE-ACTION'),
(217, 'SUSPENSION'),
(218, 'GLUBITOR'),
(219, 'OD'),
(220, 'GLUMET'),
(221, 'XR'),
(222, 'GLYCEROL'),
(223, 'ADULT'),
(224, 'X'),
(225, '1\'S'),
(226, 'HEMARATE'),
(227, 'HEMOSTAN'),
(228, 'HIMOX'),
(229, 'HISTACORT'),
(230, 'IBERET'),
(231, 'G'),
(232, 'FOLIC'),
(233, 'IMDUR'),
(234, 'IMMUNOMAX'),
(235, 'IMMUNOPRO'),
(236, 'IMMUNOSIN'),
(237, 'IMODIUM'),
(238, 'INDERAL'),
(239, 'INFOLOX'),
(240, 'INOFLOX'),
(241, 'ITERAX'),
(242, 'KREMIL-S'),
(243, 'LECIT-E'),
(244, 'LIFEZAR'),
(245, 'LITEC'),
(246, 'LLANOL'),
(247, 'LOMOTIL'),
(248, 'LOVISCOL'),
(249, 'MAALOX'),
(250, 'MEPTIN'),
(251, 'MICARDIS'),
(252, 'MIDOL'),
(253, 'MINIDIAB'),
(254, 'MINOCIN'),
(255, 'MORIAMIN'),
(256, 'MOTILIUM'),
(257, 'MUCOBRON'),
(258, 'MUCOSOLVAN'),
(259, 'MUCOTUSS'),
(260, 'MUSKELAX'),
(261, 'MYONAL'),
(262, 'MYRA-E'),
(263, 'MYRACOF'),
(264, 'MYRIN'),
(265, 'MYRIN-P'),
(266, 'NEUROBION'),
(267, 'NEUROGEN-E'),
(268, 'NORIZEC'),
(269, '3MG'),
(270, 'NORTEN'),
(271, 'NORVASC'),
(272, '15MG'),
(273, 'OBMAX'),
(274, 'ORADEXON'),
(275, 'PHARMATON'),
(276, 'PLASIL'),
(277, 'PLENDIL'),
(278, 'POTENCEE'),
(279, '1000MG'),
(280, 'PRED.'),
(281, 'ORGANON'),
(282, 'PROPAN'),
(283, 'W/'),
(284, 'IRON'),
(285, 'PROVERA'),
(286, 'PROVIRON'),
(287, 'QUADTAB'),
(288, 'REVALAN'),
(289, 'REVICON'),
(290, 'RIMACTIZIDE'),
(291, 'D.'),
(292, '450/400MG'),
(293, 'ROGIN-E'),
(294, 'SANGOBION'),
(295, 'SENOKOT'),
(296, 'SERC'),
(297, 'SIBELLIUM'),
(298, 'SIMECO'),
(299, 'SINUPRET'),
(300, 'SKELAN'),
(301, 'SOLMUX'),
(302, 'BRONCHO'),
(303, 'SORBIFER'),
(304, 'DURULES'),
(305, '310MG'),
(306, 'SUPRA'),
(307, 'NEURON'),
(308, 'TEMPRA'),
(309, '325MCG'),
(310, 'THERABLOC'),
(311, 'TRAJENTA'),
(312, 'TRITAB'),
(313, 'VASTAREL'),
(314, 'VIRLIX'),
(315, 'VOLTAREN'),
(316, 'XENICAL'),
(317, 'ORANGE'),
(318, '(120MG)'),
(319, '(250MG)'),
(320, 'CEELIN'),
(321, 'CHEWABLES'),
(322, '100MG/30'),
(323, '15ML'),
(324, 'GUMMIES'),
(325, '120ML'),
(326, '250ML'),
(327, 'DISUDRIN'),
(328, 'DOLAN'),
(329, '100MG/60ML'),
(330, '200MG/60ML'),
(331, 'E-ZINC'),
(332, '30S'),
(333, 'EXPEL'),
(334, '(15MG)'),
(335, 'FERLIN'),
(336, 'HYDRITE'),
(337, 'SACHET'),
(338, '2.7G'),
(339, 'APPLE'),
(340, 'BANANA'),
(341, 'ORIG'),
(342, 'LORAPED'),
(343, 'NUTRILIN'),
(344, 'NUTROPLEX'),
(345, 'RESTIME'),
(346, 'REXIDOL'),
(347, 'ZINC'),
(348, 'TIKI-TIKI'),
(349, 'TUSERAN');

-- --------------------------------------------------------

--
-- Table structure for table `training_words`
--

CREATE TABLE `training_words` (
  `id` int(11) NOT NULL,
  `words` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_words`
--

INSERT INTO `training_words` (`id`, `words`) VALUES
(1, 'alternative'),
(2, 'suggest'),
(3, 'substitute');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `tender_amount` int(11) NOT NULL,
  `date_transacted` date NOT NULL,
  `time_transacted` time NOT NULL,
  `payment_mode` varchar(256) NOT NULL,
  `transact_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `tender_amount`, `date_transacted`, `time_transacted`, `payment_mode`, `transact_by`) VALUES
(5, 15, 20, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(6, 100, 100, '2024-03-06', '00:00:00', 'Gcash', 'frontend1'),
(7, 30, 30, '2024-03-06', '00:00:00', 'Gcash', 'frontend1'),
(8, 30, 30, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(9, 30, 50, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(10, 30, 50, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(11, 30, 50, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(12, 30, 50, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(13, 80, 90, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(14, 5, 5, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(15, 5, 5, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(16, 5, 5, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(17, 5, 5, '2024-03-06', '00:00:00', 'Cash', 'frontend1'),
(18, 20, 20, '2024-03-06', '00:00:00', 'Gcash', 'frontend2'),
(19, 20, 20, '2024-03-06', '00:00:00', 'Gcash', 'frontend2'),
(20, 15, 15, '2024-03-06', '00:00:00', 'Cash', 'frontend2'),
(21, 5, 5, '2024-03-06', '00:00:00', 'Cash', 'frontend2'),
(22, 5, 20, '2024-03-09', '00:00:00', 'Cash', 'frontend1'),
(23, 20, 50, '2024-03-09', '11:14:05', 'Cash', 'frontend2'),
(24, 75, 100, '2024-03-11', '08:55:49', 'Cash', 'frontend1'),
(25, 90, 90, '2024-03-11', '09:08:31', 'Cash', 'frontend1'),
(26, 50, 50, '2024-03-11', '09:15:58', 'Cash', 'frontend1'),
(27, 86, 100, '2024-03-11', '09:33:05', 'Cash', 'frontend2'),
(28, 7, 10, '2024-03-12', '14:37:35', 'Cash', 'frontend2'),
(29, 29, 29, '2024-03-12', '22:59:59', 'Cash', 'frontend1'),
(30, 260, 260, '2024-03-12', '23:15:59', 'Cash', 'frontend1'),
(31, 312, 350, '2024-03-12', '23:17:05', 'Cash', 'frontend1'),
(32, 6, 10, '2024-04-19', '23:24:21', 'Cash', 'frontend1'),
(33, 25, 50, '2024-04-20', '11:50:34', 'Cash', 'frontend1'),
(34, 12, 100, '2024-05-14', '18:26:02', 'Cash', 'frontend1'),
(35, 24, 26, '2024-05-14', '18:27:23', 'Cash', 'frontend1'),
(36, 18, 20, '2024-05-15', '16:20:05', 'Cash', 'frontend1'),
(37, 18, 50, '2024-05-15', '16:55:09', 'Cash', 'frontend1'),
(38, 18, 100, '2024-05-15', '17:42:04', 'Cash', 'frontend2'),
(39, 60, 100, '2024-05-15', '17:50:49', 'Cash', 'frontend2'),
(40, 15, 15, '2024-05-15', '17:52:55', 'Gcash', 'frontend2'),
(41, 18, 20, '2024-05-15', '18:24:06', 'Cash', 'frontend2'),
(42, 12, 12, '2024-05-15', '18:51:49', 'Gcash', 'frontend2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_items`
--

CREATE TABLE `transactions_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions_items`
--

INSERT INTO `transactions_items` (`id`, `order_id`, `item_name`, `price`, `qty`) VALUES
(4, 5, 'erythromycin 500mg', 10, 1),
(5, 6, 'erythromycin 500mg', 10, 10),
(6, 7, 'erythromycin 500mg', 10, 3),
(7, 8, 'erythromycin 500mg', 10, 3),
(8, 9, 'erythromycin 500mg', 10, 3),
(9, 10, 'erythromycin 500mg', 10, 3),
(10, 11, 'erythromycin 500mg', 10, 3),
(11, 12, 'erythromycin 500mg', 10, 3),
(12, 13, 'biogesic 500mg', 5, 16),
(13, 14, 'saridon 250mg', 5, 1),
(14, 15, 'saridon 250mg', 5, 1),
(15, 16, 'saridon 250mg', 5, 1),
(16, 17, 'saridon 250mg', 5, 1),
(17, 18, 'saridon 250mg', 5, 4),
(18, 19, 'saridon 250mg', 5, 4),
(19, 20, 'saridon 250mg', 5, 3),
(20, 21, 'saridon 250mg', 5, 1),
(21, 22, 'saridon 250mg', 5, 1),
(22, 23, 'erythromycin 500mg', 10, 2),
(23, 24, 'saridon 250mg', 5, 15),
(24, 25, 'erythromycin 500mg', 10, 9),
(25, 26, 'saridon 250mg', 5, 10),
(26, 27, 'Loratadine 120mg', 6, 6),
(27, 27, 'biogesic 500mg', 5, 10),
(28, 28, 'Mefenamic Acid 250mg', 7, 1),
(29, 29, 'Arseflora 25ml', 10, 1),
(30, 29, 'Mefenamic Acid 250mg', 7, 2),
(31, 29, 'Neozep 250mg', 5, 1),
(32, 30, 'Drenex 30mg', 26, 10),
(33, 31, 'Drenex 30mg', 26, 12),
(34, 32, 'saridon 250mg', 6, 1),
(35, 33, 'biogesic 500mg', 5, 5),
(36, 34, 'SARIDON 250MG', 12, 1),
(37, 35, 'SARIDON 250MG', 12, 2),
(38, 36, 'ACETYLCYSTEINE 200MG', 18, 1),
(39, 37, 'ACETYLCYSTEINE 200MG', 18, 1),
(40, 38, 'ACETYLCYSTEINE 200MG', 18, 1),
(41, 39, 'ACETYLCYSTEINE 200MG', 18, 1),
(42, 39, 'ACYCLOVIR 100MG', 15, 2),
(43, 39, 'ACYCLOVIR 400MG', 12, 1),
(44, 40, 'ACYCLOVIR 100MG', 15, 1),
(45, 41, 'ACETYLCYSTEINE 200MG', 18, 1),
(46, 42, 'ACYCLOVIR 400MG', 12, 1);

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
(49, 'ACETYLCYSTEINE 200MG', 2, '2026-05-15', 'applied pharmaceutical dnt/ beta drug'),
(51, 'ACYCLOVIR 400MG', 2, '2026-05-15', 'applied pharmaceutical dnt/ beta drug'),
(58, 'ACYCLOVIR 100MG', 2, '2026-05-23', 'applied pharmaceutical dnt/ beta drug'),
(59, 'ACETYLCYSTEINE 200MG', 1, '2026-05-23', 'applied pharmaceutical dnt/ beta drug');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_items`
--
ALTER TABLE `delivered_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliver_received`
--
ALTER TABLE `deliver_received`
  ADD PRIMARY KEY (`post_trans_number`);

--
-- Indexes for table `greet_response`
--
ALTER TABLE `greet_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruction_response`
--
ALTER TABLE `instruction_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `push_orders`
--
ALTER TABLE `push_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_greetings`
--
ALTER TABLE `training_greetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_items`
--
ALTER TABLE `training_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_words`
--
ALTER TABLE `training_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_items`
--
ALTER TABLE `transactions_items`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `delivered_items`
--
ALTER TABLE `delivered_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `deliver_received`
--
ALTER TABLE `deliver_received`
  MODIFY `post_trans_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `greet_response`
--
ALTER TABLE `greet_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instruction_response`
--
ALTER TABLE `instruction_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=964;

--
-- AUTO_INCREMENT for table `push_orders`
--
ALTER TABLE `push_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `training_greetings`
--
ALTER TABLE `training_greetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `training_items`
--
ALTER TABLE `training_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `training_words`
--
ALTER TABLE `training_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `transactions_items`
--
ALTER TABLE `transactions_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouse_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

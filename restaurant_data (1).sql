-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2023 at 11:59 PM
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
-- Database: `restaurant_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `employee_ID` int(11) NOT NULL,
  `store_ID` int(11) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Employee`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`employee_ID`, `store_ID`, `position`, `Salary`) VALUES
(1, 58118, 'Manager', 60000.00),
(2, 13343, 'Cook', 35000.00),
(3, 505400, 'Server', 28000.00),
(4, 263879, 'Cashier', 30000.00),
(5, 505400, 'Cook', 35000.00),
(6, 263879, 'Server', 28000.00),
(7, 263879, 'Manager', 60000.00),
(8, 58118, 'Cook', 35000.00),
(9, 13343, 'Server', 28000.00),
(10, 560345, 'Cashier', 30000.00),
(11, 263879, 'Cook', 35000.00),
(12, 560345, 'Server', 28000.00),
(13, 505400, 'Manager', 60000.00),
(14, 58118, 'Cook', 35000.00),
(15, 263879, 'Server', 28000.00),
(16, 13343, 'Cashier', 30000.00),
(17, 263879, 'Cook', 35000.00),
(18, 688745, 'Server', 28000.00),
(19, 688745, 'Manager', 60000.00),
(20, 789123, 'Cook', 35000.00),
(21, 560345, 'Server', 28000.00),
(22, 688745, 'Cashier', 30000.00),
(23, 688745, 'Cook', 35000.00),
(24, 13343, 'Server', 28000.00),
(25, 13343, 'Manager', 60000.00),
(26, 688745, 'Cook', 35000.00),
(27, 58118, 'Server', 28000.00),
(28, 58118, 'Cashier', 30000.00),
(29, 606312, 'Cook', 35000.00),
(30, 688745, 'Server', 28000.00),
(31, 606312, 'Manager', 60000.00),
(32, 505400, 'Cook', 35000.00),
(33, 688745, 'Server', 28000.00),
(34, 560345, 'Cashier', 30000.00),
(35, 606312, 'Cook', 35000.00),
(36, 606312, 'Server', 28000.00),
(37, 58118, 'Cashier', 30000.00),
(38, 688745, 'Cook', 35000.00),
(39, 560345, 'Server', 28000.00),
(40, 560345, 'Manager', 60000.00),
(41, 799887, 'Cook', 35000.00),
(42, 799887, 'Server', 28000.00),
(43, 606312, 'Cashier', 30000.00),
(44, 276746, 'Cook', 35000.00),
(45, 799887, 'Server', 28000.00),
(46, 799887, 'Manager', 60000.00),
(47, 688745, 'Cook', 35000.00),
(48, 688745, 'Server', 28000.00),
(49, 606312, 'Cashier', 30000.00),
(50, 276746, 'Cook', 35000.00),
(51, 276746, 'Server', 28000.00),
(52, 345111, 'Manager', 60000.00),
(53, 606312, 'Cook', 35000.00),
(54, 606312, 'Server', 28000.00),
(55, 789123, 'Cashier', 30000.00),
(56, 345111, 'Cook', 35000.00),
(57, 456890, 'Server', 28000.00),
(58, 276746, 'Manager', 60000.00),
(59, 789123, 'Cook', 35000.00),
(60, 669665, 'Server', 28000.00),
(61, 799887, 'Cashier', 30000.00),
(62, 799887, 'Cook', 35000.00),
(63, 669665, 'Server', 28000.00),
(64, 669665, 'Manager', 60000.00),
(65, 669665, 'Cook', 35000.00),
(66, 345111, 'Server', 28000.00),
(67, 276746, 'Cashier', 30000.00),
(68, 456890, 'Cook', 35000.00),
(69, 669665, 'Server', 28000.00),
(70, 276746, 'Manager', 60000.00),
(71, 560345, 'Cook', 35000.00),
(72, 456890, 'Server', 28000.00),
(73, 276746, 'Cashier', 30000.00),
(74, 799887, 'Manager', 60000.00),
(75, 560345, 'Cook', 35000.00),
(76, 560345, 'Server', 28000.00),
(77, 456890, 'Cashier', 30000.00),
(78, 560345, 'Manager', 60000.00),
(79, 789123, 'Cook', 35000.00),
(80, 560345, 'Server', 28000.00),
(81, 789123, 'Cashier', 30000.00),
(82, 345111, 'Manager', 60000.00),
(83, 490972, 'Cook', 35000.00),
(84, 560345, 'Server', 28000.00),
(85, 799887, 'Cashier', 30000.00),
(86, 490972, 'Manager', 60000.00),
(87, 789123, 'Cook', 35000.00),
(88, 789123, 'Server', 28000.00),
(89, 490972, 'Cashier', 30000.00),
(90, 486166, 'Manager', 60000.00),
(91, 669665, 'Cook', 35000.00),
(92, 505400, 'Server', 28000.00),
(93, 567890, 'Cashier', 30000.00),
(94, 567890, 'Manager', 60000.00),
(95, 789123, 'Cook', 35000.00),
(96, 490972, 'Server', 28000.00),
(97, 486166, 'Cashier', 30000.00),
(98, 486166, 'Manager', 60000.00),
(99, 567890, 'Cook', 35000.00),
(100, 567890, 'Server', 28000.00),
(101, 789123, 'Cashier', 30000.00),
(102, 456890, 'Manager', 60000.00),
(103, 486166, 'Cook', 35000.00),
(104, 490972, 'Server', 28000.00),
(105, 669665, 'Manager', 60000.00),
(106, 486166, 'Cook', 35000.00),
(107, 567890, 'Server', 28000.00),
(108, 567890, 'Cashier', 30000.00),
(109, 276789, 'Manager', 60000.00),
(110, 567890, 'Cook', 35000.00),
(111, 799887, 'Server', 28000.00),
(112, 890123, 'Cashier', 30000.00),
(113, 505400, 'Manager', 60000.00),
(114, 567890, 'Cook', 35000.00),
(115, 456789, 'Server', 28000.00),
(116, 123456, 'Cashier', 30000.00),
(117, 567890, 'Manager', 60000.00),
(118, 456789, 'Cook', 35000.00),
(119, 890123, 'Server', 28000.00),
(120, 361257, 'Cashier', 30000.00),
(121, 456789, 'Manager', 60000.00),
(122, 361257, 'Cook', 35000.00),
(123, 486166, 'Server', 28000.00),
(124, 890123, 'Cashier', 30000.00),
(125, 456789, 'Manager', 60000.00),
(126, 276789, 'Cook', 35000.00),
(127, 456789, 'Server', 28000.00),
(128, 456890, 'Cashier', 30000.00),
(129, 588444, 'Manager', 60000.00),
(130, 890123, 'Cook', 35000.00),
(131, 486166, 'Server', 28000.00),
(132, 588444, 'Cashier', 30000.00),
(133, 588444, 'Manager', 60000.00),
(134, 505400, 'Cook', 35000.00),
(135, 456789, 'Server', 28000.00),
(136, 123456, 'Server', 28000.00),
(137, 588444, 'Cashier', 30000.00),
(138, 456789, 'Manager', 60000.00),
(139, 456789, 'Cook', 35000.00),
(140, 588444, 'Server', 28000.00),
(141, 123456, 'Cashier', 30000.00),
(142, 48150, 'Manager', 60000.00),
(143, 901222, 'Cook', 35000.00),
(144, 901222, 'Server', 28000.00),
(145, 48150, 'Cashier', 30000.00),
(146, 901222, 'Manager', 60000.00),
(147, 890123, 'Cook', 35000.00),
(148, 901222, 'Server', 28000.00),
(149, 456890, 'Cashier', 30000.00),
(150, 505400, 'Manager', 60000.00),
(151, 456890, 'Cook', 35000.00),
(152, 890123, 'Server', 28000.00),
(153, 588444, 'Cashier', 30000.00),
(154, 890123, 'Manager', 60000.00),
(155, 48150, 'Cook', 35000.00),
(156, 123455, 'Server', 28000.00),
(157, 456890, 'Cashier', 30000.00),
(158, 13343, 'Manager', 60000.00),
(159, 276789, 'Cook', 35000.00),
(160, 669665, 'Server', 28000.00),
(161, 890123, 'Cashier', 30000.00),
(162, 123456, 'Manager', 60000.00),
(163, 48150, 'Cook', 35000.00),
(164, 123456, 'Server', 28000.00),
(165, 669665, 'Cashier', 30000.00),
(166, 123456, 'Manager', 60000.00),
(167, 890123, 'Cook', 35000.00),
(168, 48150, 'Server', 28000.00),
(169, 80157, 'Cashier', 30000.00),
(170, 80157, 'Manager', 60000.00),
(171, 80157, 'Cook', 35000.00),
(172, 123456, 'Server', 28000.00),
(173, 456789, 'Cashier', 30000.00),
(174, 48150, 'Manager', 60000.00),
(175, 890123, 'Cook', 35000.00),
(176, 370494, 'Server', 28000.00),
(177, 64089, 'Cashier', 30000.00),
(178, 370494, 'Manager', 60000.00),
(179, 123456, 'Cook', 35000.00),
(180, 890123, 'Server', 28000.00),
(181, 64089, 'Cashier', 30000.00),
(182, 456789, 'Manager', 60000.00),
(183, 123456, 'Cook', 35000.00),
(184, 64089, 'Server', 28000.00),
(185, 48150, 'Cashier', 30000.00),
(186, 64089, 'Manager', 60000.00),
(187, 370494, 'Cook', 35000.00),
(188, 80157, 'Server', 28000.00),
(189, 276789, 'Cashier', 30000.00),
(190, 13343, 'Manager', 60000.00),
(191, 370494, 'Cook', 35000.00),
(192, 476770, 'Server', 28000.00),
(193, 901222, 'Cashier', 30000.00),
(194, 345111, 'Manager', 60000.00),
(195, 13343, 'Cook', 35000.00),
(196, 123455, 'Server', 28000.00),
(197, 901222, 'Cashier', 30000.00),
(198, 370494, 'Manager', 60000.00),
(199, 64089, 'Cook', 35000.00),
(200, 476770, 'Server', 28000.00),
(201, 123455, 'Cashier', 30000.00),
(202, 476770, 'Manager', 60000.00),
(203, 476770, 'Cook', 35000.00),
(204, 370494, 'Server', 28000.00),
(205, 276789, 'Cashier', 30000.00),
(206, 456890, 'Manager', 60000.00),
(207, 123455, 'Cook', 35000.00),
(208, 276789, 'Server', 28000.00),
(209, 456890, 'Cashier', 30000.00),
(210, 456890, 'Manager', 60000.00),
(211, 147185, 'Cook', 35000.00),
(212, 276789, 'Server', 28000.00),
(213, 123455, 'Cashier', 30000.00),
(214, 669665, 'Manager', 60000.00),
(215, 456890, 'Cook', 35000.00),
(216, 456890, 'Server', 28000.00),
(217, 345111, 'Cashier', 30000.00),
(218, 123455, 'Manager', 60000.00),
(219, 476770, 'Cook', 35000.00),
(220, 370494, 'Server', 28000.00),
(221, 890123, 'Cashier', 30000.00),
(222, 361257, 'Manager', 60000.00),
(223, 476770, 'Cook', 35000.00),
(224, 80157, 'Server', 28000.00),
(225, 476770, 'Cashier', 30000.00),
(226, 890123, 'Manager', 60000.00),
(227, 123455, 'Cook', 35000.00),
(228, 13343, 'Server', 28000.00),
(229, 345111, 'Cashier', 30000.00),
(230, 80157, 'Manager', 60000.00),
(231, 361257, 'Cook', 35000.00),
(232, 890123, 'Server', 28000.00),
(233, 370494, 'Cashier', 30000.00),
(234, 370494, 'Manager', 60000.00),
(235, 361257, 'Cook', 35000.00),
(236, 80157, 'Server', 28000.00),
(237, 13343, 'Cashier', 30000.00),
(238, 123455, 'Manager', 60000.00),
(239, 361257, 'Cook', 35000.00),
(240, 123455, 'Server', 28000.00),
(241, 123455, 'Cashier', 30000.00),
(242, 80157, 'Manager', 60000.00),
(243, 361257, 'Cook', 35000.00),
(244, 345111, 'Server', 28000.00),
(245, 147185, 'Server', 28000.00),
(246, 396779, 'Cashier', 30000.00),
(247, 396779, 'Manager', 60000.00),
(248, 147185, 'Cook', 35000.00),
(249, 678910, 'Server', 28000.00),
(250, 147185, 'Cashier', 30000.00),
(251, 678910, 'Manager', 60000.00),
(252, 678910, 'Cook', 35000.00),
(253, 678910, 'Server', 28000.00),
(254, 147185, 'Cashier', 30000.00),
(255, 147185, 'Manager', 60000.00),
(256, 678910, 'Cook', 35000.00),
(257, 147185, 'Server', 28000.00),
(258, 678910, 'Cashier', 30000.00),
(259, 147185, 'Manager', 60000.00),
(260, 678910, 'Cook', 35000.00),
(261, 678910, 'Server', 28000.00),
(262, 678910, 'Cashier', 30000.00),
(263, 147185, 'Manager', 60000.00),
(264, 396779, 'Cook', 35000.00),
(265, 678910, 'Server', 28000.00),
(266, 678910, 'Cook', 35000.00),
(267, 678910, 'Manager', 35000.00),
(268, 678910, 'Cashier', 35000.00);

-- --------------------------------------------------------

--
-- Table structure for table `Expenses`
--

CREATE TABLE `Expenses` (
  `expense_ID` int(11) NOT NULL,
  `location_rent` decimal(10,2) DEFAULT NULL,
  `water_electricity_bill` decimal(10,2) DEFAULT NULL,
  `production_cost` decimal(10,2) DEFAULT NULL,
  `maintenance_cost` decimal(10,2) DEFAULT NULL,
  `staff_cost` decimal(10,2) DEFAULT NULL,
  `packaging_cost` decimal(10,2) DEFAULT NULL,
  `store_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Expenses`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Expenses`
--

INSERT INTO `Expenses` (`expense_ID`, `location_rent`, `water_electricity_bill`, `production_cost`, `maintenance_cost`, `staff_cost`, `packaging_cost`, `store_ID`) VALUES
(1, 4000.00, 1020.00, 5000.00, 3000.00, 7000.00, 2000.00, 58118),
(2, 3000.00, 1100.00, 3500.00, 2600.00, 6500.00, 5500.00, 276746),
(3, 2000.00, 1320.00, 3000.00, 2500.00, 5800.00, 6000.00, 890123),
(4, 5000.00, 2020.00, 6000.00, 2000.00, 7000.00, 4000.00, 486166),
(5, 3000.00, 1500.00, 4000.00, 3600.00, 6000.00, 2000.00, 48150),
(6, 4000.00, 1450.00, 5000.00, 3200.00, 8000.00, 2000.00, 345111),
(7, 2500.00, 900.00, 3500.00, 4500.00, 5500.00, 6500.00, 80157),
(8, 3000.00, 950.00, 2000.00, 4000.00, 7000.00, 6000.00, 13343),
(9, 4000.00, 1890.00, 5000.00, 3000.00, 6000.00, 2000.00, 361257),
(10, 3000.00, 1550.00, 3500.00, 4500.00, 7500.00, 6500.00, 276789),
(11, 3000.00, 1230.00, 4000.00, 3100.00, 8000.00, 2000.00, 505400),
(12, 5000.00, 1180.00, 6000.00, 2100.00, 6500.00, 4000.00, 370494),
(13, 3000.00, 1280.00, 4000.00, 3000.00, 6700.00, 2000.00, 123455),
(14, 3500.00, 1125.00, 2500.00, 3500.00, 5900.00, 6500.00, 123456),
(15, 2500.00, 1145.00, 3500.00, 2500.00, 8900.00, 6500.00, 567890),
(16, 2000.00, 1375.00, 3000.00, 2000.00, 9500.00, 6000.00, 456789),
(17, 4000.00, 2000.00, 6000.00, 3000.00, 5000.00, 7000.00, 64089),
(18, 3500.00, 1500.00, 5500.00, 2500.00, 9000.00, 6500.00, 476770),
(19, 2000.00, 3000.00, 4000.00, 4300.00, 8000.00, 5000.00, 901222),
(20, 5000.00, 2000.00, 2000.00, 4000.00, 9000.00, 4000.00, 606312),
(21, 3000.00, 3050.00, 5000.00, 5000.00, 8800.00, 7000.00, 688745),
(22, 4000.00, 2000.00, 6000.00, 3000.00, 6700.00, 7000.00, 789123),
(23, 3500.00, 3500.00, 5500.00, 2500.00, 9000.00, 6500.00, 799887),
(24, 2000.00, 2000.00, 4000.00, 4000.00, 9500.00, 5000.00, 588444),
(25, 5000.00, 2300.00, 2000.00, 4000.00, 10000.00, 4000.00, 456890),
(26, 3000.00, 2700.00, 5000.00, 3100.00, 7000.00, 7000.00, 263879),
(27, 4000.00, 2300.00, 6000.00, 3000.00, 9000.00, 7000.00, 560345),
(28, 3500.00, 3500.00, 5500.00, 2500.00, 8500.00, 6500.00, 490972),
(29, 2000.00, 3200.00, 4000.00, 3400.00, 5000.00, 5000.00, 669665),
(30, 5000.00, 2200.00, 2000.00, 4000.00, 6000.00, 4000.00, 147185),
(31, 3000.00, 1700.00, 5000.00, 4300.00, 7500.00, 7000.00, 678910),
(32, 4000.00, 1900.00, 3000.00, 2400.00, 6500.00, 5000.00, 396799);

-- --------------------------------------------------------

--
-- Table structure for table `Income`
--

CREATE TABLE `Income` (
  `income_ID` int(11) NOT NULL,
  `selling_income` decimal(10,2) DEFAULT NULL,
  `store_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Income`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Income`
--

INSERT INTO `Income` (`income_ID`, `selling_income`, `store_ID`) VALUES
(101, 1000.00, 58118),
(102, 2300.00, 276746),
(103, 3000.00, 890123),
(104, 2000.00, 486166),
(105, 2500.00, 48150),
(106, 3700.00, 345111),
(107, 2300.00, 80157),
(108, 3000.00, 13343),
(109, 1500.00, 361257),
(1010, 2200.00, 276789),
(1011, 1400.00, 505400),
(1012, 2500.00, 370494),
(1013, 20500.00, 123455),
(1014, 3500.00, 123456),
(1015, 3100.00, 567890),
(1016, 2400.00, 456789),
(1017, 4200.00, 64089),
(1018, 3500.00, 476770),
(1019, 2000.00, 901222),
(1020, 5000.00, 606312),
(1021, 3300.00, 688745),
(1022, 4100.00, 789123),
(1023, 3500.00, 799887),
(1024, 2500.00, 588444),
(1025, 5500.00, 456890),
(1026, 3300.00, 263879),
(1027, 4000.00, 560345),
(1028, 3400.00, 490972),
(1029, 2500.00, 669665),
(1030, 5700.00, 147185),
(1031, 4200.00, 678910),
(1032, 3300.00, 396799);

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE `Inventory` (
  `stock_ID` int(11) NOT NULL,
  `stock_name` varchar(255) DEFAULT NULL,
  `stock_Amount` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Inventory`:
--

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`stock_ID`, `stock_name`, `stock_Amount`, `cost`) VALUES
(1, 'Mozzarella', 400.00, 450.00),
(2, 'Cheddar', 350.00, 420.00),
(3, 'Pizza Sauce', 300.00, 80.00),
(4, 'Pepperoni', 350.00, 300.00),
(5, 'Pizza boxes', 1000.00, 200.00),
(6, 'Parmesan', 280.00, 250.00),
(7, 'Alfredo Sauce', 220.00, 80.00),
(8, 'Mushrooms', 320.00, 70.00),
(9, 'Bacon', 500.00, 350.00),
(10, 'Onions', 600.00, 70.00),
(11, 'Pizza dough', 850.00, 100.00),
(12, 'Garlic Powder', 500.00, 60.00),
(13, 'Spinach', 300.00, 70.00),
(14, 'Olives', 580.00, 85.00),
(15, 'Tomatoes', 800.00, 95.00),
(16, 'Peppers', 250.00, 80.00),
(17, 'Oregano', 300.00, 39.00),
(18, 'Chicken', 520.00, 680.00),
(19, 'Pineapple', 390.00, 240.00),
(20, 'Yeast', 550.00, 50.00),
(21, 'Bottled water', 800.00, 70.00),
(22, 'Flour', 600.00, 75.00),
(23, 'Basil', 420.00, 130.00),
(24, 'Ham', 750.00, 500.00),
(25, 'Soft drinks', 650.00, 300.00),
(26, 'Pizza ribbons', 550.00, 70.00),
(27, ' Marinara', 380.00, 60.00),
(28, ' Sausage', 500.00, 55.00),
(29, 'Pineapple', 320.00, 85.00),
(30, 'Shrimp', 780.00, 95.00),
(31, 'bottled water', 590.00, 380.00),
(32, 'pickle', 270.00, 70.00),
(33, 'black olives', 800.00, 270.00),
(34, 'Pizza Black Dough', 480.00, 80.00),
(35, 'sweet potato', 900.00, 480.00);

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `item_ID` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `item_category` varchar(50) DEFAULT NULL,
  `item_size` varchar(20) DEFAULT NULL,
  `ingredients_list` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Items`:
--

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`item_ID`, `item_name`, `price`, `item_category`, `item_size`, `ingredients_list`) VALUES
(1, 'Margherita Pizza', 10.99, 'Classic', 'Small', 'Tomato Sauce, Fresh Mozzarella, Basil, Olive Oil'),
(2, 'Margherita Pizza', 14.99, 'Classic', 'Medium', 'Tomato Sauce, Fresh Mozzarella, Basil, Olive Oil'),
(3, 'Margherita Pizza', 17.99, 'Classic', 'Large', 'Tomato Sauce, Fresh Mozzarella, Basil, Olive Oil'),
(4, 'Margherita Pizza', 20.99, 'Classic', 'Extra Large', 'Tomato Sauce, Fresh Mozzarella, Basil, Olive Oil'),
(5, 'Pepperoni Pizza', 12.99, 'Classic', 'Small', 'Tomato Sauce, Mozzarella, Pepperoni'),
(6, 'Pepperoni Pizza', 16.99, 'Classic', 'Medium', 'Tomato Sauce, Mozzarella, Pepperoni'),
(7, 'Pepperoni Pizza', 19.99, 'Classic', 'Large', 'Tomato Sauce, Mozzarella, Pepperoni'),
(8, 'Pepperoni Pizza', 23.99, 'Classic', 'Extra Large', 'Tomato Sauce, Mozzarella, Pepperoni'),
(9, 'Hawaiian Pizza', 11.99, 'Classic', 'Small', 'Tomato Sauce, Mozzarella, Pineapple, Ham'),
(10, 'Hawaiian Pizza', 15.99, 'Classic', 'Medium', 'Tomato Sauce, Mozzarella, Pineapple, Ham'),
(11, 'Hawaiian Pizza', 18.99, 'Classic', 'Large', 'Tomato Sauce, Mozzarella, Pineapple, Ham'),
(12, 'Hawaiian Pizza', 23.99, 'Classic', 'Extra Large', 'Tomato Sauce, Mozzarella, Pineapple, Ham'),
(13, 'Meat Lover\'s Pizza', 13.99, 'Classic', 'Small', 'Tomato Sauce, Mozzarella, Sausage, Bacon, Pepperoni'),
(14, 'Meat Lover\'s Pizza', 18.99, 'Classic', 'Medium', 'Tomato Sauce, Mozzarella, Sausage, Bacon, Pepperoni'),
(15, 'Meat Lover\'s Pizza', 21.99, 'Classic', 'Large', 'Tomato Sauce, Mozzarella, Sausage, Bacon, Pepperoni'),
(16, 'Meat Lover\'s Pizza', 25.99, 'Classic', 'Extra Large', 'Tomato Sauce, Mozzarella, Sausage, Bacon, Pepperoni'),
(17, 'Veggie Pizza', 11.99, 'Vegetarian', 'Small', 'Tomato Sauce, Mozzarella, Mushrooms, Bell Peppers, Onions, Olives'),
(18, 'Veggie Pizza', 15.99, 'Vegetarian', 'Medium', 'Tomato Sauce, Mozzarella, Mushrooms, Bell Peppers, Onions, Olives'),
(19, 'Veggie Pizza', 18.99, 'Vegetarian', 'Large', 'Tomato Sauce, Mozzarella, Mushrooms, Bell Peppers, Onions, Olives'),
(20, 'Veggie Pizza', 22.99, 'Vegetarian', 'Extra Large', 'Tomato Sauce, Mozzarella, Mushrooms, Bell Peppers, Onions, Olives'),
(21, 'BBQ Chicken Pizza', 12.99, 'Specialty', 'Small', 'BBQ Sauce, Mozzarella, Grilled Chicken, Red Onions'),
(22, 'BBQ Chicken Pizza', 16.99, 'Specialty', 'Medium', 'BBQ Sauce, Mozzarella, Grilled Chicken, Red Onions'),
(23, 'BBQ Chicken Pizza', 19.99, 'Specialty', 'Large', 'BBQ Sauce, Mozzarella, Grilled Chicken, Red Onions'),
(24, 'BBQ Chicken Pizza', 23.99, 'Specialty', 'Extra Large', 'BBQ Sauce, Mozzarella, Grilled Chicken, Red Onions'),
(25, 'Buffalo Chicken Pizza', 12.99, 'Specialty', 'Small', 'Buffalo Sauce, Mozzarella, Grilled Chicken, Blue Cheese'),
(26, 'Buffalo Chicken Pizza', 16.99, 'Specialty', 'Medium', 'Buffalo Sauce, Mozzarella, Grilled Chicken, Blue Cheese'),
(27, 'Buffalo Chicken Pizza', 19.99, 'Specialty', 'Large', 'Buffalo Sauce, Mozzarella, Grilled Chicken, Blue Cheese'),
(28, 'Buffalo Chicken Pizza', 23.99, 'Specialty', 'Extra Large', 'Buffalo Sauce, Mozzarella, Grilled Chicken, Blue Cheese'),
(29, 'Sicilian Pizza', 11.99, 'Vegetarian', 'Small', 'Tomato Sauce, Mozzarella'),
(30, 'Sicilian Pizza', 15.99, 'Vegetarian', 'Medium', 'Tomato Sauce, Mozzarella'),
(31, 'Sicilian Pizza', 18.99, 'Vegetarian', 'Large', 'Tomato Sauce, Mozzarella'),
(32, 'Sicilian Pizza', 22.99, 'Vegetarian', 'Extra Large', 'Tomato Sauce, Mozzarella'),
(33, 'Oxtail Pizza', 12.99, 'Specialty', 'Small', 'Tomato Sauce, Mozzarella, Oxtail'),
(34, 'Oxtail Pizza', 16.99, 'Specialty', 'Medium', 'Tomato Sauce, Mozzarella, Oxtail'),
(35, 'Oxtail Pizza', 19.99, 'Specialty', 'Large', 'Tomato Sauce, Mozzarella, Oxtail'),
(36, 'Oxtail Pizza', 23.99, 'Specialty', 'Extra Large', 'Tomato Sauce, Mozzarella, Oxtail');

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Login`:
--

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`Username`, `Password`) VALUES
('admin777', 'secretp@ss'),
('foodie_88', 'yumyum@88'),
('jane_smith', 'P@ssw0rd!23'),
('john_doe', 'DoeJohn#1'),
('manager2023', 'm@nag3rPwd'),
('newuser_42', 'myP@$$word!'),
('pizzaLover', 'delicious123'),
('test_user', 'testing321'),
('user123', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `order_ID` int(11) NOT NULL,
  `store_ID` int(11) DEFAULT NULL,
  `order_datetime` datetime NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Orders`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`order_ID`, `store_ID`, `order_datetime`, `total_price`) VALUES
(1, 396799, '2023-11-12 22:46:25', 25.99),
(2, 276746, '2023-04-26 03:57:19', 31.75),
(3, 890123, '2023-08-12 00:57:56', 42.50),
(4, 486166, '2023-12-02 01:43:53', 19.99),
(5, 48150, '2023-04-03 02:18:04', 35.20),
(6, 345111, '2023-09-18 01:09:59', 28.60),
(7, 80157, '2023-06-05 01:03:03', 18.75),
(8, 13343, '2023-11-15 21:36:43', 20.99),
(9, 361257, '2023-11-21 02:59:19', 15.80),
(10, 276789, '2023-06-19 00:48:56', 23.45),
(11, 505400, '2023-06-04 02:36:13', 27.60),
(12, 370494, '2023-07-05 23:43:54', 30.25),
(13, 123455, '2023-06-18 23:56:54', 22.30),
(14, 123456, '2023-10-24 00:33:20', 32.15),
(15, 567890, '2023-12-04 22:01:04', 29.80),
(16, 456789, '2023-01-28 03:04:33', 37.45),
(17, 456890, '2023-09-18 23:38:01', 24.99),
(18, 476770, '2023-12-17 02:44:49', 18.60),
(19, 901222, '2023-06-18 22:08:49', 26.20),
(20, 606312, '2023-10-22 01:26:01', 33.80),
(21, 688745, '2023-02-02 00:00:31', 21.99),
(22, 789123, '2023-07-02 00:36:19', 29.10),
(23, 799887, '2023-05-20 00:42:30', 18.90),
(24, 588444, '2023-08-10 00:07:01', 24.75),
(25, 456890, '2023-08-25 22:26:07', 30.60),
(26, 58118, '2023-08-10 00:51:31', 17.99),
(27, 276746, '2023-11-20 01:24:35', 19.50),
(28, 890123, '2023-06-19 00:48:56', 22.75),
(29, 486166, '2023-06-18 22:08:49', 18.25),
(30, 48150, '2023-10-24 00:33:20', 23.99),
(31, 345111, '2023-08-25 22:26:07', 20.50),
(32, 80157, '2023-12-23 22:35:11', 21.25),
(33, 456890, '2023-08-10 00:51:31', 18.99),
(34, 361257, '2023-11-20 01:24:35', 25.50),
(35, 276789, '2023-06-19 00:48:56', 28.75),
(36, 505400, '2023-06-18 22:08:49', 22.25),
(37, 370494, '2023-10-24 00:33:20', 29.99),
(38, 396799, '2023-08-25 22:26:07', 24.50),
(39, 123456, '2023-12-23 22:35:11', 26.25),
(40, 567890, '2023-08-10 00:51:31', 20.99),
(41, 456789, '2023-11-20 01:24:35', 23.50),
(42, 456789, '2023-06-19 00:48:56', 22.75),
(43, 476770, '2023-06-18 22:08:49', 26.25),
(44, 901222, '2023-10-24 00:33:20', 25.99),
(45, 606312, '2023-08-25 22:26:07', 21.50),
(46, 688745, '2023-12-23 22:35:11', 29.25),
(47, 789123, '2023-08-10 00:51:31', 27.99),
(48, 799887, '2023-11-20 01:24:35', 24.50),
(49, 588444, '2023-06-19 00:48:56', 32.75),
(50, 456890, '2023-11-04 08:00:00', 22.25),
(51, 263879, '2023-11-03 09:15:00', 24.50),
(52, 560345, '2023-11-02 10:30:00', 27.99),
(53, 490972, '2023-11-01 11:45:00', 30.25),
(54, 669665, '2023-10-31 12:00:00', 32.75),
(55, 147185, '2023-10-30 13:30:00', 35.50),
(56, 678910, '2023-10-29 14:45:00', 17.25),
(57, 13343, '2023-10-28 16:00:00', 19.99),
(58, 361257, '2023-10-27 17:15:00', 22.50),
(59, 276789, '2023-10-26 18:30:00', 25.25),
(60, 505400, '2023-10-25 19:45:00', 28.99),
(61, 370494, '2023-10-24 20:00:00', 30.50),
(62, 123455, '2023-10-23 21:30:00', 32.25),
(63, 123456, '2023-10-22 22:45:00', 34.99),
(64, 567890, '2023-10-21 23:00:00', 17.50),
(65, 456789, '2023-10-20 00:15:00', 20.25),
(66, 147185, '2023-10-19 01:30:00', 23.99),
(67, 560345, '2023-10-18 02:45:00', 25.50),
(68, 901222, '2023-10-17 04:00:00', 27.25),
(69, 606312, '2023-10-16 05:15:00', 29.99),
(70, 688745, '2023-10-15 06:30:00', 32.50),
(71, 789123, '2023-10-14 07:45:00', 34.25),
(72, 799887, '2023-10-13 09:00:00', 17.99),
(73, 588444, '2023-10-12 10:15:00', 19.50),
(74, 456890, '2023-10-11 11:30:00', 21.25),
(75, 263879, '2023-10-10 12:45:00', 24.99),
(76, 490972, '2023-07-15 10:30:00', 23.50),
(77, 688745, '2023-05-20 15:45:00', 27.25),
(78, 456789, '2023-02-11 08:00:00', 31.75),
(79, 560345, '2023-04-29 14:15:00', 34.25),
(80, 123456, '2023-01-18 11:30:00', 29.00),
(81, 345111, '2023-07-01 09:45:00', 26.50),
(82, 276789, '2023-09-07 13:00:00', 18.75),
(83, 567890, '2023-06-10 16:15:00', 20.25),
(84, 789123, '2023-10-24 11:30:00', 22.99),
(85, 476770, '2023-12-05 08:00:00', 28.00),
(86, 606312, '2023-08-15 14:45:00', 30.50),
(87, 263879, '2023-03-30 09:00:00', 33.00),
(88, 80157, '2023-06-18 15:30:00', 35.50),
(89, 505400, '2023-11-21 11:15:00', 19.75),
(90, 123455, '2023-09-04 16:45:00', 21.25),
(91, 678910, '2023-07-30 10:00:00', 24.99),
(92, 490972, '2023-05-09 12:15:00', 27.50),
(93, 669665, '2023-12-10 08:30:00', 29.25),
(94, 370494, '2023-02-03 13:45:00', 33.99),
(95, 901222, '2023-07-26 16:00:00', 17.25),
(96, 263879, '2023-11-29 11:15:00', 20.99),
(97, 799887, '2023-04-14 15:30:00', 24.50),
(98, 345111, '2023-09-16 10:45:00', 27.25),
(99, 678910, '2023-10-01 13:00:00', 30.75),
(100, 560345, '2023-01-20 08:15:00', 29.50),
(101, 58118, '2023-11-01 08:30:00', 50.00),
(102, 276746, '2023-11-01 09:15:00', 75.00),
(103, 890123, '2023-11-02 10:00:00', 100.00),
(104, 486166, '2023-11-02 11:20:00', 55.00),
(105, 48150, '2023-11-03 12:45:00', 120.00),
(106, 345111, '2023-11-03 13:30:00', 85.00),
(107, 80157, '2023-11-04 14:10:00', 95.00),
(108, 13343, '2023-11-04 15:00:00', 70.00),
(109, 361257, '2023-11-05 16:20:00', 130.00),
(110, 276789, '2023-11-05 17:15:00', 45.00),
(111, 505400, '2023-11-06 18:00:00', 110.00),
(112, 370494, '2023-11-06 19:30:00', 65.00),
(113, 123455, '2023-11-07 20:40:00', 80.00),
(114, 123456, '2023-11-07 21:20:00', 55.00),
(115, 567890, '2023-11-08 22:00:00', 70.00),
(116, 456789, '2023-11-08 22:45:00', 90.00),
(117, 64089, '2023-11-09 23:10:00', 75.00),
(118, 476770, '2023-11-09 23:50:00', 100.00),
(119, 901222, '2023-11-10 08:30:00', 85.00),
(120, 606312, '2023-11-10 09:00:00', 60.00),
(121, 688745, '2023-11-11 09:45:00', 95.00),
(122, 789123, '2023-11-11 10:30:00', 120.00),
(123, 799887, '2023-11-12 11:00:00', 110.00),
(124, 588444, '2023-11-12 11:45:00', 70.00),
(125, 456890, '2023-11-13 12:20:00', 130.00),
(126, 263879, '2023-11-13 13:00:00', 50.00),
(127, 560345, '2023-11-14 14:30:00', 95.00),
(128, 490972, '2023-11-14 15:00:00', 85.00),
(129, 669665, '2023-11-15 16:10:00', 105.00),
(130, 147185, '2023-11-15 17:00:00', 65.00),
(131, 678910, '2023-10-01 08:30:00', 75.00),
(132, 396799, '2023-10-02 09:15:00', 100.00),
(133, 58118, '2023-10-03 10:00:00', 55.00),
(134, 276746, '2023-10-04 11:20:00', 120.00),
(135, 890123, '2023-10-05 12:45:00', 85.00),
(136, 486166, '2023-10-06 13:30:00', 95.00),
(137, 48150, '2023-10-07 14:10:00', 70.00),
(138, 345111, '2023-10-08 15:00:00', 110.00),
(139, 80157, '2023-10-09 16:20:00', 60.00),
(140, 13343, '2023-10-10 17:15:00', 75.00),
(141, 361257, '2023-10-11 18:00:00', 90.00),
(142, 276789, '2023-10-12 19:30:00', 100.00),
(143, 505400, '2023-10-13 20:40:00', 85.00),
(144, 370494, '2023-10-14 21:20:00', 65.00),
(145, 123455, '2023-10-15 22:00:00', 70.00),
(146, 123456, '2023-10-16 22:45:00', 115.00),
(147, 567890, '2023-10-17 23:10:00', 80.00),
(148, 456789, '2023-10-18 23:50:00', 65.00),
(149, 64089, '2023-10-19 08:30:00', 105.00),
(150, 476770, '2023-10-20 09:00:00', 75.00),
(151, 901222, '2023-10-21 09:45:00', 95.00),
(152, 606312, '2023-10-22 10:30:00', 85.00),
(153, 688745, '2023-10-23 11:00:00', 110.00),
(154, 789123, '2023-10-24 11:45:00', 120.00),
(155, 799887, '2023-10-25 12:20:00', 100.00),
(156, 588444, '2023-10-26 13:00:00', 90.00),
(157, 456890, '2023-10-27 14:30:00', 70.00),
(158, 263879, '2023-10-28 15:00:00', 115.00),
(159, 560345, '2023-10-29 16:10:00', 80.00),
(160, 490972, '2023-10-30 17:00:00', 75.00),
(161, 669665, '2023-10-31 08:00:00', 80.00),
(162, 147185, '2023-10-31 09:15:00', 95.00),
(163, 678910, '2023-10-30 10:30:00', 70.00),
(164, 396799, '2023-10-29 11:45:00', 105.00),
(165, 58118, '2023-10-28 12:00:00', 100.00),
(166, 276746, '2023-10-27 13:30:00', 90.00),
(167, 890123, '2023-10-26 14:45:00', 85.00),
(168, 486166, '2023-10-25 15:15:00', 110.00),
(169, 48150, '2023-10-24 16:30:00', 75.00),
(170, 345111, '2023-10-23 17:45:00', 95.00),
(171, 80157, '2023-10-22 18:00:00', 85.00),
(172, 13343, '2023-10-21 19:30:00', 100.00),
(173, 361257, '2023-10-20 20:45:00', 70.00),
(174, 276789, '2023-10-19 21:15:00', 65.00),
(175, 505400, '2023-10-18 22:30:00', 120.00),
(176, 370494, '2023-10-17 23:45:00', 75.00),
(177, 123455, '2023-10-16 09:00:00', 80.00),
(178, 123456, '2023-10-15 10:15:00', 110.00),
(179, 567890, '2023-10-14 11:30:00', 95.00),
(180, 456789, '2023-10-13 12:45:00', 60.00),
(181, 64089, '2023-10-12 13:00:00', 70.00),
(182, 476770, '2023-10-11 14:30:00', 90.00),
(183, 901222, '2023-10-10 15:45:00', 115.00),
(184, 606312, '2023-10-09 16:00:00', 85.00),
(185, 688745, '2023-10-08 17:30:00', 105.00),
(186, 789123, '2023-10-07 18:45:00', 75.00),
(187, 799887, '2023-10-06 20:00:00', 100.00),
(188, 588444, '2023-10-05 21:15:00', 80.00),
(189, 456890, '2023-10-04 22:30:00', 95.00),
(190, 263879, '2023-10-03 23:45:00', 110.00),
(191, 560345, '2023-10-02 08:00:00', 85.00),
(192, 490972, '2023-10-01 09:15:00', 70.00),
(193, 669665, '2023-10-01 08:00:00', 90.00),
(194, 147185, '2023-10-02 09:15:00', 85.00),
(195, 678910, '2023-10-03 10:30:00', 100.00),
(196, 396799, '2023-10-04 11:45:00', 75.00),
(197, 58118, '2023-10-05 12:00:00', 110.00),
(198, 276746, '2023-10-06 13:30:00', 95.00),
(199, 890123, '2023-10-07 14:45:00', 120.00),
(200, 486166, '2023-10-08 15:15:00', 80.00);

-- --------------------------------------------------------

--
-- Table structure for table `Order_Items`
--

CREATE TABLE `Order_Items` (
  `order_ID` int(11) DEFAULT NULL,
  `item_ID` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Order_Items`:
--   `Order_ID`
--       `Orders` -> `Order_ID`
--   `Item_ID`
--       `Items` -> `Item_ID`
--

--
-- Dumping data for table `Order_Items`
--

INSERT INTO `Order_Items` (`order_ID`, `item_ID`, `amount`) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 7),
(4, 4, 2),
(5, 5, 6),
(6, 6, 4),
(7, 7, 8),
(8, 8, 3),
(9, 9, 5),
(10, 10, 4),
(11, 11, 6),
(12, 12, 2),
(13, 13, 7),
(14, 14, 5),
(15, 15, 3),
(16, 16, 4),
(17, 17, 6),
(18, 18, 8),
(19, 19, 2),
(20, 20, 5),
(21, 21, 7),
(22, 22, 4),
(23, 23, 6),
(24, 24, 3),
(25, 25, 5),
(26, 26, 8),
(27, 27, 4),
(28, 28, 2),
(29, 29, 6),
(30, 30, 7),
(31, 31, 3),
(32, 32, 5),
(33, 33, 4),
(34, 34, 6),
(35, 35, 7),
(36, 36, 5),
(37, 1, 2),
(38, 2, 5),
(39, 3, 4),
(40, 4, 6),
(41, 5, 7),
(42, 6, 3),
(43, 7, 8),
(44, 8, 5),
(45, 9, 4),
(46, 10, 6),
(47, 11, 3),
(48, 12, 2),
(49, 13, 7),
(50, 14, 5),
(51, 15, 3),
(52, 8, 4),
(53, 28, 2),
(54, 1, 5),
(55, 20, 1),
(56, 6, 3),
(57, 30, 5),
(58, 13, 2),
(59, 7, 4),
(60, 17, 1),
(61, 29, 5),
(62, 24, 3),
(63, 35, 2),
(64, 11, 4),
(65, 25, 1),
(66, 10, 3),
(67, 18, 5),
(68, 36, 2),
(69, 2, 4),
(70, 19, 1),
(71, 12, 5),
(72, 31, 3),
(73, 4, 2),
(74, 22, 4),
(75, 3, 1),
(76, 16, 5),
(77, 32, 3),
(78, 14, 4),
(79, 23, 2),
(80, 5, 5),
(81, 21, 1),
(82, 33, 3),
(83, 9, 4),
(84, 34, 1),
(85, 26, 5),
(86, 27, 3),
(87, 30, 4),
(88, 17, 2),
(89, 29, 1),
(90, 28, 5),
(91, 11, 3),
(92, 9, 4),
(93, 2, 2),
(94, 20, 5),
(95, 23, 1),
(96, 15, 3),
(97, 34, 4),
(98, 36, 2),
(99, 27, 5),
(100, 18, 1),
(101, 15, 3),
(102, 8, 4),
(103, 28, 2),
(104, 1, 5),
(105, 20, 1),
(106, 6, 3),
(107, 30, 5),
(108, 13, 2),
(109, 7, 4),
(110, 17, 1),
(111, 29, 5),
(112, 24, 3),
(113, 35, 2),
(114, 11, 4),
(115, 25, 1),
(116, 10, 3),
(117, 18, 5),
(118, 36, 2),
(119, 2, 4),
(120, 19, 1),
(121, 12, 5),
(122, 31, 3),
(123, 4, 2),
(124, 22, 4),
(125, 3, 1),
(126, 16, 5),
(127, 32, 3),
(128, 14, 4),
(129, 23, 2),
(130, 5, 5),
(131, 21, 1),
(132, 33, 3),
(133, 9, 4),
(134, 34, 1),
(135, 26, 5),
(136, 27, 3),
(137, 36, 4),
(138, 1, 2),
(139, 7, 3),
(140, 11, 4),
(141, 14, 1),
(142, 18, 5),
(143, 21, 3),
(144, 25, 4),
(145, 29, 2),
(146, 32, 5),
(147, 35, 1),
(148, 3, 3),
(149, 8, 4),
(150, 12, 2),
(151, 1, 3),
(152, 6, 4),
(153, 11, 2),
(154, 16, 5),
(155, 21, 1),
(156, 26, 3),
(157, 31, 5),
(158, 36, 2),
(159, 4, 4),
(160, 9, 1),
(161, 14, 5),
(162, 19, 3),
(163, 24, 2),
(164, 29, 4),
(165, 34, 1),
(166, 2, 3),
(167, 7, 5),
(168, 12, 2),
(169, 17, 4),
(170, 22, 1),
(171, 27, 5),
(172, 32, 3),
(173, 35, 2),
(174, 3, 4),
(175, 8, 1),
(176, 13, 5),
(177, 18, 3),
(178, 23, 2),
(179, 28, 4),
(180, 33, 1),
(181, 1, 3),
(182, 6, 4),
(183, 11, 2),
(184, 16, 5),
(185, 21, 1),
(186, 26, 3),
(187, 31, 5),
(188, 36, 2),
(189, 4, 4),
(190, 9, 1),
(191, 14, 5),
(192, 19, 3),
(193, 24, 2),
(194, 29, 4),
(195, 34, 1),
(196, 2, 3),
(197, 7, 5),
(198, 12, 2),
(199, 17, 4),
(200, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Reviews`
--

CREATE TABLE `Reviews` (
  `review_ID` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `store_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Reviews`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Reviews`
--

INSERT INTO `Reviews` (`review_ID`, `ranking`, `comments`, `store_ID`) VALUES
(1, 4, 'Great selection of pizza toppings!', 688745),
(2, 5, 'Best New York-style pizza!', 456789),
(3, 3, 'Crust was too thick for my taste.', 64089),
(4, 4, 'Amazing wood-fired pizza!', 476770),
(5, 5, 'Delicious thin-crust pizza!', 606312),
(6, 2, 'Pizza arrived cold and soggy.', 890123),
(7, 4, 'Quality ingredients and good flavors.', 456789),
(8, 5, 'Authentic Italian pizza taste.', 688745),
(9, 4, 'Consistently good quality.', 799887),
(10, 3, 'Would prefer more cheese on the pizza.', 456789),
(11, 5, 'Excellent service and great pizza!', 476770),
(12, 4, 'Decent variety of pizza flavors.', 64089),
(13, 5, 'Flavorful and well-cooked pizza.', 799887),
(14, 3, 'Good pizza, slightly overpriced.', 606312),
(15, 4, 'Good spot for pizza night.', 456789),
(16, 5, 'Fast delivery and delicious pizza.', 64089),
(17, 2, 'Disappointed with the pizza quality.', 799887),
(18, 4, 'Good deals on different pizza sizes.', 476770),
(19, 5, 'Reliable and delicious pizza!', 606312),
(20, 3, 'Average taste, could use more seasoning.', 890123),
(21, 4, 'Tasty pizza and friendly service.', 799887),
(22, 5, 'Great value for the quality of pizza.', 456789),
(23, 3, 'Pizza arrived a bit late and lukewarm.', 606312),
(24, 4, 'Nice selection of pizza toppings.', 476770),
(25, 5, 'Great taste and good portion size.', 64089),
(26, 4, 'Great selection of pizza toppings!', 890123),
(27, 5, 'Best New York-style pizza!', 476770),
(28, 3, 'Crust was too thick for my taste.', 799887),
(29, 4, 'Amazing wood-fired pizza!', 606312),
(30, 5, 'Delicious thin-crust pizza!', 64089),
(31, 2, 'Pizza arrived cold and too late.', 456789),
(32, 4, 'Quality ingredients and good flavors.', 799887),
(33, 5, 'Incredible pizza with a perfect crust!', 64089),
(34, 4, 'Great variety of unique pizza flavors.', 799887),
(35, 3, 'Decent taste, but could be better.', 456789),
(36, 5, 'Consistently delicious and fresh pizza.', 476770),
(37, 2, 'Disappointed with the pizza quality.', 606312),
(38, 4, 'Quick delivery and hot, delicious pizza.', 799887),
(39, 5, 'Quality pizza at a reasonable price.', 476770),
(40, 3, 'Good but would love more topping choices.', 64089),
(41, 4, 'Great pizza and excellent customer service.', 456789),
(42, 5, 'Best local pizza spot around!', 64089),
(43, 3, 'Fresh ingredients but lacking in flavor.', 799887),
(44, 4, 'Nice variety of pizza sizes and crusts.', 476770),
(45, 5, 'Superb crust and flavorful pizza sauce!', 606312),
(46, 2, 'Soggy pizza, delivery took longer.', 799887),
(47, 4, 'Excellent pizza for any time of the day.', 476770),
(48, 5, 'Delicious and authentic Italian pizza.', 64089),
(49, 3, 'Pizza was good but slightly overpriced.', 456789),
(50, 4, 'Enjoyable pizza, will order again.', 799887),
(51, 5, 'Perfectly cooked and seasoned pizza!', 64089),
(52, 3, 'Crust was a bit too crunchy for my taste.', 606312),
(53, 4, 'Satisfying pizza for the price paid.', 456789),
(54, 5, 'Addictive taste, love their unique flavors!', 64089),
(55, 3, 'Pizza arrived a bit cold, but flavors were good.', 799887),
(56, 4, 'Tasty and freshly baked pizza!', 476770),
(57, 5, 'Incredible taste and excellent service!', 606312),
(58, 5, 'Amazing pizza, perfect for gatherings!', 799887),
(59, 4, 'Reliably delicious and quick service.', 456789),
(60, 3, 'Pizza was decent, but nothing exceptional.', 476770);

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `store_ID` int(11) NOT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `store_address` varchar(255) DEFAULT NULL,
  `workers_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Store`:
--

--
-- Dumping data for table `Store`
--

INSERT INTO `Store` (`store_ID`, `store_name`, `store_address`, `workers_count`) VALUES
(13343, 'PizzaAmore', 'Battle Mountain, Nevada', 9),
(48150, 'PizzaAmore', 'Landers, California', 7),
(58118, 'PizzaAmore', 'Goldfield, Nevada', 6),
(64089, 'PizzaAmore', 'Eureka, Nevada', 5),
(80157, 'PizzaAmore', 'Schurz, Nevada', 8),
(123455, 'PizzaAmore', 'Seattle, Washington', 10),
(123456, 'PizzaAmore', 'Santa Monica, California', 9),
(147185, 'PizzaAmore', 'Lund, Nevada', 9),
(263879, 'PizzaAmore', 'Austin, Nevada', 6),
(276746, 'PizzaAmore', 'Loyalton, California', 7),
(276789, 'PizzaAmore', 'Phoenix, Arizona', 7),
(345111, 'PizzaAmore', 'Las Vegas, Nevada', 8),
(361257, 'PizzaAmore', 'Lompoc, California', 7),
(370494, 'PizzaAmore', 'Lakeshore, California', 9),
(396779, 'PizzaAmore', 'Sedona, Arizone', 3),
(396799, 'PizzaAmore', 'Stewarts Point, California', 7),
(456789, 'PizzaAmore', 'Reno, Nevada', 10),
(456890, 'PizzaAmore', 'Boise, Idaho', 14),
(476770, 'PizzaAmore', 'Sunol, California', 7),
(486166, 'PizzaAmore', 'Jackpot, Nevada', 7),
(490972, 'PizzaAmore', 'Tuscarora, Nevada', 5),
(505400, 'PizzaAmore', 'Duckwater, Nevada', 8),
(560345, 'PizzaAmore', 'New York City, New York', 12),
(567890, 'PizzaAmore', 'Lake Havasu City, Arizona', 7),
(588444, 'PizzaAmore', 'Paradise Valley, Nevada', 6),
(606312, 'PizzaAmore', 'San Simeon, California', 8),
(669665, 'PizzaAmore', 'Imlay, Nevada', 10),
(678910, 'PizzaAmore', 'Denver, Colorado', 13),
(688745, 'PizzaAmore', 'Cibola, Arizona', 10),
(789123, 'PizzaAmore', 'Anchorage, Alaska', 9),
(799887, 'PizzaAmore', 'Jackpot, Nevada', 9),
(890123, 'PizzaAmore', 'San Francisco, California', 14),
(901222, 'PizzaAmore', 'Los Angeles, California', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Store_Revenue`
--

CREATE TABLE `Store_Revenue` (
  `store_ID` int(11) NOT NULL,
  `expenses` decimal(10,2) DEFAULT NULL,
  `income` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Store_Revenue`:
--   `Store_ID`
--       `Store` -> `Store_ID`
--

--
-- Dumping data for table `Store_Revenue`
--

INSERT INTO `Store_Revenue` (`store_ID`, `expenses`, `income`) VALUES
(13343, 28000.00, 52000.00),
(48150, 26000.00, 49000.00),
(58118, 25000.00, 50000.00),
(64089, 28000.00, 50000.00),
(80157, 31000.00, 47000.00),
(123455, 27000.00, 51000.00),
(123456, 29000.00, 54000.00),
(147185, 29000.00, 52000.00),
(263879, 31000.00, 55000.00),
(276746, 28000.00, 52000.00),
(276789, 30000.00, 55000.00),
(345111, 29000.00, 53000.00),
(361257, 24000.00, 48000.00),
(370494, 33000.00, 57000.00),
(396799, 26000.00, 48000.00),
(456789, 30000.00, 52000.00),
(456890, 30000.00, 52000.00),
(476770, 25000.00, 49000.00),
(486166, 27000.00, 51000.00),
(490972, 34000.00, 59000.00),
(505400, 32000.00, 46000.00),
(560345, 33000.00, 57000.00),
(567890, 31000.00, 48000.00),
(588444, 31000.00, 48000.00),
(606312, 30000.00, 53000.00),
(669665, 31000.00, 53000.00),
(678910, 28000.00, 51000.00),
(688745, 33000.00, 60000.00),
(789123, 28000.00, 51000.00),
(799887, 29000.00, 54000.00),
(890123, 30000.00, 48000.00),
(901222, 32000.00, 55000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employee_ID`),
  ADD KEY `Store_ID` (`store_ID`);

--
-- Indexes for table `Expenses`
--
ALTER TABLE `Expenses`
  ADD PRIMARY KEY (`expense_ID`),
  ADD KEY `Store_ID` (`store_ID`);

--
-- Indexes for table `Income`
--
ALTER TABLE `Income`
  ADD PRIMARY KEY (`income_ID`),
  ADD KEY `Store_ID` (`store_ID`);

--
-- Indexes for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`stock_ID`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`item_ID`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `Store_ID` (`store_ID`);

--
-- Indexes for table `Order_Items`
--
ALTER TABLE `Order_Items`
  ADD KEY `Order_ID` (`order_ID`),
  ADD KEY `Item_ID` (`item_ID`);

--
-- Indexes for table `Reviews`
--
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`review_ID`),
  ADD KEY `Store_ID` (`store_ID`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`store_ID`);

--
-- Indexes for table `Store_Revenue`
--
ALTER TABLE `Store_Revenue`
  ADD PRIMARY KEY (`store_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `Expenses`
--
ALTER TABLE `Expenses`
  MODIFY `expense_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Income`
--
ALTER TABLE `Income`
  MODIFY `income_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- AUTO_INCREMENT for table `Inventory`
--
ALTER TABLE `Inventory`
  MODIFY `stock_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `Reviews`
--
ALTER TABLE `Reviews`
  MODIFY `review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);

--
-- Constraints for table `Expenses`
--
ALTER TABLE `Expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);

--
-- Constraints for table `Income`
--
ALTER TABLE `Income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);

--
-- Constraints for table `Order_Items`
--
ALTER TABLE `Order_Items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `Items` (`Item_ID`);

--
-- Constraints for table `Reviews`
--
ALTER TABLE `Reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);

--
-- Constraints for table `Store_Revenue`
--
ALTER TABLE `Store_Revenue`
  ADD CONSTRAINT `store_revenue_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 10:45 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water_refilling_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jar_types`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `pricing` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `customer_name` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = walk-in, 2 = for delivery',
  `delivery_address` text NOT NULL,
  `amount` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unpaid, 1=Paid',
  `sales_id` int(30) NOT NULL,
  `jar_type_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `total_amount` float NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `jar_types`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Simple Water Refilling Management System'),
(6, 'short_name', 'Water Refilling System - PHP'),
(11, 'logo', 'uploads/1628916900_water_refilling.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1626249540_dark-bg.jpg');



CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jar_types`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jar_types`
--



--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

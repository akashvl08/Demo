






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

-- Database: `water_refilling_db - Copy`

-- Table structure for denormalized table `sales_with_items`
CREATE TABLE `sales_with_items` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `customer_name` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = walk-in, 2 = for delivery',
  `delivery_address` text NOT NULL,
  `amount` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unpaid, 1=Paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `jar_type_id` int(30) NOT NULL,
  `jar_type_name` text NOT NULL,
  `jar_type_description` text NOT NULL,
  `jar_type_pricing` float NOT NULL,
  `item_quantity` float NOT NULL,
  `item_price` float NOT NULL,
  `item_total_amount` float NOT NULL,
  PRIMARY KEY (`id`) -- Define a primary key
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data into denormalized table `sales_with_items`
INSERT INTO `sales_with_items` (`customer_name`, `type`, `delivery_address`, `amount`, `status`, `date_created`, `date_updated`, `jar_type_id`, `jar_type_name`, `jar_type_description`, `jar_type_pricing`, `item_quantity`, `item_price`, `item_total_amount`) 
VALUES
('John Smith', 1, '', 360, 1, '2021-08-14 15:41:36', '2021-08-14 15:50:29', 1, 'Slim Container with cap and faucet', '<span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Integer a risus enim. Mauris justo erat, tempus eu mauris sed, scelerisque tincidunt diam. Nam eget augue aliquam, commodo ligula consequat, maximus tellus. Suspendisse elit eros, pellentesque nec enim non, tincidunt pharetra magna. Vestibulum vel ex nunc. Nam semper diam et diam efficitur blandit. In ullamcorper dolor nec mauris vulputate, vel blandit purus elementum.</span>', 30, 10, 30, 300),
('John Smith', 1, '', 360, 1, '2021-08-14 15:41:36', '2021-08-14 15:50:29', 2, 'Round Container with Cap', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nunc a massa id ligula varius convallis in non augue. Sed feugiat blandit mattis. Mauris pulvinar fringilla tellus a accumsan. Nunc pharetra semper posuere. Ut rutrum odio at lectus maximus suscipit. Sed feugiat turpis a auctor malesuada. Integer ante quam, suscipit eu aliquet eget, ullamcorper ac justo. Maecenas nec orci non ipsum cursus pellentesque quis eget ligula. Nulla facilisi. Etiam tincidunt felis id maximus interdum. Curabitur non neque non sapien rhoncus tristique.</span><br></p>', 30, 2, 30, 60);

-- AUTO_INCREMENT for denormalized table `sales_with_items` is set automatically

-- AUTO_INCREMENT for denormalized table `users_with_info`
CREATE TABLE `users_with_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) -- Define a primary key
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data into denormalized table `users_with_info`
INSERT INTO `users_with_info` (`firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) 
VALUES
('Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

-- AUTO_INCREMENT for denormalized table `users_with_info` is set automatically

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

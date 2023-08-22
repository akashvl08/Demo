-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2019 at 08:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `Main_table` (
  `id1` int(11) NOT NULL,
  `cus_id1` int(11) NOT NULL,
  `int_id1` int(11) NOT NULL,
  `applied1` int(11) NOT NULL DEFAULT '0',
  `id2` int(11) NOT NULL,
  `fullname2` varchar(100) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `password2` varchar(255) NOT NULL,
  `address21` text NOT NULL,
  `address22` text NOT NULL,
  `city2` varchar(100) NOT NULL,
  `state2` varchar(100) NOT NULL,
  `zipcode2` int(100) NOT NULL,
  `phone2` text NOT NULL,
  `country2` varchar(100) NOT NULL,
  `ip2` varchar(255) NOT NULL,
  `id3` int(11) NOT NULL,
  `nameOfCompany3` text NOT NULL,
  `aboutCompany3` text NOT NULL,
  `email3` varchar(255) NOT NULL,
  `password3` varchar(255) NOT NULL,
  `address13` text NOT NULL,
  `address23` text NOT NULL,
  `city3` varchar(100) NOT NULL,
  `state3` varchar(100) NOT NULL,
  `zipcode3` int(100) NOT NULL,
  `phone3` text NOT NULL,
  `country3` varchar(100) NOT NULL,
  `ip3` varchar(255) NOT NULL,
  `date3` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id4` int(11) NOT NULL,
  `emp_id4` int(11) NOT NULL,
  `category4` text NOT NULL,
  `postedOn4` text NOT NULL,
  `applyBy4` text NOT NULL,
  `nameOfCompany4` text NOT NULL,
  `aboutCompany4` text NOT NULL,
  `aboutInternship4` text NOT NULL,
  `location4` text NOT NULL,
  `perks4` text NOT NULL,
  `duration4` int(100) NOT NULL,
  `stipend4` int(100) NOT NULL,
  `positions4` int(11) NOT NULL,
  `whoCanApply4` text NOT NULL,
  `featured4` tinyint(4) NOT NULL DEFAULT '0',
  `deleted4` tinyint(4) NOT NULL DEFAULT '0',
  `id5` int(100) NOT NULL,
  `full_name5` varchar(255) NOT NULL,
  `email5` varchar(255) NOT NULL,
  `password5` varchar(255) NOT NULL,
  `permission5` varchar(255) NOT NULL,
  `join_date5` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login5` datetime NOT NULL


) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Main_table` (`id1`, `cus_id1`, `int_id1`, `applied1`,`id2`, `fullname2`, `email2`, `password2`, `address21`, `address22`, `city2`, `state2`, `zipcode2`, `phone2`, `country2`, `ip2`,`id3`, `nameOfCompany3`, `aboutCompany3`, `email3`, `password3`, `address13`, `address23`, `city3`, `state3`, `zipcode3`, `phone3`, `country3`, `ip3`, `date3`,`id4`, `emp_id4`, `category4`, `postedOn4`, `applyBy4`, `nameOfCompany4`, `aboutCompany4`, `aboutInternship4`, `location4`, `perks4`, `duration4`, `stipend4`, `positions4`, `whoCanApply4`, `featured4`, `deleted4`,`id5`, `full_name5`, `email5`, `password5`, `permission5`, `join_date5`, `last_login5`) VALUES
(1, 1, 1, 1 , 1 , 'Sumeet Sharma', 'sksksharma0@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road East', 'Mumbai', 'Maharashtra', 401107, '8286864601', 'India', '::1',1, 'NETMATE SOLUTIONS', 'Digital Marketing Agency', 'sksharma.sharma87@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road East', 'Mira Bhayandar', 'Maharashtra', 401107, '8286864601', 'India', '::1', '2019-09-04 17:03:24',1, 2, 'Web Development', '2019-09-04', '2019-09-20', 'IIT Bombay', 'The Indian Institute of Technology, Bombay (IITB) is one of the fifteen higher institutes of technology in the country set up with the objective of making facilities available for higher education, research, and training in various fields of science and technology. With the same mission and vision, Prof. Ganesh Ramakrishnan is gearing to take rural India a leap ahead. For his outstanding contributions, he has also been awarded the IBM Faculty Award 2011.', 'Selected intern\s day-to-day responsibilities include: \r\n\r\n1. Collaborate with teams to implement new features, improvements, and fixes needed to handle our current and future scale\r\n2. Write reusable, testable, and efficient code\r\n3. Build, optimize and scale our Node.js platform and applications\r\n4. Design and implement low-latency, high-availability, and performant applications\r\n5. Implement secure applications and data protection\r\n6. Integrate RESTful APIs &amp;amp; internal web services ensuring high performance\r\n7. Collaborate across teams and contributing to open source\r\n8. Troubleshoot production issues and implement fixes for them\r\n9. Learn and teach peers new technologies', 'Mumbai', 'Certificate', 6, 5000, 5, 'Only those candidates can apply who:\r\n\r\n1. are available for full time (in-office) internship\r\n2. can start the internship between 23rd Aug&#039;19 and 22nd Sep&#039;19\r\n3. are available for duration of 6 months\r\n4. are from Mumbai and neighboring cities\r\n5. have relevant skills and interests', 0, 0,1, 'Sumeet Sharma', 'sksksharma0@gmail.com', 'password', 'admin,editor', '2018-10-06 01:00:34', '2018-10-03 09:12:14'),
(2, 1, 2, 1 , 2 , 'Sumeet', 'sksharma.sharma87@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road (E)', 'Mumbai', 'Maharashtra', 401107, '8850948655', 'India', '::1',2, 'IIT Bombay', 'The Indian Institute of Technology, Bombay (IITB) is one of the fifteen higher institutes of technology in the country set up with the objective of making facilities available for higher education, research, and training in various fields of science and technology. With the same mission and vision, Prof. Ganesh Ramakrishnan is gearing to take rural India a leap ahead. For his outstanding contributions, he has also been awarded the IBM Faculty Award 2011.', 'itsumeet@gmail.com', 'Shar8850', '201, C-15, Sector-6', 'Shanti Nagar, Mira Road East', 'Mumbai', 'Maharashtra', 401107, '8850948655', 'India', '::1', '2019-09-04 18:20:09',2, 1, 'Graphic Designing', '2019-09-05', '2019-09-20', 'NETMATE SOLUTIONS', 'Digital Marketing Agency', 'Selected intern\s day-to-day responsibilities include:\r\n\r\n1. Brainstorming and ideating in making creative designs for various marketing campaigns\r\n2. Working on digital collaterals such as design banners for website, newsletters, and other social media channels\r\n3. Working on print collaterals such as posters, brochures, standees, event collaterals, leaflets, etc.', 'Mumbai', 'Certificate, Recommendation Letter', 3, 10000, 2, 'Only those candidates can apply who:\r\n\r\n1. are available for full time (in-office) internship\r\n2. can start the internship between 10th Aug&#039;19 and 9th Sep&#039;19\r\n3. are available for duration of 4 months\r\n4. have relevant skills and interests\r\n\r\n** Women willing to start/restart their career can also apply.', 0, 0,2,'akshay mk','akshaymk360@gmail.com','password','admin,editor','2018-10-06 08:00:54','2018-10-03 09:12:15');


ALTER TABLE `Main_table`
  ADD PRIMARY KEY (`id1`);



ALTER TABLE `Main_table`
  MODIFY `id1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;





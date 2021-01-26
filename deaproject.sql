-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 05:17 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `quntity` varchar(200) NOT NULL,
  `num` int(200) NOT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `name`, `pic`, `date`, `quntity`, `num`, `price`) VALUES
('Supun.randunu@gmail.com', 'Apple iphone 7', 'http://localhost/img/720x9601.jpg', '2018-10-26 13:35:13', '1', 11, '450'),
('Supun.randunu@gmail.com', 'Apple iphone X', 'http://localhost/img/iphoneX-alligator-carbon-black_03.png', '2018-10-26 15:49:59', '1', 12, '1150'),
('Supun.randunu@gmail.com', 'B', 'http://localhost/img/720x960.jpg', '2018-10-28 09:00:55', '1', 13, '250'),
('Supun.randunu@gmail.com', 'B', 'http://localhost/img/720x960.jpg', '2018-10-29 11:13:44', '1', 14, '250'),
('supun.randunu@gmail.com', 'B', 'http://localhost/img/720x960.jpg', '2019-09-21 15:55:46', '1', 17, '250');

-- --------------------------------------------------------

--
-- Table structure for table `postadd`
--

CREATE TABLE `postadd` (
  `num` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postadd`
--

INSERT INTO `postadd` (`num`, `title`, `price`, `description`, `category`, `photo`, `date`) VALUES
(14, 'Apple iphone 7', '450', 'Apple iPhone 7 smartphone. Announced Sep 2016. Features 4.7â?³ LED-backlit IPS LCD display, ', 'phone', '720x9601.jpg', '2018-10-26 13:35:13'),
(15, 'Apple iphone X', '1150', 'Apple iPhone X smartphone. Announced Sep 2017. Features 5.8â?³ Super AMOLED display, Apple A11 Bionic chipset, Dual: 12 MP', 'phone', 'iphoneX-alligator-carbon-black_03.png', '2018-10-26 13:38:13'),
(17, 'B&O Headphone', '250', 'Beoplay H8i, H9i and H4 are the latest headphones from Bang &amp; Olufsen. Choose between over-ear ', 'other', '720x960.jpg', '2018-10-26 13:45:13'),
(13, 'Canon F1 Camera', '600', 'The canon F1, also known as the camera hewn from solid steel by Gods own hands', 'camera', '0012074-720x960.jpg', '2018-10-26 13:03:13'),
(16, 'G force flex flow', '350', 'Value, Description, Play it. flex-direction, Possible values: row row-reverse column column-reverse ', 'camera', '720x960  1.jpg', '2018-10-26 13:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `num` int(100) NOT NULL,
  `admin` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postalcode` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`num`, `admin`, `name`, `number`, `email`, `country`, `postalcode`, `pass`) VALUES
(13, 'no', 'Akalanka', '0712429059', 'akalanka@gmail.com', 'sri lanka', '81000', '1234'),
(12, 'yes', 'Gihan Akalanka', '0712429059', 'gihanakalanka@gmail.com', 'Sri lanka', '8100', '123'),
(11, 'no', 'Supun Randunu', '0712429059', 'supun.randunu@gmail.com', 'Sri Lanka', '81000', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`num`),
  ADD UNIQUE KEY `num` (`num`),
  ADD UNIQUE KEY `num_2` (`num`);

--
-- Indexes for table `postadd`
--
ALTER TABLE `postadd`
  ADD PRIMARY KEY (`title`),
  ADD UNIQUE KEY `num` (`num`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `num` (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `num` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `postadd`
--
ALTER TABLE `postadd`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `num` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230116.e2bda4fb48
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 12:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bname`, `qty`, `price`) VALUES
(1, 'CoreJava', 100, 50),
(2, 'vb', 200, 40),
(3, 'c#', 100, 60),
(4, 'asp', 100, 70);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `subtotal`, `pay`, `bal`) VALUES
(1, 270, 300, 30),
(2, 270, 300, 30),
(3, 270, 300, 30),
(4, 270, 300, 30),
(5, 270, 300, 30),
(6, 50, 100, 50),
(7, 90, 100, 10),
(8, 300, 300, 0),
(9, 400, 500, 100),
(10, 250, 300, 50),
(11, 120, 150, 30),
(12, 120000, 130000, 10000),
(13, 120000, 130000, 10000),
(14, 50, 50, 0),
(15, 190, 200, 10),
(16, 450, 500, 50),
(17, 610, 700, 90),
(18, 150, 200, 50);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `bname`, `price`, `qty`, `total`) VALUES
(1, 9, 'corejava', 50, 1, 50),
(3, 10, 'corejava', 50, 5, 250),
(4, 11, 'c#', 60, 2, 120),
(5, 12, 'corejava', 50, 1, 50),
(6, 12, 'asp', 70, 1000, 70000),
(7, 12, 'corejava', 50, 999, 49950),
(8, 13, 'corejava', 50, 1, 50),
(9, 13, 'asp', 70, 1000, 70000),
(10, 13, 'corejava', 50, 999, 49950),
(11, 14, 'corejava', 50, 1, 50),
(12, 15, 'CoreJava', 50, 1, 50),
(13, 15, 'vb', 40, 2, 80),
(14, 15, 'c#', 60, 1, 60),
(15, 16, 'CoreJava', 50, 3, 150),
(16, 16, 'vb', 40, 3, 120),
(17, 16, 'c#', 60, 3, 180),
(18, 17, 'CoreJava', 50, 3, 150),
(19, 17, 'c#', 60, 3, 180),
(20, 17, 'asp', 70, 4, 280),
(21, 18, 'CoreJava', 50, 3, 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

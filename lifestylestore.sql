-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2018 at 08:43 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lifestylestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Sony DSLR', 36000),
(2, 'Nikon DSLR', 34000),
(3, 'Canon DSLR', 35000),
(4, 'Pentax DSLR', 36000),
(5, 'Titan Model:p4', 3600),
(6, 'Titan Model:a2', 6000),
(7, 'Fastrack Model:201', 3000),
(8, 'Fastrack Model:209', 5000),
(9, 'W&H', 800),
(10, 'Denim', 1000),
(11, 'Reymond', 950),
(12, 'Pan America', 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Rahul Sen', 'rahul@123', '123', '9831448923', 'kolkata', 'barrckpore'),
(2, 'Ruchi Nag', 'ruchi@123', '123', '9856448923', 'kolkata', 'sodepur'),
(3, 'Rahi Das', 'rahi@123', '123', '9831448944', 'kolkata', 'barrckpore'),
(4, 'Amit Das', 'amit@456', '456', '9831448998', 'delhi', 'noida'),
(5, 'Sudi Roy', 'sudi@456', '456', '9831588923', 'chennai', 'central'),
(6, 'Naru Ghosh', 'nimo@123', '123', '8931448923', 'guwahati', 'tezpur'),
(7, 'Shilpi Dutta', 'shilpi@456', '456', '8934548923', 'kolkata', 'baruipur'),
(8, 'Loku Sen', 'loku@789', '789', '9831457823', 'kolkata', 'bally'),
(9, 'Kuheli Dey', 'kuhu@789', '789', '9831448932', 'kolkata', 'srerampur'),
(10, 'Priya Sen', 'priya@147', '147', '9831446623', 'kolkata', 'barrckpore'),
(11, 'Priya Kumar', 'priya@123', '123', '9888448923', 'kolkata', 'srerampur'),
(12, 'Dev Mallo', 'dev@159', '159', '9903604023', 'kolkata', 'dumdum'),
(13, 'Riya Sen', 'riya753', '753', '9831586446', 'kolkata', 'behala'),
(14, 'vilas', 'abc@gmail.com', '0c76e9832e376ec0539f1b0d45dfab57', '8108495022', 'MUMBAI', 'mumbai'),
(15, 'vilas', 'vil@gmail.com', '4337721e6c4299cbf70573bcd6d0082c', '8108495022', 'mumbai', 'mumbai'),
(16, 'vilas', 'xyz@gmail.com', '4337721e6c4299cbf70573bcd6d0082c', '8108495022', 'mum', 'mum'),
(17, 'Akansh Singhal', 'akanshsinghal7@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8267833395', 'Ghaziabad', 'Aryabhatt Hostel KIET Muradnagar, Ghazaiabad, Ghazaiabad');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE IF NOT EXISTS `users_items` (
`id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `users_id`, `item_id`, `status`) VALUES
(1, 1, 1, 'Added to cart'),
(2, 2, 2, 'Added to cart'),
(3, 3, 3, 'Added to cart'),
(4, 4, 4, 'Added to cart'),
(5, 6, 6, 'Added to cart'),
(6, 5, 5, 'Added to cart'),
(7, 7, 7, 'Added to cart'),
(8, 8, 8, 'Added to cart'),
(9, 9, 9, 'Added to cart'),
(10, 10, 10, 'Added to cart'),
(11, 11, 11, 'Added to cart'),
(12, 1, 6, 'Confirmed'),
(13, 5, 2, 'Confirmed'),
(14, 7, 2, 'Confirmed'),
(15, 11, 5, 'Confirmed'),
(16, 12, 11, 'Added to cart'),
(18, 17, 2, 'Confirmed'),
(20, 17, 2, 'Confirmed'),
(22, 17, 1, 'Confirmed'),
(23, 17, 2, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
 ADD PRIMARY KEY (`id`), ADD KEY `item_id` (`item_id`), ADD KEY `users_id` (`users_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

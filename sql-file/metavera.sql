-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 07:05 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metavera`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
`color_id` int(11) NOT NULL,
  `color_name` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Orange'),
(3, 'Yellow'),
(4, 'Green'),
(5, 'Blue'),
(6, 'Indigo'),
(7, 'Violet');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
`vote_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `vote_city` varchar(15) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `color_id`, `vote_city`, `vote`) VALUES
(1, 5, 'Anchorage', 10000),
(2, 3, 'Anchorage', 15000),
(3, 1, 'Brooklyn', 100000),
(4, 5, 'Brooklyn', 250000),
(5, 1, 'Detroit', 160000),
(6, 3, 'Selma', 15000),
(7, 7, 'Selma', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
 ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
 ADD PRIMARY KEY (`vote_id`), ADD KEY `color_id` (`color_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

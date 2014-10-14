-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2014 at 08:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `homework_`
--
CREATE DATABASE IF NOT EXISTS `homework_scroll` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `homework_`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(20) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'US');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `mes_id` int(10) NOT NULL AUTO_INCREMENT,
  `msg` varchar(25) NOT NULL,
  PRIMARY KEY (`mes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mes_id`, `msg`) VALUES
(1, 'fdgdf'),
(2, 'fdgdf'),
(3, 'fdgdf'),
(4, 'fdgdf'),
(5, 'fdgdf'),
(6, 'fdgdf'),
(7, 'fdgdf'),
(8, 'fdgdf'),
(9, 'fdgdf'),
(10, 'fdgdf'),
(11, 'fdgdf'),
(12, 'fdgdf'),
(13, 'fdgdf'),
(14, 'fdgdf'),
(15, 'fdgdf'),
(16, 'fdgdf'),
(17, 'fdgdf'),
(18, 'fdgdf'),
(19, 'fdgdf');

-- --------------------------------------------------------

--
-- Table structure for table `product_detalil`
--

CREATE TABLE IF NOT EXISTS `product_detalil` (
  `product_id` int(15) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `new_price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
  `details` varchar(250) NOT NULL,
  `image` varchar(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(30) NOT NULL,
  `state_name` varchar(30) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_name`, `state_name`) VALUES
(1, 'India', 'Gujrat'),
(2, 'India', 'Madhya Pradesh'),
(3, 'US', 'California');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_id` int(12) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `birth_date` date NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hobby` varchar(250) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`firstname`, `lastname`, `email`, `password`, `image`, `username`, `user_id`, `status`, `birth_date`, `state`, `country`, `gender`, `hobby`) VALUES
('Ajayk', 'aaaaaaaaaaa', 'ajay@kalavadiya.com', 'ajaykalavadiya', 'userimg/ajaykalavadiya.jpg', 'ajaykalavadiya', 6, 1, '2014-01-14', '', '', '', ''),
('Ashik', 'Kalavadiya', 'ashikkalavadiya@gmail.com', 'ashikkalavadiya', 'userimg/ashikkalavadiya.jpg', 'ashikkalavadiya', 9, 1, '2014-01-07', '', '', '', ''),
('Jaydip', 'Patel', 'jdpatel@gmail.com', 'jaydippatel', 'userimg/jaydippatel.jpg', 'jaydippatel', 12, 1, '2014-01-12', '', '', '', ''),
('savan', 'patel', 'savanpatel@gmail.com', 'savanpatel', 'userimg/savanpatel.jpg', 'savanpatel', 13, 1, '0000-00-00', '', '', '', ''),
('Parimal', 'Patel', 'parimalpatel@gmail.com', 'parimalpatel', 'userimg/parimalpatel.jpg', 'parimalpatel', 14, 1, '2014-01-19', '', '', '', ''),
('Ajaykkkkkkkkk', 'Kalavadiya', 'ajaykalawadiya@gmail.com', 'ajaykalavadiya', 'userimg/ajaykalawadiya.jpg', 'ajaykalawadiya', 15, 1, '2013-07-16', 'California', 'US', '', ''),
('Administratoe', '', '', 'admin', 'userimg/admin.jpg', 'admin', 27, 1, '0000-00-00', '', '', '', ''),
('tgdfgdf', 'fdgdfgdf', 'aaaaa@fff.fad', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 29, 1, '2014-01-15', '', '', '', ''),
('savan', 'Kalavadiya', 'aaaaa@fff.fae', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 30, 1, '0000-00-00', '', '', '', ''),
('Ajayk', 'Kalavadiya', 'aaaaa@fff.fii', 'ajaypatel123', '', 'ajaypatel123', 31, 1, '2014-01-07', '', '', '', ''),
('dasgfh', 'Kalavadiya', 'aaaaa@fff.fui', '$userfile_extn', '', 'ajaypatel123', 32, 1, '2014-01-14', '', '', '', ''),
('Ajay', 'Kalavadiya', 'aaaaa@fff.fqw', '$userfile_extn!=', 'userimg/adminasdsad.jpg', 'adminasdsad', 33, 1, '2014-01-08', 'Madhya Pradesh', 'India', '', ''),
('Ajay', 'Kalavadiya', 'aaaaa@fff.fww', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 34, 1, '2014-01-07', '', '', '', ''),
('dsfsdf', 'sdfsdfd', 'aaaaa@fff.faa', 'ssdfsfdsfsdfsd', 'userimg/sdfsdfdsf.jpg', 'sdfsdfdsf', 35, 1, '2014-01-02', '', '', '', ''),
('zxczxc', 'zxczxc', 'aaaaa@fff.fqs', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 36, 1, '2014-01-14', '', '', '', ''),
('rewef', 'dfsd', 'aaaaa@fff.fqq', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 37, 1, '2014-01-14', '', '', '', ''),
('Ajay', 'Kalavadiya', 'ajaykalavadiya@gmail.com', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 38, 1, '1992-05-11', '', 'India', 'male', 'Reading Book'),
('DSFSDF', 'SDFSDFDS', 'aaaaa@fff.ffz', 'ajaypatel123', '', 'ajaypatel123', 39, 1, '1996-01-02', '', '', '', ''),
('Ajay', 'Patel', 'ajaykalawadia@gmail.com', 'ajaykalavadiya', '', 'ajaykalavadiya', 40, 1, '1992-04-04', 'Gujrat', 'India', 'male', ''),
('dfds', 'jhhjjhjghdf', 'aaaaa@fff.fyt', 'aaaaaaaaaaaaaa', 'userimg/aaaaaaasdasda.jpg', 'aaaaaaasdasda', 41, 1, '1996-01-01', '', '', '', ''),
('SSSSSSSSSSS', 'sssssssssssssss', 'aaaaa@fff.fet', 'ssssssssssss', 'userimg/sssssssssssssss.jpg', 'sssssssssssssss', 42, 1, '1996-01-02', 'Madhya Pradesh', 'India', '', ''),
('Savan', 'Santoki', 'savansantoki@gmail.com', 'savansantoki', 'userimg/savansantoki.jpg', 'savansantoki', 43, 1, '1996-01-01', 'Madhya Pradesh', 'India', '', ''),
('ZZZ', 'zzz', 'zzz@zzz.com', 'zzzzzzzzzzzzzzzz', 'userimg/zzzzzzzzzzzzzzzz.jpg', 'zzzzzzzzzzzzzzzz', 44, 1, '1996-01-04', 'Gujrat', 'India', 'male', 'Reading Book, Listening Music'),
('Ajay', 'Patil', 'ajaypatil@gmail.com', 'ajaypatil', 'userimg/ajaypatil.jpg', 'ajaypatil', 45, 1, '1996-01-02', 'Gujrat', 'India', 'male', 'Gardening'),
('nikhildalsaniya', 'nikhildalsaniya', 'nikhildalsaniya@gmail.com', 'nikhildalsaniya', 'userimg/nikhildalsaniya.jpg', 'nikhildalsaniya', 46, 1, '1996-01-02', 'California', 'US', 'male', ''),
('Savan', 'Makadiya', 'savanmakadiya@gmail.com', 'savanmakadiya', 'userimg/savanmakadiya.jpg', 'savanmakadiya', 47, 1, '1996-01-04', 'Madhya Pradesh', 'India', 'male', ''),
('rakesh', 'parikh', 'rakeshparikh@gmail.com', 'rakeshparikh', 'userimg/rakeshparikh.jpg', 'rakeshparikh', 48, 1, '1995-10-08', '', 'India', 'male', 'Gardening, Playing Game, Reading Book, Listening Music'),
('Nirav', 'Kalola', 'niravkalola@gmail.com', 'niravkalola', 'userimg/niravkalola.jpg', 'niravkalola', 49, 1, '1996-01-04', 'Gujrat', 'India', 'male', 'Gardening, Playing Game, Reading Book'),
('Ajay', 'Kalavadiya', 'ajay@droptechnolab.com', 'ajaykalavadiya', 'userimg/ajaykalavadiya.jpg', 'ajaykalavadiya', 50, 1, '1992-04-04', '', 'India', 'male', 'Gardening, Playing Game, Reading Book, Listening Music'),
('Ajay', 'Kalavadiya', 'ajaypatel123@gmail.com', 'ajaypatel123', 'userimg/ajaypatel123.jpg', 'ajaypatel123', 51, 1, '1992-04-04', 'California', 'US', 'male', 'Gardening, Playing Game, Reading Book, Listening Music');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

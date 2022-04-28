-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2020 at 10:05 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `prod_id` varchar(10) NOT NULL,
  `prod_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `totprice` float NOT NULL,
  `biilno` int(30) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`biilno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`prod_id`, `prod_name`, `quantity`, `price`, `totprice`, `biilno`, `date`) VALUES
('p4', 'Backpacks', 7, 700, 4900, 41, '2018-10-28 21:54:53'),
('p4', 'Backpacks', 4, 700, 2800, 42, '2018-10-28 21:57:27'),
('p2', 'Badminton_Shuttle ', 4, 500, 2000, 43, '2018-10-28 22:19:38'),
('p6', 'Bikes', 6, 400, 2400, 44, '2018-10-29 00:08:16'),
('p6', 'Bikes', 5, 400, 2000, 45, '2018-10-29 00:10:22'),
('p2', 'Backpacks', 5, 150, 750, 46, '2018-10-29 01:29:37'),
('p3', 'Gloves', 5, 700, 3500, 47, '2018-10-29 01:34:45'),
('p3', 'Gloves', 5, 700, 3500, 48, '2018-10-29 10:34:47'),
('p1', 'Badminton_Racket', 2, 200, 400, 49, '2018-10-29 19:48:20'),
('p1', 'Badminton_Racket', 2, 200, 400, 50, '2018-10-29 20:11:42'),
('p5', 'Balls', 2, 900, 1800, 51, '2020-02-27 15:18:26'),
('p5', 'Balls', 2, 900, 1800, 52, '2020-02-27 15:19:24'),
('p1', 'Badminton_Racket', 2, 200, 400, 53, '2020-03-03 15:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `prod_id` varchar(10) NOT NULL,
  `prod_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `pBadminton_Shuttle` float NOT NULL,
  `totprice` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `prod_id` varchar(10) NOT NULL,
  `prod_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `mfd` varchar(30) NOT NULL,
  `dis` varchar(30) NOT NULL,
  `prod_model` varchar(30) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`prod_id`, `prod_name`, `quantity`, `price`, `mfd`, `dis`, `prod_model`) VALUES
('p1', 'Badminton_Racket', 70, 900, '5/10/2017', '6', 'Astrox99'),
('p2', 'Badminton_Shuttle', 39, 700, '03/10/2017', '3', 'CarltonF2'),
('p3', 'Gloves', 40, 700, '22/11/2017', '22', '3DModel'),
('p4', 'Backpacks', 85, 150, '20/08/2018', '11', '1102_Bag'),
('p5', 'Balls', 370, 200, '20/10/2018', '20', 'MAX'),
('p6', 'Bikes', 400, 300, '4/5/2016', '4', 'Aprilia_RVX450'),
('p7', 'Boards ', 66, 500, '4/6/2017', '3', 'Ice_skate'),
('p8', 'Skates', 80, 500, '3/5/2017', '5', 'Roller'),
('p9', 'Sleds', 90, 300, '7/2/2017', '5', 'Slippery_Racer'),
('p10', 'Sportswear', 50, 900, '8/7/2017', '7', 'Atheltic_wear'),
('p11', 'Sunglasses', 49, 400, '4/5/2017', '4', 'Polarized_Glass'),
('p12', 'Tables', 500, 5, '29-02-2019', '29', 'Ping_Pong_table');

-- --------------------------------------------------------

--
-- Table structure for table `sell
CREATE TABLE IF NOT EXISTS `sell` (
  `biilno` int(10) NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(30) NOT NULL,
  `prod_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` double NOT NULL,
  `totprice` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`biilno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`biilno`, `prod_id`, `prod_name`, `quantity`, `price`, `totprice`, `date`) VALUES
(9, 'p5', 'Balls', 5, 900, 4450, '2020-02-27 15:21:12'),
(8, 'p1', 'Badminton_Racket', 20, 200, 3800, '2018-10-29 20:16:01'),
(7, 'p1', 'Badminton_Racket', 10, 200, 1900, '2018-10-29 19:51:05'),
(10, 'p1', 'Badminton_Racket', 6, 200, 1140, '2020-03-03 15:21:22');


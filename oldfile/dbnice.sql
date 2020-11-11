-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2020 at 10:02 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbnice`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `accessoriesview`
--
CREATE TABLE IF NOT EXISTS `accessoriesview` (
`id` int(11)
,`buyer_name` varchar(255)
,`items_id` int(11)
,`qty` int(11)
,`system_id` int(11)
,`idesc` varchar(255)
,`STATUS` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `accessories_sold`
--

CREATE TABLE IF NOT EXISTS `accessories_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unsave',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `accessories_sold`
--

INSERT INTO `accessories_sold` (`id`, `buyer_id`, `items_id`, `qty`, `system_id`, `status`) VALUES
(1, 1, 189, 1, 2, 'save'),
(2, 1, 188, 1, 2, 'save'),
(3, 1, 173, 1, 2, 'tag'),
(4, 1, 169, 2, 2, 'tag'),
(5, 1, 193, 1, 2, 'tag'),
(6, 1, 141, 1, 2, 'tag'),
(7, 1, 50, 1, 2, 'unsave');

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

CREATE TABLE IF NOT EXISTS `activitylog` (
  `activitylog` int(255) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `activitydate` text NOT NULL,
  `activitytime` text NOT NULL,
  `device` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  PRIMARY KEY (`activitylog`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`activitylog`, `user`, `action`, `activitydate`, `activitytime`, `device`, `ip`, `session`) VALUES
(1, 'romeo', 'Logged In', '2020-10-24', '11:35:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(2, 'romeo', 'Logged In', '2020-10-24', '11:37:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(3, 'romeo', 'Logged In', '2020-10-24', '11:43:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(4, 'romeo', 'Logged Out', '2020-10-24', '11:43:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(5, 'romeo', 'Logged In', '2020-10-24', '11:45:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(6, 'romeo', 'Logged Out', '2020-10-24', '11:45:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(7, 'romeo', 'Logged Out', '2020-10-24', '11:45:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(8, 'romeo', 'Logged In', '2020-10-24', '11:45:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(9, 'romeo', 'Logged Out', '2020-10-24', '11:49:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(10, 'romeo', 'Logged Out', '2020-10-24', '11:49:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(11, 'romeo', 'Logged In', '2020-10-24', '11:49:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(12, 'romeo', 'Logged In', '2020-10-24', '11:50:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(13, 'romeo', 'Logged In', '2020-10-24', '11:50:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(14, 'romeo', 'Logged In', '2020-10-24', '11:51:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(15, 'romeo', 'Logged In', '2020-10-24', '11:53:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(16, 'romeo', 'Logged Out', '2020-10-24', '11:53:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(17, 'romeo', 'Logged Out', '2020-10-24', '11:53:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(18, 'romeo', 'Logged In', '2020-10-24', '11:54:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(19, 'romeo', 'Logged In', '2020-10-24', '11:54:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(20, 'romeo', 'Logged In', '2020-10-24', '11:55:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(21, 'romeo', 'Logged In', '2020-10-24', '11:55:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(22, 'romeo', 'Logged In', '2020-10-24', '11:56:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(23, 'romeo', 'Logged In', '2020-10-24', '11:58:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(24, 'romeo', 'Logged In', '2020-10-24', '11:59:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(25, 'romeo', 'Logged In', '2020-10-25', '12:00:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(26, 'romeo', 'Logged In', '2020-10-25', '12:09:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(27, 'romeo', 'Logged Out', '2020-10-25', '12:25:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(28, 'romeo', 'Logged In', '2020-10-25', '12:25:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(29, 'romeo', 'Logged Out', '2020-10-25', '01:00:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(30, 'romeo', 'Logged Out', '2020-10-25', '01:00:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(31, 'romeo', 'Logged In', '2020-10-25', '06:21:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(32, 'romeo', 'Logged Out', '2020-10-25', '07:25:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(33, 'romeo', 'Logged Out', '2020-10-25', '07:25:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(34, 'romeo', 'Logged In', '2020-10-25', '07:25:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(35, 'romeo', 'Logged In', '2020-10-25', '07:27:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(36, 'romeo', 'Logged Out', '2020-10-25', '07:41:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(37, 'romeo', 'Logged In', '2020-10-25', '07:41:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(38, 'romeo', 'Logged Out', '2020-10-25', '07:41:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(39, 'romeo', 'Logged In', '2020-10-25', '08:22:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(40, 'romeo', 'Logged In', '2020-10-25', '08:53:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(41, 'romeo', 'Logged Out', '2020-10-25', '09:22:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(42, 'romeo', 'Logged Out', '2020-10-25', '09:22:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(43, 'romeo', 'Logged In', '2020-10-25', '09:36:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(44, 'romeo', 'Logged Out', '2020-10-25', '11:27:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(45, 'romeo', 'Logged Out', '2020-10-25', '11:27:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(46, 'romeo', 'Logged In', '2020-10-25', '01:21:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(47, 'romeo', 'Logged Out', '2020-10-25', '01:22:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(48, 'romeo', 'Logged Out', '2020-10-25', '01:22:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(49, 'romeo', 'Logged In', '2020-10-25', '01:24:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(50, 'romeo', 'Logged Out', '2020-10-25', '01:24:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(51, 'romeo', 'Logged In', '2020-10-25', '01:24:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(52, 'romeo', 'Logged Out', '2020-10-25', '01:24:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(53, 'romeo', 'Logged Out', '2020-10-25', '01:24:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(54, 'romeo', 'Logged In', '2020-10-25', '01:33:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(55, 'romeo', 'Logged Out', '20/10/25', '01:46:37pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(56, 'romeo', 'Logged Out', '20/10/25', '01:46:37pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(57, 'romeo', 'Logged In', '20/10/25', '01:47:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(58, 'romeo', 'Logged In', '20/10/25', '02:11:26pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(59, 'romeo', 'Logged Out', '20/10/25', '02:14:48pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(60, 'romeo', 'Logged Out', '20/10/25', '02:14:48pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(61, 'romeo', 'Logged In', '20/10/25', '02:14:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(62, 'romeo', 'Logged In', '20/10/25', '02:43:26pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(63, 'romeo', 'Logged Out', '20/10/25', '03:42:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(64, 'romeo', 'Logged Out', '20/10/25', '03:42:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(65, '', 'Logged Out', '20/10/25', '03:42:28pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(66, 'romeo', 'Logged In', '20/10/25', '03:43:37pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(67, 'romeo', 'Logged Out', '20/10/25', '06:12:03pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(68, 'romeo', 'Logged Out', '20/10/25', '06:12:03pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '37bm9m7aqv3efkdp6p42hrr3g6'),
(69, 'romeo', 'Logged In', '20/10/25', '06:40:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7ca448mo6mc3qptpltl1qsrov6'),
(70, 'romeo', 'Logged Out', '20/10/25', '10:39:31pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7ca448mo6mc3qptpltl1qsrov6'),
(71, 'romeo', 'Logged Out', '20/10/25', '10:39:31pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7ca448mo6mc3qptpltl1qsrov6'),
(72, 'romeo', 'Logged In', '20/10/26', '04:53:03am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(73, 'romeo', 'Logged In', '20/10/26', '04:53:55am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(74, 'romeo', 'Logged Out', '20/10/26', '05:47:08am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(75, 'romeo', 'Logged Out', '20/10/26', '05:47:08am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(76, 'romeo', 'Logged In', '20/10/26', '05:49:33am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(77, 'romeo', 'Logged In', '20/10/26', '05:49:56am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(78, 'romeo', 'Logged Out', '20/10/26', '06:02:14am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) NOT NULL,
  `buyer_photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `buyer_name`, `buyer_photo`) VALUES
(1, 'aeon', 'Mother.jpg'),
(2, 'tanglao', 'Mother_id1.png'),
(3, 'nina', '2x2.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `full_item`
--
CREATE TABLE IF NOT EXISTS `full_item` (
`id` int(11)
,`description` varchar(255)
,`catid` int(11)
,`category` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `category`) VALUES
(1, 'AVR'),
(2, 'CABLE'),
(3, 'CPU'),
(4, 'GADGET'),
(5, 'HARD DISK DRIVE'),
(6, 'KEYBOARD'),
(7, 'MONITOR'),
(8, 'MOTHERBOARD'),
(9, 'MOUSE'),
(10, 'OPERATING SYSTEM'),
(11, 'POWER SUPPLY'),
(12, 'PRINTER'),
(13, 'RAM'),
(14, 'UPS');

-- --------------------------------------------------------

--
-- Table structure for table `item_masterfile`
--

CREATE TABLE IF NOT EXISTS `item_masterfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_description` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=194 ;

--
-- Dumping data for table `item_masterfile`
--

INSERT INTO `item_masterfile` (`id`, `item_description`, `cat_id`) VALUES
(1, '%1 CHIPSET MCP6P M2+', 8),
(2, '1 GG', 13),
(3, '1 GB 2PCS', 13),
(4, '1 TB', 5),
(5, '1 TB & 250 GB', 5),
(6, '1 TB & 500 GB', 5),
(7, '1 TB 2PCS', 5),
(8, '1 TB 2PCS & 500 GB', 5),
(9, '1 TB 3PCS', 5),
(10, '160 & 80GB', 5),
(11, '160 GB', 5),
(12, '160 GB & 1 TB', 5),
(13, '160 GB & 40GB', 5),
(14, '1 GB & 1 GB DDR2', 13),
(15, '1 GB 2PCS', 13),
(16, '1 TB', 5),
(17, '1 TB 2 PCS & 500 GB', 5),
(18, '1 TB, 2 TB, & 80 GB', 5),
(19, '2 GB', 13),
(20, '2 GB & 1GB', 13),
(21, '2 GB 2PCS', 13),
(22, '2 TB', 5),
(23, '232 GB', 5),
(24, '250 GB', 5),
(25, '250 GB & 500 GB', 5),
(26, '250 GB, 320 GB, 2 TB AND 320 GB', 5),
(27, '320 GB', 5),
(28, '4 GB', 13),
(29, '4 GB 2PCS', 13),
(30, '4 GB 3PCS', 13),
(31, '40 GB', 5),
(32, '40 GB 2PCS', 5),
(33, '4 GB & 8 GB', 14),
(34, '500 GB & 1 TB', 5),
(35, '500 GB & 80 GB', 5),
(36, '500 GB 2PCS & 320 GB', 5),
(37, '500 GB SEAGATE', 5),
(38, '500 GB HITACHI', 5),
(39, '500 GB, 2 TB, & 80 GB', 5),
(40, '8 GB', 13),
(41, '8 GB 2PCS', 13),
(42, '80 GB', 5),
(43, '80 GB & 160GB', 5),
(44, '80 GB & 1TB', 5),
(45, '80 GB 2PCS', 5),
(46, '80 GB 2PCS & 20GB', 5),
(47, '835 GB IBM SERVERRAID M5110E', 5),
(48, '8GB, 4GB', 13),
(49, '960 MB', 13),
(50, 'ACER S200HQL 20 IN', 7),
(51, 'ACER X163W A 16 IN', 7),
(52, 'ACER X163WL 16 IN', 7),
(53, 'AMD ATHLON 64 X2 5200+BRISBANE 65NM TECH', 8),
(54, 'AMD SEMPRON 140 PROCESSOR', 8),
(55, 'APPLE INC. IMAC 9.1', 8),
(56, 'APPLE INC. MAC-F227BEC8', 8),
(57, 'ASROCK N68-VS3 UCC', 8),
(58, 'ASUS COMPUTER INC. P5S-MX SE', 8),
(59, 'ASUS H61M-C', 8),
(60, 'ASUS H81M-C', 8),
(61, 'ASUS H81M-D', 8),
(62, 'ASUS H81M-E', 8),
(63, 'ASUS P4KPL-AM SE', 8),
(64, 'ASUS P5G41C-M LX', 8),
(65, 'ASUS P5GC-MX/1333', 8),
(66, 'ASUS P5GC-MX/GBL (LGA 775)', 8),
(67, 'ASUS P5KPL-AM EPU', 8),
(68, 'ASUS P5KPL-AM SE', 8),
(69, 'ASUS P5L-MX', 8),
(70, 'ASUS P5S32-VM', 8),
(71, 'ASUS P5SD2-VM', 8),
(72, 'ASUS P5S-MX SE', 8),
(73, 'ASUS P5VD2-MX SE', 8),
(74, 'ASUS P5VD2-VM SE', 8),
(75, 'ASUS P7H55-M LE/USB3', 8),
(76, 'ASUS P7H55-M LX', 8),
(77, 'ASUS P8H61-M LE/USB3', 8),
(78, 'ASUS P8H61-M LX3 PLUS', 8),
(79, 'ASUS P8H77-M LE', 8),
(80, 'ASUS P8Z68-V PRO', 8),
(81, 'ASUS SABERTOOTH P67', 8),
(82, 'ASUS V2197 19 IN', 8),
(83, 'ASUS VS197 19 IN', 8),
(84, 'CLEVO CO. M1100M', 8),
(85, 'ECS H87H3-M', 8),
(86, 'ELITE GROUP P4M266', 8),
(87, 'GIGABYTE TECHNOLOGY CO., LTD G41M-COMBO', 8),
(88, 'HANNS.G HK162ABB 16 IN', 7),
(89, 'HANNS.G HL161ABB 16 IN', 7),
(90, 'HANNS.G HSG1027 17 IN', 7),
(91, 'HANNS.G HSG1125 16 IN', 7),
(92, 'IMB 00J6528', 8),
(93, 'INTEL ATOM N450 @ 1.66GHZ', 3),
(94, 'INTEL CORE 2 DUO @ 2.20 GHZ', 3),
(95, 'INTEL CORE 2 DUO @ 2.93 GHZ', 3),
(96, 'INTEL CORE 2 DUO 2.66 GHZ', 3),
(97, 'INTEL CORE 2 DUO E4500 @ 2.20 GHz', 3),
(98, 'INTEL CORE 2 DUO E4600 @ 2.40 GHz', 3),
(99, 'INTEL CORE 2 DUO E5400 @ 2.70 GHz', 3),
(100, 'INTEL CORE 2 DUO E5700 @ 2.93 GHz', 3),
(101, 'INTEL CORE 2 DUO E7200 @ 2.53 GHz', 3),
(102, 'INTEL CORE 2 DUO E7300 @ 2.66 GHz', 3),
(103, 'INTEL CORE 2 DUO E7500 @ 2.93 GHz', 3),
(104, 'INTEL CORE 2 DUO E8135 @ 2.66 GHz', 3),
(105, 'INTEL CORE 2 DUO E8235 @ 2.80 GHz', 3),
(106, 'INTEL CORE 2 QUAD Q8300 @ 2.5 GHz', 3),
(107, 'INTEL CORE 2 QUAD Q8300 @ 2.50 GHz', 3),
(108, 'INTEL CORE 2 QUAD Q8400 @ 2.66GHZ', 3),
(109, 'INTEL CORE 2 QUAD Q9300 @ 2.50GHZ', 3),
(110, 'INTEL CORE i3 @ 3.30 GHZ', 3),
(111, 'INTEL CORE i3 100 CPU @ 3.10 GHz', 3),
(112, 'INTEL CORE i3 2100 @ 3.30 GHz', 3),
(113, 'INTEL CORE i3 2100 CPU @ 3.10 GHz', 3),
(114, 'INTEL CORE i3 2120 CPU @ 3.30 GHZ', 3),
(115, 'INTEL CORE i3 540 @ 3.07 GHz', 3),
(116, 'INTEL CORE i3 540 CPU @ 3.07 GHz', 3),
(117, 'INTEL CORE i5 @ 2.80 GHz', 3),
(118, 'INTEL CORE i5 2300 @ 2.80 GHz', 3),
(119, 'INTEL CORE i5 2300 CPU @ 2.80 GHz', 3),
(120, 'INTEL CORE i5 2400 CPU @ 3.10 GHz', 3),
(121, 'INTEL CORE i5 3470 @ 3.20 GHz', 3),
(122, 'INTEL CORE i5 3470 CPU @ 3.20 GHz', 3),
(123, 'INTEL CORE i5 3570 CPU @ 3.40 GHz', 3),
(124, 'INTEL CORE i5 4440 CPU @ 3.10 GHz', 3),
(125, 'INTEL CORE i5 4460 CPU @ 3.20 GHz', 3),
(126, 'INTEL CORE i5 4590 CPU @ 3.30 GHz', 3),
(127, 'INTEL CORE i7 2600 CPU @ 3.10 GHz', 3),
(128, 'INTEL CORE i7 2600 CPU @ 3.40 GHz', 3),
(129, 'INTEL CORE i7 2600K CPU @ 3.40 GHz', 3),
(130, 'INTEL CORE i7 3770 CPU @ 3.40 GHz', 3),
(131, 'INTEL CORE i7 4790 CPU @ 3.60 GHz', 3),
(132, 'INTEL CORE i7 4790K CPU@ 4.00 GHz', 3),
(133, 'INTEL CORE i7 870 @ 2.93 GHz', 3),
(134, 'INTEL CORPORATION DH55PJ', 3),
(135, 'INTEL CORPORATION DH61WW', 3),
(136, 'INTEL PENTIUM 4 2.26 GHz', 3),
(137, 'INTEL PENTIUM D @ 3.0 GHz', 3),
(138, 'INTEL PENTIUM D 3 GHz', 3),
(139, 'INTEL XEON CPU E5-2640 0 @ 2.50 GHz', 3),
(140, 'LCD MONITOR (ACER X163W A)', 3),
(141, 'LCD MONITOR (H.P 19 INCHES)', 7),
(142, 'LG L1552S-SF 15 IN', 7),
(143, 'LG L1753S5 17 IN', 7),
(144, 'LX 310 PRINTER', 12),
(145, 'MICRO-STAR INTERNATIONAL G31M3(MS-7529)', 8),
(146, 'MICRO-STAR INTERNATIONAL MS-7255 V2.0', 8),
(147, 'MSI G41M-P33 COMBO(MS-7592)', 8),
(148, 'MSI H55M-E21(MS-7636)', 8),
(149, 'MSI H67MA-E45', 8),
(150, 'MSI H77MA-G43(MS-7756)', 8),
(151, 'MSI H81M-E33', 8),
(152, 'MSI H81M-P33', 8),
(153, 'MSI H81M-P33 (MS-7817)', 8),
(154, 'MSI H97M-E35 (MS-7846)', 8),
(155, 'MSI H97M-G43 (MS-7924)', 8),
(156, 'MSI H97M-G43(MS-7924)', 8),
(157, 'MSI N1996', 8),
(158, 'MSI P67A-GD55(MS-7681)', 8),
(159, 'MSI P67A-GD65', 8),
(160, 'MX LINUX', 10),
(161, 'NETWORK CABLE (1BOX)', 2),
(162, 'NETWORK CABLE 9 METERS', 2),
(163, 'PENTIUM D CPU 3.00 GHz', 3),
(164, 'PENTIUM R DUAL CORE E2160 @ 1.80 GHz', 3),
(165, 'PENTIUM R DUAL CORE E2180 CPU', 3),
(166, 'PENTIUM R DUAL CORE E5400 @2.70GHz', 3),
(167, 'PENTIUM R DUAL CORE E5800 @ 3.20 GHz', 3),
(168, 'PHILIPS 193V5LSB2/71 19 IN', 7),
(169, 'POWER CORD', 2),
(170, 'UBUNTU 18.04.1 LTS 64-BIT', 10),
(171, 'UBUNTU 20.04 LTS', 10),
(172, 'UPS (APC 650)', 14),
(173, 'VGA CABLE', 2),
(174, 'WINDOWS 10 PROFESSIONAL 64-BIT', 10),
(175, 'WINDOWS 7 ALIENWARE 2010', 10),
(176, 'WINDOWS 7 HOME BASIC', 10),
(177, 'WINDOWS 7 HOME PREMIUM', 10),
(178, 'WINDOWS 7 PROFESSIONAL 32-BIT', 10),
(179, 'WINDOWS 7 PROFESSIONAL 64-BIT', 10),
(180, 'WINDOWS 7 ULTIMATE 32-BIT', 10),
(181, 'WINDOWS 7 ULTIMATE 64-BIT', 10),
(182, 'WINDOWS SERVER 2003', 10),
(183, 'WINDOWS SERVER 2008 R2 STANDARD', 10),
(184, 'WINDOWS XP HOME EDITION SP2', 10),
(185, 'WINDOWS XP HOME EDITION SP3', 10),
(186, 'WINDOWS XP PROFESSIONAL EDITION SP3', 10),
(187, 'ZTE POCKET WIFI', 4),
(188, 'KEYBOARD (GENIUS)', 6),
(189, 'MOUSE (A4TECH)', 9),
(190, 'MOUSE  (GENIUS)', 9),
(191, 'KEYBOARD (A4TECH)', 6),
(192, 'AVR (GENERIC)', 1),
(193, 'AVR (SECURE)', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `systemunitlist`
--
CREATE TABLE IF NOT EXISTS `systemunitlist` (
`id` int(11)
,`sold_date` text
,`status` varchar(255)
,`cpu` varchar(255)
,`hdd` varchar(255)
,`ram` varchar(255)
,`mobo` varchar(255)
,`os` varchar(255)
,`buyername` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `system_location`
--

CREATE TABLE IF NOT EXISTS `system_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `system_location`
--

INSERT INTO `system_location` (`id`, `unit_location`) VALUES
(1, 'IT-DEPT'),
(2, 'CDO'),
(3, 'WAREHOUSE'),
(4, 'CEBU'),
(5, 'DAVAO');

-- --------------------------------------------------------

--
-- Table structure for table `system_status`
--

CREATE TABLE IF NOT EXISTS `system_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `system_status`
--

INSERT INTO `system_status` (`id`, `status`) VALUES
(1, 'SOLD'),
(2, 'RESERVE'),
(3, 'CURRENTLY USE'),
(4, 'FOR SALE');

-- --------------------------------------------------------

--
-- Table structure for table `system_unit`
--

CREATE TABLE IF NOT EXISTS `system_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_checked` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `cpu_id` int(11) NOT NULL,
  `hdd_id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `mobo_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `remarks` text,
  `designation` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `duplicate_data` varchar(10) NOT NULL DEFAULT 'false',
  `buyer_id` int(11) DEFAULT NULL,
  `sold_date` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `system_unit`
--

INSERT INTO `system_unit` (`id`, `date_checked`, `location_id`, `status_id`, `cpu_id`, `hdd_id`, `ram_id`, `mobo_id`, `os_id`, `remarks`, `designation`, `mac_address`, `user`, `duplicate_data`, `buyer_id`, `sold_date`) VALUES
(1, '2020-10-25', 2, 4, 93, 4, 2, 1, 160, '', '', '', '', 'false', NULL, NULL),
(2, '2020-10-25', 3, 1, 110, 10, 19, 58, 160, '', '', '', '', 'false', 1, '2020-10-25'),
(3, '2020-10-25', 2, 2, 117, 6, 28, 147, 160, '', '', '', '', 'false', NULL, ''),
(4, '2020/10/25', 1, 4, 110, 6, 28, 147, 175, '', '', '', '', 'false', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username_user` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'subscriber',
  `login_counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username_user`, `user_pass`, `user_email`, `user_image`, `user_role`, `login_counter`) VALUES
(1, 'romeo', '1010', 'sample@sample.com', '2x2.png', 'admin', 0),
(2, 'demo', 'demo', 'example@example.com', 'aeon3.jpg', 'admin', 0),
(3, 'nina', '1010', 'example@example.com', 'Mother.png', 'admin', 0);

-- --------------------------------------------------------

--
-- Structure for view `accessoriesview`
--
DROP TABLE IF EXISTS `accessoriesview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `accessoriesview` AS select `a`.`system_id` AS `id`,`c`.`buyer_name` AS `buyer_name`,`a`.`items_id` AS `items_id`,`a`.`qty` AS `qty`,`a`.`system_id` AS `system_id`,`b`.`item_description` AS `idesc`,`a`.`status` AS `STATUS` from ((`accessories_sold` `a` join `item_masterfile` `b`) join `buyer` `c`) where ((`a`.`items_id` = `b`.`id`) and (`a`.`buyer_id` = `c`.`id`) and (`a`.`status` <> 'tag'));

-- --------------------------------------------------------

--
-- Structure for view `full_item`
--
DROP TABLE IF EXISTS `full_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `full_item` AS select `a`.`id` AS `id`,`a`.`item_description` AS `description`,`b`.`id` AS `catid`,`b`.`category` AS `category` from (`item_masterfile` `a` join `item_category` `b`) where (`a`.`cat_id` = `b`.`id`);

-- --------------------------------------------------------

--
-- Structure for view `systemunitlist`
--
DROP TABLE IF EXISTS `systemunitlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `systemunitlist` AS select `a`.`id` AS `id`,`a`.`sold_date` AS `sold_date`,`b`.`status` AS `status`,`c`.`item_description` AS `cpu`,`d`.`item_description` AS `hdd`,`e`.`item_description` AS `ram`,`f`.`item_description` AS `mobo`,`g`.`item_description` AS `os`,`h`.`buyer_name` AS `buyername` from (((((((`system_unit` `a` join `system_status` `b` on((`b`.`id` = `a`.`status_id`))) join `item_masterfile` `c` on((`c`.`id` = `a`.`cpu_id`))) join `item_masterfile` `d` on((`d`.`id` = `a`.`hdd_id`))) join `item_masterfile` `e` on((`e`.`id` = `a`.`ram_id`))) join `item_masterfile` `f` on((`f`.`id` = `a`.`mobo_id`))) join `item_masterfile` `g` on((`g`.`id` = `a`.`os_id`))) left join `buyer` `h` on((`h`.`id` = `a`.`buyer_id`)));

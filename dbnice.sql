-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2020 at 02:42 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `accessories_sold`
--

INSERT INTO `accessories_sold` (`id`, `buyer_id`, `items_id`, `qty`, `system_id`, `status`) VALUES
(1, 11, 131, 1, 1, 'save'),
(2, 11, 169, 1, 1, 'save'),
(3, 11, 45, 1, 1, 'save'),
(4, 11, 78, 1, 1, 'save'),
(5, 11, 164, 2, 1, 'save'),
(6, 11, 140, 1, 1, 'save'),
(7, 36, 78, 1, 2, 'save'),
(8, 36, 164, 2, 2, 'save'),
(9, 36, 140, 1, 2, 'save'),
(10, 36, 45, 1, 2, 'save'),
(11, 36, 169, 1, 2, 'save'),
(12, 36, 131, 1, 2, 'save'),
(13, 7, 169, 1, 5, 'save'),
(14, 7, 164, 2, 5, 'save'),
(15, 7, 45, 1, 5, 'save'),
(16, 7, 78, 1, 5, 'save'),
(17, 7, 131, 1, 5, 'save'),
(18, 7, 140, 1, 5, 'save'),
(19, 35, 164, 2, 7, 'save'),
(20, 35, 45, 1, 7, 'save'),
(21, 35, 169, 1, 7, 'save'),
(22, 35, 131, 1, 7, 'save'),
(23, 35, 140, 1, 7, 'save'),
(24, 35, 78, 1, 7, 'save'),
(25, 36, 140, 1, 8, 'save'),
(26, 36, 164, 2, 8, 'save'),
(27, 36, 169, 1, 8, 'save'),
(28, 36, 45, 1, 8, 'save'),
(29, 36, 78, 1, 8, 'save'),
(30, 36, 131, 1, 8, 'save'),
(31, 2, 45, 1, 10, 'save'),
(32, 2, 164, 2, 10, 'save'),
(33, 2, 131, 1, 10, 'save'),
(34, 2, 169, 1, 10, 'save'),
(35, 2, 140, 1, 10, 'save'),
(36, 2, 78, 1, 10, 'save'),
(37, 11, 164, 2, 11, 'save'),
(38, 11, 45, 1, 11, 'save'),
(39, 11, 78, 1, 11, 'save'),
(40, 11, 169, 1, 11, 'save'),
(41, 11, 131, 1, 11, 'save'),
(42, 11, 140, 1, 11, 'save'),
(43, 23, 45, 1, 12, 'save'),
(44, 23, 169, 1, 12, 'save'),
(45, 23, 164, 2, 12, 'save'),
(46, 23, 131, 1, 12, 'save'),
(47, 23, 140, 1, 12, 'save'),
(48, 23, 78, 1, 12, 'save'),
(49, 17, 140, 1, 25, 'save'),
(50, 17, 131, 1, 25, 'save'),
(51, 17, 45, 1, 25, 'save'),
(52, 17, 78, 1, 25, 'save'),
(53, 17, 169, 1, 25, 'save'),
(54, 17, 164, 2, 25, 'save'),
(55, 17, 78, 1, 28, 'save'),
(56, 17, 169, 1, 28, 'save'),
(57, 17, 140, 1, 28, 'save'),
(58, 17, 45, 1, 28, 'save'),
(59, 17, 164, 2, 28, 'save'),
(60, 17, 131, 1, 28, 'save'),
(61, 27, 45, 1, 37, 'save'),
(62, 27, 140, 1, 37, 'save'),
(63, 27, 78, 1, 37, 'save'),
(64, 27, 131, 1, 37, 'save'),
(65, 27, 169, 1, 37, 'save'),
(66, 27, 164, 2, 37, 'save'),
(67, 35, 140, 1, 43, 'save'),
(68, 35, 78, 1, 43, 'save'),
(69, 35, 131, 1, 43, 'save'),
(70, 35, 45, 1, 43, 'save'),
(71, 35, 164, 2, 43, 'save'),
(72, 35, 169, 1, 43, 'save'),
(73, 21, 164, 2, 47, 'save'),
(74, 21, 78, 1, 47, 'save'),
(75, 21, 169, 1, 47, 'save'),
(76, 21, 140, 1, 47, 'save'),
(77, 21, 131, 1, 47, 'save'),
(78, 21, 45, 1, 47, 'save'),
(79, 34, 164, 2, 50, 'save'),
(80, 34, 140, 1, 50, 'save'),
(81, 34, 45, 1, 50, 'save'),
(82, 34, 169, 1, 50, 'save'),
(83, 34, 131, 1, 50, 'save'),
(84, 34, 78, 1, 50, 'save'),
(85, 37, 164, 2, 73, 'save'),
(86, 37, 169, 1, 73, 'save'),
(87, 37, 140, 1, 73, 'save'),
(88, 37, 78, 1, 73, 'save'),
(89, 37, 45, 1, 73, 'save'),
(90, 37, 131, 1, 73, 'save'),
(91, 45, 164, 2, 106, 'save'),
(92, 45, 78, 1, 106, 'save'),
(93, 45, 140, 1, 106, 'save'),
(94, 45, 131, 1, 106, 'save'),
(95, 45, 45, 1, 106, 'save'),
(96, 45, 169, 1, 106, 'save'),
(97, 35, 45, 1, 209, 'save'),
(98, 35, 140, 1, 209, 'save'),
(99, 35, 131, 1, 209, 'save'),
(100, 35, 78, 1, 209, 'save'),
(101, 35, 169, 1, 209, 'save'),
(102, 35, 164, 2, 209, 'save'),
(103, 7, 164, 2, 214, 'save'),
(104, 7, 140, 1, 214, 'save'),
(105, 7, 131, 1, 214, 'save'),
(106, 7, 45, 1, 214, 'save'),
(107, 7, 78, 1, 214, 'save'),
(108, 7, 169, 1, 214, 'save'),
(109, 17, 45, 1, 215, 'save'),
(110, 17, 140, 1, 215, 'save'),
(111, 17, 131, 1, 215, 'save'),
(112, 17, 164, 2, 215, 'save'),
(113, 17, 169, 1, 215, 'save'),
(114, 17, 78, 1, 215, 'save'),
(115, 2, 45, 1, 216, 'save'),
(116, 2, 140, 1, 216, 'save'),
(117, 2, 169, 1, 216, 'save'),
(118, 2, 78, 1, 216, 'save'),
(119, 2, 164, 2, 216, 'save'),
(120, 2, 131, 1, 216, 'save'),
(121, 2, 140, 1, 269, 'save'),
(122, 2, 45, 1, 269, 'save'),
(123, 2, 131, 1, 269, 'save'),
(124, 2, 164, 2, 269, 'save'),
(125, 2, 78, 1, 269, 'save'),
(126, 2, 169, 1, 269, 'save'),
(127, 35, 78, 1, 273, 'save'),
(128, 35, 45, 1, 273, 'save'),
(129, 35, 140, 1, 273, 'save'),
(130, 35, 169, 1, 273, 'save'),
(131, 35, 131, 1, 273, 'save'),
(132, 35, 164, 2, 273, 'save'),
(133, 17, 140, 1, 14, 'save'),
(134, 17, 131, 1, 14, 'save'),
(135, 17, 86, 1, 14, 'save'),
(136, 17, 169, 1, 14, 'save'),
(137, 17, 164, 2, 14, 'save'),
(138, 36, 140, 1, 19, 'save'),
(139, 36, 131, 1, 19, 'save'),
(140, 36, 78, 1, 19, 'save'),
(141, 36, 45, 1, 19, 'save'),
(142, 36, 169, 1, 19, 'save'),
(143, 36, 164, 2, 19, 'save');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`activitylog`, `user`, `action`, `activitydate`, `activitytime`, `device`, `ip`, `session`) VALUES
(1, 'romeo', 'Logged In', '2020-10-24', '11:35:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(2, 'romeo', 'Logged In', '2020-10-24', '11:37:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(3, 'romeo', 'Logged In', '2020-10-24', '11:43:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.284', '127.0.0.1', 'lupd83ls1hgs3r5akg9rvorlq6'),
(5, 'romeo', 'Logged In', '2020-10-24', '11:45:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(6, 'romeo', 'Logged Out', '2020-10-24', '11:45:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(7, 'romeo', 'Logged Out', '2020-10-24', '11:45:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(280, 'romeo', 'Logged Out', '20/11/08', '09:23:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(281, 'romeo', 'Logged Out', '20/11/08', '09:23:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(193, 'romeo', 'Logged Out', '20/11/01', '08:49:34am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(282, 'romeo', 'Logged In', '20/11/09', '07:31:33pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(283, 'romeo', 'Logged Out', '20/11/09', '07:31:55pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(284, 'romeo', 'Logged Out', '20/11/09', '07:31:55pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(285, 'romeo', 'Logged In', '20/11/09', '07:34:31pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(286, 'romeo', 'Logged Out', '20/11/09', '10:41:04pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(287, 'romeo', 'Logged Out', '20/11/09', '10:41:04pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(208, 'romeo', 'Logged In', '20/11/02', '02:35:09pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(209, 'romeo', 'Logged Out', '20/11/02', '02:37:52pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(210, 'romeo', 'Logged Out', '20/11/02', '02:37:52pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(211, 'romeo', 'Logged In', '20/11/02', '02:38:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'c17dijo8dpoi8hl3qu7ns3uau1'),
(183, 'romeo', 'Logged Out', '20/10/31', '06:47:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(205, 'romeo', 'Logged In', '20/11/02', '07:25:26am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(206, 'romeo', 'Logged Out', '20/11/02', '08:15:21am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(207, 'romeo', 'Logged Out', '20/11/02', '08:15:21am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(194, 'romeo', 'Logged In', '20/11/01', '08:49:44am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(195, 'romeo', 'Logged Out', '20/11/01', '11:30:52am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(196, 'romeo', 'Logged Out', '20/11/01', '11:30:52am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(197, 'romeo', 'Logged In', '20/11/01', '01:04:43pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(198, 'romeo', 'Logged In', '20/11/01', '05:41:23pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(199, 'romeo', 'Logged Out', '20/11/01', '06:28:58pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(200, 'romeo', 'Logged Out', '20/11/01', '06:28:58pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(201, 'romeo', 'Logged In', '20/11/01', '08:14:09pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(202, 'romeo', 'Logged In', '20/11/01', '09:15:42pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(203, 'romeo', 'Logged Out', '20/11/01', '10:16:53pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(204, 'romeo', 'Logged Out', '20/11/01', '10:16:53pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(184, 'romeo', 'Logged Out', '20/10/31', '06:47:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(185, 'romeo', 'Logged In', '20/10/31', '07:39:28pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(186, 'romeo', 'Logged Out', '20/10/31', '09:23:33pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(187, 'romeo', 'Logged Out', '20/10/31', '09:23:33pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(188, 'romeo', 'Logged In', '20/10/31', '09:33:06pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(189, 'romeo', 'Logged Out', '20/10/31', '09:54:34pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(190, 'romeo', 'Logged Out', '20/10/31', '09:54:34pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(191, 'romeo', 'Logged In', '20/11/01', '08:49:29am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(192, 'romeo', 'Logged Out', '20/11/01', '08:49:34am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
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
(78, 'romeo', 'Logged Out', '20/10/26', '06:02:14am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'k5utsa8tm1uei5rf3rvickkf81'),
(79, 'romeo', 'Logged In', '20/10/26', '06:49:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'usdn2vuca6h6lle28vbdor25l0'),
(80, 'romeo', 'Logged Out', '20/10/26', '07:45:48pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'usdn2vuca6h6lle28vbdor25l0'),
(81, 'romeo', 'Logged In', '20/10/26', '09:13:24pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', '3dvv239mdobhssnblam7mtdv72'),
(82, 'romeo', 'Logged Out', '20/10/26', '09:14:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', '3dvv239mdobhssnblam7mtdv72'),
(83, 'romeo', 'Logged Out', '20/10/26', '09:14:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', '3dvv239mdobhssnblam7mtdv72'),
(84, 'romeo', 'Logged In', '20/10/26', '09:15:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', '3dvv239mdobhssnblam7mtdv72'),
(85, 'romeo', 'Logged Out', '20/10/26', '09:16:17pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', '3dvv239mdobhssnblam7mtdv72'),
(86, 'romeo', 'Logged In', '20/10/26', '09:20:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '1ep6hs5ah765kl4f63b2gsaci2'),
(87, 'romeo', 'Logged Out', '20/10/26', '09:28:02pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '1ep6hs5ah765kl4f63b2gsaci2'),
(88, '', 'Logged Out', '20/10/26', '10:05:43pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 're0ql41dgbshdjfaqpakvv05jf'),
(89, 'romeo', 'Logged In', '20/10/26', '10:05:58pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 're0ql41dgbshdjfaqpakvv05jf'),
(90, 'romeo', 'Logged Out', '20/10/26', '10:18:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 're0ql41dgbshdjfaqpakvv05jf'),
(91, 'romeo', 'Logged Out', '20/10/26', '10:18:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 're0ql41dgbshdjfaqpakvv05jf'),
(92, 'romeo', 'Logged In', '20/10/26', '10:19:14pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'pel3qjh9r2de9nv8b1mkf3ta42'),
(93, 'romeo', 'Logged Out', '20/10/26', '10:36:25pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'pel3qjh9r2de9nv8b1mkf3ta42'),
(94, 'romeo', 'Logged Out', '20/10/26', '10:36:25pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'pel3qjh9r2de9nv8b1mkf3ta42'),
(95, 'romeo', 'Logged In', '20/10/26', '10:36:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'pel3qjh9r2de9nv8b1mkf3ta42'),
(96, 'romeo', 'Logged Out', '20/10/26', '10:44:49pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'pel3qjh9r2de9nv8b1mkf3ta42'),
(97, 'romeo', 'Logged In', '20/10/26', '10:45:13pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '4jfqv048s0hke7sho717dsidk1'),
(98, 'romeo', 'Logged In', '20/10/26', '10:58:07pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '4jfqv048s0hke7sho717dsidk1'),
(99, 'romeo', 'Logged Out', '20/10/26', '11:56:01pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '4jfqv048s0hke7sho717dsidk1'),
(100, 'romeo', 'Logged In', '20/10/27', '04:57:33am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'f9m0dtprh83qqgano00tn8k4l7'),
(101, 'romeo', 'Logged Out', '20/10/27', '05:45:03am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'f9m0dtprh83qqgano00tn8k4l7'),
(102, 'romeo', 'Logged Out', '20/10/27', '05:45:03am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'f9m0dtprh83qqgano00tn8k4l7'),
(103, 'romeo', 'Logged In', '20/10/27', '05:45:24am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'v56p50fvrkuencehse9c19de16'),
(104, 'romeo', 'Logged Out', '20/10/27', '05:48:22am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'v56p50fvrkuencehse9c19de16'),
(105, 'romeo', 'Logged Out', '20/10/27', '05:48:22am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'v56p50fvrkuencehse9c19de16'),
(106, 'romeo', 'Logged In', '20/10/27', '05:48:34am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '6s189dl8lph5p6t1p9sc1t1r97'),
(107, 'romeo', 'Logged Out', '20/10/27', '05:55:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '6s189dl8lph5p6t1p9sc1t1r97'),
(108, 'romeo', 'Logged Out', '20/10/27', '05:55:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '6s189dl8lph5p6t1p9sc1t1r97'),
(109, 'romeo', 'Logged In', '20/10/27', '05:55:58am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7a9ondm05fmllqc9lt3kjorvm2'),
(110, 'romeo', 'Logged In', '20/10/27', '05:56:57am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7a9ondm05fmllqc9lt3kjorvm2'),
(111, 'romeo', 'Logged Out', '20/10/27', '05:59:30am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '7a9ondm05fmllqc9lt3kjorvm2'),
(112, 'romeo', 'Logged In', '20/10/27', '06:00:05am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '6ms9rumhb1ko3869p1l0tdlf33'),
(113, 'romeo', 'Logged Out', '20/10/27', '06:14:47am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '6ms9rumhb1ko3869p1l0tdlf33'),
(114, 'romeo', 'Logged In', '20/10/27', '06:15:02am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(115, 'romeo', 'Logged In', '20/10/27', '06:22:32am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(116, 'romeo', 'Logged In', '20/10/27', '06:27:13am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(117, 'romeo', 'Logged Out', '20/10/27', '06:44:08am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(118, '', 'Logged Out', '20/10/27', '06:44:10am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(119, '', 'Logged Out', '20/10/27', '06:44:10am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '23jhvv641d08euenej13rdu947'),
(120, 'romeo', 'Logged In', '20/10/27', '06:58:14am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(121, 'romeo', 'Logged In', '20/10/27', '06:59:12am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(122, 'romeo', 'Logged Out', '20/10/27', '07:03:43am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(123, '', 'Logged Out', '20/10/27', '07:03:45am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(124, '', 'Logged Out', '20/10/27', '07:03:45am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(125, 'romeo', 'Logged In', '20/10/28', '06:02:51am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(126, 'romeo', 'Logged Out', '20/10/28', '06:03:25am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(127, 'romeo', 'Logged Out', '20/10/28', '06:03:25am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(128, 'romeo', 'Logged In', '20/10/28', '06:05:19am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(129, 'romeo', 'Logged Out', '20/10/28', '06:59:40am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(130, 'romeo', 'Logged Out', '20/10/28', '06:59:40am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(131, 'romeo', 'Logged In', '20/10/28', '06:59:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(132, 'romeo', 'Logged Out', '20/10/28', '07:22:10am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(133, 'romeo', 'Logged Out', '20/10/28', '07:22:10am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(134, 'romeo', 'Logged In', '20/10/28', '07:22:20am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(135, 'romeo', 'Logged Out', '20/10/28', '07:42:33am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(136, 'romeo', 'Logged Out', '20/10/28', '07:42:33am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(137, 'romeo', 'Logged In', '20/10/28', '07:42:37am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(138, 'romeo', 'Logged Out', '20/10/28', '07:42:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(139, 'romeo', 'Logged Out', '20/10/28', '07:42:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(140, 'romeo', 'Logged In', '20/10/28', '07:42:51am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(141, 'romeo', 'Logged Out', '20/10/28', '08:24:47am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(142, 'romeo', 'Logged Out', '20/10/28', '08:24:47am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(143, 'romeo', 'Logged In', '20/10/28', '11:46:38am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', 'edst8o77i32ltmptqt8nvk1986'),
(144, 'romeo', 'Logged Out', '20/10/28', '04:57:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', 'edst8o77i32ltmptqt8nvk1986'),
(145, 'romeo', 'Logged Out', '20/10/28', '04:57:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', 'edst8o77i32ltmptqt8nvk1986'),
(146, 'romeo', 'Logged In', '20/10/28', '06:11:36pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(147, 'romeo', 'Logged Out', '20/10/28', '06:14:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(148, 'romeo', 'Logged Out', '20/10/28', '06:14:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(149, 'romeo', 'Logged In', '20/10/28', '06:14:49pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(150, 'romeo', 'Logged In', '20/10/28', '06:17:44pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(151, 'romeo', 'Logged Out', '20/10/28', '06:21:13pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(152, 'romeo', 'Logged In', '20/10/28', '06:21:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(153, 'romeo', 'Logged In', '20/10/28', '07:35:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(154, 'romeo', 'Logged Out', '20/10/28', '07:35:25pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(155, 'romeo', 'Logged In', '20/10/28', '07:35:31pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(156, 'romeo', 'Logged Out', '20/10/28', '07:40:04pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(157, 'romeo', 'Logged Out', '20/10/28', '07:40:04pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(158, 'romeo', 'Logged In', '20/10/28', '07:40:08pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(159, 'romeo', 'Logged Out', '20/10/28', '08:22:33pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(160, 'romeo', 'Logged Out', '20/10/28', '08:22:33pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(161, 'romeo', 'Logged In', '20/10/29', '05:30:47am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '8mc029bculvpmc7mgmgcg34bk5'),
(162, 'romeo', 'Logged Out', '20/10/29', '06:52:27am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '8mc029bculvpmc7mgmgcg34bk5'),
(163, 'romeo', 'Logged Out', '20/10/29', '06:52:27am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', '8mc029bculvpmc7mgmgcg34bk5'),
(164, 'romeo', 'Logged In', '20/10/29', '07:52:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(165, 'romeo', 'Logged Out', '20/10/29', '09:25:26pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(166, 'romeo', 'Logged Out', '20/10/29', '09:25:26pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(167, 'romeo', 'Logged In', '20/10/30', '05:30:46am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(168, 'romeo', 'Logged Out', '20/10/30', '06:07:11am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(169, 'romeo', 'Logged Out', '20/10/30', '06:07:11am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(170, 'romeo', 'Logged In', '20/10/31', '05:30:52am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(171, 'romeo', 'Logged Out', '20/10/31', '06:19:02am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(172, 'romeo', 'Logged Out', '20/10/31', '06:19:02am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(173, 'romeo', 'Logged In', '20/10/31', '10:41:04am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(174, 'romeo', 'Logged Out', '20/10/31', '10:41:08am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(175, 'romeo', 'Logged In', '20/10/31', '10:41:12am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(176, 'romeo', 'Logged Out', '20/10/31', '12:03:55pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(177, 'romeo', 'Logged Out', '20/10/31', '12:03:55pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(178, '', 'Logged Out', '20/10/31', '12:03:59pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(179, '', 'Logged Out', '20/10/31', '12:03:59pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(180, 'romeo', 'Logged In', '20/10/31', '01:32:20pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(181, 'romeo', 'Logged Out', '20/10/31', '03:49:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(182, 'romeo', 'Logged In', '20/10/31', '04:18:57pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(212, 'romeo', 'Logged Out', '20/11/02', '04:02:38pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'c17dijo8dpoi8hl3qu7ns3uau1'),
(213, 'romeo', 'Logged Out', '20/11/02', '04:02:38pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'c17dijo8dpoi8hl3qu7ns3uau1'),
(214, 'romeo', 'Logged In', '20/11/02', '04:02:57pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', '2cff2teo8bh3diu32h6tqqq1l5'),
(215, 'romeo', 'Logged Out', '20/11/02', '04:52:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', '2cff2teo8bh3diu32h6tqqq1l5'),
(216, 'romeo', 'Logged Out', '20/11/02', '04:52:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', '2cff2teo8bh3diu32h6tqqq1l5'),
(217, 'romeo', 'Logged In', '20/11/02', '06:32:09pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(218, 'romeo', 'Logged Out', '20/11/02', '06:43:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(219, 'romeo', 'Logged Out', '20/11/02', '06:43:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(220, 'romeo', 'Logged In', '20/11/02', '06:43:23pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(221, 'romeo', 'Logged In', '20/11/02', '06:48:26pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(222, 'romeo', 'Logged Out', '20/11/02', '06:52:49pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(223, 'romeo', 'Logged Out', '20/11/02', '06:52:49pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(224, 'romeo', 'Logged In', '20/11/02', '06:53:07pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(225, 'romeo', 'Logged Out', '20/11/02', '08:01:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(226, 'romeo', 'Logged Out', '20/11/02', '08:01:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(227, 'romeo', 'Logged In', '20/11/02', '08:01:52pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(228, 'romeo', 'Logged Out', '20/11/02', '08:04:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(229, 'romeo', 'Logged Out', '20/11/02', '08:04:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(230, 'romeo', 'Logged In', '20/11/02', '08:04:54pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'icducd4geuficr2onvvjdnh3c1'),
(231, 'romeo', 'Logged Out', '20/11/02', '09:44:29pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'icducd4geuficr2onvvjdnh3c1'),
(232, 'romeo', 'Logged Out', '20/11/02', '09:44:29pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'icducd4geuficr2onvvjdnh3c1'),
(233, 'romeo', 'Logged In', '20/11/03', '06:25:35pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(234, 'romeo', 'Logged Out', '20/11/03', '06:57:18pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(235, 'romeo', 'Logged Out', '20/11/03', '06:57:18pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(236, 'romeo', 'Logged In', '20/11/03', '06:57:35pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(237, 'romeo', 'Logged Out', '20/11/03', '07:52:57pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(238, 'romeo', 'Logged Out', '20/11/03', '07:52:57pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(239, 'romeo', 'Logged In', '20/11/03', '09:12:39pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(240, 'romeo', 'Logged In', '20/11/03', '11:03:58pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(241, 'romeo', 'Logged Out', '20/11/03', '11:06:07pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(242, 'romeo', 'Logged Out', '20/11/03', '11:06:07pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(243, 'romeo', 'Logged In', '20/11/06', '06:03:27am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(244, 'romeo', 'Logged Out', '20/11/06', '06:55:59am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(245, 'romeo', 'Logged Out', '20/11/06', '06:55:59am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(246, 'romeo', 'Logged In', '20/11/07', '04:35:34pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(247, 'romeo', 'Logged Out', '20/11/07', '04:38:42pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(248, 'romeo', 'Logged Out', '20/11/07', '04:38:42pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(249, 'romeo', 'Logged In', '20/11/07', '04:40:02pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(250, 'romeo', 'Logged Out', '20/11/07', '04:40:48pm', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Mobile Safari/537.36', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(251, 'romeo', 'Logged Out', '20/11/07', '04:40:48pm', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Mobile Safari/537.36', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(252, 'romeo', 'Logged In', '20/11/07', '04:40:54pm', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Mobile Safari/537.36', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(253, 'romeo', 'Logged Out', '20/11/07', '06:14:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(254, 'romeo', 'Logged Out', '20/11/07', '06:14:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6');
INSERT INTO `activitylog` (`activitylog`, `user`, `action`, `activitydate`, `activitytime`, `device`, `ip`, `session`) VALUES
(255, 'romeo', 'Logged In', '20/11/07', '09:31:18pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(256, 'romeo', 'Logged Out', '20/11/07', '11:31:21pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(257, 'romeo', 'Logged Out', '20/11/07', '11:31:21pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(258, 'romeo', 'Logged In', '20/11/08', '06:33:58am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(259, 'romeo', 'Logged Out', '20/11/08', '07:42:16am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(260, 'romeo', 'Logged Out', '20/11/08', '07:42:16am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(261, 'romeo', 'Logged In', '20/11/08', '09:59:34am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(262, 'romeo', 'Logged Out', '20/11/08', '12:54:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(263, 'romeo', 'Logged Out', '20/11/08', '12:54:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(264, 'romeo', 'Logged In', '20/11/08', '12:55:07pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(265, 'romeo', 'Logged Out', '20/11/08', '12:58:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(266, 'romeo', 'Logged Out', '20/11/08', '12:58:40pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(267, 'romeo', 'Logged In', '20/11/08', '06:35:28pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(268, 'romeo', 'Logged Out', '20/11/08', '06:50:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(269, 'romeo', 'Logged Out', '20/11/08', '06:50:51pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(270, 'romeo', 'Logged In', '20/11/08', '06:57:59pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(271, 'romeo', 'Logged Out', '20/11/08', '08:21:05pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(272, 'romeo', 'Logged Out', '20/11/08', '08:21:05pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(273, 'romeo', 'Logged In', '20/11/08', '08:21:20pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(274, 'romeo', 'Logged Out', '20/11/08', '08:21:38pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(275, 'romeo', 'Logged Out', '20/11/08', '08:21:38pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(276, 'romeo', 'Logged In', '20/11/08', '08:21:46pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'd1ickipao56j06pj9pi8k66947'),
(277, 'romeo', 'Logged Out', '20/11/08', '09:10:35pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'd1ickipao56j06pj9pi8k66947'),
(278, 'romeo', 'Logged Out', '20/11/08', '09:10:35pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'd1ickipao56j06pj9pi8k66947'),
(279, 'romeo', 'Logged In', '20/11/08', '09:19:59pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.310', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) NOT NULL,
  `buyer_photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `buyer_name`, `buyer_photo`) VALUES
(1, 'Ammante', 'amman.png'),
(2, 'Angie Balagot', 'angie.png'),
(3, 'Argie', 'none.jpg'),
(4, 'Brian', 'brian.png'),
(5, 'Cherry', 'cherry.png'),
(6, 'Dan Michael Enriquez', 'dan.png'),
(7, 'Dong', 'dong.png'),
(8, 'Edgar', 'none.jpg'),
(9, 'erwen', 'erwen.PNG'),
(10, 'Febielyn Sigua', 'febie.png'),
(11, 'Fernan', 'fernan.png'),
(12, 'FLOR', 'none.jpg'),
(13, 'Fred', 'none.jpg'),
(14, 'Gina', 'none.jpg'),
(15, 'Glenn', 'none.jpg'),
(16, 'Grace Corpuz', 'grace.png'),
(17, 'Joao', 'joao.png'),
(18, 'Joel Sales', 'none.jpg'),
(19, 'Josephine', 'none.jpg'),
(20, 'Jovilyn', 'none.jpg'),
(21, 'Kenneth', 'kenneth.png'),
(22, 'Kevin', 'kevin.png'),
(23, 'Lenly', 'none.jpg'),
(24, 'Lhen', 'lhen.png'),
(25, 'Llarizz Borleo', 'none.jpg'),
(26, 'Loloy', 'loloy.png'),
(27, 'Maimai', 'none.jpg'),
(28, 'Marly', 'none.jpg'),
(29, 'Mhean', 'mhean.png'),
(30, 'Nina', 'nina.png'),
(31, 'none', 'none.jpg'),
(32, 'Olga', 'olga.png'),
(33, 'Paul Jocson', 'paul.png'),
(34, 'Peter Yu', 'peter.png'),
(35, 'Raul', 'raul.png'),
(36, 'Renie', 'none.jpg'),
(37, 'Ricky', 'none.jpg'),
(38, 'Romel', 'loloy.png'),
(39, 'Romeo', 'romeo.png'),
(40, 'S.G Tiron Peter', 'none.jpg'),
(41, 'Sonia', 'sonia.jpg'),
(42, 'Tata', 'none.jpg'),
(43, 'Thez Claudio', 'none.jpg'),
(44, 'Tiago', 'none.jpg'),
(45, 'Tony', 'none.jpg'),
(46, 'Wennie', 'none.jpg'),
(47, 'Yang', 'yang.png');

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
-- Table structure for table `gatepass`
--

CREATE TABLE IF NOT EXISTS `gatepass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_id` int(11) DEFAULT NULL,
  `gname` varchar(255) NOT NULL,
  `gfrom` varchar(255) NOT NULL,
  `gto` varchar(255) NOT NULL,
  `itemdescription` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `preparedby` varchar(255) NOT NULL,
  `receivedby` varchar(255) NOT NULL,
  `g_status` varchar(255) DEFAULT NULL,
  `date_encoded` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `gatepass`
--

INSERT INTO `gatepass` (`id`, `summary_id`, `gname`, `gfrom`, `gto`, `itemdescription`, `qty`, `preparedby`, `receivedby`, `g_status`, `date_encoded`) VALUES
(14, 1, 'Alan', 'Marikina', 'Marikina', 'VGA CABLE', 1, 'Romeo', 'Alan', 'save', '2020-11-01 09:44:31pm'),
(15, 2, 'Gina', 'Marikina', 'Cebu', 'MOUSE (A4TECH)', 2, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(16, 2, 'Gina', 'Marikina', 'Cebu', 'HANNS.G HK162ABB 16 IN', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(19, 2, 'Gina', 'Marikina', 'Cebu', 'VGA CABLE', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(29, 2, 'Gina', 'Marikina', 'Cebu', 'POWER CORD', 3, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(28, 2, 'Gina', 'Marikina', 'Cebu', 'KEYBOARD (GENIUS)', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(21, 2, 'Gina', 'Marikina', 'Cebu', 'ACER X163WL 16 IN', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(23, 2, 'Gina', 'Marikina', 'Cebu', 'UPS (APC 650)', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(25, 2, 'Gina', 'Marikina', 'Cebu', 'ACER S200HQL 20 IN', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(31, 3, 'Alan', 'Marikina', 'Marikina', 'HANNS.G HK162ABB 16 IN', 1, 'Romeo', 'Alan', 'save', '2020-11-07 04:58:37pm'),
(26, 2, 'Gina', 'Marikina', 'Cebu', 'NETWORK CABLE 9 METERS', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm'),
(33, 4, 'Nejie', 'Marikina', 'Cebu', 'KEYBOARD (A4TECH)', 1, 'Romeo', 'Nejie', 'save', '2020-11-07 05:00:37pm'),
(32, 2, 'Gina', 'Marikina', 'Cebu', 'ACER X163W A 16 IN', 1, 'Romeo', 'Gina', 'save', '2020-11-02 07:59:22pm');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

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
(14, 'UPS'),
(15, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `item_masterfile`
--

CREATE TABLE IF NOT EXISTS `item_masterfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_description` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `item_masterfile`
--

INSERT INTO `item_masterfile` (`id`, `item_description`, `cat_id`) VALUES
(1, 'AVR (GENERIC)', 1),
(2, 'AVR (SECURE)', 1),
(3, 'NETWORK CABLE (1BOX)', 2),
(4, 'NETWORK CABLE 9 METERS', 2),
(5, 'POWER CORD', 2),
(6, 'VGA CABLE', 2),
(7, 'INTEL ATOM N450 @ 1.66 GHz', 3),
(8, 'INTEL CORE 2 DUO @ 2.20 GHz', 3),
(9, 'INTEL CORE 2 DUO @ 2.93 GHz', 3),
(10, 'INTEL CORE 2 DUO 2.66 GHz', 3),
(11, 'INTEL CORE 2 DUO E4500 @ 2.20 GHz', 3),
(12, 'INTEL CORE 2 DUO E4600 @ 2.40 GHz', 3),
(13, 'INTEL CORE 2 DUO E5400 @ 2.70 GHz', 3),
(14, 'INTEL CORE 2 DUO E5700 @ 2.93 GHz', 3),
(15, 'INTEL CORE 2 DUO E7200 @ 2.53 GHz', 3),
(16, 'INTEL CORE 2 DUO E7300 @ 2.66 GHz', 3),
(17, 'INTEL CORE 2 DUO E7500 @ 2.93 GHz', 3),
(18, 'INTEL CORE 2 DUO E8135 @ 2.66 GHz', 3),
(19, 'INTEL CORE 2 DUO E8235 @ 2.80 GHz', 3),
(20, 'INTEL CORE 2 QUAD Q8300 @ 2.5 GHz', 3),
(21, 'INTEL CORE 2 QUAD Q8300 @ 2.50 GHz', 3),
(22, 'INTEL CORE 2 QUAD Q8400 @ 2.66GHZ', 3),
(23, 'INTEL CORE 2 QUAD Q9300 @ 2.50GHZ', 3),
(24, 'INTEL CORE i3 100 CPU @ 3.10 GHz', 3),
(25, 'INTEL CORE i3 2100 CPU @ 3.10 GHz', 3),
(26, 'INTEL CORE i3 2100 CPU @ 3.30 GHz', 3),
(27, 'INTEL CORE i3 2120 CPU @ 3.30 GHz', 3),
(28, 'INTEL CORE i3 540 CPU @ 3.07 GHz', 3),
(29, 'INTEL CORE i5 2300 CPU @ 2.80 GHz', 3),
(30, 'INTEL CORE i5 2400 CPU @ 3.10 GHz', 3),
(31, 'INTEL CORE i5 3470 CPU @ 3.20 GHz', 3),
(32, 'INTEL CORE i5 3470 CPU @ 3.20 GHz', 3),
(33, 'INTEL CORE i5 3570 CPU @ 3.40 GHz', 3),
(34, 'INTEL CORE i5 4440 CPU @ 3.10 GHz', 3),
(35, 'INTEL CORE i5 4460 CPU @ 3.20 GHz', 3),
(36, 'INTEL CORE i5 4590 CPU @ 3.30 GHz', 3),
(37, 'INTEL CORE i7 2600 CPU @ 3.10 GHz', 3),
(38, 'INTEL CORE i7 2600 CPU @ 3.40 GHz', 3),
(39, 'INTEL CORE i7 2600K CPU @ 3.40 GHz', 3),
(40, 'INTEL CORE i7 3770 CPU @ 3.40 GHz', 3),
(41, 'INTEL CORE i7 4790 CPU @ 3.60 GHz', 3),
(42, 'INTEL CORE i7 4790K CPU @ 4.00 GHz', 3),
(43, 'INTEL CORE i7 870 CPU @ 2.93 GHz', 3),
(44, 'INTEL CORPORATION DH55PJ', 3),
(45, 'INTEL CORPORATION DH61WW', 3),
(46, 'INTEL PENTIUM 4 2.26 GHz', 3),
(47, 'INTEL PENTIUM D @ 3.0 GHz', 3),
(48, 'INTEL PENTIUM D 3 GHz', 3),
(49, 'INTEL XEON CPU E5-2640 0 @ 2.50 GHz', 3),
(50, 'LCD MONITOR (ACER X163W A)', 3),
(51, 'PENTIUM D CPU 3.00 GHz', 3),
(52, 'PENTIUM R DUAL CORE E2160 @ 1.80 GHz', 3),
(53, 'PENTIUM R DUAL CORE E2180 CPU', 3),
(54, 'PENTIUM R DUAL CORE E5400 @2.70GHz', 3),
(55, 'PENTIUM R DUAL CORE E5800 @ 3.20 GHz', 3),
(56, 'ZTE POCKET WIFI', 4),
(57, '1 TB', 5),
(58, '1 TB & 160 GB', 5),
(59, '1 TB & 250 GB', 5),
(60, '1 TB & 500 GB', 5),
(61, '1 TB & 80 GB', 5),
(62, '1 TB 2PCS & 500 GB', 5),
(63, '1 TB 2PCS', 5),
(64, '1 TB 3PCS', 5),
(65, '160 GB', 5),
(66, '160 GB & 40 GB', 5),
(67, '160 GB & 80 GB', 5),
(68, '2 TB', 5),
(69, '2 TB, 500 GB & 80 GB', 5),
(70, '2 TB, 1 TB, & 80 GB', 5),
(71, '500 GB & 250 GB', 5),
(72, '250 GB SEAGATE', 5),
(73, '2 TB , 320 GB 2PCS & 250 GB', 5),
(74, '320 GB SEAGATE', 5),
(75, '40 GB', 5),
(76, '40 GB 2PCS', 5),
(77, '500 GB & 80 GB', 5),
(78, '500 GB 2PCS & 320 GB', 5),
(79, '500 GB HITACHI', 5),
(80, '500 GB SEAGATE', 5),
(81, '80 GB', 5),
(82, '80 GB 2PCS', 5),
(83, '80 GB 2PCS & 20GB', 5),
(84, '835 GB IBM SERVERRAID M5110E', 5),
(85, 'KEYBOARD (A4TECH)', 6),
(86, 'KEYBOARD (GENIUS)', 6),
(87, 'ACER S200HQL 20 IN', 7),
(88, 'ACER X163W A 16 IN', 7),
(89, 'ACER X163WL 16 IN', 7),
(90, 'HANNS.G HK162ABB 16 IN', 7),
(91, 'HANNS.G HL161ABB 16 IN', 7),
(92, 'HANNS.G HSG1027 17 IN', 7),
(93, 'HANNS.G HSG1125 16 IN', 7),
(94, 'LCD MONITOR (H.P 19 INCHES)', 7),
(95, 'LG L1552S-SF 15 IN', 7),
(96, 'LG L1753S5 17 IN', 7),
(97, 'PHILIPS 193V5LSB2/71 19 IN', 7),
(98, '%1 CHIPSET MCP6P M2+', 8),
(99, 'AMD ATHLON 64 X2 5200+BRISBANE 65NM TECH', 8),
(100, 'AMD SEMPRON 140 PROCESSOR', 8),
(101, 'APPLE INC. IMAC 9.1', 8),
(102, 'APPLE INC. MAC-F227BEC8', 8),
(103, 'ASROCK N68-VS3 UCC', 8),
(104, 'ASUS COMPUTER INC. P5S-MX SE', 8),
(105, 'ASUS H61M-C', 8),
(106, 'ASUS H81M-C', 8),
(107, 'ASUS H81M-D', 8),
(108, 'ASUS H81M-E', 8),
(109, 'ASUS P4KPL-AM SE', 8),
(110, 'ASUS P5G41C-M LX', 8),
(111, 'ASUS P5GC-MX/1333', 8),
(112, 'ASUS P5GC-MX/GBL (LGA 775)', 8),
(113, 'ASUS P5KPL-AM EPU', 8),
(114, 'ASUS P5KPL-AM SE', 8),
(115, 'ASUS P5L-MX', 8),
(116, 'ASUS P5S32-VM', 8),
(117, 'ASUS P5SD2-VM', 8),
(118, 'ASUS P5S-MX SE', 8),
(119, 'ASUS P5VD2-MX SE', 8),
(120, 'ASUS P5VD2-VM SE', 8),
(121, 'ASUS P7H55-M LE/USB3', 8),
(122, 'ASUS P7H55-M LX', 8),
(123, 'ASUS P8H61-M LE/USB3', 8),
(124, 'ASUS P8H61-M LX3 PLUS', 8),
(125, 'ASUS P8H77-M LE', 8),
(126, 'ASUS P8Z68-V PRO', 8),
(127, 'ASUS SABERTOOTH P67', 8),
(128, 'ASUS V2197 19 IN', 8),
(129, 'ASUS VS197 19 IN', 8),
(130, 'CLEVO CO. M1100M', 8),
(131, 'ECS H87H3-M', 8),
(132, 'ELITE GROUP P4M266', 8),
(133, 'GIGABYTE TECHNOLOGY CO., LTD G41M-COMBO', 8),
(134, 'IBM 00J6528', 8),
(135, 'MICRO-STAR INTERNATIONAL G31M3(MS-7529)', 8),
(136, 'MICRO-STAR INTERNATIONAL MS-7255 V2.0', 8),
(137, 'MSI G41M-P33 COMBO(MS-7592)', 8),
(138, 'MSI H55M-E21(MS-7636)', 8),
(139, 'MSI H67MA-E45', 8),
(140, 'MSI H77MA-G43(MS-7756)', 8),
(141, 'MSI H81M-E33', 8),
(142, 'MSI H81M-P33', 8),
(143, 'MSI H81M-P33 (MS-7817)', 8),
(144, 'MSI H97M-E35 (MS-7846)', 8),
(145, 'MSI H97M-G43 (MS-7924)', 8),
(146, 'MSI H97M-G43(MS-7924)', 8),
(147, 'MSI N1996', 8),
(148, 'MSI P67A-GD55(MS-7681)', 8),
(149, 'MSI P67A-GD65', 8),
(150, 'MOUSE (A4TECH)', 9),
(151, 'MOUSE (GENIUS)', 9),
(152, 'MX LINUX', 10),
(153, 'UBUNTU 18.04.1 LTS 64-BIT', 10),
(154, 'UBUNTU 20.04 LTS', 10),
(155, 'WINDOWS 10 PROFESSIONAL 64-BIT', 10),
(156, 'WINDOWS 7 ALIENWARE 2010', 10),
(157, 'WINDOWS 7 HOME BASIC', 10),
(158, 'WINDOWS 7 HOME PREMIUM', 10),
(159, 'WINDOWS 7 PROFESSIONAL 64-BIT', 10),
(160, 'WINDOWS 7 ULTIMATE 64-BIT', 10),
(161, 'WINDOWS SERVER 2003', 10),
(162, 'WINDOWS SERVER 2008 R2 STANDARD', 10),
(163, 'WINDOWS XP HOME EDITION SP2', 10),
(164, 'WINDOWS XP HOME EDITION SP3', 10),
(165, 'WINDOWS XP PROFESSIONAL EDITION SP3', 10),
(166, 'LX 310 PRINTER', 12),
(167, '1 GB', 13),
(168, '1 GB & 1 GB DDR2', 13),
(169, '1 GB 2PCS', 13),
(170, '2 GB', 13),
(171, '2 GB & 1GB', 13),
(172, '2 GB 2PCS', 13),
(173, '4 GB', 13),
(174, '4 GB 2PCS', 13),
(175, '4 GB 3PCS', 13),
(176, '8 GB', 13),
(177, '8 GB & 4 GB', 13),
(178, '8 GB 2PCS', 13),
(179, '960 MB', 13),
(180, '8 GB & 4 GB', 14),
(181, 'UPS (APC 650)', 14),
(182, 'N/A', 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `systemunitlist`
--
CREATE TABLE IF NOT EXISTS `systemunitlist` (
`id` int(11)
,`sold_date` text
,`user` varchar(255)
,`STATUS` varchar(255)
,`cpu` varchar(255)
,`hdd` varchar(255)
,`ram` varchar(255)
,`mobo` varchar(255)
,`os` varchar(255)
,`buyername` varchar(255)
,`buyer_id` int(11)
,`duplicate` varchar(10)
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `system_status`
--

INSERT INTO `system_status` (`id`, `status`) VALUES
(1, 'SOLD'),
(2, 'RESERVE'),
(3, 'CURRENTLY USE'),
(4, 'FOR SALE'),
(5, 'DEFECTIVE');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=279 ;

--
-- Dumping data for table `system_unit`
--

INSERT INTO `system_unit` (`id`, `date_checked`, `location_id`, `status_id`, `cpu_id`, `hdd_id`, `ram_id`, `mobo_id`, `os_id`, `remarks`, `designation`, `mac_address`, `user`, `duplicate_data`, `buyer_id`, `sold_date`) VALUES
(1, '2018-11-22', 1, 1, 22, 74, 170, 113, 159, '', '', NULL, '', 'false', 11, '2020-07-24'),
(2, '2018-11-22', 1, 1, 16, 72, 170, 114, 165, 'Mac Address: 00-24-8C-BA-50-4D', '', NULL, '', 'false', 35, '2020-06-22'),
(3, '2018-11-22', 1, 2, 11, 76, 170, 119, 160, '', '', NULL, '', 'false', 0, ''),
(4, '2018-11-22', 1, 2, 17, 80, 170, 114, 159, '', '', NULL, '', 'false', 0, ''),
(5, '2018-11-22', 1, 1, 21, 72, 170, 113, 160, 'Mac Address: E0-CB-4E-E8-02-16', 'ILOILO-B.A', NULL, '', 'false', 7, '2019-09-20'),
(6, '2018-11-22', 1, 2, 17, 82, 170, 114, 160, '', '', NULL, '', 'false', 0, ''),
(7, '2018-11-22', 1, 1, 17, 72, 170, 137, 160, 'Mac Address: D4-3D-7E-34-07-01', '', NULL, '', 'false', 34, '2020-06-17'),
(8, '2018-11-22', 1, 1, 17, 65, 170, 114, 160, 'Mac Address: 00-26-18-B9-99-3A', '', NULL, '', 'false', 35, '2020-06-22'),
(9, '2018-11-23', 1, 2, 17, 81, 170, 113, 160, '', '', NULL, '', 'false', 0, ''),
(10, '2018-11-23', 1, 1, 16, 65, 170, 114, 160, 'Mac Address: 00-24-8C-BA-50-1A\nwith Windows XP Sticker', '', NULL, '', 'false', 2, '2020-07-08'),
(11, '2018-11-23', 1, 1, 13, 82, 170, 113, 160, 'Mac Address: E0-CB-4E-82-B3-A2', '', NULL, '', 'false', 11, '2020-07-27'),
(12, '2018-11-23', 1, 1, 17, 72, 170, 114, 160, 'Mac Address: 00-24-8C-BA-4A-C5', '', NULL, '', 'false', 37, '2020-07-09'),
(13, '2018-11-26', 1, 5, 11, 182, 182, 116, 160, '', '', NULL, '', 'false', 0, ''),
(14, '2018-11-29', 1, 1, 25, 80, 173, 123, 160, 'Mac Address: 54-04-A6-2C-A1-18', '', NULL, '', 'false', 17, '2020-09-01'),
(15, '2019-01-21', 1, 2, 25, 72, 173, 123, 160, '', '', NULL, '', 'false', 0, ''),
(16, '2018-12-03', 1, 2, 35, 57, 173, 107, 159, '', 'Head', NULL, 'Thez Claudio', 'false', 0, ''),
(17, '2018-01-24', 1, 1, 11, 66, 169, 114, 160, '', '', NULL, '', 'false', 24, '2018-01-24'),
(18, '2019-02-28', 1, 2, 17, 81, 170, 114, 160, 'microsoft sticker is Windows XP Home Edition', '', NULL, '', 'false', 0, ''),
(19, '2019-04-02', 1, 1, 17, 72, 170, 114, 160, 'Mac Address: 00-26-18-C9-59-14', '', NULL, '', 'false', 35, '2020-07-09'),
(20, '2019-03-29', 1, 2, 17, 65, 170, 114, 160, 'Mac Address: 00-26-18-C9-31-76', '', NULL, '', 'false', 0, ''),
(21, '2019-03-28', 1, 2, 17, 65, 170, 114, 159, 'Raul Curesma\nIP Address: 192.168.103.151\nMac Address: 00-26-18-C9-31-7D', 'CHECKER', NULL, 'RAUL', 'false', 0, ''),
(22, '2019-03-29', 1, 2, 16, 81, 170, 112, 164, 'Mac Address: 00-22-15-BA-14-FA', '', NULL, '', 'false', 0, ''),
(23, '2019-04-02', 1, 1, 11, 72, 169, 117, 160, 'Mac Address: 00-1E-8C-16-73-1B', '', NULL, '', 'false', 7, '2019-11-25'),
(24, '2019-04-15', 1, 3, 31, 80, 173, 123, 159, 'yung system unit from Bacolod except Hard disk\nMac Address: 10-BF-48-42-76-54\neto na gamit ng sales officer ng CEBU', 'CASHIER/SALES OFFICER', NULL, 'ANY EXCEPT STOCKSUP', 'false', 0, ''),
(25, '2019-04-05', 1, 1, 25, 65, 173, 123, 160, 'CDO Sir Mike\nMac Address: F4-6D-04-2C-D1-EC', 'RSO', NULL, 'MIKE', 'false', 17, '2019-05-16'),
(26, '2019-04-08', 1, 2, 12, 81, 170, 120, 159, 'nakawindows XP and sticker\nMac Address: 00-1D-60-A7-36-8A', '', NULL, '', 'false', 0, ''),
(27, '2019-04-05', 1, 3, 35, 57, 173, 107, 155, 'Mhean-B.A (SDS/FX Marikina)\nMac Address: 9C-5C-8E-C2-36-50', 'ACCOUNTING', NULL, 'MHEAN', 'false', 0, ''),
(28, '2019-04-05', 1, 1, 27, 60, 173, 123, 159, 'Marikina (SDS/FX POS)\nMac Address: 10-BF-48-42-70-C6', '', NULL, '', 'false', 17, '2019-05-16'),
(29, '', 1, 1, 11, 72, 170, 117, 164, '', '', NULL, '', 'false', 18, '2000-01-01'),
(30, '2019-04-08', 1, 2, 17, 72, 170, 114, 160, 'Mac Address: 00-26-18-C9-9A-3E\nWith sticker pero windows XP Home Pro', '', NULL, '', 'false', 0, ''),
(31, '2019-04-15', 1, 1, 12, 65, 170, 120, 159, 'Mac Address: 00-1D-60-DA-1B-47\nMonitor SN: 023BS3PY02190', '', NULL, '', 'false', 44, '2020-09-16'),
(32, '2019-09-16', 1, 2, 12, 77, 167, 114, 163, '', 'ACCOUNTING', NULL, 'CHRISTINE', 'false', 0, ''),
(33, '2019-04-11', 1, 2, 17, 80, 173, 114, 160, 'Mac Address: 90-E6-BA-BA-71-2C', '', NULL, '', 'false', 0, ''),
(34, '2019-04-15', 1, 2, 11, 81, 170, 118, 164, 'Mac Address: 00-1D-60-A1-8C-E5', '', NULL, '', 'false', 0, ''),
(35, '2019-04-15', 1, 2, 11, 61, 170, 114, 182, 'working kaso sablay ang hard disk', '', NULL, '', 'false', 0, ''),
(36, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'SALES OFFICER/RSO', NULL, 'MIKE/RUBY/MARLYN', 'false', 0, ''),
(37, '2019-04-15', 1, 1, 17, 72, 170, 114, 160, 'Mac Address1: 00-26-18-B4-77-8C\nMac Address2: 34-08-04-98-2B-3E', 'DRIVER', NULL, 'LOLOY', 'false', 26, '2019-09-19'),
(38, '2015-08-27', 1, 1, 17, 65, 170, 113, 156, '', '', NULL, '', 'false', 8, '2015-08-27'),
(39, '2019-04-16', 1, 1, 25, 80, 173, 123, 159, 'IP Address: 192.168.103.184\nMac Address: F4-6D-04-2C-D1-60\nMonitor SN: UK0A1410005008', '', NULL, '', 'false', 17, '2020-09-09'),
(40, '2019-04-15', 1, 3, 49, 84, 178, 84, 162, 'Mac Address: 6C-AE-8B-37-05-73', '', NULL, '', 'false', 0, ''),
(41, '2019-09-16', 1, 3, 20, 72, 173, 113, 159, '', 'B.A', NULL, 'GELAI', 'false', 0, ''),
(42, '2017-07-28', 1, 1, 46, 81, 167, 132, 165, '', '', NULL, '', 'false', 5, '2017-07-28'),
(43, '2019-04-17', 1, 1, 14, 65, 170, 114, 160, 'Mac Address: 00-26-18-B4-77-85', '', NULL, '', 'false', 34, '2020-07-28'),
(44, '2019-04-17', 1, 2, 16, 182, 170, 111, 182, 'working kaso walang hard disk drive\ntapos sira narin yung computer case', '', NULL, '', 'false', 0, ''),
(45, '2019-04-17', 1, 2, 53, 182, 170, 147, 182, 'working fine kaso walang hard disk drive\nwith windows xp home edition Sticker', '', NULL, '', 'false', 0, ''),
(46, '2018-09-12', 1, 1, 12, 65, 170, 120, 160, 'Mac Address: 00-1D-60-A7-36-6A', '', NULL, '', 'false', 44, '2020-08-04'),
(47, '2018-01-09', 1, 1, 17, 72, 170, 113, 164, '', '', NULL, '', 'false', 21, '2018-01-09'),
(48, '2019-04-22', 1, 3, 38, 80, 174, 126, 160, 'dating gamit ni Sir Alex\nMac Address: F4-6D-04-2D-CB-7B\ngamit to ni Kryz ngayon', 'PROGRAMMER ON CALL', NULL, 'Christopher Gamboa', 'false', 0, ''),
(49, '2018-04-17', 1, 3, 35, 63, 182, 106, 159, 'branches Server1\nipadd: 192.168.103.20\nMac address: 30-5A-3A-81-49-DD\nusername: branch_server1_server1\nPassword: Sundance@1999\nnalipat sa S.O Online yung RAM\nNo power supply, nalipat sa 30', 'BRANCHES SERVER 1', NULL, 'N/A', 'false', 0, ''),
(50, '2019-04-30', 1, 1, 17, 65, 170, 114, 160, 'Mac Address: 00-26-18-C9-31-83', '', NULL, '', 'false', 34, '2020-07-29'),
(51, '2018-03-08', 1, 1, 23, 82, 170, 110, 160, '', 'DRIVERS-HEAD', NULL, 'DONG', 'false', 7, '2018-03-08'),
(52, '2018-02-27', 1, 1, 11, 83, 167, 118, 160, '', 'SUNEX STOCKMAN', NULL, 'TONY', 'false', 45, '2018-02-27'),
(53, '2018-03-02', 1, 2, 29, 62, 173, 106, 162, 'Old Accounting Server\nIP Address: 192.168.103.167\nMac Address: 6C-62-6D-3A-4A-29', 'OLD ACCOUNTING SERVER', NULL, 'N/A', 'false', 0, ''),
(54, '2018-03-05', 1, 2, 35, 57, 173, 106, 155, 'reserve for new company(L1)', '', NULL, '', 'false', 0, ''),
(55, '2018-02-18', 1, 1, 17, 72, 170, 113, 160, '', '', NULL, '', 'false', 15, '2018-02-18'),
(56, '2018-02-18', 1, 1, 17, 72, 170, 113, 160, '', 'IMUS B.A', NULL, 'FLOR', 'false', 12, '2018-02-18'),
(57, '2018-02-18', 1, 1, 26, 80, 173, 123, 160, '', 'IMUS B.A', NULL, 'FLOR', 'false', 12, '2018-02-18'),
(58, '2018-03-09', 1, 2, 31, 78, 173, 123, 156, 'Sir Alex(on call)\npassword: airfox23\nIP Address: 192.168.103.110\nMac Address: 10-BF-48-42-74-99', 'PROGRAMMER ON CALL', NULL, 'ALEX', 'false', 0, ''),
(59, '2018-03-09', 1, 2, 35, 80, 173, 141, 159, 'L3', '', NULL, '', 'false', 0, ''),
(60, '2019-04-08', 1, 3, 31, 80, 173, 123, 159, 'Mac Address1: 00-1C-F0-BA-0E-77\nMac Address2: 10-BF-48-42-6C-A1\nRPRO SERVER DAVAO', 'DAVAO B.A', NULL, 'GINA', 'false', 0, ''),
(61, '2019-03-25', 1, 3, 25, 71, 173, 123, 159, 'Merchandiser (Precious)\nIP Address: 192.168.103.171\nMac Address: 54-04-A6-1F-4A-0D', 'MERCHANDISER', NULL, 'PRECIOUS', 'false', 0, ''),
(62, '2018-06-14', 1, 1, 25, 80, 173, 123, 155, '', 'MARKETING OFFICER', NULL, 'FEBIELYN SIGUA', 'false', 10, '2018-06-14'),
(63, '2019-04-08', 1, 2, 35, 81, 173, 107, 160, 'Mac Address: D0-17-C2-87-E7-65', '', NULL, '', 'false', 0, ''),
(64, '2018-03-10', 1, 1, 17, 65, 170, 114, 160, 'CNC B.A -Mhean\nIP Address: 192.168.103.120\nMac Address1: 00-26-18-F0-FE-22\nMac Address2: 00-50-BA-59-15-AC', 'ACCOUNTING', NULL, 'MHEAN', 'false', 7, '2020-07-21'),
(65, '', 1, 1, 25, 80, 173, 123, 159, '', 'CNC-HEAD', NULL, 'SONIA', 'false', 41, '2000-01-01'),
(66, '2018-03-12', 1, 2, 30, 80, 173, 123, 159, 'L3', '', NULL, '', 'false', 0, ''),
(67, '2018-03-13', 1, 2, 29, 72, 172, 45, 159, 'Mac Address: E0-69-95-35-0C-F9\nMa''am Ana Marie Cruz', 'SALES OFFICER', NULL, 'ANA MARIE', 'false', 0, ''),
(68, '2018-03-13', 1, 3, 35, 57, 173, 106, 159, 'Sunex Stockman -Jomel (Marikina RPRO POS)\nIP Address: 192.168.103.203\nMac Address: D0-17-C2-D0-80-EE', 'RPRO MAR POS', NULL, 'JOMEL', 'false', 0, ''),
(69, '2018-03-13', 1, 3, 36, 57, 173, 106, 159, 'Mac Address: D0-17-C2-D0-87-D7', 'TACLOBAN CASHIER', NULL, 'CAROL', 'false', 0, ''),
(70, '2018-03-19', 1, 2, 35, 80, 173, 107, 159, 'Logistics Head -M'' Thez Claudio\nIP Address: 192.168.103.97\nMac Address: 9C-5C-8E-C2-32-99', 'HEAD-LOGISTICS', NULL, 'THEZ', 'false', 0, ''),
(71, '2018-03-19', 1, 1, 17, 65, 170, 114, 160, 'Mac Address: 00-26-18-B4-57-34', '', NULL, '', 'true', 2, '2020-07-07'),
(72, '2018-03-22', 1, 2, 36, 57, 173, 106, 159, 'L1', '', NULL, '', 'false', 0, ''),
(73, '2019-03-27', 1, 1, 17, 82, 170, 114, 160, 'Drivers Head -Dong\nMac Address: 34-08-04-98-1C-9C\nMac Address2: 00-26-18-C9-47-DC', 'DRIVERS-HEAD', NULL, 'DONG', 'false', 36, '2020-07-22'),
(74, '2018-03-24', 1, 3, 35, 57, 173, 143, 159, 'Sunex Stockman -Francisco Gonzales(receiving)\nIP Address: 192.168.103.181\nMac Address: D8-CB-8A-38-A7-9A\nMsOffice2016: P799N-3JHDB-4JW7M-272CQ-XHJYK', 'SUNEX STOCKMAN', NULL, 'FRANCIS', 'false', 0, ''),
(75, '2019-05-02', 1, 3, 33, 63, 173, 105, 155, 'Mac Address: 74-D0-2B-CA-CE-D7', 'CEBU B.A', NULL, 'NEJIE', 'true', 0, ''),
(76, '2018-03-27', 1, 3, 27, 79, 173, 123, 159, '', 'ACCOUNTING(NASA MAKATI)', NULL, 'LANIE', 'false', 0, ''),
(77, '2018-03-27', 1, 2, 35, 57, 173, 143, 159, 'Logistics Head -M'' Thez Claudio', '', NULL, '', 'false', 0, ''),
(78, '2018-04-07', 1, 1, 17, 72, 170, 135, 160, '', 'GRAPHICS ARTIST', NULL, 'PAUL JOCSON', 'false', 33, '2018-04-07'),
(79, '2018-04-13', 1, 3, 31, 80, 173, 123, 159, 'Sunex Stockman -Idol (Marikina Return RPRO)\nIP Address: 192.168.103.204\nMac Address: 10-BF-48-42-75-18\nMsOffice2016: 2MHMN-PMDMQ-TGQBY-6B28H-WK8YK', 'SUNEX STOCKMAN', NULL, 'FRANCIS', 'false', 0, ''),
(80, '2018-04-14', 1, 1, 17, 72, 170, 114, 160, '', 'SECURITY GUARD', NULL, 'TIRON', 'false', 40, '2018-04-14'),
(81, '2018-04-16', 1, 3, 36, 57, 173, 106, 159, 'CDO RPRO LIVE SERVER\nMac Address: D0-17-C2-D0-87-D6\nMsOffice2016: KRR2N-HXDH8-4F748-PQYJ2-9QBQ9', 'CDO RPRO SERVER', NULL, 'N/A', 'false', 0, ''),
(82, '2018-04-18', 1, 3, 35, 60, 173, 107, 155, 'branches Server2\nIPADDRESS: 192.168.103.21\nMac Address: D0-17-C2-87-E6-E2', 'BRANCHES SERVER2', NULL, 'N/A', 'false', 0, ''),
(83, '2018-04-24', 1, 3, 35, 57, 173, 144, 159, 'Amman Aquino\nIP Address: 192.168.103.146\nMac Address: D8-CB-8A-31-B9-5B', '', NULL, 'AMMAN', 'false', 0, ''),
(84, '2018-04-24', 1, 3, 35, 57, 173, 107, 159, 'Mac Address: 9C-5C-8E-C2-30-C3\nMsOffice2016: 6N9DY-W967W-WHTM7-VTVD2-Q3WYK', 'TACLOBAN B.A', NULL, 'CAROL', 'false', 0, ''),
(85, '2018-04-26', 1, 1, 17, 72, 170, 114, 160, '', 'SALES OFFICER', NULL, 'BRIAN', 'false', 4, '2018-04-26'),
(86, '2019-05-02', 1, 3, 31, 80, 173, 123, 159, 'Mac Address: 10-BF-48-B6-17-24', 'CEBU SALES OFFICER', NULL, 'SALES OFFICER', 'false', 0, ''),
(87, '2018-04-26', 1, 1, 17, 72, 170, 114, 160, '', '', NULL, '', 'false', 20, '2018-04-26'),
(88, '2018-04-26', 1, 1, 11, 65, 169, 118, 160, '', '', NULL, '', 'false', 20, '2018-04-26'),
(89, '2018-04-26', 1, 1, 11, 80, 170, 118, 160, '', '', NULL, '', 'false', 20, '2018-04-26'),
(90, '2018-05-03', 1, 1, 17, 72, 170, 114, 160, '', 'I.T-STAFF', NULL, 'DAN MICHAEL', 'false', 6, '2018-05-03'),
(91, '2018-05-03', 1, 1, 17, 72, 170, 114, 160, '', 'B.A', NULL, 'OLGA', 'false', 32, '2018-05-03'),
(92, '2018-05-04', 1, 1, 17, 72, 170, 114, 160, '', 'CASHIER', NULL, 'FRED', 'false', 13, '2018-05-04'),
(93, '2018-05-07', 1, 1, 17, 65, 170, 114, 160, '', 'GRAPHICS ARTIST', NULL, 'PAUL JOCSON', 'false', 33, '2018-05-07'),
(94, '2018-05-08', 1, 2, 30, 80, 173, 123, 159, 'L2', '', NULL, '', 'false', 0, ''),
(95, '2018-05-08', 1, 2, 35, 80, 173, 144, 159, 'L1', '', NULL, '', 'false', 0, ''),
(96, '2018-05-17', 1, 2, 35, 80, 173, 143, 159, 'Marikina Live client (RPRO)', '', NULL, '', 'false', 0, ''),
(97, '2018-05-18', 1, 3, 35, 80, 173, 143, 159, 'ipapadala sa Cebu\nMac Address : 44-8A-5B-CA-30-36', '', NULL, '', 'false', 0, ''),
(98, '2018-05-18', 1, 3, 35, 80, 173, 143, 159, 'PETER YU (Company owner)', 'EMPLOYER', NULL, 'PETER', 'false', 0, ''),
(99, '2018-05-19', 1, 2, 35, 80, 173, 107, 159, 'gamit to ngayon sa sunex sales', '', NULL, 'Raul', 'false', 0, ''),
(100, '2018-06-18', 1, 1, 35, 80, 173, 143, 160, '', 'EMPLOYER', NULL, 'PETER', 'false', 34, '2018-06-18'),
(101, '2018-06-19', 1, 3, 35, 57, 173, 107, 155, 'Mac Address: D0-17-C2-87-E6-D5', 'DAVAO SUNEX SERVER', NULL, 'n/a', 'false', 0, ''),
(102, '2018-06-29', 1, 3, 35, 57, 173, 107, 159, 'CEBU RPRO LIVE SERVER', 'CEBU RPRO SERVER', NULL, 'ANY', 'false', 0, ''),
(103, '2019-05-02', 1, 3, 35, 59, 173, 143, 155, 'Mac Address: D8-CB-8A-39-7A-0F', 'CEBU SDS/FXSERVER', NULL, 'ANY', 'false', 0, ''),
(104, '2018-07-02', 1, 2, 30, 80, 173, 123, 159, 'reserve for new company(L2)', '', NULL, '', 'false', 0, ''),
(105, '2019-05-02', 1, 3, 35, 80, 173, 107, 159, 'Mac Address: 30-5A-3A-08-5A-0B', 'CEBU SUNEX SERVER', NULL, 'ANY', 'false', 0, ''),
(106, '2018-01-18', 1, 1, 11, 72, 170, 104, 160, '', 'LOGISTICS', NULL, 'WENNIE', 'false', 46, '2018-01-18'),
(107, '2018-08-15', 1, 2, 17, 65, 170, 114, 160, 'dating gamit ni Melai\nMac Address: 00-26-18-F0-FB-85', 'B.A', NULL, 'MELANIE', 'false', 0, ''),
(108, '', 1, 1, 22, 72, 170, 113, 160, '', 'HEAD-LOGISTICS', NULL, 'THEZ', 'false', 43, '2000-01-01'),
(109, '2018-01-26', 1, 1, 11, 67, 170, 114, 160, '', 'SDS-SUPERVISOR', NULL, 'LENLY', 'false', 23, '2018-01-26'),
(110, '2018-02-01', 1, 1, 11, 72, 170, 104, 160, '', 'DRIVER', NULL, 'LOLOY', 'false', 26, '2018-02-01'),
(111, '2018-07-24', 1, 3, 42, 63, 178, 145, 155, 'IP Address: 192.168.103.15\nMac Address: D8-CB-8A-7C-69-74\nusername: administrator\npassword: P@ssw0rd1', 'INTERNET SERVER', NULL, 'N/A', 'false', 0, ''),
(112, '2018-02-01', 1, 1, 17, 72, 170, 113, 159, '', 'MARIKINA B.A', NULL, 'MHEAN', 'false', 29, '2018-02-01'),
(113, '2018-02-19', 1, 1, 11, 67, 170, 118, 160, '', 'DRIVER', NULL, 'LOLOY', 'false', 26, '2018-02-19'),
(114, '2019-05-02', 1, 3, 31, 80, 173, 123, 159, 'Mac Address: 10-BF-48-42-77-36', 'CEBU RPRO CLIENT', NULL, 'ANY', 'false', 0, ''),
(115, '2018-07-04', 1, 3, 31, 80, 173, 123, 159, 'IP Address: 192.168.103.168\nMac Address: 10-BF-48-41-75-E9', 'BARCODE', NULL, 'PRECIOUS', 'false', 0, ''),
(116, '2018-07-04', 1, 2, 27, 80, 173, 123, 159, 'Accounting-Head-M'' Grace Corpuz\nIP Address: 192.168.103.121\nMac Address: C8-60-00-9A-C2-9A', 'ACCOUNTING-HEAD', NULL, 'GRACE', 'false', 0, ''),
(117, '2018-07-05', 1, 2, 35, 80, 173, 144, 159, 'test machine CLIENT ng CDO RPRO(L1)', '', NULL, '', 'false', 0, ''),
(118, '2018-07-05', 1, 2, 35, 182, 173, 106, 160, '', '', NULL, '', 'false', 0, ''),
(119, '2018-07-06', 1, 2, 35, 80, 173, 144, 162, 'SERVER TESTING MACHINE(RPRO)', '', NULL, '', 'false', 0, ''),
(120, '2018-07-06', 1, 3, 35, 57, 173, 106, 159, 'Marikina RPRO LIVE SERVER\nIP Address: 192.168.103.200\nMac Address: D0-17-C2-D0-73-A8', '', NULL, '', 'false', 0, ''),
(121, '2018-07-06', 1, 2, 35, 57, 173, 131, 159, 'RPRO test machine 2', '', NULL, '', 'false', 0, ''),
(122, '2018-07-06', 1, 3, 35, 57, 173, 107, 155, 'Mac Address: D0-17-C2-86-DB-2A\nMsOffice 2016: NPJ99-VFC44-WPGC3-P7RR8-J8GBK', '', NULL, '', 'false', 0, ''),
(123, '2018-02-23', 1, 2, 31, 80, 173, 45, 159, 'Mac Address: 4C-72-B9-25-3D-E3\nO.S not yet activated', '', NULL, '', 'false', 0, ''),
(124, '2019-12-02', 1, 2, 11, 81, 170, 117, 160, 'Mac Address: 00-1D-60-C9-9A-C6', '', NULL, '', 'false', 0, ''),
(125, '2018-03-24', 1, 1, 28, 80, 173, 138, 159, '', '', NULL, '', 'false', 3, '2018-03-24'),
(126, '2018-07-05', 1, 1, 13, 72, 170, 113, 160, '', 'DAVAO B.A', NULL, 'GINA', 'false', 14, '2018-07-05'),
(127, '2018-07-11', 1, 3, 35, 80, 173, 123, 159, 'Mac Address: D8-50-E6-DB-EE-0F', 'DAVAO CASHIER', NULL, 'DELMAR', 'false', 0, ''),
(128, '2018-07-16', 1, 2, 17, 72, 170, 113, 160, 'Mac Address: 48-5B-39-03-C1-63', '', NULL, '', 'false', 0, ''),
(129, '2019-05-29', 1, 2, 11, 65, 170, 118, 160, 'Mac Address: 00-1D-60-66-F6-3A', '', NULL, '', 'false', 0, ''),
(130, '2018-07-09', 1, 1, 16, 72, 170, 115, 160, 'Mac Address: 00-1A-92-CB-03-99', 'ACCOUNTING', NULL, 'LANIE', 'false', 2, '2020-07-08'),
(131, '2018-07-09', 1, 3, 7, 80, 170, 130, 159, 'Mac Address: 1C-4B-D6-87-D7-A8', 'SALES OFFICER', NULL, 'ANGIE', 'false', 0, ''),
(132, '2019-05-29', 1, 1, 17, 82, 170, 114, 160, 'old Mac Address: 00-1D-60-80-91-DF\nMac Address: 90-E6-BA-B8-74-9B', '', NULL, '', 'false', 2, '2020-07-09'),
(133, '2018-07-11', 1, 3, 25, 74, 173, 125, 159, 'Mac Address: F4-6D-04-2C-D2-74', 'DAVAO RETURN', NULL, 'DELMAR', 'false', 0, ''),
(134, '2018-07-11', 1, 1, 28, 80, 170, 44, 159, '', 'EMPLOYER', NULL, 'PETER', 'false', 34, '2018-07-11'),
(135, '2019-05-31', 1, 1, 17, 72, 169, 114, 160, 'bibilhin ni Sir Dong\nMac Address: 00-24-8C-D5-55-13', '', NULL, '', 'false', 7, '2019-11-25'),
(136, '2019-05-24', 1, 2, 31, 57, 173, 123, 159, 'Mac  Address: 10-BF-48-B6-19-4E', '', NULL, '', 'false', 0, ''),
(137, '2019-05-31', 1, 2, 54, 72, 167, 133, 159, 'Mac Address: 50-E5-49-A6-24-68', '', NULL, '', 'false', 0, ''),
(138, '2018-07-11', 1, 1, 25, 74, 174, 123, 155, '', 'PROGRAMMER', NULL, 'ERWEN', 'false', 9, '2018-07-11'),
(139, '2018-07-16', 1, 2, 31, 80, 170, 123, 159, 'L1', '', NULL, '', 'false', 0, ''),
(140, '2019-12-04', 1, 2, 28, 81, 173, 122, 160, 'Mac Address: BC-AE-C5-C2-15-D2', '', NULL, '', 'false', 0, ''),
(141, '2018-07-16', 1, 2, 28, 65, 173, 138, 160, 'Medyo may tama yung LAN pero naayos naman if irestart lang pero d parin nawawala yung issue sa LAN', '', NULL, '', 'false', 0, ''),
(142, '2019-06-04', 1, 2, 34, 80, 173, 108, 160, 'Mac Address: D8-50-E6-E5-5D-01', '', NULL, '', 'false', 0, ''),
(143, '2018-07-16', 1, 3, 35, 57, 173, 107, 159, 'Mac Address: 30-5A-3A-0E-BE-F5\nanydeskID: rproserverdav-1@ad\nMsOffice: 9XGBN-9WDP2-YCFBX-463XR-3DBQ9', 'DAVAO RPRO SERVER', NULL, 'ANY', 'false', 0, ''),
(144, '2018-08-13', 1, 1, 27, 80, 173, 123, 160, 'Mac Address: 00-1B-11-F2-72-A2', '', NULL, '', 'false', 42, '2020-08-11'),
(145, '2019-06-06', 1, 2, 11, 65, 167, 119, 157, 'Mac Address: 00-1B-FC-19-00-DA', '', NULL, '', 'false', 0, ''),
(146, '2018-08-24', 1, 1, 17, 72, 170, 111, 160, 'Mac Address: 00-24-8C-4E-FA-AF', '', NULL, 'KEVIN', 'false', 2, '2020-08-05'),
(147, '2019-07-01', 1, 3, 35, 57, 173, 107, 159, 'Mac Address: 30-5A-3A-08-59-C1', 'DAVAO SALES OFFICER', NULL, 'ROGER', 'false', 0, ''),
(148, '2019-05-27', 1, 2, 17, 80, 170, 114, 160, 'Mac Address: 00-24-8C-BA-4C-D1', '', NULL, '', 'false', 0, ''),
(149, '2018-10-19', 1, 1, 27, 80, 173, 123, 160, '', 'ACCOUNTING-HEAD', NULL, 'GRACE', 'false', 16, '2018-10-19'),
(150, '2018-11-26', 1, 2, 35, 74, 173, 107, 160, 'L1', '', NULL, '', 'false', 0, ''),
(151, '2018-11-26', 1, 2, 25, 80, 173, 123, 160, '', '', NULL, '', 'false', 0, ''),
(152, '2018-11-26', 1, 1, 28, 80, 170, 122, 160, '', 'CDO SALES OFFICER', NULL, 'MARLY', 'false', 28, '2018-11-26'),
(153, '2018-11-27', 1, 2, 35, 80, 173, 142, 159, 'L1', '', NULL, '', 'false', 0, ''),
(154, '2018-12-03', 1, 1, 17, 65, 170, 113, 159, 'Mac Address: E0-CB-4E-E8-01-46', '', NULL, '', 'false', 44, '2020-07-27'),
(155, '2018-12-05', 1, 2, 35, 80, 173, 143, 160, 'ipapadala sa CEBU\nMac Address: 44-8A-5B-CC-A9-89', '', NULL, '', 'false', 0, ''),
(156, '2018-12-04', 1, 2, 52, 80, 169, 118, 160, '', '', NULL, '', 'false', 0, ''),
(157, '2018-12-12', 1, 2, 35, 80, 173, 107, 160, 'L4', '', NULL, '', 'false', 0, ''),
(158, '2019-01-15', 1, 2, 35, 57, 173, 107, 159, '', 'SUNEX SALES', NULL, 'KRYZTOFF', 'false', 0, ''),
(159, '2019-12-04', 1, 2, 27, 72, 170, 123, 159, 'Mac Address: 10-BF-48-B6-1A-DC', '', NULL, '', 'false', 0, ''),
(160, '2019-01-16', 1, 3, 35, 57, 173, 107, 159, 'Mac Address: 02-00-4C-4F-4F-50', 'TACLOBAN RPRO SEVER', NULL, 'ANY', 'false', 0, ''),
(161, '2019-01-17', 1, 1, 17, 80, 172, 113, 160, 'dating auditor yung bumili ng unit na eto', 'X AUDITOR', NULL, 'YANG', 'false', 47, '2019-01-17'),
(162, '2019-01-21', 1, 2, 27, 80, 173, 123, 155, 'Mac Address: 10-BF-48-42-79-33', '', NULL, '', 'false', 0, ''),
(163, '2018-08-23', 1, 1, 27, 80, 173, 125, 160, '', '', NULL, 'KEVIN', 'false', 22, '2018-08-23'),
(164, '2018-03-09', 1, 1, 27, 80, 173, 123, 155, '', 'HEAD-AUDITOR', NULL, 'INIA', 'false', 30, '2018-03-09'),
(165, '2019-01-21', 1, 1, 27, 80, 173, 123, 160, 'Mac Address: C8-60-00-9A-C2-CC', '', NULL, '', 'false', 25, '2020-07-24'),
(166, '2019-01-21', 1, 2, 27, 72, 173, 123, 160, '', '', NULL, '', 'false', 0, ''),
(167, '2019-07-23', 1, 2, 34, 80, 173, 108, 159, 'Mac Address: D8-50-E6-E5-5C-F8', '', NULL, '', 'false', 0, ''),
(168, '2019-02-04', 1, 2, 15, 65, 171, 111, 160, 'Mac Address: 00-24-8C-60-B1-03', '', NULL, '', 'false', 0, ''),
(169, '2019-02-12', 1, 2, 31, 80, 173, 123, 160, '', '', NULL, '', 'false', 0, ''),
(170, '2019-02-12', 1, 3, 35, 57, 173, 107, 155, 'refer code: 267\nMac Address: D0-17-C2-D0-9A-CF\nbinalik dito kasi sira daw', 'Sunex Server', NULL, '', 'true', 0, ''),
(171, '2019-02-12', 1, 2, 35, 57, 173, 107, 155, '', '', NULL, '', 'false', 0, ''),
(172, '2019-02-14', 1, 2, 17, 81, 170, 114, 160, '', '', NULL, '', 'false', 0, ''),
(173, '2019-02-18', 1, 1, 27, 72, 173, 123, 160, 'Mac Address: 10-BF-48-42-76-55', '', NULL, '', 'false', 42, '2020-08-10'),
(174, '2019-10-10', 1, 1, 10, 74, 172, 101, 154, '', 'Graphics Artist', NULL, 'GUNTHER', 'false', 27, '2020-06-30'),
(175, '2018-12-05', 1, 2, 11, 81, 167, 118, 159, '', '', NULL, '', 'false', 0, ''),
(176, '2019-02-13', 1, 2, 35, 58, 173, 146, 159, 'IP Add: 192.168.103.170\nMac Add: D8-CB-8A-7C-69-50', 'SO Online', NULL, 'Anonymous', 'false', 0, ''),
(177, '2019-03-11', 1, 2, 100, 81, 173, 103, 160, '', '', NULL, '', 'false', 0, ''),
(178, '2019-03-12', 1, 1, 25, 80, 173, 123, 160, 'Mac Address: F4-6D-04-40-54-1B\nkay Sir Joao dapat eto pero ibibigay nalang muna kay Ma''am Grace', '', NULL, '', 'false', 16, '2020-08-05'),
(179, '2019-03-13', 1, 2, 31, 80, 173, 123, 159, '', '', NULL, '', 'false', 0, ''),
(180, '2019-03-19', 1, 2, 35, 81, 173, 106, 160, 'Mac Address: 30-5A-3A-81-57-2F', '', NULL, '', 'false', 0, ''),
(181, '2019-03-19', 1, 1, 35, 80, 173, 107, 159, 'CDO Mike\nMac Address: 30-5A-3A-0E-B1-49', 'RSO', NULL, 'MIKE', 'false', 17, '2020-09-08'),
(182, '2019-04-02', 1, 3, 35, 60, 173, 143, 159, 'M'' Lanie\nIP Address: 192.168.103.118\nMac Address: 44-8A-5B-CC-B2-0D', 'ACCOUNTING', NULL, 'LANIE', 'false', 0, ''),
(186, '2018-11-23', 1, 1, 48, 81, 167, 147, 164, 'DATING CODE# 5', '', NULL, '', 'false', 5, '2018-11-23'),
(187, '2019-03-25', 1, 1, 8, 72, 170, 114, 163, 'DATING CODE# 11', '', NULL, '', 'false', 18, '2000-01-01'),
(188, '2019-03-25', 1, 1, 11, 75, 170, 118, 163, 'dating code #13', '', NULL, '', 'false', 21, '2000-01-01'),
(189, '2019-03-25', 1, 2, 35, 57, 173, 107, 159, 'Zamboanga FX-Return\nMac Address: 30-5A-3A-0E-B3-71\nO.S Not Yet Activated', 'ZAMBOANGA FX-RETURN', NULL, '', 'false', 0, ''),
(190, '2019-03-29', 1, 2, 99, 65, 170, 98, 164, 'bigay daw ng supplier\nMac Address: 00-30-67-18-51-BF', '', NULL, '', 'false', 0, ''),
(191, '2019-09-13', 1, 3, 35, 70, 177, 146, 162, 'Ipaddress: 192.168.103.48\nMac Address: D8-CB-8A-A1-62-11', 'SERVER', NULL, 'FX SERVER', 'false', 0, ''),
(192, '2019-09-13', 1, 2, 35, 69, 177, 146, 155, 'Ipaddress: 192.168.103.49\nMac address: D8-CB-8A-7A-04-57', 'SERVER', NULL, 'SDS SERVER', 'false', 0, ''),
(193, '2019-09-13', 1, 1, 17, 72, 170, 114, 159, 'Ana Marie Cruz\nMac Address: 90-E6-BA-BA-72-80', 'GRAPHIC ARTIST', NULL, 'ANA', 'false', 2, '2020-07-07'),
(197, '2018-03-13', 1, 3, 37, 80, 173, 127, 155, 'Accounting (Christine Joyce Sadiwa)\nIP Address: 192.168.103.103.116\nMac Address: BC-AE-C5-74-CA-F2', 'ACCOUNTING', NULL, 'CHRISTINE', 'false', 0, ''),
(198, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'SUNEX SERVER', NULL, 'ANY', 'false', 0, ''),
(199, '2019-09-12', 1, 2, 35, 57, 173, 107, 160, '', '', NULL, '', 'false', 0, ''),
(200, '2019-09-27', 1, 2, 35, 57, 173, 107, 159, 'Mac Address: 30-5A-3A-0E-B2-A0', 'RSO CDO', NULL, 'Mike', 'false', 0, ''),
(201, '2019-03-25', 1, 1, 17, 72, 170, 114, 164, 'eto ang gamit ni Kenneth taz ginamit na ni Kryztoff\nMac add: 00-26-18-B9-99-70', '', NULL, '', 'false', 2, '2020-08-05'),
(204, '2018-12-06', 1, 2, 55, 65, 170, 110, 159, 'HDD sn: WDC WD1600AAJS-00L7A0\nMac Address: BC-AE-C5-39-37-41', '', NULL, '', 'false', 0, ''),
(205, '2018-12-10', 1, 1, 25, 80, 173, 123, 160, 'sold na dapat eto pero binalik kasi yung unit for repair', '', NULL, '', 'false', 17, '2019-05-16'),
(206, '2018-12-06', 1, 2, 11, 81, 170, 118, 160, '', '', NULL, '', 'false', 0, ''),
(207, '2018-12-07', 1, 2, 17, 65, 170, 114, 160, '', '', NULL, '', 'false', 0, ''),
(208, '2018-12-11', 1, 1, 17, 65, 170, 114, 160, 'Mac Address: 00-25-86-E6-B0-21', '', NULL, '', 'false', 2, '2020-07-08'),
(209, '2018-12-05', 1, 1, 17, 74, 170, 114, 160, 'Mac Address: 00-24-01-EB-72-8B', '', NULL, '', 'false', 34, '2020-06-18'),
(210, '2018-12-26', 1, 2, 17, 81, 170, 114, 159, '', '', NULL, '', 'false', 0, ''),
(211, '2019-01-08', 1, 2, 55, 80, 170, 110, 159, '', '', NULL, '', 'false', 0, ''),
(212, '2018-12-06', 1, 2, 47, 81, 167, 147, 164, '', '', NULL, '', 'false', 0, ''),
(213, '2018-12-04', 1, 1, 24, 80, 173, 123, 161, 'Mac Address: BC-AE-C5-39-37-41', '', NULL, '', 'false', 17, '2020-09-08'),
(214, '2018-12-04', 1, 1, 17, 74, 170, 113, 160, 'Mac Address: 20-CF-30-AB-92-EC', '', NULL, '', 'false', 7, '2020-07-20'),
(215, '2018-12-07', 1, 1, 27, 72, 173, 124, 160, 'Mac Address: 10-BF-48-3F-69-58', '', NULL, '', 'false', 17, '2019-05-16'),
(216, '2019-03-26', 1, 1, 9, 72, 170, 114, 160, 'Mac Address: 00-24-8C-D5-55-03', '', NULL, '', 'false', 2, '2020-07-08'),
(217, '2019-03-26', 1, 3, 35, 57, 173, 107, 159, 'Mac Address: D0-17-C2-87-E6-D7', 'Tacloban Cashier', NULL, 'Arnel/Cath', 'false', 0, ''),
(218, '2019-03-26', 1, 2, 27, 80, 173, 125, 159, 'OPS-Ini?a Balean\nIP Address: 192.168.103.179\nMac address: 50-46-5D-4C-98-FA', 'AUDIT/OPS', NULL, 'INIA', 'false', 0, ''),
(219, '2019-03-26', 1, 3, 35, 80, 173, 142, 159, 'dating gamit ni Ma''am Myra Pe?amora\npero ngayon gamit narin eto ni Ma''am Aileen Gardose', 'H.R', NULL, 'AILEEN', 'false', 0, ''),
(220, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'CASHIER', NULL, 'ERIC', 'false', 0, ''),
(221, '2019-03-26', 1, 3, 36, 57, 173, 106, 155, 'Allan Frades\nIP Address: 192.168.103.197\nMac Address: D0-17-C2-D0-87-C8', 'DATA ANALYST', NULL, 'ALLAN', 'false', 0, ''),
(222, '2019-03-26', 1, 3, 40, 62, 174, 140, 159, 'Head I.T-M'' Vima\nIP Address: 192.168.103.99\nMac Address: 8C-89-A5-E6-7E-9B', 'HEAD-IT', NULL, 'VIMA', 'false', 0, ''),
(223, '2019-03-26', 1, 3, 38, 68, 174, 127, 159, 'IT-Staff-Romeo Bulalacao Jr.\nIP Address: 192.168.103.169\nMac Address: BC-AE-C5-74-CB-6F', 'IT-STAFF', NULL, 'ROMEO', 'false', 0, ''),
(224, '2019-03-26', 1, 3, 38, 57, 174, 127, 155, 'Programmer-Erwen Paredes\nMac Address1: BC-AE-C5-74-CA-2C\nMac Address2:  2A-15-93-CC-C7-25', 'PROGRAMMER', NULL, 'ERWEN', 'false', 0, ''),
(225, '2019-03-26', 1, 3, 39, 73, 175, 149, 155, 'Fileserver\nIP Address: 192.168.103.30/38\nMac Address1:  6C-62-6D-41-F5-99\nMac Address2: C4-12-F5-30-FB-DD', 'FILESERVER', NULL, 'N/A', 'false', 0, ''),
(227, '2019-03-26', 1, 3, 27, 80, 173, 125, 159, 'CNC Head-M'' Sonia Parero\nIP Address: 192.168.103.131\nMac Address: 10-BF-48-42-6C-F3', 'CNC HEAD', NULL, 'SONIA', 'false', 0, ''),
(228, '2019-03-26', 1, 1, 17, 65, 170, 114, 159, 'SDS Stockman Supervisor-Lenly Nardo\nIP Address: 192.168.103.184\nMac Address: 00-26-18-B4-77-87\nMonitor SN: 118BS3PY00223', '', NULL, '', 'false', 35, '2020-08-28'),
(229, '2019-03-26', 1, 3, 25, 72, 173, 123, 159, 'Sunex Stockman-Fernan\nIP Address: 192.168.103.169\nMac Address: 54-04-A6-2C-A1-20\npinakabungad lang (SUNEX)', 'SUNEX STOCKMAN', NULL, 'FERNAN', 'false', 0, ''),
(230, '2019-04-03', 1, 2, 31, 57, 173, 123, 160, 'Davao\nMac Address: 10-BF-48-B6-1C-6B', '', NULL, '', 'false', 0, ''),
(231, '2019-03-26', 1, 3, 35, 80, 173, 107, 159, 'Ronnie/Fernan (Gitna)\nIP Address: 192.168.103.194\nMac Address: 9C-5C-8E-C2-36-52', 'SUNEX RETURN', NULL, 'RONNIE/FERNAN', 'false', 0, ''),
(232, '2019-03-26', 1, 3, 35, 80, 176, 146, 159, 'Jomel, Francis\nIP Address: 192.168.103.195\nMac Address: D8-CB-8A-A1-61-F1', 'SUNEX LANG', NULL, 'JOMEL/FRANCIS', 'false', 0, ''),
(233, '2019-03-26', 1, 1, 27, 80, 173, 123, 159, 'Marketing Server(Ana)\nIP Address: 192.168.103.180\nMac Address: C8-60-00-9A-C1-DD\nLCD Monitor SN: 2128A3WY01759', 'MARKETING SERVER', NULL, 'N/A', 'true', 39, '2020-09-01'),
(234, '2019-03-26', 1, 2, 29, 80, 173, 139, 159, 'CLIENT TEST MACHINE(RPRO)', '', NULL, '', 'false', 0, ''),
(235, '2019-03-27', 1, 3, 27, 57, 173, 123, 159, 'H.R-M'' Aileen Gardose\nIP Address: 192.168.103.98\nMac Address: 10-BF-48-42-72-7F', 'H.R', NULL, 'AILEEN', 'false', 0, ''),
(236, '2019-03-27', 1, 3, 43, 57, 178, 121, 159, 'Ma''am Ana Marie Cruz\nIP Address: 192.168.103.176\nMac Address: BC-AE-C5-23-2B-AF', '', NULL, 'ANA', 'false', 0, ''),
(237, '2019-03-27', 1, 1, 38, 57, 173, 148, 155, 'last na gumamit nito si Alfred Cabral\nMac address: 6C-62-6D-E8-6E-7C', '', NULL, 'ALFRED', 'false', 34, '2020-07-06'),
(238, '2019-03-27', 1, 3, 41, 64, 178, 146, 162, '', 'DATA SERVER', NULL, 'N/A', 'false', 0, ''),
(239, '2019-03-27', 1, 3, 31, 80, 173, 123, 153, 'Marikina Sunex Server\nIP Address: 192.168.103.191\nMac Address: 10-BF-48-42-72-81', 'MARIKINA SUNEX SERVER', NULL, 'N/A', 'false', 0, ''),
(242, '2019-03-27', 1, 2, 30, 77, 173, 123, 159, 'MARIKINA FX/SDS SERVER\nUsername: mar_server\nPassword: Sundance@1999\nIP Address: 192.168.103.105\nMac Address: 14-DA-E9-1B-63-C1', 'MARIKINA FX/SDS SERVER', NULL, 'N/A', 'false', 0, ''),
(243, '2019-03-27', 1, 3, 31, 80, 170, 123, 159, 'Sunex B.A-Mylene\nIP Address: 192.168.103.192\nMac Address: C8-60-00-5E-9F-D8', 'MARIKINA B.A', NULL, 'MYLENE', 'false', 0, ''),
(247, '2019-03-28', 1, 2, 31, 80, 173, 123, 159, 'Mac Address: 10-BF-48-42-79-2B', '', NULL, '', 'false', 0, ''),
(248, '2019-03-28', 1, 3, 27, 71, 173, 123, 159, 'Ronnie Camacho\nIP Address: 192.168.103.126\nMac Address: 10-BF-48-42-70-9B', '', NULL, 'RONNIE', 'false', 0, ''),
(249, '2019-03-28', 1, 3, 35, 57, 173, 107, 159, 'CNC B.A-Julie (Bungad)\nIP Address: 192.168.103.133\nMac Address: 30-5A-3A-0E-B2-1E', '', NULL, 'JULIE', 'false', 0, ''),
(250, '2019-03-28', 1, 3, 17, 65, 170, 114, 158, 'CNC B.A-Julie/Mylene\nIP Address: 192.168.103.135\nMac Address: 00-26-18-F0-F5-6E', '', NULL, '', 'true', 0, ''),
(251, '2019-03-28', 1, 3, 49, 57, 178, 84, 162, 'WEB SERVER\nIP Address: 192.168.103.170\nMac Address: 6C-AE-8B-36-F8-A5\nremote desktop:\nWebserver 2.0\nPa$$w0rd', '', NULL, 'N/A', 'false', 0, ''),
(252, '2019-03-28', 1, 3, 27, 57, 173, 123, 159, 'Ana Marie Cruz (Sales)\nIP Address: 192.168.103.178\nMac Address: C8-60-00-9A-BD-23', 'CHECKER', NULL, 'RAUL', 'false', 0, ''),
(255, '2019-03-29', 1, 2, 11, 81, 167, 118, 164, '', '', NULL, '', 'false', 0, ''),
(264, '2019-04-01', 1, 2, 38, 80, 178, 127, 159, 'Dan Michael Enriquez', 'IT-STAFF', NULL, 'DAN MICHAEL', 'false', 0, ''),
(266, '2019-04-08', 1, 2, 35, 57, 173, 107, 159, 'Mac Address: 30-5A-3A-0E-B2-92', '', NULL, '', 'false', 0, ''),
(267, '2019-04-12', 1, 3, 35, 57, 173, 107, 155, 'FROM Code 170\nMac Address: D0-17-C2-D0-9A-CF', 'DRIVERS-HEAD', NULL, 'DONG', 'false', 0, ''),
(268, '2019-04-12', 1, 1, 17, 65, 170, 114, 160, 'FROM CODE: 250\nCNC B.A-Julie/Mylene\nIP Address: 192.168.103.135\nMac Address: 00-26-18-F0-F5-6E\nWindows XP Home Edition ang Sticker', '', NULL, '', 'false', 2, '2020-06-07'),
(269, '2019-12-05', 1, 1, 17, 81, 170, 109, 160, 'Mac Address: 90-E6-BA-B8-74-9B', '', NULL, '', 'false', 2, '2020-07-06'),
(270, '2020-01-09', 1, 2, 31, 80, 173, 123, 159, 'Mac Address: 10-BF-48-41-6E-BA', 'FOR PRESENTATION', NULL, 'ANONYMOUS', 'false', 0, ''),
(271, '2020-01-09', 1, 2, 51, 81, 179, 136, 165, 'Mac Address: 00-19-DB-AA-E1-A6', '', NULL, '', 'false', 0, ''),
(272, '2020-01-09', 1, 1, 17, 72, 170, 114, 160, 'Mac Address: E0-CB-4E-EC-E5-16', 'Cubao', NULL, 'Lanie', 'false', 11, '2020-11-06'),
(273, '2020-01-15', 1, 1, 17, 65, 170, 114, 160, 'Mac Address 00-26-18-C9-31-B4', '', NULL, '', 'false', 34, '2020-06-17'),
(274, '2020-02-06', 1, 2, 12, 72, 170, 120, 160, 'Mac Address: 00-1D-60-8F-2A-F2', '', NULL, '', 'false', 0, ''),
(275, '2020-02-11', 1, 1, 25, 80, 173, 123, 159, 'Mac Address: 54-04-A6-2C-A2-1E', '', NULL, '', 'false', 17, '2020-09-09'),
(276, '2020-03-13', 1, 2, 17, 81, 170, 114, 160, 'Mac Address: 00-26-18-B9-99-6B', '', NULL, '', 'false', 0, ''),
(277, '2020-06-15', 1, 1, 17, 72, 170, 113, 159, '', '', NULL, '', 'false', 19, '2018-01-16'),
(278, '2020-06-30', 1, 1, 19, 74, 173, 102, 152, 'Graphics: AMD? Rv630', '', NULL, '', 'false', 1, '2020-08-17');

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
(2, 'demo', 'demo', 'example@example.com', '2x2.jpg', 'admin', 0),
(3, 'nina', '1010', 'example@example.com', 'Motherpic.jpg', 'admin', 0);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `systemunitlist` AS select `a`.`id` AS `id`,`a`.`sold_date` AS `sold_date`,`a`.`user` AS `user`,`b`.`status` AS `STATUS`,`c`.`item_description` AS `cpu`,`d`.`item_description` AS `hdd`,`e`.`item_description` AS `ram`,`f`.`item_description` AS `mobo`,`g`.`item_description` AS `os`,if(isnull(`h`.`buyer_name`),'none',`h`.`buyer_name`) AS `buyername`,`i`.`id` AS `buyer_id`,`a`.`duplicate_data` AS `duplicate` from ((((((((`system_unit` `a` left join `system_status` `b` on((`b`.`id` = `a`.`status_id`))) left join `item_masterfile` `c` on((`c`.`id` = `a`.`cpu_id`))) left join `item_masterfile` `d` on((`d`.`id` = `a`.`hdd_id`))) left join `item_masterfile` `e` on((`e`.`id` = `a`.`ram_id`))) left join `item_masterfile` `f` on((`f`.`id` = `a`.`mobo_id`))) left join `item_masterfile` `g` on((`g`.`id` = `a`.`os_id`))) left join `buyer` `h` on((`h`.`id` = `a`.`buyer_id`))) left join `buyer` `i` on((`i`.`id` = `a`.`buyer_id`)));

-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2020 at 08:45 AM
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
-- Table structure for table `gatepass`
--

CREATE TABLE IF NOT EXISTS `gatepass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL,
  `forwardto` varchar(255) NOT NULL,
  `goingto` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `g_status` varchar(255) NOT NULL DEFAULT 'unsave',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `gatepass`
--


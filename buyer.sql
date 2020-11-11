-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2020 at 07:29 AM
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

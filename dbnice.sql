-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2020 at 07:10 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=593 ;

--
-- Dumping data for table `accessories_sold`
--

INSERT INTO `accessories_sold` (`id`, `buyer_id`, `items_id`, `qty`, `system_id`, `status`) VALUES
(1, 11, 131, 1, 1, 'tag'),
(2, 11, 169, 1, 1, 'tag'),
(3, 11, 45, 1, 1, 'tag'),
(4, 11, 78, 1, 1, 'tag'),
(5, 11, 164, 2, 1, 'tag'),
(6, 11, 140, 1, 1, 'tag'),
(7, 0, 78, 1, 0, 'false'),
(8, 0, 164, 2, 0, 'false'),
(9, 0, 140, 1, 0, 'false'),
(10, 0, 45, 1, 0, 'false'),
(11, 0, 169, 1, 0, 'false'),
(12, 0, 131, 1, 0, 'false'),
(13, 0, 169, 1, 0, 'false'),
(14, 0, 164, 2, 0, 'false'),
(15, 0, 45, 1, 0, 'false'),
(16, 0, 78, 1, 0, 'false'),
(17, 0, 131, 1, 0, 'false'),
(18, 0, 140, 1, 0, 'false'),
(19, 0, 164, 2, 0, 'false'),
(20, 0, 45, 1, 0, 'false'),
(21, 0, 169, 1, 0, 'false'),
(22, 0, 131, 1, 0, 'false'),
(23, 0, 140, 1, 0, 'false'),
(24, 0, 78, 1, 0, 'false'),
(25, 0, 140, 1, 0, 'false'),
(26, 0, 164, 2, 0, 'false'),
(27, 0, 169, 1, 0, 'false'),
(28, 0, 45, 1, 0, 'false'),
(29, 0, 78, 1, 0, 'false'),
(30, 0, 131, 1, 0, 'false'),
(31, 0, 45, 1, 0, 'false'),
(32, 0, 164, 2, 0, 'false'),
(33, 0, 131, 1, 0, 'false'),
(34, 0, 169, 1, 0, 'false'),
(35, 0, 140, 1, 0, 'false'),
(36, 0, 78, 1, 0, 'false'),
(37, 0, 164, 2, 0, 'false'),
(38, 0, 45, 1, 0, 'false'),
(39, 0, 78, 1, 0, 'false'),
(40, 0, 169, 1, 0, 'false'),
(41, 0, 131, 1, 0, 'false'),
(42, 0, 140, 1, 0, 'false'),
(43, 0, 45, 1, 0, 'false'),
(44, 0, 169, 1, 0, 'false'),
(45, 0, 164, 2, 0, 'false'),
(46, 0, 131, 1, 0, 'false'),
(47, 0, 140, 1, 0, 'false'),
(48, 0, 78, 1, 0, 'false'),
(49, 0, 140, 1, 0, 'false'),
(50, 0, 131, 1, 0, 'false'),
(51, 0, 45, 1, 0, 'false'),
(52, 0, 78, 1, 0, 'false'),
(53, 0, 169, 1, 0, 'false'),
(54, 0, 164, 2, 0, 'false'),
(55, 0, 78, 1, 0, 'false'),
(56, 0, 169, 1, 0, 'false'),
(57, 0, 140, 1, 0, 'false'),
(58, 0, 45, 1, 0, 'false'),
(59, 0, 164, 2, 0, 'false'),
(60, 0, 131, 1, 0, 'false'),
(61, 0, 45, 1, 0, 'false'),
(62, 0, 140, 1, 0, 'false'),
(63, 0, 78, 1, 0, 'false'),
(64, 0, 131, 1, 0, 'false'),
(65, 0, 169, 1, 0, 'false'),
(66, 0, 164, 2, 0, 'false'),
(67, 0, 140, 1, 0, 'false'),
(68, 0, 78, 1, 0, 'false'),
(69, 0, 131, 1, 0, 'false'),
(70, 0, 45, 1, 0, 'false'),
(71, 0, 164, 2, 0, 'false'),
(72, 0, 169, 1, 0, 'false'),
(73, 21, 164, 2, 47, 'save'),
(74, 21, 78, 1, 47, 'save'),
(75, 21, 169, 1, 47, 'save'),
(76, 21, 140, 1, 47, 'save'),
(77, 21, 131, 1, 47, 'save'),
(78, 21, 45, 1, 47, 'save'),
(79, 0, 164, 2, 0, 'false'),
(80, 0, 140, 1, 0, 'false'),
(81, 0, 45, 1, 0, 'false'),
(82, 0, 169, 1, 0, 'false'),
(83, 0, 131, 1, 0, 'false'),
(84, 0, 78, 1, 0, 'false'),
(85, 0, 164, 2, 0, 'false'),
(86, 0, 169, 1, 0, 'false'),
(87, 0, 140, 1, 0, 'false'),
(88, 0, 78, 1, 0, 'false'),
(89, 0, 45, 1, 0, 'false'),
(90, 0, 131, 1, 0, 'false'),
(91, 45, 164, 2, 106, 'tag'),
(92, 45, 78, 1, 106, 'tag'),
(93, 45, 140, 1, 106, 'tag'),
(94, 45, 131, 1, 106, 'tag'),
(95, 45, 45, 1, 106, 'tag'),
(96, 45, 169, 1, 106, 'tag'),
(97, 35, 45, 1, 209, 'tag'),
(98, 35, 140, 1, 209, 'tag'),
(99, 35, 131, 1, 209, 'tag'),
(100, 35, 78, 1, 209, 'tag'),
(101, 35, 169, 1, 209, 'tag'),
(102, 35, 164, 2, 209, 'tag'),
(103, 7, 164, 2, 214, 'tag'),
(104, 7, 140, 1, 214, 'tag'),
(105, 7, 131, 1, 214, 'tag'),
(106, 7, 45, 1, 214, 'tag'),
(107, 7, 78, 1, 214, 'tag'),
(108, 7, 169, 1, 214, 'tag'),
(109, 17, 45, 1, 215, 'tag'),
(110, 17, 140, 1, 215, 'tag'),
(111, 17, 131, 1, 215, 'tag'),
(112, 17, 164, 2, 215, 'tag'),
(113, 17, 169, 1, 215, 'tag'),
(114, 17, 78, 1, 215, 'tag'),
(115, 2, 45, 1, 216, 'tag'),
(116, 2, 140, 1, 216, 'tag'),
(117, 2, 169, 1, 216, 'tag'),
(118, 2, 78, 1, 216, 'tag'),
(119, 2, 164, 2, 216, 'tag'),
(120, 2, 131, 1, 216, 'tag'),
(121, 2, 140, 1, 269, 'tag'),
(122, 2, 45, 1, 269, 'tag'),
(123, 2, 131, 1, 269, 'tag'),
(124, 2, 164, 2, 269, 'tag'),
(125, 2, 78, 1, 269, 'tag'),
(126, 2, 169, 1, 269, 'tag'),
(127, 35, 78, 1, 273, 'tag'),
(128, 35, 45, 1, 273, 'tag'),
(129, 35, 140, 1, 273, 'tag'),
(130, 35, 169, 1, 273, 'tag'),
(131, 35, 131, 1, 273, 'tag'),
(132, 35, 164, 2, 273, 'tag'),
(133, 0, 140, 1, 0, 'false'),
(134, 0, 131, 1, 0, 'false'),
(135, 0, 86, 1, 0, 'false'),
(136, 0, 169, 1, 0, 'false'),
(137, 0, 164, 2, 0, 'false'),
(138, 0, 140, 1, 0, 'false'),
(139, 0, 131, 1, 0, 'false'),
(140, 0, 78, 1, 0, 'false'),
(141, 0, 45, 1, 0, 'false'),
(142, 0, 169, 1, 0, 'false'),
(143, 0, 164, 2, 0, 'false'),
(144, 48, 150, 1, 4, 'save'),
(145, 49, 150, 1, 128, 'save'),
(146, 49, 85, 1, 128, 'save'),
(147, 49, 94, 1, 128, 'save'),
(148, 49, 6, 1, 128, 'save'),
(149, 49, 5, 2, 128, 'save'),
(150, 44, 150, 1, 129, 'save'),
(151, 44, 85, 1, 129, 'save'),
(152, 44, 88, 1, 129, 'save'),
(153, 44, 6, 1, 129, 'save'),
(154, 44, 5, 2, 129, 'save'),
(155, 48, 150, 1, 210, 'save'),
(156, 48, 85, 1, 210, 'save'),
(157, 48, 183, 1, 210, 'save'),
(158, 48, 6, 1, 210, 'save'),
(159, 48, 5, 2, 210, 'save'),
(160, 36, 150, 1, 124, 'save'),
(161, 36, 88, 1, 124, 'save'),
(162, 36, 85, 1, 124, 'save'),
(163, 48, 85, 1, 4, 'save'),
(164, 48, 88, 1, 4, 'save'),
(165, 48, 6, 1, 4, 'save'),
(166, 48, 5, 2, 4, 'save'),
(167, 48, 150, 1, 18, 'save'),
(168, 48, 85, 1, 18, 'save'),
(169, 48, 94, 1, 18, 'save'),
(170, 48, 5, 2, 18, 'save'),
(171, 48, 6, 1, 18, 'save'),
(172, 41, 150, 1, 218, 'save'),
(173, 41, 85, 1, 218, 'save'),
(174, 41, 184, 1, 218, 'save'),
(175, 41, 5, 2, 218, 'save'),
(176, 41, 6, 1, 218, 'save'),
(177, 36, 150, 1, 73, 'save'),
(178, 36, 85, 1, 73, 'save'),
(179, 36, 1, 1, 73, 'save'),
(180, 36, 6, 1, 73, 'save'),
(181, 36, 5, 2, 73, 'save'),
(182, 0, 150, 1, 0, 'false'),
(183, 0, 85, 1, 0, 'false'),
(184, 0, 1, 1, 0, 'false'),
(185, 0, 6, 1, 0, 'false'),
(186, 0, 5, 2, 0, 'false'),
(187, 0, 88, 1, 0, 'false'),
(188, 11, 150, 1, 1, 'save'),
(189, 11, 85, 1, 1, 'save'),
(190, 11, 6, 1, 1, 'save'),
(191, 11, 5, 2, 1, 'save'),
(192, 11, 90, 1, 1, 'save'),
(193, 11, 1, 1, 1, 'save'),
(194, 0, 1, 1, 0, 'false'),
(195, 0, 85, 1, 0, 'false'),
(196, 0, 150, 1, 0, 'false'),
(197, 0, 6, 1, 0, 'false'),
(198, 0, 5, 2, 0, 'false'),
(199, 0, 88, 1, 0, 'false'),
(200, 0, 150, 1, 0, 'false'),
(201, 0, 85, 1, 0, 'false'),
(202, 0, 6, 1, 0, 'false'),
(203, 0, 5, 2, 0, 'false'),
(204, 0, 1, 1, 0, 'false'),
(205, 0, 88, 1, 0, 'false'),
(206, 0, 150, 1, 0, 'false'),
(207, 0, 85, 1, 0, 'false'),
(208, 0, 6, 1, 0, 'false'),
(209, 0, 5, 2, 0, 'false'),
(210, 0, 88, 1, 0, 'false'),
(211, 0, 1, 1, 0, 'false'),
(212, 0, 150, 1, 0, 'false'),
(213, 0, 85, 1, 0, 'false'),
(214, 0, 6, 1, 0, 'false'),
(215, 0, 1, 1, 0, 'false'),
(216, 0, 88, 1, 0, 'false'),
(217, 0, 5, 2, 0, 'false'),
(218, 0, 150, 1, 0, 'false'),
(219, 0, 85, 1, 0, 'false'),
(220, 0, 5, 2, 0, 'false'),
(221, 0, 6, 1, 0, 'false'),
(222, 0, 88, 1, 0, 'false'),
(223, 0, 150, 1, 0, 'false'),
(224, 0, 86, 1, 0, 'false'),
(225, 0, 6, 1, 0, 'false'),
(226, 0, 5, 1, 0, 'false'),
(227, 0, 88, 1, 0, 'false'),
(228, 0, 1, 1, 0, 'false'),
(229, 0, 150, 1, 0, 'false'),
(230, 0, 1, 1, 0, 'false'),
(231, 0, 5, 2, 0, 'false'),
(232, 0, 92, 1, 0, 'false'),
(233, 0, 6, 1, 0, 'false'),
(234, 24, 150, 1, 17, 'save'),
(235, 24, 85, 1, 17, 'save'),
(236, 24, 6, 1, 17, 'save'),
(237, 24, 1, 1, 17, 'save'),
(238, 24, 91, 1, 17, 'save'),
(239, 24, 5, 2, 17, 'save'),
(240, 0, 150, 1, 0, 'false'),
(241, 0, 85, 1, 0, 'false'),
(242, 0, 6, 1, 0, 'false'),
(243, 0, 5, 2, 0, 'false'),
(244, 0, 88, 1, 0, 'false'),
(245, 0, 1, 1, 0, 'false'),
(246, 0, 150, 1, 0, 'false'),
(247, 0, 86, 1, 0, 'false'),
(248, 0, 6, 1, 0, 'false'),
(249, 0, 1, 1, 0, 'false'),
(250, 0, 5, 2, 0, 'false'),
(251, 0, 90, 1, 0, 'false'),
(252, 0, 150, 1, 0, 'false'),
(253, 0, 85, 1, 0, 'false'),
(254, 0, 90, 1, 0, 'false'),
(255, 0, 5, 2, 0, 'false'),
(256, 0, 1, 1, 0, 'false'),
(257, 0, 6, 1, 0, 'false'),
(258, 0, 150, 1, 0, 'false'),
(259, 0, 85, 1, 0, 'false'),
(260, 0, 5, 2, 0, 'false'),
(261, 0, 6, 1, 0, 'false'),
(262, 0, 1, 1, 0, 'false'),
(263, 0, 91, 1, 0, 'false'),
(264, 0, 150, 1, 0, 'false'),
(265, 0, 85, 1, 0, 'false'),
(266, 0, 6, 1, 0, 'false'),
(267, 0, 1, 1, 0, 'false'),
(268, 0, 90, 1, 0, 'false'),
(269, 0, 5, 2, 0, 'false'),
(270, 0, 88, 1, 0, 'false'),
(271, 0, 85, 1, 0, 'false'),
(272, 0, 6, 1, 0, 'false'),
(273, 0, 1, 1, 0, 'false'),
(274, 0, 5, 1, 0, 'false'),
(275, 0, 5, 2, 0, 'false'),
(276, 0, 150, 1, 0, 'false'),
(277, 0, 150, 1, 0, 'false'),
(278, 0, 97, 1, 0, 'false'),
(279, 0, 85, 1, 0, 'false'),
(280, 0, 6, 1, 0, 'false'),
(281, 0, 5, 2, 0, 'false'),
(282, 0, 150, 1, 0, 'false'),
(283, 0, 85, 1, 0, 'false'),
(284, 0, 6, 1, 0, 'false'),
(285, 0, 5, 2, 0, 'false'),
(286, 0, 88, 1, 0, 'false'),
(287, 0, 1, 1, 0, 'false'),
(288, 0, 150, 1, 0, 'false'),
(289, 0, 85, 1, 0, 'false'),
(290, 0, 90, 1, 0, 'false'),
(291, 0, 1, 1, 0, 'false'),
(292, 0, 6, 1, 0, 'false'),
(293, 0, 5, 2, 0, 'false'),
(294, 0, 150, 1, 0, 'false'),
(295, 0, 85, 1, 0, 'false'),
(296, 0, 88, 1, 0, 'false'),
(297, 0, 6, 1, 0, 'false'),
(298, 0, 5, 2, 0, 'false'),
(299, 0, 1, 1, 0, 'false'),
(300, 7, 186, 1, 51, 'save'),
(301, 45, 1, 1, 52, 'save'),
(302, 45, 85, 1, 52, 'save'),
(303, 45, 6, 1, 52, 'save'),
(304, 45, 93, 1, 52, 'save'),
(305, 45, 5, 2, 52, 'save'),
(306, 45, 150, 1, 52, 'save'),
(307, 15, 150, 1, 55, 'save'),
(308, 15, 85, 1, 55, 'save'),
(309, 15, 1, 1, 55, 'save'),
(310, 15, 5, 2, 55, 'save'),
(311, 15, 6, 1, 55, 'save'),
(312, 15, 93, 1, 55, 'save'),
(313, 12, 87, 1, 56, 'save'),
(314, 12, 150, 1, 56, 'save'),
(315, 12, 85, 1, 56, 'save'),
(316, 12, 1, 1, 56, 'save'),
(317, 12, 6, 1, 56, 'save'),
(318, 12, 5, 2, 56, 'save'),
(319, 10, 150, 1, 62, 'save'),
(320, 10, 85, 1, 62, 'save'),
(321, 10, 187, 1, 62, 'save'),
(322, 7, 1, 1, 64, 'save'),
(323, 7, 150, 1, 64, 'save'),
(324, 7, 85, 1, 64, 'save'),
(325, 7, 6, 1, 64, 'save'),
(326, 7, 88, 1, 64, 'save'),
(327, 7, 5, 2, 64, 'save'),
(328, 2, 150, 1, 71, 'save'),
(329, 2, 1, 1, 71, 'save'),
(330, 2, 85, 1, 71, 'save'),
(331, 2, 6, 1, 71, 'save'),
(332, 2, 93, 1, 71, 'save'),
(333, 2, 5, 2, 71, 'save'),
(334, 33, 1, 1, 78, 'save'),
(335, 33, 85, 1, 78, 'save'),
(336, 33, 150, 1, 78, 'tag'),
(337, 33, 90, 1, 78, 'save'),
(338, 33, 6, 1, 78, 'save'),
(339, 33, 5, 2, 78, 'save'),
(340, 33, 151, 1, 78, 'save'),
(341, 40, 151, 1, 80, 'save'),
(342, 40, 85, 1, 80, 'save'),
(343, 40, 1, 1, 80, 'save'),
(344, 40, 90, 1, 80, 'save'),
(345, 40, 6, 1, 80, 'save'),
(346, 40, 5, 2, 80, 'save'),
(347, 6, 150, 1, 90, 'save'),
(348, 6, 85, 1, 90, 'save'),
(349, 6, 90, 1, 90, 'save'),
(350, 6, 6, 1, 90, 'save'),
(351, 6, 5, 2, 90, 'save'),
(352, 6, 186, 1, 90, 'save'),
(353, 6, 1, 1, 90, 'save'),
(354, 32, 150, 1, 91, 'save'),
(355, 32, 85, 1, 91, 'save'),
(356, 32, 5, 2, 91, 'save'),
(357, 32, 6, 1, 91, 'save'),
(358, 32, 1, 1, 91, 'save'),
(359, 32, 93, 1, 91, 'save'),
(360, 13, 86, 1, 92, 'save'),
(361, 13, 150, 1, 92, 'save'),
(362, 13, 1, 1, 92, 'save'),
(363, 13, 6, 1, 92, 'save'),
(364, 13, 90, 1, 92, 'save'),
(365, 13, 5, 2, 92, 'save'),
(366, 33, 150, 1, 93, 'save'),
(367, 33, 86, 1, 93, 'save'),
(368, 33, 1, 1, 93, 'save'),
(369, 33, 6, 1, 93, 'save'),
(370, 33, 5, 2, 93, 'save'),
(371, 33, 91, 1, 93, 'save'),
(372, 33, 187, 1, 93, 'save'),
(373, 34, 150, 1, 100, 'save'),
(374, 34, 1, 1, 100, 'save'),
(375, 34, 85, 1, 100, 'save'),
(376, 34, 6, 1, 100, 'save'),
(377, 34, 5, 2, 100, 'save'),
(378, 34, 88, 1, 100, 'save'),
(379, 46, 86, 1, 106, 'save'),
(380, 46, 150, 1, 106, 'save'),
(381, 46, 188, 1, 106, 'save'),
(382, 46, 5, 2, 106, 'save'),
(383, 46, 6, 1, 106, 'save'),
(384, 46, 88, 1, 106, 'save'),
(385, 23, 150, 1, 109, 'save'),
(386, 23, 86, 1, 109, 'save'),
(387, 23, 93, 1, 109, 'save'),
(388, 23, 186, 1, 109, 'save'),
(389, 23, 5, 2, 109, 'save'),
(390, 23, 6, 1, 109, 'save'),
(391, 23, 1, 1, 109, 'save'),
(392, 26, 186, 1, 110, 'save'),
(393, 26, 93, 1, 110, 'save'),
(394, 26, 86, 1, 110, 'save'),
(395, 26, 150, 1, 110, 'save'),
(396, 26, 6, 1, 110, 'save'),
(397, 26, 5, 2, 110, 'save'),
(398, 26, 1, 1, 110, 'save'),
(399, 29, 151, 1, 112, 'save'),
(400, 29, 86, 1, 112, 'save'),
(401, 29, 1, 1, 112, 'tag'),
(402, 29, 188, 1, 112, 'save'),
(403, 29, 93, 1, 112, 'save'),
(404, 29, 6, 1, 112, 'save'),
(405, 29, 5, 2, 112, 'save'),
(406, 38, 86, 1, 113, 'save'),
(407, 38, 150, 1, 113, 'save'),
(408, 38, 88, 1, 113, 'save'),
(409, 38, 186, 1, 113, 'save'),
(410, 38, 6, 1, 113, 'save'),
(411, 38, 5, 2, 113, 'save'),
(412, 38, 188, 1, 113, 'save'),
(413, 14, 150, 1, 126, 'save'),
(414, 14, 85, 1, 126, 'save'),
(415, 14, 90, 1, 126, 'save'),
(416, 14, 2, 1, 126, 'save'),
(417, 14, 6, 1, 126, 'save'),
(418, 14, 5, 2, 126, 'save'),
(419, 2, 150, 1, 130, 'save'),
(420, 2, 85, 1, 130, 'save'),
(421, 2, 1, 1, 130, 'save'),
(422, 2, 93, 1, 130, 'save'),
(423, 2, 5, 2, 130, 'save'),
(424, 2, 6, 1, 130, 'save'),
(425, 2, 88, 1, 132, 'save'),
(426, 2, 150, 1, 132, 'save'),
(427, 2, 85, 1, 132, 'save'),
(428, 2, 1, 1, 132, 'save'),
(429, 2, 6, 1, 132, 'save'),
(430, 2, 5, 2, 132, 'save'),
(431, 3, 189, 1, 125, 'save'),
(432, 3, 86, 1, 125, 'save'),
(433, 3, 150, 1, 125, 'save'),
(434, 3, 1, 1, 125, 'save'),
(435, 3, 6, 1, 125, 'save'),
(436, 3, 5, 2, 125, 'save'),
(437, 7, 150, 1, 135, 'save'),
(438, 7, 85, 1, 135, 'save'),
(439, 7, 93, 1, 135, 'save'),
(440, 7, 1, 1, 135, 'save'),
(441, 7, 6, 1, 135, 'save'),
(442, 7, 5, 2, 135, 'save'),
(443, 9, 150, 1, 138, 'save'),
(444, 9, 1, 1, 138, 'save'),
(445, 9, 85, 1, 138, 'save'),
(446, 9, 186, 1, 138, 'save'),
(447, 9, 6, 1, 138, 'save'),
(448, 9, 5, 2, 138, 'save'),
(449, 9, 88, 1, 138, 'save'),
(450, 42, 150, 1, 144, 'save'),
(451, 42, 85, 1, 144, 'save'),
(452, 42, 88, 1, 144, 'save'),
(453, 42, 5, 2, 144, 'save'),
(454, 42, 6, 1, 144, 'save'),
(455, 2, 90, 1, 146, 'save'),
(456, 2, 150, 1, 146, 'save'),
(457, 2, 85, 1, 146, 'save'),
(458, 2, 6, 1, 146, 'save'),
(459, 2, 5, 2, 146, 'save'),
(460, 44, 150, 1, 154, 'save'),
(461, 44, 85, 1, 154, 'save'),
(462, 44, 88, 1, 154, 'save'),
(463, 44, 6, 1, 154, 'save'),
(464, 44, 5, 2, 154, 'save'),
(465, 30, 150, 1, 164, 'save'),
(466, 30, 85, 1, 164, 'save'),
(467, 30, 88, 1, 164, 'save'),
(468, 30, 1, 1, 164, 'save'),
(469, 30, 6, 1, 164, 'save'),
(470, 30, 5, 2, 164, 'save'),
(471, 30, 186, 1, 164, 'save'),
(472, 25, 190, 1, 165, 'save'),
(473, 25, 150, 1, 165, 'save'),
(474, 25, 85, 1, 165, 'save'),
(475, 25, 6, 1, 165, 'save'),
(476, 25, 5, 2, 165, 'save'),
(477, 25, 1, 1, 165, 'save'),
(478, 42, 150, 1, 173, 'save'),
(479, 42, 85, 1, 173, 'save'),
(480, 42, 90, 1, 173, 'save'),
(481, 42, 6, 1, 173, 'save'),
(482, 42, 5, 2, 173, 'save'),
(483, 27, 150, 1, 174, 'save'),
(484, 27, 85, 1, 174, 'save'),
(485, 16, 97, 1, 178, 'save'),
(486, 16, 150, 1, 178, 'save'),
(487, 16, 85, 1, 178, 'save'),
(488, 16, 6, 1, 178, 'save'),
(489, 16, 5, 2, 178, 'save'),
(490, 16, 1, 1, 178, 'save'),
(491, 17, 191, 1, 181, 'save'),
(492, 17, 150, 1, 181, 'save'),
(493, 17, 85, 1, 181, 'save'),
(494, 17, 1, 1, 181, 'save'),
(495, 17, 6, 1, 181, 'save'),
(496, 17, 5, 2, 181, 'save'),
(497, 2, 91, 1, 193, 'save'),
(498, 2, 150, 1, 193, 'save'),
(499, 2, 85, 1, 193, 'save'),
(500, 2, 1, 1, 193, 'save'),
(501, 2, 6, 1, 193, 'save'),
(502, 2, 5, 2, 193, 'save'),
(503, 2, 150, 1, 201, 'save'),
(504, 2, 85, 1, 201, 'save'),
(505, 2, 88, 1, 201, 'save'),
(506, 2, 5, 2, 201, 'save'),
(507, 2, 6, 1, 201, 'save'),
(508, 2, 1, 1, 208, 'save'),
(509, 2, 90, 1, 208, 'save'),
(510, 2, 150, 1, 208, 'save'),
(511, 2, 85, 1, 208, 'save'),
(512, 2, 6, 1, 208, 'save'),
(513, 2, 5, 2, 208, 'save'),
(514, 34, 86, 1, 209, 'save'),
(515, 34, 150, 1, 209, 'save'),
(516, 34, 88, 1, 209, 'save'),
(517, 34, 1, 1, 209, 'save'),
(518, 34, 6, 1, 209, 'save'),
(519, 34, 5, 2, 209, 'save'),
(520, 17, 150, 1, 213, 'save'),
(521, 17, 85, 1, 213, 'save'),
(522, 17, 192, 1, 213, 'save'),
(523, 17, 6, 1, 213, 'save'),
(524, 17, 5, 2, 213, 'save'),
(525, 7, 150, 1, 214, 'save'),
(526, 7, 85, 1, 214, 'save'),
(527, 7, 1, 1, 214, 'save'),
(528, 7, 6, 1, 214, 'save'),
(529, 7, 5, 2, 214, 'save'),
(530, 7, 88, 1, 214, 'save'),
(531, 17, 1, 1, 215, 'save'),
(532, 17, 150, 1, 215, 'save'),
(533, 17, 85, 1, 215, 'save'),
(534, 17, 90, 1, 215, 'save'),
(535, 17, 6, 1, 215, 'save'),
(536, 17, 5, 2, 215, 'save'),
(537, 2, 1, 1, 216, 'save'),
(538, 2, 150, 1, 216, 'save'),
(539, 2, 85, 1, 216, 'save'),
(540, 2, 6, 1, 216, 'save'),
(541, 2, 5, 2, 216, 'save'),
(542, 2, 88, 1, 216, 'save'),
(543, 35, 150, 1, 228, 'save'),
(544, 35, 193, 1, 228, 'save'),
(545, 35, 93, 1, 228, 'save'),
(546, 35, 5, 2, 228, 'save'),
(547, 35, 6, 1, 228, 'save'),
(548, 35, 1, 1, 228, 'save'),
(549, 39, 150, 1, 233, 'tag'),
(550, 39, 85, 1, 233, 'tag'),
(551, 39, 194, 1, 233, 'save'),
(552, 39, 1, 1, 233, 'save'),
(553, 39, 5, 2, 233, 'save'),
(554, 39, 195, 1, 233, 'save'),
(555, 39, 6, 1, 233, 'save'),
(556, 34, 196, 1, 237, 'save'),
(557, 34, 150, 1, 237, 'save'),
(558, 34, 85, 1, 237, 'save'),
(559, 34, 1, 1, 237, 'save'),
(560, 34, 6, 1, 237, 'save'),
(561, 34, 5, 2, 237, 'save'),
(562, 2, 150, 1, 268, 'save'),
(563, 2, 93, 1, 268, 'save'),
(564, 2, 85, 1, 268, 'save'),
(565, 2, 1, 1, 268, 'save'),
(566, 2, 6, 1, 268, 'save'),
(567, 2, 5, 2, 268, 'save'),
(568, 2, 150, 1, 269, 'save'),
(569, 2, 85, 1, 269, 'save'),
(570, 2, 1, 1, 269, 'save'),
(571, 2, 88, 1, 269, 'save'),
(572, 2, 6, 1, 269, 'save'),
(573, 2, 5, 2, 269, 'save'),
(574, 34, 150, 1, 273, 'save'),
(575, 34, 85, 1, 273, 'save'),
(576, 34, 1, 1, 273, 'save'),
(577, 34, 6, 1, 273, 'save'),
(578, 34, 5, 2, 273, 'save'),
(579, 34, 88, 1, 273, 'save'),
(580, 17, 192, 1, 275, 'save'),
(581, 17, 150, 1, 275, 'save'),
(582, 17, 85, 1, 275, 'save'),
(583, 17, 6, 1, 275, 'save'),
(584, 17, 5, 2, 275, 'save'),
(585, 19, 197, 1, 277, 'save'),
(586, 19, 150, 1, 277, 'save'),
(587, 19, 85, 1, 277, 'save'),
(588, 19, 1, 1, 277, 'save'),
(589, 19, 6, 1, 277, 'save'),
(590, 19, 5, 2, 277, 'save'),
(591, 1, 150, 1, 278, 'save'),
(592, 1, 85, 1, 278, 'save');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=475 ;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`activitylog`, `user`, `action`, `activitydate`, `activitytime`, `device`, `ip`, `session`) VALUES
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
(128, 'romeo', 'Logged In', '20/10/28', '06:05:19am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(468, 'romeo', 'Logged In', '20/11/20', '12:13:59pm', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', '103.5.7.35', '5pehus85t8havdemimsc5p6i42'),
(130, 'romeo', 'Logged Out', '20/10/28', '06:59:40am', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(469, 'romeo', 'Logged Out', '20/11/20', '12:14:48pm', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', '103.5.7.35', '5pehus85t8havdemimsc5p6i42'),
(470, 'romeo', 'Logged Out', '20/11/20', '12:14:48pm', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', '103.5.7.35', '5pehus85t8havdemimsc5p6i42'),
(471, 'romeo', 'Logged In', '20/11/20', '01:12:16pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.323', '192.168.103.169', 'cbbvm0jp013g9s3gin6h4nbsr7'),
(472, 'romeo', 'Logged Out', '20/11/20', '02:03:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.323', '192.168.103.169', 'cbbvm0jp013g9s3gin6h4nbsr7'),
(473, 'romeo', 'Logged Out', '20/11/20', '02:03:32pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.323', '192.168.103.169', 'cbbvm0jp013g9s3gin6h4nbsr7'),
(474, 'romeo', 'Logged In', '20/11/20', '02:08:30pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.323', '192.168.103.169', 'cbbvm0jp013g9s3gin6h4nbsr7'),
(144, 'romeo', 'Logged Out', '20/10/28', '04:57:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', 'edst8o77i32ltmptqt8nvk1986'),
(145, 'romeo', 'Logged Out', '20/10/28', '04:57:00pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '127.0.0.1', 'edst8o77i32ltmptqt8nvk1986'),
(146, 'romeo', 'Logged In', '20/10/28', '06:11:36pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(147, 'romeo', 'Logged Out', '20/10/28', '06:14:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(148, 'romeo', 'Logged Out', '20/10/28', '06:14:41pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'soo4vgicbtmvj1mmhbhe2k82n6'),
(149, 'romeo', 'Logged In', '20/10/28', '06:14:49pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(150, 'romeo', 'Logged In', '20/10/28', '06:17:44pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(151, 'romeo', 'Logged Out', '20/10/28', '06:21:13pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3'),
(152, 'romeo', 'Logged In', '20/10/28', '06:21:22pm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 OPR/71.0.3770.287', '127.0.0.1', 'picv3vo12buemfuo7vkbq393c3');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) NOT NULL,
  `buyer_photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

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
(47, 'Yang', 'yang.png'),
(48, 'Kryztoff', 'kryz.png'),
(49, 'tacata', 'bg4.jpg');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `gatepass`
--

INSERT INTO `gatepass` (`id`, `summary_id`, `gname`, `gfrom`, `gto`, `itemdescription`, `qty`, `preparedby`, `receivedby`, `g_status`, `date_encoded`) VALUES
(1, 1, 'Gina', 'Marikina', 'Davao', 'LCD MONITOR (H.P 19 INCHES)', 1, 'Romeo', 'Gina', 'save', '2020-10-21 13:56:47pm'),
(2, 1, 'Gina', 'Marikina', 'Davao', 'MOUSE (A4TECH)', 1, 'Romeo', 'Gina', 'save', '2020-10-21 13:56:47pm'),
(3, 2, 'Dong', 'Marikina', 'Marikina', 'AVR (GENERIC)', 7, 'Romeo', 'Dong', 'save', '2020-09-29 13:57:19pm'),
(4, 3, 'Gina', 'Marikina', 'Davao', 'AVR (GENERIC)', 1, 'Romeo', 'Gina', 'save', '2020-10-06 13:08:37pm');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=198 ;

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
(94, 'LCD MONITOR (HANNS.G 19IN)', 7),
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
(182, 'N/A', 15),
(183, 'LCD MONITOR (HP V5E94AA 19IN)', 7),
(184, 'HANNS.G(HW191D) 19IN', 7),
(185, 'AVR (ARTEC)', 1),
(186, 'WIFI ADAPTER', 4),
(187, 'DVD ROM RW(LITEON)', 4),
(188, 'AVR (POWER ADVANTAGE)', 1),
(189, 'LG FLATRON L177WSB (17IN)', 7),
(190, 'ACER V196HQL (19IN)', 7),
(191, 'HANNS.G HSG1024 (19IN)', 7),
(192, 'HANNS.G HSG1191 (19IN)', 7),
(193, 'KEYBOARD (DELUX)', 6),
(194, 'HANNS.G HSG1230 (17IN)', 7),
(195, 'ADAPTER (FOR MONITOR)', 11),
(196, 'ASUS VS197(19IN)', 7),
(197, 'SAMSUNG S19D300NY (19)', 7);

-- --------------------------------------------------------

--
-- Table structure for table `msoffice`
--

CREATE TABLE IF NOT EXISTS `msoffice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `product_key` varchar(255) NOT NULL,
  `locationn` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `msoffice`
--

INSERT INTO `msoffice` (`id`, `date`, `user`, `product_key`, `locationn`, `remarks`) VALUES
(1, '2016-06-25', 'FX RETURN', '8XQCN-RTCF3-6X4JJ-V2FTK-M98YK', 'TACLOBAN', '<p>kay Stocksup/driver Tacloban na eto ngayon</p>'),
(2, '2016-06-25', 'CASHIER', 'Q6NM2-8QGD7-TD2PK-F3FPM-FGDHX', 'TACLOBAN', 'gamit na eto ng CDO code 181 kay Ma''am Ana Marie na eto now(09-18-2020)'),
(3, '2016-06-25', 'SDS RETURN', '48BV9-GNBYX-B3YY2-FHBK7-XD739', 'TACLOBAN', '<p>gamit na ni <strong>IDOL</strong></p>'),
(4, '2016-06-25', 'I.T', 'NTWX6-MPR29-CQV49-RH8V3-PYT39', 'TACLOBAN', ''),
(5, '2016-06-25', 'B.A', 'Y9HBJ-N4RG2-V8DFY-B2PYP-RVV39', 'TACLOBAN', 'sales CEBU'),
(6, '2016-06-25', 'Fx Cebu Return', '3HCN4-RKWQ7-2K3T6-VY9GJ-WB6BK', 'CEBU', ''),
(7, '2016-06-25', 'Sds Davao', '9XVD4-NGHBB-4GCFY-7VTCM-BBH39', 'DAVAO', 'Server RPRO'),
(8, '2016-06-25', 'SDS Davao', '4DN78-B4J3C-PXRRK-CX3VR-844D9', 'DAVAO', 'Davao Sales'),
(9, '2016-06-25', 'SDS Tarlac', 'P799N-3JHDB-4JW7M-272CQ-XHJYK', 'TARLAC', 'IDOL code #74'),
(10, '2016-08-23', 'SDS CDO', 'NFCMF-FMGXQ-PYWGT-78MXD-PYT7X', 'CDO', ''),
(11, '2016-08-23', 'FX CDO', 'MN9YM-D947R-GRQM2-MQT6V-VT9VX', 'CDO', ''),
(12, '2016-09-22', 'SDS/FX BA', '2MHMN-PMDMQ-TGQBY-6B28H-WK8YK', 'GENSAN', 'Idol RPRO income/outgo'),
(13, '2016-09-22', 'FX CASHIER', 'KRR2N-HXDH8-4F748-PQYJ2-9QBQ9', 'GENSAN', 'CODE # 81 cdo rpro server'),
(14, '2016-09-22', 'SDS/FX Return', '9XGBN-9WDP2-YCFBX-463XR-3DBQ9', 'GENSAN', 'Davao Server_RPRO'),
(15, '2016-09-23', 'SDS Cashier', '6N9DY-W967W-WHTM7-VTVD2-Q3WYK', 'GENSAN', 'Tacloban B.A 08-06-2019 code# 84'),
(16, '2016-09-22', 'sds/fx IT', 'HGMNQ-M2GK7-Q3TKH-9FKHX-3RTBK', 'GENSAN', ''),
(17, '2016-10-20', 'sds stocksup', '6XPRN-HGKWG-4RBT2-4XD3P-BTDHX', 'GENSAN', ''),
(18, '2016-10-22', 'STOCKSUP', 'NM69V-37CF6-6K3PX-34VTH-8HV39', 'GENSAN', ''),
(19, '2016-06-24', 'SDS RETURN', '49MTB-GN9F2-B7H2P-X8FJG-FVV39', 'ZAMBOANGA', 'kay Ma''am Precious na eto ngayon'),
(20, '2016-06-24', 'FX RETURN', '4NQ3D-9DGRJ-3XQHT-4MJY6-YG9VX', 'ZAMBOANGA', 'kay Sir Mike CDO na eto ngayon'),
(21, '2016-06-24', 'SDS/FX CASHIER', 'TKRJP-NQQP2-DVJQY-4YD9V-RGDHX', 'ZAMBOANGA', ''),
(22, '2016-06-24', 'SDS/FX IT', 'VT8NC-H9JWQ-C2D48-FJYM4-HQWYK', 'ZAMBOANGA', ''),
(23, '2016-06-24', 'SDS/FX BA', 'RQYH6-3NPJY-QY77K-J3H94-FC2MK', 'ZAMBOANGA', ''),
(24, '2016-10-20', 'CASHIER', 'NTTJG-X9J6Y-786TK-66DB9-Y7V39', 'MARIKINA', ''),
(25, '2016-10-20', 'I.T', 'DYNTJ-6WG8J-Q4H8B-6G8R3-RJRD9', 'MARIKINA', ''),
(26, '2016-10-20', 'B.A', 'KNFQY-F2Q8K-KMR74-27TB8-PKCMK', 'MARIKINA', ''),
(27, '2016-10-27', 'Tin-tin Accounting', 'NBGGM-48QYM-WDJ2K-PXDHR-VMH39', 'H.O', ''),
(28, '2016-11-17', 'BDO', 'VH7XF-TNJCD-8P6MD-2MP87-PWGBK', 'ZAMBOANGA', ''),
(29, '2016-12-14', 'Ma''am Grace Accounting', 'CNG6X-PHWG9-P8WFM-2XKKK-4JRD9', 'H.O', ''),
(30, '2017-01-23', 'Ma''am Lhen Accounting', 'NPJ99-VFC44-WPGC3-P7RR8-J8GBK', 'H.O', 'Bacolod Server'),
(31, '2017-03-17', 'SDS Marlon 1', 'MNP9T-73BV4-KJGYB-D6YTT-PDKVX', 'SDS LOGISTICS', 'b.a sunx Marikina/IT-Encoding'),
(32, '2017-03-18', 'SDS Alan 3', 'NJV8Q-TDRW3-GWW9X-P33VT-MKMQ9', 'SDS LOGISTICS', ''),
(33, '2017-03-18', 'SDS Liza 4', 'WNC4B-Y2C4W-QMTD8-2VCQP-J44D9', 'SDS LOGISTICS', 'kay sunx cashier Marikina na eto'),
(34, '2017-03-18', 'SDS Carizal 2', 'NJ7KQ-8TQTT-GXM42-MYY2C-FX8YK', 'SDS LOGISTICS', 'sunex Cashier'),
(35, '2017-04-05', 'SDS CEBU B.A', 'MGN3F-XK883-T627Q-6XT2X-M98YK', 'SDS CEBU', ''),
(36, '2017-04-05', 'FX JOIE', 'QNKYQ-PDTFV-GBP4Q-9KHPM-JK8YK', 'H.O', 'Julie CNC'),
(37, '2017-08-30', 'SDS/FX RETURN', 'Q6RNW-HKFYG-Y7YQX-JBBDK-W8GBK', 'CALOOCAN', ''),
(38, '2017-08-30', 'SDS/FX CASHIER', 'YM8NW-J7DJM-WPCK8-T2RK2-YKMQ9', 'CALOOCAN', 'Davao Sunex Server'),
(39, '2017-09-19', 'LIPA -RETURN', '6XMVC-N6FFJ-2BYYT-MHX39-3RTBK', 'LIPA', ''),
(40, '2017-09-19', 'LIPA -IT', 'V2886-BNFBY-F7D8V-2C92G-6F4D9', 'DAVAO', 'Gina Davao');

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
,`mac_address` varchar(255)
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
(1, '2018-11-22', 1, 1, 22, 74, 170, 113, 159, '', '', NULL, '', 'FALSE', 11, '2020-07-24'),
(2, '2018-11-22', 1, 1, 16, 72, 170, 114, 165, '', '', '00-24-8C-BA-50-4D', '', 'FALSE', 35, '2020-06-22'),
(3, '2018-11-22', 1, 2, 11, 76, 170, 119, 160, '', '', NULL, '', 'FALSE', 0, ''),
(4, '2018-11-22', 1, 1, 17, 72, 170, 114, 159, '', '', '', '', 'FALSE', 48, '2020-09-29'),
(5, '2018-11-22', 1, 1, 21, 72, 170, 113, 160, '', 'ILOILO-B.A', 'E0-CB-4E-E8-02-16', '', 'FALSE', 7, '2019-09-20'),
(6, '2018-11-22', 1, 2, 17, 82, 170, 114, 160, '', '', NULL, '', 'FALSE', 0, ''),
(7, '2018-11-22', 1, 1, 17, 72, 170, 137, 160, '', '', 'D4-3D-7E-34-07-01', '', 'FALSE', 34, '2020-06-17'),
(8, '2018-11-22', 1, 1, 17, 65, 170, 114, 160, '', '', '00-26-18-B9-99-3A', '', 'FALSE', 35, '2020-06-22'),
(9, '2018-11-23', 1, 2, 17, 81, 170, 113, 160, '', '', NULL, '', 'FALSE', 0, ''),
(10, '2018-11-23', 1, 1, 16, 65, 170, 114, 160, '<p>&nbsp;with Windows XP Sticker</p>', '', '00-24-8C-BA-50-1A', '', 'FALSE', 2, '2020-07-08'),
(11, '2018-11-23', 1, 1, 13, 82, 170, 113, 160, '', '', 'E0-CB-4E-82-B3-A2', '', 'FALSE', 11, '2020-07-27'),
(12, '2018-11-23', 1, 1, 17, 72, 170, 114, 160, '', '', '00-24-8C-BA-4A-C5', '', 'FALSE', 37, '2020-07-09'),
(13, '2018-11-26', 1, 5, 11, 182, 182, 116, 160, '', '', NULL, '', 'FALSE', 0, ''),
(14, '2018-11-29', 1, 1, 25, 80, 173, 123, 160, '', '', '54-04-A6-2C-A1-18', '', 'FALSE', 17, '2020-09-01'),
(15, '2019-01-21', 1, 2, 25, 72, 173, 123, 160, '', '', NULL, '', 'FALSE', 0, ''),
(16, '2018-12-03', 1, 2, 35, 57, 173, 107, 159, '', 'Head', NULL, 'Thez Claudio', 'FALSE', 0, ''),
(17, '2018-01-24', 1, 1, 11, 66, 168, 114, 160, '', '', NULL, '', 'FALSE', 24, '2018-01-24'),
(18, '2019-02-28', 1, 1, 17, 65, 170, 114, 160, '', '', '', '', 'FALSE', 48, '2020-10-20'),
(19, '2019-04-02', 1, 1, 17, 72, 170, 114, 160, '', '', '00-26-18-C9-59-14', '', 'FALSE', 35, '2020-07-09'),
(20, '2019-03-29', 1, 2, 17, 65, 170, 114, 160, '', '', '00-26-18-C9-31-76', '', 'FALSE', 0, ''),
(21, '2019-03-28', 1, 2, 17, 65, 170, 114, 159, '<p>Raul Curesma IP Address: 192.168.103.151&nbsp;</p>', 'CHECKER', '00-26-18-C9-31-7D', 'RAUL', 'FALSE', 0, ''),
(22, '2019-03-29', 1, 2, 16, 81, 170, 112, 164, '', '', '00-22-15-BA-14-FA', '', 'FALSE', 0, ''),
(23, '2019-04-02', 1, 1, 11, 72, 169, 117, 160, '', '', '00-1E-8C-16-73-1B', '', 'FALSE', 7, '2019-11-25'),
(24, '2019-04-15', 1, 3, 31, 80, 173, 123, 159, '<p>yung system unit from Bacolod except Hard disk &nbsp;eto na gamit ng sales officer ng CEBU</p>', 'CASHIER/SALES OFFICER', '10-BF-48-42-76-54', 'ANY EXCEPT STOCKSUP', 'FALSE', 0, ''),
(25, '2019-04-05', 1, 1, 25, 65, 173, 123, 160, '<p>CDO Sir Mike&nbsp;</p>', 'RSO', 'F4-6D-04-2C-D1-EC', 'MIKE', 'FALSE', 17, '2019-05-16'),
(26, '2019-04-08', 1, 2, 12, 81, 170, 120, 159, '<p>nakawindows XP and sticker&nbsp;</p>', '', '00-1D-60-A7-36-8A', '', 'FALSE', 0, ''),
(27, '2019-04-05', 1, 3, 35, 57, 173, 107, 155, '<p>Mhean-B.A (SDS/FX Marikina)&nbsp;</p>', 'ACCOUNTING', '9C-5C-8E-C2-36-50', 'MHEAN', 'FALSE', 0, ''),
(28, '2019-04-05', 1, 1, 27, 60, 173, 123, 159, '<p>Marikina (SDS/FX POS)&nbsp;</p>', '', '10-BF-48-42-70-C6', '', 'FALSE', 17, '2019-05-16'),
(29, '', 1, 1, 11, 72, 170, 117, 164, '', '', NULL, '', 'FALSE', 18, '2000-01-01'),
(30, '2019-04-08', 1, 2, 17, 72, 170, 114, 160, '<p>&nbsp;With sticker pero windows XP Home Pro</p>', '', '00-26-18-C9-9A-3E', '', 'FALSE', 0, ''),
(31, '2019-04-15', 1, 1, 12, 65, 170, 120, 159, '<p>Monitor SN: 023BS3PY02190</p>', '', '00-1D-60-DA-1B-47', '', 'FALSE', 44, '2020-09-16'),
(32, '2019-09-16', 1, 2, 12, 77, 167, 114, 163, '', 'ACCOUNTING', NULL, 'CHRISTINE', 'FALSE', 0, ''),
(33, '2019-04-11', 1, 2, 17, 80, 173, 114, 160, '', '', '90-E6-BA-BA-71-2C', '', 'FALSE', 0, ''),
(34, '2019-04-15', 1, 2, 11, 81, 170, 118, 164, '', '', '00-1D-60-A1-8C-E5', '', 'FALSE', 0, ''),
(35, '2019-04-15', 1, 2, 11, 61, 170, 114, 182, 'working kaso sablay ang hard disk', '', NULL, '', 'FALSE', 0, ''),
(36, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'SALES OFFICER/RSO', NULL, 'MIKE/RUBY/MARLYN', 'FALSE', 0, ''),
(37, '2019-04-15', 1, 1, 17, 72, 170, 114, 160, '', 'DRIVER', 'Mac Address1: 00-26-18-B4-77-8C, Mac Address2: 34-08-04-98-2B-3E', 'LOLOY', 'FALSE', 26, '2019-09-19'),
(38, '2015-08-27', 1, 1, 17, 65, 170, 113, 156, '', '', NULL, '', 'FALSE', 8, '2015-08-27'),
(39, '2019-04-16', 1, 1, 25, 80, 173, 123, 159, '<p>IP Address: 192.168.103.184 &nbsp;Monitor SN: UK0A1410005008</p>', '', 'F4-6D-04-2C-D1-60', '', 'FALSE', 17, '2020-09-09'),
(40, '2019-04-15', 1, 3, 49, 84, 178, 134, 162, '', '', '6C-AE-8B-37-05-73', '', 'FALSE', 0, ''),
(41, '2019-09-16', 1, 3, 20, 72, 173, 113, 159, '', 'B.A', NULL, 'GELAI', 'FALSE', 0, ''),
(42, '2017-07-28', 1, 1, 46, 81, 167, 132, 165, '', '', NULL, '', 'FALSE', 5, '2017-07-28'),
(43, '2019-04-17', 1, 1, 14, 65, 170, 114, 160, '', '', '00-26-18-B4-77-85', '', 'FALSE', 34, '2020-07-28'),
(44, '2019-04-17', 1, 2, 16, 182, 170, 111, 182, 'working kaso walang hard disk drive\ntapos sira narin yung computer case', '', NULL, '', 'FALSE', 0, ''),
(45, '2019-04-17', 1, 2, 53, 182, 170, 147, 182, 'working fine kaso walang hard disk drive\nwith windows xp home edition Sticker', '', NULL, '', 'FALSE', 0, ''),
(46, '2018-09-12', 1, 1, 12, 65, 170, 120, 160, '', '', '00-1D-60-A7-36-6A', '', 'FALSE', 44, '2020-08-24'),
(47, '2018-01-09', 1, 1, 17, 72, 170, 113, 164, '', '', NULL, '', 'FALSE', 21, '2018-01-09'),
(48, '2019-04-22', 1, 3, 38, 80, 174, 126, 160, '<p>dating gamit ni Sir Alex &nbsp;gamit to ni Kryz ngayon</p>', 'PROGRAMMER ON CALL', 'F4-6D-04-2D-CB-7B', 'kryztoff', 'FALSE', 0, '<p>dating gamit ni Sir Alex &nbsp;gamit to ni Kryz ngayon</p>'),
(49, '2018-04-17', 1, 3, 35, 63, 182, 106, 159, '<p>branches Server1 ipadd: 192.168.103.20 &nbsp;username: branch_server1\\ server1 Password: Sundance@1999 nalipat sa S.O Online yung RAM No power supply, nalipat sa 30</p>', 'BRANCHES SERVER 1', 'Mac address: 30-5A-3A-81-49-DD', 'N/A', 'FALSE', 0, ''),
(50, '2019-04-30', 1, 1, 17, 65, 170, 114, 160, '', '', '00-26-18-C9-31-83', '', 'FALSE', 34, '2020-07-29'),
(51, '2018-03-08', 1, 1, 23, 82, 170, 110, 160, '', 'DRIVERS-HEAD', NULL, 'DONG', 'FALSE', 7, '2018-03-08'),
(52, '2018-02-27', 1, 1, 11, 83, 167, 118, 160, '', 'SUNEX STOCKMAN', NULL, 'TONY', 'FALSE', 45, '2018-02-27'),
(53, '2018-03-02', 1, 2, 29, 62, 173, 106, 162, 'Old Accounting Server\r\nIP Address: 192.168.103.167\r\n', 'OLD ACCOUNTING SERVER', '6C-62-6D-3A-4A-29', 'N/A', 'FALSE', 0, ''),
(54, '2018-03-05', 1, 2, 35, 57, 173, 106, 155, 'reserve for new company(L1)', '', NULL, '', 'FALSE', 0, ''),
(55, '2018-02-18', 1, 1, 17, 72, 170, 113, 160, '', '', NULL, '', 'FALSE', 15, '2018-02-18'),
(56, '2018-02-18', 1, 1, 17, 72, 170, 113, 160, '', 'IMUS B.A', NULL, 'FLOR', 'FALSE', 12, '2018-02-18'),
(57, '2018-02-18', 1, 1, 26, 80, 173, 123, 160, '', 'IMUS B.A', NULL, 'FLOR', 'FALSE', 12, '2018-02-18'),
(58, '2018-03-09', 1, 2, 31, 78, 173, 123, 156, '<p>Sir Alex(on call) password: airfox23 IP Address: 192.168.103.110&nbsp;</p>', 'PROGRAMMER ON CALL', '10-BF-48-42-74-99', 'ALEX', 'FALSE', 0, ''),
(59, '2018-03-09', 1, 2, 35, 80, 173, 141, 159, 'L3', '', NULL, '', 'FALSE', 0, ''),
(60, '2019-04-08', 1, 3, 31, 80, 173, 123, 159, '<p>RPRO SERVER DAVAO</p>', 'DAVAO B.A', 'Mac Address1: 00-1C-F0-BA-0E-77, Mac Address2: 10-BF-48-42-6C-A1', 'GINA', 'FALSE', 0, ''),
(61, '2019-03-25', 1, 3, 25, 71, 173, 123, 159, 'Merchandiser (Precious)\r\nIP Address: 192.168.103.171\r\n', 'MERCHANDISER', 'Mac Address: 54-04-A6-1F-4A-0D', 'PRECIOUS', 'FALSE', 0, ''),
(62, '2018-06-14', 1, 1, 25, 80, 173, 123, 155, '', 'MARKETING OFFICER', NULL, 'FEBIELYN SIGUA', 'FALSE', 10, '2018-06-14'),
(63, '2019-04-08', 1, 2, 35, 81, 173, 107, 160, '', '', 'D0-17-C2-87-E7-65', '', 'FALSE', 0, ''),
(64, '2018-03-10', 1, 1, 17, 65, 170, 114, 160, '<p>CNC B.A -Mhean IP Address: 192.168.103.120</p>', 'ACCOUNTING', 'Mac Address1: 00-26-18-F0-FE-22 Mac Address2: 00-50-BA-59-15-AC', 'MHEAN', 'FALSE', 7, '2020-07-21'),
(65, '', 1, 1, 25, 80, 173, 123, 159, '', 'CNC-HEAD', NULL, 'SONIA', 'FALSE', 41, '2000-01-01'),
(66, '2018-03-12', 1, 2, 30, 80, 173, 123, 159, 'L3', '', NULL, '', 'FALSE', 0, ''),
(67, '2018-03-13', 1, 2, 29, 72, 172, 45, 159, 'Ma''am Ana Marie Cruz', 'SALES OFFICER', 'E0-69-95-35-0C-F9', 'ANA MARIE', 'FALSE', 0, ''),
(68, '2018-03-13', 1, 3, 35, 57, 173, 106, 159, 'Sunex Stockman -Jomel (Marikina RPRO POS)\r\nIP Address: 192.168.103.203', 'RPRO MAR POS', 'D0-17-C2-D0-80-EE', 'JOMEL', 'FALSE', 0, ''),
(69, '2018-03-13', 1, 3, 36, 57, 173, 106, 159, '', 'TACLOBAN CASHIER', 'D0-17-C2-D0-87-D7', 'CAROL', 'FALSE', 0, ''),
(70, '2018-03-19', 1, 2, 35, 80, 173, 107, 159, 'Logistics Head -M'' Thez Claudio\r\nIP Address: 192.168.103.97', 'HEAD-LOGISTICS', '9C-5C-8E-C2-32-99', 'THEZ', 'FALSE', 0, ''),
(71, '2018-03-19', 1, 1, 17, 65, 170, 114, 160, '', '', '00-26-18-B4-57-34', '', 'TRUE', 2, '2020-07-07'),
(72, '2018-03-22', 1, 2, 36, 57, 173, 106, 159, 'L1', '', NULL, '', 'FALSE', 0, ''),
(73, '2019-03-27', 1, 1, 17, 82, 170, 114, 160, '', 'DRIVERS-HEAD', 'Mac Address1: 34-08-04-98-1C-9C, Mac Address2: 00-26-18-C9-47-DC', 'DONG', 'FALSE', 36, '2020-07-22'),
(74, '2018-03-24', 1, 3, 35, 57, 173, 143, 159, 'Sunex Stockman -Francisco Gonzales(receiving)\r\nIP Address: 192.168.103.181\r\nMsOffice2016: P799N-3JHDB-4JW7M-272CQ-XHJYK', 'SUNEX STOCKMAN', 'D8-CB-8A-38-A7-9A', 'FRANCIS', 'FALSE', 0, ''),
(75, '2019-05-02', 1, 3, 33, 63, 173, 105, 155, '', 'CEBU B.A', '74-D0-2B-CA-CE-D7', 'NEJIE', 'TRUE', 0, ''),
(76, '2018-03-27', 1, 3, 27, 79, 173, 123, 159, '', 'ACCOUNTING(NASA MAKATI)', NULL, 'LANIE', 'FALSE', 0, ''),
(77, '2018-03-27', 1, 2, 35, 57, 173, 143, 159, 'Logistics Head -M'' Thez Claudio', '', NULL, '', 'FALSE', 0, ''),
(78, '2018-04-07', 1, 1, 17, 72, 170, 135, 160, '', 'GRAPHICS ARTIST', NULL, 'PAUL JOCSON', 'FALSE', 33, '2018-04-07'),
(79, '2018-04-13', 1, 3, 31, 80, 173, 123, 159, 'Sunex Stockman -Idol (Marikina Return RPRO)\r\nIP Address: 192.168.103.204\r\nMsOffice2016: 2MHMN-PMDMQ-TGQBY-6B28H-WK8YK', 'SUNEX STOCKMAN', '10-BF-48-42-75-18', 'FRANCIS', 'FALSE', 0, ''),
(80, '2018-04-14', 1, 1, 17, 72, 170, 114, 160, '', 'SECURITY GUARD', NULL, 'TIRON', 'FALSE', 40, '2018-04-04'),
(81, '2018-04-16', 1, 3, 36, 57, 173, 106, 159, 'CDO RPRO LIVE SERVER\r\nMsOffice2016: KRR2N-HXDH8-4F748-PQYJ2-9QBQ9', 'CDO RPRO SERVER', 'D0-17-C2-D0-87-D6', 'N/A', 'FALSE', 0, ''),
(82, '2018-04-18', 1, 3, 35, 60, 173, 107, 155, 'branches Server2\r\nIPADDRESS: 192.168.103.21', 'BRANCHES SERVER2', 'D0-17-C2-87-E6-E2', 'N/A', 'FALSE', 0, ''),
(83, '2018-04-24', 1, 3, 35, 57, 173, 144, 159, 'Amman Aquino\r\nIP Address: 192.168.103.146', '', 'D8-CB-8A-31-B9-5B', 'AMMAN', 'FALSE', 0, ''),
(84, '2018-04-24', 1, 3, 35, 57, 173, 107, 159, 'MsOffice2016: 6N9DY-W967W-WHTM7-VTVD2-Q3WYK', 'TACLOBAN B.A', '9C-5C-8E-C2-30-C3', 'CAROL', 'FALSE', 0, ''),
(85, '2018-04-26', 1, 1, 17, 72, 170, 114, 160, '', 'SALES OFFICER', NULL, 'BRIAN', 'FALSE', 4, '2018-04-26'),
(86, '2019-05-02', 1, 3, 31, 80, 173, 123, 159, '<p>galing ng <strong>Cebu</strong>, kapupull-out lang this Nov 2020 sira daw</p><p>nakalagay eto now sa <strong>warehouse </strong>bago ka papasok nasa bandang right side sa ibabaw</p>', 'CEBU SALES OFFICER', '10-BF-48-B6-17-24', 'SALES OFFICER (Nejie)', 'FALSE', 0, '<p>galing ng <strong>Cebu</strong>, kapupull-out lang this Nov 2020 sira daw</p><p>nakalagay eto now sa <strong>warehouse </strong>bago ka papasok nasa bandang right side sa ibabaw</p>'),
(87, '2018-04-26', 1, 1, 17, 72, 170, 114, 160, '', '', NULL, '', 'FALSE', 20, '2018-04-26'),
(88, '2018-04-26', 1, 1, 11, 65, 169, 118, 160, '', '', NULL, '', 'FALSE', 20, '2018-04-26'),
(89, '2018-04-26', 1, 1, 11, 80, 170, 118, 160, '', '', NULL, '', 'FALSE', 20, '2018-04-26'),
(90, '2018-05-03', 1, 1, 17, 72, 170, 114, 160, '', 'I.T-STAFF', NULL, 'DAN MICHAEL', 'FALSE', 6, '2018-05-03'),
(91, '2018-05-03', 1, 1, 17, 72, 170, 114, 160, '', 'B.A', NULL, 'OLGA', 'FALSE', 32, '2018-05-03'),
(92, '2018-05-04', 1, 1, 17, 72, 170, 114, 160, '', 'CASHIER', NULL, 'FRED', 'FALSE', 13, '2018-05-04'),
(93, '2018-05-07', 1, 1, 17, 65, 170, 114, 160, '', 'GRAPHICS ARTIST', NULL, 'PAUL JOCSON', 'FALSE', 33, '2018-05-07'),
(94, '2018-05-08', 1, 2, 30, 80, 173, 123, 159, 'L2', '', NULL, '', 'FALSE', 0, ''),
(95, '2018-05-08', 1, 2, 35, 80, 173, 144, 159, 'L1', '', NULL, '', 'FALSE', 0, ''),
(96, '2018-05-17', 1, 2, 35, 80, 173, 143, 159, 'Marikina Live client (RPRO)', '', NULL, '', 'FALSE', 0, ''),
(97, '2018-05-18', 1, 3, 35, 80, 173, 143, 159, 'ipapadala sa Cebu', '', '44-8A-5B-CA-30-36', '', 'FALSE', 0, ''),
(98, '2018-05-18', 1, 3, 35, 80, 173, 143, 159, 'PETER YU (Company owner)', 'EMPLOYER', NULL, 'PETER', 'FALSE', 0, ''),
(99, '2018-05-19', 1, 2, 35, 80, 173, 107, 159, 'gamit to ngayon sa sunex sales', '', NULL, 'Raul', 'FALSE', 0, ''),
(100, '2018-06-18', 1, 1, 35, 80, 173, 143, 160, '', 'EMPLOYER', NULL, 'PETER', 'FALSE', 34, '2018-06-18'),
(101, '2018-06-19', 1, 3, 35, 57, 173, 107, 155, '', 'DAVAO SUNEX SERVER', 'D0-17-C2-87-E6-D5', 'n/a', 'FALSE', 0, ''),
(102, '2018-06-29', 1, 3, 35, 57, 173, 107, 159, 'CEBU RPRO LIVE SERVER', 'CEBU RPRO SERVER', NULL, 'ANY', 'FALSE', 0, ''),
(103, '2019-05-02', 3, 4, 35, 57, 173, 143, 155, '<p>galing cebu here na siya sa warehouse bago papasok dun bandang right side sa taas dun eto nakalagay</p><p>meron eto dating <strong>250 GB</strong> and <strong>1 TB</strong> nung pinadala pero nung bumalik <strong>1 TB</strong> nalang ang hard disk</p>', 'CEBU SDS/FXSERVER', 'D8-CB-8A-39-7A-0F', 'ANY', 'FALSE', 0, '<p>galing cebu here na siya sa warehouse bago papasok dun bandang right side sa taas dun eto nakalagay</p><p>meron eto dating <strong>250 GB</strong> and <strong>1 TB</strong> nung pinadala pero nung bumalik <strong>1 TB</strong> nalang ang hard disk</p>'),
(104, '2018-07-02', 1, 2, 30, 80, 173, 123, 159, 'reserve for new company(L2)', '', NULL, '', 'FALSE', 0, ''),
(105, '2019-05-02', 1, 3, 35, 80, 173, 107, 159, '', 'CEBU SUNEX SERVER', '30-5A-3A-08-5A-0B', 'ANY', 'FALSE', 0, ''),
(106, '2018-01-18', 1, 1, 11, 72, 170, 104, 160, '', 'LOGISTICS', NULL, 'WENNIE', 'FALSE', 46, '2018-01-18'),
(107, '2018-08-15', 1, 2, 17, 65, 170, 114, 160, 'dating gamit ni Melai', 'B.A', '00-26-18-F0-FB-85', 'MELANIE', 'FALSE', 0, ''),
(108, '', 1, 1, 22, 72, 170, 113, 160, '', 'HEAD-LOGISTICS', NULL, 'THEZ', 'FALSE', 43, '2000-01-01'),
(109, '2018-01-26', 1, 1, 11, 67, 170, 114, 160, '', 'SDS-SUPERVISOR', NULL, 'LENLY', 'FALSE', 23, '2018-01-26'),
(110, '2018-02-01', 1, 1, 11, 72, 170, 104, 160, '', 'DRIVER', NULL, 'LOLOY', 'FALSE', 26, '2018-02-01'),
(111, '2018-07-24', 1, 3, 42, 63, 178, 145, 155, 'IP Address: 192.168.103.15\r\nusername: administrator\r\npassword: P@ssw0rd1', 'INTERNET SERVER', 'D8-CB-8A-7C-69-74', 'N/A', 'FALSE', 0, ''),
(112, '2018-02-01', 1, 1, 17, 72, 170, 113, 159, '', 'MARIKINA B.A', NULL, 'MHEAN', 'FALSE', 29, '2018-02-01'),
(113, '2018-02-19', 1, 1, 11, 67, 170, 118, 160, '', 'DRIVER', NULL, 'LOLOY', 'FALSE', 38, '2018-02-19'),
(114, '2019-05-02', 1, 4, 31, 80, 173, 123, 159, '<p>galing Cebu pero nandito na siya ngayon sa warehouse, bago papasok nasa bandang upper right</p>', 'CEBU RPRO CLIENT', '10-BF-48-42-77-36', 'ANY', 'FALSE', 0, '<p>galing Cebu pero nandito na siya ngayon sa warehouse, bago papasok nasa bandang upper right</p>'),
(115, '2018-07-04', 1, 3, 31, 80, 173, 123, 159, 'IP Address: 192.168.103.168\r\n', 'BARCODE', '10-BF-48-41-75-E9', 'PRECIOUS', 'FALSE', 0, ''),
(116, '2018-07-04', 1, 2, 27, 80, 173, 123, 159, 'Accounting-Head-M'' Grace Corpuz\r\nIP Address: 192.168.103.121', 'ACCOUNTING-HEAD', 'C8-60-00-9A-C2-9A', 'GRACE', 'FALSE', 0, ''),
(117, '2018-07-05', 1, 2, 35, 80, 173, 144, 159, 'test machine CLIENT ng CDO RPRO(L1)', '', NULL, '', 'FALSE', 0, ''),
(118, '2018-07-05', 1, 2, 35, 182, 173, 106, 160, '', '', NULL, '', 'FALSE', 0, ''),
(119, '2018-07-06', 1, 2, 35, 80, 173, 144, 162, 'SERVER TESTING MACHINE(RPRO)', '', NULL, '', 'FALSE', 0, ''),
(120, '2018-07-06', 1, 3, 35, 57, 173, 106, 159, 'Marikina RPRO LIVE SERVER\r\nIP Address: 192.168.103.200', '', 'D0-17-C2-D0-73-A8', '', 'FALSE', 0, ''),
(121, '2018-07-06', 1, 2, 35, 57, 173, 131, 159, 'RPRO test machine 2', '', NULL, '', 'FALSE', 0, ''),
(122, '2018-07-06', 1, 3, 35, 57, 173, 107, 155, 'MsOffice 2016: NPJ99-VFC44-WPGC3-P7RR8-J8GBK', '', 'D0-17-C2-86-DB-2A', '', 'FALSE', 0, ''),
(123, '2018-02-23', 1, 2, 31, 80, 173, 45, 159, 'O.S not yet activated', '', '4C-72-B9-25-3D-E3', '', 'FALSE', 0, ''),
(124, '2019-12-02', 1, 1, 11, 65, 170, 117, 160, '', '', '00-1D-60-C9-9A-C6', '', 'FALSE', 36, '2020-10-14'),
(125, '2018-03-24', 1, 1, 28, 80, 173, 138, 159, '', '', NULL, '', 'FALSE', 3, '2018-03-24'),
(126, '2018-07-05', 1, 1, 13, 72, 170, 113, 160, '', 'DAVAO B.A', NULL, 'GINA', 'FALSE', 14, '2018-07-05'),
(127, '2018-07-11', 1, 3, 35, 80, 173, 123, 159, '', 'DAVAO CASHIER', 'D8-50-E6-DB-EE-0F', 'DELMAR', 'FALSE', 0, ''),
(128, '2018-07-16', 1, 1, 17, 72, 170, 113, 160, '', '', '48-5B-39-03-C1-63', '', 'FALSE', 49, '2020-09-29'),
(129, '2019-05-29', 1, 1, 11, 65, 170, 118, 160, '', '', '00-1D-60-66-F6-3A', '', 'FALSE', 44, '2020-10-06'),
(130, '2018-07-09', 1, 1, 16, 72, 170, 115, 160, '', 'ACCOUNTING', '00-1A-92-CB-03-99', 'LANIE', 'FALSE', 2, '2020-07-08'),
(131, '2018-07-09', 1, 3, 7, 80, 170, 130, 159, '', 'SALES OFFICER', '1C-4B-D6-87-D7-A8', 'ANGIE', 'FALSE', 0, ''),
(132, '2019-05-29', 1, 1, 17, 82, 170, 114, 160, '', '', 'old Mac Address: 00-1D-60-80-91-DF Mac Address: 90-E6-BA-B8-74-9B', '', 'FALSE', 2, '2020-07-09'),
(133, '2018-07-11', 1, 3, 25, 74, 173, 125, 159, '', 'DAVAO RETURN', 'F4-6D-04-2C-D2-74', 'DELMAR', 'FALSE', 0, ''),
(134, '2018-07-11', 1, 1, 28, 80, 170, 44, 159, '', 'EMPLOYER', NULL, 'PETER', 'FALSE', 34, '2018-07-11'),
(135, '2019-05-31', 1, 1, 17, 72, 169, 114, 160, '<p>bibilhin ni Sir Dong</p>', '', '00-24-8C-D5-55-13', '', 'FALSE', 7, '2019-11-25'),
(136, '2019-05-24', 1, 2, 31, 57, 173, 123, 159, 'Mac  Address: 10-BF-48-B6-19-4E', '', NULL, '', 'FALSE', 0, ''),
(137, '2019-05-31', 1, 2, 54, 72, 167, 133, 159, '', '', '50-E5-49-A6-24-68', '', 'FALSE', 0, ''),
(138, '2018-07-11', 1, 1, 25, 74, 174, 123, 155, '', 'PROGRAMMER', NULL, 'ERWEN', 'FALSE', 9, '2018-07-11'),
(139, '2018-07-16', 1, 2, 31, 80, 170, 123, 159, 'L1', '', NULL, '', 'FALSE', 0, ''),
(140, '2019-12-04', 1, 2, 28, 81, 173, 122, 160, '', '', 'BC-AE-C5-C2-15-D2', '', 'FALSE', 0, ''),
(141, '2018-07-16', 1, 2, 28, 65, 173, 138, 160, 'Medyo may tama yung LAN pero naayos naman if irestart lang pero d parin nawawala yung issue sa LAN', '', NULL, '', 'FALSE', 0, ''),
(142, '2019-06-04', 1, 2, 34, 80, 173, 108, 160, '', '', 'D8-50-E6-E5-5D-01', '', 'FALSE', 0, ''),
(143, '2018-07-16', 1, 3, 35, 57, 173, 107, 159, 'anydeskID: rproserverdav-1@ad\r\nMsOffice: 9XGBN-9WDP2-YCFBX-463XR-3DBQ9', 'DAVAO RPRO SERVER', '30-5A-3A-0E-BE-F5', 'ANY', 'FALSE', 0, ''),
(144, '2018-08-13', 1, 1, 27, 80, 173, 123, 160, '', '', '00-1B-11-F2-72-A2', '', 'FALSE', 42, '2020-08-11'),
(145, '2019-06-06', 1, 2, 11, 65, 167, 119, 157, '', '', '00-1B-FC-19-00-DA', '', 'FALSE', 0, ''),
(146, '2018-08-24', 1, 1, 17, 72, 170, 111, 160, '', '', '00-24-8C-4E-FA-AF', 'KEVIN', 'FALSE', 2, '2020-08-05'),
(147, '2019-07-01', 1, 3, 35, 57, 173, 107, 159, '', 'DAVAO SALES OFFICER', '30-5A-3A-08-59-C1', 'ROGER', 'FALSE', 0, ''),
(148, '2019-05-27', 1, 2, 17, 80, 170, 114, 160, '', '', '00-24-8C-BA-4C-D1', '', 'FALSE', 0, ''),
(149, '2018-10-19', 1, 1, 27, 80, 173, 123, 160, '', 'ACCOUNTING-HEAD', NULL, 'GRACE', 'FALSE', 16, '2018-10-19'),
(150, '2018-11-26', 1, 2, 35, 74, 173, 107, 160, 'L1', '', NULL, '', 'FALSE', 0, ''),
(151, '2018-11-26', 1, 2, 25, 80, 173, 123, 160, '', '', NULL, '', 'FALSE', 0, ''),
(152, '2018-11-26', 1, 1, 28, 80, 170, 122, 160, '', 'CDO SALES OFFICER', NULL, 'MARLY', 'FALSE', 28, '2018-11-26'),
(153, '2018-11-27', 1, 2, 35, 80, 173, 142, 159, 'L1', '', NULL, '', 'FALSE', 0, ''),
(154, '2018-12-03', 1, 1, 17, 65, 170, 113, 159, '', '', 'E0-CB-4E-E8-01-46', '', 'FALSE', 44, '2020-07-27'),
(155, '2018-12-05', 1, 2, 35, 80, 173, 143, 160, 'ipapadala sa CEBU', '', '44-8A-5B-CC-A9-89', '', 'FALSE', 0, ''),
(156, '2018-12-04', 1, 2, 52, 80, 169, 118, 160, '', '', NULL, '', 'FALSE', 0, ''),
(157, '2018-12-12', 1, 2, 35, 80, 173, 107, 160, 'L4', '', NULL, '', 'FALSE', 0, ''),
(158, '2019-01-15', 1, 2, 35, 57, 173, 107, 159, '', 'SUNEX SALES', NULL, 'KRYZTOFF', 'FALSE', 0, ''),
(159, '2019-12-04', 1, 2, 27, 72, 170, 123, 159, '', '', '10-BF-48-B6-1A-DC', '', 'FALSE', 0, ''),
(160, '2019-01-16', 1, 3, 35, 57, 173, 107, 159, '', 'TACLOBAN RPRO SEVER', '02-00-4C-4F-4F-50', 'ANY', 'FALSE', 0, ''),
(161, '2019-01-17', 1, 1, 17, 80, 172, 113, 160, 'dating auditor yung bumili ng unit na eto', 'X AUDITOR', NULL, 'YANG', 'FALSE', 47, '2019-01-17'),
(162, '2019-01-21', 1, 2, 27, 80, 173, 123, 155, '', '', '10-BF-48-42-79-33', '', 'FALSE', 0, ''),
(163, '2018-08-23', 1, 1, 27, 80, 173, 125, 160, '', '', NULL, 'KEVIN', 'FALSE', 22, '2018-08-23'),
(164, '2018-03-09', 1, 1, 27, 80, 173, 123, 155, '', 'HEAD-AUDITOR', NULL, 'ININA', 'FALSE', 30, '2018-03-09'),
(165, '2019-01-21', 1, 1, 27, 80, 173, 123, 160, '', '', 'C8-60-00-9A-C2-CC', '', 'FALSE', 25, '2020-07-24'),
(166, '2019-01-21', 1, 2, 27, 72, 173, 123, 160, '', '', NULL, '', 'FALSE', 0, ''),
(167, '2019-07-23', 1, 2, 34, 80, 173, 108, 159, '', '', 'D8-50-E6-E5-5C-F8', '', 'FALSE', 0, ''),
(168, '2019-02-04', 1, 2, 15, 65, 171, 111, 160, '', '', '00-24-8C-60-B1-03', '', 'FALSE', 0, ''),
(169, '2019-02-12', 1, 2, 31, 80, 173, 123, 160, '', '', NULL, '', 'FALSE', 0, ''),
(170, '2019-02-12', 1, 3, 35, 57, 173, 107, 155, 'refer code: 267\r\nbinalik dito kasi sira daw', 'Sunex Server', 'D0-17-C2-D0-9A-CF', '', 'TRUE', 0, ''),
(171, '2019-02-12', 1, 2, 35, 57, 173, 107, 155, '', '', NULL, '', 'FALSE', 0, ''),
(172, '2019-02-14', 1, 2, 17, 81, 170, 114, 160, '', '', NULL, '', 'FALSE', 0, ''),
(173, '2019-02-18', 1, 1, 27, 72, 173, 123, 160, '', '', '10-BF-48-42-76-55', '', 'FALSE', 42, '2020-08-10'),
(174, '2019-10-10', 1, 1, 10, 74, 172, 101, 154, '', 'Graphics Artist', NULL, 'GUNTHER', 'FALSE', 27, '2020-06-30'),
(175, '2018-12-05', 1, 2, 11, 81, 167, 118, 159, '', '', NULL, '', 'FALSE', 0, ''),
(176, '2019-02-13', 1, 2, 35, 58, 173, 146, 159, 'IP Add: 192.168.103.170\nMac Add: D8-CB-8A-7C-69-50', 'SO Online', NULL, 'Anonymous', 'FALSE', 0, ''),
(177, '2019-03-11', 1, 2, 100, 81, 173, 103, 160, '', '', NULL, '', 'FALSE', 0, ''),
(178, '2019-03-12', 1, 1, 25, 80, 173, 123, 160, '<p>kay Sir Joao dapat eto pero ibibigay nalang muna kay Ma''am Grace</p>', '', 'F4-6D-04-40-54-1B', '', 'FALSE', 16, '2020-11-15'),
(179, '2019-03-13', 1, 2, 31, 80, 173, 123, 159, '', '', NULL, '', 'FALSE', 0, ''),
(180, '2019-03-19', 1, 2, 35, 81, 173, 106, 160, '', '', '30-5A-3A-81-57-2F', '', 'FALSE', 0, ''),
(181, '2019-03-19', 1, 1, 35, 80, 173, 107, 159, '<p>CDO Mike</p>', 'RSO', '30-5A-3A-0E-B1-49', 'MIKE', 'FALSE', 17, '2020-09-08'),
(182, '2019-04-02', 1, 3, 35, 60, 173, 143, 159, 'M'' Lanie\r\nIP Address: 192.168.103.118', 'ACCOUNTING', '44-8A-5B-CC-B2-0D', 'LANIE', 'FALSE', 0, ''),
(186, '2018-11-23', 1, 1, 48, 81, 167, 147, 164, 'DATING CODE# 5', '', NULL, '', 'FALSE', 5, '2018-11-23'),
(187, '2019-03-25', 1, 1, 8, 72, 170, 114, 163, 'DATING CODE# 11', '', NULL, '', 'FALSE', 18, '2000-01-01'),
(188, '2019-03-25', 1, 1, 11, 75, 170, 118, 163, 'dating code #13', '', NULL, '', 'FALSE', 21, '2000-01-01'),
(189, '2019-03-25', 1, 2, 35, 57, 173, 107, 159, 'Zamboanga FX-Return\r\nO.S Not Yet Activated', 'ZAMBOANGA FX-RETURN', '30-5A-3A-0E-B3-71', '', 'FALSE', 0, ''),
(190, '2019-03-29', 1, 2, 99, 65, 170, 98, 164, 'bigay daw ng supplier', '', '00-30-67-18-51-BF', '', 'FALSE', 0, ''),
(191, '2019-09-13', 1, 3, 35, 70, 177, 146, 162, 'Ipaddress: 192.168.103.48', 'SERVER', 'D8-CB-8A-A1-62-11', 'FX SERVER', 'FALSE', 0, ''),
(192, '2019-09-13', 1, 2, 35, 69, 177, 146, 155, 'Ipaddress: 192.168.103.49', 'SERVER', 'D8-CB-8A-7A-04-57', 'SDS SERVER', 'FALSE', 0, ''),
(193, '2019-09-13', 1, 1, 17, 72, 170, 114, 159, '<p>Ana Marie Cruz</p>', 'GRAPHIC ARTIST', '90-E6-BA-BA-72-80', 'ANA', 'FALSE', 2, '2020-07-07'),
(197, '2018-03-13', 1, 3, 37, 80, 173, 127, 155, 'Accounting (Christine Joyce Sadiwa)\r\nIP Address: 192.168.103.103.116', 'ACCOUNTING', 'BC-AE-C5-74-CA-F2', 'CHRISTINE', 'FALSE', 0, ''),
(198, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'SUNEX SERVER', NULL, 'ANY', 'FALSE', 0, ''),
(199, '2019-09-12', 1, 2, 35, 57, 173, 107, 160, '', '', NULL, '', 'FALSE', 0, ''),
(200, '2019-09-27', 1, 2, 35, 57, 173, 107, 159, '', 'RSO CDO', '30-5A-3A-0E-B2-A0', 'Mike', 'FALSE', 0, ''),
(201, '2019-03-25', 1, 1, 17, 72, 170, 114, 164, '<p>eto ang gamit ni Kenneth taz ginamit na ni Kryztoff Mac add: 00-26-18-B9-99-70</p>', '', NULL, '', 'FALSE', 2, '2020-08-05'),
(204, '2018-12-06', 1, 2, 55, 65, 170, 110, 159, 'HDD sn: WDC WD1600AAJS-00L7A0', '', 'BC-AE-C5-39-37-41', '', 'FALSE', 0, ''),
(205, '2018-12-10', 1, 1, 25, 80, 173, 123, 160, 'sold na dapat eto pero binalik kasi yung unit for repair', '', NULL, '', 'FALSE', 17, '2019-05-16'),
(206, '2018-12-06', 1, 2, 11, 81, 170, 118, 160, '', '', NULL, '', 'FALSE', 0, ''),
(207, '2018-12-07', 1, 2, 17, 65, 170, 114, 160, '', '', NULL, '', 'FALSE', 0, ''),
(208, '2018-12-11', 1, 1, 17, 65, 170, 114, 160, '', '', '00-25-86-E6-B0-21', '', 'FALSE', 2, '2020-07-08'),
(209, '2018-12-05', 1, 1, 17, 74, 170, 114, 160, '', '', '00-24-01-EB-72-8B', '', 'FALSE', 34, '2020-06-18'),
(210, '2018-12-26', 1, 1, 17, 72, 170, 120, 160, '', '', '', '', 'FALSE', 48, '2020-10-05'),
(211, '2019-01-08', 1, 2, 55, 80, 170, 110, 159, '', '', NULL, '', 'FALSE', 0, ''),
(212, '2018-12-06', 1, 2, 47, 81, 167, 147, 164, '', '', NULL, '', 'FALSE', 0, ''),
(213, '2018-12-04', 1, 1, 24, 80, 173, 123, 160, '', '', 'BC-AE-C5-39-37-41', '', 'FALSE', 17, '2020-09-08'),
(214, '2018-12-04', 1, 1, 17, 74, 170, 113, 160, '', '', '20-CF-30-AB-92-EC', '', 'FALSE', 7, '2020-07-20'),
(215, '2018-12-07', 1, 1, 27, 72, 173, 124, 160, '', '', '10-BF-48-3F-69-58', '', 'FALSE', 17, '2019-05-16'),
(216, '2019-03-26', 1, 1, 9, 72, 170, 114, 160, '', '', '00-24-8C-D5-55-03', '', 'FALSE', 2, '2020-07-08'),
(217, '2019-03-26', 1, 3, 35, 57, 173, 107, 159, '', 'Tacloban Cashier', 'D0-17-C2-87-E6-D7', 'Arnel/Cath', 'FALSE', 0, ''),
(218, '2019-03-26', 1, 1, 27, 80, 173, 125, 159, '<p>OPS-Inina Balean IP Address: 192.168.103.179 &nbsp;Monitor SN: 748GH3CY01199</p>', 'AUDIT/OPS', '50-46-5D-4C-98-FA', 'nina', 'FALSE', 41, '2020-10-29'),
(219, '2019-03-26', 1, 3, 35, 80, 173, 142, 159, 'dating gamit ni Ma''am Myra Pe?amora\npero ngayon gamit narin eto ni Ma''am Aileen Gardose', 'H.R', NULL, 'AILEEN', 'FALSE', 0, ''),
(220, '2019-09-16', 1, 3, 35, 57, 173, 107, 159, '', 'CASHIER', NULL, 'ERIC', 'FALSE', 0, ''),
(221, '2019-03-26', 1, 3, 36, 57, 173, 106, 155, 'Allan Frades\r\nIP Address: 192.168.103.197', 'DATA ANALYST', 'D0-17-C2-D0-87-C8', 'ALLAN', 'FALSE', 0, ''),
(222, '2019-03-26', 1, 3, 40, 62, 174, 140, 159, 'Head I.T-M'' Vima\r\nIP Address: 192.168.103.99', 'HEAD-IT', '8C-89-A5-E6-7E-9B', 'VIMA', 'FALSE', 0, ''),
(223, '2019-03-26', 1, 3, 38, 68, 174, 127, 159, 'IT-Staff-Romeo Bulalacao Jr.\r\nIP Address: 192.168.103.169', 'IT-STAFF', 'BC-AE-C5-74-CB-6F', 'ROMEO', 'FALSE', 0, ''),
(224, '2019-03-26', 1, 3, 38, 57, 174, 127, 155, 'Programmer-Erwen Paredes', 'PROGRAMMER', 'Mac Address1: BC-AE-C5-74-CA-2C Mac Address2:  2A-15-93-CC-C7-25', 'ERWEN', 'FALSE', 0, ''),
(225, '2019-03-26', 1, 3, 39, 73, 175, 149, 155, 'Fileserver\r\nIP Address: 192.168.103.30/38', 'FILESERVER', 'Mac Address1:  6C-62-6D-41-F5-99 Mac Address2: C4-12-F5-30-FB-DD', 'N/A', 'FALSE', 0, ''),
(227, '2019-03-26', 1, 3, 27, 80, 173, 125, 159, 'CNC Head-M'' Sonia Parero\r\nIP Address: 192.168.103.131', 'CNC HEAD', '10-BF-48-42-6C-F3', 'SONIA', 'FALSE', 0, ''),
(228, '2019-03-26', 1, 1, 17, 65, 170, 114, 159, '<p>SDS Stockman Supervisor-Lenly Nardo IP Address: 192.168.103.184 Monitor SN: 118BS3PY00223</p>', '', '00-26-18-B4-77-87', '', 'FALSE', 35, '2020-08-28'),
(229, '2019-03-26', 1, 2, 25, 72, 173, 123, 159, '<p>Sunex Stockman-Fernan IP Address: 192.168.103.169 dating gamit ni Ronnie</p>', 'SUNEX STOCKMAN', '54-04-A6-2C-A1-20', 'Ronnie (Supervisor Sunex)', 'FALSE', 0, '<p>Sunex Stockman-Fernan IP Address: 192.168.103.169 dating gamit ni Ronnie</p>'),
(230, '2019-04-03', 1, 2, 31, 57, 173, 123, 160, 'Davao', '', '10-BF-48-B6-1C-6B', '', 'FALSE', 0, ''),
(231, '2019-03-26', 1, 3, 35, 80, 173, 107, 159, 'Ronnie/Fernan (Gitna)\r\nIP Address: 192.168.103.194', 'SUNEX RETURN', '9C-5C-8E-C2-36-52', 'RONNIE/FERNAN', 'FALSE', 0, ''),
(232, '2019-03-26', 1, 3, 35, 80, 176, 146, 159, 'Jomel, Francis\r\nIP Address: 192.168.103.195', 'SUNEX LANG', 'D8-CB-8A-A1-61-F1', 'JOMEL/FRANCIS', 'FALSE', 0, ''),
(233, '2019-03-26', 1, 1, 27, 80, 173, 123, 159, '<p>Marketing Server(Ana) IP Address: 192.168.103.180  LCD Monitor SN: 2128A3WY01759</p>', 'MARKETING SERVER', 'C8-60-00-9A-C1-DD', 'N/A', 'TRUE', 39, '2020-09-01'),
(234, '2019-03-26', 1, 2, 29, 80, 173, 139, 159, 'CLIENT TEST MACHINE(RPRO)', '', NULL, '', 'FALSE', 0, ''),
(235, '2019-03-27', 1, 3, 26, 57, 173, 123, 159, 'H.R-M'' Aileen Gardose\r\nIP Address: 192.168.103.98', 'H.R', '10-BF-48-42-72-7F', 'AILEEN', 'FALSE', 0, ''),
(236, '2019-03-27', 1, 3, 43, 57, 178, 121, 159, 'Ma''am Ana Marie Cruz\r\nIP Address: 192.168.103.176', '', 'BC-AE-C5-23-2B-AF', 'ANA', 'FALSE', 0, ''),
(237, '2019-03-27', 1, 1, 38, 57, 173, 148, 155, '<p>last na gumamit nito si Alfred Cabral</p>', '', '6C-62-6D-E8-6E-7C', 'ALFRED', 'FALSE', 34, '2020-07-06'),
(238, '2019-03-27', 1, 3, 41, 64, 178, 146, 162, '', 'DATA SERVER', NULL, 'N/A', 'FALSE', 0, ''),
(239, '2019-03-27', 1, 3, 31, 80, 173, 123, 153, 'Marikina Sunex Server\r\nIP Address: 192.168.103.191', 'MARIKINA SUNEX SERVER', '10-BF-48-42-72-81', 'N/A', 'FALSE', 0, ''),
(242, '2019-03-27', 1, 2, 30, 77, 173, 123, 159, 'MARIKINA FX/SDS SERVER\r\nUsername: mar_server\r\nPassword: Sundance@1999\r\nIP Address: 192.168.103.105', 'MARIKINA FX/SDS SERVER', '14-DA-E9-1B-63-C1', 'N/A', 'FALSE', 0, ''),
(243, '2019-03-27', 1, 3, 31, 80, 170, 123, 159, 'Sunex B.A-Mylene\r\nIP Address: 192.168.103.192', 'MARIKINA B.A', 'C8-60-00-5E-9F-D8', 'MYLENE', 'FALSE', 0, ''),
(247, '2019-03-28', 1, 2, 31, 80, 173, 123, 159, '', '', '10-BF-48-42-79-2B', '', 'FALSE', 0, ''),
(248, '2019-03-28', 1, 3, 27, 71, 173, 123, 159, 'Ronnie Camacho\r\nIP Address: 192.168.103.126', '', '10-BF-48-42-70-9B', 'RONNIE', 'FALSE', 0, ''),
(249, '2019-03-28', 1, 3, 35, 57, 173, 107, 159, 'CNC B.A-Julie (Bungad)\r\nIP Address: 192.168.103.133', '', '30-5A-3A-0E-B2-1E', 'JULIE', 'FALSE', 0, ''),
(250, '2019-03-28', 1, 3, 17, 65, 170, 114, 158, 'CNC B.A-Julie/Mylene\r\nIP Address: 192.168.103.135', '', '00-26-18-F0-F5-6E', '', 'TRUE', 0, ''),
(251, '2019-03-28', 1, 3, 49, 57, 178, 84, 162, 'WEB SERVER\r\nIP Address: 192.168.103.170\r\nremote desktop:\r\nWebserver 2.0\r\nPa$$w0rd', '', '6C-AE-8B-36-F8-A5', 'N/A', 'FALSE', 0, ''),
(252, '2019-03-28', 1, 3, 27, 57, 173, 123, 159, 'Ana Marie Cruz (Sales)\r\nIP Address: 192.168.103.178', 'CHECKER', 'C8-60-00-9A-BD-23', 'RAUL', 'FALSE', 0, ''),
(255, '2019-03-29', 1, 2, 11, 81, 167, 118, 164, '', '', NULL, '', 'FALSE', 0, ''),
(264, '2019-04-01', 1, 2, 38, 80, 178, 127, 159, 'Dan Michael Enriquez', 'IT-STAFF', NULL, 'DAN MICHAEL', 'FALSE', 0, ''),
(266, '2019-04-08', 1, 2, 35, 57, 173, 107, 159, '', '', '30-5A-3A-0E-B2-92', '', 'FALSE', 0, ''),
(267, '2019-04-12', 1, 3, 35, 57, 173, 107, 155, 'FROM Code 170', 'DRIVERS-HEAD', 'D0-17-C2-D0-9A-CF', 'DONG', 'FALSE', 0, ''),
(268, '2019-04-12', 1, 1, 17, 65, 170, 114, 160, '<p>FROM CODE: 250 CNC B.A-Julie/Mylene IP Address: 192.168.103.135\r\nWindows XP Home Edition ang Sticker</p>', '', '00-26-18-F0-F5-6E', '', 'FALSE', 2, '2020-11-16'),
(269, '2019-12-05', 1, 1, 17, 81, 170, 109, 160, '', '', '90-E6-BA-B8-74-9B', '', 'FALSE', 2, '2020-07-06'),
(270, '2020-01-09', 1, 2, 31, 80, 173, 123, 159, '<p>Bibilhin eto ni Mhean</p>', 'FOR PRESENTATION', '10-BF-48-41-6E-BA', 'ANONYMOUS', 'FALSE', 0, '<p>Bibilhin eto ni Mhean</p>'),
(271, '2020-01-09', 1, 2, 51, 81, 179, 136, 165, '', '', '00-19-DB-AA-E1-A6', '', 'FALSE', 0, ''),
(272, '2020-01-09', 1, 1, 17, 72, 170, 114, 160, '', 'Cubao', 'E0-CB-4E-EC-E5-16', 'Lanie', 'FALSE', 11, '2020-11-06'),
(273, '2020-01-15', 1, 1, 17, 65, 170, 114, 160, '', '', '00-26-18-C9-31-B4', '', 'FALSE', 34, '2020-06-17'),
(274, '2020-02-06', 1, 2, 12, 72, 170, 120, 160, '', '', '00-1D-60-8F-2A-F2', '', 'FALSE', 0, ''),
(275, '2020-02-11', 1, 1, 25, 80, 173, 123, 159, '', '', '54-04-A6-2C-A2-1E', '', 'FALSE', 17, '2020-09-09'),
(276, '2020-03-13', 1, 2, 17, 81, 170, 114, 160, '', '', '00-26-18-B9-99-6B', '', 'FALSE', 0, ''),
(277, '2020-06-15', 1, 1, 17, 72, 170, 113, 159, '', '', NULL, '', 'FALSE', 19, '2018-01-16'),
(278, '2020-06-30', 1, 1, 19, 74, 173, 102, 152, '<p>Graphics: AMD Rv630</p>', '', NULL, '', 'FALSE', 1, '2020-08-17');

-- --------------------------------------------------------

--
-- Stand-in structure for view `temp_sales`
--
CREATE TABLE IF NOT EXISTS `temp_sales` (
`transaction_id` int(11)
,`invoice_number` varchar(100)
,`cashier` varchar(100)
,`dealer_no` varchar(255)
,`date` date
,`type` varchar(100)
,`amount` varchar(100)
,`profit` varchar(100)
,`due_date` varchar(100)
,`name` varchar(100)
,`balance` varchar(100)
,`unread` int(11)
,`location` varchar(255)
,`dlocation` varchar(255)
,`time` varchar(255)
,`remarks` varchar(255)
,`rso` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `temp_sales_order`
--
CREATE TABLE IF NOT EXISTS `temp_sales_order` (
`transaction_id` int(11)
,`invoice` varchar(100)
,`product` varchar(100)
,`qty` varchar(100)
,`amount` varchar(100)
,`profit` varchar(100)
,`product_code` varchar(150)
,`gen_name` varchar(200)
,`name` varchar(200)
,`price` varchar(100)
,`discount` varchar(100)
,`date` date
,`location` varchar(255)
,`status` int(255)
,`stat` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ttemp_sales_order`
--
CREATE TABLE IF NOT EXISTS `ttemp_sales_order` (
`invoice` varchar(100)
,`date` date
,`rsoname` varchar(255)
,`barcode` varchar(100)
,`items_description` varchar(200)
,`price` varchar(100)
,`qty` varchar(100)
,`amount` varchar(100)
);
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username_user`, `user_pass`, `user_email`, `user_image`, `user_role`, `login_counter`) VALUES
(1, 'romeo', '1010', 'sample@sample.com', '2x2.png', 'admin', 0),
(2, 'demo', 'demo', 'example@example.com', '2x2.jpg', 'subscriber', 0),
(3, 'nina', '1010', 'example@example.com', 'Motherpic.jpg', 'admin', 0),
(4, 'userone', 'userone', 'example@example.com', 'bg4.jpg', 'subscriber', 0),
(5, 'vima', '160271', 'example@example.com', 'vima.png', 'subscriber', 0);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `systemunitlist` AS select `a`.`id` AS `id`,`a`.`sold_date` AS `sold_date`,`a`.`user` AS `user`,`b`.`status` AS `STATUS`,`c`.`item_description` AS `cpu`,`d`.`item_description` AS `hdd`,`e`.`item_description` AS `ram`,`f`.`item_description` AS `mobo`,`g`.`item_description` AS `os`,if(isnull(`h`.`buyer_name`),'none',`h`.`buyer_name`) AS `buyername`,`i`.`id` AS `buyer_id`,`a`.`mac_address` AS `mac_address`,`a`.`duplicate_data` AS `duplicate` from ((((((((`system_unit` `a` left join `system_status` `b` on((`b`.`id` = `a`.`status_id`))) left join `item_masterfile` `c` on((`c`.`id` = `a`.`cpu_id`))) left join `item_masterfile` `d` on((`d`.`id` = `a`.`hdd_id`))) left join `item_masterfile` `e` on((`e`.`id` = `a`.`ram_id`))) left join `item_masterfile` `f` on((`f`.`id` = `a`.`mobo_id`))) left join `item_masterfile` `g` on((`g`.`id` = `a`.`os_id`))) left join `buyer` `h` on((`h`.`id` = `a`.`buyer_id`))) left join `buyer` `i` on((`i`.`id` = `a`.`buyer_id`)));

-- --------------------------------------------------------

--
-- Structure for view `temp_sales`
--
DROP TABLE IF EXISTS `temp_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp_sales` AS select `a`.`transaction_id` AS `transaction_id`,`a`.`invoice_number` AS `invoice_number`,`a`.`cashier` AS `cashier`,`a`.`dealer_no` AS `dealer_no`,`a`.`date` AS `date`,`a`.`type` AS `type`,`a`.`amount` AS `amount`,`a`.`profit` AS `profit`,`a`.`due_date` AS `due_date`,`a`.`name` AS `name`,`a`.`balance` AS `balance`,`a`.`unread` AS `unread`,`a`.`location` AS `location`,`a`.`dlocation` AS `dlocation`,`a`.`time` AS `time`,`a`.`remarks` AS `remarks`,`b`.`dealer_name` AS `rso` from (`sunex`.`sales` `a` join `sunex`.`dealer` `b`) where ((`a`.`dealer_no` = `b`.`dealer_no`) and (`a`.`date` = curdate()));

-- --------------------------------------------------------

--
-- Structure for view `temp_sales_order`
--
DROP TABLE IF EXISTS `temp_sales_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `temp_sales_order` AS select `sunex`.`sales_order`.`transaction_id` AS `transaction_id`,`sunex`.`sales_order`.`invoice` AS `invoice`,`sunex`.`sales_order`.`product` AS `product`,`sunex`.`sales_order`.`qty` AS `qty`,`sunex`.`sales_order`.`amount` AS `amount`,`sunex`.`sales_order`.`profit` AS `profit`,`sunex`.`sales_order`.`product_code` AS `product_code`,`sunex`.`sales_order`.`gen_name` AS `gen_name`,`sunex`.`sales_order`.`name` AS `name`,`sunex`.`sales_order`.`price` AS `price`,`sunex`.`sales_order`.`discount` AS `discount`,`sunex`.`sales_order`.`date` AS `date`,`sunex`.`sales_order`.`location` AS `location`,`sunex`.`sales_order`.`status` AS `status`,`sunex`.`sales_order`.`stat` AS `stat` from `sunex`.`sales_order` where (`sunex`.`sales_order`.`date` = curdate());

-- --------------------------------------------------------

--
-- Structure for view `ttemp_sales_order`
--
DROP TABLE IF EXISTS `ttemp_sales_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ttemp_sales_order` AS select `a`.`invoice` AS `invoice`,`a`.`date` AS `date`,`b`.`rso` AS `rsoname`,`a`.`product` AS `barcode`,`a`.`name` AS `items_description`,`a`.`price` AS `price`,`a`.`qty` AS `qty`,`a`.`amount` AS `amount` from (`temp_sales_order` `a` join `temp_sales` `b`) where (`a`.`invoice` = `b`.`invoice_number`);

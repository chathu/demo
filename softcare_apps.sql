-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2015 at 02:24 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `softcare_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `assest_register_business_database`
--

CREATE TABLE IF NOT EXISTS `assest_register_business_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `AssetID` varchar(11) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `Custodian` varchar(255) DEFAULT NULL,
  `Users` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `SysAdmin` varchar(255) DEFAULT NULL,
  `LifeCycle` varchar(255) DEFAULT NULL,
  `BusinessRequirements` varchar(255) DEFAULT NULL,
  `TechnicalContact` varchar(255) DEFAULT NULL,
  `Vendor` varchar(255) DEFAULT NULL,
  `ExpectedLife` varchar(255) DEFAULT NULL,
  `ExpiredLife` varchar(255) DEFAULT NULL,
  `MaintenanceStatus` varchar(255) DEFAULT NULL,
  `Purpose` varchar(255) DEFAULT NULL,
  `Dependency` varchar(255) DEFAULT NULL,
  `BackupSchedule` varchar(255) DEFAULT NULL,
  `BackupLocation` varchar(255) DEFAULT NULL,
  `ConfidentialityRequirements` varchar(255) DEFAULT NULL,
  `IntegrityRequirements` varchar(255) DEFAULT NULL,
  `AvailabilityRequirements` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `assest_register_business_database`
--

INSERT INTO `assest_register_business_database` (`id`, `org_id`, `AssetID`, `Owner`, `Custodian`, `Users`, `Location`, `SysAdmin`, `LifeCycle`, `BusinessRequirements`, `TechnicalContact`, `Vendor`, `ExpectedLife`, `ExpiredLife`, `MaintenanceStatus`, `Purpose`, `Dependency`, `BackupSchedule`, `BackupLocation`, `ConfidentialityRequirements`, `IntegrityRequirements`, `AvailabilityRequirements`) VALUES
(3, 1, 'dsafdgd', 'dfdfsa', 'fd', 'df', 'hjg', 'ghj', 'gjhj', 'hjj', 'hjh', 'jj', 'jh', 'h', 'jh', 'h', 'hj', 'h', 'scfasfasfdasf', '2', '2', '2'),
(5, 2, 'fdgfs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 2, 'fdgds', 'fgsdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, 'argg', 'hsdfh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 2, 'xv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 4, 'cvxzv', 'fvgDAF', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 1, '1 session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 2, '2nd session', 'efdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 4, '3rd session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 0, 'xz', 'vcxv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 0, 'sfeddf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 5, 'dsa', 'dsa', 'ds', 'ddsa', 'das', 'ds', 'dsa', 'dsa', '', '', '', 'dsa', 'dsa', 'dsa', 'dsa', 'dsa', 'dsa', 'dsa', 'ds', 'dsa');

-- --------------------------------------------------------

--
-- Table structure for table `assest_register_digital_assest`
--

CREATE TABLE IF NOT EXISTS `assest_register_digital_assest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `AssestTD` varchar(20) DEFAULT NULL,
  `Owner` varchar(100) DEFAULT NULL,
  `Custodian` varchar(255) DEFAULT NULL,
  `Users` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `StorageDetails` varchar(255) DEFAULT NULL,
  `Classification` varchar(255) DEFAULT NULL,
  `LifeCycle` varchar(255) DEFAULT NULL,
  `DisposalMethod` varchar(255) DEFAULT NULL,
  `BackupSchedule` varchar(255) DEFAULT NULL,
  `ConfidentialityRequirements` int(11) DEFAULT NULL,
  `IntegrityRequirements` int(11) DEFAULT NULL,
  `AvailabilityRequirements` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `assest_register_digital_assest`
--

INSERT INTO `assest_register_digital_assest` (`id`, `org_id`, `AssestTD`, `Owner`, `Custodian`, `Users`, `Location`, `StorageDetails`, `Classification`, `LifeCycle`, `DisposalMethod`, `BackupSchedule`, `ConfidentialityRequirements`, `IntegrityRequirements`, `AvailabilityRequirements`) VALUES
(4, 1, 'dsa', 'sda', 'sadf', 'd', 'ASD', 'AS', 'SAD', 'SA', 'AS', 'SA', 1, 1, 1),
(6, 2, '', 'DG', 'DFG', 'DFSGG', 'DF', 'GF', 'FG', 'DFG', 'FG', 'FG', 7, 7, 7),
(21, 4, 'wqe', 'eqwe', 'er', 'ewr', 'we', 'wr', 'ewr', 'ewr', 'wer', 'wreq', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `assest_register_source_code`
--

CREATE TABLE IF NOT EXISTS `assest_register_source_code` (
  `UID` int(11) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elfinder_file`
--

CREATE TABLE IF NOT EXISTS `elfinder_file` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(7) unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` longblob NOT NULL,
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL,
  `mime` varchar(256) NOT NULL DEFAULT 'unknown',
  `read` enum('1','0') NOT NULL DEFAULT '1',
  `write` enum('1','0') NOT NULL DEFAULT '1',
  `locked` enum('1','0') NOT NULL DEFAULT '0',
  `hidden` enum('1','0') NOT NULL DEFAULT '0',
  `width` int(5) NOT NULL,
  `height` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_name` (`parent_id`,`name`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `elfinder_file`
--

INSERT INTO `elfinder_file` (`id`, `parent_id`, `name`, `content`, `size`, `mtime`, `mime`, `read`, `write`, `locked`, `hidden`, `width`, `height`) VALUES
(1, 0, 'DATABASE', '', 0, 0, 'directory', '1', '1', '0', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gap_analysis`
--

CREATE TABLE IF NOT EXISTS `gap_analysis` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ISO_clause` varchar(10) DEFAULT NULL,
  `ISMS` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=713 ;

--
-- Dumping data for table `gap_analysis`
--

INSERT INTO `gap_analysis` (`id`, `ISO_clause`, `ISMS`, `status`, `comments`, `org_id`) VALUES
(1, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'cbzxc', 1),
(7, '4.2.1', 'Define the scope and boundaries of the ISMS', '2', 'dsd', 1),
(11, '4.2.1 (b)', 'Define an ISMS policy', '3', 'safsf', 3),
(12, '4.2.1 (c)', 'Define the risk assessment approach', '3', 'sad', 3),
(13, '4.2.1 (d)', 'Identify the risks', '1', 'xnzfghsfzh', 3),
(14, '4.2.1 (e)', 'Analyse and evaluate the risks', '2', '', 3),
(15, '4.2.1 (f)', 'Identify and evaluate options for the treatment of risks', '3', '', 4),
(25, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'gjhghg', 12),
(26, '4.2.1', 'Define the scope and boundaries of the ISMS', '3', 'dsads', 12),
(27, '4.2.1 (b)', 'Define an ISMS policy', '3', 'dsads', 12),
(28, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 13),
(29, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 13),
(30, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 13),
(31, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 14),
(32, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 14),
(33, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 14),
(37, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 16),
(38, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 16),
(39, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 16),
(40, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 19),
(41, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 19),
(42, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 19),
(43, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsada', 18),
(44, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 18),
(45, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 18),
(49, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', 'dasd', 20),
(50, '4.2.1', 'Define the scope and boundaries of the ISMS', '3', 'dsa', 20),
(51, '4.2.1 (b)', 'Define an ISMS policy', '1', 'dsadsa', 20),
(52, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 21),
(53, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 21),
(54, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 21),
(55, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsa', 22),
(56, '4.2.1', 'Define the scope and boundaries of the ISMS', '3', 'dsadasd', 22),
(57, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 22),
(58, '4.2', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(59, '4.231', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(60, '4.2.21 (b)', 'Define an ISMS policy', NULL, NULL, 22),
(61, '4.12', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(62, '4.2.21', 'Define the scope and boundaries of the ISMS', '3', 'ghagd', 22),
(63, '4.14', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(64, '4.25.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(65, '4.32.1 (b)', 'Define an ISMS policy', NULL, NULL, 22),
(66, '4.123', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(67, '4.2.541', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(68, '4.23.1 (b)', 'Define an ISMS policy', '3', 'dsads', 22),
(69, '4.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(70, '4.243.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(71, '4.24.1 (b)', 'Define an ISMS policy', NULL, NULL, 22),
(72, '4.2.11', 'Define the scope and boundaries of the ISMS', '2', 'comment', 22),
(73, '423.2.1 (b', 'Define an ISMS policy', NULL, NULL, 22),
(74, '4.541', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 22),
(75, '432.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(76, '4.542.1 (b', 'Define an ISMS policy', NULL, NULL, 22),
(77, '4.431', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(78, '4.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(79, '4.243.1 (b', 'Define an ISMS policy', NULL, NULL, 22),
(80, '4.4452.1', 'Define the scope and boundaries of the ISMS', '2', NULL, 22),
(81, '4.432.1 (b', 'Define an ISMS policy', NULL, NULL, 22),
(82, '4.4341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(83, '4.43341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(84, '4.43434.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 22),
(85, '4.1434', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dasd', 22),
(86, '4.2878.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(87, '4.87872.1 ', 'Define an ISMS policy', '1', NULL, 22),
(88, '4.188', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(89, '4.287787.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(90, '4.2565658.', 'Define an ISMS policy', '1', NULL, 22),
(91, '4.15233', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(92, '4232.2565.', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(93, '454.6562.1', 'Define an ISMS policy', '1', NULL, 22),
(94, '4544.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsadasd', 22),
(95, '4.2213.1', 'Define the scope and boundaries of the ISMS', '2', NULL, 22),
(96, '434.243.43', 'Define an ISMS policy', '1', NULL, 22),
(97, '4434.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(98, '443.432.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(99, '443.432.43', 'Define an ISMS policy', '3', NULL, 22),
(100, '4565.6761', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(101, '476.276.76', 'Define the scope and boundaries of the ISMS', '3', 'dsadasd', 22),
(102, '40.287.01 ', 'Define an ISMS policy', '3', NULL, 22),
(103, '40.0187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsads', 22),
(104, '4.209.1', 'Define the scope and boundaries of the ISMS', '3', 'dsadsa', 22),
(105, '487.287.1 ', 'Define an ISMS policy', '3', NULL, 22),
(106, '487.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsadasd', 22),
(107, '47.287.871', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(108, '487.287.18', 'Define an ISMS policy', '1', NULL, 22),
(109, '487.871', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(110, '487.2.871', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(111, '4.872.8781', 'Define an ISMS policy', '1', NULL, 22),
(112, '487.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(113, '487.2.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(114, '4.8788771', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dsads', 22),
(115, '4.872.1', 'Define the scope and boundaries of the ISMS', '2', NULL, 22),
(116, '4.287.1 (b', 'Define an ISMS policy', '2', NULL, 22),
(117, '4.72.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(118, '4.782.1 (b', 'Define an ISMS policy', '1', NULL, 22),
(119, '4.7817', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(120, '4.278.1', 'Define the scope and boundaries of the ISMS', '2', NULL, 22),
(121, '4.875651', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '2', NULL, 22),
(122, '4.86772.1', 'Define the scope and boundaries of the ISMS', '2', NULL, 22),
(123, '4.865672.1', 'Define an ISMS policy', '2', NULL, 22),
(124, '4.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(125, '4.276768.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(126, '4.27676.1 ', 'Define an ISMS policy', '3', NULL, 22),
(127, '4.13232', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(128, '4.2433.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(129, '4.26.1 (b)', 'Define an ISMS policy', '3', NULL, 22),
(130, '4.134', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(131, '4.234.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(132, '4.243243.1', 'Define an ISMS policy', '3', NULL, 22),
(133, '4.1432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(134, '4.2432.1 (', 'Define an ISMS policy', '3', NULL, 22),
(135, '4.343.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(136, '4.434343.1', 'Define an ISMS policy', '3', NULL, 22),
(137, '4.24343.1 ', 'Define an ISMS policy', '3', NULL, 22),
(138, '4.14343', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(139, '4.24343.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(140, '4.2342.1', 'Define the scope and boundaries of the ISMS', '3', NULL, 22),
(141, '4.24324.1 ', 'Define an ISMS policy', '1', NULL, 22),
(142, '4.1432432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', NULL, 22),
(143, '443.24343.', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(144, '4432.2432.', 'Define an ISMS policy', '3', NULL, 22),
(145, '44324.2.1', 'Define the scope and boundaries of the ISMS', '1', NULL, 22),
(146, '434.23432.', 'Define an ISMS policy', '3', 'dsads', 22),
(147, '444324.432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '1', NULL, 22),
(148, '443243.2.1', 'Define the scope and boundaries of the ISMS', '3', 'dasd', 22),
(149, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', '3', 'dassdsa', 23),
(150, '4.2.1', 'Define the scope and boundaries of the ISMS', '2', 'dsd', 23),
(151, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(152, '4.2', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(153, '4.231', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(154, '4.2.21 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(155, '4.12', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(156, '4.2.21', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(157, '4.14', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(158, '4.25.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(159, '4.32.1 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(160, '4.123', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(161, '4.2.541', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(162, '4.23.1 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(163, '4.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(164, '4.243.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(165, '4.24.1 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(166, '4.2.11', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(167, '423.2.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(168, '4.541', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(169, '432.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(170, '4.542.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(171, '4.431', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(172, '4.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(173, '4.243.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(174, '4.4452.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(175, '4.432.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(176, '4.4341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(177, '4.43341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(178, '4.43434.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(179, '4.1434', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(180, '4.2878.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(181, '4.87872.1 ', 'Define an ISMS policy', NULL, NULL, 23),
(182, '4.188', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(183, '4.287787.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(184, '4.2565658.', 'Define an ISMS policy', NULL, NULL, 23),
(185, '4.15233', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(186, '4232.2565.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(187, '454.6562.1', 'Define an ISMS policy', NULL, NULL, 23),
(188, '4544.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(189, '4.2213.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(190, '434.243.43', 'Define an ISMS policy', NULL, NULL, 23),
(191, '4434.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(192, '443.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(193, '443.432.43', 'Define an ISMS policy', NULL, NULL, 23),
(194, '4565.6761', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(195, '476.276.76', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(196, '40.287.01 ', 'Define an ISMS policy', NULL, NULL, 23),
(197, '40.0187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(198, '4.209.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(199, '487.287.1 ', 'Define an ISMS policy', NULL, NULL, 23),
(200, '487.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(201, '47.287.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(202, '487.287.18', 'Define an ISMS policy', NULL, NULL, 23),
(203, '487.871', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(204, '487.2.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(205, '4.872.8781', 'Define an ISMS policy', NULL, NULL, 23),
(206, '487.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(207, '487.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(208, '4.8788771', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(209, '4.872.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(210, '4.287.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(211, '4.72.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(212, '4.782.1 (b', 'Define an ISMS policy', NULL, NULL, 23),
(213, '4.7817', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(214, '4.278.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(215, '4.875651', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(216, '4.86772.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(217, '4.865672.1', 'Define an ISMS policy', NULL, NULL, 23),
(218, '4.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(219, '4.276768.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(220, '4.27676.1 ', 'Define an ISMS policy', NULL, NULL, 23),
(221, '4.13232', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(222, '4.2433.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(223, '4.26.1 (b)', 'Define an ISMS policy', NULL, NULL, 23),
(224, '4.134', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(225, '4.234.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(226, '4.243243.1', 'Define an ISMS policy', NULL, NULL, 23),
(227, '4.1432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(228, '4.2432.1 (', 'Define an ISMS policy', NULL, NULL, 23),
(229, '4.343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(230, '4.434343.1', 'Define an ISMS policy', NULL, NULL, 23),
(231, '4.24343.1 ', 'Define an ISMS policy', NULL, NULL, 23),
(232, '4.14343', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(233, '4.24343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(234, '4.2342.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(235, '4.24324.1 ', 'Define an ISMS policy', NULL, NULL, 23),
(236, '4.1432432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(237, '443.24343.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(238, '4432.2432.', 'Define an ISMS policy', NULL, NULL, 23),
(239, '44324.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(240, '434.23432.', 'Define an ISMS policy', NULL, NULL, 23),
(241, '444324.432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 23),
(242, '443243.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 23),
(243, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(244, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(245, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(246, '4.2', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(247, '4.231', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(248, '4.2.21 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(249, '4.12', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(250, '4.2.21', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(251, '4.14', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(252, '4.25.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(253, '4.32.1 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(254, '4.123', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(255, '4.2.541', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(256, '4.23.1 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(257, '4.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(258, '4.243.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(259, '4.24.1 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(260, '4.2.11', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(261, '423.2.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(262, '4.541', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(263, '432.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(264, '4.542.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(265, '4.431', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(266, '4.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(267, '4.243.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(268, '4.4452.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(269, '4.432.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(270, '4.4341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(271, '4.43341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(272, '4.43434.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(273, '4.1434', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(274, '4.2878.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(275, '4.87872.1 ', 'Define an ISMS policy', NULL, NULL, 24),
(276, '4.188', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(277, '4.287787.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(278, '4.2565658.', 'Define an ISMS policy', NULL, NULL, 24),
(279, '4.15233', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(280, '4232.2565.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(281, '454.6562.1', 'Define an ISMS policy', NULL, NULL, 24),
(282, '4544.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(283, '4.2213.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(284, '434.243.43', 'Define an ISMS policy', NULL, NULL, 24),
(285, '4434.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(286, '443.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(287, '443.432.43', 'Define an ISMS policy', NULL, NULL, 24),
(288, '4565.6761', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(289, '476.276.76', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(290, '40.287.01 ', 'Define an ISMS policy', NULL, NULL, 24),
(291, '40.0187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(292, '4.209.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(293, '487.287.1 ', 'Define an ISMS policy', NULL, NULL, 24),
(294, '487.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(295, '47.287.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(296, '487.287.18', 'Define an ISMS policy', NULL, NULL, 24),
(297, '487.871', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(298, '487.2.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(299, '4.872.8781', 'Define an ISMS policy', NULL, NULL, 24),
(300, '487.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(301, '487.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(302, '4.8788771', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(303, '4.872.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(304, '4.287.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(305, '4.72.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(306, '4.782.1 (b', 'Define an ISMS policy', NULL, NULL, 24),
(307, '4.7817', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(308, '4.278.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(309, '4.875651', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(310, '4.86772.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(311, '4.865672.1', 'Define an ISMS policy', NULL, NULL, 24),
(312, '4.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(313, '4.276768.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(314, '4.27676.1 ', 'Define an ISMS policy', NULL, NULL, 24),
(315, '4.13232', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(316, '4.2433.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(317, '4.26.1 (b)', 'Define an ISMS policy', NULL, NULL, 24),
(318, '4.134', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(319, '4.234.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(320, '4.243243.1', 'Define an ISMS policy', NULL, NULL, 24),
(321, '4.1432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(322, '4.2432.1 (', 'Define an ISMS policy', NULL, NULL, 24),
(323, '4.343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(324, '4.434343.1', 'Define an ISMS policy', NULL, NULL, 24),
(325, '4.24343.1 ', 'Define an ISMS policy', NULL, NULL, 24),
(326, '4.14343', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(327, '4.24343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(328, '4.2342.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(329, '4.24324.1 ', 'Define an ISMS policy', NULL, NULL, 24),
(330, '4.1432432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(331, '443.24343.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(332, '4432.2432.', 'Define an ISMS policy', NULL, NULL, 24),
(333, '44324.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(334, '434.23432.', 'Define an ISMS policy', NULL, NULL, 24),
(335, '444324.432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 24),
(336, '443243.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 24),
(337, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(338, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(339, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(340, '4.2', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(341, '4.231', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(342, '4.2.21 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(343, '4.12', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(344, '4.2.21', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(345, '4.14', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(346, '4.25.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(347, '4.32.1 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(348, '4.123', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(349, '4.2.541', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(350, '4.23.1 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(351, '4.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(352, '4.243.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(353, '4.24.1 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(354, '4.2.11', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(355, '423.2.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(356, '4.541', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(357, '432.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(358, '4.542.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(359, '4.431', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(360, '4.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(361, '4.243.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(362, '4.4452.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(363, '4.432.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(364, '4.4341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(365, '4.43341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(366, '4.43434.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(367, '4.1434', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(368, '4.2878.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(369, '4.87872.1 ', 'Define an ISMS policy', NULL, NULL, 25),
(370, '4.188', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(371, '4.287787.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(372, '4.2565658.', 'Define an ISMS policy', NULL, NULL, 25),
(373, '4.15233', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(374, '4232.2565.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(375, '454.6562.1', 'Define an ISMS policy', NULL, NULL, 25),
(376, '4544.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(377, '4.2213.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(378, '434.243.43', 'Define an ISMS policy', NULL, NULL, 25),
(379, '4434.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(380, '443.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(381, '443.432.43', 'Define an ISMS policy', NULL, NULL, 25),
(382, '4565.6761', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(383, '476.276.76', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(384, '40.287.01 ', 'Define an ISMS policy', NULL, NULL, 25),
(385, '40.0187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(386, '4.209.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(387, '487.287.1 ', 'Define an ISMS policy', NULL, NULL, 25),
(388, '487.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(389, '47.287.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(390, '487.287.18', 'Define an ISMS policy', NULL, NULL, 25),
(391, '487.871', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(392, '487.2.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(393, '4.872.8781', 'Define an ISMS policy', NULL, NULL, 25),
(394, '487.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(395, '487.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(396, '4.8788771', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(397, '4.872.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(398, '4.287.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(399, '4.72.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(400, '4.782.1 (b', 'Define an ISMS policy', NULL, NULL, 25),
(401, '4.7817', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(402, '4.278.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(403, '4.875651', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(404, '4.86772.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(405, '4.865672.1', 'Define an ISMS policy', NULL, NULL, 25),
(406, '4.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(407, '4.276768.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(408, '4.27676.1 ', 'Define an ISMS policy', NULL, NULL, 25),
(409, '4.13232', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(410, '4.2433.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(411, '4.26.1 (b)', 'Define an ISMS policy', NULL, NULL, 25),
(412, '4.134', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(413, '4.234.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(414, '4.243243.1', 'Define an ISMS policy', NULL, NULL, 25),
(415, '4.1432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(416, '4.2432.1 (', 'Define an ISMS policy', NULL, NULL, 25),
(417, '4.343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(418, '4.434343.1', 'Define an ISMS policy', NULL, NULL, 25),
(419, '4.24343.1 ', 'Define an ISMS policy', NULL, NULL, 25),
(420, '4.14343', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(421, '4.24343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(422, '4.2342.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(423, '4.24324.1 ', 'Define an ISMS policy', NULL, NULL, 25),
(424, '4.1432432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(425, '443.24343.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(426, '4432.2432.', 'Define an ISMS policy', NULL, NULL, 25),
(427, '44324.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(428, '434.23432.', 'Define an ISMS policy', NULL, NULL, 25),
(429, '444324.432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 25),
(430, '443243.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 25),
(431, '4.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(432, '4.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(433, '4.2.1 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(434, '4.2', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(435, '4.231', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(436, '4.2.21 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(437, '4.12', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(438, '4.2.21', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(439, '4.14', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(440, '4.25.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(441, '4.32.1 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(442, '4.123', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(443, '4.2.541', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(444, '4.23.1 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(445, '4.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(446, '4.243.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(447, '4.24.1 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(448, '4.2.11', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(449, '423.2.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(450, '4.541', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(451, '432.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(452, '4.542.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(453, '4.431', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(454, '4.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(455, '4.243.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(456, '4.4452.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(457, '4.432.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(458, '4.4341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(459, '4.43341', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(460, '4.43434.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(461, '4.1434', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(462, '4.2878.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(463, '4.87872.1 ', 'Define an ISMS policy', NULL, NULL, 26),
(464, '4.188', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(465, '4.287787.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(466, '4.2565658.', 'Define an ISMS policy', NULL, NULL, 26),
(467, '4.15233', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(468, '4232.2565.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(469, '454.6562.1', 'Define an ISMS policy', NULL, NULL, 26),
(470, '4544.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(471, '4.2213.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(472, '434.243.43', 'Define an ISMS policy', NULL, NULL, 26),
(473, '4434.143', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(474, '443.432.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(475, '443.432.43', 'Define an ISMS policy', NULL, NULL, 26),
(476, '4565.6761', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(477, '476.276.76', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(478, '40.287.01 ', 'Define an ISMS policy', NULL, NULL, 26),
(479, '40.0187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(480, '4.209.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(481, '487.287.1 ', 'Define an ISMS policy', NULL, NULL, 26),
(482, '487.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(483, '47.287.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(484, '487.287.18', 'Define an ISMS policy', NULL, NULL, 26),
(485, '487.871', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(486, '487.2.871', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(487, '4.872.8781', 'Define an ISMS policy', NULL, NULL, 26),
(488, '487.1', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(489, '487.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(490, '4.8788771', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(491, '4.872.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(492, '4.287.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(493, '4.72.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(494, '4.782.1 (b', 'Define an ISMS policy', NULL, NULL, 26),
(495, '4.7817', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(496, '4.278.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(497, '4.875651', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(498, '4.86772.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(499, '4.865672.1', 'Define an ISMS policy', NULL, NULL, 26),
(500, '4.187', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(501, '4.276768.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(502, '4.27676.1 ', 'Define an ISMS policy', NULL, NULL, 26),
(503, '4.13232', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(504, '4.2433.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(505, '4.26.1 (b)', 'Define an ISMS policy', NULL, NULL, 26),
(506, '4.134', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(507, '4.234.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(508, '4.243243.1', 'Define an ISMS policy', NULL, NULL, 26),
(509, '4.1432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(510, '4.2432.1 (', 'Define an ISMS policy', NULL, NULL, 26),
(511, '4.343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(512, '4.434343.1', 'Define an ISMS policy', NULL, NULL, 26),
(513, '4.24343.1 ', 'Define an ISMS policy', NULL, NULL, 26),
(514, '4.14343', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(515, '4.24343.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(516, '4.2342.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(517, '4.24324.1 ', 'Define an ISMS policy', NULL, NULL, 26),
(518, '4.1432432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(519, '443.24343.', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(520, '4432.2432.', 'Define an ISMS policy', NULL, NULL, 26),
(521, '44324.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26),
(522, '434.23432.', 'Define an ISMS policy', NULL, NULL, 26),
(523, '444324.432', 'The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS', NULL, NULL, 26),
(524, '443243.2.1', 'Define the scope and boundaries of the ISMS', NULL, NULL, 26);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `org_name`, `address`, `telephone`, `email`, `user_id`) VALUES
(1, 'afaf', 'saf', 'sfa', 'saf', 1),
(3, 'test ', 'VCGDD', '', '', 1),
(4, 'Test', 'this is the address', '232123', 'dsadas@gmail.com', 1),
(5, 'Sithuvili Concepts', 'Nittambuwa', '0772141009', 'sithuviliprivatelimited@gmail.com', 1),
(6, 'NEW', 'dsa', '2232', 'sithuviliprivatelimited@gmail.com', 1),
(12, 'NEW ONE', 'COLOMBO', '9232', 'dsadas@gmail.com', 1),
(13, 'ytuy', 'asdsdsd', '6565', 'fdsf', 1),
(14, 'Another', 'das', '2323', 'allance@gmal.com', 1),
(16, 'iiii', 'dsa', '43243', 'fgfg', 1),
(18, 'dasqw', 'dasdsa', '23213', 'fdsfds', 1),
(19, 'llllll', 'tft', '4343', 'frth', 1),
(20, 'CINEMON GRAND', 'COLOMBO', '01122382', 'cinemon@gmail.com', 1),
(21, 'meka', 'meka', '92282', 'meka@gmail.com', 1),
(22, 'ALUTH EKAK', 'dsa', '312312', 'dsad', 1),
(23, 'My Organization', 'das', '23213', 'dsad', 34),
(24, 'Pawara Concepts', 'Colombo', '23213', 'pawara@gmail.com', 1),
(25, 'Kasuna', 'sda', '121', 'kasuna@gmail.com', 1),
(26, 'lala', 'dasdas', '23123', 'lala@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE IF NOT EXISTS `scope` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `business_function` varchar(35) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `status` varchar(8) NOT NULL,
  `reson` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`id`, `org_id`, `business_function`, `purpose`, `status`, `reson`) VALUES
(13, 2, 'Information Technology', 'dsfdsdszf', 'Include', 'dfs'),
(18, 2, 'Distribution and Logistics', 'df', 'Include', 'DFA'),
(19, 1, 'Sales and Marketing', 'DF', 'Include', 'DSF'),
(20, 4, 'Compliance', 'dfs', 'Include', 'dsf'),
(22, 2, 'Operations', 'ZCNBVMN', 'Exclude', 'XZV'),
(23, 4, 'Operations', 'vv', 'Include', 'CV Zx'),
(24, 2, 'Distribution and Logistics', '2nd session', '', ''),
(27, 1, 'Distribution and Logistics', '1st session', '', ''),
(28, 4, 'Sales and Marketing', '3rd session', '', ''),
(29, 2, 'Finance', 'test', '', ''),
(30, 0, 'Operations', 'hgfjkhfjkg', '', ''),
(31, 0, 'Sales and Marketing', 'fsdfqwr', 'Exclude', 'wqrqewrqw'),
(32, 0, 'Sales and Marketing', '', 'Exclude', ''),
(33, 3, 'Finance', 'hdasjh', 'Include', ''),
(34, 0, 'Human Resources', 'dsad', 'Include', 'dsad'),
(35, 4, 'Human Resources', 'dsa', 'Include', 'dsad'),
(36, 2, 'Compliance', 'dsd', 'Include', 'dsadsads'),
(37, 5, 'Information Technology', 'Purpose', 'Include', 'This is a reason'),
(38, 0, 'Human Resources', 'dasd', 'Include', 'dsad'),
(39, 0, 'Information Technology', 'ddfa', 'Include', 'fdsfd'),
(40, 22, 'Human Resources', 'dsa', 'Include', 'dsad'),
(41, 3, 'Sales and Marketing', 'Sale bla bla', 'Include', 'hahshs'),
(47, 22, 'Finance', 'finance', 'Include', 'dsadasdasdasd'),
(48, 22, 'Compliance', 'dsadas', 'Exclude', 'dasdas'),
(49, 27, 'Distribution and Logistics', 'No Purpose', 'Include', 'This is a reason'),
(50, 27, 'Information Technology', 'dsa', 'Exclude', 'This is a reason');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `phone`, `email`) VALUES
(1, 'Pawan', 'Muhandiram', '(000)000-0000', 'name1@gmail.com'),
(4, 'fname2', 'lname2', '(000)000-0000', 'name2@gmail.com'),
(5, 'fname3', 'lname3', '(000)000-0000', 'name3@gmail.com'),
(7, 'fname4', 'lname4', '(000)000-0000', 'name4@gmail.com'),
(8, 'fname5', 'lname5', '(000)000-0000', 'name5@gmail.com'),
(9, 'fname6', 'lname6', '(000)000-0000', 'name6@gmail.com'),
(10, 'fname7', 'lname7', '(000)000-0000', 'name7@gmail.com'),
(11, 'fname8', 'lname8', '(000)000-0000', 'name8@gmail.com'),
(12, 'fname9', 'lname9', '(000)000-0000', 'name9@gmail.com'),
(13, 'fname10', 'lname10', '(000)000-0000', 'name10@gmail.com'),
(14, 'fre', 'wgw', '', ''),
(15, 'xzc', '', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, 'qw', 'ww', 'ww', 'asd@jhkj.com'),
(21, 'Saman', 'Kumara', '0288299', 'saman@gmail.com'),
(22, 'ds', 'ds', '213213', 'dsadas@gmail.com'),
(23, 'da', 'ds', 'ds', 'dsadas@gmail.com'),
(24, 'dsa', 'dsa', 'dsa', 'dsa'),
(25, 'dsa', 'dsa', 'dsa', 'dsadas@gmail.com'),
(26, 'hj', 'hj', 'hj', 'hj'),
(30, 'pa', 'pap', 'pa', 'pawan0706@gmail.com'),
(31, 'sum', 'sum', 'sum', 'sum'),
(32, 'edit', 'edit', 'edit', 'edit'),
(33, 'Sumana', 'Kumara', '077252', 'das'),
(34, 'Akalanka', 'Kumara', '077277388', 'akalanka@gmail.com'),
(35, 'editor', 'editor', '321312312', 'dsa'),
(37, 'Kusal', 'chamara', '0776354667', 'kusal@gmail.com'),
(38, 'DJ', 'Nalin', '05521551', 'djnalin.lk');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_organization`
--

CREATE TABLE IF NOT EXISTS `user_has_organization` (
  `user_has_org_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_has_org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_sub_user`
--

CREATE TABLE IF NOT EXISTS `user_has_sub_user` (
  `u_h_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sub_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_h_sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_has_sub_user`
--

INSERT INTO `user_has_sub_user` (`u_h_sub_id`, `user_id`, `sub_user_id`) VALUES
(2, 1, 30),
(3, 1, 32),
(4, 1, 33),
(5, 34, 35),
(6, 1, 36),
(7, 37, 38);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_user_type`
--

CREATE TABLE IF NOT EXISTS `user_has_user_type` (
  `user_has_user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_has_user_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `user_has_user_type`
--

INSERT INTO `user_has_user_type` (`user_has_user_type_id`, `user_id`, `user_type_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(4, 21, 1),
(5, 22, 1),
(6, 23, 1),
(7, 24, 1),
(8, 25, 2),
(9, 26, 2),
(14, 30, 2),
(15, 31, 1),
(16, 32, 2),
(17, 33, 3),
(18, 34, 1),
(19, 35, 2),
(20, 36, 2),
(21, 37, 1),
(22, 38, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `user_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `is_active` varchar(40) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_login_id`, `username`, `password`, `is_active`, `user_id`) VALUES
(1, 'test', 'test', 'true', 1),
(2, 'saman', 'saman', 'true', 21),
(3, 'ds', 'ds', 'true', 22),
(4, 'da', 'da', 'true', 23),
(5, 'as', 'as', 'true', 24),
(6, 'ed', 'ed', 'false', 25),
(8, 'hj', 'hj', 'true', 26),
(13, 'pa', 'pa', 'true', 30),
(14, 'sum', 'sum', 'true', 31),
(15, 'edit', 'edit', 'true', 32),
(16, 'c', 'c', 'true', 33),
(17, 'aka', 'aka', 'true', 34),
(18, 'erit', 'erit', 'true', 35),
(20, 'kusal', 'kusal', 'true', 37),
(21, 'djnalin', 'djnalin', 'true', 38);

-- --------------------------------------------------------

--
-- Table structure for table `user_session_management`
--

CREATE TABLE IF NOT EXISTS `user_session_management` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL,
  `activity` varchar(225) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

--
-- Dumping data for table `user_session_management`
--

INSERT INTO `user_session_management` (`session_id`, `user_id`, `date`, `time`, `activity`) VALUES
(1, 1, '2015/01/27', '03:55:01am', 'Login in to the System'),
(2, 1, '2015/01/27', '03:57:11am', 'Logout From the System'),
(3, 1, '2015/01/27', '03:57:47am', 'Login in to the System'),
(4, 1, '2015/01/27', '03:57:49am', 'Logout From the System'),
(5, 1, '2015/01/27', '03:59:39am', 'Login in to the System'),
(6, 1, '2015/01/27', '03:59:53am', 'Logout From the System'),
(7, 1, '2015/01/27', '04:01:09am', 'Login in to the System'),
(8, 1, '2015/01/27', '04:01:18am', 'Logout From the System'),
(9, 1, '2015/01/27', '04:02:45am', 'Login in to the System'),
(10, 1, '2015/01/27', '04:02:54am', 'Logout From the System'),
(11, 1, '2015/01/27', '04:05:08am', 'Login in to the System'),
(12, 1, '2015/01/27', '04:05:15am', 'Logout From the System'),
(13, 1, '2015/01/27', '04:06:21am', 'Login in to the System'),
(14, 1, '2015/01/27', '04:06:33am', 'Logout From the System'),
(15, 1, '2015/01/27', '04:09:39am', 'Login in to the System'),
(16, 1, '2015/01/27', '04:09:46am', 'Logout From the System'),
(17, 1, '2015/01/27', '04:11:01am', 'Login in to the System'),
(18, 1, '2015/01/27', '04:11:03am', 'Logout From the System'),
(19, 1, '2015/01/27', '04:11:51am', 'Login in to the System'),
(20, 1, '2015/01/27', '04:11:53am', 'Logout From the System'),
(21, 1, '2015/01/27', '04:56:18am', 'Login in to the System'),
(22, 1, '2015/01/27', '04:56:46am', 'Logout From the System'),
(23, 1, '2015/01/27', '04:58:12am', 'Login in to the System'),
(24, 1, '2015/01/27', '04:58:17am', 'Logout From the System'),
(25, 1, '2015/01/27', '04:58:21am', 'Login in to the System'),
(26, 1, '2015/01/27', '05:06:07am', 'Logout From the System'),
(27, 1, '2015/01/27', '05:07:38am', 'Login in to the System'),
(28, 1, '2015/01/27', '05:12:24am', 'Logout From the System'),
(29, 1, '2015/01/27', '05:16:13am', 'Login in to the System'),
(30, 1, '2015/01/27', '05:17:13am', 'Logout From the System'),
(31, 1, '2015/01/27', '05:31:46am', 'Login in to the System'),
(32, 1, '2015/01/27', '05:42:25am', 'Logout From the System'),
(33, 1, '2015/01/27', '05:47:17am', 'Login in to the System'),
(34, 1, '2015/01/27', '05:47:21am', 'Logout From the System'),
(35, 1, '2015/01/27', '05:48:13am', 'Login in to the System'),
(36, 1, '2015/01/27', '05:48:15am', 'Logout From the System'),
(37, 1, '2015/01/27', '05:48:52am', 'Login in to the System'),
(38, 1, '2015/01/27', '05:48:56am', 'Logout From the System'),
(39, 1, '2015/01/27', '05:50:09am', 'Login in to the System'),
(40, 1, '2015/01/27', '05:50:12am', 'Logout From the System'),
(41, 1, '2015/01/27', '05:52:24am', 'Login in to the System'),
(42, 1, '2015/01/27', '05:55:01am', 'Logout From the System'),
(43, 1, '2015/01/27', '05:55:06am', 'Login in to the System'),
(44, 1, '2015/01/27', '05:55:39am', 'Logout From the System'),
(45, 1, '2015/01/27', '05:55:57am', 'Login in to the System'),
(46, 1, '2015/01/27', '05:56:58am', 'Logout From the System'),
(47, 1, '2015/01/27', '06:11:57am', 'Login in to the System'),
(48, 1, '2015/01/27', '06:12:00am', 'Logout From the System'),
(49, 1, '2015/01/27', '07:15:30am', 'Login in to the System'),
(50, 1, '2015/01/27', '07:15:34am', 'Logout From the System'),
(51, 21, '2015/01/27', '08:19:40am', 'Login in to the System'),
(52, 21, '2015/01/27', '08:19:50am', 'Logout From the System'),
(53, 21, '2015/01/27', '08:28:57am', 'Login in to the System'),
(54, 21, '2015/01/27', '08:46:26am', 'Logout From the System'),
(55, 23, '2015/01/27', '08:51:20am', 'Login in to the System'),
(56, 23, '2015/01/27', '08:51:28am', 'Logout From the System'),
(57, 23, '2015/01/27', '08:51:34am', 'Login in to the System'),
(58, 23, '2015/01/27', '08:51:36am', 'Logout From the System'),
(59, 23, '2015/01/27', '08:51:49am', 'Login in to the System'),
(60, 23, '2015/01/27', '08:51:53am', 'Logout From the System'),
(61, 23, '2015/01/27', '08:56:18am', 'Login in to the System'),
(62, 23, '2015/01/27', '08:56:22am', 'Logout From the System'),
(63, 23, '2015/01/27', '08:57:03am', 'Login in to the System'),
(64, 23, '2015/01/27', '10:15:21am', 'Logout From the System'),
(65, 22, '2015/01/27', '10:15:50am', 'Login in to the System'),
(66, 22, '2015/01/27', '10:15:54am', 'Logout From the System'),
(67, 1, '2015/01/27', '10:15:58am', 'Login in to the System'),
(68, 1, '2015/01/27', '10:16:03am', 'Logout From the System'),
(69, 1, '2015/01/27', '01:29:44pm', 'Login in to the System'),
(70, 1, '2015/01/27', '01:30:09pm', 'Logout From the System'),
(71, 23, '2015/01/27', '01:30:43pm', 'Login in to the System'),
(72, 23, '2015/01/27', '01:31:06pm', 'Logout From the System'),
(73, 1, '2015/01/28', '02:00:59pm', 'Login in to the System'),
(74, 1, '2015/01/28', '02:01:16pm', 'Logout From the System'),
(75, 22, '2015/01/28', '02:01:28pm', 'Login in to the System'),
(76, 22, '2015/01/28', '02:01:33pm', 'Logout From the System'),
(77, 1, '2015/01/29', '07:42:49am', 'Login in to the System'),
(78, 1, '2015/01/29', '07:43:00am', 'Logout From the System'),
(79, 1, '2015/01/31', '06:24:26am', 'Login in to the System'),
(80, 1, '2015/01/31', '06:24:30am', 'Logout From the System'),
(81, 24, '2015/01/31', '06:24:51am', 'Login in to the System'),
(82, 24, '2015/01/31', '06:25:05am', 'Logout From the System'),
(83, 1, '2015/01/31', '07:03:38am', 'Login in to the System'),
(84, 25, '2015/01/31', '08:00:51am', 'Admin Create User'),
(85, 1, '2015/01/31', '08:01:25am', 'Logout From the System'),
(86, 25, '2015/01/31', '08:01:28am', 'Login in to the System'),
(87, 25, '2015/01/31', '08:02:55am', 'Logout From the System'),
(88, 1, '2015/01/31', '08:03:00am', 'Login in to the System'),
(89, 1, '2015/01/31', '08:05:23am', 'Logout From the System'),
(90, 25, '2015/01/31', '08:05:26am', 'Login in to the System'),
(91, 25, '2015/01/31', '08:05:45am', 'Logout From the System'),
(92, 1, '2015/01/31', '08:05:48am', 'Login in to the System'),
(93, 1, '2015/01/31', '08:05:54am', 'Logout From the System'),
(94, 1, '2015/01/31', '08:18:16am', 'Login in to the System'),
(95, 1, '2015/01/31', '08:37:13am', 'Logout From the System'),
(96, 25, '2015/01/31', '08:37:21am', 'Login in to the System'),
(97, 25, '2015/01/31', '08:37:40am', 'Logout From the System'),
(98, 1, '2015/01/31', '04:25:33pm', 'Login in to the System'),
(99, 1, '2015/01/31', '05:41:25pm', 'Logout From the System'),
(100, 1, '2015/01/31', '05:44:47pm', 'Login in to the System'),
(101, 1, '2015/01/31', '05:54:42pm', 'Logout From the System'),
(102, 22, '2015/01/31', '05:54:49pm', 'Login in to the System'),
(103, 22, '2015/01/31', '05:54:57pm', 'Logout From the System'),
(104, 24, '2015/01/31', '05:55:07pm', 'Login in to the System'),
(105, 24, '2015/01/31', '05:55:15pm', 'Logout From the System'),
(106, 1, '2015/01/31', '05:55:22pm', 'Login in to the System'),
(107, 1, '2015/01/31', '06:11:10pm', 'Logout From the System'),
(108, 1, '2015/01/31', '06:12:46pm', 'Login in to the System'),
(109, 1, '2015/01/31', '06:12:57pm', 'Logout From the System'),
(110, 1, '2015/01/31', '06:13:22pm', 'Login in to the System'),
(111, 1, '2015/01/31', '06:13:32pm', 'Logout From the System'),
(112, 1, '2015/01/31', '06:15:23pm', 'Login in to the System'),
(113, 1, '2015/01/31', '06:17:21pm', 'Logout From the System'),
(114, 1, '2015/01/31', '06:18:25pm', 'Login in to the System'),
(115, 1, '2015/01/31', '06:19:01pm', 'Logout From the System'),
(116, 1, '2015/01/31', '06:20:31pm', 'Login in to the System'),
(117, 26, '2015/01/31', '06:37:34pm', 'Admin Create User'),
(118, 1, '2015/01/31', '06:37:42pm', 'Logout From the System'),
(119, 26, '2015/01/31', '06:37:45pm', 'Login in to the System'),
(120, 26, '2015/01/31', '06:37:51pm', 'Logout From the System'),
(121, 1, '2015/01/31', '06:37:54pm', 'Login in to the System'),
(122, 1, '2015/01/31', '06:38:36pm', 'Logout From the System'),
(123, 1, '2015/02/01', '04:36:57am', 'Login in to the System'),
(124, 1, '2015/02/01', '04:37:43am', 'Logout From the System'),
(125, 26, '2015/02/01', '04:37:46am', 'Login in to the System'),
(126, 26, '2015/02/01', '04:38:08am', 'Logout From the System'),
(127, 1, '2015/02/01', '04:38:13am', 'Login in to the System'),
(128, 1, '2015/02/01', '04:40:52am', 'Logout From the System'),
(129, 1, '2015/02/01', '04:41:04am', 'Login in to the System'),
(130, 1, '2015/02/01', '04:44:15am', 'Logout From the System'),
(131, 1, '2015/02/01', '04:44:35am', 'Login in to the System'),
(132, 1, '2015/02/01', '08:15:45am', 'Logout From the System'),
(133, 1, '2015/02/01', '08:15:59am', 'Login in to the System'),
(134, 1, '2015/02/01', '08:17:13am', 'Logout From the System'),
(135, 26, '2015/02/01', '08:17:16am', 'Login in to the System'),
(136, 26, '2015/02/01', '08:17:37am', 'Logout From the System'),
(137, 1, '2015/02/01', '08:24:46am', 'Login in to the System'),
(138, 1, '2015/02/01', '08:27:00am', 'Logout From the System'),
(139, 1, '2015/02/01', '08:36:35am', 'Login in to the System'),
(140, 1, '2015/02/01', '08:43:06am', 'Logout From the System'),
(141, 1, '2015/02/01', '09:11:47am', 'Login in to the System'),
(145, 29, '2015/02/01', '09:34:58am', 'Admin Create User'),
(146, 30, '2015/02/01', '09:36:16am', 'Admin Create User'),
(147, 1, '2015/02/01', '01:25:14pm', 'Logout From the System'),
(148, 1, '2015/02/02', '04:55:08am', 'Login in to the System'),
(149, 1, '2015/02/08', '05:51:39am', 'Logout From the System'),
(150, 31, '2015/02/08', '05:52:00am', 'Login in to the System'),
(151, 31, '2015/02/08', '05:59:26am', 'Logout From the System'),
(152, 1, '2015/02/08', '05:59:29am', 'Login in to the System'),
(153, 1, '2015/02/08', '05:59:39am', 'Logout From the System'),
(154, 26, '2015/02/08', '05:59:42am', 'Login in to the System'),
(155, 26, '2015/02/08', '05:59:44am', 'Logout From the System'),
(156, 1, '2015/02/08', '06:00:03am', 'Login in to the System'),
(157, 1, '2015/02/08', '06:01:59am', 'Logout From the System'),
(158, 1, '2015/02/08', '06:02:02am', 'Login in to the System'),
(159, 32, '2015/02/08', '06:02:37am', 'Admin Create User'),
(160, 1, '2015/02/08', '06:25:56am', 'Logout From the System'),
(161, 1, '2015/02/08', '07:14:09am', 'Login in to the System'),
(162, 1, '2015/02/09', '02:52:18am', 'Logout From the System'),
(163, 1, '2015/02/10', '11:43:48am', 'Login in to the System'),
(164, 1, '2015/02/10', '11:45:41am', 'Logout From the System'),
(165, 1, '2015/02/18', '03:58:46am', 'Login in to the System'),
(166, 33, '2015/02/18', '01:32:38pm', 'Admin Create User'),
(167, 1, '2015/02/18', '01:32:43pm', 'Logout From the System'),
(168, 1, '2015/02/18', '01:32:47pm', 'Login in to the System'),
(169, 1, '2015/02/20', '05:20:30am', 'Logout From the System'),
(170, 1, '2015/02/20', '05:20:50am', 'Login in to the System'),
(171, 1, '2015/02/20', '07:05:19am', 'Logout From the System'),
(172, 1, '2015/02/20', '07:05:31am', 'Login in to the System'),
(173, 1, '2015/02/20', '11:41:15am', 'Logout From the System'),
(174, 1, '2015/02/20', '11:42:17am', 'Login in to the System'),
(175, 1, '2015/02/20', '04:18:50pm', 'Logout From the System'),
(176, 1, '2015/02/20', '04:39:11pm', 'Login in to the System'),
(177, 1, '2015/02/20', '05:37:42pm', 'Logout From the System'),
(178, 1, '2015/02/20', '05:37:46pm', 'Login in to the System'),
(179, 1, '2015/02/20', '05:42:30pm', 'Logout From the System'),
(180, 1, '2015/02/20', '05:42:35pm', 'Login in to the System'),
(181, 1, '2015/02/20', '05:43:59pm', 'Logout From the System'),
(182, 1, '2015/02/20', '05:44:03pm', 'Login in to the System'),
(183, 1, '2015/02/20', '05:45:00pm', 'Logout From the System'),
(184, 1, '2015/02/20', '05:45:03pm', 'Login in to the System'),
(185, 1, '2015/02/20', '05:47:24pm', 'Login in to the System'),
(186, 1, '2015/02/20', '05:48:05pm', 'Login in to the System'),
(187, 1, '2015/02/20', '05:49:13pm', 'Logout From the System'),
(188, 1, '2015/02/20', '05:49:18pm', 'Login in to the System'),
(189, 1, '2015/02/20', '06:13:32pm', 'Logout From the System'),
(190, 1, '2015/02/20', '06:13:36pm', 'Login in to the System'),
(191, 1, '2015/02/20', '06:18:19pm', 'Logout From the System'),
(192, 1, '2015/02/20', '06:18:23pm', 'Login in to the System'),
(193, 1, '2015/02/20', '06:20:01pm', 'Logout From the System'),
(194, 1, '2015/02/20', '06:20:04pm', 'Login in to the System'),
(195, 1, '2015/02/20', '06:21:38pm', 'Logout From the System'),
(196, 1, '2015/02/20', '06:21:42pm', 'Login in to the System'),
(197, 1, '2015/02/20', '06:23:14pm', 'Logout From the System'),
(198, 1, '2015/02/20', '06:23:17pm', 'Login in to the System'),
(199, 1, '2015/02/20', '06:32:45pm', 'Logout From the System'),
(200, 1, '2015/02/20', '06:32:54pm', 'Login in to the System'),
(201, 1, '2015/02/20', '06:39:16pm', 'Logout From the System'),
(202, 1, '2015/02/20', '06:39:20pm', 'Login in to the System'),
(203, 1, '2015/02/20', '06:46:01pm', 'Logout From the System'),
(204, 1, '2015/02/20', '06:46:05pm', 'Login in to the System'),
(205, 1, '2015/02/21', '03:40:27am', 'Logout From the System'),
(206, 1, '2015/02/21', '03:40:30am', 'Login in to the System'),
(207, 1, '2015/02/21', '05:27:25am', 'Logout From the System'),
(208, 34, '2015/02/21', '05:28:05am', 'Login in to the System'),
(209, 35, '2015/02/21', '05:49:40am', 'Admin Create User'),
(210, 34, '2015/02/21', '05:49:59am', 'Logout From the System'),
(211, 35, '2015/02/21', '05:50:05am', 'Login in to the System'),
(212, 35, '2015/02/21', '07:14:29am', 'Logout From the System'),
(213, 1, '2015/02/21', '07:14:32am', 'Login in to the System'),
(214, 1, '2015/02/21', '07:18:30am', 'Logout From the System'),
(215, 35, '2015/02/21', '07:18:35am', 'Login in to the System'),
(216, 35, '2015/02/21', '07:19:03am', 'Logout From the System'),
(217, 1, '2015/02/21', '07:19:06am', 'Login in to the System'),
(218, 1, '2015/02/21', '07:56:37am', 'Logout From the System'),
(219, 1, '2015/02/21', '07:56:41am', 'Login in to the System'),
(220, 1, '2015/02/21', '04:04:51pm', 'Logout From the System'),
(221, 1, '2015/02/21', '04:04:55pm', 'Login in to the System'),
(222, 1, '2015/02/21', '04:05:54pm', 'Logout From the System'),
(223, 35, '2015/02/21', '04:05:59pm', 'Login in to the System'),
(224, 35, '2015/02/21', '04:07:42pm', 'Logout From the System'),
(225, 1, '2015/02/21', '04:07:45pm', 'Login in to the System'),
(226, 1, '2015/02/22', '04:50:56am', 'Logout From the System'),
(227, 1, '2015/02/22', '04:51:00am', 'Login in to the System'),
(228, 1, '2015/02/22', '05:18:35am', 'Logout From the System'),
(229, 1, '2015/02/22', '05:20:07am', 'Login in to the System'),
(230, 1, '2015/02/22', '06:22:21am', 'Logout From the System'),
(231, 35, '2015/02/22', '06:22:26am', 'Login in to the System'),
(232, 35, '2015/02/22', '06:22:59am', 'Logout From the System'),
(233, 1, '2015/02/22', '06:23:02am', 'Login in to the System'),
(234, 36, '2015/02/22', '06:24:15am', 'Admin Create User'),
(235, 1, '2015/02/22', '06:24:19am', 'Logout From the System'),
(236, 1, '2015/02/22', '06:24:37am', 'Login in to the System'),
(237, 1, '2015/02/22', '06:30:41am', 'Logout From the System'),
(238, 1, '2015/02/22', '06:30:45am', 'Login in to the System'),
(239, 1, '2015/02/23', '08:39:18am', 'Logout From the System'),
(240, 35, '2015/02/23', '08:39:26am', 'Login in to the System'),
(241, 35, '2015/02/23', '08:43:58am', 'Logout From the System'),
(242, 1, '2015/02/23', '08:44:05am', 'Login in to the System'),
(243, 1, '2015/02/23', '08:55:48am', 'Logout From the System'),
(244, 35, '2015/02/23', '08:55:52am', 'Login in to the System'),
(245, 35, '2015/02/23', '08:56:03am', 'Logout From the System'),
(246, 1, '2015/02/23', '08:56:08am', 'Login in to the System'),
(247, 1, '2015/02/23', '08:57:22am', 'Logout From the System'),
(248, 1, '2015/02/23', '08:57:43am', 'Login in to the System'),
(249, 1, '2015/02/24', '02:52:36am', 'Logout From the System'),
(250, 1, '2015/02/24', '02:52:47am', 'Login in to the System'),
(251, 1, '2015/02/24', '03:01:09am', 'Logout From the System'),
(252, 30, '2015/02/24', '03:02:09am', 'Login in to the System'),
(253, 30, '2015/02/24', '03:06:08am', 'Logout From the System'),
(254, 1, '2015/02/24', '03:06:12am', 'Login in to the System'),
(255, 1, '2015/02/24', '03:28:21am', 'Logout From the System'),
(256, 1, '2015/02/24', '03:28:24am', 'Login in to the System'),
(257, 1, '2015/02/24', '03:31:03am', 'Logout From the System'),
(258, 1, '2015/02/24', '03:31:23am', 'Login in to the System'),
(259, 1, '2015/02/24', '05:35:39am', 'Logout From the System'),
(260, 37, '2015/02/24', '05:36:12am', 'Login in to the System'),
(261, 38, '2015/02/24', '05:49:42am', 'Admin Create User'),
(262, 37, '2015/02/24', '05:49:48am', 'Logout From the System'),
(263, 38, '2015/02/24', '05:49:53am', 'Login in to the System'),
(264, 38, '2015/02/24', '05:51:04am', 'Logout From the System'),
(265, 37, '2015/02/24', '05:51:12am', 'Login in to the System');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type`) VALUES
(1, 'Admin'),
(2, 'Viewer'),
(3, 'Contributor');

-- --------------------------------------------------------

--
-- Table structure for table `www`
--

CREATE TABLE IF NOT EXISTS `www` (
  `aaa` varchar(255) DEFAULT NULL,
  `bbb` varchar(255) DEFAULT NULL,
  `ccc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `www`
--

INSERT INTO `www` (`aaa`, `bbb`, `ccc`) VALUES
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('sfa', 'sfas', 'saf'),
('df', 'safsaf', ''),
('df', 'safsaf', ''),
('df', 'sss', ''),
('fgj', 'gfh', 'gh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

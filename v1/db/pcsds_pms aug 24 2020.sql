-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 02:44 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcsds_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomplished`
--

CREATE TABLE `accomplished` (
  `idaccomplished` int(11) NOT NULL,
  `idindicators` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `dateCompleted` date DEFAULT NULL,
  `dateEncoded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accomplished`
--

INSERT INTO `accomplished` (`idaccomplished`, `idindicators`, `quantity`, `month`, `user`, `remarks`, `dateCompleted`, `dateEncoded`) VALUES
(2, '5', 5, NULL, NULL, 'remarks', '2015-07-01', '0000-00-00'),
(3, '11', 1, NULL, NULL, '', '2015-08-12', '0000-00-00'),
(4, '28', 1, NULL, NULL, 'rem', '2015-09-09', '0000-00-00'),
(5, '42', 1, NULL, NULL, '', '2017-01-27', '0000-00-00'),
(6, '42', 0, NULL, NULL, 'IEC Caravan at San Jose National High School', '2017-02-20', '0000-00-00'),
(7, '43', 8.3, NULL, NULL, '', '2017-01-31', '0000-00-00'),
(8, '43', 8.3, NULL, NULL, '', '2017-02-28', '0000-00-00'),
(9, '47', 1, NULL, NULL, 'SEP Clearance No. DPHR-011217-001', '2017-01-12', '0000-00-00'),
(10, '47', 1, NULL, NULL, 'SEP Clearance No. OCL-011217-002', '2017-01-12', '0000-00-00'),
(11, '47', 1, NULL, NULL, 'SEP Clearance No. BGH-011217-003', '2017-01-12', '0000-00-00'),
(12, '47', 1, NULL, NULL, 'SEP Clearance No. No. BKI-011217-004', '2017-01-12', '0000-00-00'),
(13, '47', 1, NULL, NULL, 'SEP Clearance No. ARGP-011617-005', '2017-01-16', '0000-00-00'),
(14, '47', 1, NULL, NULL, 'SEP Clearance No. AGC-011817-006', '2017-01-18', '0000-00-00'),
(15, '47', 1, NULL, NULL, 'SEP Clearance No. BTGI-011917-007', '2017-01-19', '0000-00-00'),
(16, '47', 14, NULL, NULL, 'WSUP issued by Calamian DMD', '2017-01-31', '0000-00-00'),
(17, '47', 14, NULL, NULL, 'WSUP issued by Permitting Unit', '2017-01-31', '0000-00-00'),
(18, '47', 1, NULL, NULL, 'SEP No. BADP-020117-014', '2017-02-01', '0000-00-00'),
(19, '47', 1, NULL, NULL, 'SEP No. UAFO-020217-015', '2017-02-02', '0000-00-00'),
(20, '47', 1, NULL, NULL, 'SEP No. BGSQP-020717-016', '2017-02-07', '0000-00-00'),
(21, '47', 1, NULL, NULL, 'SEP No. FLA-022317-017', '2017-02-23', '0000-00-00'),
(22, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-018', '2017-02-23', '0000-00-00'),
(23, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-019', '2017-02-23', '0000-00-00'),
(24, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-020', '2017-02-23', '0000-00-00'),
(25, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-021', '2017-02-23', '0000-00-00'),
(26, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-022', '2017-02-23', '0000-00-00'),
(27, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-023', '2017-02-23', '0000-00-00'),
(28, '47', 1, NULL, NULL, 'SEP No. CYCP-022317-024', '2017-02-23', '0000-00-00'),
(29, '47', 1, NULL, NULL, 'SEP No. SVTI-022317-025', '2017-02-23', '0000-00-00'),
(30, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-026', '2017-02-23', '0000-00-00'),
(31, '47', 14, NULL, NULL, 'WSUP issued by Permitting Unit', '2017-02-28', '0000-00-00'),
(32, '47', 12, NULL, NULL, 'WSUP issued by Permitting Unit', '2017-02-28', '0000-00-00'),
(33, '50', 4, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO Central', '2017-01-31', '0000-00-00'),
(34, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Central', '2017-01-31', '0000-00-00'),
(35, '50', 10, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO South', '2017-02-28', '0000-00-00'),
(36, '50', 11, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO Central', '2017-02-28', '0000-00-00'),
(37, '50', 3, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO North', '2017-02-28', '0000-00-00'),
(38, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Calamian', '2017-02-28', '0000-00-00'),
(39, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Central', '2017-02-28', '0000-00-00'),
(40, '53', 7, NULL, NULL, 'Administrative Cases filed: No. 683-689', '2017-01-31', '0000-00-00'),
(41, '53', 1, NULL, NULL, 'Admin Case No. 696', '2017-02-06', '0000-00-00'),
(42, '53', 1, NULL, NULL, 'Admin Case No. 697', '2017-02-07', '0000-00-00'),
(43, '53', 1, NULL, NULL, 'Admin Case No. 698', '2017-02-13', '0000-00-00'),
(44, '53', 1, NULL, NULL, 'Admin Case No. 699', '2017-02-13', '0000-00-00'),
(45, '53', 1, NULL, NULL, 'Admin Case No. 700', '2017-02-13', '0000-00-00'),
(46, '53', 1, NULL, NULL, 'Admin Case No. 701', '2017-02-13', '0000-00-00'),
(47, '53', 1, NULL, NULL, 'Admin Case No. 702', '2017-02-13', '0000-00-00'),
(48, '53', 1, NULL, NULL, 'Admin Case No. 703', '2017-02-20', '0000-00-00'),
(49, '53', 1, NULL, NULL, 'Admin Case No. 704', '2017-02-20', '0000-00-00'),
(50, '53', 1, NULL, NULL, 'Admin Case No. 705', '2017-02-20', '0000-00-00'),
(51, '53', 1, NULL, NULL, 'Admin Case No. 706', '2017-02-20', '0000-00-00'),
(52, '53', 1, NULL, NULL, 'Admin Case No. 707', '2017-02-20', '0000-00-00'),
(53, '53', 1, NULL, NULL, 'Admin Case No. 708', '2017-02-27', '0000-00-00'),
(54, '28', 54, NULL, NULL, 'sdgfgsdfgsdfg', '2019-04-10', '0000-00-00'),
(55, '28', 14, NULL, NULL, 'wa;la', '2019-11-06', '2019-11-08'),
(56, '32', 15, NULL, NULL, 'mmmmmm', '2019-10-31', '2019-11-08'),
(57, '34', 11, NULL, NULL, 'yes', '2019-10-31', '2019-11-08'),
(58, '28', 56, NULL, NULL, 'waer', '2019-11-08', '2019-11-08'),
(59, '29', 51, NULL, NULL, 'asdasd', '2019-11-10', '2019-11-08'),
(60, '31', 52, NULL, NULL, 'asdasd', '2019-11-08', '2019-11-08'),
(61, '28', 521, NULL, NULL, 'asdasd', '2019-11-08', '2019-11-08'),
(62, '33', 5210, NULL, NULL, 'asdasd', '2019-11-10', '2019-11-08'),
(63, '32', 5210, NULL, NULL, 'asdasd', '2019-11-09', '2019-11-08'),
(64, '28', 5300, NULL, NULL, 'petix', '2019-11-01', '2019-11-08'),
(65, '25', 0, NULL, NULL, '', '1970-01-01', '2019-11-26'),
(66, '28', 89, NULL, NULL, 'fbdfgdfg', '2020-01-14', '2020-01-13'),
(67, '29', 15, NULL, NULL, 'Test Input', '2019-01-07', '2020-01-14'),
(69, '29', 5, NULL, NULL, 'Second Entry', '2019-02-05', '2020-01-14'),
(70, '56', 57, NULL, NULL, 'Sample Data lang', '2020-01-16', '2020-01-15'),
(71, '31', 57, NULL, NULL, 'Sample Stakeholders', '2019-01-16', '2020-01-15'),
(72, '28', 5, NULL, NULL, 'fsdfs', '2020-08-12', '2020-08-13'),
(73, '56', 5, NULL, NULL, 'fsdfs', '2020-08-12', '2020-08-13');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `idindicators` int(11) NOT NULL,
  `idsubactivities` varchar(45) DEFAULT NULL,
  `year_indicator` int(4) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `AnnualTarget` varchar(45) DEFAULT NULL,
  `date_encoded` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`idindicators`, `idsubactivities`, `year_indicator`, `Title`, `TargetWeight`, `AnnualTarget`, `date_encoded`) VALUES
(28, '48', 2020, 'Number of Communities reached with IEC', '', '12', ''),
(29, '49', 2019, 'Percentage of administrative support provided', '', '100', ''),
(30, '50', 2019, 'Number of plans and policies developed and issued or updated and disseminated', '', '21', ''),
(31, '51', 2019, 'Percentage of stakeholders that rate the PCSD policies as good or better', '', '65', ''),
(32, '52', 2019, 'Average percentage of plans and policies reviewed over the last 2 years', '', '2', ''),
(33, '59', 2019, 'Number of permits and clearances issued', '', '250', ''),
(34, '59', 2019, 'Percentage of permit/clearance holders incurring 1 or more violation in the last 3 years', '', '10', ''),
(35, '59', 2019, 'Percentage of permit and/or clearance applications acted upon within 7 days from date of receipt', '', '95', ''),
(36, '60', 2019, 'Number of establishments and facilities monitored and/or inspected with reports issued', '', '200', ''),
(37, '60', 2019, 'Percentage of submitted reports that resulted in the issuance of notice of violations and penalties imposed', '', '10', ''),
(38, '60', 2019, 'Percentage of establishments and facilities that have been inspected more than twice in 2 years', '', '90', ''),
(39, '61', 2019, 'Number of potential violations and complaints acted upon and reports issued', '', '10', ''),
(40, '61', 2019, 'Number of persons and entities with 2 or more recorded violations in the last 3 years as a percentage of the total number of violations', '', '2', ''),
(41, '61', 2019, 'Percentage of detected violations that are resolved or referred for prosecution within 7 days', '', '85', ''),
(42, '62', 2019, '1. Number of communities reached with IEC', '0', '12', ''),
(43, '62', 2019, '2. Percentage of administrative support provided', '', '100', ''),
(44, '63', 2019, '1. Number of plans and policies developed and issued or updated and disseminated', '', '21', ''),
(45, '63', 2019, '2. Percentage of stakeholders that rate the PCSD policies as good or better', '', '69', ''),
(46, '63', 2019, '3. Average percentage of plans and policies reviewed over the last 2 years', '', '4', ''),
(47, '64', 2019, '1. Number of permits and clearances issued', '', '200', ''),
(48, '64', 2019, '2. Percentage of permit/clearance holders incurring 1 or more violation in the last 3 years', '', '10', ''),
(49, '64', 2019, '3. Percentage of permit and/or clearance applications acted upon within 7 days from date of receipt', '', '96', ''),
(50, '65', 2019, '1. Number of establishments and facilities monitored and/or inspected with reports issued', '', '200', ''),
(51, '65', 2019, '2. Percentage of submitted reports that resulted in the penalties imposed issuance of notice of violations and penalties imposed', '', '10', ''),
(52, '65', 2019, '3. Percentage of establishments and facilities that have been inspected more than twice in 2 years', '', '90', ''),
(53, '66', 2019, '1. Number of potential violations and complaints acted upon and reports issued', '', '30', ''),
(54, '66', 2019, '2. Number of persons and entities with 2 or more recorded violations in the last 3 years as a % of the total number of violations', '', '2', ''),
(55, '66', 2019, '3. Percentage of detected violations that are resolved or referred for prosecution within 7 days', '', '85', ''),
(56, '67', 2020, 'taytol', '56', '67', '2019-11-26 17:15:40'),
(57, '67', 2020, 'tutol', '44', '45', '2019-11-27 15:19:57'),
(58, '67', 2020, 'tutol', '44', '45', '2019-11-27 15:20:42'),
(59, '67', 2020, 'tutol', '44', '45', '2019-11-27 15:21:30'),
(60, '67', 2020, 'tutol', '44', '45', '2019-11-27 15:22:04'),
(61, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', '12', '12', '2019-11-27 15:23:05'),
(62, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', '12', '12', '2019-11-27 15:23:39'),
(63, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', '12', '12', '2019-11-27 15:24:01'),
(64, '67', 2020, 'hjkyjfghj', '45', '45', '2019-11-27 15:25:06'),
(65, '67', 2020, 'jtjyrtj', '67', '67', '2019-11-27 15:35:22'),
(66, '67', 2020, 'jtjyrtj', '67', '67', '2019-11-27 15:38:01'),
(67, '67', 2020, 'jtjyrtj', '67', '67', '2019-11-27 15:41:04'),
(68, '67', 2020, 'hrheher', '65', '75', '2019-11-27 16:14:43'),
(69, '67', 2020, 'hrheher', '65', '75', '2019-11-27 16:15:20'),
(70, '67', 2020, 'hrheher', '65', '75', '2019-11-27 16:16:14'),
(71, '67', 2020, 'hrheher', '65', '75', '2019-11-27 16:17:03'),
(72, '67', 2020, 'hrheher', '65', '75', '2019-11-27 16:17:18'),
(73, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:27:56'),
(74, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:31:51'),
(75, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:32:10'),
(76, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:32:24'),
(77, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:33:52'),
(78, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:35:28'),
(79, '67', 2020, 'eqwe', '43', '34', '2019-11-27 16:36:17'),
(80, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:37:35'),
(81, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:38:42'),
(82, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:39:36'),
(83, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:52:18'),
(84, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:54:08'),
(85, '67', 2020, 'tghrgnbf', '45', '45', '2019-11-27 16:54:58'),
(86, '67', 2020, 'SAmple Title', '56', '50', '2020-01-15 17:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `ipcr_actual`
--

CREATE TABLE `ipcr_actual` (
  `ipcr_actual_id` int(11) NOT NULL,
  `ipcr_indicators_id` int(11) NOT NULL,
  `ipcr_actual_accomplished` double NOT NULL,
  `ipcr_actual_date_completed` varchar(50) NOT NULL,
  `ipcr_actual_date_encoded` varchar(11) DEFAULT NULL,
  `ipcr_actual_remarks` varchar(500) NOT NULL,
  `ipcr_user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipcr_actual`
--

INSERT INTO `ipcr_actual` (`ipcr_actual_id`, `ipcr_indicators_id`, `ipcr_actual_accomplished`, `ipcr_actual_date_completed`, `ipcr_actual_date_encoded`, `ipcr_actual_remarks`, `ipcr_user_id`) VALUES
(1, 3, 45, 'Mon Jul 06 2020 00:00:00 GMT+0800 (Philippine Stan', '2020', 'ala', 1),
(2, 3, 3, 'Tue Jul 07 2020 00:00:00 GMT+0800 (Philippine Stan', '2020', 'alawas', 1),
(3, 3, 2, 'Tue Jul 07 2020 00:00:00 GMT+0800 (Philippine Stan', '2020', 'sasd', 1),
(4, 4, 4, '2020-07-05', '2020-07-07 ', 'alaws', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ipcr_indicators`
--

CREATE TABLE `ipcr_indicators` (
  `ipcr_indicators_id` int(11) NOT NULL,
  `ipcr_user_id` int(11) NOT NULL,
  `ipcr_AnnualTarget` double NOT NULL,
  `ipcr_date_encoded` varchar(65) DEFAULT NULL,
  `ipcr_output_id` int(11) NOT NULL,
  `ipcr_first_sem_target` varchar(1500) NOT NULL,
  `ipcr_first_sem_target_no` double NOT NULL,
  `ipcr_second_sem_target` varchar(1500) NOT NULL,
  `ipcr_second_sem_target_no` double NOT NULL,
  `ipcr_q1` double NOT NULL,
  `ipcr_q2` double NOT NULL,
  `ipcr_timeliness` double NOT NULL,
  `ipcr_average` double NOT NULL,
  `date_encoded` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipcr_indicators`
--

INSERT INTO `ipcr_indicators` (`ipcr_indicators_id`, `ipcr_user_id`, `ipcr_AnnualTarget`, `ipcr_date_encoded`, `ipcr_output_id`, `ipcr_first_sem_target`, `ipcr_first_sem_target_no`, `ipcr_second_sem_target`, `ipcr_second_sem_target_no`, `ipcr_q1`, `ipcr_q2`, `ipcr_timeliness`, `ipcr_average`, `date_encoded`) VALUES
(3, 1, 666, NULL, 1, 'Six', 6, 'Six Ulit', 66, 50, 0, 0, 0, '2020-01-16 00:56:11'),
(4, 1, 100, NULL, 1, 'una', 49, 'ikalawa', 51, 4, 0, 0, 0, '2020-07-06 13:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `ipcr_outputs`
--

CREATE TABLE `ipcr_outputs` (
  `ipcr_outputs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ipcr_outputs_activity_title` varchar(500) NOT NULL,
  `ipcr_outputs_year` int(4) NOT NULL,
  `date_encoded` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipcr_outputs`
--

INSERT INTO `ipcr_outputs` (`ipcr_outputs_id`, `user_id`, `ipcr_outputs_activity_title`, `ipcr_outputs_year`, `date_encoded`) VALUES
(1, 1, 'Networker', 2020, '2020-01-15 23:37:53'),
(2, 2, 'Network', 2020, '2020-01-15 23:37:53'),
(4, 1, 'Legendary', 2020, '2020-07-06 12:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `mainactivities`
--

CREATE TABLE `mainactivities` (
  `idMainActivities` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MFONo` varchar(45) DEFAULT NULL,
  `yr` varchar(45) DEFAULT NULL,
  `date_encoded` date NOT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `AccomWeight` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainactivities`
--

INSERT INTO `mainactivities` (`idMainActivities`, `Title`, `MFONo`, `yr`, `date_encoded`, `TargetWeight`, `AccomWeight`) VALUES
(15, 'General Administrative and Support Service', 'General Administrative Services', '2015', '0000-00-00', NULL, NULL),
(16, 'Palawan Sustainable Development Policy Service', 'MFO 1', '2015', '0000-00-00', NULL, NULL),
(17, 'I Operation of Strategic Environmental Plan(SEP) Clearance', 'MFO 2', '2015', '0000-00-00', NULL, NULL),
(18, 'II Implementation of Rules and Regulations', 'MFO 2', '2015', '0000-00-00', NULL, NULL),
(19, 'General Administration and Support Service', 'General Administrative Services', '2017', '0000-00-00', NULL, NULL),
(20, 'Plans and Policy Formulation', 'MFO 1', '2017', '0000-00-00', NULL, NULL),
(21, 'MFO 2-1: Operation of Strategic Environmental Plan (SEP) Clearance System', 'MFO 2', '2017', '0000-00-00', NULL, NULL),
(22, 'MFO 2-2: Implementation of Rules and Regulations', 'MFO 2', '2017', '0000-00-00', NULL, NULL),
(23, '', 'MFO 2', '2017', '0000-00-00', NULL, NULL),
(24, 'Gass 1', 'General Administrative Services', '2020', '2019-11-26', NULL, NULL),
(25, 'Gass 2', 'General Administrative Services', '2020', '2019-11-26', NULL, NULL),
(26, 'MFO 1 Act 1', 'MFO 1', '2020', '2019-11-26', NULL, NULL),
(27, 'MFO 1 Act 2', 'MFO 1', '2020', '2019-11-26', NULL, NULL),
(28, 'MFO 1 Act 3', 'MFO 1', '2020', '2019-11-26', NULL, NULL),
(29, 'MFO 2 Act 1', 'MFO 2', '2020', '2019-11-26', NULL, NULL),
(30, 'MFO 2 Act 2', 'MFO 2', '2020', '2019-11-26', NULL, NULL),
(31, 'mfo 2 activ', 'MFO 2', '2020', '2019-11-26', NULL, NULL),
(32, 'mfo 2 gawa', 'MFO 2', '2020', '2019-11-26', NULL, NULL),
(33, 'mfo 2 gawa 2', 'MFO 2', '2020', '2019-11-26', NULL, NULL),
(34, 'mfo2 title ulit', 'MFO 2', '2020', '2019-11-26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mfotitle`
--

CREATE TABLE `mfotitle` (
  `idmfotitle` int(11) NOT NULL,
  `mfoNum` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mfotitle`
--

INSERT INTO `mfotitle` (`idmfotitle`, `mfoNum`, `title`, `year`) VALUES
(8, 'General Administrative Services', 'General Administrative Services', '2015'),
(9, '1', 'MFO 1', '2015'),
(10, '2', 'MFO 2', '2015'),
(11, 'General Administrative Services', 'I. General Administration and Support Service', '2017'),
(12, '1', 'Development Policy Service', '2017'),
(13, '2', '. MFO 2: Palawan Sustainable', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `monthlytarget`
--

CREATE TABLE `monthlytarget` (
  `monthlytargetID` int(11) NOT NULL,
  `idindicators` int(11) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `target` varchar(45) DEFAULT '0',
  `date_encoded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlytarget`
--

INSERT INTO `monthlytarget` (`monthlytargetID`, `idindicators`, `month`, `target`, `date_encoded`) VALUES
(217, 28, '1', '1', '0000-00-00'),
(218, 28, '2', '1', '0000-00-00'),
(219, 28, '3', '1', '0000-00-00'),
(220, 28, '4', '1', '0000-00-00'),
(221, 28, '5', '1', '0000-00-00'),
(222, 28, '6', '1', '0000-00-00'),
(223, 28, '7', '1', '0000-00-00'),
(224, 28, '8', '1', '0000-00-00'),
(225, 28, '9', '1', '0000-00-00'),
(226, 28, '10', '1', '0000-00-00'),
(227, 28, '11', '1', '0000-00-00'),
(228, 28, '12', '1', '0000-00-00'),
(229, 29, '1', '8.33', '0000-00-00'),
(230, 29, '2', '8.33', '0000-00-00'),
(231, 29, '3', '8.33', '0000-00-00'),
(232, 29, '4', '8.33', '0000-00-00'),
(233, 29, '5', '8.33', '0000-00-00'),
(234, 29, '6', '8.33', '0000-00-00'),
(235, 29, '7', '8.33', '0000-00-00'),
(236, 29, '8', '8.33', '0000-00-00'),
(237, 29, '9', '8.33', '0000-00-00'),
(238, 29, '10', '8.33', '0000-00-00'),
(239, 29, '11', '8.33', '0000-00-00'),
(240, 29, '12', '8.33', '0000-00-00'),
(241, 30, '1', '2', '0000-00-00'),
(242, 30, '2', '2', '0000-00-00'),
(243, 30, '3', '2', '0000-00-00'),
(244, 30, '4', '2', '0000-00-00'),
(245, 30, '5', '2', '0000-00-00'),
(246, 30, '6', '2', '0000-00-00'),
(247, 30, '7', '2', '0000-00-00'),
(248, 30, '8', '2', '0000-00-00'),
(249, 30, '9', '2', '0000-00-00'),
(250, 30, '10', '2', '0000-00-00'),
(251, 30, '11', '1', '0000-00-00'),
(252, 30, '12', '0', '0000-00-00'),
(253, 31, '1', '0', '0000-00-00'),
(254, 31, '2', '0', '0000-00-00'),
(255, 31, '3', '0', '0000-00-00'),
(256, 31, '4', '0', '0000-00-00'),
(257, 31, '5', '0', '0000-00-00'),
(258, 31, '6', '0', '0000-00-00'),
(259, 31, '7', '0', '0000-00-00'),
(260, 31, '8', '0', '0000-00-00'),
(261, 31, '9', '0', '0000-00-00'),
(262, 31, '10', '0', '0000-00-00'),
(263, 31, '11', '0', '0000-00-00'),
(264, 31, '12', '0', '0000-00-00'),
(265, 32, '1', '0', '0000-00-00'),
(266, 32, '2', '0', '0000-00-00'),
(267, 32, '3', '0', '0000-00-00'),
(268, 32, '4', '0', '0000-00-00'),
(269, 32, '5', '0', '0000-00-00'),
(270, 32, '6', '0', '0000-00-00'),
(271, 32, '7', '0', '0000-00-00'),
(272, 32, '8', '0', '0000-00-00'),
(273, 32, '9', '0', '0000-00-00'),
(274, 32, '10', '0', '0000-00-00'),
(275, 32, '11', '0', '0000-00-00'),
(276, 32, '12', '0', '0000-00-00'),
(277, 33, '1', '20', '0000-00-00'),
(278, 33, '2', '20', '0000-00-00'),
(279, 33, '3', '20', '0000-00-00'),
(280, 33, '4', '20', '0000-00-00'),
(281, 33, '5', '20', '0000-00-00'),
(282, 33, '6', '25', '0000-00-00'),
(283, 33, '7', '26', '0000-00-00'),
(284, 33, '8', '25', '0000-00-00'),
(285, 33, '9', '0', '0000-00-00'),
(286, 33, '10', '0', '0000-00-00'),
(287, 33, '11', '0', '0000-00-00'),
(288, 33, '12', '0', '0000-00-00'),
(289, 34, '1', '0', '0000-00-00'),
(290, 34, '2', '0', '0000-00-00'),
(291, 34, '3', '0', '0000-00-00'),
(292, 34, '4', '0', '0000-00-00'),
(293, 34, '5', '0', '0000-00-00'),
(294, 34, '6', '0', '0000-00-00'),
(295, 34, '7', '0', '0000-00-00'),
(296, 34, '8', '0', '0000-00-00'),
(297, 34, '9', '0', '0000-00-00'),
(298, 34, '10', '0', '0000-00-00'),
(299, 34, '11', '0', '0000-00-00'),
(300, 34, '12', '0', '0000-00-00'),
(301, 35, '1', '0', '0000-00-00'),
(302, 35, '2', '0', '0000-00-00'),
(303, 35, '3', '0', '0000-00-00'),
(304, 35, '4', '0', '0000-00-00'),
(305, 35, '5', '0', '0000-00-00'),
(306, 35, '6', '0', '0000-00-00'),
(307, 35, '7', '0', '0000-00-00'),
(308, 35, '8', '0', '0000-00-00'),
(309, 35, '9', '0', '0000-00-00'),
(310, 35, '10', '0', '0000-00-00'),
(311, 35, '11', '0', '0000-00-00'),
(312, 35, '12', '0', '0000-00-00'),
(313, 36, '1', '0', '0000-00-00'),
(314, 36, '2', '19', '0000-00-00'),
(315, 36, '3', '19', '0000-00-00'),
(316, 36, '4', '19', '0000-00-00'),
(317, 36, '5', '19', '0000-00-00'),
(318, 36, '6', '19', '0000-00-00'),
(319, 36, '7', '19', '0000-00-00'),
(320, 36, '8', '19', '0000-00-00'),
(321, 36, '9', '19', '0000-00-00'),
(322, 36, '10', '19', '0000-00-00'),
(323, 36, '11', '19', '0000-00-00'),
(324, 36, '12', '10', '0000-00-00'),
(325, 37, '1', '0', '0000-00-00'),
(326, 37, '2', '0', '0000-00-00'),
(327, 37, '3', '0', '0000-00-00'),
(328, 37, '4', '0', '0000-00-00'),
(329, 37, '5', '0', '0000-00-00'),
(330, 37, '6', '0', '0000-00-00'),
(331, 37, '7', '0', '0000-00-00'),
(332, 37, '8', '0', '0000-00-00'),
(333, 37, '9', '0', '0000-00-00'),
(334, 37, '10', '0', '0000-00-00'),
(335, 37, '11', '0', '0000-00-00'),
(336, 37, '12', '0', '0000-00-00'),
(337, 38, '1', '0', '0000-00-00'),
(338, 38, '2', '0', '0000-00-00'),
(339, 38, '3', '0', '0000-00-00'),
(340, 38, '4', '0', '0000-00-00'),
(341, 38, '5', '0', '0000-00-00'),
(342, 38, '6', '0', '0000-00-00'),
(343, 38, '7', '0', '0000-00-00'),
(344, 38, '8', '0', '0000-00-00'),
(345, 38, '9', '0', '0000-00-00'),
(346, 38, '10', '0', '0000-00-00'),
(347, 38, '11', '0', '0000-00-00'),
(348, 38, '12', '0', '0000-00-00'),
(349, 39, '1', '0', '0000-00-00'),
(350, 39, '2', '1', '0000-00-00'),
(351, 39, '3', '1', '0000-00-00'),
(352, 39, '4', '1', '0000-00-00'),
(353, 39, '5', '1', '0000-00-00'),
(354, 39, '6', '1', '0000-00-00'),
(355, 39, '7', '1', '0000-00-00'),
(356, 39, '8', '1', '0000-00-00'),
(357, 39, '9', '1', '0000-00-00'),
(358, 39, '10', '1', '0000-00-00'),
(359, 39, '11', '1', '0000-00-00'),
(360, 39, '12', '0', '0000-00-00'),
(361, 40, '1', '0', '0000-00-00'),
(362, 40, '2', '0', '0000-00-00'),
(363, 40, '3', '0', '0000-00-00'),
(364, 40, '4', '0', '0000-00-00'),
(365, 40, '5', '0', '0000-00-00'),
(366, 40, '6', '0', '0000-00-00'),
(367, 40, '7', '0', '0000-00-00'),
(368, 40, '8', '0', '0000-00-00'),
(369, 40, '9', '0', '0000-00-00'),
(370, 40, '10', '0', '0000-00-00'),
(371, 40, '11', '0', '0000-00-00'),
(372, 40, '12', '0', '0000-00-00'),
(373, 41, '1', '0', '0000-00-00'),
(374, 41, '2', '0', '0000-00-00'),
(375, 41, '3', '0', '0000-00-00'),
(376, 41, '4', '0', '0000-00-00'),
(377, 41, '5', '0', '0000-00-00'),
(378, 41, '6', '0', '0000-00-00'),
(379, 41, '7', '0', '0000-00-00'),
(380, 41, '8', '0', '0000-00-00'),
(381, 41, '9', '0', '0000-00-00'),
(382, 41, '10', '0', '0000-00-00'),
(383, 41, '11', '0', '0000-00-00'),
(384, 41, '12', '0', '0000-00-00'),
(385, 42, '1', '0', '0000-00-00'),
(386, 42, '2', '0', '0000-00-00'),
(387, 42, '3', '0', '0000-00-00'),
(388, 42, '4', '0', '0000-00-00'),
(389, 42, '5', '0', '0000-00-00'),
(390, 42, '6', '0', '0000-00-00'),
(391, 42, '7', '0', '0000-00-00'),
(392, 42, '8', '0', '0000-00-00'),
(393, 42, '9', '0', '0000-00-00'),
(394, 42, '10', '0', '0000-00-00'),
(395, 42, '11', '0', '0000-00-00'),
(396, 42, '12', '0', '0000-00-00'),
(397, 42, '1', '1', '0000-00-00'),
(398, 42, '2', '1', '0000-00-00'),
(399, 42, '3', '1', '0000-00-00'),
(400, 42, '4', '1', '0000-00-00'),
(401, 42, '5', '1', '0000-00-00'),
(402, 42, '6', '1', '0000-00-00'),
(403, 42, '7', '1', '0000-00-00'),
(404, 42, '8', '1', '0000-00-00'),
(405, 42, '9', '1', '0000-00-00'),
(406, 42, '10', '1', '0000-00-00'),
(407, 42, '11', '1', '0000-00-00'),
(408, 42, '12', '1', '0000-00-00'),
(409, 43, '1', '8.3', '0000-00-00'),
(410, 43, '2', '8.3', '0000-00-00'),
(411, 43, '3', '8.3', '0000-00-00'),
(412, 43, '4', '8.3', '0000-00-00'),
(413, 43, '5', '8.3', '0000-00-00'),
(414, 43, '6', '8.3', '0000-00-00'),
(415, 43, '7', '8.3', '0000-00-00'),
(416, 43, '8', '8.3', '0000-00-00'),
(417, 43, '9', '8.3', '0000-00-00'),
(418, 43, '10', '8.3', '0000-00-00'),
(419, 43, '11', '8.3', '0000-00-00'),
(420, 43, '12', '8.3', '0000-00-00'),
(421, 44, '1', '0', '0000-00-00'),
(422, 44, '2', '0', '0000-00-00'),
(423, 44, '3', '2', '0000-00-00'),
(424, 44, '4', '1', '0000-00-00'),
(425, 44, '5', '1', '0000-00-00'),
(426, 44, '6', '5', '0000-00-00'),
(427, 44, '7', '2', '0000-00-00'),
(428, 44, '8', '2', '0000-00-00'),
(429, 44, '9', '4', '0000-00-00'),
(430, 44, '10', '2', '0000-00-00'),
(431, 44, '11', '2', '0000-00-00'),
(432, 44, '12', '0', '0000-00-00'),
(433, 45, '1', '0', '0000-00-00'),
(434, 45, '2', '0', '0000-00-00'),
(435, 45, '3', '0', '0000-00-00'),
(436, 45, '4', '0', '0000-00-00'),
(437, 45, '5', '0', '0000-00-00'),
(438, 45, '6', '0', '0000-00-00'),
(439, 45, '7', '0', '0000-00-00'),
(440, 45, '8', '0', '0000-00-00'),
(441, 45, '9', '0', '0000-00-00'),
(442, 45, '10', '0', '0000-00-00'),
(443, 45, '11', '0', '0000-00-00'),
(444, 45, '12', '69', '0000-00-00'),
(445, 46, '1', '0', '0000-00-00'),
(446, 46, '2', '0', '0000-00-00'),
(447, 46, '3', '0', '0000-00-00'),
(448, 46, '4', '0', '0000-00-00'),
(449, 46, '5', '0', '0000-00-00'),
(450, 46, '6', '2', '0000-00-00'),
(451, 46, '7', '0', '0000-00-00'),
(452, 46, '8', '0', '0000-00-00'),
(453, 46, '9', '0', '0000-00-00'),
(454, 46, '10', '0', '0000-00-00'),
(455, 46, '11', '0', '0000-00-00'),
(456, 46, '12', '2', '0000-00-00'),
(457, 47, '1', '14', '0000-00-00'),
(458, 47, '2', '16', '0000-00-00'),
(459, 47, '3', '16', '0000-00-00'),
(460, 47, '4', '18', '0000-00-00'),
(461, 47, '5', '18', '0000-00-00'),
(462, 47, '6', '18', '0000-00-00'),
(463, 47, '7', '18', '0000-00-00'),
(464, 47, '8', '18', '0000-00-00'),
(465, 47, '9', '18', '0000-00-00'),
(466, 47, '10', '16', '0000-00-00'),
(467, 47, '11', '16', '0000-00-00'),
(468, 47, '12', '14', '0000-00-00'),
(469, 48, '1', '0', '0000-00-00'),
(470, 48, '2', '0', '0000-00-00'),
(471, 48, '3', '0', '0000-00-00'),
(472, 48, '4', '0', '0000-00-00'),
(473, 48, '5', '0', '0000-00-00'),
(474, 48, '6', '0', '0000-00-00'),
(475, 48, '7', '0', '0000-00-00'),
(476, 48, '8', '0', '0000-00-00'),
(477, 48, '9', '0', '0000-00-00'),
(478, 48, '10', '0', '0000-00-00'),
(479, 48, '11', '0', '0000-00-00'),
(480, 48, '12', '10', '0000-00-00'),
(481, 49, '1', '0', '0000-00-00'),
(482, 49, '2', '0', '0000-00-00'),
(483, 49, '3', '0', '0000-00-00'),
(484, 49, '4', '0', '0000-00-00'),
(485, 49, '5', '0', '0000-00-00'),
(486, 49, '6', '0', '0000-00-00'),
(487, 49, '7', '0', '0000-00-00'),
(488, 49, '8', '0', '0000-00-00'),
(489, 49, '9', '0', '0000-00-00'),
(490, 49, '10', '0', '0000-00-00'),
(491, 49, '11', '0', '0000-00-00'),
(492, 49, '12', '96', '0000-00-00'),
(493, 50, '1', '14', '0000-00-00'),
(494, 50, '2', '16', '0000-00-00'),
(495, 50, '3', '16', '0000-00-00'),
(496, 50, '4', '18', '0000-00-00'),
(497, 50, '5', '18', '0000-00-00'),
(498, 50, '6', '18', '0000-00-00'),
(499, 50, '7', '18', '0000-00-00'),
(500, 50, '8', '18', '0000-00-00'),
(501, 50, '9', '18', '0000-00-00'),
(502, 50, '10', '16', '0000-00-00'),
(503, 50, '11', '16', '0000-00-00'),
(504, 50, '12', '14', '0000-00-00'),
(505, 51, '1', '0', '0000-00-00'),
(506, 51, '2', '0', '0000-00-00'),
(507, 51, '3', '0', '0000-00-00'),
(508, 51, '4', '0', '0000-00-00'),
(509, 51, '5', '0', '0000-00-00'),
(510, 51, '6', '0', '0000-00-00'),
(511, 51, '7', '0', '0000-00-00'),
(512, 51, '8', '0', '0000-00-00'),
(513, 51, '9', '0', '0000-00-00'),
(514, 51, '10', '0', '0000-00-00'),
(515, 51, '11', '0', '0000-00-00'),
(516, 51, '12', '10', '0000-00-00'),
(517, 52, '1', '0', '0000-00-00'),
(518, 52, '2', '0', '0000-00-00'),
(519, 52, '3', '0', '0000-00-00'),
(520, 52, '4', '0', '0000-00-00'),
(521, 52, '5', '0', '0000-00-00'),
(522, 52, '6', '0', '0000-00-00'),
(523, 52, '7', '0', '0000-00-00'),
(524, 52, '8', '0', '0000-00-00'),
(525, 52, '9', '0', '0000-00-00'),
(526, 52, '10', '0', '0000-00-00'),
(527, 52, '11', '0', '0000-00-00'),
(528, 52, '12', '90', '0000-00-00'),
(529, 53, '1', '2', '0000-00-00'),
(530, 53, '2', '2', '0000-00-00'),
(531, 53, '3', '3', '0000-00-00'),
(532, 53, '4', '2', '0000-00-00'),
(533, 53, '5', '3', '0000-00-00'),
(534, 53, '6', '3', '0000-00-00'),
(535, 53, '7', '3', '0000-00-00'),
(536, 53, '8', '3', '0000-00-00'),
(537, 53, '9', '2', '0000-00-00'),
(538, 53, '10', '3', '0000-00-00'),
(539, 53, '11', '2', '0000-00-00'),
(540, 53, '12', '2', '0000-00-00'),
(541, 54, '1', '0', '0000-00-00'),
(542, 54, '2', '0', '0000-00-00'),
(543, 54, '3', '0', '0000-00-00'),
(544, 54, '4', '0', '0000-00-00'),
(545, 54, '5', '0', '0000-00-00'),
(546, 54, '6', '0', '0000-00-00'),
(547, 54, '7', '0', '0000-00-00'),
(548, 54, '8', '0', '0000-00-00'),
(549, 54, '9', '0', '0000-00-00'),
(550, 54, '10', '0', '0000-00-00'),
(551, 54, '11', '0', '0000-00-00'),
(552, 54, '12', '2', '0000-00-00'),
(553, 55, '1', '0', '0000-00-00'),
(554, 55, '2', '0', '0000-00-00'),
(555, 55, '3', '0', '0000-00-00'),
(556, 55, '4', '0', '0000-00-00'),
(557, 55, '5', '0', '0000-00-00'),
(558, 55, '6', '0', '0000-00-00'),
(559, 55, '7', '0', '0000-00-00'),
(560, 55, '8', '0', '0000-00-00'),
(561, 55, '9', '0', '0000-00-00'),
(562, 55, '10', '0', '0000-00-00'),
(563, 55, '11', '0', '0000-00-00'),
(564, 55, '12', '85', '0000-00-00'),
(565, 84, '1', '1', '2019-11-27'),
(566, 84, '2', '2', '2019-11-27'),
(567, 84, '3', '3', '2019-11-27'),
(568, 84, '4', '4', '2019-11-27'),
(569, 84, '5', '5', '2019-11-27'),
(570, 84, '6', '6', '2019-11-27'),
(571, 84, '7', '7', '2019-11-27'),
(572, 84, '8', '8', '2019-11-27'),
(573, 84, '9', '9', '2019-11-27'),
(574, 84, '10', '10', '2019-11-27'),
(575, 84, '11', '11', '2019-11-27'),
(576, 84, '12', '12', '2019-11-27'),
(577, 85, '1', '12', '2019-11-27'),
(578, 85, '2', '11', '2019-11-27'),
(579, 85, '3', '10', '2019-11-27'),
(580, 85, '4', '9', '2019-11-27'),
(581, 85, '5', '8', '2019-11-27'),
(582, 85, '6', '7', '2019-11-27'),
(583, 85, '7', '6', '2019-11-27'),
(584, 85, '8', '5', '2019-11-27'),
(585, 85, '9', '4', '2019-11-27'),
(586, 85, '10', '3', '2019-11-27'),
(587, 85, '11', '2', '2019-11-27'),
(588, 85, '12', '1', '2019-11-27'),
(589, 86, '1', '1', '2020-01-15'),
(590, 86, '2', '2', '2020-01-15'),
(591, 86, '3', '3', '2020-01-15'),
(592, 86, '4', '4', '2020-01-15'),
(593, 86, '5', '5', '2020-01-15'),
(594, 86, '6', '6', '2020-01-15'),
(595, 86, '7', '7', '2020-01-15'),
(596, 86, '8', '8', '2020-01-15'),
(597, 86, '9', '9', '2020-01-15'),
(598, 86, '10', '10', '2020-01-15'),
(599, 86, '11', '11', '2020-01-15'),
(600, 86, '12', '12', '2020-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `idreport` int(11) NOT NULL,
  `idindicators` int(11) NOT NULL,
  `Main` varchar(255) DEFAULT NULL,
  `Sub` varchar(255) DEFAULT NULL,
  `Indicator` varchar(255) DEFAULT NULL,
  `Accomplished` varchar(255) DEFAULT NULL,
  `Target` varchar(255) DEFAULT NULL,
  `AccomWeight` varchar(45) DEFAULT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `Percent` varchar(45) DEFAULT NULL,
  `Slippage` varchar(45) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`idreport`, `idindicators`, `Main`, `Sub`, `Indicator`, `Accomplished`, `Target`, `AccomWeight`, `TargetWeight`, `Percent`, `Slippage`, `Remarks`) VALUES
(15912, 28, NULL, NULL, 'Number of Communities reached with IEC', '89', '4', '0.00', '0', '2225.00', '2125.00', NULL),
(15913, 56, NULL, NULL, 'taytol', '57', '', '0.00', '56', '0.00', '-100.00', NULL),
(15914, 57, NULL, NULL, 'tutol', '', '', '0.00', '44', '0.00', '-100.00', NULL),
(15915, 58, NULL, NULL, 'tutol', '', '', '0.00', '44', '0.00', '-100.00', NULL),
(15916, 59, NULL, NULL, 'tutol', '', '', '0.00', '44', '0.00', '-100.00', NULL),
(15917, 60, NULL, NULL, 'tutol', '', '', '0.00', '44', '0.00', '-100.00', NULL),
(15918, 64, NULL, NULL, 'hjkyjfghj', '', '', '0.00', '45', '0.00', '-100.00', NULL),
(15919, 65, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL),
(15920, 66, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL),
(15921, 67, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL),
(15922, 68, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL),
(15923, 69, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL),
(15924, 70, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL),
(15925, 71, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL),
(15926, 72, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL),
(15927, 73, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15928, 74, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15929, 75, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15930, 76, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15931, 77, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15932, 78, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15933, 79, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL),
(15934, 80, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL),
(15935, 81, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL),
(15936, 82, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL),
(15937, 83, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL),
(15938, 84, NULL, NULL, 'tghrgnbf', '', '10', '0.00', '45', '0.00', '-100.00', NULL),
(15939, 85, NULL, NULL, 'tghrgnbf', '', '42', '0.00', '45', '0.00', '-100.00', NULL),
(15940, 86, NULL, NULL, 'SAmple Title', '', '10', '0.00', '56', '0.00', '-100.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subactivities`
--

CREATE TABLE `subactivities` (
  `idsubactivities` int(11) NOT NULL,
  `idMainActivities` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Division` varchar(100) DEFAULT NULL,
  `date_encoded` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subactivities`
--

INSERT INTO `subactivities` (`idsubactivities`, `idMainActivities`, `Title`, `Division`, `date_encoded`) VALUES
(48, 15, 'Reach Communities with IEC', '', ''),
(49, 15, 'Provide Administrative Support', '', ''),
(50, 16, 'Develop Plans and Policies', '', ''),
(51, 16, 'Rate the PCSD Policies', '', ''),
(52, 16, 'Review Plans and Policies', '', ''),
(59, 17, 'Issuance of Clearances', '', ''),
(60, 17, 'Monitoring', '', ''),
(61, 18, 'Enforcement', '', ''),
(62, 19, 'General Administration and Support Service', '', ''),
(63, 20, 'Plans and Policy Formulation', '', ''),
(64, 21, 'Issuance of Clearances', '', ''),
(65, 21, 'Monitoring', '', ''),
(66, 22, 'Enforcement', '', ''),
(67, 27, 'cmon', NULL, '2019-11-26 16:25:43'),
(68, 24, 'Sampol', NULL, '2020-01-15 17:51:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplished`
--
ALTER TABLE `accomplished`
  ADD PRIMARY KEY (`idaccomplished`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`idindicators`);

--
-- Indexes for table `ipcr_actual`
--
ALTER TABLE `ipcr_actual`
  ADD PRIMARY KEY (`ipcr_actual_id`);

--
-- Indexes for table `ipcr_indicators`
--
ALTER TABLE `ipcr_indicators`
  ADD PRIMARY KEY (`ipcr_indicators_id`);

--
-- Indexes for table `ipcr_outputs`
--
ALTER TABLE `ipcr_outputs`
  ADD PRIMARY KEY (`ipcr_outputs_id`);

--
-- Indexes for table `mainactivities`
--
ALTER TABLE `mainactivities`
  ADD PRIMARY KEY (`idMainActivities`);

--
-- Indexes for table `mfotitle`
--
ALTER TABLE `mfotitle`
  ADD PRIMARY KEY (`idmfotitle`);

--
-- Indexes for table `monthlytarget`
--
ALTER TABLE `monthlytarget`
  ADD PRIMARY KEY (`monthlytargetID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`idreport`);

--
-- Indexes for table `subactivities`
--
ALTER TABLE `subactivities`
  ADD PRIMARY KEY (`idsubactivities`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomplished`
--
ALTER TABLE `accomplished`
  MODIFY `idaccomplished` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `idindicators` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `ipcr_actual`
--
ALTER TABLE `ipcr_actual`
  MODIFY `ipcr_actual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ipcr_indicators`
--
ALTER TABLE `ipcr_indicators`
  MODIFY `ipcr_indicators_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ipcr_outputs`
--
ALTER TABLE `ipcr_outputs`
  MODIFY `ipcr_outputs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainactivities`
--
ALTER TABLE `mainactivities`
  MODIFY `idMainActivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mfotitle`
--
ALTER TABLE `mfotitle`
  MODIFY `idmfotitle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `monthlytarget`
--
ALTER TABLE `monthlytarget`
  MODIFY `monthlytargetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15941;

--
-- AUTO_INCREMENT for table `subactivities`
--
ALTER TABLE `subactivities`
  MODIFY `idsubactivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

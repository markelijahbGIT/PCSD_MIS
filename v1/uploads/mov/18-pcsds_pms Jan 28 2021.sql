-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 10:07 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

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
  `fileName` varchar(300) NOT NULL,
  `dateCompleted` date DEFAULT NULL,
  `dateEncoded` date NOT NULL,
  `confirmation_status` varchar(40) NOT NULL DEFAULT 'unconfirmed' COMMENT 'confirmed or unconfirmed or declined',
  `decline_remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accomplished`
--

INSERT INTO `accomplished` (`idaccomplished`, `idindicators`, `quantity`, `month`, `user`, `remarks`, `fileName`, `dateCompleted`, `dateEncoded`, `confirmation_status`, `decline_remarks`) VALUES
(1, '4', 1, NULL, NULL, '', 'ECAN Map_Dumaran.png', '2020-04-30', '2020-11-27', 'unconfirmed', ''),
(2, '9', 0, NULL, NULL, '', 'PCSDS PFPR November 2020 (PMED Form)_FINAL.xlsx', '2020-01-03', '2021-01-20', 'declined', 'wrong'),
(3, '9', 1, NULL, NULL, '', 'PCSDS PFPR November 2020 (PMED Form)_FINAL.xlsx', '2020-01-03', '2021-01-20', 'confirmed', ''),
(13, '12', 12, NULL, '5', '', 'FOI-SRI.xlsx', '2021-01-27', '2021-01-28', 'unconfirmed', '');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `audit_trail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User ID from hris',
  `name_user` varchar(45) NOT NULL COMMENT 'User Name from hris',
  `trans_type` varchar(45) NOT NULL COMMENT 'Transaction Type',
  `transaction_date` date NOT NULL,
  `transaction` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`audit_trail_id`, `user_id`, `name_user`, `trans_type`, `transaction_date`, `transaction`) VALUES
(1, 5, '', 'save Accomplishment', '2021-01-28', ''),
(2, 5, '', 'save Accomplishment', '2021-01-28', ''),
(3, 5, '', 'save Accomplishment', '2021-01-28', ''),
(4, 5, '', 'save Accomplishment', '2021-01-28', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(3,6,,5,download (3).xls,2021-01-20,2021-01-28 15:43:34)'),
(5, 1, '', 'Create Main Activity', '2021-01-28', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(GAS,General Administrative Services,2021,2021-01-28 16:03:41)'),
(6, 1, '', 'Create Main Activity', '2021-01-28', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(QWERTy,General Administrative Services,2021,2021-01-28 16:16:15)'),
(7, 0, '', 'Create Main Activity', '2021-01-28', ''),
(8, 0, '', 'Create Main Activity', '2021-01-28', ''),
(9, 1, '', 'Create Main Activity', '2021-01-28', ''),
(10, 1, '', 'Create Main Activity', '2021-01-28', ''),
(11, 1, '', 'Create Main Activity', '2021-01-28', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Subsub,4,2021-01-28 16:42:48)'),
(12, 1, '', 'Save SubActivity', '2021-01-28', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Subsub,4,2021-01-28 16:49:48)'),
(13, 5, '', 'Save Accomplishment', '2021-01-28', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(12,12,,5,FOI-SRI.xlsx,2021-01-27,2021-01-28 16:51:48)');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `idindicators` int(11) NOT NULL,
  `idsubactivities` varchar(45) DEFAULT NULL,
  `year_indicator` int(4) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `budget` double NOT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `AnnualTarget` varchar(45) DEFAULT NULL,
  `date_encoded` varchar(45) NOT NULL,
  `agency_commitment` varchar(150) NOT NULL,
  `division` varchar(100) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`idindicators`, `idsubactivities`, `year_indicator`, `Title`, `budget`, `TargetWeight`, `AnnualTarget`, `date_encoded`, `agency_commitment`, `division`, `deleted`) VALUES
(1, '2', 2020, 'Number of field validation reports prepared', 0, '', '2', '2020-11-27 16:36:05', '', '', 0),
(3, '3', 2020, 'Number of consultations documented with reports prepared', 0, '', '1', '2020-11-27 16:54:24', '', 'EEED', 0),
(4, '4', 2020, 'Number of ECAN maps presented and updated', 0, '', '2', '2020-11-27 16:55:36', 'DBM,DENR,OPCR', 'EEED', 0),
(6, '7', 2020, 'Number of management frameworks for critical watershed developed', 188000, '', '1', '2020-11-27 17:29:16', '', 'EPRPD', 0),
(7, '6', 2020, 'Number of ICCA studies undertaken', 300000, '', '1', '2020-11-27 17:30:17', '', 'EPRPD', 0),
(8, '8', 2020, 'Number of reports on ECAN Zones Scorecard prepared', 209010, '', '1', '2020-11-27 17:32:45', 'DBM,DENR', 'EPRPD', 0),
(9, '9', 2020, 'Number of presentations given on ECAN and sustainable development planning', 66552, '', '3', '2020-12-02 08:03:34', '', 'EPRPD', 0),
(10, '10', 2020, 'Percentage of attendance to trainings, workshops, and conferences with reports issued to officials concerned', 418668, '', '100', '2020-12-02 08:06:09', '', 'EPRPD', 0),
(11, '11', 2020, 'Percentage of attendance to official meetings with reports issued to officials concerned', 0, '', '100', '2020-12-02 08:08:14', '', 'EPRPD', 0),
(12, '12', 2020, 'Number of in-house workshops organized or facilitated', 71240, '', '2', '2020-12-02 08:12:45', '', 'EPRPD', 0),
(13, '13', 2020, 'Number of monthly agency physical accomplishment reports submitted to DENR-PMED', 0, '', '12', '2020-12-02 08:52:36', 'OPCR', 'EPRPD', 0);

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
(4, 1, 100, NULL, 1, 'una', 49, 'ikalawa', 51, 4, 0, 0, 0, '2020-07-06 13:58:18'),
(5, 1, 10, NULL, 5, '2', 20, '23', 4234234, 0, 0, 0, 0, '2020-08-24 21:39:48');

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
(4, 1, 'Legendary', 2020, '2020-07-06 12:22:52'),
(5, 1, 'new one', 2020, '2020-08-24 21:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `mainactivities`
--

CREATE TABLE `mainactivities` (
  `idMainActivities` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MFONo` varchar(150) DEFAULT NULL,
  `yr` varchar(45) DEFAULT NULL,
  `date_encoded` date NOT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `AccomWeight` varchar(45) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainactivities`
--

INSERT INTO `mainactivities` (`idMainActivities`, `Title`, `MFONo`, `yr`, `date_encoded`, `TargetWeight`, `AccomWeight`, `deleted`) VALUES
(1, 'ECAN Map Updating', 'ECAN Zoning', '2020', '2020-11-27', NULL, NULL, 0),
(2, 'ECAN Institutionalization', 'ECAN Zoning', '2020', '2020-11-27', NULL, NULL, 0),
(3, 'Performance Management System', 'ECAN Zoning', '2020', '2020-12-02', NULL, NULL, 0);

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
  `month` int(45) DEFAULT NULL,
  `target` varchar(45) DEFAULT '0',
  `deadline` date NOT NULL,
  `budget` int(11) NOT NULL DEFAULT '0',
  `date_encoded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlytarget`
--

INSERT INTO `monthlytarget` (`monthlytargetID`, `idindicators`, `month`, `target`, `deadline`, `budget`, `date_encoded`) VALUES
(1, 1, 1, '0', '0000-00-00', 100, '2020-11-27'),
(2, 1, 2, '0', '0000-00-00', 100, '2020-11-27'),
(3, 1, 3, '0', '0000-00-00', 100, '2020-11-27'),
(4, 1, 4, '1', '0000-00-00', 100, '2020-11-27'),
(5, 1, 5, '', '0000-00-00', 100, '2020-11-27'),
(6, 1, 6, '0', '0000-00-00', 100, '2020-11-27'),
(7, 1, 7, '0', '0000-00-00', 100, '2020-11-27'),
(8, 1, 8, '0', '0000-00-00', 100, '2020-11-27'),
(9, 1, 9, '0', '0000-00-00', 100, '2020-11-27'),
(10, 1, 10, '1', '0000-00-00', 100, '2020-11-27'),
(11, 1, 11, '0', '0000-00-00', 100, '2020-11-27'),
(12, 1, 12, '0', '0000-00-00', 100, '2020-11-27'),
(13, 2, 1, '0', '0000-00-00', 100, '2020-11-27'),
(14, 2, 2, '0', '0000-00-00', 100, '2020-11-27'),
(15, 2, 3, '0', '0000-00-00', 100, '2020-11-27'),
(16, 2, 4, '1', '0000-00-00', 100, '2020-11-27'),
(17, 2, 5, '0', '0000-00-00', 100, '2020-11-27'),
(18, 2, 6, '0', '0000-00-00', 100, '2020-11-27'),
(19, 2, 7, '1', '0000-00-00', 100, '2020-11-27'),
(20, 2, 8, '0', '0000-00-00', 100, '2020-11-27'),
(21, 2, 9, '0', '0000-00-00', 100, '2020-11-27'),
(22, 2, 10, '0', '0000-00-00', 100, '2020-11-27'),
(23, 2, 11, '0', '0000-00-00', 100, '2020-11-27'),
(24, 2, 12, '0', '0000-00-00', 100, '2020-11-27'),
(25, 3, 1, '0', '0000-00-00', 100, '2020-11-27'),
(26, 3, 2, '0', '0000-00-00', 100, '2020-11-27'),
(27, 3, 3, '0', '0000-00-00', 100, '2020-11-27'),
(28, 3, 4, '0', '0000-00-00', 100, '2020-11-27'),
(29, 3, 5, '0', '2020-06-27', 100, '2020-11-27'),
(30, 3, 6, '0', '0000-00-00', 100, '2020-11-27'),
(31, 3, 7, '0', '0000-00-00', 100, '2020-11-27'),
(32, 3, 8, '0', '0000-00-00', 100, '2020-11-27'),
(33, 3, 9, '1', '2020-09-30', 100, '2020-11-27'),
(34, 3, 10, '0', '0000-00-00', 100, '2020-11-27'),
(35, 3, 11, '0', '0000-00-00', 100, '2020-11-27'),
(36, 3, 12, '0', '0000-00-00', 100, '2020-11-27'),
(37, 4, 1, '0', '0000-00-00', 100, '2020-11-27'),
(38, 4, 2, '0', '0000-00-00', 100, '2020-11-27'),
(39, 4, 3, '0', '0000-00-00', 100, '2020-11-27'),
(40, 4, 4, '0', '0000-00-00', 100, '2020-11-27'),
(41, 4, 5, '0', '2020-06-27', 100, '2020-11-27'),
(42, 4, 6, '1', '2020-06-30', 100, '2020-11-27'),
(43, 4, 7, '0', '0000-00-00', 100, '2020-11-27'),
(44, 4, 8, '0', '0000-00-00', 100, '2020-11-27'),
(45, 4, 9, '0', '2020-09-30', 100, '2020-11-27'),
(46, 4, 10, '0', '0000-00-00', 100, '2020-11-27'),
(47, 4, 11, '0', '0000-00-00', 100, '2020-11-27'),
(48, 4, 12, '1', '2020-12-31', 100, '2020-11-27'),
(49, 5, 1, '0', '0000-00-00', 100, '2020-11-27'),
(50, 5, 2, '0', '0000-00-00', 100, '2020-11-27'),
(51, 5, 3, '0', '0000-00-00', 100, '2020-11-27'),
(52, 5, 4, '0', '0000-00-00', 100, '2020-11-27'),
(53, 5, 5, '0', '0000-00-00', 100, '2020-11-27'),
(54, 5, 6, '0', '0000-00-00', 100, '2020-11-27'),
(55, 5, 7, '0', '0000-00-00', 100, '2020-11-27'),
(56, 5, 8, '0', '0000-00-00', 100, '2020-11-27'),
(57, 5, 9, '0', '0000-00-00', 100, '2020-11-27'),
(58, 5, 10, '0', '0000-00-00', 100, '2020-11-27'),
(59, 5, 11, '0', '0000-00-00', 100, '2020-11-27'),
(60, 5, 12, '1', '2020-12-31', 100, '2020-11-27'),
(61, 6, 1, '0', '0000-00-00', 100, '2020-11-27'),
(62, 6, 2, '0', '0000-00-00', 100, '2020-11-27'),
(63, 6, 3, '0', '0000-00-00', 100, '2020-11-27'),
(64, 6, 4, '0', '0000-00-00', 100, '2020-11-27'),
(65, 6, 5, '0', '0000-00-00', 100, '2020-11-27'),
(66, 6, 6, '0', '0000-00-00', 100, '2020-11-27'),
(67, 6, 7, '0', '0000-00-00', 100, '2020-11-27'),
(68, 6, 8, '0', '0000-00-00', 100, '2020-11-27'),
(69, 6, 9, '0', '0000-00-00', 100, '2020-11-27'),
(70, 6, 10, '0', '0000-00-00', 100, '2020-11-27'),
(71, 6, 11, '1', '2020-11-30', 100, '2020-11-27'),
(72, 6, 12, '0', '2020-12-31', 100, '2020-11-27'),
(73, 7, 1, '0', '0000-00-00', 100, '2020-11-27'),
(74, 7, 2, '0', '0000-00-00', 100, '2020-11-27'),
(75, 7, 3, '0', '0000-00-00', 100, '2020-11-27'),
(76, 7, 4, '0', '0000-00-00', 100, '2020-11-27'),
(77, 7, 5, '0', '0000-00-00', 100, '2020-11-27'),
(78, 7, 6, '0', '0000-00-00', 100, '2020-11-27'),
(79, 7, 7, '0', '0000-00-00', 100, '2020-11-27'),
(80, 7, 8, '0', '0000-00-00', 100, '2020-11-27'),
(81, 7, 9, '0', '0000-00-00', 100, '2020-11-27'),
(82, 7, 10, '0', '0000-00-00', 100, '2020-11-27'),
(83, 7, 11, '0', '2020-11-30', 100, '2020-11-27'),
(84, 7, 12, '1', '2020-12-31', 100, '2020-11-27'),
(85, 8, 1, '0', '0000-00-00', 100, '2020-11-27'),
(86, 8, 2, '0', '0000-00-00', 100, '2020-11-27'),
(87, 8, 3, '0', '0000-00-00', 100, '2020-11-27'),
(88, 8, 4, '0', '0000-00-00', 100, '2020-11-27'),
(89, 8, 5, '0', '0000-00-00', 100, '2020-11-27'),
(90, 8, 6, '0', '0000-00-00', 100, '2020-11-27'),
(91, 8, 7, '0', '0000-00-00', 100, '2020-11-27'),
(92, 8, 8, '0', '0000-00-00', 100, '2020-11-27'),
(93, 8, 9, '0', '0000-00-00', 100, '2020-11-27'),
(94, 8, 10, '0', '0000-00-00', 100, '2020-11-27'),
(95, 8, 11, '0', '2020-11-30', 100, '2020-11-27'),
(96, 8, 12, '0', '2020-12-20', 100, '2020-11-27'),
(97, 9, 1, '0', '0000-00-00', 100, '2020-12-02'),
(98, 9, 2, '0', '0000-00-00', 100, '2020-12-02'),
(99, 9, 3, '0', '0000-00-00', 100, '2020-12-02'),
(100, 9, 4, '0', '0000-00-00', 100, '2020-12-02'),
(101, 9, 5, '0', '0000-00-00', 100, '2020-12-02'),
(102, 9, 6, '0', '0000-00-00', 100, '2020-12-02'),
(103, 9, 7, '0', '0000-00-00', 100, '2020-12-02'),
(104, 9, 8, '0', '0000-00-00', 100, '2020-12-02'),
(105, 9, 9, '3', '2020-09-30', 100, '2020-12-02'),
(106, 9, 10, '0', '0000-00-00', 100, '2020-12-02'),
(107, 9, 11, '0', '0000-00-00', 100, '2020-12-02'),
(108, 9, 12, '0', '0000-00-00', 100, '2020-12-02'),
(109, 10, 1, '0', '0000-00-00', 100, '2020-12-02'),
(110, 10, 2, '0', '0000-00-00', 100, '2020-12-02'),
(111, 10, 3, '0', '0000-00-00', 100, '2020-12-02'),
(112, 10, 4, '0', '0000-00-00', 100, '2020-12-02'),
(113, 10, 5, '0', '0000-00-00', 100, '2020-12-02'),
(114, 10, 6, '100', '2020-06-30', 100, '2020-12-02'),
(115, 10, 7, '0', '0000-00-00', 100, '2020-12-02'),
(116, 10, 8, '0', '0000-00-00', 100, '2020-12-02'),
(117, 10, 9, '0', '2020-09-30', 100, '2020-12-02'),
(118, 10, 10, '0', '0000-00-00', 100, '2020-12-02'),
(119, 10, 11, '0', '0000-00-00', 100, '2020-12-02'),
(120, 10, 12, '100', '2020-12-31', 100, '2020-12-02'),
(121, 11, 1, '0', '0000-00-00', 100, '2020-12-02'),
(122, 11, 2, '0', '0000-00-00', 100, '2020-12-02'),
(123, 11, 3, '0', '0000-00-00', 100, '2020-12-02'),
(124, 11, 4, '0', '0000-00-00', 100, '2020-12-02'),
(125, 11, 5, '0', '0000-00-00', 100, '2020-12-02'),
(126, 11, 6, '100', '2020-06-30', 100, '2020-12-02'),
(127, 11, 7, '0', '0000-00-00', 100, '2020-12-02'),
(128, 11, 8, '0', '0000-00-00', 100, '2020-12-02'),
(129, 11, 9, '0', '2020-09-30', 100, '2020-12-02'),
(130, 11, 10, '0', '0000-00-00', 100, '2020-12-02'),
(131, 11, 11, '0', '0000-00-00', 100, '2020-12-02'),
(132, 11, 12, '100', '2020-12-31', 100, '2020-12-02'),
(133, 12, 1, '0', '0000-00-00', 200, '2020-12-02'),
(134, 12, 2, '0', '0000-00-00', 100, '2020-12-02'),
(135, 12, 3, '0', '0000-00-00', 100, '2020-12-02'),
(136, 12, 4, '0', '0000-00-00', 100, '2020-12-02'),
(137, 12, 5, '0', '0000-00-00', 100, '2020-12-02'),
(138, 12, 6, '0', '0000-00-00', 100, '2020-12-02'),
(139, 12, 7, '0', '0000-00-00', 100, '2020-12-02'),
(140, 12, 8, '0', '0000-00-00', 100, '2020-12-02'),
(141, 12, 9, '0', '0000-00-00', 100, '2020-12-02'),
(142, 12, 10, '0', '0000-00-00', 100, '2020-12-02'),
(143, 12, 11, '0', '0000-00-00', 100, '2020-12-02'),
(144, 12, 12, '2', '2020-12-31', 100, '2020-12-02'),
(145, 13, 1, '1', '2020-01-05', 100, '2020-12-02'),
(146, 13, 2, '1', '2020-02-05', 100, '2020-12-02'),
(147, 13, 3, '1', '2020-03-05', 100, '2020-12-02'),
(148, 13, 4, '1', '2020-04-05', 100, '2020-12-02'),
(149, 13, 5, '1', '2020-05-05', 100, '2020-12-02'),
(150, 13, 6, '1', '2020-06-05', 100, '2020-12-02'),
(151, 13, 7, '1', '2020-07-05', 100, '2020-12-02'),
(152, 13, 8, '1', '2020-08-05', 100, '2020-12-02'),
(153, 13, 9, '1', '2020-09-05', 100, '2020-12-02'),
(154, 13, 10, '1', '2020-10-05', 100, '2020-12-02'),
(155, 13, 11, '1', '2020-11-05', 100, '2020-12-02'),
(156, 13, 12, '1', '2020-12-05', 100, '2020-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notifications_id` int(11) NOT NULL,
  `record_id` varchar(45) NOT NULL,
  `db_name` varchar(45) NOT NULL,
  `seen` int(11) NOT NULL,
  `notif_text` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_seen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Remarks` varchar(45) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `agency_commitment` varchar(150) NOT NULL,
  `pap` varchar(150) NOT NULL,
  `division` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`idreport`, `idindicators`, `Main`, `Sub`, `Indicator`, `Accomplished`, `Target`, `AccomWeight`, `TargetWeight`, `Percent`, `Slippage`, `Remarks`, `year`, `agency_commitment`, `pap`, `division`) VALUES
(1, 1, NULL, 'Field Validation', 'Number of field validation reports prepared', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', ''),
(2, 3, NULL, 'Consultation Workshop (Post-Field Validation)', 'Number of consultations documented with reports prepared', '', '1', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EEED'),
(3, 4, NULL, 'Presentation to the ECAN Board', 'Number of ECAN maps presented and updated', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, 'DBM,DENR,OPCR', 'ECAN Zoning', 'EEED'),
(4, 6, NULL, 'Assistance to LGU on Critical Watershed Assessment and Management Planning supporting water systems', 'Number of management frameworks for critical watershed developed', '', '1', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(5, 7, NULL, 'Socio-cultural and Ecological Studies of ICCA', 'Number of ICCA studies undertaken', '', '1', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(6, 8, NULL, 'Administration of ECAN Zones Scorecard', 'Number of reports on ECAN Zones Scorecard prepared', '', '0', '0.00', '0', '0.00', '-100.00', NULL, 2020, 'DBM,DENR', 'ECAN Zoning', 'EPRPD'),
(7, 9, NULL, 'Capacity Building of Stakeholders on ECAN and sustainable development planning', 'Number of presentations given on ECAN and sustainable development planning', '1', '3', '0.00', '0', '33.33', '-66.67', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(8, 10, NULL, 'Attendance to Training, Workshops, and Conferences', 'Percentage of attendance to trainings, workshops, and conferences with reports issued to officials concerned', '', '200', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(9, 11, NULL, 'Attendance to Official Meetings', 'Percentage of attendance to official meetings with reports issued to officials concerned', '', '200', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(10, 12, NULL, 'Conduct of In-House Planning Workshops', 'Number of in-house workshops organized or facilitated', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD');

-- --------------------------------------------------------

--
-- Table structure for table `report_monthly`
--

CREATE TABLE `report_monthly` (
  `idreport` int(11) NOT NULL,
  `idindicators` int(11) NOT NULL,
  `Main` varchar(255) DEFAULT NULL,
  `Sub` varchar(255) DEFAULT NULL,
  `Indicator` varchar(255) DEFAULT NULL,
  `Accomplished` varchar(255) NOT NULL DEFAULT '0',
  `Target` varchar(255) DEFAULT NULL,
  `AccomWeight` varchar(45) DEFAULT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `Percent` varchar(45) DEFAULT NULL,
  `Slippage` varchar(45) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  `month` varchar(45) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_monthly`
--

INSERT INTO `report_monthly` (`idreport`, `idindicators`, `Main`, `Sub`, `Indicator`, `Accomplished`, `Target`, `AccomWeight`, `TargetWeight`, `Percent`, `Slippage`, `Remarks`, `month`, `year`) VALUES
(2971, 0, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '1', 0),
(2972, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '2', 0),
(2973, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '3', 0),
(2974, 0, NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, '4', 0),
(2975, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '5', 0),
(2976, 0, NULL, NULL, NULL, '0', '202', NULL, NULL, NULL, NULL, NULL, '6', 0),
(2977, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '7', 0),
(2978, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '8', 0),
(2979, 0, NULL, NULL, NULL, '0', '5', NULL, NULL, NULL, NULL, NULL, '9', 0),
(2980, 0, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, NULL, NULL, '10', 0),
(2981, 0, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, NULL, NULL, '11', 0),
(2982, 0, NULL, NULL, NULL, '0', '205', NULL, NULL, NULL, NULL, NULL, '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subactivities`
--

CREATE TABLE `subactivities` (
  `idsubactivities` int(11) NOT NULL,
  `idMainActivities` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Division` varchar(100) DEFAULT NULL,
  `date_encoded` varchar(45) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subactivities`
--

INSERT INTO `subactivities` (`idsubactivities`, `idMainActivities`, `Title`, `Division`, `date_encoded`, `deleted`) VALUES
(2, 1, 'Field Validation', NULL, '2020-11-27 15:20:41', 0),
(3, 1, 'Consultation Workshop (Post-Field Validation)', NULL, '2020-11-27 15:34:03', 0),
(4, 1, 'Presentation to the ECAN Board', NULL, '2020-11-27 15:34:19', 0),
(6, 2, 'Socio-cultural and Ecological Studies of ICCA', NULL, '2020-11-27 17:26:00', 0),
(7, 2, 'Assistance to LGU on Critical Watershed Assessment and Management Planning supporting water systems', NULL, '2020-11-27 17:28:02', 0),
(8, 2, 'Administration of ECAN Zones Scorecard', NULL, '2020-11-27 17:31:01', 0),
(9, 2, 'Capacity Building of Stakeholders on ECAN and sustainable development planning', NULL, '2020-12-02 08:02:05', 0),
(10, 2, 'Attendance to Training, Workshops, and Conferences', NULL, '2020-12-02 08:04:17', 0),
(11, 2, 'Attendance to Official Meetings', NULL, '2020-12-02 08:07:09', 0),
(12, 2, 'Conduct of In-House Planning Workshops', NULL, '2020-12-02 08:10:12', 0),
(13, 4, 'Operation of Performance Management System', NULL, '2020-12-02 08:14:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplished`
--
ALTER TABLE `accomplished`
  ADD PRIMARY KEY (`idaccomplished`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`audit_trail_id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notifications_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`idreport`);

--
-- Indexes for table `report_monthly`
--
ALTER TABLE `report_monthly`
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
  MODIFY `idaccomplished` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `audit_trail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `idindicators` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ipcr_actual`
--
ALTER TABLE `ipcr_actual`
  MODIFY `ipcr_actual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ipcr_indicators`
--
ALTER TABLE `ipcr_indicators`
  MODIFY `ipcr_indicators_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ipcr_outputs`
--
ALTER TABLE `ipcr_outputs`
  MODIFY `ipcr_outputs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mainactivities`
--
ALTER TABLE `mainactivities`
  MODIFY `idMainActivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mfotitle`
--
ALTER TABLE `mfotitle`
  MODIFY `idmfotitle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `monthlytarget`
--
ALTER TABLE `monthlytarget`
  MODIFY `monthlytargetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report_monthly`
--
ALTER TABLE `report_monthly`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2983;

--
-- AUTO_INCREMENT for table `subactivities`
--
ALTER TABLE `subactivities`
  MODIFY `idsubactivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

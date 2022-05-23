-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 08:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

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
(2, '5', 5, NULL, NULL, 'remarks', '', '2015-07-01', '0000-00-00', 'unconfirmed', ''),
(3, '11', 1, NULL, NULL, '', '', '2015-08-12', '0000-00-00', 'unconfirmed', ''),
(4, '28', 1, NULL, NULL, 'rem', '', '2015-09-09', '0000-00-00', 'unconfirmed', ''),
(5, '42', 1, NULL, NULL, '', '', '2017-01-27', '0000-00-00', 'unconfirmed', ''),
(6, '42', 0, NULL, NULL, 'IEC Caravan at San Jose National High School', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(7, '43', 8.3, NULL, NULL, '', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(8, '43', 8.3, NULL, NULL, '', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(9, '47', 1, NULL, NULL, 'SEP Clearance No. DPHR-011217-001', '', '2017-01-12', '0000-00-00', 'unconfirmed', ''),
(10, '47', 1, NULL, NULL, 'SEP Clearance No. OCL-011217-002', '', '2017-01-12', '0000-00-00', 'unconfirmed', ''),
(11, '47', 1, NULL, NULL, 'SEP Clearance No. BGH-011217-003', '', '2017-01-12', '0000-00-00', 'unconfirmed', ''),
(12, '47', 1, NULL, NULL, 'SEP Clearance No. No. BKI-011217-004', '', '2017-01-12', '0000-00-00', 'unconfirmed', ''),
(13, '47', 1, NULL, NULL, 'SEP Clearance No. ARGP-011617-005', '', '2017-01-16', '0000-00-00', 'unconfirmed', ''),
(14, '47', 1, NULL, NULL, 'SEP Clearance No. AGC-011817-006', '', '2017-01-18', '0000-00-00', 'unconfirmed', ''),
(15, '47', 1, NULL, NULL, 'SEP Clearance No. BTGI-011917-007', '', '2017-01-19', '0000-00-00', 'unconfirmed', ''),
(16, '47', 14, NULL, NULL, 'WSUP issued by Calamian DMD', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(17, '47', 14, NULL, NULL, 'WSUP issued by Permitting Unit', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(18, '47', 1, NULL, NULL, 'SEP No. BADP-020117-014', '', '2017-02-01', '0000-00-00', 'unconfirmed', ''),
(19, '47', 1, NULL, NULL, 'SEP No. UAFO-020217-015', '', '2017-02-02', '0000-00-00', 'unconfirmed', ''),
(20, '47', 1, NULL, NULL, 'SEP No. BGSQP-020717-016', '', '2017-02-07', '0000-00-00', 'unconfirmed', ''),
(21, '47', 1, NULL, NULL, 'SEP No. FLA-022317-017', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(22, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-018', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(23, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-019', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(24, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-020', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(25, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-021', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(26, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-022', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(27, '47', 1, NULL, NULL, 'SEP No. CSGQP-022317-023', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(28, '47', 1, NULL, NULL, 'SEP No. CYCP-022317-024', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(29, '47', 1, NULL, NULL, 'SEP No. SVTI-022317-025', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(30, '47', 1, NULL, NULL, 'SEP No. CSGPA-022317-026', '', '2017-02-23', '0000-00-00', 'unconfirmed', ''),
(31, '47', 14, NULL, NULL, 'WSUP issued by Permitting Unit', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(32, '47', 12, NULL, NULL, 'WSUP issued by Permitting Unit', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(33, '50', 4, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO Central', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(34, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Central', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(35, '50', 10, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO South', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(36, '50', 11, NULL, NULL, 'Projects & establishments with SEP Clearance monitored by DMO Central', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(37, '50', 3, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO North', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(38, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Calamian', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(39, '50', 2, NULL, NULL, 'Projects & establishments without SEP Clearance monitored by DMO Central', '', '2017-02-28', '0000-00-00', 'unconfirmed', ''),
(40, '53', 7, NULL, NULL, 'Administrative Cases filed: No. 683-689', '', '2017-01-31', '0000-00-00', 'unconfirmed', ''),
(41, '53', 1, NULL, NULL, 'Admin Case No. 696', '', '2017-02-06', '0000-00-00', 'unconfirmed', ''),
(42, '53', 1, NULL, NULL, 'Admin Case No. 697', '', '2017-02-07', '0000-00-00', 'unconfirmed', ''),
(43, '53', 1, NULL, NULL, 'Admin Case No. 698', '', '2017-02-13', '0000-00-00', 'unconfirmed', ''),
(44, '53', 1, NULL, NULL, 'Admin Case No. 699', '', '2017-02-13', '0000-00-00', 'unconfirmed', ''),
(45, '53', 1, NULL, NULL, 'Admin Case No. 700', '', '2017-02-13', '0000-00-00', 'unconfirmed', ''),
(46, '53', 1, NULL, NULL, 'Admin Case No. 701', '', '2017-02-13', '0000-00-00', 'unconfirmed', ''),
(47, '53', 1, NULL, NULL, 'Admin Case No. 702', '', '2017-02-13', '0000-00-00', 'unconfirmed', ''),
(48, '53', 1, NULL, NULL, 'Admin Case No. 703', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(49, '53', 1, NULL, NULL, 'Admin Case No. 704', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(50, '53', 1, NULL, NULL, 'Admin Case No. 705', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(51, '53', 1, NULL, NULL, 'Admin Case No. 706', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(52, '53', 1, NULL, NULL, 'Admin Case No. 707', '', '2017-02-20', '0000-00-00', 'unconfirmed', ''),
(53, '53', 1, NULL, NULL, 'Admin Case No. 708', '', '2017-02-27', '0000-00-00', 'unconfirmed', ''),
(54, '28', 54, NULL, NULL, 'sdgfgsdfgsdfg', '', '2019-04-10', '0000-00-00', 'unconfirmed', ''),
(55, '28', 14, NULL, NULL, 'wa;la', '', '2019-11-06', '2019-11-08', 'unconfirmed', ''),
(56, '32', 15, NULL, NULL, 'mmmmmm', '', '2019-10-31', '2019-11-08', 'unconfirmed', ''),
(57, '34', 11, NULL, NULL, 'yes', '', '2019-10-31', '2019-11-08', 'unconfirmed', ''),
(58, '28', 56, NULL, NULL, 'waer', '', '2019-11-08', '2019-11-08', 'unconfirmed', ''),
(59, '29', 51, NULL, NULL, 'asdasd', '', '2019-11-10', '2019-11-08', 'unconfirmed', ''),
(60, '31', 52, NULL, NULL, 'asdasd', '', '2019-11-08', '2019-11-08', 'unconfirmed', ''),
(61, '28', 521, NULL, NULL, 'asdasd', '', '2019-11-08', '2019-11-08', 'unconfirmed', ''),
(62, '33', 5210, NULL, NULL, 'asdasd', '', '2019-11-10', '2019-11-08', 'unconfirmed', ''),
(63, '32', 5210, NULL, NULL, 'asdasd', '', '2019-11-09', '2019-11-08', 'unconfirmed', ''),
(64, '28', 5300, NULL, NULL, 'petix', '', '2019-11-01', '2019-11-08', 'unconfirmed', ''),
(65, '25', 0, NULL, NULL, '', '', '1970-01-01', '2019-11-26', 'unconfirmed', ''),
(66, '28', 89, NULL, NULL, 'fbdfgdfg', '', '2020-01-14', '2020-01-13', 'declined', 'wala lang'),
(67, '29', 15, NULL, NULL, 'Test Input', '', '2019-01-07', '2020-01-14', 'unconfirmed', ''),
(69, '29', 5, NULL, NULL, 'Second Entry', '', '2019-02-05', '2020-01-14', 'unconfirmed', ''),
(70, '56', 57, NULL, NULL, 'Sample Data lang', '', '2020-01-16', '2020-01-15', 'unconfirmed', ''),
(71, '31', 57, NULL, NULL, 'Sample Stakeholders', '', '2019-01-16', '2020-01-15', 'unconfirmed', ''),
(72, '28', 5, NULL, NULL, 'fsdfs', '', '2020-08-12', '2020-08-13', 'confirmed', ''),
(73, '56', 5, NULL, NULL, 'fsdfs', '', '2020-08-12', '2020-08-13', 'unconfirmed', ''),
(74, '28', 7, NULL, NULL, 'yftytr', '', '2020-08-04', '2020-08-24', 'unconfirmed', ''),
(75, '56', 10, NULL, NULL, 'remarks here', '', '2020-10-01', '2020-10-20', 'unconfirmed', ''),
(76, '56', 10, NULL, NULL, 'remarks here', '', '2020-10-01', '2020-10-20', 'unconfirmed', ''),
(77, '56', 20, NULL, NULL, 'none', '', '2020-10-02', '2020-10-20', 'unconfirmed', ''),
(78, '57', 12, NULL, NULL, '', '', '2020-10-14', '2020-10-20', 'unconfirmed', ''),
(79, '58', 12, NULL, NULL, 'dasdas', '', '2020-10-14', '2020-10-20', 'unconfirmed', ''),
(80, '59', 10, NULL, NULL, 'asdasd', '', '2020-10-13', '2020-10-20', 'unconfirmed', ''),
(81, '60', 12, NULL, NULL, 'sasas', '', '2020-10-19', '2020-10-20', 'unconfirmed', ''),
(82, '60', 12, NULL, NULL, '', '', '2020-10-14', '2020-10-20', 'unconfirmed', ''),
(83, '59', 10, NULL, NULL, '', '', '2020-10-13', '2020-10-20', 'unconfirmed', ''),
(84, '59', 23, NULL, NULL, '', 'MIS System Flow Proposal.docx', '2020-10-08', '2020-10-20', 'unconfirmed', ''),
(85, '59', 12, NULL, NULL, '', 'jao wmf.xls', '2020-10-14', '2020-10-23', 'unconfirmed', ''),
(86, '87', 1, NULL, NULL, '', 'jao wmf.xls', '2021-06-18', '2020-10-23', 'declined', 'Remarks Here'),
(87, '88', 1, NULL, NULL, '', 'jao regular fund.xls', '2020-06-22', '2020-10-23', 'unconfirmed', ''),
(88, '104', 1, NULL, NULL, '', 'header-image.png', '2020-06-30', '2020-11-16', 'confirmed', ''),
(89, '104', 1, NULL, NULL, '', 'header-image.png', '2020-09-30', '2020-11-16', 'declined', 'Map is not yet completed.');

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
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`idindicators`, `idsubactivities`, `year_indicator`, `Title`, `budget`, `TargetWeight`, `AnnualTarget`, `date_encoded`, `agency_commitment`, `division`, `deleted`) VALUES
(28, '48', 2020, 'Number of Communities reached with IEC', 0, '', '12', '', 'DBM,PBB', 'AFD', 0),
(29, '49', 2019, 'Percentage of administrative support provided', 0, '', '100', '', 'DBM,DENR', 'OED', 0),
(30, '50', 2019, 'Number of plans and policies developed and issued or updated and disseminated', 0, '', '21', '', 'DENR', 'EPRPD', 0),
(31, '51', 2019, 'Percentage of stakeholders that rate the PCSD policies as good or better', 0, '', '65', '', 'OPCR', 'EEED', 0),
(32, '52', 2019, 'Average percentage of plans and policies reviewed over the last 2 years', 0, '', '2', '', 'IPCR', 'EMED', 0),
(33, '59', 2019, 'Number of permits and clearances issued', 0, '', '250', '', 'IPCR,PBB', 'EPRPD', 0),
(34, '59', 2019, 'Percentage of permit/clearance holders incurring 1 or more violation in the last 3 years', 0, '', '10', '', '', '', 0),
(35, '59', 2019, 'Percentage of permit and/or clearance applications acted upon within 7 days from date of receipt', 0, '', '95', '', '', '', 0),
(36, '60', 2019, 'Number of establishments and facilities monitored and/or inspected with reports issued', 0, '', '200', '', '', '', 0),
(37, '60', 2019, 'Percentage of submitted reports that resulted in the issuance of notice of violations and penalties imposed', 0, '', '10', '', '', '', 0),
(38, '60', 2019, 'Percentage of establishments and facilities that have been inspected more than twice in 2 years', 0, '', '90', '', '', '', 0),
(39, '61', 2019, 'Number of potential violations and complaints acted upon and reports issued', 0, '', '10', '', '', '', 0),
(40, '61', 2019, 'Number of persons and entities with 2 or more recorded violations in the last 3 years as a percentage of the total number of violations', 0, '', '2', '', '', '', 0),
(41, '61', 2019, 'Percentage of detected violations that are resolved or referred for prosecution within 7 days', 0, '', '85', '', '', '', 0),
(42, '62', 2019, '1. Number of communities reached with IEC', 0, '0', '12', '', '', '', 0),
(43, '62', 2019, '2. Percentage of administrative support provided', 0, '', '100', '', '', '', 0),
(44, '63', 2019, '1. Number of plans and policies developed and issued or updated and disseminated', 0, '', '21', '', '', '', 0),
(45, '63', 2019, '2. Percentage of stakeholders that rate the PCSD policies as good or better', 0, '', '69', '', '', '', 0),
(46, '63', 2019, '3. Average percentage of plans and policies reviewed over the last 2 years', 0, '', '4', '', '', '', 0),
(47, '64', 2019, '1. Number of permits and clearances issued', 0, '', '200', '', '', '', 0),
(48, '64', 2019, '2. Percentage of permit/clearance holders incurring 1 or more violation in the last 3 years', 0, '', '10', '', '', '', 0),
(49, '64', 2019, '3. Percentage of permit and/or clearance applications acted upon within 7 days from date of receipt', 0, '', '96', '', '', '', 0),
(50, '65', 2019, '1. Number of establishments and facilities monitored and/or inspected with reports issued', 0, '', '200', '', '', '', 0),
(51, '65', 2019, '2. Percentage of submitted reports that resulted in the penalties imposed issuance of notice of violations and penalties imposed', 0, '', '10', '', '', '', 0),
(52, '65', 2019, '3. Percentage of establishments and facilities that have been inspected more than twice in 2 years', 0, '', '90', '', '', '', 0),
(53, '66', 2019, '1. Number of potential violations and complaints acted upon and reports issued', 0, '', '30', '', '', '', 0),
(54, '66', 2019, '2. Number of persons and entities with 2 or more recorded violations in the last 3 years as a % of the total number of violations', 0, '', '2', '', '', '', 0),
(55, '66', 2019, '3. Percentage of detected violations that are resolved or referred for prosecution within 7 days', 0, '', '85', '', '', '', 0),
(56, '67', 2020, 'Percentage of detected violations that are resolved or referred for prosecution within 7 days', 0, '56', '67', '2019-11-26 17:15:40', '', '', 0),
(57, '67', 2020, 'Number of persons and entities with 2 or more recorded violations in the last 3 years as a % of the total number of violations', 0, '44', '45', '2019-11-27 15:19:57', '', '', 0),
(58, '67', 2020, 'Number of potential violations and complaints acted upon and reports issued', 0, '44', '45', '2019-11-27 15:20:42', '', '', 0),
(59, '67', 2020, 'Average percentage of plans and policies reviewed over the last 2 years', 0, '44', '45', '2019-11-27 15:21:30', '', '', 0),
(60, '67', 2020, 'Percentage of establishments and facilities that have been inspected more than twice in 2 years', 0, '44', '45', '2019-11-27 15:22:04', '', '', 0),
(61, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', 0, '12', '12', '2019-11-27 15:23:05', '', '', 0),
(62, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', 0, '12', '12', '2019-11-27 15:23:39', '', '', 0),
(63, '67', 2020, 'jkhljhfdsaA;LKJFDSAdfg;lk\'kj', 0, '12', '12', '2019-11-27 15:24:01', '', '', 0),
(64, '67', 2020, 'hjkyjfghj', 0, '45', '45', '2019-11-27 15:25:06', '', '', 0),
(65, '67', 2020, 'jtjyrtj', 0, '67', '67', '2019-11-27 15:35:22', '', '', 0),
(66, '67', 2020, 'jtjyrtj', 0, '67', '67', '2019-11-27 15:38:01', '', '', 0),
(67, '67', 2020, 'jtjyrtj', 0, '67', '67', '2019-11-27 15:41:04', '', '', 0),
(68, '67', 2020, 'hrheher', 0, '65', '75', '2019-11-27 16:14:43', '', '', 0),
(69, '67', 2020, 'hrheher', 0, '65', '75', '2019-11-27 16:15:20', '', '', 0),
(70, '67', 2020, 'hrheher', 0, '65', '75', '2019-11-27 16:16:14', '', '', 0),
(71, '67', 2020, 'hrheher', 0, '65', '75', '2019-11-27 16:17:03', '', '', 0),
(72, '67', 2020, 'hrheher', 0, '65', '75', '2019-11-27 16:17:18', '', '', 0),
(73, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:27:56', '', '', 0),
(74, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:31:51', '', '', 0),
(75, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:32:10', '', '', 0),
(76, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:32:24', '', '', 0),
(77, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:33:52', '', '', 0),
(78, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:35:28', '', '', 0),
(79, '67', 2020, 'eqwe', 0, '43', '34', '2019-11-27 16:36:17', '', '', 0),
(80, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:37:35', '', '', 0),
(81, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:38:42', '', '', 0),
(82, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:39:36', '', '', 0),
(83, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:52:18', '', '', 0),
(84, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:54:08', '', '', 0),
(85, '67', 2020, 'tghrgnbf', 0, '45', '45', '2019-11-27 16:54:58', '', '', 0),
(86, '67', 2020, 'SAmple Title', 0, '56', '50', '2020-01-15 17:49:45', '', '', 0),
(87, '69', 2021, 'Number of ECAN Maps updated', 0, '35', '4', '2020-10-23 09:51:22', '', '', 0),
(88, '70', 2020, 'Number of ECAN Maps updated', 0, '35', '2', '2020-10-23 10:00:31', '', '', 0),
(89, '72', 2021, 'sample title nanaman', 0, '12', '5', '2020-11-09 11:42:02', '', '', 0),
(90, '72', 2021, 'sample title nanaman', 0, '12', '5', '2020-11-09 11:43:47', '', '', 0),
(91, '71', 2021, 'sampol', 0, '12', '5', '2020-11-09 11:48:14', '', '', 0),
(92, '72', 2021, 'sampol', 0, '12', '5', '2020-11-09 11:49:39', '', '', 0),
(93, '72', 2021, 'sample target with deadlines', 0, '12', '19', '2020-11-09 13:25:10', '', '', 0),
(94, '72', 2021, 'sample 2', 0, '12', '13', '2020-11-09 13:28:08', '', '', 0),
(95, '72', 2021, 'sample 2', 0, '12', '13', '2020-11-09 13:29:54', '', '', 0),
(96, '72', 2021, 'sample 2', 0, '12', '13', '2020-11-09 13:30:45', '', '', 0),
(97, '72', 2021, 'ada', 0, '123', '2', '2020-11-09 13:32:23', '', '', 0),
(98, '72', 2021, 'title here', 0, '23', '23', '2020-11-10 15:00:32', 'DBM,DENR', 'OED', 0),
(99, '72', 2021, 'title here 2', 0, '23', '23', '2020-11-10 15:03:12', 'OPCR', 'AFD', 0),
(100, '67', 2020, 'title here 2', 0, '23', '12', '2020-11-10 15:06:18', 'DENR,OPCR', 'EMED', 0),
(101, '68', 2020, 'title here 2', 0, '23', '12', '2020-11-10 15:07:15', 'DBM,OPCR', 'EMED', 0),
(102, '67', 2020, 'SAMPOL', 0, '23', '32', '2020-11-13 10:20:47', 'DBM,DENR', 'OED', 0),
(103, '69', 2021, 'Number of ECAN Maps Updated 2', 0, '0', '4', '2020-11-16 09:34:41', 'DBM,DENR,OPCR', 'EPRPD', 0),
(104, '70', 2020, 'Number of ECAN Maps Updated 2', 0, '0', '2', '2020-11-16 09:36:12', 'DBM,DENR,OPCR', 'EPRPD', 0),
(105, '69', 2021, 'sfdfsdfsdf', 27, '2', '3', '2020-11-16 15:12:14', 'DBM,DENR', 'OED', 0);

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
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainactivities`
--

INSERT INTO `mainactivities` (`idMainActivities`, `Title`, `MFONo`, `yr`, `date_encoded`, `TargetWeight`, `AccomWeight`, `deleted`) VALUES
(15, 'General Administrative and Support Service', 'General Administrative Services', '2015', '0000-00-00', NULL, NULL, 0),
(16, 'Palawan Sustainable Development Policy Service', 'MFO 1', '2015', '0000-00-00', NULL, NULL, 0),
(17, 'I Operation of Strategic Environmental Plan(SEP) Clearance', 'MFO 2', '2015', '0000-00-00', NULL, NULL, 0),
(18, 'II Implementation of Rules and Regulations', 'MFO 2', '2015', '0000-00-00', NULL, NULL, 0),
(19, 'General Administration and Support Service', 'General Administrative Services', '2017', '0000-00-00', NULL, NULL, 0),
(20, 'Plans and Policy Formulation', 'MFO 1', '2017', '0000-00-00', NULL, NULL, 0),
(21, 'MFO 2-1: Operation of Strategic Environmental Plan (SEP) Clearance System', 'MFO 2', '2017', '0000-00-00', NULL, NULL, 0),
(22, 'MFO 2-2: Implementation of Rules and Regulations', 'MFO 2', '2017', '0000-00-00', NULL, NULL, 0),
(23, '', 'MFO 2', '2017', '0000-00-00', NULL, NULL, 0),
(24, 'Gass 1 TU TRI form', 'General Administrative Services', '2020', '2019-11-26', NULL, NULL, 1),
(25, 'Gass 2', 'General Administrative Services', '2020', '2019-11-26', NULL, NULL, 0),
(26, 'MFO 1 Act 1', 'MFO 1', '2020', '2019-11-26', NULL, NULL, 0),
(27, 'MFO 1 Act 2', 'MFO 1', '2020', '2019-11-26', NULL, NULL, 0),
(28, 'MFO 1 Act 3', 'MFO 1', '2020', '2019-11-26', NULL, NULL, 0),
(29, 'MFO 2 Act 1', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(30, 'MFO 2 Act 2', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(31, 'mfo 2 activ', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(32, 'mfo 2 gawa', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(33, 'mfo 2 gawa 2', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(34, 'mfo2 title ulit', 'MFO 2', '2020', '2019-11-26', NULL, NULL, 0),
(35, 'ECAN Map Updating', 'MFO 1', '2021', '2020-10-23', NULL, NULL, 0),
(36, 'ECAN Map Updating', 'MFO 1', '2020', '2020-10-23', NULL, NULL, 0),
(37, 'Sample only', 'Advocacy, Communications and Education', '2021', '2020-10-30', NULL, NULL, 0);

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
  `date_encoded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlytarget`
--

INSERT INTO `monthlytarget` (`monthlytargetID`, `idindicators`, `month`, `target`, `deadline`, `date_encoded`) VALUES
(217, 28, 1, '1', '0000-00-00', '0000-00-00'),
(218, 28, 2, '1', '0000-00-00', '0000-00-00'),
(219, 28, 3, '1', '0000-00-00', '0000-00-00'),
(220, 28, 4, '1', '0000-00-00', '0000-00-00'),
(221, 28, 5, '1', '0000-00-00', '0000-00-00'),
(222, 28, 6, '1', '0000-00-00', '0000-00-00'),
(223, 28, 7, '1', '0000-00-00', '0000-00-00'),
(224, 28, 8, '1', '0000-00-00', '0000-00-00'),
(225, 28, 9, '1', '0000-00-00', '0000-00-00'),
(226, 28, 10, '1', '0000-00-00', '0000-00-00'),
(227, 28, 11, '1', '0000-00-00', '0000-00-00'),
(228, 28, 12, '1', '0000-00-00', '0000-00-00'),
(229, 29, 1, '8.33', '0000-00-00', '0000-00-00'),
(230, 29, 2, '8.33', '0000-00-00', '0000-00-00'),
(231, 29, 3, '8.33', '0000-00-00', '0000-00-00'),
(232, 29, 4, '8.33', '0000-00-00', '0000-00-00'),
(233, 29, 5, '8.33', '0000-00-00', '0000-00-00'),
(234, 29, 6, '8.33', '0000-00-00', '0000-00-00'),
(235, 29, 7, '8.33', '0000-00-00', '0000-00-00'),
(236, 29, 8, '8.33', '0000-00-00', '0000-00-00'),
(237, 29, 9, '8.33', '0000-00-00', '0000-00-00'),
(238, 29, 10, '8.33', '0000-00-00', '0000-00-00'),
(239, 29, 11, '8.33', '0000-00-00', '0000-00-00'),
(240, 29, 12, '8.33', '0000-00-00', '0000-00-00'),
(241, 30, 1, '2', '0000-00-00', '0000-00-00'),
(242, 30, 2, '2', '0000-00-00', '0000-00-00'),
(243, 30, 3, '2', '0000-00-00', '0000-00-00'),
(244, 30, 4, '2', '0000-00-00', '0000-00-00'),
(245, 30, 5, '2', '0000-00-00', '0000-00-00'),
(246, 30, 6, '2', '0000-00-00', '0000-00-00'),
(247, 30, 7, '2', '0000-00-00', '0000-00-00'),
(248, 30, 8, '2', '0000-00-00', '0000-00-00'),
(249, 30, 9, '2', '0000-00-00', '0000-00-00'),
(250, 30, 10, '2', '0000-00-00', '0000-00-00'),
(251, 30, 11, '1', '0000-00-00', '0000-00-00'),
(252, 30, 12, '0', '0000-00-00', '0000-00-00'),
(253, 31, 1, '0', '0000-00-00', '0000-00-00'),
(254, 31, 2, '0', '0000-00-00', '0000-00-00'),
(255, 31, 3, '0', '0000-00-00', '0000-00-00'),
(256, 31, 4, '0', '0000-00-00', '0000-00-00'),
(257, 31, 5, '0', '0000-00-00', '0000-00-00'),
(258, 31, 6, '0', '0000-00-00', '0000-00-00'),
(259, 31, 7, '0', '0000-00-00', '0000-00-00'),
(260, 31, 8, '0', '0000-00-00', '0000-00-00'),
(261, 31, 9, '0', '0000-00-00', '0000-00-00'),
(262, 31, 10, '0', '0000-00-00', '0000-00-00'),
(263, 31, 11, '0', '0000-00-00', '0000-00-00'),
(264, 31, 12, '0', '0000-00-00', '0000-00-00'),
(265, 32, 1, '0', '0000-00-00', '0000-00-00'),
(266, 32, 2, '0', '0000-00-00', '0000-00-00'),
(267, 32, 3, '0', '0000-00-00', '0000-00-00'),
(268, 32, 4, '0', '0000-00-00', '0000-00-00'),
(269, 32, 5, '0', '0000-00-00', '0000-00-00'),
(270, 32, 6, '0', '0000-00-00', '0000-00-00'),
(271, 32, 7, '0', '0000-00-00', '0000-00-00'),
(272, 32, 8, '0', '0000-00-00', '0000-00-00'),
(273, 32, 9, '0', '0000-00-00', '0000-00-00'),
(274, 32, 10, '0', '0000-00-00', '0000-00-00'),
(275, 32, 11, '0', '0000-00-00', '0000-00-00'),
(276, 32, 12, '0', '0000-00-00', '0000-00-00'),
(277, 33, 1, '20', '0000-00-00', '0000-00-00'),
(278, 33, 2, '20', '0000-00-00', '0000-00-00'),
(279, 33, 3, '20', '0000-00-00', '0000-00-00'),
(280, 33, 4, '20', '0000-00-00', '0000-00-00'),
(281, 33, 5, '20', '0000-00-00', '0000-00-00'),
(282, 33, 6, '25', '0000-00-00', '0000-00-00'),
(283, 33, 7, '26', '0000-00-00', '0000-00-00'),
(284, 33, 8, '25', '0000-00-00', '0000-00-00'),
(285, 33, 9, '0', '0000-00-00', '0000-00-00'),
(286, 33, 10, '0', '0000-00-00', '0000-00-00'),
(287, 33, 11, '0', '0000-00-00', '0000-00-00'),
(288, 33, 12, '0', '0000-00-00', '0000-00-00'),
(289, 34, 1, '0', '0000-00-00', '0000-00-00'),
(290, 34, 2, '0', '0000-00-00', '0000-00-00'),
(291, 34, 3, '0', '0000-00-00', '0000-00-00'),
(292, 34, 4, '0', '0000-00-00', '0000-00-00'),
(293, 34, 5, '0', '0000-00-00', '0000-00-00'),
(294, 34, 6, '0', '0000-00-00', '0000-00-00'),
(295, 34, 7, '0', '0000-00-00', '0000-00-00'),
(296, 34, 8, '0', '0000-00-00', '0000-00-00'),
(297, 34, 9, '0', '0000-00-00', '0000-00-00'),
(298, 34, 10, '0', '0000-00-00', '0000-00-00'),
(299, 34, 11, '0', '0000-00-00', '0000-00-00'),
(300, 34, 12, '0', '0000-00-00', '0000-00-00'),
(301, 35, 1, '0', '0000-00-00', '0000-00-00'),
(302, 35, 2, '0', '0000-00-00', '0000-00-00'),
(303, 35, 3, '0', '0000-00-00', '0000-00-00'),
(304, 35, 4, '0', '0000-00-00', '0000-00-00'),
(305, 35, 5, '0', '0000-00-00', '0000-00-00'),
(306, 35, 6, '0', '0000-00-00', '0000-00-00'),
(307, 35, 7, '0', '0000-00-00', '0000-00-00'),
(308, 35, 8, '0', '0000-00-00', '0000-00-00'),
(309, 35, 9, '0', '0000-00-00', '0000-00-00'),
(310, 35, 10, '0', '0000-00-00', '0000-00-00'),
(311, 35, 11, '0', '0000-00-00', '0000-00-00'),
(312, 35, 12, '0', '0000-00-00', '0000-00-00'),
(313, 36, 1, '0', '0000-00-00', '0000-00-00'),
(314, 36, 2, '19', '0000-00-00', '0000-00-00'),
(315, 36, 3, '19', '0000-00-00', '0000-00-00'),
(316, 36, 4, '19', '0000-00-00', '0000-00-00'),
(317, 36, 5, '19', '0000-00-00', '0000-00-00'),
(318, 36, 6, '19', '0000-00-00', '0000-00-00'),
(319, 36, 7, '19', '0000-00-00', '0000-00-00'),
(320, 36, 8, '19', '0000-00-00', '0000-00-00'),
(321, 36, 9, '19', '0000-00-00', '0000-00-00'),
(322, 36, 10, '19', '0000-00-00', '0000-00-00'),
(323, 36, 11, '19', '0000-00-00', '0000-00-00'),
(324, 36, 12, '10', '0000-00-00', '0000-00-00'),
(325, 37, 1, '0', '0000-00-00', '0000-00-00'),
(326, 37, 2, '0', '0000-00-00', '0000-00-00'),
(327, 37, 3, '0', '0000-00-00', '0000-00-00'),
(328, 37, 4, '0', '0000-00-00', '0000-00-00'),
(329, 37, 5, '0', '0000-00-00', '0000-00-00'),
(330, 37, 6, '0', '0000-00-00', '0000-00-00'),
(331, 37, 7, '0', '0000-00-00', '0000-00-00'),
(332, 37, 8, '0', '0000-00-00', '0000-00-00'),
(333, 37, 9, '0', '0000-00-00', '0000-00-00'),
(334, 37, 10, '0', '0000-00-00', '0000-00-00'),
(335, 37, 11, '0', '0000-00-00', '0000-00-00'),
(336, 37, 12, '0', '0000-00-00', '0000-00-00'),
(337, 38, 1, '0', '0000-00-00', '0000-00-00'),
(338, 38, 2, '0', '0000-00-00', '0000-00-00'),
(339, 38, 3, '0', '0000-00-00', '0000-00-00'),
(340, 38, 4, '0', '0000-00-00', '0000-00-00'),
(341, 38, 5, '0', '0000-00-00', '0000-00-00'),
(342, 38, 6, '0', '0000-00-00', '0000-00-00'),
(343, 38, 7, '0', '0000-00-00', '0000-00-00'),
(344, 38, 8, '0', '0000-00-00', '0000-00-00'),
(345, 38, 9, '0', '0000-00-00', '0000-00-00'),
(346, 38, 10, '0', '0000-00-00', '0000-00-00'),
(347, 38, 11, '0', '0000-00-00', '0000-00-00'),
(348, 38, 12, '0', '0000-00-00', '0000-00-00'),
(349, 39, 1, '0', '0000-00-00', '0000-00-00'),
(350, 39, 2, '1', '0000-00-00', '0000-00-00'),
(351, 39, 3, '1', '0000-00-00', '0000-00-00'),
(352, 39, 4, '1', '0000-00-00', '0000-00-00'),
(353, 39, 5, '1', '0000-00-00', '0000-00-00'),
(354, 39, 6, '1', '0000-00-00', '0000-00-00'),
(355, 39, 7, '1', '0000-00-00', '0000-00-00'),
(356, 39, 8, '1', '0000-00-00', '0000-00-00'),
(357, 39, 9, '1', '0000-00-00', '0000-00-00'),
(358, 39, 10, '1', '0000-00-00', '0000-00-00'),
(359, 39, 11, '1', '0000-00-00', '0000-00-00'),
(360, 39, 12, '0', '0000-00-00', '0000-00-00'),
(361, 40, 1, '0', '0000-00-00', '0000-00-00'),
(362, 40, 2, '0', '0000-00-00', '0000-00-00'),
(363, 40, 3, '0', '0000-00-00', '0000-00-00'),
(364, 40, 4, '0', '0000-00-00', '0000-00-00'),
(365, 40, 5, '0', '0000-00-00', '0000-00-00'),
(366, 40, 6, '0', '0000-00-00', '0000-00-00'),
(367, 40, 7, '0', '0000-00-00', '0000-00-00'),
(368, 40, 8, '0', '0000-00-00', '0000-00-00'),
(369, 40, 9, '0', '0000-00-00', '0000-00-00'),
(370, 40, 10, '0', '0000-00-00', '0000-00-00'),
(371, 40, 11, '0', '0000-00-00', '0000-00-00'),
(372, 40, 12, '0', '0000-00-00', '0000-00-00'),
(373, 41, 1, '0', '0000-00-00', '0000-00-00'),
(374, 41, 2, '0', '0000-00-00', '0000-00-00'),
(375, 41, 3, '0', '0000-00-00', '0000-00-00'),
(376, 41, 4, '0', '0000-00-00', '0000-00-00'),
(377, 41, 5, '0', '0000-00-00', '0000-00-00'),
(378, 41, 6, '0', '0000-00-00', '0000-00-00'),
(379, 41, 7, '0', '0000-00-00', '0000-00-00'),
(380, 41, 8, '0', '0000-00-00', '0000-00-00'),
(381, 41, 9, '0', '0000-00-00', '0000-00-00'),
(382, 41, 10, '0', '0000-00-00', '0000-00-00'),
(383, 41, 11, '0', '0000-00-00', '0000-00-00'),
(384, 41, 12, '0', '0000-00-00', '0000-00-00'),
(385, 42, 1, '0', '0000-00-00', '0000-00-00'),
(386, 42, 2, '0', '0000-00-00', '0000-00-00'),
(387, 42, 3, '0', '0000-00-00', '0000-00-00'),
(388, 42, 4, '0', '0000-00-00', '0000-00-00'),
(389, 42, 5, '0', '0000-00-00', '0000-00-00'),
(390, 42, 6, '0', '0000-00-00', '0000-00-00'),
(391, 42, 7, '0', '0000-00-00', '0000-00-00'),
(392, 42, 8, '0', '0000-00-00', '0000-00-00'),
(393, 42, 9, '0', '0000-00-00', '0000-00-00'),
(394, 42, 10, '0', '0000-00-00', '0000-00-00'),
(395, 42, 11, '0', '0000-00-00', '0000-00-00'),
(396, 42, 12, '0', '0000-00-00', '0000-00-00'),
(397, 42, 1, '1', '0000-00-00', '0000-00-00'),
(398, 42, 2, '1', '0000-00-00', '0000-00-00'),
(399, 42, 3, '1', '0000-00-00', '0000-00-00'),
(400, 42, 4, '1', '0000-00-00', '0000-00-00'),
(401, 42, 5, '1', '0000-00-00', '0000-00-00'),
(402, 42, 6, '1', '0000-00-00', '0000-00-00'),
(403, 42, 7, '1', '0000-00-00', '0000-00-00'),
(404, 42, 8, '1', '0000-00-00', '0000-00-00'),
(405, 42, 9, '1', '0000-00-00', '0000-00-00'),
(406, 42, 10, '1', '0000-00-00', '0000-00-00'),
(407, 42, 11, '1', '0000-00-00', '0000-00-00'),
(408, 42, 12, '1', '0000-00-00', '0000-00-00'),
(409, 43, 1, '8.3', '0000-00-00', '0000-00-00'),
(410, 43, 2, '8.3', '0000-00-00', '0000-00-00'),
(411, 43, 3, '8.3', '0000-00-00', '0000-00-00'),
(412, 43, 4, '8.3', '0000-00-00', '0000-00-00'),
(413, 43, 5, '8.3', '0000-00-00', '0000-00-00'),
(414, 43, 6, '8.3', '0000-00-00', '0000-00-00'),
(415, 43, 7, '8.3', '0000-00-00', '0000-00-00'),
(416, 43, 8, '8.3', '0000-00-00', '0000-00-00'),
(417, 43, 9, '8.3', '0000-00-00', '0000-00-00'),
(418, 43, 10, '8.3', '0000-00-00', '0000-00-00'),
(419, 43, 11, '8.3', '0000-00-00', '0000-00-00'),
(420, 43, 12, '8.3', '0000-00-00', '0000-00-00'),
(421, 44, 1, '0', '0000-00-00', '0000-00-00'),
(422, 44, 2, '0', '0000-00-00', '0000-00-00'),
(423, 44, 3, '2', '0000-00-00', '0000-00-00'),
(424, 44, 4, '1', '0000-00-00', '0000-00-00'),
(425, 44, 5, '1', '0000-00-00', '0000-00-00'),
(426, 44, 6, '5', '0000-00-00', '0000-00-00'),
(427, 44, 7, '2', '0000-00-00', '0000-00-00'),
(428, 44, 8, '2', '0000-00-00', '0000-00-00'),
(429, 44, 9, '4', '0000-00-00', '0000-00-00'),
(430, 44, 10, '2', '0000-00-00', '0000-00-00'),
(431, 44, 11, '2', '0000-00-00', '0000-00-00'),
(432, 44, 12, '0', '0000-00-00', '0000-00-00'),
(433, 45, 1, '0', '0000-00-00', '0000-00-00'),
(434, 45, 2, '0', '0000-00-00', '0000-00-00'),
(435, 45, 3, '0', '0000-00-00', '0000-00-00'),
(436, 45, 4, '0', '0000-00-00', '0000-00-00'),
(437, 45, 5, '0', '0000-00-00', '0000-00-00'),
(438, 45, 6, '0', '0000-00-00', '0000-00-00'),
(439, 45, 7, '0', '0000-00-00', '0000-00-00'),
(440, 45, 8, '0', '0000-00-00', '0000-00-00'),
(441, 45, 9, '0', '0000-00-00', '0000-00-00'),
(442, 45, 10, '0', '0000-00-00', '0000-00-00'),
(443, 45, 11, '0', '0000-00-00', '0000-00-00'),
(444, 45, 12, '69', '0000-00-00', '0000-00-00'),
(445, 46, 1, '0', '0000-00-00', '0000-00-00'),
(446, 46, 2, '0', '0000-00-00', '0000-00-00'),
(447, 46, 3, '0', '0000-00-00', '0000-00-00'),
(448, 46, 4, '0', '0000-00-00', '0000-00-00'),
(449, 46, 5, '0', '0000-00-00', '0000-00-00'),
(450, 46, 6, '2', '0000-00-00', '0000-00-00'),
(451, 46, 7, '0', '0000-00-00', '0000-00-00'),
(452, 46, 8, '0', '0000-00-00', '0000-00-00'),
(453, 46, 9, '0', '0000-00-00', '0000-00-00'),
(454, 46, 10, '0', '0000-00-00', '0000-00-00'),
(455, 46, 11, '0', '0000-00-00', '0000-00-00'),
(456, 46, 12, '2', '0000-00-00', '0000-00-00'),
(457, 47, 1, '14', '0000-00-00', '0000-00-00'),
(458, 47, 2, '16', '0000-00-00', '0000-00-00'),
(459, 47, 3, '16', '0000-00-00', '0000-00-00'),
(460, 47, 4, '18', '0000-00-00', '0000-00-00'),
(461, 47, 5, '18', '0000-00-00', '0000-00-00'),
(462, 47, 6, '18', '0000-00-00', '0000-00-00'),
(463, 47, 7, '18', '0000-00-00', '0000-00-00'),
(464, 47, 8, '18', '0000-00-00', '0000-00-00'),
(465, 47, 9, '18', '0000-00-00', '0000-00-00'),
(466, 47, 10, '16', '0000-00-00', '0000-00-00'),
(467, 47, 11, '16', '0000-00-00', '0000-00-00'),
(468, 47, 12, '14', '0000-00-00', '0000-00-00'),
(469, 48, 1, '0', '0000-00-00', '0000-00-00'),
(470, 48, 2, '0', '0000-00-00', '0000-00-00'),
(471, 48, 3, '0', '0000-00-00', '0000-00-00'),
(472, 48, 4, '0', '0000-00-00', '0000-00-00'),
(473, 48, 5, '0', '0000-00-00', '0000-00-00'),
(474, 48, 6, '0', '0000-00-00', '0000-00-00'),
(475, 48, 7, '0', '0000-00-00', '0000-00-00'),
(476, 48, 8, '0', '0000-00-00', '0000-00-00'),
(477, 48, 9, '0', '0000-00-00', '0000-00-00'),
(478, 48, 10, '0', '0000-00-00', '0000-00-00'),
(479, 48, 11, '0', '0000-00-00', '0000-00-00'),
(480, 48, 12, '10', '0000-00-00', '0000-00-00'),
(481, 49, 1, '0', '0000-00-00', '0000-00-00'),
(482, 49, 2, '0', '0000-00-00', '0000-00-00'),
(483, 49, 3, '0', '0000-00-00', '0000-00-00'),
(484, 49, 4, '0', '0000-00-00', '0000-00-00'),
(485, 49, 5, '0', '0000-00-00', '0000-00-00'),
(486, 49, 6, '0', '0000-00-00', '0000-00-00'),
(487, 49, 7, '0', '0000-00-00', '0000-00-00'),
(488, 49, 8, '0', '0000-00-00', '0000-00-00'),
(489, 49, 9, '0', '0000-00-00', '0000-00-00'),
(490, 49, 10, '0', '0000-00-00', '0000-00-00'),
(491, 49, 11, '0', '0000-00-00', '0000-00-00'),
(492, 49, 12, '96', '0000-00-00', '0000-00-00'),
(493, 50, 1, '14', '0000-00-00', '0000-00-00'),
(494, 50, 2, '16', '0000-00-00', '0000-00-00'),
(495, 50, 3, '16', '0000-00-00', '0000-00-00'),
(496, 50, 4, '18', '0000-00-00', '0000-00-00'),
(497, 50, 5, '18', '0000-00-00', '0000-00-00'),
(498, 50, 6, '18', '0000-00-00', '0000-00-00'),
(499, 50, 7, '18', '0000-00-00', '0000-00-00'),
(500, 50, 8, '18', '0000-00-00', '0000-00-00'),
(501, 50, 9, '18', '0000-00-00', '0000-00-00'),
(502, 50, 10, '16', '0000-00-00', '0000-00-00'),
(503, 50, 11, '16', '0000-00-00', '0000-00-00'),
(504, 50, 12, '14', '0000-00-00', '0000-00-00'),
(505, 51, 1, '0', '0000-00-00', '0000-00-00'),
(506, 51, 2, '0', '0000-00-00', '0000-00-00'),
(507, 51, 3, '0', '0000-00-00', '0000-00-00'),
(508, 51, 4, '0', '0000-00-00', '0000-00-00'),
(509, 51, 5, '0', '0000-00-00', '0000-00-00'),
(510, 51, 6, '0', '0000-00-00', '0000-00-00'),
(511, 51, 7, '0', '0000-00-00', '0000-00-00'),
(512, 51, 8, '0', '0000-00-00', '0000-00-00'),
(513, 51, 9, '0', '0000-00-00', '0000-00-00'),
(514, 51, 10, '0', '0000-00-00', '0000-00-00'),
(515, 51, 11, '0', '0000-00-00', '0000-00-00'),
(516, 51, 12, '10', '0000-00-00', '0000-00-00'),
(517, 52, 1, '0', '0000-00-00', '0000-00-00'),
(518, 52, 2, '0', '0000-00-00', '0000-00-00'),
(519, 52, 3, '0', '0000-00-00', '0000-00-00'),
(520, 52, 4, '0', '0000-00-00', '0000-00-00'),
(521, 52, 5, '0', '0000-00-00', '0000-00-00'),
(522, 52, 6, '0', '0000-00-00', '0000-00-00'),
(523, 52, 7, '0', '0000-00-00', '0000-00-00'),
(524, 52, 8, '0', '0000-00-00', '0000-00-00'),
(525, 52, 9, '0', '0000-00-00', '0000-00-00'),
(526, 52, 10, '0', '0000-00-00', '0000-00-00'),
(527, 52, 11, '0', '0000-00-00', '0000-00-00'),
(528, 52, 12, '90', '0000-00-00', '0000-00-00'),
(529, 53, 1, '2', '0000-00-00', '0000-00-00'),
(530, 53, 2, '2', '0000-00-00', '0000-00-00'),
(531, 53, 3, '3', '0000-00-00', '0000-00-00'),
(532, 53, 4, '2', '0000-00-00', '0000-00-00'),
(533, 53, 5, '3', '0000-00-00', '0000-00-00'),
(534, 53, 6, '3', '0000-00-00', '0000-00-00'),
(535, 53, 7, '3', '0000-00-00', '0000-00-00'),
(536, 53, 8, '3', '0000-00-00', '0000-00-00'),
(537, 53, 9, '2', '0000-00-00', '0000-00-00'),
(538, 53, 10, '3', '0000-00-00', '0000-00-00'),
(539, 53, 11, '2', '0000-00-00', '0000-00-00'),
(540, 53, 12, '2', '0000-00-00', '0000-00-00'),
(541, 54, 1, '0', '0000-00-00', '0000-00-00'),
(542, 54, 2, '0', '0000-00-00', '0000-00-00'),
(543, 54, 3, '0', '0000-00-00', '0000-00-00'),
(544, 54, 4, '0', '0000-00-00', '0000-00-00'),
(545, 54, 5, '0', '0000-00-00', '0000-00-00'),
(546, 54, 6, '0', '0000-00-00', '0000-00-00'),
(547, 54, 7, '0', '0000-00-00', '0000-00-00'),
(548, 54, 8, '0', '0000-00-00', '0000-00-00'),
(549, 54, 9, '0', '0000-00-00', '0000-00-00'),
(550, 54, 10, '0', '0000-00-00', '0000-00-00'),
(551, 54, 11, '0', '0000-00-00', '0000-00-00'),
(552, 54, 12, '2', '0000-00-00', '0000-00-00'),
(553, 55, 1, '0', '0000-00-00', '0000-00-00'),
(554, 55, 2, '0', '0000-00-00', '0000-00-00'),
(555, 55, 3, '0', '0000-00-00', '0000-00-00'),
(556, 55, 4, '0', '0000-00-00', '0000-00-00'),
(557, 55, 5, '0', '0000-00-00', '0000-00-00'),
(558, 55, 6, '0', '0000-00-00', '0000-00-00'),
(559, 55, 7, '0', '0000-00-00', '0000-00-00'),
(560, 55, 8, '0', '0000-00-00', '0000-00-00'),
(561, 55, 9, '0', '0000-00-00', '0000-00-00'),
(562, 55, 10, '0', '0000-00-00', '0000-00-00'),
(563, 55, 11, '0', '0000-00-00', '0000-00-00'),
(564, 55, 12, '85', '0000-00-00', '0000-00-00'),
(565, 84, 1, '1', '0000-00-00', '2019-11-27'),
(566, 84, 2, '2', '0000-00-00', '2019-11-27'),
(567, 84, 3, '3', '0000-00-00', '2019-11-27'),
(568, 84, 4, '4', '0000-00-00', '2019-11-27'),
(569, 84, 5, '5', '0000-00-00', '2019-11-27'),
(570, 84, 6, '6', '0000-00-00', '2019-11-27'),
(571, 84, 7, '7', '0000-00-00', '2019-11-27'),
(572, 84, 8, '8', '0000-00-00', '2019-11-27'),
(573, 84, 9, '9', '0000-00-00', '2019-11-27'),
(574, 84, 10, '10', '0000-00-00', '2019-11-27'),
(575, 84, 11, '11', '0000-00-00', '2019-11-27'),
(576, 84, 12, '12', '0000-00-00', '2019-11-27'),
(577, 85, 1, '12', '0000-00-00', '2019-11-27'),
(578, 85, 2, '11', '0000-00-00', '2019-11-27'),
(579, 85, 3, '10', '0000-00-00', '2019-11-27'),
(580, 85, 4, '9', '0000-00-00', '2019-11-27'),
(581, 85, 5, '8', '0000-00-00', '2019-11-27'),
(582, 85, 6, '7', '0000-00-00', '2019-11-27'),
(583, 85, 7, '6', '0000-00-00', '2019-11-27'),
(584, 85, 8, '5', '0000-00-00', '2019-11-27'),
(585, 85, 9, '4', '0000-00-00', '2019-11-27'),
(586, 85, 10, '3', '0000-00-00', '2019-11-27'),
(587, 85, 11, '2', '0000-00-00', '2019-11-27'),
(588, 85, 12, '1', '0000-00-00', '2019-11-27'),
(589, 86, 1, '1', '0000-00-00', '2020-01-15'),
(590, 86, 2, '2', '0000-00-00', '2020-01-15'),
(591, 86, 3, '3', '0000-00-00', '2020-01-15'),
(592, 86, 4, '4', '0000-00-00', '2020-01-15'),
(593, 86, 5, '5', '0000-00-00', '2020-01-15'),
(594, 86, 6, '6', '0000-00-00', '2020-01-15'),
(595, 86, 7, '7', '0000-00-00', '2020-01-15'),
(596, 86, 8, '8', '0000-00-00', '2020-01-15'),
(597, 86, 9, '9', '0000-00-00', '2020-01-15'),
(598, 86, 10, '10', '0000-00-00', '2020-01-15'),
(599, 86, 11, '11', '0000-00-00', '2020-01-15'),
(600, 86, 12, '12', '0000-00-00', '2020-01-15'),
(601, 87, 1, '0', '0000-00-00', '2020-10-23'),
(602, 87, 2, '0', '0000-00-00', '2020-10-23'),
(603, 87, 3, '0', '0000-00-00', '2020-10-23'),
(604, 87, 6, '1', '0000-00-00', '2020-10-23'),
(605, 87, 4, '0', '0000-00-00', '2020-10-23'),
(606, 87, 5, '0', '0000-00-00', '2020-10-23'),
(607, 87, 9, '2', '0000-00-00', '2020-10-23'),
(608, 87, 11, '1', '0000-00-00', '2020-10-23'),
(609, 87, 7, '0', '0000-00-00', '2020-10-23'),
(610, 87, 8, '0', '0000-00-00', '2020-10-23'),
(611, 87, 10, '0', '0000-00-00', '2020-10-23'),
(612, 87, 12, '0', '0000-00-00', '2020-10-23'),
(613, 88, 6, '1', '0000-00-00', '2020-10-23'),
(614, 88, 12, '1', '0000-00-00', '2020-10-23'),
(615, 88, 1, '0', '0000-00-00', '2020-10-23'),
(616, 88, 2, '0', '0000-00-00', '2020-10-23'),
(617, 88, 3, '0', '0000-00-00', '2020-10-23'),
(618, 88, 4, '0', '0000-00-00', '2020-10-23'),
(619, 88, 5, '0', '0000-00-00', '2020-10-23'),
(620, 88, 7, '0', '0000-00-00', '2020-10-23'),
(621, 88, 8, '0', '0000-00-00', '2020-10-23'),
(622, 88, 9, '0', '0000-00-00', '2020-10-23'),
(623, 88, 10, '0', '0000-00-00', '2020-10-23'),
(624, 88, 11, '0', '0000-00-00', '2020-10-23'),
(625, 89, 1, '1', '0000-00-00', '2020-11-09'),
(626, 90, 1, '1', '0000-00-00', '2020-11-09'),
(627, 91, 1, '1', '2020-11-09', '2020-11-09'),
(628, 91, 2, '2', '0000-00-00', '2020-11-09'),
(630, 92, 1, '1', '2020-11-10', '2020-11-09'),
(631, 92, 2, '2', '0000-00-00', '2020-11-09'),
(632, 92, 2, '2020-10-13T16:00:00.000Z', '0000-00-00', '2020-11-09'),
(633, 93, 1, '1', '2020-10-31', '2020-11-09'),
(634, 93, 2, '2', '2020-11-01', '2020-11-09'),
(635, 93, 3, '3', '2020-11-02', '2020-11-09'),
(636, 93, 4, '', '0000-00-00', '2020-11-09'),
(637, 93, 5, '5', '2020-11-04', '2020-11-09'),
(638, 93, 6, '6', '2020-11-05', '2020-11-09'),
(639, 93, 7, '7', '2020-11-06', '2020-11-09'),
(640, 93, 8, '8', '2020-11-07', '2020-11-09'),
(641, 93, 9, '9', '2020-11-08', '2020-11-09'),
(642, 93, 10, '10', '2020-11-09', '2020-11-09'),
(643, 93, 11, '11', '2020-11-10', '2020-11-09'),
(644, 93, 12, '12', '2020-11-11', '2020-11-09'),
(645, 94, 2, '2', '0000-00-00', '2020-11-09'),
(646, 94, 4, '4', '0000-00-00', '2020-11-09'),
(647, 95, 2, '2', '2020-11-03', '2020-11-09'),
(648, 95, 4, '4', '2020-11-05', '2020-11-09'),
(649, 95, 5, '5', '2020-11-06', '2020-11-09'),
(650, 96, 2, '2', '2020-11-02', '2020-11-09'),
(651, 96, 4, '4', '2020-11-04', '2020-11-09'),
(652, 96, 5, '5', '2020-11-05', '2020-11-09'),
(653, 97, 3, '1', '0000-00-00', '2020-11-09'),
(654, 98, 1, '0', '2020-11-01', '2020-11-10'),
(655, 98, 2, '0', '2020-11-02', '2020-11-10'),
(656, 98, 3, '0', '0000-00-00', '2020-11-10'),
(657, 98, 4, '0', '2020-11-04', '2020-11-10'),
(658, 98, 5, '0', '0000-00-00', '2020-11-10'),
(659, 98, 6, '0', '0000-00-00', '2020-11-10'),
(660, 98, 7, '0', '0000-00-00', '2020-11-10'),
(661, 98, 8, '0', '0000-00-00', '2020-11-10'),
(662, 98, 9, '0', '0000-00-00', '2020-11-10'),
(663, 98, 10, '0', '0000-00-00', '2020-11-10'),
(664, 98, 11, '0', '0000-00-00', '2020-11-10'),
(665, 98, 12, '0', '0000-00-00', '2020-11-10'),
(666, 99, 1, '0', '2020-11-01', '2020-11-10'),
(667, 99, 2, '0', '2020-11-02', '2020-11-10'),
(668, 99, 3, '0', '0000-00-00', '2020-11-10'),
(669, 99, 4, '0', '2020-11-04', '2020-11-10'),
(670, 99, 5, '0', '0000-00-00', '2020-11-10'),
(671, 99, 6, '0', '0000-00-00', '2020-11-10'),
(672, 99, 7, '0', '0000-00-00', '2020-11-10'),
(673, 99, 8, '0', '0000-00-00', '2020-11-10'),
(674, 99, 9, '0', '0000-00-00', '2020-11-10'),
(675, 99, 10, '0', '0000-00-00', '2020-11-10'),
(676, 99, 11, '0', '0000-00-00', '2020-11-10'),
(677, 99, 12, '0', '0000-00-00', '2020-11-10'),
(678, 100, 1, '2', '2020-11-02', '2020-11-10'),
(679, 100, 2, '4', '2020-11-04', '2020-11-10'),
(680, 100, 3, '0', '0000-00-00', '2020-11-10'),
(681, 100, 4, '0', '0000-00-00', '2020-11-10'),
(682, 100, 5, '0', '0000-00-00', '2020-11-10'),
(683, 100, 6, '0', '0000-00-00', '2020-11-10'),
(684, 100, 7, '0', '0000-00-00', '2020-11-10'),
(685, 100, 8, '0', '0000-00-00', '2020-11-10'),
(686, 100, 9, '0', '0000-00-00', '2020-11-10'),
(687, 100, 10, '0', '0000-00-00', '2020-11-10'),
(688, 100, 11, '0', '0000-00-00', '2020-11-10'),
(689, 100, 12, '0', '0000-00-00', '2020-11-10'),
(690, 101, 1, '0', '2020-11-02', '2020-11-10'),
(691, 101, 2, '4', '2020-11-04', '2020-11-10'),
(692, 101, 3, '0', '0000-00-00', '2020-11-10'),
(693, 101, 4, '6', '2020-11-06', '2020-11-10'),
(694, 101, 5, '0', '0000-00-00', '2020-11-10'),
(695, 101, 6, '0', '0000-00-00', '2020-11-10'),
(696, 101, 7, '0', '0000-00-00', '2020-11-10'),
(697, 101, 8, '0', '0000-00-00', '2020-11-10'),
(698, 101, 9, '0', '0000-00-00', '2020-11-10'),
(699, 101, 10, '0', '0000-00-00', '2020-11-10'),
(700, 101, 11, '0', '0000-00-00', '2020-11-10'),
(701, 101, 12, '0', '0000-00-00', '2020-11-10'),
(702, 102, 1, '2', '2020-11-01', '2020-11-13'),
(703, 102, 2, '0', '0000-00-00', '2020-11-13'),
(704, 102, 3, '0', '0000-00-00', '2020-11-13'),
(705, 102, 4, '0', '0000-00-00', '2020-11-13'),
(706, 102, 5, '2', '2020-11-05', '2020-11-13'),
(707, 102, 6, '0', '0000-00-00', '2020-11-13'),
(708, 102, 7, '0', '0000-00-00', '2020-11-13'),
(709, 102, 8, '0', '0000-00-00', '2020-11-13'),
(710, 102, 9, '0', '0000-00-00', '2020-11-13'),
(711, 102, 10, '0', '0000-00-00', '2020-11-13'),
(712, 102, 11, '0', '0000-00-00', '2020-11-13'),
(713, 102, 12, '0', '0000-00-00', '2020-11-13'),
(714, 103, 1, '0', '0000-00-00', '2020-11-16'),
(715, 103, 2, '0', '0000-00-00', '2020-11-16'),
(716, 103, 3, '0', '0000-00-00', '2020-11-16'),
(717, 103, 4, '0', '0000-00-00', '2020-11-16'),
(718, 103, 5, '0', '0000-00-00', '2020-11-16'),
(719, 103, 6, '1', '2021-06-30', '2020-11-16'),
(720, 103, 7, '0', '0000-00-00', '2020-11-16'),
(721, 103, 8, '0', '0000-00-00', '2020-11-16'),
(722, 103, 9, '2', '2021-09-30', '2020-11-16'),
(723, 103, 10, '0', '0000-00-00', '2020-11-16'),
(724, 103, 11, '0', '0000-00-00', '2020-11-16'),
(725, 103, 12, '1', '2021-12-15', '2020-11-16'),
(726, 104, 1, '0', '0000-00-00', '2020-11-16'),
(727, 104, 2, '0', '0000-00-00', '2020-11-16'),
(728, 104, 3, '0', '0000-00-00', '2020-11-16'),
(729, 104, 4, '0', '0000-00-00', '2020-11-16'),
(730, 104, 5, '0', '0000-00-00', '2020-11-16'),
(731, 104, 6, '1', '2020-06-30', '2020-11-16'),
(732, 104, 7, '0', '0000-00-00', '2020-11-16'),
(733, 104, 8, '0', '0000-00-00', '2020-11-16'),
(734, 104, 9, '0', '0000-00-00', '2020-11-16'),
(735, 104, 10, '0', '0000-00-00', '2020-11-16'),
(736, 104, 11, '0', '0000-00-00', '2020-11-16'),
(737, 104, 12, '1', '2020-12-15', '2020-11-16'),
(762, 105, 1, '2', '2020-11-17', '2020-11-16'),
(763, 105, 2, '0', '0000-00-00', '2020-11-16'),
(764, 105, 3, '0', '0000-00-00', '2020-11-16'),
(765, 105, 4, '0', '0000-00-00', '2020-11-16'),
(766, 105, 5, '0', '0000-00-00', '2020-11-16'),
(767, 105, 6, '0', '0000-00-00', '2020-11-16'),
(768, 105, 7, '0', '0000-00-00', '2020-11-16'),
(769, 105, 8, '0', '0000-00-00', '2020-11-16'),
(770, 105, 9, '0', '0000-00-00', '2020-11-16'),
(771, 105, 10, '0', '0000-00-00', '2020-11-16'),
(772, 105, 11, '0', '0000-00-00', '2020-11-16'),
(773, 105, 12, '0', '0000-00-00', '2020-11-16');

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
(27664, 28, NULL, NULL, 'Number of Communities reached with IEC', '5', '12', '0.00', '0', '41.67', '-58.33', NULL, 2020, 'DBM,PBB', 'General Administrative Services', 'AFD'),
(27665, 56, NULL, NULL, 'Percentage of detected violations that are resolved or referred for prosecution within 7 days', '', '', '0.00', '56', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27666, 57, NULL, NULL, 'Number of persons and entities with 2 or more recorded violations in the last 3 years as a % of the total number of violations', '', '', '0.00', '44', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27667, 58, NULL, NULL, 'Number of potential violations and complaints acted upon and reports issued', '', '', '0.00', '44', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27668, 59, NULL, NULL, 'Average percentage of plans and policies reviewed over the last 2 years', '', '', '0.00', '44', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27669, 60, NULL, NULL, 'Percentage of establishments and facilities that have been inspected more than twice in 2 years', '', '', '0.00', '44', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27670, 64, NULL, NULL, 'hjkyjfghj', '', '', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27671, 65, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27672, 66, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27673, 67, NULL, NULL, 'jtjyrtj', '', '', '0.00', '67', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27674, 68, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27675, 69, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27676, 70, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27677, 71, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27678, 72, NULL, NULL, 'hrheher', '', '', '0.00', '65', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27679, 73, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27680, 74, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27681, 75, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27682, 76, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27683, 77, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27684, 78, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27685, 79, NULL, NULL, 'eqwe', '', '', '0.00', '43', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27686, 80, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27687, 81, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27688, 82, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27689, 83, NULL, NULL, 'tghrgnbf', '', '', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27690, 84, NULL, NULL, 'tghrgnbf', '', '78', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27691, 85, NULL, NULL, 'tghrgnbf', '', '78', '0.00', '45', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27692, 86, NULL, NULL, 'SAmple Title', '', '78', '0.00', '56', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27693, 88, NULL, NULL, 'Number of ECAN Maps updated', '', '2', '0.00', '35', '0.00', '-100.00', NULL, 2020, '', 'MFO 1', ''),
(27694, 100, NULL, NULL, 'title here 2', '', '6', '0.00', '23', '0.00', '-100.00', NULL, 2020, 'DENR,OPCR', 'MFO 1', 'EMED'),
(27695, 101, NULL, NULL, 'title here 2', '', '10', '0.00', '23', '0.00', '-100.00', NULL, 2020, 'DBM,OPCR', 'General Administrative Services', 'EMED'),
(27696, 102, NULL, NULL, 'SAMPOL', '', '4', '0.00', '23', '0.00', '-100.00', NULL, 2020, 'DBM,DENR', 'MFO 1', 'OED'),
(27697, 104, NULL, NULL, 'Number of ECAN Maps Updated 2', '1', '2', '0.00', '0', '50.00', '-50.00', NULL, 2020, 'DBM,DENR,OPCR', 'MFO 1', 'EPRPD');

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
(2620, 0, NULL, NULL, NULL, '146', '19', NULL, NULL, NULL, NULL, NULL, '1', 0),
(2621, 0, NULL, NULL, NULL, '0', '24', NULL, NULL, NULL, NULL, NULL, '2', 0),
(2622, 0, NULL, NULL, NULL, '0', '17', NULL, NULL, NULL, NULL, NULL, '3', 0),
(2623, 0, NULL, NULL, NULL, '0', '24', NULL, NULL, NULL, NULL, NULL, '4', 0),
(2624, 0, NULL, NULL, NULL, '0', '21', NULL, NULL, NULL, NULL, NULL, '5', 0),
(2625, 0, NULL, NULL, NULL, '2', '22', NULL, NULL, NULL, NULL, NULL, '6', 0),
(2626, 0, NULL, NULL, NULL, '0', '21', NULL, NULL, NULL, NULL, NULL, '7', 0),
(2627, 0, NULL, NULL, NULL, '17', '22', NULL, NULL, NULL, NULL, NULL, '8', 0),
(2628, 0, NULL, NULL, NULL, '1', '23', NULL, NULL, NULL, NULL, NULL, '9', 0),
(2629, 0, NULL, NULL, NULL, '143', '24', NULL, NULL, NULL, NULL, NULL, '10', 0),
(2630, 0, NULL, NULL, NULL, '0', '25', NULL, NULL, NULL, NULL, NULL, '11', 0),
(2631, 0, NULL, NULL, NULL, '0', '28', NULL, NULL, NULL, NULL, NULL, '12', 0);

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
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subactivities`
--

INSERT INTO `subactivities` (`idsubactivities`, `idMainActivities`, `Title`, `Division`, `date_encoded`, `deleted`) VALUES
(48, 15, 'Reach Communities with IEC', '', '', 0),
(49, 15, 'Provide Administrative Support', '', '', 0),
(50, 16, 'Develop Plans and Policies', '', '', 0),
(51, 16, 'Rate the PCSD Policies', '', '', 0),
(52, 16, 'Review Plans and Policies', '', '', 0),
(59, 17, 'Issuance of Clearances', '', '', 0),
(60, 17, 'Monitoring', '', '', 0),
(61, 18, 'Enforcement', '', '', 0),
(62, 19, 'General Administration and Support Service', '', '', 0),
(63, 20, 'Plans and Policy Formulation', '', '', 0),
(64, 21, 'Issuance of Clearances', '', '', 0),
(65, 21, 'Monitoring', '', '', 0),
(66, 22, 'Enforcement', '', '', 0),
(67, 27, 'Plans and Policy Formulation', NULL, '2019-11-26 16:25:43', 0),
(68, 24, 'Monitoring', NULL, '2020-01-15 17:51:01', 0),
(69, 35, 'ECAN Map Updating', NULL, '2020-10-23 09:46:45', 0),
(70, 36, 'ECAN Map Updating', NULL, '2020-10-23 09:58:24', 0),
(71, 37, 'Sub sample', NULL, '2020-10-30 13:14:43', 0),
(72, 37, 'sample 2', NULL, '2020-10-30 13:19:32', 0);

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
  MODIFY `idaccomplished` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `idindicators` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `idMainActivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `mfotitle`
--
ALTER TABLE `mfotitle`
  MODIFY `idmfotitle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `monthlytarget`
--
ALTER TABLE `monthlytarget`
  MODIFY `monthlytargetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27698;

--
-- AUTO_INCREMENT for table `report_monthly`
--
ALTER TABLE `report_monthly`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2632;

--
-- AUTO_INCREMENT for table `subactivities`
--
ALTER TABLE `subactivities`
  MODIFY `idsubactivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2021 at 12:14 AM
-- Server version: 5.5.57-MariaDB
-- PHP Version: 5.6.38

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
(1, '4', 1, NULL, '5', '', 'ECAN Map_Dumaran.png', '2020-04-30', '2020-11-27', 'unconfirmed', ''),
(2, '9', 1, NULL, '5', '', 'PCSDS PFPR November 2020 (PMED Form)_FINAL.xlsx', '2020-01-03', '2021-01-20', 'declined', 'wrong'),
(3, '9', 1, NULL, '5', '', 'PCSDS PFPR November 2020 (PMED Form)_FINAL.xlsx', '2020-01-03', '2021-01-20', 'confirmed', ''),
(13, '12', 12, NULL, '5', '', 'FOI-SRI.xlsx', '2021-01-27', '2021-01-28', 'unconfirmed', ''),
(14, '8', 43, NULL, '5', '', 'pcsds_accounting_is Jan 14.zip', '2021-01-26', '2021-01-29', 'unconfirmed', ''),
(15, '8', 43, NULL, '5', '', 'pcsds_accounting_is Jan 14.zip', '2021-01-26', '2021-01-29', 'unconfirmed', ''),
(16, '8', 43, NULL, '5', '', 'pcsds_accounting_is Jan 14.zip', '2021-01-26', '2021-01-29', 'unconfirmed', ''),
(17, '7', 34, NULL, '5', '', 'pcsds_accounting_is Jan 14.sql', '2021-01-28', '2021-01-29', 'unconfirmed', ''),
(18, '10', 45, NULL, '5', '', 'pcsds_pms Jan 28 2021.sql', '2021-01-20', '2021-01-29', 'unconfirmed', ''),
(19, '10', 465, NULL, '5', '', 'pcsds_pms January 26 2021.sql', '2021-01-13', '2021-01-29', 'unconfirmed', ''),
(20, '12', 35, NULL, '5', '', 'book.sql', '2021-01-22', '2021-01-29', 'unconfirmed', ''),
(21, '10', 433, NULL, '5', '', '2020-FOI (1).xlsx', '2021-01-05', '2021-01-29', 'unconfirmed', ''),
(22, '8', 1, NULL, '5', '', '136131463_1008558932966415_7981184814825278387_n.jpg', '2021-01-07', '2021-01-29', 'unconfirmed', ''),
(23, '9', 1, NULL, '5', '', 'FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx', '2021-01-05', '2021-01-29', 'unconfirmed', ''),
(24, '9', 1, NULL, '5', '', 'FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx', '2021-01-05', '2021-01-29', 'unconfirmed', ''),
(25, '8', 1, NULL, '5', '', 'FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx', '2021-01-05', '2021-01-29', 'unconfirmed', ''),
(26, '8', 1, NULL, '5', '', 'FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx', '2021-01-14', '2021-01-29', 'unconfirmed', ''),
(27, '7', 3, NULL, '5', '', '2019-FOI-Reports (1).pdf', '2020-01-28', '2020-01-29', 'confirmed', 'Very Wrong'),
(28, '6', 1, NULL, '5', '', 'Notifications and Logs.png', '2021-02-02', '2021-02-03', 'unconfirmed', ''),
(29, '6', 3, NULL, '5', '', 'UpdatedPhysicalAccomplishmentperActivity.png', '2020-02-02', '2020-02-03', 'unconfirmed', ''),
(30, '8', 1, NULL, '5', '', '2019-FOI-Reports (1).pdf', '2020-01-30', '2021-02-03', 'confirmed', '');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `audit_trail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User ID from hris',
  `name_user` varchar(45) NOT NULL COMMENT 'User Name from hris',
  `trans_type` varchar(45) NOT NULL COMMENT 'Transaction Type',
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`audit_trail_id`, `user_id`, `name_user`, `trans_type`, `transaction_date`, `transaction_details`) VALUES
(1, 5, '', 'save Accomplishment', '2021-01-27 16:00:00', ''),
(2, 5, '', 'save Accomplishment', '2021-01-27 16:00:00', ''),
(3, 5, '', 'save Accomplishment', '2021-01-27 16:00:00', ''),
(4, 5, '', 'save Accomplishment', '2021-01-27 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(3,6,,5,download (3).xls,2021-01-20,2021-01-28 15:43:34)'),
(5, 1, '', 'Create Main Activity', '2021-01-27 16:00:00', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(GAS,General Administrative Services,2021,2021-01-28 16:03:41)'),
(6, 1, '', 'Create Main Activity', '2021-01-27 16:00:00', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(QWERTy,General Administrative Services,2021,2021-01-28 16:16:15)'),
(7, 0, '', 'Create Main Activity', '2021-01-27 16:00:00', ''),
(8, 0, '', 'Create Main Activity', '2021-01-27 16:00:00', ''),
(9, 1, '', 'Create Main Activity', '2021-01-27 16:00:00', ''),
(10, 1, '', 'Create Main Activity', '2021-01-27 16:00:00', ''),
(11, 1, '', 'Create Main Activity', '2021-01-27 16:00:00', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Subsub,4,2021-01-28 16:42:48)'),
(12, 1, '', 'Save SubActivity', '2021-01-27 16:00:00', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Subsub,4,2021-01-28 16:49:48)'),
(13, 5, '', 'Save Accomplishment', '2021-01-27 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(12,12,,5,FOI-SRI.xlsx,2021-01-27,2021-01-28 16:51:48)'),
(14, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(43,8,,5,pcsds_accounting_is Jan 14.zip,2021-01-26,2021-01-29 09:47:37)'),
(15, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(43,8,,5,pcsds_accounting_is Jan 14.zip,2021-01-26,2021-01-29 09:48:04)'),
(16, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(43,8,,5,pcsds_accounting_is Jan 14.zip,2021-01-26,2021-01-29 09:48:28)'),
(17, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(34,7,,5,pcsds_accounting_is Jan 14.sql,2021-01-28,2021-01-29 11:15:44)'),
(18, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(45,10,,5,pcsds_pms Jan 28 2021.sql,2021-01-20,2021-01-29 12:57:06)'),
(19, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(465,10,,5,pcsds_pms January 26 2021.sql,2021-01-13,2021-01-29 13:00:02)'),
(20, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(35,12,,5,book.sql,2021-01-22,2021-01-29 13:01:31)'),
(21, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(433,10,,5,2020-FOI (1).xlsx,2021-01-05,2021-01-29 13:02:23)'),
(22, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,8,,5,136131463_1008558932966415_7981184814825278387_n.jpg,2021-01-07,2021-01-29 13:03:27)'),
(23, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,9,,5,FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx,2021-01-05,2021-01-29 13:32:22)'),
(24, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,9,,5,FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx,2021-01-05,2021-01-29 13:32:34)'),
(25, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,8,,5,FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx,2021-01-05,2021-01-29 13:33:40)'),
(26, 5, '', 'Submitted Accomplishment', '2021-01-28 16:00:00', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,8,,5,FOI_Inventory_of_Information_PCSDS_FINAL2.xlsx,2021-01-14,2021-01-29 13:35:09)'),
(27, 5, '', 'Submitted Accomplishment', '2021-01-29 07:15:07', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(3,7,,5,2019-FOI-Reports (1).pdf,2021-01-28,2021-01-29 15:15:07)'),
(28, 5, '', 'Submitted Accomplishment', '2021-02-03 02:17:50', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,6,,5,Notifications and Logs.png,2021-02-02,2021-02-03 10:17:50)'),
(29, 5, '', 'Submitted Accomplishment', '2021-02-03 02:23:58', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(3,6,,5,Updated Physical Accomplishment per Activity.png,2021-02-02,2021-02-03 10:23:58)'),
(30, 5, '', 'Submitted Accomplishment', '2021-02-03 03:00:13', 'INSERT into accomplished\r\n(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) \r\n\r\nVALUES \r\n\r\n(1,8,,5,2019-FOI-Reports (1).pdf,2020-01-30,2021-02-03 11:00:13)'),
(31, 1, '', 'Declined Accomplishment Submission', '2021-02-04 16:45:18', 'UPDATE accomplished\r\n			SET confirmation_status	= declined,\r\n				decline_remarks = Very Wrong\r\n					WHERE  	idaccomplished = 27'),
(32, 1, '', 'Accepted Accomplishment Submission', '2021-02-04 16:52:01', 'UPDATE accomplished\r\n			SET confirmation_status	= confirmed\r\n					WHERE  	idaccomplished = 27'),
(33, 1, '', 'Save Main Activity', '2021-02-04 20:57:37', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Human Resources Management,General Administrative Services,2021,2021-02-04 20:57:37)'),
(34, 1, '', 'Save Main Activity', '2021-02-04 21:03:41', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Human Resources Development,General Administrative Services,2021,2021-02-04 21:03:41)'),
(35, 1, '', 'Save Main Activity', '2021-02-04 21:12:21', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Accounting,General Administrative Services,2021,2021-02-04 21:12:21)'),
(36, 1, '', 'Save Main Activity', '2021-02-04 21:13:26', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Property and Supply,General Administrative Services,2021,2021-02-04 21:13:26)'),
(37, 1, '', 'Save Main Activity', '2021-02-04 21:13:50', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Procurement,General Administrative Services,2021,2021-02-04 21:13:50)'),
(38, 1, '', 'Save Main Activity', '2021-02-04 21:14:09', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(General services,General Administrative Services,2021,2021-02-04 21:14:09)'),
(39, 1, '', 'Save Main Activity', '2021-02-04 21:14:29', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Information Technology,General Administrative Services,2021,2021-02-04 21:14:29)'),
(40, 1, '', 'Save SubActivity', '2021-02-04 21:18:53', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Facilitation of ISO Certification (QMS),4,2021-02-04 21:18:53)'),
(41, 1, '', 'Save SubActivity', '2021-02-04 21:25:04', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Staffing Pattern, Organizational structure,4,2021-02-04 21:25:04)'),
(42, 1, '', 'Save SubActivity', '2021-02-04 21:25:23', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Payroll and remittances to GSIS, PhilHealth & HDMF preparation,4,2021-02-04 21:25:23)'),
(43, 1, '', 'Save SubActivity', '2021-02-04 21:26:27', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Updating of Personal Services and Itemization Plantilla of Personnel (PSIPOP) and CSCIGHRS,4,2021-02-04 21:26:27)'),
(44, 1, '', 'Save SubActivity', '2021-02-04 21:26:42', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Leave Administration,4,2021-02-04 21:26:42)'),
(45, 1, '', 'Save SubActivity', '2021-02-04 21:27:03', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Monitoring of attendance & punctuality of staff,4,2021-02-04 21:27:03)'),
(46, 1, '', 'Save SubActivity', '2021-02-04 21:27:23', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Facilitate provision of awards/incentives, retirement, welfare and other staff benefits,4,2021-02-04 21:27:23)'),
(47, 1, '', 'Save SubActivity', '2021-02-04 21:27:41', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Determine staff with step increment and loyalty awardees; prepare memo and NOSA,4,2021-02-04 21:27:41)'),
(48, 1, '', 'Save SubActivity', '2021-02-04 21:28:04', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Determine staff due for retirement,4,2021-02-04 21:28:04)'),
(49, 1, '', 'Save SubActivity', '2021-02-04 21:29:49', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Posting of Job Vacancies,4,2021-02-04 21:29:49)'),
(50, 1, '', 'Save SubActivity', '2021-02-04 21:30:05', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Preparation of assessment documents including forms, aplicants profile and folders, assessment sheet, notice of meeting etc.,4,2021-02-04 21:30:05)'),
(51, 1, '', 'Save SubActivity', '2021-02-04 21:30:19', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Preparation of Appointment documents including CSC forms, PDS, List of Plantilla, checklist, transmittal etc.,4,2021-02-04 21:30:19)'),
(52, 1, '', 'Save SubActivity', '2021-02-04 21:30:42', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Facilitate/coordinate training and career development of staff,5,2021-02-04 21:30:42)'),
(53, 1, '', 'Save SubActivity', '2021-02-04 21:31:03', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Competency Based System (CBS),5,2021-02-04 21:31:03)'),
(54, 1, '', 'Save SubActivity', '2021-02-04 21:31:21', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(PCSDS Learning and Development Plan,5,2021-02-04 21:31:21)'),
(55, 1, '', 'Save SubActivity', '2021-02-04 21:31:35', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Updating of Career Development Plan,5,2021-02-04 21:31:35)'),
(56, 1, '', 'Save SubActivity', '2021-02-04 21:38:29', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Attendance to meetings, trainings/seminars for updates on guidelines with regards to Personnel Administration and other related concerns,5,2021-02-04 21:38:29)'),
(57, 1, '', 'Save SubActivity', '2021-02-04 21:39:05', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Training for all staff,5,2021-02-04 21:39:05)'),
(58, 1, '', 'Save SubActivity', '2021-02-04 21:44:17', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Physical Fitness/Sports fest /Health and Wellness Program,5,2021-02-04 21:44:17)'),
(59, 1, '', 'Save SubActivity', '2021-02-04 21:45:16', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(8 Preparation of Mental Health Awareness Program (RA11038 Chapter V, Section 25, Mental Health Promotion and Policies in the Workplace),5,2021-02-04 21:45:16)'),
(60, 1, '', 'Save SubActivity', '2021-02-04 21:46:08', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Preparation of Mental Health Awareness Program (RA11038 Chapter V, Section 25, Mental Health Promotion and Policies in the Workplace),5,2021-02-04 21:46:08)'),
(61, 0, '', 'Save Main Activity', '2021-02-05 01:00:04', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Planning and Budgeting,ECAN Zoning,2021,2021-02-05 01:00:04)'),
(62, 0, '', 'Save Main Activity', '2021-02-05 01:00:28', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Policy Research and Proposal Development,ECAN Zoning,2021,2021-02-05 01:00:28)'),
(63, 0, '', 'Save SubActivity', '2021-02-05 01:00:59', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Administration of ECAN Zones Scorecard,11,2021-02-05 01:00:59)'),
(64, 0, '', 'Save SubActivity', '2021-02-05 01:01:31', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Continuing education and knowledge improvement,11,2021-02-05 01:01:31)'),
(65, 0, '', 'Save SubActivity', '2021-02-05 01:01:43', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Attendance to Official meetings,11,2021-02-05 01:01:43)'),
(66, 0, '', 'Save SubActivity', '2021-02-05 01:02:22', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Midyear and Yearend Review, Assessment and Planning,11,2021-02-05 01:02:22)'),
(67, 0, '', 'Save SubActivity', '2021-02-05 01:09:07', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Integration of ECAN to CLUP / Local Planning System,11,2021-02-05 01:09:07)'),
(68, 0, '', 'Save SubActivity', '2021-02-05 01:09:37', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Marine Protected Area (MPA) Management Planning,11,2021-02-05 01:09:37)'),
(69, 0, '', 'Save SubActivity', '2021-02-05 01:10:12', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Operationalization of Management Information System / Performance Management System,11,2021-02-05 01:10:12)'),
(70, 0, '', 'Save SubActivity', '2021-02-05 01:10:31', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Preparation of Monitoring and Evaluation (M&E) Plan,11,2021-02-05 01:10:31)'),
(71, 0, '', 'Save SubActivity', '2021-02-05 01:10:44', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Information Systems (IS) Strategic Planning,11,2021-02-05 01:10:44)'),
(72, 0, '', 'Save SubActivity', '2021-02-05 01:10:58', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Budget Proposal Development,11,2021-02-05 01:10:58)'),
(73, 0, '', 'Save SubActivity', '2021-02-05 01:11:09', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Work and Financial Planning,11,2021-02-05 01:11:09)'),
(74, 0, '', 'Save SubActivity', '2021-02-05 01:11:21', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Public Investment Programming (PIP),11,2021-02-05 01:11:21)'),
(75, 0, '', 'Save SubActivity', '2021-02-05 01:11:31', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Three-year Rolling Infrastructure Plan (TRIP) Preparation,11,2021-02-05 01:11:31)'),
(76, 0, '', 'Save Main Activity', '2021-02-05 01:12:00', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(ECAN Map Updating,ECAN Zoning,2021,2021-02-05 01:12:00)'),
(77, 0, '', 'Save Main Activity', '2021-02-05 01:12:12', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Other Activities,ECAN Zoning,2021,2021-02-05 01:12:12)'),
(78, 0, '', 'Save SubActivity', '2021-02-05 01:12:23', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Quality Management System,14,2021-02-05 01:12:23)'),
(79, 0, '', 'Save SubActivity', '2021-02-05 01:12:52', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Implementation of Good Governance Conditions,14,2021-02-05 01:12:52)'),
(80, 0, '', 'Save SubActivity', '2021-02-05 01:13:54', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Policy Research, Review and Analysis,12,2021-02-05 01:13:54)'),
(81, 0, '', 'Save SubActivity', '2021-02-05 01:14:47', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Tribal Ancestral Lands Affairs,12,2021-02-05 01:14:47)'),
(82, 0, '', 'Save SubActivity', '2021-02-05 01:14:56', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(TAZ Management Planning (Assistance to ADSDPP Formulation),12,2021-02-05 01:14:56)'),
(83, 0, '', 'Save SubActivity', '2021-02-05 01:15:18', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Implementation of Special Agency Tasks and Targets (Primary Advocacy Team (KIG, Green Island), Economic Recovery Team),12,2021-02-05 01:15:18)'),
(84, 0, '', 'Save SubActivity', '2021-02-05 01:15:38', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Community Engagement and Social Marketing,12,2021-02-05 01:15:38)'),
(85, 0, '', 'Save SubActivity', '2021-02-05 01:15:50', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Project Monitoring (JFPR Project),12,2021-02-05 01:15:50)'),
(86, 0, '', 'Save SubActivity', '2021-02-05 01:16:59', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Attendance to Official meetings,14,2021-02-05 01:16:59)'),
(87, 0, '', 'Save SubActivity', '2021-02-05 01:24:18', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Project Proposal Development,12,2021-02-05 01:24:18)'),
(88, 1, '', 'Save SubActivity', '2021-02-05 16:31:15', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(TAZ Management Planning (Assistance to development of ADSDPP),12,2021-02-05 16:31:15)'),
(89, 1, '', 'Save SubActivity', '2021-02-05 16:31:54', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Review of Local Government Ecological Solid Waste Management (ESWM) Plans,12,2021-02-05 16:31:54)'),
(90, 1, '', 'Save SubActivity', '2021-02-05 16:32:05', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Policy Research, Review and Analysis,12,2021-02-05 16:32:05)'),
(91, 1, '', 'Save SubActivity', '2021-02-05 16:32:28', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Project Monitoring (JFPR Project),12,2021-02-05 16:32:28)'),
(92, 1, '', 'Save SubActivity', '2021-02-05 16:32:43', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Indigenous Community Conserved Area (ICCA) Studies,12,2021-02-05 16:32:43)'),
(93, 1, '', 'Save SubActivity', '2021-02-05 16:33:08', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Implementation of Special Agency Tasks and Targets,12,2021-02-05 16:33:08)'),
(94, 1, '', 'Save SubActivity', '2021-02-05 16:33:25', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Project Proposal Development,12,2021-02-05 16:33:25)'),
(95, 1, '', 'Save SubActivity', '2021-02-05 16:39:20', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(ECAN Map Updating,13,2021-02-05 16:39:20)'),
(96, 1, '', 'Save SubActivity', '2021-02-05 16:39:55', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Continuing Education and Knowledge Improvement,14,2021-02-05 16:39:55)'),
(97, 1, '', 'Save SubActivity', '2021-02-05 16:40:12', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Attendance to Official Meetings,14,2021-02-05 16:40:12)'),
(98, 1, '', 'Save SubActivity', '2021-02-05 16:44:26', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Yearend Review, Assessment and Planning,14,2021-02-05 16:44:26)'),
(99, 1, '', 'Save SubActivity', '2021-02-05 16:45:30', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Marine Protected Area (MPA) Management Planning,14,2021-02-05 16:45:30)'),
(100, 1, '', 'Save SubActivity', '2021-02-05 16:47:38', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Procurement of ICT Services,14,2021-02-05 16:47:38)'),
(101, 1, '', 'Save SubActivity', '2021-02-05 16:48:22', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Quality Management System,14,2021-02-05 16:48:22)'),
(102, 1, '', 'Save SubActivity', '2021-02-05 16:48:35', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Implementation of Good Governance Conditions,14,2021-02-05 16:48:35)'),
(103, 1, '', 'Save Main Activity', '2021-02-05 17:10:30', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(asd,Advocacy, Communications and Education,2020,2021-02-05 17:10:30)'),
(104, 0, '', 'Save Main Activity', '2021-02-05 17:18:11', 'UPDATE monthlytarget\r\n	SET budget = 18798.53\r\n	WHERE idindicators = 14 AND month = 12'),
(105, 0, '', 'Save Main Activity', '2021-02-05 17:40:25', 'UPDATE monthlytarget\r\n	SET budget = 157220\r\n	WHERE idindicators = 15 AND month = 12'),
(106, 0, '', 'Save Main Activity', '2021-02-05 17:42:02', 'UPDATE monthlytarget\r\n	SET budget = 157220\r\n	WHERE idindicators = 16 AND month = 12'),
(107, 0, '', 'Save Main Activity', '2021-02-05 17:45:20', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 17 AND month = 12'),
(108, 1, '', 'Save Main Activity', '2021-02-05 18:00:54', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(,Advocacy, Communications and Education,2020,2021-02-05 18:00:54)'),
(109, 0, '', 'Save Main Activity', '2021-02-05 18:08:24', 'UPDATE monthlytarget\r\n	SET budget = 17922\r\n	WHERE idindicators = 18 AND month = 12'),
(110, 0, '', 'Save Main Activity', '2021-02-05 18:09:49', 'UPDATE monthlytarget\r\n	SET budget = 17922\r\n	WHERE idindicators = 19 AND month = 12'),
(111, 0, '', 'Save Main Activity', '2021-02-05 18:17:08', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 20 AND month = 12'),
(112, 0, '', 'Save Main Activity', '2021-02-05 18:25:48', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 21 AND month = 12'),
(113, 0, '', 'Save Main Activity', '2021-02-05 18:29:55', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 22 AND month = 12'),
(114, 0, '', 'Save Main Activity', '2021-02-05 18:33:08', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 23 AND month = 12'),
(115, 0, '', 'Save Main Activity', '2021-02-05 18:36:25', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 24 AND month = 12'),
(116, 0, '', 'Save Main Activity', '2021-02-05 18:38:58', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 25 AND month = 12'),
(117, 0, '', 'Save Main Activity', '2021-02-05 18:52:38', 'UPDATE monthlytarget\r\n	SET deadline = 2021-01-29 00:00:00\r\n	WHERE idindicators = 26 AND month = 1'),
(118, 0, '', 'Save Main Activity', '2021-02-05 18:54:20', 'UPDATE monthlytarget\r\n	SET deadline = 2021-01-22 00:00:00\r\n	WHERE idindicators = 27 AND month = 1'),
(119, 0, '', 'Save Main Activity', '2021-02-05 18:56:28', 'UPDATE monthlytarget\r\n	SET deadline = 2021-02-05 00:00:00\r\n	WHERE idindicators = 28 AND month = 2'),
(120, 0, '', 'Save Main Activity', '2021-02-05 18:58:27', 'UPDATE monthlytarget\r\n	SET deadline = 2021-02-26 00:00:00\r\n	WHERE idindicators = 29 AND month = 9'),
(121, 0, '', 'Save Main Activity', '2021-02-05 19:00:41', 'UPDATE monthlytarget\r\n	SET budget = 600\r\n	WHERE idindicators = 30 AND month = 5'),
(122, 0, '', 'Save Main Activity', '2021-02-05 19:03:28', 'UPDATE monthlytarget\r\n	SET budget = 9500\r\n	WHERE idindicators = 31 AND month = 3'),
(123, 0, '', 'Save Main Activity', '2021-02-05 19:13:12', 'UPDATE monthlytarget\r\n	SET budget = 3000\r\n	WHERE idindicators = 32 AND month = 8'),
(124, 0, '', 'Save Main Activity', '2021-02-05 19:14:57', 'UPDATE monthlytarget\r\n	SET budget = 1000\r\n	WHERE idindicators = 33 AND month = 11'),
(125, 0, '', 'Save Main Activity', '2021-02-05 19:16:10', 'UPDATE monthlytarget\r\n	SET budget = 1000\r\n	WHERE idindicators = 34 AND month = 11'),
(126, 0, '', 'Save Main Activity', '2021-02-05 19:27:10', 'UPDATE monthlytarget\r\n	SET budget = 1000\r\n	WHERE idindicators = 35 AND month = 11'),
(127, 0, '', 'Save Main Activity', '2021-02-05 19:29:00', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 36 AND month = 11'),
(128, 0, '', 'Save Main Activity', '2021-02-05 19:45:17', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 37 AND month = 12'),
(129, 0, '', 'Save Main Activity', '2021-02-05 19:54:55', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 38 AND month = 12'),
(130, 0, '', 'Save Main Activity', '2021-02-05 20:01:14', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 39 AND month = 12'),
(131, 0, '', 'Save Main Activity', '2021-02-05 20:07:54', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 40 AND month = 12'),
(132, 0, '', 'Save Main Activity', '2021-02-05 20:10:21', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 41 AND month = 12'),
(133, 0, '', 'Save Main Activity', '2021-02-05 20:22:33', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 42 AND month = 12'),
(134, 0, '', 'Save Main Activity', '2021-02-05 20:39:20', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 43 AND month = 12'),
(135, 0, '', 'Save Main Activity', '2021-02-05 20:52:52', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 44 AND month = 12'),
(136, 0, '', 'Save Main Activity', '2021-02-05 20:55:15', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 45 AND month = 12'),
(137, 0, '', 'Save Main Activity', '2021-02-05 21:01:27', 'UPDATE monthlytarget\r\n	SET budget = 20138.56\r\n	WHERE idindicators = 46 AND month = 12'),
(138, 0, '', 'Save Main Activity', '2021-02-05 21:08:47', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 47 AND month = 12'),
(139, 0, '', 'Save Main Activity', '2021-02-05 21:14:54', 'UPDATE monthlytarget\r\n	SET budget = 2000\r\n	WHERE idindicators = 48 AND month = 12'),
(140, 0, '', 'Save Main Activity', '2021-02-05 21:17:35', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 49 AND month = 12'),
(141, 0, '', 'Save Main Activity', '2021-02-05 21:18:56', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 50 AND month = 12'),
(142, 0, '', 'Save Main Activity', '2021-02-05 21:20:12', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 51 AND month = 12'),
(143, 0, '', 'Save Main Activity', '2021-02-05 21:21:54', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 52 AND month = 12'),
(144, 0, '', 'Save Main Activity', '2021-02-05 21:23:11', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 53 AND month = 12'),
(145, 0, '', 'Save Main Activity', '2021-02-05 21:24:03', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 54 AND month = 12'),
(146, 0, '', 'Save Main Activity', '2021-02-05 21:26:38', 'UPDATE monthlytarget\r\n	SET budget = 0\r\n	WHERE idindicators = 55 AND month = 12'),
(147, 0, '', 'Save Main Activity', '2021-02-05 21:29:01', 'UPDATE monthlytarget\r\n	SET budget = 45629\r\n	WHERE idindicators = 56 AND month = 12'),
(148, 0, '', 'Save Main Activity', '2021-02-05 21:53:58', 'UPDATE monthlytarget\r\n	SET budget = \r\n	WHERE idindicators = 57 AND month = 12'),
(149, 0, '', 'Save Main Activity', '2021-02-05 21:58:19', 'UPDATE monthlytarget\r\n	SET budget = 14832\r\n	WHERE idindicators = 58 AND month = 12'),
(150, 0, '', 'Save Main Activity', '2021-02-05 22:13:56', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Other Activities (Cross-Cutting),Resource Mobilization and Partnership Development,2021,2021-02-05 22:13:56)'),
(151, 0, '', 'Save Main Activity', '2021-02-05 22:14:56', 'INSERT into mainactivities\r\n(Title,MFONo,yr, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Planning and Budgeting,Resource Mobilization and Partnership Development,2021,2021-02-05 22:14:56)'),
(152, 1, '', 'Save SubActivity', '2021-02-05 22:16:00', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Attendance to Official Meetings,17,2021-02-05 22:16:00)'),
(153, 1, '', 'Save SubActivity', '2021-02-05 22:16:19', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Midyear Review, Assessment, and Planning,17,2021-02-05 22:16:19)'),
(154, 1, '', 'Save SubActivity', '2021-02-05 22:16:57', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Budget Proposal Development,18,2021-02-05 22:16:57)'),
(155, 1, '', 'Save SubActivity', '2021-02-05 22:17:14', 'INSERT into subactivities\r\n(Title,idMainActivities, date_encoded) \r\n\r\nVALUES \r\n\r\n(Agency Work and Financial Planning,18,2021-02-05 22:17:14)'),
(156, 0, '', 'Save Main Activity', '2021-02-05 22:23:01', 'UPDATE monthlytarget\r\n	SET budget = 24000\r\n	WHERE idindicators = 59 AND month = 9'),
(157, 0, '', 'Save Main Activity', '2021-02-05 22:24:07', 'UPDATE monthlytarget\r\n	SET budget = 90000\r\n	WHERE idindicators = 60 AND month = 7'),
(158, 0, '', 'Save Main Activity', '2021-02-05 22:26:23', 'UPDATE monthlytarget\r\n	SET budget = 5000\r\n	WHERE idindicators = 61 AND month = 4'),
(159, 0, '', 'Save Main Activity', '2021-02-05 22:30:55', 'UPDATE monthlytarget\r\n	SET budget = 28537.84\r\n	WHERE idindicators = 62 AND month = 3'),
(160, 0, '', 'Save Main Activity', '2021-02-05 22:32:24', 'UPDATE monthlytarget\r\n	SET budget = 5000\r\n	WHERE idindicators = 63 AND month = 10'),
(161, 1, '', 'Save Main Activity', '2021-02-05 22:47:11', 'INSERT into mainactivities\r\n(Title,MFONo,yr,Division date_encoded) \r\n\r\nVALUES \r\n\r\n(Emed,Knowledge and Research Management,2021,EMED,2021-02-05 22:47:11)'),
(162, 1, '', 'Save Main Activity', '2021-02-05 22:47:42', 'INSERT into mainactivities\r\n(Title,MFONo,yr,Division date_encoded) \r\n\r\nVALUES \r\n\r\n(Emed,Knowledge and Research Management,2021,EMED,2021-02-05 22:47:42)'),
(163, 1, '', 'Save Main Activity', '2021-02-05 22:49:39', 'INSERT into mainactivities\r\n(Title,MFONo,yr,Division date_encoded) \r\n\r\nVALUES \r\n\r\n(Emed,Knowledge and Research Management,2021,EMED,2021-02-05 22:49:39)'),
(164, 1, '', 'Save Main Activity', '2021-02-05 22:50:52', 'INSERT into mainactivities\r\n(Title, MFONo, yr, Division, date_encoded) \r\n\r\nVALUES \r\n\r\n(Emed,Knowledge and Research Management,2021,EMED,2021-02-05 22:50:52)'),
(165, 1, '', 'Save Main Activity', '2021-02-05 22:51:53', 'INSERT into mainactivities\r\n(Title, MFONo, yr, Division, date_encoded) \r\n\r\nVALUES \r\n\r\n(Title 2,Knowledge and Research Management,2021,EMED,2021-02-05 22:51:53)'),
(166, 1, '', 'Save Main Activity', '2021-02-05 22:57:41', 'INSERT into mainactivities\r\n(Title, MFONo, yr, Division, date_encoded) \r\n\r\nVALUES \r\n\r\n(sss,Knowledge and Research Management,2021,EMED,2021-02-05 22:57:41)'),
(167, 1, '', 'Save Main Activity', '2021-02-05 22:58:42', 'INSERT into mainactivities\r\n(Title, MFONo, yr, Division, date_encoded) \r\n\r\nVALUES \r\n\r\n(sdf,Knowledge and Research Management,2021,EMED,2021-02-05 22:58:42)');

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
(13, '13', 2020, 'Number of monthly agency physical accomplishment reports submitted to DENR-PMED', 0, '', '12', '2020-12-02 08:52:36', 'OPCR', 'EPRPD', 0),
(14, '35', 2021, 'Number of ECAN Zones Scorecard reports prepared', 226082.36, '', '1', '2021-02-05 17:18:11', 'DBM,DENR', 'EPRPD', 0),
(15, '38', 2021, 'Number of Yearend Review and Planning organized', 241440, '', '1', '2021-02-05 17:40:25', '', 'EPRPD', 0),
(16, '68', 2021, 'Number of Yearend Review and Planning organized', 241440, '', '1', '2021-02-05 17:42:02', '', 'EPRPD', 0),
(17, '39', 2021, 'Number of training-workshop on integration of ECAN into CLUP and local planning process organized', 15000, '', '2', '2021-02-05 17:45:20', '', 'EPRPD', 0),
(19, '41', 2021, 'Number of monthly agency accomplishment reports prepared', 216064, '', '12', '2021-02-05 18:09:49', 'OPCR', 'EPRPD', 0),
(20, '41', 2021, 'Number of monthly division accomplishment reports prepared', 0, '', '12', '2021-02-05 18:17:08', '', 'EPRPD', 0),
(21, '41', 2021, 'Number of quarterly physical report of operation (BAR No. 1) encoded in the DBM Unified Reporting System (URS)', 0, '', '4', '2021-02-05 18:25:48', 'PBB,OPCR', 'EPRPD', 0),
(22, '41', 2021, 'Number of agency performance review (APR) reports prepared', 0, '', '2', '2021-02-05 18:29:55', '', 'EPRPD', 0),
(23, '41', 2021, 'Number of annual reports prepared', 0, '', '1', '2021-02-05 18:33:08', '', 'EPRPD', 0),
(24, '41', 2021, 'Number of Division Performance Commitment and Review (DPCR) forms reviewed', 0, '', '16', '2021-02-05 18:36:25', '', 'EPRPD', 0),
(25, '41', 2021, 'Number of Office Performance Commitment and Review (DPCR) targets prepared', 0, '', '1', '2021-02-05 18:38:58', '', 'EPRPD', 0),
(26, '41', 2021, 'Number of Office Performance Commitment and Review (DPCR) ratings and accomplishments prepared', 0, '', '2', '2021-02-05 18:52:38', '', 'EPRPD', 0),
(27, '41', 2021, 'Percentage of Division Performance Commitment and Review (DPCR) ratings and accomplishments prepared', 0, '', '2', '2021-02-05 18:54:20', '', 'EPRPD', 0),
(28, '41', 2021, 'Percentage of Division Performance Commitment and Review (DPCR) targets prepared', 0, '', '1', '2021-02-05 18:56:28', 'OPCR', 'EPRPD', 0),
(29, '42', 2021, 'Number of Monitoring and Evaluation (M&E) Plan prepared', 0, '', '1', '2021-02-05 18:58:27', '', 'EPRPD', 0),
(30, '43', 2021, 'Number of MITHI Information System Strategic Plan (ISSP) submitted', 600, '', '1', '2021-02-05 19:00:41', '', 'EPRPD', 0),
(31, '43', 2021, 'Number of ICT Conferences organized', 9500, '', '1', '2021-02-05 19:03:28', '', 'EPRPD', 0),
(32, '44', 2021, 'Number of agency budget proposal submitted (DBM, DENR, House of Representatives, and Senate)', 3500, '', '2', '2021-02-05 19:13:12', '', 'EPRPD', 0),
(33, '45', 2021, 'Number of agency work and financial plan (WFP) submitted', 1000, '', '1', '2021-02-05 19:14:57', '', 'EPRPD', 0),
(34, '45', 2021, 'Number of division work and financial plan (WFP) submitted', 0, '', '1', '2021-02-05 19:16:10', '', 'EPRPD', 0),
(35, '46', 2021, 'Number of  Public Investment Program (PIP) encoded in PIP Online System', 1000, '', '1', '2021-02-05 19:27:10', '', 'EPRPD', 0),
(36, '47', 2021, 'Number of Three-year Rolling Infrastructure Plan (TRIP) encoded in PIP Online System', 0, '', '1', '2021-02-05 19:29:00', '', 'EPRPD', 0),
(37, '59', 2021, 'Number of local government ecological solid waste management (ESWM) plans reviewed', 500, '', '1', '2021-02-05 19:45:17', '', 'EPRPD', 0),
(38, '59', 2021, 'Number of Provincial Solid Waste Management Board (SWMB) meetings organized', 12000, '', '1', '2021-02-05 19:54:55', '', 'EPRPD', 0),
(39, '60', 2021, 'Number of Chainsaw Policy reviewed', 50500, '', '1', '2021-02-05 20:01:14', '', 'EPRPD', 0),
(40, '69', 2021, 'Number of Marine Protected Area (MPA) management planning workshop organized', 27300, '', '1', '2021-02-05 20:07:54', '', 'EPRPD', 0),
(41, '61', 2021, 'Number of project monitoring reports prepared (Consulting Services)', 250000, '', '1', '2021-02-05 20:10:21', '', 'EPRPD', 0),
(42, '62', 2021, 'Number of ICCA studies submitted and ready for recognition and adoption by PCSD in Palawan', 300000, '', '1', '2021-02-05 20:22:33', '', 'EPRPD', 0),
(43, '63', 2021, 'Number of Primary Advocacy Team (PAT) reports prepared', 99000, '', '1', '2021-02-05 20:39:20', '', 'EPRPD', 0),
(44, '63', 2021, 'Number of Economic Recovery Team (ERT) reports prepared', 2000, '', '1', '2021-02-05 20:52:52', '', 'EPRPD', 0),
(45, '64', 2021, 'Number of project/concept proposals developed', 33000, '', '1', '2021-02-05 20:55:15', 'DENR,OPCR', 'EPRPD', 0),
(46, '65', 2021, 'Number of ECAN maps updated', 1098162.72, '', '4', '2021-02-05 21:01:27', 'DBM,DENR,OPCR', 'EPRPD', 0),
(47, '66', 2021, 'Number of training attended', 5500, '', '11', '2021-02-05 21:08:47', '', 'EPRPD', 0),
(48, '67', 2021, 'Number of official meetings attended', 51500, '', '8', '2021-02-05 21:14:54', '', 'EPRPD', 0),
(49, '70', 2021, 'Number of ICT Training attended', 208000, '', '10', '2021-02-05 21:17:35', '', 'EPRPD', 0),
(50, '71', 2021, 'Number of risk registers reviewed', 0, '', '9', '2021-02-05 21:18:56', '', 'EPRPD', 0),
(51, '71', 2021, 'Number of audit findings reports (AFRs) co-prepared', 0, '', '5', '2021-02-05 21:20:12', '', 'EPRPD', 0),
(52, '72', 2021, 'Percentage of submission of SALN to HRM Unit', 0, '', '100', '2021-02-05 21:21:54', 'OPCR', 'EPRPD', 0),
(53, '72', 2021, 'Percentage of Citizen\'s Charter processes flows prepared', 0, '', '100', '2021-02-05 21:23:11', '', 'EPRPD', 0),
(54, '72', 2021, 'Number of indicative division Project Procurement Management Plan (PPMP) submitted to BAC', 0, '', '1', '2021-02-05 21:24:03', '', 'EPRPD', 0),
(55, '72', 2021, 'Percentage of division budget utilization', 0, '', '100', '2021-02-05 21:26:38', '', 'EPRPD', 0),
(56, '72', 2021, 'Number of support staff hired', 547548, '', '3', '2021-02-05 21:29:01', '', 'EPRPD', 0),
(57, '72', 2021, 'Number of sets of office supplies procured', 395000, '', '2', '2021-02-05 21:53:58', '', 'EPRPD', 0),
(58, '58', 2021, 'Number of communities/groups assisted in the development of Ancestral Domain Sustainable Development Protection Plan (ADSDPP)', 133488, '', '1', '2021-02-05 21:58:19', '', 'EPRPD', 0),
(59, '73', 2021, 'Number of official meetings attended', 112000, '', '8', '2021-02-05 22:23:01', '', 'EPRPD', 0),
(60, '74', 2021, 'Number of Midyear Review, Assessment and Planning workshop organized', 90000, '', '1', '2021-02-05 22:24:07', '', 'EPRPD', 0),
(61, '75', 2021, 'Number of meetings on budget proposal preparation organized', 5000, '', '1', '2021-02-05 22:26:23', '', 'EPRPD', 0),
(62, '75', 2021, 'Number of sets of office supplies procured', 51000, '', '2', '2021-02-05 22:30:55', '', 'EPRPD', 0),
(63, '76', 2021, 'Number of meetings on work and financial plan preparation organized', 5000, '', '1', '2021-02-05 22:32:24', '', 'EPRPD', 0);

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
  `Division` varchar(100) NOT NULL,
  `yr` varchar(45) DEFAULT NULL,
  `date_encoded` date NOT NULL,
  `TargetWeight` varchar(45) DEFAULT NULL,
  `AccomWeight` varchar(45) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainactivities`
--

INSERT INTO `mainactivities` (`idMainActivities`, `Title`, `MFONo`, `Division`, `yr`, `date_encoded`, `TargetWeight`, `AccomWeight`, `deleted`) VALUES
(1, 'ECAN Map Updating', 'ECAN Zoning', '', '2020', '2020-11-27', NULL, NULL, 0),
(2, 'ECAN Institutionalization', 'ECAN Zoning', '', '2020', '2020-11-27', NULL, NULL, 0),
(3, 'Performance Management System', 'ECAN Zoning', '', '2020', '2020-12-02', NULL, NULL, 0),
(4, 'Human Resources Management', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(5, 'Human Resources Development', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(6, 'Accounting', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(7, 'Property and Supply', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(8, 'Procurement', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(9, 'General services', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(10, 'Information Technology', 'General Administrative Services', 'AFD', '2021', '2021-02-04', NULL, NULL, 0),
(11, 'Agency Planning and Budgeting', 'ECAN Zoning', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0),
(12, 'Policy Research and Proposal Development', 'ECAN Zoning', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0),
(13, 'ECAN Map Updating', 'ECAN Zoning', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0),
(14, 'Other Activities (Cross-Cutting)', 'ECAN Zoning', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0),
(16, '', 'Advocacy, Communications and Education', '', '2020', '2021-02-05', NULL, NULL, 0),
(17, 'Other Activities (Cross-Cutting)', 'Resource Mobilization and Partnership Development', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0),
(18, 'Agency Planning and Budgeting', 'Resource Mobilization and Partnership Development', 'EPRPD', '2021', '2021-02-05', NULL, NULL, 0);

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
(156, 13, 12, '1', '2020-12-05', 100, '2020-12-02'),
(157, 14, 1, '0', '0000-00-00', 18799, '2021-02-05'),
(158, 14, 2, '0', '0000-00-00', 18799, '2021-02-05'),
(159, 14, 3, '0', '0000-00-00', 18799, '2021-02-05'),
(160, 14, 4, '0', '0000-00-00', 18799, '2021-02-05'),
(161, 14, 5, '0', '0000-00-00', 18799, '2021-02-05'),
(162, 14, 6, '0', '0000-00-00', 18799, '2021-02-05'),
(163, 14, 7, '0', '0000-00-00', 18799, '2021-02-05'),
(164, 14, 8, '0', '0000-00-00', 18799, '2021-02-05'),
(165, 14, 9, '0', '0000-00-00', 18799, '2021-02-05'),
(166, 14, 10, '0', '0000-00-00', 18799, '2021-02-05'),
(167, 14, 11, '0', '0000-00-00', 18799, '2021-02-05'),
(168, 14, 12, '1', '0000-00-00', 18799, '2021-02-05'),
(169, 15, 1, '0', '0000-00-00', 0, '2021-02-05'),
(170, 15, 2, '0', '0000-00-00', 60, '2021-02-05'),
(171, 15, 3, '0', '0000-00-00', 6220, '2021-02-05'),
(172, 15, 4, '0', '0000-00-00', 0, '2021-02-05'),
(173, 15, 5, '0', '0000-00-00', 0, '2021-02-05'),
(174, 15, 6, '0', '0000-00-00', 7250, '2021-02-05'),
(175, 15, 7, '0', '0000-00-00', 57220, '2021-02-05'),
(176, 15, 8, '0', '0000-00-00', 0, '2021-02-05'),
(177, 15, 9, '0', '0000-00-00', 7250, '2021-02-05'),
(178, 15, 10, '0', '0000-00-00', 0, '2021-02-05'),
(179, 15, 11, '0', '0000-00-00', 6220, '2021-02-05'),
(180, 15, 12, '1', '0000-00-00', 157220, '2021-02-05'),
(181, 16, 1, '0', '0000-00-00', 0, '2021-02-05'),
(182, 16, 2, '0', '0000-00-00', 60, '2021-02-05'),
(183, 16, 3, '0', '0000-00-00', 6220, '2021-02-05'),
(184, 16, 4, '0', '0000-00-00', 0, '2021-02-05'),
(185, 16, 5, '0', '0000-00-00', 0, '2021-02-05'),
(186, 16, 6, '0', '0000-00-00', 7250, '2021-02-05'),
(187, 16, 7, '0', '0000-00-00', 57220, '2021-02-05'),
(188, 16, 8, '0', '0000-00-00', 0, '2021-02-05'),
(189, 16, 9, '0', '0000-00-00', 7250, '2021-02-05'),
(190, 16, 10, '0', '0000-00-00', 0, '2021-02-05'),
(191, 16, 11, '0', '0000-00-00', 6220, '2021-02-05'),
(192, 16, 12, '1', '0000-00-00', 157220, '2021-02-05'),
(193, 17, 1, '0', '0000-00-00', 0, '2021-02-05'),
(194, 17, 2, '0', '0000-00-00', 0, '2021-02-05'),
(195, 17, 3, '0', '0000-00-00', 0, '2021-02-05'),
(196, 17, 4, '1', '0000-00-00', 7500, '2021-02-05'),
(197, 17, 5, '0', '0000-00-00', 0, '2021-02-05'),
(198, 17, 6, '0', '0000-00-00', 0, '2021-02-05'),
(199, 17, 7, '0', '0000-00-00', 0, '2021-02-05'),
(200, 17, 8, '0', '0000-00-00', 0, '2021-02-05'),
(201, 17, 9, '0', '0000-00-00', 0, '2021-02-05'),
(202, 17, 10, '0', '0000-00-00', 0, '2021-02-05'),
(203, 17, 11, '1', '0000-00-00', 7500, '2021-02-05'),
(204, 17, 12, '0', '0000-00-00', 0, '2021-02-05'),
(217, 19, 1, '1', '0000-00-00', 17922, '2021-02-05'),
(218, 19, 2, '1', '0000-00-00', 17922, '2021-02-05'),
(219, 19, 3, '1', '0000-00-00', 17922, '2021-02-05'),
(220, 19, 4, '1', '0000-00-00', 17922, '2021-02-05'),
(221, 19, 5, '1', '0000-00-00', 17922, '2021-02-05'),
(222, 19, 6, '1', '0000-00-00', 17922, '2021-02-05'),
(223, 19, 7, '1', '0000-00-00', 17922, '2021-02-05'),
(224, 19, 8, '1', '0000-00-00', 17922, '2021-02-05'),
(225, 19, 9, '1', '0000-00-00', 17922, '2021-02-05'),
(226, 19, 10, '1', '0000-00-00', 17922, '2021-02-05'),
(227, 19, 11, '1', '0000-00-00', 17922, '2021-02-05'),
(228, 19, 12, '1', '0000-00-00', 17922, '2021-02-05'),
(229, 20, 1, '1', '2021-01-25', 0, '2021-02-05'),
(230, 20, 2, '1', '2021-02-25', 0, '2021-02-05'),
(231, 20, 3, '1', '2021-03-25', 0, '2021-02-05'),
(232, 20, 4, '1', '2021-04-26', 0, '2021-02-05'),
(233, 20, 5, '1', '2021-05-25', 0, '2021-02-05'),
(234, 20, 6, '1', '2021-06-25', 0, '2021-02-05'),
(235, 20, 7, '1', '2021-07-26', 0, '2021-02-05'),
(236, 20, 8, '1', '2021-08-25', 0, '2021-02-05'),
(237, 20, 9, '1', '2021-09-24', 0, '2021-02-05'),
(238, 20, 10, '1', '2021-10-25', 0, '2021-02-05'),
(239, 20, 11, '1', '2021-11-25', 0, '2021-02-05'),
(240, 20, 12, '1', '2021-12-20', 0, '2021-02-05'),
(241, 21, 1, '1', '2021-01-15', 0, '2021-02-05'),
(242, 21, 2, '0', '2021-02-25', 0, '2021-02-05'),
(243, 21, 3, '0', '2021-03-25', 0, '2021-02-05'),
(244, 21, 4, '1', '2021-04-15', 0, '2021-02-05'),
(245, 21, 5, '0', '2021-05-25', 0, '2021-02-05'),
(246, 21, 6, '0', '2021-06-25', 0, '2021-02-05'),
(247, 21, 7, '1', '2021-07-15', 0, '2021-02-05'),
(248, 21, 8, '0', '2021-08-25', 0, '2021-02-05'),
(249, 21, 9, '0', '2021-09-24', 0, '2021-02-05'),
(250, 21, 10, '1', '2021-10-15', 0, '2021-02-05'),
(251, 21, 11, '0', '2021-11-25', 0, '2021-02-05'),
(252, 21, 12, '0', '2021-12-20', 0, '2021-02-05'),
(253, 22, 1, '1', '2021-01-29', 0, '2021-02-05'),
(254, 22, 2, '0', '2021-02-25', 0, '2021-02-05'),
(255, 22, 3, '0', '2021-03-25', 0, '2021-02-05'),
(256, 22, 4, '0', '2021-04-15', 0, '2021-02-05'),
(257, 22, 5, '0', '2021-05-25', 0, '2021-02-05'),
(258, 22, 6, '0', '2021-06-25', 0, '2021-02-05'),
(259, 22, 7, '1', '2021-07-30', 0, '2021-02-05'),
(260, 22, 8, '0', '2021-08-25', 0, '2021-02-05'),
(261, 22, 9, '0', '2021-09-24', 0, '2021-02-05'),
(262, 22, 10, '0', '2021-10-15', 0, '2021-02-05'),
(263, 22, 11, '0', '2021-11-25', 0, '2021-02-05'),
(264, 22, 12, '0', '2021-12-20', 0, '2021-02-05'),
(265, 23, 1, '1', '2021-01-29', 0, '2021-02-05'),
(266, 23, 2, '0', '2021-02-25', 0, '2021-02-05'),
(267, 23, 3, '0', '2021-03-25', 0, '2021-02-05'),
(268, 23, 4, '0', '2021-04-15', 0, '2021-02-05'),
(269, 23, 5, '0', '2021-05-25', 0, '2021-02-05'),
(270, 23, 6, '0', '2021-06-25', 0, '2021-02-05'),
(271, 23, 7, '0', '2021-07-30', 0, '2021-02-05'),
(272, 23, 8, '0', '2021-08-25', 0, '2021-02-05'),
(273, 23, 9, '0', '2021-09-24', 0, '2021-02-05'),
(274, 23, 10, '0', '2021-10-15', 0, '2021-02-05'),
(275, 23, 11, '0', '2021-11-25', 0, '2021-02-05'),
(276, 23, 12, '0', '2021-12-20', 0, '2021-02-05'),
(277, 24, 1, '0', '2021-01-29', 0, '2021-02-05'),
(278, 24, 2, '8', '2021-02-26', 0, '2021-02-05'),
(279, 24, 3, '0', '2021-03-25', 0, '2021-02-05'),
(280, 24, 4, '0', '2021-04-15', 0, '2021-02-05'),
(281, 24, 5, '0', '2021-05-25', 0, '2021-02-05'),
(282, 24, 6, '0', '2021-06-25', 0, '2021-02-05'),
(283, 24, 7, '8', '2021-07-30', 0, '2021-02-05'),
(284, 24, 8, '0', '2021-08-25', 0, '2021-02-05'),
(285, 24, 9, '0', '2021-09-24', 0, '2021-02-05'),
(286, 24, 10, '0', '2021-10-15', 0, '2021-02-05'),
(287, 24, 11, '0', '2021-11-25', 0, '2021-02-05'),
(288, 24, 12, '0', '2021-12-20', 0, '2021-02-05'),
(289, 25, 1, '1', '2021-01-29', 0, '2021-02-05'),
(290, 25, 2, '0', '2021-02-26', 0, '2021-02-05'),
(291, 25, 3, '0', '2021-03-25', 0, '2021-02-05'),
(292, 25, 4, '0', '2021-04-15', 0, '2021-02-05'),
(293, 25, 5, '0', '2021-05-25', 0, '2021-02-05'),
(294, 25, 6, '0', '2021-06-25', 0, '2021-02-05'),
(295, 25, 7, '0', '2021-07-30', 0, '2021-02-05'),
(296, 25, 8, '0', '2021-08-25', 0, '2021-02-05'),
(297, 25, 9, '0', '2021-09-24', 0, '2021-02-05'),
(298, 25, 10, '0', '2021-10-15', 0, '2021-02-05'),
(299, 25, 11, '0', '2021-11-25', 0, '2021-02-05'),
(300, 25, 12, '0', '2021-12-20', 0, '2021-02-05'),
(301, 26, 1, '1', '2021-01-29', 0, '2021-02-05'),
(302, 26, 2, '0', '0000-00-00', 0, '2021-02-05'),
(303, 26, 3, '0', '0000-00-00', 0, '2021-02-05'),
(304, 26, 4, '0', '0000-00-00', 0, '2021-02-05'),
(305, 26, 5, '0', '0000-00-00', 0, '2021-02-05'),
(306, 26, 6, '0', '0000-00-00', 0, '2021-02-05'),
(307, 26, 7, '1', '2021-07-30', 0, '2021-02-05'),
(308, 26, 8, '0', '0000-00-00', 0, '2021-02-05'),
(309, 26, 9, '0', '0000-00-00', 0, '2021-02-05'),
(310, 26, 10, '0', '0000-00-00', 0, '2021-02-05'),
(311, 26, 11, '0', '0000-00-00', 0, '2021-02-05'),
(312, 26, 12, '0', '0000-00-00', 0, '2021-02-05'),
(313, 27, 1, '1', '2021-01-22', 0, '2021-02-05'),
(314, 27, 2, '0', '0000-00-00', 0, '2021-02-05'),
(315, 27, 3, '0', '0000-00-00', 0, '2021-02-05'),
(316, 27, 4, '0', '0000-00-00', 0, '2021-02-05'),
(317, 27, 5, '0', '0000-00-00', 0, '2021-02-05'),
(318, 27, 6, '0', '0000-00-00', 0, '2021-02-05'),
(319, 27, 7, '1', '2021-07-23', 0, '2021-02-05'),
(320, 27, 8, '0', '0000-00-00', 0, '2021-02-05'),
(321, 27, 9, '0', '0000-00-00', 0, '2021-02-05'),
(322, 27, 10, '0', '0000-00-00', 0, '2021-02-05'),
(323, 27, 11, '0', '0000-00-00', 0, '2021-02-05'),
(324, 27, 12, '0', '0000-00-00', 0, '2021-02-05'),
(325, 28, 1, '1', '2021-01-29', 0, '2021-02-05'),
(326, 28, 2, '0', '2021-02-05', 0, '2021-02-05'),
(327, 28, 3, '0', '0000-00-00', 0, '2021-02-05'),
(328, 28, 4, '0', '0000-00-00', 0, '2021-02-05'),
(329, 28, 5, '0', '0000-00-00', 0, '2021-02-05'),
(330, 28, 6, '0', '0000-00-00', 0, '2021-02-05'),
(331, 28, 7, '0', '2021-07-23', 0, '2021-02-05'),
(332, 28, 8, '0', '0000-00-00', 0, '2021-02-05'),
(333, 28, 9, '0', '0000-00-00', 0, '2021-02-05'),
(334, 28, 10, '0', '0000-00-00', 0, '2021-02-05'),
(335, 28, 11, '0', '0000-00-00', 0, '2021-02-05'),
(336, 28, 12, '0', '0000-00-00', 0, '2021-02-05'),
(337, 29, 1, '0', '2021-01-29', 0, '2021-02-05'),
(338, 29, 2, '0', '2021-02-05', 0, '2021-02-05'),
(339, 29, 3, '0', '0000-00-00', 0, '2021-02-05'),
(340, 29, 4, '0', '0000-00-00', 0, '2021-02-05'),
(341, 29, 5, '0', '0000-00-00', 0, '2021-02-05'),
(342, 29, 6, '0', '0000-00-00', 0, '2021-02-05'),
(343, 29, 7, '0', '2021-07-23', 0, '2021-02-05'),
(344, 29, 8, '0', '0000-00-00', 0, '2021-02-05'),
(345, 29, 9, '1', '2021-02-26', 0, '2021-02-05'),
(346, 29, 10, '0', '0000-00-00', 0, '2021-02-05'),
(347, 29, 11, '0', '0000-00-00', 0, '2021-02-05'),
(348, 29, 12, '0', '0000-00-00', 0, '2021-02-05'),
(349, 30, 1, '0', '2021-01-29', 0, '2021-02-05'),
(350, 30, 2, '0', '2021-02-05', 0, '2021-02-05'),
(351, 30, 3, '0', '0000-00-00', 0, '2021-02-05'),
(352, 30, 4, '0', '0000-00-00', 0, '2021-02-05'),
(353, 30, 5, '1', '0000-00-00', 600, '2021-02-05'),
(354, 30, 6, '0', '0000-00-00', 0, '2021-02-05'),
(355, 30, 7, '0', '2021-07-23', 0, '2021-02-05'),
(356, 30, 8, '0', '0000-00-00', 0, '2021-02-05'),
(357, 30, 9, '0', '2021-02-26', 0, '2021-02-05'),
(358, 30, 10, '0', '0000-00-00', 0, '2021-02-05'),
(359, 30, 11, '0', '0000-00-00', 0, '2021-02-05'),
(360, 30, 12, '0', '0000-00-00', 0, '2021-02-05'),
(361, 31, 1, '0', '0000-00-00', 0, '2021-02-05'),
(362, 31, 2, '0', '0000-00-00', 0, '2021-02-05'),
(363, 31, 3, '1', '2021-03-31', 9500, '2021-02-05'),
(364, 31, 4, '0', '0000-00-00', 0, '2021-02-05'),
(365, 31, 5, '0', '0000-00-00', 0, '2021-02-05'),
(366, 31, 6, '0', '0000-00-00', 0, '2021-02-05'),
(367, 31, 7, '0', '0000-00-00', 0, '2021-02-05'),
(368, 31, 8, '0', '0000-00-00', 0, '2021-02-05'),
(369, 31, 9, '0', '0000-00-00', 0, '2021-02-05'),
(370, 31, 10, '0', '0000-00-00', 0, '2021-02-05'),
(371, 31, 11, '0', '0000-00-00', 0, '2021-02-05'),
(372, 31, 12, '0', '0000-00-00', 0, '2021-02-05'),
(373, 32, 1, '0', '0000-00-00', 500, '2021-02-05'),
(374, 32, 2, '0', '0000-00-00', 0, '2021-02-05'),
(375, 32, 3, '0', '2021-03-31', 0, '2021-02-05'),
(376, 32, 4, '0', '0000-00-00', 0, '2021-02-05'),
(377, 32, 5, '1', '0000-00-00', 0, '2021-02-05'),
(378, 32, 6, '0', '0000-00-00', 0, '2021-02-05'),
(379, 32, 7, '0', '0000-00-00', 0, '2021-02-05'),
(380, 32, 8, '2', '0000-00-00', 3000, '2021-02-05'),
(381, 32, 9, '0', '0000-00-00', 0, '2021-02-05'),
(382, 32, 10, '0', '0000-00-00', 0, '2021-02-05'),
(383, 32, 11, '0', '0000-00-00', 0, '2021-02-05'),
(384, 32, 12, '0', '0000-00-00', 0, '2021-02-05'),
(385, 33, 1, '0', '0000-00-00', 500, '2021-02-05'),
(386, 33, 2, '0', '0000-00-00', 0, '2021-02-05'),
(387, 33, 3, '0', '2021-03-31', 0, '2021-02-05'),
(388, 33, 4, '0', '0000-00-00', 0, '2021-02-05'),
(389, 33, 5, '0', '0000-00-00', 0, '2021-02-05'),
(390, 33, 6, '0', '0000-00-00', 0, '2021-02-05'),
(391, 33, 7, '0', '0000-00-00', 0, '2021-02-05'),
(392, 33, 8, '0', '0000-00-00', 3000, '2021-02-05'),
(393, 33, 9, '0', '0000-00-00', 0, '2021-02-05'),
(394, 33, 10, '0', '0000-00-00', 0, '2021-02-05'),
(395, 33, 11, '1', '0000-00-00', 1000, '2021-02-05'),
(396, 33, 12, '0', '0000-00-00', 0, '2021-02-05'),
(397, 34, 1, '0', '0000-00-00', 500, '2021-02-05'),
(398, 34, 2, '0', '0000-00-00', 0, '2021-02-05'),
(399, 34, 3, '0', '2021-03-31', 0, '2021-02-05'),
(400, 34, 4, '0', '0000-00-00', 0, '2021-02-05'),
(401, 34, 5, '0', '0000-00-00', 0, '2021-02-05'),
(402, 34, 6, '0', '0000-00-00', 0, '2021-02-05'),
(403, 34, 7, '0', '0000-00-00', 0, '2021-02-05'),
(404, 34, 8, '0', '0000-00-00', 3000, '2021-02-05'),
(405, 34, 9, '0', '0000-00-00', 0, '2021-02-05'),
(406, 34, 10, '1', '0000-00-00', 0, '2021-02-05'),
(407, 34, 11, '0', '0000-00-00', 1000, '2021-02-05'),
(408, 34, 12, '0', '0000-00-00', 0, '2021-02-05'),
(409, 35, 1, '0', '0000-00-00', 0, '2021-02-05'),
(410, 35, 2, '0', '0000-00-00', 0, '2021-02-05'),
(411, 35, 3, '0', '0000-00-00', 0, '2021-02-05'),
(412, 35, 4, '0', '0000-00-00', 0, '2021-02-05'),
(413, 35, 5, '0', '0000-00-00', 0, '2021-02-05'),
(414, 35, 6, '0', '0000-00-00', 0, '2021-02-05'),
(415, 35, 7, '0', '0000-00-00', 0, '2021-02-05'),
(416, 35, 8, '0', '0000-00-00', 0, '2021-02-05'),
(417, 35, 9, '0', '0000-00-00', 0, '2021-02-05'),
(418, 35, 10, '0', '0000-00-00', 0, '2021-02-05'),
(419, 35, 11, '1', '0000-00-00', 1000, '2021-02-05'),
(420, 35, 12, '0', '0000-00-00', 0, '2021-02-05'),
(421, 36, 1, '0', '0000-00-00', 0, '2021-02-05'),
(422, 36, 2, '0', '0000-00-00', 0, '2021-02-05'),
(423, 36, 3, '0', '0000-00-00', 0, '2021-02-05'),
(424, 36, 4, '0', '0000-00-00', 0, '2021-02-05'),
(425, 36, 5, '0', '0000-00-00', 0, '2021-02-05'),
(426, 36, 6, '0', '0000-00-00', 0, '2021-02-05'),
(427, 36, 7, '0', '0000-00-00', 0, '2021-02-05'),
(428, 36, 8, '0', '0000-00-00', 0, '2021-02-05'),
(429, 36, 9, '0', '0000-00-00', 0, '2021-02-05'),
(430, 36, 10, '0', '0000-00-00', 0, '2021-02-05'),
(431, 36, 11, '1', '0000-00-00', 0, '2021-02-05'),
(432, 36, 12, '0', '0000-00-00', 0, '2021-02-05'),
(433, 37, 1, '0', '0000-00-00', 500, '2021-02-05'),
(434, 37, 2, '0', '0000-00-00', 0, '2021-02-05'),
(435, 37, 3, '0', '0000-00-00', 0, '2021-02-05'),
(436, 37, 4, '0', '0000-00-00', 0, '2021-02-05'),
(437, 37, 5, '0', '0000-00-00', 0, '2021-02-05'),
(438, 37, 6, '1', '0000-00-00', 0, '2021-02-05'),
(439, 37, 7, '0', '0000-00-00', 0, '2021-02-05'),
(440, 37, 8, '0', '0000-00-00', 0, '2021-02-05'),
(441, 37, 9, '0', '0000-00-00', 0, '2021-02-05'),
(442, 37, 10, '1', '0000-00-00', 0, '2021-02-05'),
(443, 37, 11, '0', '0000-00-00', 0, '2021-02-05'),
(444, 37, 12, '0', '0000-00-00', 0, '2021-02-05'),
(445, 38, 1, '0', '0000-00-00', 500, '2021-02-05'),
(446, 38, 2, '0', '0000-00-00', 0, '2021-02-05'),
(447, 38, 3, '0', '0000-00-00', 0, '2021-02-05'),
(448, 38, 4, '0', '0000-00-00', 0, '2021-02-05'),
(449, 38, 5, '0', '0000-00-00', 0, '2021-02-05'),
(450, 38, 6, '0', '0000-00-00', 0, '2021-02-05'),
(451, 38, 7, '0', '0000-00-00', 0, '2021-02-05'),
(452, 38, 8, '0', '0000-00-00', 0, '2021-02-05'),
(453, 38, 9, '0', '0000-00-00', 0, '2021-02-05'),
(454, 38, 10, '1', '0000-00-00', 12000, '2021-02-05'),
(455, 38, 11, '0', '0000-00-00', 0, '2021-02-05'),
(456, 38, 12, '0', '0000-00-00', 0, '2021-02-05'),
(457, 39, 1, '0', '0000-00-00', 0, '2021-02-05'),
(458, 39, 2, '0', '0000-00-00', 10000, '2021-02-05'),
(459, 39, 3, '0', '0000-00-00', 0, '2021-02-05'),
(460, 39, 4, '0', '0000-00-00', 10000, '2021-02-05'),
(461, 39, 5, '0', '0000-00-00', 0, '2021-02-05'),
(462, 39, 6, '0', '0000-00-00', 10500, '2021-02-05'),
(463, 39, 7, '0', '0000-00-00', 0, '2021-02-05'),
(464, 39, 8, '0', '0000-00-00', 10000, '2021-02-05'),
(465, 39, 9, '0', '0000-00-00', 0, '2021-02-05'),
(466, 39, 10, '0', '0000-00-00', 10000, '2021-02-05'),
(467, 39, 11, '0', '0000-00-00', 0, '2021-02-05'),
(468, 39, 12, '1', '0000-00-00', 0, '2021-02-05'),
(469, 40, 1, '0', '0000-00-00', 0, '2021-02-05'),
(470, 40, 2, '0', '0000-00-00', 0, '2021-02-05'),
(471, 40, 3, '0', '0000-00-00', 0, '2021-02-05'),
(472, 40, 4, '0', '0000-00-00', 0, '2021-02-05'),
(473, 40, 5, '0', '0000-00-00', 0, '2021-02-05'),
(474, 40, 6, '0', '0000-00-00', 0, '2021-02-05'),
(475, 40, 7, '1', '0000-00-00', 27300, '2021-02-05'),
(476, 40, 8, '0', '0000-00-00', 0, '2021-02-05'),
(477, 40, 9, '0', '0000-00-00', 0, '2021-02-05'),
(478, 40, 10, '0', '0000-00-00', 0, '2021-02-05'),
(479, 40, 11, '0', '0000-00-00', 0, '2021-02-05'),
(480, 40, 12, '0', '0000-00-00', 0, '2021-02-05'),
(481, 41, 1, '0', '0000-00-00', 0, '2021-02-05'),
(482, 41, 2, '0', '0000-00-00', 0, '2021-02-05'),
(483, 41, 3, '0', '0000-00-00', 0, '2021-02-05'),
(484, 41, 4, '0', '0000-00-00', 37500, '2021-02-05'),
(485, 41, 5, '0', '0000-00-00', 0, '2021-02-05'),
(486, 41, 6, '0', '0000-00-00', 0, '2021-02-05'),
(487, 41, 7, '0', '0000-00-00', 137500, '2021-02-05'),
(488, 41, 8, '0', '0000-00-00', 0, '2021-02-05'),
(489, 41, 9, '0', '0000-00-00', 0, '2021-02-05'),
(490, 41, 10, '0', '0000-00-00', 75000, '2021-02-05'),
(491, 41, 11, '0', '0000-00-00', 0, '2021-02-05'),
(492, 41, 12, '1', '0000-00-00', 0, '2021-02-05'),
(493, 42, 1, '0', '0000-00-00', 0, '2021-02-05'),
(494, 42, 2, '0', '0000-00-00', 0, '2021-02-05'),
(495, 42, 3, '0', '0000-00-00', 39000, '2021-02-05'),
(496, 42, 4, '0', '0000-00-00', 50000, '2021-02-05'),
(497, 42, 5, '0', '0000-00-00', 0, '2021-02-05'),
(498, 42, 6, '0', '0000-00-00', 17000, '2021-02-05'),
(499, 42, 7, '0', '0000-00-00', 125000, '2021-02-05'),
(500, 42, 8, '0', '0000-00-00', 0, '2021-02-05'),
(501, 42, 9, '0', '0000-00-00', 16500, '2021-02-05'),
(502, 42, 10, '0', '0000-00-00', 52500, '2021-02-05'),
(503, 42, 11, '0', '0000-00-00', 0, '2021-02-05'),
(504, 42, 12, '1', '0000-00-00', 0, '2021-02-05'),
(505, 43, 1, '0', '0000-00-00', 500, '2021-02-05'),
(506, 43, 2, '0', '0000-00-00', 22500, '2021-02-05'),
(507, 43, 3, '0', '0000-00-00', 0, '2021-02-05'),
(508, 43, 4, '0', '0000-00-00', 16500, '2021-02-05'),
(509, 43, 5, '0', '0000-00-00', 22000, '2021-02-05'),
(510, 43, 6, '0', '0000-00-00', 15500, '2021-02-05'),
(511, 43, 7, '0', '0000-00-00', 0, '2021-02-05'),
(512, 43, 8, '0', '0000-00-00', 0, '2021-02-05'),
(513, 43, 9, '0', '0000-00-00', 22000, '2021-02-05'),
(514, 43, 10, '0', '0000-00-00', 0, '2021-02-05'),
(515, 43, 11, '0', '0000-00-00', 0, '2021-02-05'),
(516, 43, 12, '1', '0000-00-00', 0, '2021-02-05'),
(517, 44, 1, '0', '0000-00-00', 1000, '2021-02-05'),
(518, 44, 2, '0', '0000-00-00', 0, '2021-02-05'),
(519, 44, 3, '0', '0000-00-00', 0, '2021-02-05'),
(520, 44, 4, '0', '0000-00-00', 0, '2021-02-05'),
(521, 44, 5, '0', '0000-00-00', 0, '2021-02-05'),
(522, 44, 6, '0', '0000-00-00', 0, '2021-02-05'),
(523, 44, 7, '0', '0000-00-00', 1000, '2021-02-05'),
(524, 44, 8, '0', '0000-00-00', 0, '2021-02-05'),
(525, 44, 9, '0', '0000-00-00', 0, '2021-02-05'),
(526, 44, 10, '0', '0000-00-00', 0, '2021-02-05'),
(527, 44, 11, '0', '0000-00-00', 0, '2021-02-05'),
(528, 44, 12, '1', '0000-00-00', 0, '2021-02-05'),
(529, 45, 1, '0', '0000-00-00', 0, '2021-02-05'),
(530, 45, 2, '0', '0000-00-00', 0, '2021-02-05'),
(531, 45, 3, '0', '0000-00-00', 0, '2021-02-05'),
(532, 45, 4, '0', '0000-00-00', 0, '2021-02-05'),
(533, 45, 5, '0', '0000-00-00', 0, '2021-02-05'),
(534, 45, 6, '0', '0000-00-00', 11000, '2021-02-05'),
(535, 45, 7, '0', '0000-00-00', 0, '2021-02-05'),
(536, 45, 8, '0', '0000-00-00', 11000, '2021-02-05'),
(537, 45, 9, '0', '0000-00-00', 0, '2021-02-05'),
(538, 45, 10, '0', '0000-00-00', 0, '2021-02-05'),
(539, 45, 11, '1', '0000-00-00', 11000, '2021-02-05'),
(540, 45, 12, '0', '0000-00-00', 0, '2021-02-05'),
(541, 46, 1, '0', '0000-00-00', 20139, '2021-02-05'),
(542, 46, 2, '0', '0000-00-00', 20139, '2021-02-05'),
(543, 46, 3, '0', '0000-00-00', 208339, '2021-02-05'),
(544, 46, 4, '0', '0000-00-00', 226139, '2021-02-05'),
(545, 46, 5, '1', '0000-00-00', 152939, '2021-02-05'),
(546, 46, 6, '0', '0000-00-00', 137139, '2021-02-05'),
(547, 46, 7, '1', '0000-00-00', 176939, '2021-02-05'),
(548, 46, 8, '0', '0000-00-00', 61139, '2021-02-05'),
(549, 46, 9, '1', '0000-00-00', 34839, '2021-02-05'),
(550, 46, 10, '0', '0000-00-00', 20139, '2021-02-05'),
(551, 46, 11, '1', '0000-00-00', 20139, '2021-02-05'),
(552, 46, 12, '0', '0000-00-00', 20139, '2021-02-05'),
(553, 47, 1, '0', '0000-00-00', 0, '2021-02-05'),
(554, 47, 2, '1', '0000-00-00', 500, '2021-02-05'),
(555, 47, 3, '1', '0000-00-00', 500, '2021-02-05'),
(556, 47, 4, '0', '0000-00-00', 0, '2021-02-05'),
(557, 47, 5, '0', '0000-00-00', 0, '2021-02-05'),
(558, 47, 6, '2', '0000-00-00', 1000, '2021-02-05'),
(559, 47, 7, '1', '0000-00-00', 500, '2021-02-05'),
(560, 47, 8, '1', '0000-00-00', 500, '2021-02-05'),
(561, 47, 9, '1', '0000-00-00', 500, '2021-02-05'),
(562, 47, 10, '3', '0000-00-00', 1500, '2021-02-05'),
(563, 47, 11, '1', '0000-00-00', 500, '2021-02-05'),
(564, 47, 12, '0', '0000-00-00', 0, '2021-02-05'),
(565, 48, 1, '0', '0000-00-00', 2000, '2021-02-05'),
(566, 48, 2, '1', '0000-00-00', 2000, '2021-02-05'),
(567, 48, 3, '0', '0000-00-00', 2000, '2021-02-05'),
(568, 48, 4, '0', '0000-00-00', 2000, '2021-02-05'),
(569, 48, 5, '2', '0000-00-00', 2000, '2021-02-05'),
(570, 48, 6, '0', '0000-00-00', 2000, '2021-02-05'),
(571, 48, 7, '0', '0000-00-00', 2000, '2021-02-05'),
(572, 48, 8, '3', '0000-00-00', 18500, '2021-02-05'),
(573, 48, 9, '2', '0000-00-00', 13000, '2021-02-05'),
(574, 48, 10, '0', '0000-00-00', 2000, '2021-02-05'),
(575, 48, 11, '0', '0000-00-00', 2000, '2021-02-05'),
(576, 48, 12, '0', '0000-00-00', 2000, '2021-02-05'),
(577, 49, 1, '0', '0000-00-00', 0, '2021-02-05'),
(578, 49, 2, '0', '0000-00-00', 0, '2021-02-05'),
(579, 49, 3, '0', '0000-00-00', 0, '2021-02-05'),
(580, 49, 4, '0', '0000-00-00', 0, '2021-02-05'),
(581, 49, 5, '0', '0000-00-00', 0, '2021-02-05'),
(582, 49, 6, '5', '0000-00-00', 104000, '2021-02-05'),
(583, 49, 7, '0', '0000-00-00', 0, '2021-02-05'),
(584, 49, 8, '0', '0000-00-00', 0, '2021-02-05'),
(585, 49, 9, '5', '0000-00-00', 104000, '2021-02-05'),
(586, 49, 10, '0', '0000-00-00', 0, '2021-02-05'),
(587, 49, 11, '0', '0000-00-00', 0, '2021-02-05'),
(588, 49, 12, '0', '0000-00-00', 0, '2021-02-05'),
(589, 50, 1, '0', '0000-00-00', 0, '2021-02-05'),
(590, 50, 2, '0', '0000-00-00', 0, '2021-02-05'),
(591, 50, 3, '0', '0000-00-00', 0, '2021-02-05'),
(592, 50, 4, '0', '0000-00-00', 0, '2021-02-05'),
(593, 50, 5, '0', '0000-00-00', 0, '2021-02-05'),
(594, 50, 6, '0', '0000-00-00', 0, '2021-02-05'),
(595, 50, 7, '0', '0000-00-00', 0, '2021-02-05'),
(596, 50, 8, '0', '0000-00-00', 0, '2021-02-05'),
(597, 50, 9, '9', '0000-00-00', 0, '2021-02-05'),
(598, 50, 10, '0', '0000-00-00', 0, '2021-02-05'),
(599, 50, 11, '0', '0000-00-00', 0, '2021-02-05'),
(600, 50, 12, '0', '0000-00-00', 0, '2021-02-05'),
(601, 51, 1, '0', '0000-00-00', 0, '2021-02-05'),
(602, 51, 2, '0', '0000-00-00', 0, '2021-02-05'),
(603, 51, 3, '0', '0000-00-00', 0, '2021-02-05'),
(604, 51, 4, '0', '0000-00-00', 0, '2021-02-05'),
(605, 51, 5, '0', '0000-00-00', 0, '2021-02-05'),
(606, 51, 6, '0', '0000-00-00', 0, '2021-02-05'),
(607, 51, 7, '2', '0000-00-00', 0, '2021-02-05'),
(608, 51, 8, '3', '0000-00-00', 0, '2021-02-05'),
(609, 51, 9, '0', '0000-00-00', 0, '2021-02-05'),
(610, 51, 10, '0', '0000-00-00', 0, '2021-02-05'),
(611, 51, 11, '0', '0000-00-00', 0, '2021-02-05'),
(612, 51, 12, '0', '0000-00-00', 0, '2021-02-05'),
(613, 52, 1, '0', '0000-00-00', 0, '2021-02-05'),
(614, 52, 2, '100', '0000-00-00', 0, '2021-02-05'),
(615, 52, 3, '0', '0000-00-00', 0, '2021-02-05'),
(616, 52, 4, '0', '0000-00-00', 0, '2021-02-05'),
(617, 52, 5, '0', '0000-00-00', 0, '2021-02-05'),
(618, 52, 6, '0', '0000-00-00', 0, '2021-02-05'),
(619, 52, 7, '0', '0000-00-00', 0, '2021-02-05'),
(620, 52, 8, '0', '0000-00-00', 0, '2021-02-05'),
(621, 52, 9, '0', '0000-00-00', 0, '2021-02-05'),
(622, 52, 10, '0', '0000-00-00', 0, '2021-02-05'),
(623, 52, 11, '0', '0000-00-00', 0, '2021-02-05'),
(624, 52, 12, '0', '0000-00-00', 0, '2021-02-05'),
(625, 53, 1, '0', '0000-00-00', 0, '2021-02-05'),
(626, 53, 2, '0', '0000-00-00', 0, '2021-02-05'),
(627, 53, 3, '0', '0000-00-00', 0, '2021-02-05'),
(628, 53, 4, '0', '0000-00-00', 0, '2021-02-05'),
(629, 53, 5, '0', '0000-00-00', 0, '2021-02-05'),
(630, 53, 6, '100', '0000-00-00', 0, '2021-02-05'),
(631, 53, 7, '0', '0000-00-00', 0, '2021-02-05'),
(632, 53, 8, '0', '0000-00-00', 0, '2021-02-05'),
(633, 53, 9, '0', '0000-00-00', 0, '2021-02-05'),
(634, 53, 10, '0', '0000-00-00', 0, '2021-02-05'),
(635, 53, 11, '0', '0000-00-00', 0, '2021-02-05'),
(636, 53, 12, '0', '0000-00-00', 0, '2021-02-05'),
(637, 54, 1, '0', '0000-00-00', 0, '2021-02-05'),
(638, 54, 2, '0', '0000-00-00', 0, '2021-02-05'),
(639, 54, 3, '0', '0000-00-00', 0, '2021-02-05'),
(640, 54, 4, '0', '0000-00-00', 0, '2021-02-05'),
(641, 54, 5, '0', '0000-00-00', 0, '2021-02-05'),
(642, 54, 6, '0', '0000-00-00', 0, '2021-02-05'),
(643, 54, 7, '0', '0000-00-00', 0, '2021-02-05'),
(644, 54, 8, '1', '0000-00-00', 0, '2021-02-05'),
(645, 54, 9, '0', '0000-00-00', 0, '2021-02-05'),
(646, 54, 10, '0', '0000-00-00', 0, '2021-02-05'),
(647, 54, 11, '0', '0000-00-00', 0, '2021-02-05'),
(648, 54, 12, '0', '0000-00-00', 0, '2021-02-05'),
(649, 55, 1, '0', '0000-00-00', 0, '2021-02-05'),
(650, 55, 2, '0', '0000-00-00', 0, '2021-02-05'),
(651, 55, 3, '0', '0000-00-00', 0, '2021-02-05'),
(652, 55, 4, '0', '0000-00-00', 0, '2021-02-05'),
(653, 55, 5, '0', '0000-00-00', 0, '2021-02-05'),
(654, 55, 6, '0', '0000-00-00', 0, '2021-02-05'),
(655, 55, 7, '0', '0000-00-00', 0, '2021-02-05'),
(656, 55, 8, '0', '0000-00-00', 0, '2021-02-05'),
(657, 55, 9, '0', '0000-00-00', 0, '2021-02-05'),
(658, 55, 10, '0', '0000-00-00', 0, '2021-02-05'),
(659, 55, 11, '0', '0000-00-00', 0, '2021-02-05'),
(660, 55, 12, '100', '0000-00-00', 0, '2021-02-05'),
(661, 56, 1, '3', '0000-00-00', 45629, '2021-02-05'),
(662, 56, 2, '0', '0000-00-00', 45629, '2021-02-05'),
(663, 56, 3, '0', '0000-00-00', 45629, '2021-02-05'),
(664, 56, 4, '0', '0000-00-00', 45629, '2021-02-05'),
(665, 56, 5, '0', '0000-00-00', 45629, '2021-02-05'),
(666, 56, 6, '0', '0000-00-00', 45629, '2021-02-05'),
(667, 56, 7, '0', '0000-00-00', 45629, '2021-02-05'),
(668, 56, 8, '0', '0000-00-00', 45629, '2021-02-05'),
(669, 56, 9, '0', '0000-00-00', 45629, '2021-02-05'),
(670, 56, 10, '0', '0000-00-00', 45629, '2021-02-05'),
(671, 56, 11, '0', '0000-00-00', 45629, '2021-02-05'),
(672, 56, 12, '0', '0000-00-00', 45629, '2021-02-05'),
(673, 57, 1, '0', '0000-00-00', 0, '2021-02-05'),
(674, 57, 2, '0', '0000-00-00', 0, '2021-02-05'),
(675, 57, 3, '1', '0000-00-00', 220140, '2021-02-05'),
(676, 57, 4, '0', '0000-00-00', 0, '2021-02-05'),
(677, 57, 5, '0', '0000-00-00', 0, '2021-02-05'),
(678, 57, 6, '0', '0000-00-00', 0, '2021-02-05'),
(679, 57, 7, '0', '0000-00-00', 0, '2021-02-05'),
(680, 57, 8, '1', '0000-00-00', 174860, '2021-02-05'),
(681, 57, 9, '0', '0000-00-00', 0, '2021-02-05'),
(682, 57, 10, '0', '0000-00-00', 0, '2021-02-05'),
(683, 57, 11, '0', '0000-00-00', 0, '2021-02-05'),
(684, 57, 12, '0', '0000-00-00', 0, '2021-02-05'),
(685, 58, 1, '0', '0000-00-00', 0, '2021-02-05'),
(686, 58, 2, '0', '0000-00-00', 0, '2021-02-05'),
(687, 58, 3, '0', '0000-00-00', 0, '2021-02-05'),
(688, 58, 4, '0', '0000-00-00', 14832, '2021-02-05'),
(689, 58, 5, '0', '0000-00-00', 14832, '2021-02-05'),
(690, 58, 6, '0', '0000-00-00', 14832, '2021-02-05'),
(691, 58, 7, '0', '0000-00-00', 14832, '2021-02-05'),
(692, 58, 8, '0', '0000-00-00', 14832, '2021-02-05'),
(693, 58, 9, '0', '0000-00-00', 14832, '2021-02-05'),
(694, 58, 10, '0', '0000-00-00', 14832, '2021-02-05'),
(695, 58, 11, '0', '0000-00-00', 14832, '2021-02-05'),
(696, 58, 12, '1', '0000-00-00', 14832, '2021-02-05'),
(697, 59, 1, '0', '0000-00-00', 0, '2021-02-05'),
(698, 59, 2, '1', '0000-00-00', 15000, '2021-02-05'),
(699, 59, 3, '0', '0000-00-00', 0, '2021-02-05'),
(700, 59, 4, '0', '0000-00-00', 0, '2021-02-05'),
(701, 59, 5, '2', '0000-00-00', 35000, '2021-02-05'),
(702, 59, 6, '0', '0000-00-00', 0, '2021-02-05'),
(703, 59, 7, '0', '0000-00-00', 0, '2021-02-05'),
(704, 59, 8, '3', '0000-00-00', 36000, '2021-02-05'),
(705, 59, 9, '2', '0000-00-00', 24000, '2021-02-05'),
(706, 59, 10, '0', '0000-00-00', 0, '2021-02-05'),
(707, 59, 11, '0', '0000-00-00', 0, '2021-02-05'),
(708, 59, 12, '0', '0000-00-00', 0, '2021-02-05'),
(709, 60, 1, '0', '0000-00-00', 0, '2021-02-05'),
(710, 60, 2, '0', '0000-00-00', 0, '2021-02-05'),
(711, 60, 3, '0', '0000-00-00', 0, '2021-02-05'),
(712, 60, 4, '0', '0000-00-00', 0, '2021-02-05'),
(713, 60, 5, '0', '0000-00-00', 0, '2021-02-05'),
(714, 60, 6, '0', '0000-00-00', 0, '2021-02-05'),
(715, 60, 7, '1', '0000-00-00', 90000, '2021-02-05'),
(716, 60, 8, '0', '0000-00-00', 0, '2021-02-05'),
(717, 60, 9, '0', '0000-00-00', 0, '2021-02-05'),
(718, 60, 10, '0', '0000-00-00', 0, '2021-02-05'),
(719, 60, 11, '0', '0000-00-00', 0, '2021-02-05'),
(720, 60, 12, '0', '0000-00-00', 0, '2021-02-05'),
(721, 61, 1, '0', '0000-00-00', 0, '2021-02-05'),
(722, 61, 2, '0', '0000-00-00', 0, '2021-02-05'),
(723, 61, 3, '0', '0000-00-00', 0, '2021-02-05'),
(724, 61, 4, '1', '0000-00-00', 5000, '2021-02-05'),
(725, 61, 5, '0', '0000-00-00', 0, '2021-02-05'),
(726, 61, 6, '0', '0000-00-00', 0, '2021-02-05'),
(727, 61, 7, '0', '0000-00-00', 0, '2021-02-05'),
(728, 61, 8, '0', '0000-00-00', 0, '2021-02-05'),
(729, 61, 9, '0', '0000-00-00', 0, '2021-02-05'),
(730, 61, 10, '0', '0000-00-00', 0, '2021-02-05'),
(731, 61, 11, '0', '0000-00-00', 0, '2021-02-05'),
(732, 61, 12, '0', '0000-00-00', 0, '2021-02-05'),
(733, 62, 1, '0', '0000-00-00', 0, '2021-02-05'),
(734, 62, 2, '0', '0000-00-00', 0, '2021-02-05'),
(735, 62, 3, '1', '0000-00-00', 28538, '2021-02-05'),
(736, 62, 4, '0', '0000-00-00', 0, '2021-02-05'),
(737, 62, 5, '0', '0000-00-00', 0, '2021-02-05'),
(738, 62, 6, '0', '0000-00-00', 0, '2021-02-05'),
(739, 62, 7, '0', '0000-00-00', 0, '2021-02-05'),
(740, 62, 8, '', '0000-00-00', 0, '2021-02-05'),
(741, 62, 9, '1', '0000-00-00', 22462, '2021-02-05'),
(742, 62, 10, '0', '0000-00-00', 0, '2021-02-05'),
(743, 62, 11, '0', '0000-00-00', 0, '2021-02-05'),
(744, 62, 12, '0', '0000-00-00', 0, '2021-02-05'),
(745, 63, 1, '0', '0000-00-00', 0, '2021-02-05'),
(746, 63, 2, '0', '0000-00-00', 0, '2021-02-05'),
(747, 63, 3, '0', '0000-00-00', 0, '2021-02-05'),
(748, 63, 4, '0', '0000-00-00', 0, '2021-02-05'),
(749, 63, 5, '0', '0000-00-00', 0, '2021-02-05'),
(750, 63, 6, '0', '0000-00-00', 0, '2021-02-05'),
(751, 63, 7, '0', '0000-00-00', 0, '2021-02-05'),
(752, 63, 8, '0', '0000-00-00', 0, '2021-02-05'),
(753, 63, 9, '0', '0000-00-00', 0, '2021-02-05'),
(754, 63, 10, '1', '0000-00-00', 5000, '2021-02-05'),
(755, 63, 11, '0', '0000-00-00', 0, '2021-02-05'),
(756, 63, 12, '0', '0000-00-00', 0, '2021-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notifications_id` int(11) NOT NULL,
  `record_id` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_division` varchar(45) NOT NULL,
  `db_name` varchar(45) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `notif_text` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_seen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notifications_id`, `record_id`, `user_id`, `user_division`, `db_name`, `seen`, `notif_text`, `date_created`, `date_seen`) VALUES
(1, '16', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 00:00:00', '0000-00-00'),
(2, '16', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 00:00:00', '0000-00-00'),
(3, '17', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 00:00:00', '0000-00-00'),
(4, '18', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 00:00:00', '0000-00-00'),
(5, '19', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '1970-01-01 00:00:00', '0000-00-00'),
(6, '20', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 00:00:00', '0000-00-00'),
(7, '21', 5, '', 'accomplished', 0, 'Submitted Accomplishment', '2021-01-29 01:02:23', '0000-00-00'),
(8, '22', 5, '', 'accomplished', 0, 'Submitted Accomplishment', '2021-01-29 01:03:27', '0000-00-00'),
(9, '23', 5, '', 'accomplished', 0, 'Submitted Accomplishment', '2021-01-29 01:32:22', '0000-00-00'),
(10, '24', 5, '', 'accomplished', 0, 'Submitted Accomplishment', '2021-01-29 01:32:34', '0000-00-00'),
(11, '25', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 01:33:40', '0000-00-00'),
(12, '26', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 01:35:09', '0000-00-00'),
(13, '27', 5, '', 'accomplished', 1, 'Submitted Accomplishment', '2021-01-29 03:15:07', '0000-00-00'),
(14, '28', 5, '', 'accomplished', 0, 'Submitted Accomplishment', '2021-02-03 10:17:50', '0000-00-00'),
(15, '29', 5, 'EPRPD', 'accomplished', 0, 'Submitted Accomplishment', '2021-02-03 10:23:58', '0000-00-00'),
(16, '30', 5, 'EPRPD', 'accomplished', 0, 'Submitted Accomplishment', '2021-02-03 11:00:13', '0000-00-00');

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
(757, 1, NULL, 'Field Validation', 'Number of field validation reports prepared', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', ''),
(758, 3, NULL, 'Consultation Workshop (Post-Field Validation)', 'Number of consultations documented with reports prepared', '', '1', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EEED'),
(759, 4, NULL, 'Presentation to the ECAN Board', 'Number of ECAN maps presented and updated', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, 'DBM,DENR,OPCR', 'ECAN Zoning', 'EEED'),
(760, 6, NULL, 'Assistance to LGU on Critical Watershed Assessment and Management Planning supporting water systems', 'Number of management frameworks for critical watershed developed', '', '1', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(761, 7, NULL, 'Socio-cultural and Ecological Studies of ICCA', 'Number of ICCA studies undertaken', '3', '1', '0.00', '0', '300.00', '200.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(762, 8, NULL, 'Administration of ECAN Zones Scorecard', 'Number of reports on ECAN Zones Scorecard prepared', '1', '0', '0.00', '0', '0.00', '-100.00', NULL, 2020, 'DBM,DENR', 'ECAN Zoning', 'EPRPD'),
(763, 9, NULL, 'Capacity Building of Stakeholders on ECAN and sustainable development planning', 'Number of presentations given on ECAN and sustainable development planning', '1', '3', '0.00', '0', '33.33', '-66.67', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(764, 10, NULL, 'Attendance to Training, Workshops, and Conferences', 'Percentage of attendance to trainings, workshops, and conferences with reports issued to officials concerned', '', '200', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(765, 11, NULL, 'Attendance to Official Meetings', 'Percentage of attendance to official meetings with reports issued to officials concerned', '', '200', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(766, 12, NULL, 'Conduct of In-House Planning Workshops', 'Number of in-house workshops organized or facilitated', '', '2', '0.00', '0', '0.00', '-100.00', NULL, 2020, '', 'ECAN Zoning', 'EPRPD'),
(767, 13, NULL, 'Operation of Performance Management System', 'Number of monthly agency physical accomplishment reports submitted to DENR-PMED', '', '12', '0.00', '0', '0.00', '-100.00', NULL, 2020, 'OPCR', 'General Administrative Services', 'EPRPD');

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
(3142, 0, NULL, NULL, NULL, '6', '1', NULL, NULL, NULL, NULL, NULL, '1', 0),
(3143, 0, NULL, NULL, NULL, '3', '1', NULL, NULL, NULL, NULL, NULL, '2', 0),
(3144, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '3', 0),
(3145, 0, NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, '4', 0),
(3146, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '5', 0),
(3147, 0, NULL, NULL, NULL, '0', '202', NULL, NULL, NULL, NULL, NULL, '6', 0),
(3148, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '7', 0),
(3149, 0, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, NULL, '8', 0),
(3150, 0, NULL, NULL, NULL, '0', '5', NULL, NULL, NULL, NULL, NULL, '9', 0),
(3151, 0, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, NULL, NULL, '10', 0),
(3152, 0, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, NULL, NULL, '11', 0),
(3153, 0, NULL, NULL, NULL, '0', '205', NULL, NULL, NULL, NULL, NULL, '12', 0);

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
(13, 4, 'Operation of Performance Management System', NULL, '2020-12-02 08:14:54', 0),
(14, 4, 'Facilitation of ISO Certification (QMS)', NULL, '2021-02-04 21:18:53', 0),
(15, 4, 'Staffing Pattern, Organizational structure', NULL, '2021-02-04 21:25:04', 0),
(16, 4, 'Payroll and remittances to GSIS, PhilHealth & HDMF preparation', NULL, '2021-02-04 21:25:23', 0),
(17, 4, 'Updating of Personal Services and Itemization Plantilla of Personnel (PSIPOP) and CSCIGHRS', NULL, '2021-02-04 21:26:27', 0),
(18, 4, 'Leave Administration', NULL, '2021-02-04 21:26:42', 0),
(19, 4, 'Monitoring of attendance & punctuality of staff', NULL, '2021-02-04 21:27:03', 0),
(20, 4, 'Facilitate provision of awards/incentives, retirement, welfare and other staff benefits', NULL, '2021-02-04 21:27:23', 0),
(21, 4, 'Determine staff with step increment and loyalty awardees; prepare memo and NOSA', NULL, '2021-02-04 21:27:41', 0),
(22, 4, 'Determine staff due for retirement', NULL, '2021-02-04 21:28:04', 0),
(23, 4, 'Posting of Job Vacancies', NULL, '2021-02-04 21:29:49', 0),
(24, 4, 'Preparation of assessment documents including forms, aplicant\'s profile and folders, assessment sheet, notice of meeting etc.', NULL, '2021-02-04 21:30:05', 0),
(25, 4, 'Preparation of Appointment documents including CSC forms, PDS, List of Plantilla, checklist, transmittal etc.', NULL, '2021-02-04 21:30:19', 0),
(26, 5, 'Facilitate/coordinate training and career development of staff', NULL, '2021-02-04 21:30:42', 0),
(27, 5, 'Competency Based System (CBS)', NULL, '2021-02-04 21:31:03', 0),
(28, 5, 'PCSDS Learning and Development Plan', NULL, '2021-02-04 21:31:21', 0),
(29, 5, 'Updating of Career Development Plan', NULL, '2021-02-04 21:31:35', 0),
(30, 5, 'Attendance to meetings, trainings/seminars for updates on guidelines with regards to Personnel Administration and other related concerns', NULL, '2021-02-04 21:38:29', 0),
(31, 5, 'Training for all staff', NULL, '2021-02-04 21:39:05', 0),
(32, 5, 'Physical Fitness/Sports fest /Health and Wellness Program', NULL, '2021-02-04 21:44:17', 0),
(33, 5, '8 Preparation of Mental Health Awareness Program (RA11038 Chapter V, Section 25, Mental Health Promotion and Policies in the Workplace)', NULL, '2021-02-04 21:45:16', 1),
(34, 5, 'Preparation of Mental Health Awareness Program (RA11038 Chapter V, Section 25, Mental Health Promotion and Policies in the Workplace)', NULL, '2021-02-04 21:46:08', 0),
(35, 11, 'Administration of ECAN Zones Scorecard', NULL, '2021-02-05 01:00:59', 0),
(36, 11, 'Continuing education and knowledge improvement', NULL, '2021-02-05 01:01:31', 1),
(37, 11, 'Attendance to Official meetings', NULL, '2021-02-05 01:01:43', 1),
(38, 11, 'Yearend Review, Assessment and Planning', NULL, '2021-02-05 01:02:22', 1),
(39, 11, 'Integration of ECAN into CLUP / Local Planning System', NULL, '2021-02-05 01:09:07', 0),
(40, 11, 'Marine Protected Area (MPA) Management Planning', NULL, '2021-02-05 01:09:37', 1),
(41, 11, 'Operationalization of Management Information System / Performance Management System', NULL, '2021-02-05 01:10:12', 0),
(42, 11, 'Preparation of Monitoring and Evaluation (M&E) Plan', NULL, '2021-02-05 01:10:31', 0),
(43, 11, 'Information Systems (IS) Strategic Planning', NULL, '2021-02-05 01:10:44', 0),
(44, 11, 'Agency Budget Proposal Development', NULL, '2021-02-05 01:10:58', 0),
(45, 11, 'Agency Work and Financial Planning', NULL, '2021-02-05 01:11:09', 0),
(46, 11, 'Public Investment Programming (PIP)', NULL, '2021-02-05 01:11:21', 0),
(47, 11, 'Three-year Rolling Infrastructure Plan (TRIP) Preparation', NULL, '2021-02-05 01:11:31', 0),
(48, 14, 'Quality Management System', NULL, '2021-02-05 01:12:23', 1),
(49, 14, 'Implementation of Good Governance Conditions', NULL, '2021-02-05 01:12:52', 1),
(50, 12, 'Policy Research, Review and Analysis', NULL, '2021-02-05 01:13:54', 1),
(51, 12, 'Indigenous Community Conserved Area (ICCA) Studies', NULL, '2021-02-05 01:14:47', 1),
(52, 12, 'TAZ Management Planning (Assistance to ADSDPP Formulation)', NULL, '2021-02-05 01:14:56', 1),
(53, 12, 'Implementation of Special Agency Tasks and Targets (Primary Advocacy Team (KIG, Green Island), Economic Recovery Team)', NULL, '2021-02-05 01:15:18', 1),
(54, 12, 'Community Engagement and Social Marketing', NULL, '2021-02-05 01:15:38', 1),
(55, 12, 'Project Monitoring (JFPR Project)', NULL, '2021-02-05 01:15:50', 1),
(56, 14, 'Attendance to Official meetings', NULL, '2021-02-05 01:16:59', 1),
(57, 12, 'Project Proposal Development', NULL, '2021-02-05 01:24:18', 1),
(58, 12, 'TAZ Management Planning (Assistance to development of ADSDPP)', NULL, '2021-02-05 16:31:15', 0),
(59, 12, 'Review of Local Government Ecological Solid Waste Management (ESWM) Plans', NULL, '2021-02-05 16:31:54', 0),
(60, 12, 'Policy Research, Review and Analysis', NULL, '2021-02-05 16:32:05', 0),
(61, 12, 'Project Monitoring (JFPR Project)', NULL, '2021-02-05 16:32:28', 0),
(62, 12, 'Indigenous Community Conserved Area (ICCA) Studies', NULL, '2021-02-05 16:32:43', 0),
(63, 12, 'Implementation of Special Agency Tasks and Targets', NULL, '2021-02-05 16:33:08', 0),
(64, 12, 'Project Proposal Development', NULL, '2021-02-05 16:33:25', 0),
(65, 13, 'ECAN Map Updating', NULL, '2021-02-05 16:39:20', 0),
(66, 14, 'Continuing Education and Knowledge Improvement', NULL, '2021-02-05 16:39:55', 0),
(67, 14, 'Attendance to Official Meetings', NULL, '2021-02-05 16:40:12', 0),
(68, 14, 'Yearend Review, Assessment and Planning', NULL, '2021-02-05 16:44:26', 0),
(69, 14, 'Marine Protected Area (MPA) Management Planning', NULL, '2021-02-05 16:45:30', 0),
(70, 14, 'Procurement of ICT Services', NULL, '2021-02-05 16:47:38', 0),
(71, 14, 'Quality Management System', NULL, '2021-02-05 16:48:22', 0),
(72, 14, 'Implementation of Good Governance Conditions', NULL, '2021-02-05 16:48:35', 0),
(73, 17, 'Attendance to Official Meetings', NULL, '2021-02-05 22:16:00', 0),
(74, 17, 'Midyear Review, Assessment, and Planning', NULL, '2021-02-05 22:16:19', 0),
(75, 18, 'Agency Budget Proposal Development', NULL, '2021-02-05 22:16:57', 0),
(76, 18, 'Agency Work and Financial Planning', NULL, '2021-02-05 22:17:14', 0);

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
  MODIFY `idaccomplished` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `audit_trail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `idindicators` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `idMainActivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mfotitle`
--
ALTER TABLE `mfotitle`
  MODIFY `idmfotitle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `monthlytarget`
--
ALTER TABLE `monthlytarget`
  MODIFY `monthlytargetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `report_monthly`
--
ALTER TABLE `report_monthly`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3157;

--
-- AUTO_INCREMENT for table `subactivities`
--
ALTER TABLE `subactivities`
  MODIFY `idsubactivities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

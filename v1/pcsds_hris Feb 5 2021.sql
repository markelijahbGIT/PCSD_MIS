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
-- Database: `pcsds_hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_user` varchar(30) NOT NULL,
  `admin_pass` varchar(30) NOT NULL,
  `user_division` varchar(50) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_user`, `admin_pass`, `user_division`, `user_level`) VALUES
(1, 'admin', 'admins', 'admin', 'mis'),
(2, 'legal', 'legal', 'legal', 'legal'),
(4, 'oed', 'oed', 'OED', 'OED'),
(5, 'eprpd', 'eprpd', 'EPRPD', 'EPRPD'),
(6, 'afd', 'afd', 'AFD', 'AFD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_rank`
--

CREATE TABLE `tbl_academic_rank` (
  `rank_id` int(3) NOT NULL,
  `rank_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` char(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(1, 'OED (Office of the Executive Director)'),
(2, 'AFD (Admin and Finance Division)'),
(3, 'ECAN Monitoring and Evaluation Division (EMED)'),
(4, 'ECAN Zones Management and Enforcement Division (EZMED)'),
(5, 'ECAN Education and Extension Division (EEED)'),
(6, 'DMO South'),
(7, 'DMO North'),
(8, 'DMO Calamianes'),
(9, 'EPRPD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(7) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `per_id` int(6) NOT NULL,
  `file_repo` varchar(100) NOT NULL,
  `date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_name`, `file_type`, `per_id`, `file_repo`, `date_uploaded`) VALUES
(1, 'HRIS Manual .docx', '', 10, 'Others', '2019-08-07'),
(2, 'HBCD_PE_x64.iso', '', 14, 'Others', '2020-02-20'),
(3, 'PBSAP_2015-2028.pdf', '', 14, 'Others', '2020-02-20'),
(4, 'export_servers_pcsdgovp_1595919540.csv', '', 11, 'Others', '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gass_rank`
--

CREATE TABLE `tbl_gass_rank` (
  `gass_id` int(3) NOT NULL,
  `gass_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `per_id` int(6) NOT NULL,
  `per_img` varchar(200) NOT NULL,
  `per_firstname` char(20) NOT NULL,
  `per_middlename` char(20) NOT NULL,
  `per_lastname` char(20) NOT NULL,
  `per_suffix` char(2) NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` char(6) NOT NULL,
  `per_civil_status` varchar(10) NOT NULL,
  `per_email` varchar(100) NOT NULL,
  `per_status` varchar(100) NOT NULL,
  `per_address` varchar(150) NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_date_of_last_appointment` date NOT NULL,
  `per_eligibility` varchar(20) NOT NULL,
  `per_position` varchar(100) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(100) NOT NULL,
  `per_tin_no` varchar(20) NOT NULL,
  `per_gsis_bp_no` varchar(15) NOT NULL,
  `per_pagibig_no` varchar(14) NOT NULL,
  `per_plantilla_no` varchar(25) NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_year` varchar(10) NOT NULL,
  `bs_school` varchar(50) NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `ms_with_unit` varchar(12) NOT NULL,
  `ms_year` varchar(10) NOT NULL,
  `ms_school` varchar(50) NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `dr_year` varchar(10) NOT NULL,
  `dr_with_unit` varchar(12) NOT NULL,
  `dr_school` varchar(50) NOT NULL,
  `other_degree` varchar(50) NOT NULL,
  `other_year` varchar(10) NOT NULL,
  `other_school` varchar(50) NOT NULL,
  `per_salary` varchar(1000) NOT NULL,
  `date_modified` date NOT NULL,
  `per_step` varchar(100) NOT NULL,
  `per_benefit` varchar(100) NOT NULL,
  `per_stats` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`per_id`, `per_img`, `per_firstname`, `per_middlename`, `per_lastname`, `per_suffix`, `pos_id`, `per_gender`, `per_civil_status`, `per_email`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_date_of_last_appointment`, `per_eligibility`, `per_position`, `dept_id`, `per_designation`, `per_tin_no`, `per_gsis_bp_no`, `per_pagibig_no`, `per_plantilla_no`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_year`, `dr_with_unit`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_salary`, `date_modified`, `per_step`, `per_benefit`, `per_stats`) VALUES
(11, '', 'NELSON', 'PALAD', 'DEVANADERA', '', 0, 'Male', 'Married', 'nelsondevanadera@yahoo.com', 'Permanent', 'BM Rd. San Pedro, PPC', '1955-03-30', 'SAN PABLO CITY', '2014-02-01', '2014-02-01', 'CESO', 'Executive Director', 0, 'OED (Office of the Executive Director)    ', '121-252-020', '430-867-1  ', '046-210-552', 'PCSDB-EXED3-1-1998', 0, '+639    -   -   ', 0, 'BS AGRICULTURAL ENGINEERING', '1976', 'UP LOS BAÃ‘OS', 'Master in National Security Admin/MS Agricultural ', '', '1996', 'NATIONAL DEFENSE UNIVERSITY', '', '', '', '', '', '', '', '139,434', '2020-03-10', '28-2', 'Ma. Eduarda Devanadera', 1),
(12, 'Adriano_Benjamin Jr.jpg', 'BENJAMIN', 'DE LEON', 'ADRIANO', 'JR', 0, 'Male', 'Married', 'akozben@gmail.com', 'Permanent', '309-B MALVAR ST. PUERTO PRINCESA CITY PALAWAN', '1976-07-12', 'MANILA', '2014-06-16', '2019-08-16', 'CSC Professional', 'Project Development Officer III', 0, 'ECAN Monitoring and Evaluation Division (EMED)    ', '912-847-552', '   -   -   ', '107-000-103', '', 0, '+639 475-980-017', 0, 'Major in Biology', '1998', 'Palawan State University- Main Campus', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-26', '18-6', '', 0),
(13, 'Balmaceda_Jesus T.jpg', 'JESUS', 'TRINIDAD', 'BALMACEDA', '', 0, 'Male', 'Married', 'jesustbalmaceda@gmail.com', 'Permanent', 'D-Block Lot 21 Chico Street Aurora Subdivision Angono Rizal ', '1964-10-27', 'Panganiban,Catanduanes', '2009-12-16', '2016-06-06', '', 'Admin Aide IV', 0, 'AFD (Admin and Finance Division)   ', '129-229-089', '   -   -   ', '   -   -   ', '', 0, '+639 206-055-279', 0, 'ECE ', '1987', 'Mabini College - Daet Lyceum Manila', '', '', '', '', '', '', '', '', 'GRCO', '', '', '', '2019-11-28', '4-1', '', 0),
(14, 'Balofinos_Mark Elijah.jpg', 'MARK ELIJAH', 'MASACLAO', 'BALOFIÃ‘OS', '', 0, 'Male', 'Single', 'markelijahb@yahoo.com', 'Permanent', 'Zone 2 Regino Avenue Mountainview Santa Monica Puerto Princesa Palawan', '1992-09-11', '', '2019-10-24', '2019-10-24', 'Career Service Profe', 'Admin Aide VI', 0, 'AFD (Admin and Finance Division)  ', '324-025-454', '   -   -   ', '   -   -   ', 'ADA6-6-2004', 0, '+639 351-611-258', 0, 'Bachelor of Science in Information Technology ', '2013', 'System Technology Institute Puerto Princesa ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '6-2', '', 0),
(15, 'Bascongada Marcelino Jesus.jpg', 'MARCELINO JESUS', 'RABANG', 'BASCONGADA', '', 0, 'Male', 'Married', '', 'Permanent', '236-1 Manalo Extension Brgy. Milagros Puerto Princesa City Palawan', '1976-06-07', 'Puerto Princesa City Palawan', '2016-01-01', '2016-01-01', '', 'Admin Aide III', 0, 'AFD (Admin and Finance Division)  ', '325-480-640', '   -   -   ', '   -   -   ', 'ADA3-10-2004', 0, '+639 303-634-988', 0, 'BS.Criminology (2nd year)', '1995', 'Holy Trinity College ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '3', '', 0),
(16, 'Batul_Teresita A.jpg', 'TERESITA', 'ASPURIA', 'BATUL', '', 0, 'Female', 'Married', 'tessabatul@yahoo.com', 'Permanent', 'Lomboy-Siete Rd. San Jose Puerto Princesa City Palawan ', '1955-10-01', 'Lipa City ', '2019-10-24', '2019-10-24', 'Career Service Profe', 'Project Development Officer V', 0, 'DMO North   ', '121-251-794', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-10-1998', 0, '+639 998-834-536', 0, 'Bachelor of Science in Agricutural Economics ', '1977', 'University of the Philippines, Los BaÃ±os (UPLB)', 'Master in Rural Sociology', '', '1985', 'University of the Philippines, Los BaÃ±os (UPLB)', '', '', '', '', '', '', '', '', '2019-11-29', '24-8', '', 0),
(17, 'villena_adelina b.jpg', 'ADELINA', 'BUESA', 'BENAVENTE-VILLENA', '', 0, 'Female', 'Married', 'attyadelle@pcsd.gov.ph', 'Permanent', 'Lot 7 Block Beauland Subdivision Sta. Monica , Puerto Princesa City Palawan ', '1957-06-01', 'Malilipot,Albay', '1994-01-01', '2015-08-13', 'CSC Professional', 'Director II', 0, 'OED (Office of the Executive Director)      ', '121-251-819', '   -   -   ', '   -   -   ', 'PCSDB-DIR2-1-1998', 0, '+639 175-536-157', 0, 'BSC Economics ', '1981', 'University of Nueva Caceres Naga City ', 'Master of Regional Planning & Bachelor of Laws', '', '1984', 'University of the Philippines school of Urban and ', '', '', '', '', '', '', '', '', '2019-11-29', '26-2', '', 0),
(18, 'Benitez_Maria.jpg', 'MARIA', 'JAVAREZ', 'BENITEZ', '', 0, 'Female', 'Married', 'mariajavarez@yahoo.com', 'Permanent', 'Junction 1 St. San  Miguel Puerto Princesa City Palawan', '1962-03-03', 'Cuyo, Palawan', '2017-12-29', '2017-12-29', 'Driver\'s License', 'Admin Aide III', 0, 'AFD (Admin and Finance Division)   ', '119-019-763', '   -   -   ', '   -   -   ', 'ADA3-13-2004', 0, '+639 208-973-271', 0, 'BSBA Banking & Finance', '1986', 'Holy Trinity College ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '3-1', '', 0),
(19, 'Matulac_Josephine LS.jpg', 'JOSEPHINE', 'SAHAGON', 'MATULAC', '', 0, 'Female', 'Single', 'jsmatulac@yahoo.com', 'Permanent', 'Alisuag Compound Wescom Rd.Puerto Princesa', '1956-11-14', 'Cuenca, Batangas', '1994-01-01', '1994-01-01', 'CSC Professional', 'Director II', 0, 'OED (Office of the Executive Director)    ', '110-651-234', '   -   -   ', '   -   -   ', 'PCSDB-DIR2-2-1998', 0, '+639 177-200-03 ', 0, 'Bachelor of Science in Agribusiness', '1980', 'College of Development Economics and Management Un', 'MA Urban Rural Planning', '', '1986', 'School of Urban and Regional Planning University o', '', '', '', '', '', '', '', '', '2020-03-09', '26-8', '', 0),
(20, 'Kuddana_Marilou C.jpg', 'MARILOU', 'CAABAY', 'KUDANNA', '', 0, 'Female', 'Widowed', 'mariloukuddana@gmail.com', 'Permanent', 'Sampaguita St. Purok Masaya San Miguel Puerto Princesa City Palawan', '1969-06-24', 'Brooke\'s Point , Palawan', '1994-01-01', '1994-01-01', 'Career Service Sub-P', 'Admin Assistant III', 0, 'OED (Office of the Executive Director)   ', '121-251-850', '   -   -   ', '   -   -   ', 'ADAS3-3-2004', 0, '+639 108-826-260', 0, 'BS Customs Administration', '1990', 'Palawan Polytechnic College Inc', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '9-8', '', 0),
(21, 'Reyes_Zaldy.jpg', 'ZALDY', 'SANTILLAN', 'REYES', '', 0, 'Female', 'Single', '', 'Permanent', 'Purok Gumamela Bgy. Sta Monica PPC ', '1969-04-28', 'Coron, Palawan ', '1997-07-16', '1997-07-16', 'Driver\'s License', 'Admin Aide IV', 0, 'OED (Office of the Executive Director)   ', '927-834-510', '   -   -   ', '   -   -   ', 'ADA4-5-2004', 0, '+639    -   -   ', 0, '', '', '', '', '', '', '', '', '', '', '', 'GRCO', '', 'Palawan Polytechnic College Inc', '', '2020-03-10', '4-8', '', 0),
(22, 'Merin_CdP.jpg', 'CRESIL', 'DE PABLO', 'MERIN', '', 0, 'Female', 'Married', 'cpmerin@yahoo.com', 'Permanent', 'B 11 L 15 WREN ST. NORTHRIDGE CLASSIC Sto.Cristo City of San Jose Del Monte Bulacan ', '1958-12-05', 'CAMALIGAN,BATAN,AKLAN', '2019-10-24', '2019-10-24', 'CSC Professional', 'Information Technology Officer I', 0, 'OED (Office of the Executive Director)   ', '130-729-155', '   -   -   ', '   -   -   ', 'PCSDB-ITO1-1-1998', 0, '+639 202-125-688', 0, 'BS in Agriculture Major in Agribusiness', '1980', 'Silliman University ', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '19-2', '', 0),
(23, 'mendoza_bernard.jpg', 'BERNARD', 'FRANCISCO', 'MENDOZA', '', 0, 'Male', 'Married', 'brndmndza@yahoo.com', 'Permanent', 'Purok Masagana Road Bgy. San Jose Puerto Princesa City Palawan', '1966-10-02', 'Sta. Cruz, Laguna', '1997-03-26', '1997-03-26', 'CSC Professional', 'Computer Programmer II', 0, 'OED (Office of the Executive Director)   ', '912-869-202', '   -   -   ', '   -   -   ', 'PCSDB-COMP02-1-1998', 0, '+639 272-938-679', 0, 'AB Sociology', '1987', 'University of Santo Tomas', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '15-8', '', 0),
(24, 'Suycano_Alejandro.jpg', 'RUSELA', 'AQUINO', 'SUYCANO', '', 0, 'Female', 'Married', 'ruselasuycano@yahoo.com', 'Permanent', 'Block 9 Lot 5  Beuland subd. Bgy. Sta. Monica PPC Palawan', '1962-08-26', 'Pandacan , Manila', '1994-01-01', '1994-01-01', 'Career Service Sub-P', 'Admin Assistant III', 0, 'OED (Office of the Executive Director)  ', '121-252-550', '   -   -   ', '   -   -   ', 'ADAS3-2-2004', 0, '+639 391-735-264', 0, 'AB Economics (3rd yr)', '1982', 'Holy Trinity College ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '9-8', '', 0),
(25, 'Quiling_Perlita I.jpg', 'PERLITA', 'ILA', 'QUILING', '', 0, 'Female', 'Married', 'pearlquiling@yahoo.com', 'Permanent', '#3 Rd. 4 N Pineda Subd. Puerto Princesa City Palawan', '1957-11-26', 'Banna , Ilocos Norte', '1994-01-01', '1994-01-01', 'Career Service Sub-P', 'Admin Assistant III', 0, 'OED (Office of the Executive Director)  ', '121-255-406', '   -   -   ', '   -   -   ', 'ADAS3-2004', 0, '+639 271-623-262', 0, 'BS Chemical Engineering ', '1980', 'Natonal University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '9-8', '', 0),
(26, 'Roque_Rhoda B.jpg', 'RHODA', 'BONTOGON', 'ROQUE', '', 0, 'Female', 'Widowed', 'rhodaroque05@yahoo.com', 'Permanent', 'Abad Santos Extension Bgy. Sikat PPC PALAWAN', '1958-07-08', 'Puerto Princesa City ', '1994-01-01', '2014-10-28', 'Career Service Profe', 'Project Development Officer V', 0, 'ECAN Monitoring and Evaluation Division (EMED)    ', '121-252-455', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-4-1998', 0, '+639 299-609-131', 0, 'BS Agricultural Engineering', '1982', 'Mindanao State University ', 'MA Environmental Management', '', '2012', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-10', '24-2', '', 0),
(27, 'cruz_abegail p.jpg', 'ABEGAIL', 'PAGAYONA', 'CRUZ', '', 0, 'Female', 'Married', '', 'Permanent', '10-C H. Mendoza St. Bgy. Model Puerto Princesa City ', '1958-12-13', 'Quezon,Palawan ', '1994-01-01', '2003-08-01', 'CSC Professional', 'Project Development Officer IV', 0, 'ECAN Monitoring and Evaluation Division (EMED)       ', '121-251-948', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-7-1998', 0, '+639 182-148-363', 0, 'BS Agricultural  Education', '1980', 'Gregorio Araneta University Foundation', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '22-6', '', 0),
(28, 'Cadigal_Glenda M.jpg', 'GLENDA', 'MANALO', 'CADIGAL', '', 0, 'Female', 'Married', 'a9237705@yahoo.com', 'Permanent', 'A. Cabanag Rd. B.M. San Pedro Puerto Princesa Palawan ', '1975-04-16', 'San Jose, Antique ', '1997-05-19', '2006-12-29', 'CSC Professional', 'Project Development Officer III', 0, 'ECAN Monitoring and Evaluation Division (EMED)  ', '188-390-622', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-10-1998', 0, '+639 159-154-357', 0, 'Bachelor of Science in Forestry', '1996', 'University of the Philippines, Los BaÃ±os', 'MS Environmental Management', '', '2014', 'Palawan State University ', 'PhD -Fishery Management', '', ' 9 units', 'Western Philippine University ', '', '', '', '', '2020-03-09', '18-3', '', 0),
(29, 'Perez Marianne Faith M22.jpg', 'MARIANNE FAITH', 'MARTINICO', 'PEREZ', '', 0, 'Female', 'Married', 'm38424@yahoo.com', 'Permanent', 'Lot 13 Block 13 ALFONSO VILLE Bgy. Sicsican PPC ', '1981-03-18', 'POBLACION, ABORLAN PALAWAN ', '2008-06-01', '2018-10-12', 'CSC Professional', 'Project Development Officer III', 0, 'ECAN Monitoring and Evaluation Division (EMED)   ', '933-499-068', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-1998', 0, '+639 667-189-970', 0, 'Bachelor of Science in Chemistry ', '2002', 'Mindanao State University ', 'MS Environmental Science', '', '2014', 'Nagoya University , Japan ', 'Docto environmental Science', '2018', '', 'Nagoya University , Japan ', '', '', '', '', '2020-03-09', '18-1', '', 0),
(30, 'Licerio_Daryl.jpg', 'DARYL', 'CAJILIG', 'LICERIO', '', 0, 'Male', 'Married', 'daryllicerio@gmail.com', 'Permanent', '75 Mabini St. Bgy.Maunlad Puerto Princesa City Palawan', '1969-06-07', 'Puerto Princesa', '2009-04-16', '2013-02-01', 'CSC Professional', 'Project Development Officer II', 0, 'ECAN Monitoring and Evaluation Division (EMED)  ', '173-829-255', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-11-1998', 0, '+639 285-053-948', 0, 'Bs- Engineering/Environmetal Science', '2001', 'Palawan Stae University ', 'Masters in Tropical Marine Ecosystems management', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '15-2', '', 0),
(31, 'Palanca Eva.jpg', 'EVARISTA', 'BAAC', 'PALANCA', '', 0, 'Female', 'Married', 'evapalanca2011@yahoo.com', 'Permanent', 'Bgy. Poblacion 6, CORON, PALAWAN', '1955-06-07', 'TTENEGUIBAN EL NIDO, PALAWAN', '2013-02-01', '2016-01-01', 'CSC Professional', 'Project Development Officer II', 0, 'ECAN Monitoring and Evaluation Division (EMED)  ', '906-792-810', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-13-1998', 0, '+639 088-201-136', 0, 'BS Nursing', '1975', 'Far Eastern University', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '15-1', '', 0),
(33, 'Gencianeo_Ana Marie.jpg', 'ANNA MARIE', 'GUJILDE', 'GENCIANO', '', 0, 'Female', 'Single', 'gencianeoana@gmail.com', 'Permanent', 'RIOTUBA,BATARAZA PALAWAN ', '1990-04-21', 'RIOTUBA,BATARAZA PALAWAN ', '2016-02-16', '2016-02-16', 'Career Service Profe', 'Project Development Officer I', 0, 'ECAN Monitoring and Evaluation Division (EMED) ', '325-997-210', '   -   -   ', '   -   -   ', 'PCSDB-PDO1-1-1998', 0, '+639 462-976-154', 0, 'BS Environmental Science', '2011', 'Palawan Stae University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '11-1', '', 0),
(34, 'Martinez_Maria Luz L2.jpg', 'MARIA LUZ', 'ABOROT', 'MARTINEZ', '', 0, 'Female', 'Single', 'marialuzmart@yahoo.com', 'Permanent', '#10 Martinez St. Santiago Subd. Purok Mapagmahal , San Jose Puerto Princesa City Palawan', '1957-02-20', 'Aborlan, Palawan', '2001-01-19', '2001-08-20', 'Career Service Profe', 'Project Development Officer V', 0, 'EPRPD   ', '121-252-262', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-1-1998', 0, '+639 175-875-318', 0, 'Economics-undergraduate Course ', '1983', 'University of Santo Tomas', 'Master in Environmental Mgt. & Dev\'t.', '', '1995', 'Australian National University', '', '', '', '', '', '', '', '', '2020-03-09', '24-6', '', 0),
(35, 'Gacot_Rosanna F.jpg', 'ROSANA', 'FELIZARTE', 'GACOT', '', 0, 'Female', 'Married', 'rosanagacot2002@yahoo.com', 'Permanent', 'Lot 6 Block 10 Alta Homes Subd. San Jose Puerto Princesa City Palawan ', '1969-12-18', 'Taytay, Palawan ', '1994-01-01', '2003-08-01', 'PD 907', 'Project Development Officer IV', 0, 'EPRPD  ', '173-834-324', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-1-1998', 0, '+639 175-222-72 ', 0, 'Bachelor of Arts Major In English  ', '1991', 'Palawan Stae University ', 'Master in Public Administration', ' 36 units', '2007', 'Holy Trinity College ', '', '', '', '', '', '', '', '', '2019-11-28', '22-2', '', 0),
(36, 'Fabello_John Vincentws.jpg', 'JOHN VINCENT', 'BAJAR', 'FABELLO', '', 0, 'Male', '', 'jovicfabello@yahoo.com', 'Permanent', '14 Carandang , Manggahan Puerto Princesa City Palawan', '1969-08-29', 'Puerto Princesa City ', '2006-12-29', '2015-04-15', 'RA 1080 (Forester)', 'Project Development Officer III', 0, 'EPRPD   ', '163-384-860', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-9-1998', 0, '+639 278-767-887', 0, 'BS Forester', '1992', 'University of the Philippines, Los BaÃ±os', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '18-1', '', 0),
(37, 'Caabay_Edwin L.jpg', 'EDWIN', 'LADICA', 'CAABAY', '', 0, 'Male', 'Married', 'edwincaabay02@gmail.com', 'Permanent', '193 Mapalad Kaakbayan Tiniguiban Puerto Princesa Palawan', '1972-02-03', 'Magsaysay,Palawan ', '2019-12-26', '2014-05-26', 'Career Service Profe', 'Project Development Officer III', 0, 'EPRPD     ', '186-140-512', '   -   -   ', '   -   -   ', '', 0, '+639 076-520-633', 0, 'Bachelor of Science in Agricutural Engineering ', '1995', 'Palawan National Agricultural College  ', 'MS Extension System Management', '', '2016', 'WESTERN PHILIPPINES UNIVERSITY', '', '', '', '', 'Bachelor of Science in Forestry ', '2001', 'State Poltechnic College of Palawan', '', '2020-03-09', '18-2', '', 0),
(38, 'DeGuzman Arnica Lorenzo.jpg', 'ARNICA', 'DE GUZMAN', 'MORTILLERO', '', 0, 'Female', 'Married', 'clef17@gmail.com', 'Permanent', 'Magura Compound San Jose Puerto Princesa City Palawan', '1987-09-17', 'Valenzuela , Metro Manila', '2016-09-01', '2016-09-01', '', 'Project Development Officer II', 0, 'EPRPD   ', '418-417-729', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-1-1998', 0, '+639 469-944-298', 0, 'BS Environmental Science', '2010', 'Palawan State University ', 'Masters in Environmental Science', '', '2016', 'Palawan State University ', 'PhD in Environmental Science ', '2016', 'on going ', 'University of the Philippines, Los BaÃ±os (UPLB)', '', '', '', '', '2020-03-09', '15-1', '', 0),
(39, 'Valdez_Lynn S.jpg', 'LYN', 'SEMBRANO', 'VALDEZ', '', 0, 'Female', 'Single', 'lsv1222@yahoo.com', 'Permanent', 'Sampaloc St. San Jose PPC Palawan ', '1970-05-01', 'Roxas, Palawan ', '1995-07-27', '2000-01-01', 'Career Service Profe', 'Project Development Officer II', 0, 'EPRPD ', '129-580-481', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-10-1998', 0, '+639 088-214-925', 0, 'BS Agri-Business Mgt.', '1992', 'University of the Philippines, Los BaÃ±os', 'Master in Public Administration', '', '1999', 'Palawan State University ', '', '', '', '', '', '', '', '', '2019-11-29', '15-7', '', 0),
(40, 'Cabrestante_Madrono Jr Pa.jpg', 'MADRONO', 'PADRONES', 'CABRESTANTE', 'Jr', 0, 'Male', 'Married', 'mcabrestante@yahoo.com', 'Permanent', 'No. 25 Lomboy Rd. San Jose PPC', '1970-03-14', 'Puerto Princesa City Palawan', '1994-01-01', '2013-02-01', 'RA 1080 (Ag Engineer', 'Project Development Officer V', 0, 'ECAN Zones Management and Enforcement Division (EZMED)  ', '164-875-202', '   -   -   ', '   -   -   ', '', 0, '+639 175-625-999', 0, 'BS Agricultural Engineering', '1992', 'Palawan National Agricultural College  ', 'MS of Arts in Mgt.(Envi.Management)', '', '2004', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-09', '24-2', '', 0),
(41, 'Labrador_Nora D.jpg', 'LEONORA', 'DASALLA', 'LABRADOR', '', 0, 'Female', 'Married', 'labradornora11@yahoo.com', 'Permanent', 'Mabentangen Rd. Poblacion 6 Coron, Palawan ', '1958-05-30', 'El Nido , Palawan ', '1994-01-01', '1994-01-01', 'Career Service Profe', 'Project Development Officer IV', 0, 'ECAN Zones Management and Enforcement Division (EZMED)   ', '121-252-166', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-2-1998', 0, '+639 175-008-076', 0, 'BS Agriculture-Agronomy', '1980', 'Palawan National Aquaculture College  ', 'Master of Public Administration', '27 units', '1996', 'Holy Trinity College ', '', '', '', '', '', '', '', '', '2020-03-09', '22-8', '', 0),
(42, 'Regalo_Apollo.jpg', 'APOLLO', 'VITERBO', 'REGALO', '', 0, 'Male', 'Married', 'apolregalo@yahoo.com', 'Permanent', 'lot 26 blk 11 Villa Princesa Subd. Sta. Monica Puerto Princesa City Palawan', '1970-08-15', 'Nagcarlan , Laguna', '1997-06-01', '1999-06-30', 'Career Service Profe', 'Project Development Officer III', 0, 'ECAN Zones Management and Enforcement Division (EZMED)  ', '183-095-695', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-13-1998', 0, '+639 474-330-368', 0, 'BS Forestry', '1992', 'University of the Philippines, Los BaÃ±os', 'Master in Public Administration', '', '2015', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-10', '18-7', '', 0),
(43, 'Villamor2_Irish R.jpg', 'IRISH', 'RODRIGUEZ', 'VILLAMOR', '', 0, 'Female', 'Single', 'irish.villamor@gmail.com', 'Permanent', '5-F Samaral Street Bgy. Mandaragat PPC Palawan ', '1988-09-28', 'Puerto Princesa City ', '2014-10-01', '2017-07-17', 'Career Service Profe', 'Project Development Officer III', 0, 'ECAN Zones Management and Enforcement Division (EZMED) ', '292-053-293', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-14-1998', 0, '+639 173-184-887', 0, 'BS Environmental Science', '2009', 'Palawan State University - Main Campus', 'Bachelor of Laws', '', '2013', 'Palawan State College (University )', '', '', '', '', '', '', '', '', '2019-11-29', '18-1', '', 0),
(44, 'Dela Cruz_Mark 22.jpg', 'MARK ACE', 'VILLEGAS', 'DELA CRUZ', '', 0, 'Male', 'Married', 'markacedelacruz2014@gmail.com', 'Permanent', 'Purok El Rancho Sta. Monica Puerto Princesa City Palawan ', '1985-01-27', 'Puerto Princesa City Palawan', '2014-06-16', '2015-07-01', 'Career Service Profe', 'Project Development Officer II', 0, 'ECAN Zones Management and Enforcement Division (EZMED)  ', '249-118-957', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-14-1998', 0, '+639 275-067-093', 0, 'BS Biology ', '2006', 'University of the Philippines', 'MS Environmental Studies ', '', '2017', 'Nagoya University ', '', '', '', '', '', '', '', '', '2019-11-28', '15-2', '', 0),
(45, 'larios_josemarie.jpg', 'JOSE MARIE', 'IBABAO', 'LARIOS', '', 0, 'Male', 'Married', '', 'Permanent', '11 Fernandez St. Bgy. Tanglaw Puerto Princesa City Palawan', '1965-01-24', 'Magsaysay,Palawan ', '1994-01-01', '2003-09-16', 'Career Service Profe', 'Project Development Officer II', 0, 'ECAN Zones Management and Enforcement Division (EZMED) ', '121-252-182', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-15-1998', 0, '+639 097-230-174', 0, 'BBA Economics', '1994', 'Palawan State University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '15-6', '', 0),
(46, 'Pontillas_John Franciso A.jpg', 'JOHN FRANCISCO', 'ABIOG', 'PONTILLAS', '', 0, 'Male', 'Married', 'johnpontillas@yahoo.com', 'Permanent', 'DACANAY RD. 2 SAN MANUEL Puerto Princesa City Palawan', '1966-08-21', 'Manila, Philippines', '1994-01-01', '2003-10-01', 'Career Service Profe', 'Project Development Officer V', 0, 'ECAN Education and Extension Division (EEED) ', '121-252-383', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-6-1998', 0, '+639 175-531-917', 0, 'BS Fisheries', '1987', 'University of the Philippines ', 'Master in Public Policy', '', '2002', 'National University of Singapore', '', '', '', '', '', '', '', '', '2019-11-29', '24-6', '', 0),
(47, 'Rodriguez_MaChristina Dalusung.jpg', 'MA. CHRISTINA', 'DALUSONG', 'RODRIGUEZ', '', 0, 'Female', 'Married', 'tinadalusung@yahoo.com', 'Permanent', 'BLOCK 1 LOT 7 MAGNOLIA AVENUE CAMELLA HOMES BANCAO-BANCAO PPC PALAWAN ', '1981-11-06', 'San Juan , Metro Manila', '2010-12-30', '2018-03-03', 'Career Service Profe', 'Project Development Officer IV', 0, 'ECAN Education and Extension Division (EEED)  ', '931-424-159', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-6-1998', 0, '+639 183-453-604', 0, 'B.S. Environmental Science', '2002', 'Palawan State University ', 'Master in Communication', '', '2014', 'University of Texas in EL PASO', '', '', '', '', '', '', '', '', '2020-03-10', '22-1', '', 0),
(48, 'Quiling_Celso S.jpg', 'CELSO', 'SALUDAR', 'QUILING', '', 0, 'Male', 'Married', 'baldheadepeneyra@yahoo.com', 'Permanent', 'Peneyra Rd. Bgy. San Pedro Puerto Princesa City Palawan', '1957-07-09', 'Puerto Princesa City, Palawan', '1994-01-01', '1997-03-17', 'Career Service Profe', 'Project Development Officer IV', 0, 'ECAN Zones Management and Enforcement Division (EZMED)    ', '121-252-392', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-15-1998', 0, '+639 064-557-063', 0, 'BSBA - Accountancy ', '1992', 'Philippine School of Business Administration ', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-10', '18-8', '', 0),
(49, 'episcope_elizabeth2.jpg', 'ELIZABETH', 'DAQUIAL', 'EPISCOPE', '', 0, 'Female', 'Married', '', 'Permanent', 'Block 3 Lot 16 Sta.Monica Maryhomes Molino IV Bacoor Cavite ', '1961-10-04', 'Quezon City ', '1994-01-01', '1999-12-16', '', 'Project Development Officer III', 0, 'ECAN Education and Extension Division (EEED)  ', '130-729-076', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-16-1998', 0, '+639 955-957-033', 0, 'BSBA Banking & Finance', '1981', 'University of the East-Manila', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '18-7', '', 0),
(50, 'Jalover_Che.jpg', 'CHERYL ANN', 'SANGILAN', 'JALOVER', '', 0, 'Male', 'Single', 'ehcnyl0310@yahoo.com', 'Permanent', '', '1988-09-20', 'Puerto Princesa City Palawan', '2014-07-01', '2016-08-15', 'PD 907', 'Project Development Officer II', 0, 'ECAN Education and Extension Division (EEED) ', '292-050-311', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-2-1998', 0, '+639 157-543-197', 0, 'B.S.Environmental Science', '2009', 'Palawan State University ', 'MS Environmental Management', ' 37 units', '2012', '', '', '', '', '', '', '', '', '', '2019-11-29', '15-1', '', 0),
(51, 'Fuentes_Ryan T.jpg', 'RYAN', 'TIBAYAN', 'FUENTES', '', 0, 'Male', '', 'ryan.fuentes.@upd.edu.ph', 'Permanent', 'Block 3 lot 35 Phase 1 Camella, Bgy.Bancao-Bancao Puerto Princesa City Palawan ', '1979-10-30', 'Quezon City ', '2004-12-16', '2014-05-08', 'RA 1080 (Geodetic En', 'Chief Admin Officer', 0, 'AFD (Admin and Finance Division)  ', '226-189-519', '   -   -   ', '   -   -   ', 'CADOF-1-2004', 0, '+639 189-577-177', 0, 'BS Geodetic Engineering ', '2003', 'University of the Philippines Diliman, Quezon City', 'MS environmental management', '', '2007', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-09', '24-2', '', 0),
(52, 'Ledesma_E.jpg', 'ERMINA', 'DIAZ', 'LEDESMA', '', 0, 'Female', 'Married', 'pijapmj@yahoo.com', 'Permanent', 'Block 55 Lot 22 Natalia Avenue Antipolo Hills Subd. Bgy. San Luis Antipolo City Rizal ', '1961-12-24', 'Calauag, Quezon ', '1994-01-01', '1994-01-01', 'RA 1080 (Accountant)', 'Supervising Admin Officer', 0, 'AFD (Admin and Finance Division) ', '130-729-122', '   -   -   ', '   -   -   ', 'SADOF-6-2004', 0, '+639 055-121-691', 0, 'BS Accountancy', '1982', 'University of the East', 'Master of Business Admin ', '39 units', '2001', '', '', '', '', '', '', '', '', '', '2019-11-28', '22-8', '', 0),
(53, 'Rodriguez_Maria Cristina C.jpg', 'MA. CRISTINA', 'CAPALLA', 'RODRIGUEZ', '', 0, 'Female', 'Married', 'tincapalla2@yahoo.com', 'Permanent', 'C CASTRO RD. BGY. SAN PEDRO PPC PALAWAN', '1979-03-11', 'Puerto Princesa City ', '2003-09-16', '2013-02-01', 'Career Service Profe', 'Admin Officer V', 0, 'AFD (Admin and Finance Division)  ', '924-030-358', '   -   -   ', '   -   -   ', 'ADOF5-7-2004', 0, '+639 778-220-077', 0, 'BS Accountancy', '2000', 'UNIVERSITY OF SAN AGUSTIN , ILOILO', 'Master of Arts in Management ', '', '2005', 'Palawan State University ', '', '', '', '', ' Master in Development Management', '2017', 'Development Academy of the Philippines ', '', '2020-03-10', '18-2', '', 0),
(54, 'Maghanoy_Susan K.jpg', 'SUSAN', 'KING', 'MAGHANOY', '', 0, 'Female', 'Separated', 'susanking18@yahoo.com', 'Permanent', 'Dandal rd. SHJ subd. Sta. Monica Puerto Princesa City Palawan', '1965-11-18', 'ILIGAN CITY , LANAO DEL NORTE', '2010-01-16', '2014-06-16', 'Career Service Profe', 'Admin Officer III', 0, 'AFD (Admin and Finance Division)  ', '934-442-447', '   -   -   ', '   -   -   ', 'ADOF3-10-2004', 0, '+639 173-979-703', 0, 'BSC - Accounting', '1987', 'St. Michael\'s College ', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '14-2', '', 0),
(55, 'Ignacio_Edgardo Sc.jpg', 'EDGARDO', 'CANCAYDA', 'IGNACIO', '', 0, 'Male', 'Married', '', 'Permanent', 'Beuland subd. Sta. Monica Puerto Princesa City Palawan', '1959-01-25', 'San Jose Puerto Princesa City Palawan', '1994-01-01', '2000-06-01', 'Career Service Profe', 'Admin Assistant V', 0, 'AFD (Admin and Finance Division) ', '130-222-281', '   -   -   ', '   -   -   ', 'ADAS5-12-2004', 0, '+639 151-765-814', 0, 'Marine Engineering (63 units)', '1978', 'Philippine Marine Institute', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '11-6', '', 0),
(56, 'Rapio_Mary Ann.jpg', 'MAY ANN', 'JARA', 'RAPIO', '', 0, 'Female', '', '', 'Permanent', 'SANTOL ST. SAN JOSE Puerto Princesa City PALAWAN', '1978-05-02', 'San Jose Puerto Princesa City ', '2015-10-01', '2015-10-01', 'CSC Sub Professional', 'Admin Officer III', 0, 'AFD (Admin and Finance Division)  ', '920-638-143', '   -   -   ', '   -   -   ', 'ADOF2-12-2004', 0, '+639    -   -   ', 0, 'Bachelor of Science in Computer Science ', '1999', 'Holy Trinity University ', 'MS Rural Development, MS in GIS and Earth Observat', '', '2013', ' Western Philippines University ', '', '', '', '', '', '', '', '', '2020-03-10', '11-2', '', 0),
(57, 'Padilla_Fernando.jpg', 'FERNANDO', 'ELIZAGA', 'PADILLA', '', 0, 'Male', 'Married', 'ding15@yahoo.com', 'Permanent', 'SOCRATES RD. BGY. MANDARAGAT PALAWAN ', '1955-04-09', 'SUMABNIT BINALONAN PANGASINAN', '1994-01-01', '1994-01-01', 'Career Service Profe', 'Admin Assistant V', 0, 'AFD (Admin and Finance Division) ', '121-252-360', '   -   -   ', '   -   -   ', 'ADAS5-11-2004', 0, '+639 275-595-726', 0, 'B.S  in Agriculture', '1978', 'Palawan National Agricultural College Aborlan ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '11-8', '', 0),
(58, 'cariÃ±o_ariel.jpg', 'ARNEL', 'BALOLOY', 'CARIÃ‘O', '', 0, 'Male', 'Married', 'cherrycarino4046@gmail.com', 'Permanent', '191 Manalo St. Milagrosa Puerto Princesa City Palawan ', '1961-05-21', 'Taytay, Palawan ', '1994-01-01', '1994-01-01', '', 'Admin Assistant III', 0, 'AFD (Admin and Finance Division)    ', '121-251-893', '   -   -   ', '   -   -   ', '', 0, '+639 956-562-17 ', 0, '', '', '', '', '', '', '', '', '', '', '', 'Bachelor of Science in Commerce', '1979', 'Palawan State University ', '', '2019-11-29', '9-8', '', 0),
(59, 'Parales_Rommel R.jpg', 'ROMMEL', 'ROBLES', 'PARALES', '', 0, 'Male', 'Married', 'rrparales06@yahoo.com', 'Permanent', 'Block 1 Employees Village, Sta. Monica Puerto Princesa City Palawan', '1969-10-02', 'Puerto Princesa City ', '1994-01-01', '1994-01-01', '', 'Admin Aide VI', 0, 'AFD (Admin and Finance Division)  ', '121-252-359', '   -   -   ', '   -   -   ', 'ADA6-10-2004', 0, '+639 994-891-008', 0, 'BS ACCOUNTANCY', '', 'HOLY TRINITY UNIVERSITY', '', '', '', '', '', '', '', '', 'GRCO', '1992', 'Holy Trinity College ', '', '2020-03-09', '6-8', '', 0),
(60, 'Episcope_Florante R.jpg', 'FLORANTE', 'REVILLA', 'EPISCOPE', '', 0, 'Male', 'Married', '', 'Permanent', 'Block 3 lot 16 Sta. Monica Maryhomes Molina IV ', '1965-02-26', 'Oas Albay', '1999-05-19', '1999-05-19', '', 'Admin Aide IV', 0, 'AFD (Admin and Finance Division)  ', '130-729-084', '   -   -   ', '   -   -   ', 'ADA4-7-2004', 0, '+639 955-957-033', 0, 'Mechanical Engineering (2nd year)', '1985', 'Bicol University', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '4-7', '', 0),
(61, 'Lagrada_Monico.jpg', 'MONICO', 'ALASKA', 'LAGRADA', '', 0, 'Male', 'Married', '', 'Permanent', 'SHJD Subd. Sta.Monica Puerto Princesa City Palawan', '1967-04-29', 'Ipilian, Brooke\'s Point , Palawan', '2016-07-01', '2016-07-01', '', 'Admin Aide VI', 0, 'AFD (Admin and Finance Division)  ', '909-276-097', '   -   -   ', '   -   -   ', 'ADA4-8-2004', 0, '+639 059-105-569', 0, '', '', '', '', '', '', '', '', '', '', '', 'Associate in Marine Engineering ', '1993', 'Palawan Polytechnic College Inc', '', '2020-03-09', '4-1', '', 0),
(62, 'magarce_armando.jpg', 'ARMANDO', 'CABALUNA', 'MAGARCE', '', 0, 'Male', 'Married', '', 'Permanent', 'Calle Pogi , Liberty Bonifacio Bgy.Bagong Sikat Puerto Princesa City Palawan', '1964-04-19', 'Narra,Palawan', '1994-01-01', '2005-02-01', '', 'Admin Aide III', 0, 'AFD (Admin and Finance Division)  ', '121-252-221', '   -   -   ', '   -   -   ', 'ADA3-11-2004', 0, '+639 121-277-160', 0, '', '', '', '', '', '', '', '', '', '', '', 'Secondary', '', '', '', '2020-03-09', '3-5', '', 0),
(63, 'Macasinag_Zenaida L.jpg', 'ZENAIDA', 'LORENZO', 'MACASINAG', '', 0, 'Male', 'Married', 'airazek30@yahoo.com', 'Permanent', 'Blk 1 Lot V Golden Harvest Sicsican Puerto Princesa City Palawan', '1980-09-08', 'SEAPLANE BASE II PUERTO PRINCESA CITY ', '2016-09-15', '2016-09-15', '', 'Admin Aide III', 0, 'AFD (Admin and Finance Division)  ', '935-003-110', '   -   -   ', '   -   -   ', 'ADA3-12-2004', 0, '+639 095-969-083', 0, 'Bachelor of Science in Business Administration', '2017', 'Fullbright College School', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '3-1', '', 0),
(64, 'Gallego_Merlina D.jpg', 'MERLINA', 'DIVINO', 'GALLEGO', '', 0, 'Female', 'Married', 'gallegomerlina@yahoo.com', 'Permanent', 'Block 4. lot 23, Laphifai sub. Bgy.Sicsican, Puerto Princesa City, Palawan', '1960-07-04', 'San Luis, Batangas', '2005-04-16', '2005-04-16', '', 'Admin Aide I', 0, 'AFD (Admin and Finance Division) ', '188-392-448', '   -   -   ', '   -   -   ', 'ADA1-15-2004', 0, '+639 307-278-479', 0, 'UNDER GRADUATE SECRETARIAL ', '1978', 'Holy Trinity College ', '', '', '', '', '', '', '', '', 'vocational ', '', '', '', '2019-11-28', '1-5', '', 0),
(65, 'Estoya_NRC 2x2 600px.jpg', 'NIÃ‘O REY', 'CRUZ', 'ESTOYA', '', 0, 'Male', 'Married', 'nioestoya@yahoo.com', 'Permanent', 'ABAD-SANTOS-FERNANDEZ RD.', '1981-01-18', 'MIDSAYAP,NORTH COTABATO ', '2009-02-01', '2016-05-26', 'PD 907', 'Project Development Officer V', 0, 'DMO Calamianes  ', '930-417-633', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-7-1998', 0, '+639 399-179-415', 0, 'A.B. PHILOSOPHY ', '2002', 'Seminario De San Jose ', 'Bachelor of Laws', '', '2010', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-09', '24-1', '', 0),
(66, 'Pambid_Wilson R.jpg', 'WILSON', 'RIBAC', 'PAMBID', '', 0, 'Male', 'Married', 'amianan04@yahoo.com', 'Permanent', '10 Sea Rd. IV Bgy. San Manuel Puerto Princesa City Palawan', '1961-09-01', 'Batac , Ilocos Norte ', '1994-01-01', '2003-10-01', 'RA 1080 (Ag Engineer', 'Project Development Officer IV', 0, 'DMO North ', '121-252-341', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-8-1998', 0, '+639 167-245-680', 0, 'BS Agricultural Engineering', '1983', 'Mariano Marcos State University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '22-6', '', 0),
(67, 'Sapad_ Mary Anne PdeL.jpg', 'MARY ANN', 'PONCE DE LEON', 'SAPAD', '', 0, 'Female', 'Widowed', 'annosapad@yahoo.com', 'Permanent', 'Maj. Zabala St. Bgy. Tiniguiban PPC Palawan', '1970-09-23', 'Puerto Princesa City, Palawan', '2003-09-16', '2015-10-31', 'Career Service Profe', 'Project Development Officer III', 0, 'DMO Calamianes  ', '901-245-015', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-3-1998', 0, '+639 175-592-160', 0, 'BS Banking & Finance', '1991', 'Palawan State University ', 'Master of Arts in Public Administration ', '9 units', '', '', '', '', '', '', '', '', '', '', '2020-03-10', '22-6', '', 0),
(68, 'Sabuya.jpg', 'MICHELLE ANDREA AUGU', 'FERIDO', 'SABUYA', '', 0, 'Female', 'Single', 'mitchie592003@yahoo.com', 'Permanent', '109 BM Rd. Bgy. San Pedro PPC PALAWAN', '1986-06-08', 'MANILA', '2016-01-09', '2016-01-09', 'PD 907', 'Project Development Officer II', 0, 'DMO Calamianes  ', '947-010-204', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-8-1998', 0, '+639 216-127-587', 0, 'BS Accountancy', '2007', 'Holy Trinity College ', 'Bachelor of Laws', '', '2014', 'Palawan State College (University )', '', '', '', '', '', '', '', '', '2020-03-10', '15-1', '', 0),
(69, 'CariÃ±o_Ariel C.jpg', 'ARIEL', 'BALOLOY', 'CARIÃ‘O', '', 0, 'Male', 'Married', 'carino60@yahoo.com', 'Permanent', 'Manalo Extension Brgy. Milagrosa Puerto Princesa City Palawan ', '1959-12-06', 'Puerto Princesa City Palawan', '1994-01-01', '1994-01-01', '', 'Admin Aide IV', 0, 'DMO Calamianes ', '121-251-884', '   -   -   ', '   -   -   ', '', 0, '+639 076-283-504', 0, 'BSBA (2nd year)', '', '', '', '', '', '', '', '', '', '', 'Radio Communication Operator ', '1981', 'National Radio School Institute of Technology ', '', '2019-11-28', '4-8', '', 0),
(70, 'Hilario_Merlinda V.jpg', 'MERLINDA', 'VILLAMOR', 'HILARIO', '', 0, 'Female', '', 'merlhilario@yahoo.com', 'Permanent', 'Wescom rd. Romasanta 1 Bgy. San Pedro Puerto Princesa City Palawan', '1958-01-01', 'Narra,Palawan', '1994-01-01', '2015-02-26', 'Career Service Profe', 'Project Development Officer V', 0, 'DMO South ', '121-252-133', '   -   -   ', '   -   -   ', 'PCSDB-PDO5-9-1998', 0, '+639 283-520-159', 0, 'Bachelor of Science in Agriculture ', '1982', 'Palawan National Agricultural College  / Western P', 'Master Public Administration', '', '2011', 'Palawan State University ', '', '', '', '', '', '', '', '', '2019-11-28', '24-2', '', 0),
(71, 'Racuya_Felomino O.jpg', 'FELOMINO', 'OLIVEROS', 'RACUYA', '', 0, 'Male', 'Married', 'texor4@yahoo.com', 'Permanent', 'BM RD.(INTERIOR) SAN PEDRO  Puerto Princesa City Palawan', '1956-04-24', 'Puerto Princesa City ', '1994-01-01', '1994-01-01', 'Career Service Profe', 'Project Development Officer III', 0, 'DMO South  ', '121-252-414', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-9-1998', 0, '+639 294-343-411', 0, 'BSBA Economics', '1981', 'Mindanao State University ', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-10', '22-8', '', 0),
(72, 'Villena_Nicasio M_w.jpg', 'NICASIO', 'MORALINA', 'VILLENA', '', 0, 'Male', 'Married', 'nicasiomvillena@yahoo.com', 'Permanent', 'Block 3 lot 7 Beuland Subd. Bgy. Sta. Monica PPC Palawan', '1959-12-14', 'Malate, Manila ', '1994-01-01', '1994-01-01', 'Career Service Profe', 'Project Development Officer III', 0, 'DMO South  ', '121-252-623', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-8-1998', 0, '+639 959-719-105', 0, 'BS Accountancy', '1992', 'Palawan Polytechnic College ', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-10', '18-3', '', 0),
(73, 'de la Torre_apolinar.jpg', 'APOLINAR', 'PERIA', 'DELA TORRE', '', 0, 'Male', 'Married', 'apodelo212@yahoo.com', 'Permanent', 'Lucbuan, MAGSAYSAY PALAWAN ', '1962-02-12', 'Cuyo, Palawan', '1995-07-27', '2003-12-16', 'Career Service Profe', 'Project Development Officer III', 0, 'DMO South ', '912-869-163', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-4-1998', 0, '+639 283-207-614', 0, 'BS Civil Engineering', '1985', 'University of the East', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '18-5', '', 0),
(74, 'Lubrico_Luigi.jpg', 'LUIGI', 'YAN', 'LUBRICO', '', 0, 'Male', 'Single', 'seigmond@gmail.com', 'Permanent', '61-A Manalo Bgy. Masikap Puerto Princesa City Palawan', '1993-06-08', 'Puerto Princesa City Palawan', '2017-08-31', '2017-08-31', 'RA 1080Environmental', 'Project Development Officer II', 0, 'DMO South ', '330-738-110', '   -   -   ', '   -   -   ', 'PCSDB-PDO2-6-1998', 0, '+639 478-674-921', 0, 'Bachelor of Science in Environmental Science ', '2014', 'Palawan Stae University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '15-1', '', 0),
(75, 'maca_benigno.jpg', 'BENIGNO', 'GONZAGA', 'MACA', '', 0, 'Male', '', '', 'Permanent', 'PIADP , PAC , BGY. IRAWAN PUERTO PRINCESA CITY PALAWAN', '1960-02-13', 'SEAPLANE BASE II PUERTO PRINCESA CITY ', '2011-12-29', '2016-09-01', '', 'Admin Aide VI', 0, 'DMO South ', '912-869-198', '   -   -   ', '   -   -   ', 'ADA4-10-2004', 0, '+639 307-846-944', 0, 'BBA Management', '1989', 'Palawan State College ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-29', '4-1', '', 0),
(76, 'Cunanan_B.jpg', 'BONIFACIO', 'FLORENDO', 'CUNANAN', '', 0, 'Male', '', '', 'Permanent', '', '1960-11-09', '', '1994-01-01', '1994-01-01', 'Career Service Sub-P', 'Project Development Assistant', 0, 'DMO South', '137-389-199', '   -   -   ', '    -    -    ', '', 0, '+639    -   -   ', 0, 'BS Economics (2nd year)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-27', '8-8', '', 0),
(77, 'Lagrada_Levita A.jpg', 'LEVITA', 'ACOSTA', 'LAGRADA', '', 0, 'Female', 'Married', 'levit.lagrada@gmail.com', 'Permanent', 'SHJD Subd.Sta.Monica Puerto Princesa City Palawan', '1972-11-21', 'Brooke\'s Point , Palawan', '2003-12-16', '2019-11-27', 'Career Service Profe', 'Project Development Officer IV', 0, 'DMO North   ', '133-098-382', '   -   -   ', '   -   -   ', 'PCSDB-PDO4-10-1998', 0, '+639 155-057-179', 0, 'Bachelor in Science in Zoology', '1995', 'University of the Philippines, Los BaÃ±os', 'Master of Science in Zoology ', '', '2012', 'University of the Philippines, Los BaÃ±os (UPLB)', '', '', '', '', '', '', '', '', '2020-03-09', '22-1', '', 0),
(78, 'canoza_gisela r.jpg', 'GISELA', 'REDONDO', 'CANOZA', '', 0, 'Female', 'Married', 'gisela_canoza@yahoo.com', 'Permanent', 'P.Sampaguita Sta.Monica, Puerto Princesa City', '1976-06-02', 'Malinao, Narra, Palawan', '2004-12-16', '2014-11-25', 'RA 1080 (Licensure E', 'Project Development Officer III', 0, 'DMO North ', '912-847-625', '   -   -   ', '   -   -   ', '', 0, '+639 452-569-454', 0, 'Bachelor of Science in Elementary. Education', '1997', 'San Francisco Javier College', 'Master in Public Administration', '', '2012', 'WESTERN PHILIPPINES UNIVERSITY', '', '', '', '', '', '', '', '', '2020-03-09', '18-2', '', 0),
(79, 'Vega_Ian Christian Aa.jpg', 'IAN CHRISTIAN', 'ANTILAGA', 'VEGA', '', 0, 'Male', 'Married', 'viach410@yahoo.com', 'Permanent', 'Vicente Pagayona Alfonso XIII Quezon Palawan ', '1980-08-29', 'POBLACION, QUEZON PALAWAN ', '2016-01-01', '2016-06-30', 'Career Service Profe', 'Project Development Officer III', 0, 'DMO North   ', '284-267-155', '   -   -   ', '   -   -   ', 'PCSDB-PDO3-7-1998', 0, '+639 093-664-916', 0, 'Bachelor of Arts in Philosophy', '2001', 'Seminario De San Jose ', 'Bachelor of Laws', '', '2009', 'Philippine Law School', '', '', '', '', '', '', '', '', '2020-08-28', '18-1', '', 0),
(80, 'Peneyra_Edwin Y.jpg', 'EDWIN', 'YALUNG', 'PENEYRA', '', 0, 'Male', '', 'baldhead_epeneyra@yahoo.com', 'Permanent', '', '1969-08-04', '', '1995-07-27', '2003-08-01', 'Career Service Profe', 'Project Development Officer II', 0, 'DMO North ', '178-206-882', '   -   -   ', '   -   -   ', '', 0, '+639 064-557-063', 0, 'BSBA- Acctg.', '1992', 'PHILIPPINE SCHOOL OF BUSINESS ADMINISTRATION', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '15-6', '', 0),
(81, 'Lardizabal_Manuel.jpg', 'MANUEL', 'DIZON', 'LARDIZABAL', '', 0, 'Male', 'Married', 'manuellardizaball@yahoo.com.ph', 'Permanent', 'Employee\'s Sta. Monica Puerto Princesa City Palawan', '1970-08-01', 'Puerto Princesa City Palawan', '2017-04-01', '2017-04-01', 'MC11', 'Admin Aide IV', 0, 'DMO North  ', '121-252-174', '   -   -   ', '   -   -   ', 'ADA4-11-2004', 0, '+639 771-966-760', 0, '', '', '', '', '', '', '', '', '', '', '', 'GRCO', '1993', 'Holy Trinity College ', '', '2020-03-09', '4-1', '', 0),
(82, 'Dador_Joseph M.jpg', 'JOSEPH', 'MAGAY', 'DADOR', '', 0, 'Male', 'Married', 'jayzejoc@yahoo.com', 'Permanent', 'Zone 7 Irawan Puerto Princesa City Palawan', '1977-05-22', 'Puerto Princesa City Palawan', '2004-12-16', '2011-11-16', 'Career Service Sub-P', 'Project Development Assistant', 0, 'DMO North ', '930-420-147', '   -   -   ', '   -   -   ', 'PCSDB-PDA-2-1998', 0, '+639 196-442-455', 0, 'BS Mechanical Engineering', '2000', 'Palawan Stae University ', '', '', '', '', '', '', '', '', '', '', '', '', '2019-11-28', '8-3', '', 0),
(83, 'Ropeta_Rahman S.jpg', 'RAHMAN', 'SAMUDDIN', 'ROPETA', '', 0, 'Male', 'Married', 'funnyhow14@yahoo.com', 'Permanent', '11 CORRO RESIDENCE PEO RD. BANCAO-BANCAO PPC PALAWAN ', '1978-10-23', 'MANDALUYONG , METRO MANILA', '2003-01-10', '2019-11-29', 'RA 1080 (Accountant)', '', 0, 'AFD (Admin and Finance Division) ', '186-140-520', '   -   -   ', '   -   -   ', 'PCSDB-A3-1-1998', 0, '+639 175-592-431', 0, 'BS Accountancy', '2000', 'Ateneo De Zamboanga University', 'Master of Arts in Management ', '', '2017', 'Palawan State University ', '', '', '', '', '', '', '', '', '2020-03-10', '19-6', '', 0),
(84, 'Arangorin_Aiza BN.jpg', 'AIZA', 'NUÃ‘EZ', 'ARANGORIN', '', 0, 'Female', 'Married', 'aizanunez23@gmail.com', 'Permanent', 'Zone XIII, Irawan, Puerto Princesa City, Palawan ', '1992-08-19', 'PUERTO PRINCESA CITY', '2020-03-08', '2020-03-08', 'ENVIRONMENTAL PLANNI', 'Project Development Officer I', 0, 'EPRPD', '325-943-506', '   -   -   ', '   -   -   ', '', 0, '+639 368-164-067', 0, 'BS ENVIRONMENTAL MANAGEMENT ', '2013', 'WESTERN PHILIPPINES UNIVERSITY', 'MS MARINE BIOLOGY', '9', '2017', 'WESTERN PHILIPPINES UNIVERSITY', '', '', '', '', '', '', '', '', '2020-03-09', '', '', 0),
(87, 'Bream_Jesus.jpg', 'JESUS', 'ESTONILO', 'BREAM', '', 0, 'Male', 'Single', 'jezbreeze_ice@yahoo.com', 'Permanent', '217-C RENGEL RD.MANALO EXTENSION, PUERTO PRINCESA CITY, PALAWAN', '1984-08-07', 'PUERTO PRINCESA CITY', '2020-03-08', '2020-03-08', 'CAREER SERVICE SUBPR', 'Project Development Officer II', 0, ' ', '929-056-755', '   -   -   ', '    -    -    ', '', 0, '+639 158-878-831', 0, 'BS BIOLOGY MAJOR IN MARINE', '2020', 'PALAWAN STATE UNIVERSITY', 'MS MARINE SCIENCE', '', '2020', 'UNIVERSITY OF THE PHILIPPINES WESTERN PHILIPPINES ', '', '', '', '', '', '', '', '', '2020-03-09', '', '', 0),
(88, 'Licerio_Daryl.jpg', 'DARYL', 'CAJILIG', 'LICERIO', '', 0, 'Male', 'Married', 'daryllicerio@gmail.com', 'Permanent', '75 Mabini St. Puerto Princesa City Palawan', '1967-06-07', 'PUERTO PRINCESA CITY', '2016-02-01', '2020-03-09', 'CAREER SERVICE PROFE', 'Project Development Officer II', 0, 'ECAN Monitoring and Evaluation Division (EMED)', '   -   -   ', '   -   -   ', '    -    -    ', '', 0, '+639 285-053-948', 0, 'BS ENVIRONMENTAL SCIENCE', '2001', 'PALAWAN STATE UNIVERSITY', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '', '', 0),
(89, 'Maximo_Raul.jpg', 'RAUL', 'BRIONES', 'MAXIMO', '', 0, 'Male', 'Married', 'ulracks23@yahoo.com', 'Permanent', 'SANDOVAL, BARANGAY III, ROXAS PALAWAN`', '1966-07-23', 'ROXAS, PALAWAN', '2020-03-09', '2020-03-09', 'LICENSURE EXAM FOR C', 'Project Development Officer III', 0, ' ', '124-351-834', '   -   -   ', '    -    -    ', '', 0, '+639 178-232-102', 0, 'BACHELOR OF SCIENCE IN CIVIL ENGINEERING', '1989', 'ADAMSON UNIVERSITY', '', '', '', '', '', '', '', '', '', '', '', '', '2020-03-09', '', '', 1),
(90, 'Jalover_Cherry Lyn S.jpg', 'CHERRY LYN', 'SANGILAN', 'JALOVER', '', 0, 'Female', 'Single', 'ehcnyl_0310@yahoo.com', 'Permanent', 'Typoco Village San Manuel Puerto Princesa City Palawan', '1988-09-20', 'PUERTO PRINCESA CITY', '2016-08-15', '2020-03-09', 'CIVIL SERVICE CAREER', 'Project Development Officer II', 0, 'ECAN Education and Extension Division (EEED) ', '292-050-311', '   -   -   ', '   -   -   ', '', 0, '+639 157-543-197', 0, 'BS ENVIRONMENTAL SCIENCE', '2009', 'PALAWAN STATE UNIVERSITY', '', '', '', '', '', '', '', '', '', '', '', '', '2020-08-20', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `pos_id` int(3) NOT NULL,
  `pos_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`pos_id`, `pos_name`) VALUES
(3, 'IT Assistant'),
(4, 'Website Administrator'),
(5, 'HR Staff'),
(6, 'Executive Director'),
(7, 'Director II'),
(8, 'Project Development Officer I'),
(9, 'Project Development Officer II'),
(10, 'Project Development Officer III'),
(11, 'Project Development Officer IV'),
(12, 'Project Development Officer V'),
(13, 'Project Development Assistant'),
(14, 'Admin Assistant III'),
(15, 'Admin Aide IV'),
(16, 'Information Technology Officer I'),
(17, 'Computer Programmer II'),
(18, 'Chief Admin Officer'),
(19, 'Supervising Admin Officer'),
(20, 'Admin Officer V'),
(21, 'Admin Officer III'),
(22, 'Admin Assistant V'),
(23, 'Admin Aide VI'),
(24, 'Admin Aide III'),
(25, 'Admin Aide I');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promote_id` int(5) NOT NULL,
  `per_id` int(6) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `date_promoted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  ADD PRIMARY KEY (`gass_id`);

--
-- Indexes for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  MODIFY `rank_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  MODIFY `gass_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `per_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `pos_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promote_id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

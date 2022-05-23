-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2021 at 12:15 AM
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
-- Database: `pcsds_accounting_is`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `id` int(11) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `privillage` varchar(50) NOT NULL,
  `Status` varchar(125) NOT NULL,
  `First_Name` varchar(124) NOT NULL,
  `Last_Name` varchar(125) NOT NULL,
  `Middle_Name` varchar(125) NOT NULL,
  `Project` varchar(125) NOT NULL,
  `Division` varchar(124) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`id`, `UserName`, `Password`, `privillage`, `Status`, `First_Name`, `Last_Name`, `Middle_Name`, `Project`, `Division`) VALUES
(1, 'admin', 'admin', 'Jao_Admin', 'Activate', 'Budget', '', '', 'General Management and Supervision', 'AFD'),
(5, 'disbur', '76111', 'Disbursement', 'Activate', 'Cashier', '', '', 'General Management and Supervision', 'AFD'),
(11, 'Sample', 'pcsd7611', 'User', 'Activate', 'Mj', 'Pili', 'Toroy', 'General Management and Supervision', 'AFD'),
(14, 'baldhead_epeneyra', 'gabriellorraine12030627', 'Jao_Admin', 'Activate', 'EDWIN', 'PENEYRA', 'YALUNG', 'General Management and Supervision', 'AFD');

-- --------------------------------------------------------

--
-- Table structure for table `tblbudgetinfo`
--

CREATE TABLE `tblbudgetinfo` (
  `id` varchar(124) NOT NULL,
  `Year` varchar(124) NOT NULL,
  `Date` varchar(124) NOT NULL,
  `Division` varchar(124) NOT NULL,
  `Project` varchar(124) NOT NULL,
  `TYPE_FUND` varchar(124) NOT NULL,
  `AllotmentClass` varchar(124) NOT NULL,
  `Remarks` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbudgetinfo`
--

INSERT INTO `tblbudgetinfo` (`id`, `Year`, `Date`, `Division`, `Project`, `TYPE_FUND`, `AllotmentClass`, `Remarks`) VALUES
('60135ca7f3a5701012021', '2021', '2021-01-01', 'All', 'General Management and Supervision', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('60135d41ad7b901012021', '2021', '2021-01-01', 'All', 'Advocacy, Communication and Education', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('60135f5645cb301012021', '2021', '2021-01-01', 'All', 'ECAN Monitoring and Evaluation System', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('601360d9d977b01012021', '2021', '2021-01-01', 'All', 'ECAN Zoning', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('601363936327301012021', '2021', '2021-01-01', 'All', 'Knowledge and Research Management', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('601364e161b6d01012021', '2021', '2021-01-01', 'All', 'Resource Mobilization and Partnership Development', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('60136648e6b2c01012021', '2021', '2021-01-01', 'All', 'Operation of Strategic Environmental Plan and Clearance', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('60136888d1b7f01012021', '2021', '2021-01-01', 'All', 'Wildlife and Cave Management', 'Regular Fund', 'Personal Services', 'Annual Budget'),
('6013bf706b1ff01012021', '2021', '2021-01-01', 'AFD', 'General Management and Supervision', 'Regular Fund', 'Capital Outlay', 'Annual Budget'),
('601670c4a680001012021', '2021', '2021-01-01', 'EEED', 'Advocacy, Communication and Education', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('601674e120a7c01012021', '2021', '2021-01-01', 'EMED', 'ECAN Monitoring and Evaluation System', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('601675b4b16e201012021', '2021', '2021-01-01', 'EPRPD', 'ECAN Zoning', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6016780d2106801012021', '2021', '2021-01-01', 'EMED', 'Knowledge and Research Management', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6016799a6fafd01012021', '2021', '2021-01-01', 'EPRPD', 'Resource Mobilization and Partnership Development', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('60167add1609801012021', '2021', '2021-01-01', 'EZMED', 'Wildlife and Cave Management', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('60167f14c322101012021', '2021', '2021-01-01', 'EEED', 'Advocacy, Communication and Education', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('60167f6d8842301012021', '2021', '2021-01-01', 'EPRPD', 'ECAN Zoning', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6016802e072d701012021', '2021', '2021-01-01', 'EMED', 'Knowledge and Research Management', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('60168085db49401012021', '2021', '2021-01-01', 'EZMED', 'Wildlife and Cave Management', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018a7168a9c801012021', '2021', '2021-01-01', 'OED', 'General Management and Supervision', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018a87252d9901012021', '2021', '2021-01-01', 'NORTH', 'Operation of Strategic Environmental Plan and Clearance', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018a91aa116201012021', '2021', '2021-01-01', 'SOUTH', 'Operation of Strategic Environmental Plan and Clearance', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018a9afa822401012021', '2021', '2021-01-01', 'CALAMIAN', 'Operation of Strategic Environmental Plan and Clearance', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018ac9a6bb7f01012021', '2021', '2021-01-01', 'NORTH', 'Operation of Strategic Environmental Plan and Clearance', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018ad790165e01012021', '2021', '2021-01-01', 'SOUTH', 'Operation of Strategic Environmental Plan and Clearance', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('6018adf1e0dfb01012021', '2021', '2021-01-01', 'CALAMIAN', 'Operation of Strategic Environmental Plan and Clearance', 'WM Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget'),
('60190e2e3f3d901012021', '2021', '2021-01-01', 'AFD', 'General Management and Supervision', 'Regular Fund', 'Maintenance and Other Operating Expenses', 'Annual Budget');

-- --------------------------------------------------------

--
-- Table structure for table `tblcabudget`
--

CREATE TABLE `tblcabudget` (
  `id` int(11) NOT NULL,
  `Buliding` int(25) NOT NULL,
  `Information_and_Communication_Technology_Equipment` int(25) NOT NULL,
  `Motor_Vehicles` int(25) NOT NULL,
  `Communication_Equipment` int(11) NOT NULL,
  `Printing_Equipment` int(11) NOT NULL,
  `ICT_Software` int(11) NOT NULL,
  `id_tblbudgetinfo` varchar(124) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcabudget`
--

INSERT INTO `tblcabudget` (`id`, `Buliding`, `Information_and_Communication_Technology_Equipment`, `Motor_Vehicles`, `Communication_Equipment`, `Printing_Equipment`, `ICT_Software`, `id_tblbudgetinfo`) VALUES
(1, 0, 3617000, 0, 316000, 365000, 1390000, '6013bf706b1ff01012021'),
(7, 0, 0, 0, 0, 0, 0, '601c95b39b0c0');

-- --------------------------------------------------------

--
-- Table structure for table `tbldisbur`
--

CREATE TABLE `tbldisbur` (
  `id` int(11) NOT NULL,
  `DateofPayment` varchar(125) NOT NULL,
  `TYPECA` varchar(125) NOT NULL,
  `LDDAP` varchar(125) NOT NULL,
  `DuetoBIR` float NOT NULL,
  `DuetoGSIS` float NOT NULL,
  `DuetoPAGIBIG` float NOT NULL,
  `DuetoPhilHealth` float NOT NULL,
  `DuetoOthers` float NOT NULL,
  `NetAmount` float NOT NULL,
  `Total` float NOT NULL,
  `ObrNO` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `ObrNo` varchar(100) NOT NULL,
  `AllotmentClass` varchar(100) NOT NULL,
  `Type_Expenses` varchar(100) NOT NULL,
  `TypeExpenses2` varchar(125) NOT NULL,
  `OBLIG_CENTER` varchar(100) NOT NULL,
  `Month_Date` varchar(100) NOT NULL,
  `Year_Date` varchar(100) NOT NULL,
  `DIVISION` varchar(100) NOT NULL,
  `Amount` float NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DATE` varchar(100) NOT NULL,
  `LDDAP` varchar(100) NOT NULL,
  `TYPECA` varchar(100) NOT NULL,
  `TYPE_FUND` varchar(100) NOT NULL,
  `GrossAmount` varchar(100) NOT NULL,
  `DateofPayment` varchar(100) NOT NULL,
  `DuetoBIR` int(15) NOT NULL,
  `DuetoGSIS` int(15) NOT NULL,
  `DuetoPAGIBIG` int(15) NOT NULL,
  `DuetoPhilHealth` int(15) NOT NULL,
  `DuetoOthers` int(15) NOT NULL,
  `DisburAmount` int(15) NOT NULL,
  `Activity` varchar(150) NOT NULL,
  `idsubactivities` varchar(11) NOT NULL COMMENT 'pcsds_pms sub activityforeign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexpenses`
--

INSERT INTO `tblexpenses` (`id`, `ObrNo`, `AllotmentClass`, `Type_Expenses`, `TypeExpenses2`, `OBLIG_CENTER`, `Month_Date`, `Year_Date`, `DIVISION`, `Amount`, `NAME`, `DATE`, `LDDAP`, `TYPECA`, `TYPE_FUND`, `GrossAmount`, `DateofPayment`, `DuetoBIR`, `DuetoGSIS`, `DuetoPAGIBIG`, `DuetoPhilHealth`, `DuetoOthers`, `DisburAmount`, `Activity`, `idsubactivities`) VALUES
(26, '21-01-001', 'Maintenance and Other Operating Expenses', 'Other Maintenance and Other Operating Expeses', 'Other_Maintenance_and_Other_Operating_Expeses', 'North', '01', '2021', 'Operation of Strategic Environmental Plan and Clearance', 10000, 'Rhoda B. Roque', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'None', 'None'),
(35, '21-01-002', 'Maintenance and Other Operating Expenses', 'Water Expense', 'Water_Expense', 'AFD', '01', '2021', 'General Management and Supervision', 17910.2, 'Puerto Princesa City Water District', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'None', 'None'),
(36, '21-01-003', 'Personal Services', 'Philhealth - Civilian', 'Philhealth_Civilian', 'ALL', '01', '2021', 'undefined', 900, 'Philhealth', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'undefined', 'None'),
(37, '21-01-004', 'Personal Services', 'Philhealth - Civilian', 'Philhealth_Civilian', 'ALL', '01', '2021', 'undefined', 480.8, 'Philhealth', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'undefined', 'None'),
(38, '21-05-005', 'Personal Services', 'Pag-IBIG - Civilian', 'Pag_IBIG_Civilian', 'ALL', '01', '2021', 'undefined', 100, 'H D M F', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'undefined', 'None'),
(39, '21-01-006', 'Personal Services', 'Pag-IBIG - Civilian', 'Pag_IBIG_Civilian', 'ALL', '01', '2021', 'undefined', 100, 'H D M F', '2021-01-12', '', '', 'Regular Fund', '', '', 0, 0, 0, 0, 0, 0, 'undefined', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `tblmooebudget`
--

CREATE TABLE `tblmooebudget` (
  `id` int(11) NOT NULL,
  `Travelling_Expenses_Local` int(25) NOT NULL,
  `ICT_Training_Expenses` int(25) NOT NULL,
  `Training_Expenses` int(25) NOT NULL,
  `ICT_Office_Supplies` int(25) NOT NULL,
  `Office_Supplies_Expenses` int(25) NOT NULL,
  `Accountable_Forms_Expenses` int(25) NOT NULL,
  `Fuel_Oil_and_Lubricants_Expenses` int(25) NOT NULL,
  `Other_Supplies_and_Materials_Expenses` int(25) NOT NULL,
  `Water_Expense` int(25) NOT NULL,
  `Electricity_Expense` int(25) NOT NULL,
  `Postage_and_Courier_Services` int(25) NOT NULL,
  `Mobile` int(25) NOT NULL,
  `Landline` int(25) NOT NULL,
  `Internet_Subscription_Expenses` int(25) NOT NULL,
  `Cable_Satellite_Telegraph_and_Radio_Expenses` int(25) NOT NULL,
  `Other_Professional_Services` int(25) NOT NULL,
  `Janitorial_Services` int(25) NOT NULL,
  `Security_Services` int(25) NOT NULL,
  `Other_General_Services_ICT` int(25) NOT NULL,
  `Extraordinary_and_Miscellaneous_Expenses` int(25) NOT NULL,
  `Building` int(25) NOT NULL,
  `Office_Equipment` int(25) NOT NULL,
  `Motor_Vehicles` int(25) NOT NULL,
  `Repair_and_Maintenance_Furnitures_and_Fixtures` int(25) NOT NULL,
  `Taxes_Duties_and_Licenses` int(25) NOT NULL,
  `Fidelity_Bond_Premiums` int(25) NOT NULL,
  `Insurance_Expense` int(25) NOT NULL,
  `Advertising_Expenses` int(25) NOT NULL,
  `Printing_and_Publication_Expenses` int(25) NOT NULL,
  `Representation_Expenses` int(150) NOT NULL,
  `Transportation_and_Delivery_Expenses` int(125) NOT NULL,
  `Rents_Building_and_Structures` int(125) NOT NULL,
  `Rents_Living_Quarter` int(125) NOT NULL,
  `Library_and_Other_Reading_Materials_Subscription` int(125) NOT NULL,
  `Other_Maintenance_and_Other_Operating_Expeses` int(125) NOT NULL,
  `ICT_Consultancy_Services` int(11) NOT NULL,
  `ICT_Software_Subscription` float NOT NULL,
  `Cloud_Computing_Services` float NOT NULL,
  `Information_and_Communication_Technology_Equipment` float NOT NULL,
  `Information_and_Communication_Technology_Equipment_2` float NOT NULL,
  `id_tblbudgetinfo` varchar(124) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmooebudget`
--

INSERT INTO `tblmooebudget` (`id`, `Travelling_Expenses_Local`, `ICT_Training_Expenses`, `Training_Expenses`, `ICT_Office_Supplies`, `Office_Supplies_Expenses`, `Accountable_Forms_Expenses`, `Fuel_Oil_and_Lubricants_Expenses`, `Other_Supplies_and_Materials_Expenses`, `Water_Expense`, `Electricity_Expense`, `Postage_and_Courier_Services`, `Mobile`, `Landline`, `Internet_Subscription_Expenses`, `Cable_Satellite_Telegraph_and_Radio_Expenses`, `Other_Professional_Services`, `Janitorial_Services`, `Security_Services`, `Other_General_Services_ICT`, `Extraordinary_and_Miscellaneous_Expenses`, `Building`, `Office_Equipment`, `Motor_Vehicles`, `Repair_and_Maintenance_Furnitures_and_Fixtures`, `Taxes_Duties_and_Licenses`, `Fidelity_Bond_Premiums`, `Insurance_Expense`, `Advertising_Expenses`, `Printing_and_Publication_Expenses`, `Representation_Expenses`, `Transportation_and_Delivery_Expenses`, `Rents_Building_and_Structures`, `Rents_Living_Quarter`, `Library_and_Other_Reading_Materials_Subscription`, `Other_Maintenance_and_Other_Operating_Expeses`, `ICT_Consultancy_Services`, `ICT_Software_Subscription`, `Cloud_Computing_Services`, `Information_and_Communication_Technology_Equipment`, `Information_and_Communication_Technology_Equipment_2`, `id_tblbudgetinfo`) VALUES
(7, 549000, 0, 0, 0, 356000, 0, 71000, 0, 0, 0, 0, 7000, 0, 0, 184000, 293000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62000, 102000, 153000, 0, 0, 0, 0, 102000, 0, 0, 0, 0, 0, '601670c4a680001012021'),
(8, 186000, 70000, 0, 0, 527000, 0, 92000, 0, 0, 0, 0, 0, 0, 14000, 0, 619000, 0, 0, 105000, 0, 80000, 10000, 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '601674e120a7c01012021'),
(9, 725000, 208000, 0, 0, 395000, 0, 87000, 0, 0, 0, 0, 39000, 0, 0, 0, 1730000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27000, 492000, 0, 0, 0, 0, 100000, 0, 0, 0, 0, 0, '601675b4b16e201012021'),
(10, 464000, 0, 0, 0, 188000, 0, 30000, 0, 0, 0, 5000, 0, 0, 14000, 0, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 676000, 0, 0, 0, 40000, 75000, 0, 0, 0, 0, 0, '6016780d2106801012021'),
(12, 112000, 0, 0, 0, 51000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '6016799a6fafd01012021'),
(13, 214000, 0, 0, 0, 193000, 0, 343000, 0, 10000, 64000, 14000, 71000, 0, 0, 0, 3330000, 133000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46000, 92000, 0, 92000, 0, 0, 750000, 0, 0, 0, 0, 0, '60167add1609801012021'),
(17, 553000, 0, 0, 0, 371000, 0, 468000, 10000, 0, 0, 0, 84000, 0, 0, 5000, 593000, 0, 0, 0, 136000, 0, 0, 0, 0, 0, 0, 0, 50000, 0, 1500000, 0, 0, 0, 0, 95000, 0, 0, 0, 0, 0, '6018a7168a9c801012021'),
(18, 477000, 0, 0, 0, 143000, 0, 70000, 0, 7000, 39000, 2000, 16000, 0, 29000, 0, 375000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 0, 30000, 0, 0, 19000, 0, 0, 0, 0, 0, '6018a87252d9901012021'),
(19, 410000, 0, 0, 0, 108000, 0, 171000, 0, 7000, 44000, 9000, 15000, 0, 23000, 0, 682000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12000, 63000, 0, 60000, 0, 0, 60000, 0, 0, 0, 0, 0, '6018a91aa116201012021'),
(20, 318000, 0, 0, 0, 99000, 0, 82000, 0, 11000, 43000, 13000, 17000, 0, 26000, 0, 394000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 55000, 0, 0, 0, 0, 47000, 0, 0, 0, 0, 0, '6018a9afa822401012021'),
(21, 1056000, 180000, 445000, 89000, 788000, 25000, 567000, 48000, 131000, 929000, 31000, 404000, 148000, 811000, 0, 949000, 334000, 743000, 0, 0, 214000, 68000, 1998000, 51000, 32000, 46000, 192000, 0, 57000, 117000, 20000, 407000, 0, 5000, 171000, 5526000, 60000, 30000, 2877000, 106000, '60190e2e3f3d901012021');

-- --------------------------------------------------------

--
-- Table structure for table `tblmooewmfbudget`
--

CREATE TABLE `tblmooewmfbudget` (
  `id` int(11) NOT NULL,
  `Travelling_Expenses_Local` int(25) NOT NULL,
  `Training_Expenses` int(25) NOT NULL,
  `Office_Supplies_Expenses` int(25) NOT NULL,
  `Fuel_Oil_and_Lubricants_Expenses` int(25) NOT NULL,
  `Mobile` int(25) NOT NULL,
  `Other_Professional_Services` int(25) NOT NULL,
  `Insurance_Expense` int(25) NOT NULL,
  `Representation_Expenses` int(25) NOT NULL,
  `Rents_Building_and_Structures` int(25) NOT NULL,
  `Other_Maintenance_and_Other_Operating_Expeses` int(25) NOT NULL,
  `Printing_and_Publication_Expenses` float NOT NULL,
  `Other_Supplies_and_Materials_Expenses` float NOT NULL,
  `id_tblbudgetinfo` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmooewmfbudget`
--

INSERT INTO `tblmooewmfbudget` (`id`, `Travelling_Expenses_Local`, `Training_Expenses`, `Office_Supplies_Expenses`, `Fuel_Oil_and_Lubricants_Expenses`, `Mobile`, `Other_Professional_Services`, `Insurance_Expense`, `Representation_Expenses`, `Rents_Building_and_Structures`, `Other_Maintenance_and_Other_Operating_Expeses`, `Printing_and_Publication_Expenses`, `Other_Supplies_and_Materials_Expenses`, `id_tblbudgetinfo`) VALUES
(1, 71000, 0, 20000, 0, 0, 35000, 0, 482000, 0, 10000, 1000, 223000, '60167f14c322101012021'),
(2, 50000, 0, 0, 0, 0, 150000, 0, 100000, 0, 0, 0, 0, '60167f6d8842301012021'),
(3, 0, 0, 0, 0, 0, 1336000, 0, 150000, 0, 0, 0, 0, '6016802e072d701012021'),
(4, 975000, 0, 452000, 287000, 19000, 7294000, 32000, 144000, 58000, 2170000, 0, 0, '60168085db49401012021'),
(7, 200000, 60000, 10000, 30000, 0, 300000, 0, 0, 0, 0, 0, 0, '6018ac9a6bb7f01012021'),
(8, 317000, 70000, 19000, 75000, 20000, 300000, 0, 20000, 0, 0, 0, 79000, '6018ad790165e01012021'),
(9, 340000, 60000, 200000, 100000, 50000, 160000, 0, 190000, 0, 0, 0, 110000, '6018adf1e0dfb01012021');

-- --------------------------------------------------------

--
-- Table structure for table `tblpsbudget`
--

CREATE TABLE `tblpsbudget` (
  `id` int(11) NOT NULL,
  `Basic_Salary_Civilian` int(25) NOT NULL,
  `PERA` int(25) NOT NULL,
  `Representation_Allowance` int(25) NOT NULL,
  `Transportation_Allowance` int(25) NOT NULL,
  `Clothing_Uniform_Allowance_Civilian` int(25) NOT NULL,
  `Bonus_Civilian` int(25) NOT NULL,
  `Cash_Gift_Civilian` int(25) NOT NULL,
  `Productivity_Enhancement_Incentive_Civilian` int(25) NOT NULL,
  `MidYear_Bonus_Civilian` int(25) NOT NULL,
  `Retirement_Life_Insurance_Premiums` int(25) NOT NULL,
  `Pag_IBIG_Civilian` int(25) NOT NULL,
  `Philhealth_Civilian` int(25) NOT NULL,
  `ECIP_Civilian` int(25) NOT NULL,
  `Lumpsum_forStep_Increment_Length_of_Service` int(25) NOT NULL,
  `Monetization` int(25) NOT NULL,
  `PBB` int(25) NOT NULL,
  `CNA` int(25) NOT NULL,
  `Termina_Leave_Benefits` int(25) NOT NULL,
  `id_tblbudgetinfo` varchar(124) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpsbudget`
--

INSERT INTO `tblpsbudget` (`id`, `Basic_Salary_Civilian`, `PERA`, `Representation_Allowance`, `Transportation_Allowance`, `Clothing_Uniform_Allowance_Civilian`, `Bonus_Civilian`, `Cash_Gift_Civilian`, `Productivity_Enhancement_Incentive_Civilian`, `MidYear_Bonus_Civilian`, `Retirement_Life_Insurance_Premiums`, `Pag_IBIG_Civilian`, `Philhealth_Civilian`, `ECIP_Civilian`, `Lumpsum_forStep_Increment_Length_of_Service`, `Monetization`, `PBB`, `CNA`, `Termina_Leave_Benefits`, `id_tblbudgetinfo`) VALUES
(1, 10418000, 600000, 264000, 264000, 150000, 868000, 125000, 125000, 868000, 1250000, 30000, 100000, 30000, 26000, 0, 0, 0, 420000, '60135ca7f3a5701012021'),
(2, 2666000, 96000, 60000, 60000, 24000, 222000, 20000, 20000, 222000, 320000, 5000, 25000, 5000, 7000, 0, 0, 0, 0, '60135d41ad7b901012021'),
(3, 3100000, 120000, 60000, 60000, 30000, 258000, 25000, 25000, 258000, 372000, 6000, 29000, 6000, 8000, 0, 0, 0, 0, '60135f5645cb301012021'),
(4, 1651000, 96000, 0, 0, 24000, 138000, 20000, 20000, 138000, 198000, 5000, 22000, 5000, 4000, 0, 0, 0, 0, '601360d9d977b01012021'),
(5, 1362000, 72000, 0, 0, 18000, 113000, 15000, 15000, 113000, 163000, 4000, 18000, 4000, 3000, 0, 0, 0, 0, '601363936327301012021'),
(6, 1364000, 48000, 0, 0, 12000, 114000, 10000, 10000, 114000, 164000, 2000, 13000, 2000, 3000, 0, 0, 0, 0, '601364e161b6d01012021'),
(7, 10026000, 456000, 120000, 120000, 114000, 836000, 95000, 95000, 836000, 1203000, 23000, 102000, 23000, 25000, 0, 0, 0, 0, '60136648e6b2c01012021'),
(8, 3385000, 120000, 60000, 60000, 30000, 282000, 25000, 25000, 282000, 406000, 6000, 31000, 6000, 8000, 0, 0, 0, 0, '60136888d1b7f01012021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbudgetinfo`
--
ALTER TABLE `tblbudgetinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcabudget`
--
ALTER TABLE `tblcabudget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldisbur`
--
ALTER TABLE `tbldisbur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmooebudget`
--
ALTER TABLE `tblmooebudget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmooewmfbudget`
--
ALTER TABLE `tblmooewmfbudget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpsbudget`
--
ALTER TABLE `tblpsbudget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcabudget`
--
ALTER TABLE `tblcabudget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbldisbur`
--
ALTER TABLE `tbldisbur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblmooebudget`
--
ALTER TABLE `tblmooebudget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblmooewmfbudget`
--
ALTER TABLE `tblmooewmfbudget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpsbudget`
--
ALTER TABLE `tblpsbudget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

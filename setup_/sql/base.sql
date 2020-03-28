-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5267
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table jegan_spinning_erp.dbcorrections
DROP TABLE IF EXISTS `dbcorrections`;
CREATE TABLE IF NOT EXISTS `dbcorrections` (
  `DBNo` int(11) DEFAULT NULL,
  `Status` int(1) DEFAULT '0',
  `Query` text,
  `qDate` date DEFAULT NULL,
  `qTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.dbcorrections: ~17 rows (approximately)
DELETE FROM `dbcorrections`;
/*!40000 ALTER TABLE `dbcorrections` DISABLE KEYS */;
INSERT INTO `dbcorrections` (`DBNo`, `Status`, `Query`, `qDate`, `qTime`) VALUES
	(1, 1, NULL, '2018-03-11', '19:49:00'),
	(2, 1, NULL, '2018-03-12', '06:44:00'),
	(3, 1, NULL, '2018-03-14', '08:22:00'),
	(4, 1, NULL, '2018-03-14', '09:38:00'),
	(5, 1, NULL, '2018-03-14', '09:38:00'),
	(6, 1, NULL, '2018-03-16', '10:02:00'),
	(7, 1, NULL, '2018-03-17', '10:10:00'),
	(8, 1, NULL, '2018-03-17', '12:18:00'),
	(9, 1, NULL, '2018-03-17', '13:03:00'),
	(10, 1, NULL, '2018-03-17', '13:52:00'),
	(11, 1, NULL, '2018-03-17', '19:40:00'),
	(12, 1, NULL, '2018-03-20', '10:05:00'),
	(13, 1, NULL, '2018-03-21', '10:21:00'),
	(14, 1, NULL, '2018-03-21', '11:11:00'),
	(15, 1, NULL, '2018-03-27', '10:51:00'),
	(16, 1, NULL, '2018-03-28', '08:51:00'),
	(17, 1, NULL, '2018-03-29', '08:20:00');
/*!40000 ALTER TABLE `dbcorrections` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.log_user
DROP TABLE IF EXISTS `log_user`;
CREATE TABLE IF NOT EXISTS `log_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT '0',
  `BranchId` int(11) DEFAULT '0',
  `UserIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CDate` date DEFAULT NULL,
  `CTime` time DEFAULT NULL,
  `Usr_Message` text,
  `AdditionalInfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `LogTypeId` int(11) DEFAULT '0',
  `failed` int(5) DEFAULT '0',
  `failed_last` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table jegan_spinning_erp.log_user: 0 rows
DELETE FROM `log_user`;
/*!40000 ALTER TABLE `log_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_user` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_agent
DROP TABLE IF EXISTS `mas_agent`;
CREATE TABLE IF NOT EXISTS `mas_agent` (
  `AgentId` int(11) NOT NULL AUTO_INCREMENT,
  `AgentName` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_agent: ~4 rows (approximately)
DELETE FROM `mas_agent`;
/*!40000 ALTER TABLE `mas_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_agent` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_city
DROP TABLE IF EXISTS `mas_city`;
CREATE TABLE IF NOT EXISTS `mas_city` (
  `CityId` int(11) NOT NULL AUTO_INCREMENT,
  `StateId` int(11) DEFAULT '0',
  `CityName` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CityId`),
  KEY `FK_mas_city_mas_state` (`StateId`),
  CONSTRAINT `FK_mas_city_mas_state` FOREIGN KEY (`StateId`) REFERENCES `mas_state` (`StateId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_city: ~17 rows (approximately)
DELETE FROM `mas_city`;
/*!40000 ALTER TABLE `mas_city` DISABLE KEYS */;
INSERT INTO `mas_city` (`CityId`, `StateId`, `CityName`, `IsActive`) VALUES
	(1, 1, 'VEDACHENDUR', 1),
	(2, 1, 'TIRUPPUR', 1),
	(3, 2, 'ALAPPUZHA', 1),
	(4, 2, 'ERNAKKULAM', 1),
	(5, 3, 'MYSORE', 1),
	(6, 3, 'BANGALORE', 1),
	(7, 5, 'KOLKATTA', 1),
	(8, 1, 'DINDIGUL', 1),
	(9, 1, 'KOVILPATTI', 1),
	(10, 1, 'TUTICORIN', 1),
	(11, 1, 'PALLADAM', 1),
	(12, 1, 'AVINASHI', 1),
	(13, 6, 'MUMBAI', 1),
	(14, 7, 'SAHARANPUR', 1),
	(15, 1, 'CHENNAI', 1),
	(16, 1, 'PERUNDURAI', 1),
	(17, 1, 'COIMBATORE', 1);
/*!40000 ALTER TABLE `mas_city` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_color
DROP TABLE IF EXISTS `mas_color`;
CREATE TABLE IF NOT EXISTS `mas_color` (
  `ColorId` int(11) NOT NULL AUTO_INCREMENT,
  `ColorName` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  PRIMARY KEY (`ColorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.mas_color: ~4 rows (approximately)
DELETE FROM `mas_color`;
/*!40000 ALTER TABLE `mas_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_color` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_country
DROP TABLE IF EXISTS `mas_country`;
CREATE TABLE IF NOT EXISTS `mas_country` (
  `CountryId` int(11) NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_country: ~3 rows (approximately)
DELETE FROM `mas_country`;
/*!40000 ALTER TABLE `mas_country` DISABLE KEYS */;
INSERT INTO `mas_country` (`CountryId`, `CountryName`, `IsActive`) VALUES
	(1, 'INDIA', 1),
	(2, 'SRI LANKA', 1),
	(4, 'AMERICA-SOUTH', 1),
	(5, 'ASS67', 1);
/*!40000 ALTER TABLE `mas_country` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_counts
DROP TABLE IF EXISTS `mas_counts`;
CREATE TABLE IF NOT EXISTS `mas_counts` (
  `CountsId` int(11) NOT NULL AUTO_INCREMENT,
  `CountsName` varchar(200) DEFAULT NULL,
  `CountsCode` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `AvgSpeed` decimal(10,2) NOT NULL DEFAULT '0.00',
  `CountsConst` decimal(10,2) DEFAULT '0.00',
  `ConeWt` decimal(15,3) DEFAULT '0.000',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CountsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_counts: ~2 rows (approximately)
DELETE FROM `mas_counts`;
/*!40000 ALTER TABLE `mas_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_counts` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_customer
DROP TABLE IF EXISTS `mas_customer`;
CREATE TABLE IF NOT EXISTS `mas_customer` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` text,
  `ReportHeader` text,
  `LedgerName` text,
  `Address1` text,
  `Address2` text,
  `CityId` int(11) DEFAULT '0',
  `PinCode` varchar(10) DEFAULT NULL,
  `StateId` int(11) DEFAULT '0',
  `CountryId` int(11) DEFAULT '0',
  `PhoneNo` varchar(200) DEFAULT NULL,
  `MobileNo` varchar(200) DEFAULT NULL,
  `eMailId` varchar(200) DEFAULT NULL,
  `GSTId` varchar(200) DEFAULT NULL,
  `PANNo` varchar(10) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `IsReverseCharge` int(1) DEFAULT '0',
  `IsCessTaxCalc` int(1) DEFAULT '0',
  `CustomerInvTypeId` int(11) DEFAULT '0',
  PRIMARY KEY (`CustomerId`),
  KEY `FK_mas_customer_mas_city` (`CityId`),
  CONSTRAINT `FK_mas_customer_mas_city` FOREIGN KEY (`CityId`) REFERENCES `mas_city` (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_customer: ~70 rows (approximately)
DELETE FROM `mas_customer`;
/*!40000 ALTER TABLE `mas_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_customer` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_customercategory
DROP TABLE IF EXISTS `mas_customercategory`;
CREATE TABLE IF NOT EXISTS `mas_customercategory` (
  `CustomerCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerCategory` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CustomerCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_customercategory: ~3 rows (approximately)
DELETE FROM `mas_customercategory`;
/*!40000 ALTER TABLE `mas_customercategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_customercategory` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_customer_invtype
DROP TABLE IF EXISTS `mas_customer_invtype`;
CREATE TABLE IF NOT EXISTS `mas_customer_invtype` (
  `CustomerInvTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `CustInvType` varchar(200) DEFAULT NULL,
  `CustInvTypeCode` varchar(200) DEFAULT NULL,
  `TallyLedgerName` text,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CustomerInvTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_customer_invtype: ~4 rows (approximately)
DELETE FROM `mas_customer_invtype`;
/*!40000 ALTER TABLE `mas_customer_invtype` DISABLE KEYS */;
INSERT INTO `mas_customer_invtype` (`CustomerInvTypeId`, `CustInvType`, `CustInvTypeCode`, `TallyLedgerName`, `IsActive`) VALUES
	(1, 'YARN', 'YRN', 'yarn sales', 1),
	(2, 'WASTE COTTON', 'CWT', 'waste cotton sales', 1),
	(3, 'MIS ITEM', 'MIS', 'Scrap Sales', 1),
	(4, 'PRE EXPORT', 'YPX', 'yarn sales (pre export)', 1);
/*!40000 ALTER TABLE `mas_customer_invtype` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_customer_x_address
DROP TABLE IF EXISTS `mas_customer_x_address`;
CREATE TABLE IF NOT EXISTS `mas_customer_x_address` (
  `CustomerXAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) DEFAULT '0',
  `CustomerName` text,
  `ReportHeader` text,
  `Address1` text,
  `Address2` text,
  `CityId` int(11) DEFAULT '0',
  `PinCode` varchar(10) DEFAULT NULL,
  `StateId` int(11) DEFAULT '0',
  `CountryId` int(11) DEFAULT '0',
  `PhoneNo` varchar(200) DEFAULT NULL,
  `MobileNo` varchar(200) DEFAULT NULL,
  `eMailId` varchar(200) DEFAULT NULL,
  `GSTId` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CustomerXAddressId`),
  KEY `FK_mas_customer_x_address_mas_city` (`CityId`),
  CONSTRAINT `FK_mas_customer_x_address_mas_city` FOREIGN KEY (`CityId`) REFERENCES `mas_city` (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_customer_x_address: ~143 rows (approximately)
DELETE FROM `mas_customer_x_address`;
/*!40000 ALTER TABLE `mas_customer_x_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_customer_x_address` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_customer_x_category
DROP TABLE IF EXISTS `mas_customer_x_category`;
CREATE TABLE IF NOT EXISTS `mas_customer_x_category` (
  `CustomersxCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL DEFAULT '0',
  `CustomerCategoryId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CustomersxCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_customer_x_category: ~0 rows (approximately)
DELETE FROM `mas_customer_x_category`;
/*!40000 ALTER TABLE `mas_customer_x_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_customer_x_category` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_department
DROP TABLE IF EXISTS `mas_department`;
CREATE TABLE IF NOT EXISTS `mas_department` (
  `DepartmentId` int(11) NOT NULL AUTO_INCREMENT,
  `DeptCode` varchar(50) DEFAULT NULL,
  `DeptName` varchar(200) DEFAULT NULL,
  `1stShift` int(11) DEFAULT '0',
  `2ndShift` int(11) DEFAULT '0',
  `3rdShift` int(11) DEFAULT '0',
  `IsStrengthReport` int(1) DEFAULT '0',
  `OtCounts` int(11) DEFAULT '0',
  `GroupNo` int(11) DEFAULT '0',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_department: ~27 rows (approximately)
DELETE FROM `mas_department`;
/*!40000 ALTER TABLE `mas_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_department` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_designation
DROP TABLE IF EXISTS `mas_designation`;
CREATE TABLE IF NOT EXISTS `mas_designation` (
  `DesignationId` int(11) NOT NULL AUTO_INCREMENT,
  `IsStrengthReport` int(11) NOT NULL DEFAULT '0',
  `DesignationName` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`DesignationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_designation: ~73 rows (approximately)
DELETE FROM `mas_designation`;
/*!40000 ALTER TABLE `mas_designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_designation` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_employee
DROP TABLE IF EXISTS `mas_employee`;
CREATE TABLE IF NOT EXISTS `mas_employee` (
  `EmployeeId` int(11) NOT NULL AUTO_INCREMENT,
  `EmpNo` int(11) DEFAULT '0',
  `Emp_Id` int(11) DEFAULT NULL,
  `EmpName` varchar(250) DEFAULT NULL,
  `EmpName_Tamil` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FatherName_Tamil` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DepartmentId` int(11) NOT NULL DEFAULT '0',
  `DesignationId` int(11) DEFAULT '0',
  `ShiftId` int(11) NOT NULL DEFAULT '0',
  `Wage_Day` decimal(8,2) DEFAULT '0.00',
  `Wage_Day_f` decimal(15,2) DEFAULT '0.00',
  `Address1` text,
  `Address2` text,
  `PinCode` varchar(6) DEFAULT NULL,
  `StatusId` int(2) DEFAULT '1',
  `MobileNo` varchar(50) DEFAULT NULL,
  `DoJ` date DEFAULT NULL,
  `DOr` date DEFAULT NULL,
  `Ot_Hr` decimal(7,2) DEFAULT '0.00',
  `Machine_Id` int(6) DEFAULT '0',
  `BasicPay` decimal(10,2) DEFAULT '0.00',
  `bSalary` decimal(15,2) DEFAULT '0.00',
  `Inc1` decimal(15,2) DEFAULT '0.00',
  `Inc2` decimal(15,2) DEFAULT '0.00',
  `Inc3` decimal(15,2) DEFAULT '0.00',
  `Inc4` decimal(15,2) DEFAULT '0.00',
  `Inc5` decimal(15,2) DEFAULT '0.00',
  `Inc6` decimal(15,2) DEFAULT '0.00',
  `IsIncApprove` int(1) DEFAULT '1',
  `PeSalary` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EmployeeCategoryId` int(11) NOT NULL DEFAULT '0',
  `GenderId` int(2) NOT NULL DEFAULT '0',
  `Dob` date DEFAULT NULL,
  `IsInsert` int(1) NOT NULL DEFAULT '0',
  `IsDelete` int(1) NOT NULL DEFAULT '0',
  `IsUpdate` int(1) NOT NULL DEFAULT '0',
  `WeekDaysId` int(11) NOT NULL DEFAULT '0',
  `El_Op` int(1) NOT NULL DEFAULT '0',
  `Upto_W_Days` int(4) NOT NULL DEFAULT '0',
  `Spl_Allowance` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Food_Allowance` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Cug_Allowance` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Other_Allowance` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Mobile_Allowance` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Other_Deduction` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Pf_No` varchar(20) DEFAULT NULL,
  `Esi_No` varchar(20) DEFAULT NULL,
  `LocationId` int(11) NOT NULL DEFAULT '0',
  `SkillId` int(11) NOT NULL DEFAULT '0',
  `QualificationId` int(11) NOT NULL DEFAULT '0',
  `CityId` int(11) NOT NULL DEFAULT '0',
  `EmpImg` text,
  `IsPE` int(1) NOT NULL DEFAULT '0',
  `IsMess` int(1) NOT NULL DEFAULT '0',
  `IsIncentive` int(1) NOT NULL DEFAULT '0',
  `IsPF` int(1) DEFAULT '0',
  `IsESI` int(1) DEFAULT '0',
  `IsIncentiveElig` int(1) DEFAULT '0',
  `NativeId` int(11) NOT NULL DEFAULT '0',
  `RouteId` int(11) NOT NULL DEFAULT '0',
  `BankName` varchar(500) DEFAULT NULL,
  `BankAccNo` varchar(500) DEFAULT NULL,
  `BankAccName` varchar(500) DEFAULT NULL,
  `IfscCode` varchar(500) DEFAULT NULL,
  `HoursId` int(11) DEFAULT '0',
  `AadharNo` varchar(250) DEFAULT NULL,
  `PANNo` varchar(250) DEFAULT NULL,
  `DrivingLicenceNo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  UNIQUE KEY `Emp_Id` (`Emp_Id`),
  KEY `EmpNo` (`EmpNo`),
  KEY `EmpName` (`EmpName`),
  KEY `BasicPay` (`BasicPay`),
  KEY `PeSalary` (`PeSalary`),
  KEY `EmployeeCategoryId` (`EmployeeCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_employee: ~2,311 rows (approximately)
DELETE FROM `mas_employee`;
/*!40000 ALTER TABLE `mas_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_employee` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_employeecategory
DROP TABLE IF EXISTS `mas_employeecategory`;
CREATE TABLE IF NOT EXISTS `mas_employeecategory` (
  `EmployeeCategoryId` int(10) NOT NULL AUTO_INCREMENT,
  `EmployeeCategory` varchar(50) NOT NULL DEFAULT '0',
  `IsActive` int(1) unsigned zerofill NOT NULL DEFAULT '1',
  PRIMARY KEY (`EmployeeCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table jegan_spinning_erp.mas_employeecategory: ~3 rows (approximately)
DELETE FROM `mas_employeecategory`;
/*!40000 ALTER TABLE `mas_employeecategory` DISABLE KEYS */;
INSERT INTO `mas_employeecategory` (`EmployeeCategoryId`, `EmployeeCategory`, `IsActive`) VALUES
	(2, 'STAFF', 1),
	(3, 'SECURITY', 1),
	(5, 'STIPEND', 1);
/*!40000 ALTER TABLE `mas_employeecategory` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_errorcode
DROP TABLE IF EXISTS `mas_errorcode`;
CREATE TABLE IF NOT EXISTS `mas_errorcode` (
  `ErrorId` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` varchar(50) DEFAULT NULL,
  `ErrorDesc` text,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`ErrorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_errorcode: ~16 rows (approximately)
DELETE FROM `mas_errorcode`;
/*!40000 ALTER TABLE `mas_errorcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_errorcode` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_expensetype
DROP TABLE IF EXISTS `mas_expensetype`;
CREATE TABLE IF NOT EXISTS `mas_expensetype` (
  `ExpenseTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ExpenseType` varchar(250) DEFAULT NULL,
  `DrCr` int(1) DEFAULT '0',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`ExpenseTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_expensetype: ~6 rows (approximately)
DELETE FROM `mas_expensetype`;
/*!40000 ALTER TABLE `mas_expensetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_expensetype` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_gender
DROP TABLE IF EXISTS `mas_gender`;
CREATE TABLE IF NOT EXISTS `mas_gender` (
  `GenderId` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(30) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`GenderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_gender: ~2 rows (approximately)
DELETE FROM `mas_gender`;
/*!40000 ALTER TABLE `mas_gender` DISABLE KEYS */;
INSERT INTO `mas_gender` (`GenderId`, `Gender`, `IsActive`) VALUES
	(1, 'Male', 1),
	(2, 'Female', 1);
/*!40000 ALTER TABLE `mas_gender` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_hours
DROP TABLE IF EXISTS `mas_hours`;
CREATE TABLE IF NOT EXISTS `mas_hours` (
  `HoursId` int(11) NOT NULL AUTO_INCREMENT,
  `HourlyName` varchar(50) DEFAULT NULL,
  `HourlyTimes` decimal(10,2) DEFAULT '0.00',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`HoursId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_hours: ~0 rows (approximately)
DELETE FROM `mas_hours`;
/*!40000 ALTER TABLE `mas_hours` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_hours` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_item
DROP TABLE IF EXISTS `mas_item`;
CREATE TABLE IF NOT EXISTS `mas_item` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemCode` varchar(200) DEFAULT NULL,
  `ItemName` varchar(300) DEFAULT NULL,
  `ItemGroupId` int(11) DEFAULT '0',
  `UomId` int(11) DEFAULT '0',
  `TallyLedgerId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `CountsId` int(11) DEFAULT '0',
  `YarnTypeId` int(11) DEFAULT '0',
  `StdCost` decimal(10,2) DEFAULT '0.00',
  `PurchaseCost` decimal(10,2) DEFAULT '0.00',
  `OpeningStock` decimal(10,3) DEFAULT '0.000',
  `MinQtyLevel` int(11) DEFAULT '0',
  `MaxQtyLevel` int(11) DEFAULT '0',
  `IsActive` int(1) DEFAULT '1',
  `IsTaxable` int(1) DEFAULT '0',
  `CustomerInvTypeId` int(11) DEFAULT '0',
  `ColorId` int(11) DEFAULT '0',
  PRIMARY KEY (`ItemId`),
  KEY `FK_mas_item_mas_itemgroup` (`ItemGroupId`),
  KEY `FK_mas_item_mas_uom` (`UomId`),
  CONSTRAINT `FK_mas_item_mas_itemgroup` FOREIGN KEY (`ItemGroupId`) REFERENCES `mas_itemgroup` (`ItemGroupId`),
  CONSTRAINT `FK_mas_item_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_item: ~27 rows (approximately)
DELETE FROM `mas_item`;
/*!40000 ALTER TABLE `mas_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_item` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_itemgroup
DROP TABLE IF EXISTS `mas_itemgroup`;
CREATE TABLE IF NOT EXISTS `mas_itemgroup` (
  `ItemGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemTypeId` int(11) DEFAULT '0',
  `TaxId` int(11) DEFAULT '0',
  `TallyLedgerId` int(11) DEFAULT '0',
  `pTaxId` int(11) DEFAULT '0',
  `cTaxId` int(11) DEFAULT '0',
  `mTaxId` int(11) DEFAULT '0',
  `ItemGroup` varchar(200) DEFAULT NULL,
  `HsnCode` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `IsNoQtyCalc` int(1) DEFAULT '0',
  `GroupDescription` text,
  PRIMARY KEY (`ItemGroupId`),
  KEY `FK_mas_itemgroup_mas_itemtype` (`ItemTypeId`),
  KEY `FK_mas_itemgroup_mas_tax` (`TaxId`),
  CONSTRAINT `FK_mas_itemgroup_mas_itemtype` FOREIGN KEY (`ItemTypeId`) REFERENCES `mas_itemtype` (`ItemTypeId`),
  CONSTRAINT `FK_mas_itemgroup_mas_tax` FOREIGN KEY (`TaxId`) REFERENCES `mas_tax` (`TaxId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_itemgroup: ~5 rows (approximately)
DELETE FROM `mas_itemgroup`;
/*!40000 ALTER TABLE `mas_itemgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_itemgroup` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_itemtype
DROP TABLE IF EXISTS `mas_itemtype`;
CREATE TABLE IF NOT EXISTS `mas_itemtype` (
  `ItemTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  `ItemType` varchar(200) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`ItemTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_itemtype: ~14 rows (approximately)
DELETE FROM `mas_itemtype`;
/*!40000 ALTER TABLE `mas_itemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_itemtype` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_itemtypecategory
DROP TABLE IF EXISTS `mas_itemtypecategory`;
CREATE TABLE IF NOT EXISTS `mas_itemtypecategory` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CategoryId`),
  KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.mas_itemtypecategory: ~2 rows (approximately)
DELETE FROM `mas_itemtypecategory`;
/*!40000 ALTER TABLE `mas_itemtypecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_itemtypecategory` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_location
DROP TABLE IF EXISTS `mas_location`;
CREATE TABLE IF NOT EXISTS `mas_location` (
  `LocationId` int(11) NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_location: ~16 rows (approximately)
DELETE FROM `mas_location`;
/*!40000 ALTER TABLE `mas_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_location` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_machine
DROP TABLE IF EXISTS `mas_machine`;
CREATE TABLE IF NOT EXISTS `mas_machine` (
  `MachineId` int(11) NOT NULL AUTO_INCREMENT,
  `MachineNo` varchar(50) DEFAULT NULL,
  `MachineCode` varchar(50) DEFAULT NULL,
  `MacTpi` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SpindleCount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `StdSpeed` decimal(10,2) NOT NULL DEFAULT '0.00',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`MachineId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_machine: ~11 rows (approximately)
DELETE FROM `mas_machine`;
/*!40000 ALTER TABLE `mas_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_machine` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_native
DROP TABLE IF EXISTS `mas_native`;
CREATE TABLE IF NOT EXISTS `mas_native` (
  `NativeId` int(11) NOT NULL AUTO_INCREMENT,
  `NativePlace` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`NativeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_native: ~0 rows (approximately)
DELETE FROM `mas_native`;
/*!40000 ALTER TABLE `mas_native` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_native` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_qualification
DROP TABLE IF EXISTS `mas_qualification`;
CREATE TABLE IF NOT EXISTS `mas_qualification` (
  `QualificationId` int(11) NOT NULL AUTO_INCREMENT,
  `QualificationName` varchar(250) DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  PRIMARY KEY (`QualificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_qualification: ~1 rows (approximately)
DELETE FROM `mas_qualification`;
/*!40000 ALTER TABLE `mas_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_qualification` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_routes
DROP TABLE IF EXISTS `mas_routes`;
CREATE TABLE IF NOT EXISTS `mas_routes` (
  `RouteId` int(11) NOT NULL AUTO_INCREMENT,
  `RouteName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RouteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_routes: ~1 rows (approximately)
DELETE FROM `mas_routes`;
/*!40000 ALTER TABLE `mas_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_routes` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_shift
DROP TABLE IF EXISTS `mas_shift`;
CREATE TABLE IF NOT EXISTS `mas_shift` (
  `ShiftId` int(11) NOT NULL AUTO_INCREMENT,
  `ShiftName` varchar(100) DEFAULT NULL,
  `From_Time` datetime DEFAULT NULL,
  `To_Time` datetime DEFAULT NULL,
  `In_From_Time` datetime DEFAULT NULL,
  `In_To_Time` datetime DEFAULT NULL,
  `Out_From_Time` datetime DEFAULT NULL,
  `Out_To_Time` datetime DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `ColorCode` varchar(11) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ShiftId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_shift: ~3 rows (approximately)
DELETE FROM `mas_shift`;
/*!40000 ALTER TABLE `mas_shift` DISABLE KEYS */;
INSERT INTO `mas_shift` (`ShiftId`, `ShiftName`, `From_Time`, `To_Time`, `In_From_Time`, `In_To_Time`, `Out_From_Time`, `Out_To_Time`, `IsActive`, `ColorCode`) VALUES
	(1, '1st Shift', '1900-01-01 06:00:00', '1900-01-01 14:00:00', '1900-01-01 04:00:00', '1900-01-01 11:30:00', '1900-01-01 13:31:00', '1900-01-01 21:30:00', 1, '#ffee58'),
	(2, '2nd Shift', '1900-01-01 14:00:00', '1900-01-01 22:00:00', '1900-01-01 12:30:00', '1900-01-01 16:30:00', '1900-01-01 21:31:00', '1900-01-01 00:00:00', 1, '#29b6f6 '),
	(3, '3rd Shift', '1900-01-01 22:00:00', '1900-01-01 06:00:00', '1900-01-01 20:00:00', '1900-01-01 00:30:00', '1900-01-01 04:00:00', '1900-01-01 08:00:00', 1, '#ec407a ');
/*!40000 ALTER TABLE `mas_shift` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_skills
DROP TABLE IF EXISTS `mas_skills`;
CREATE TABLE IF NOT EXISTS `mas_skills` (
  `SkillId` int(11) NOT NULL AUTO_INCREMENT,
  `SkillName` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`SkillId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_skills: ~5 rows (approximately)
DELETE FROM `mas_skills`;
/*!40000 ALTER TABLE `mas_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_skills` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_state
DROP TABLE IF EXISTS `mas_state`;
CREATE TABLE IF NOT EXISTS `mas_state` (
  `StateId` int(11) NOT NULL AUTO_INCREMENT,
  `CountryId` int(11) DEFAULT '0',
  `StateName` varchar(200) DEFAULT NULL,
  `StateCode` varchar(50) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`StateId`),
  KEY `FK_mas_state_mas_country` (`CountryId`),
  CONSTRAINT `FK_mas_state_mas_country` FOREIGN KEY (`CountryId`) REFERENCES `mas_country` (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_state: ~7 rows (approximately)
DELETE FROM `mas_state`;
/*!40000 ALTER TABLE `mas_state` DISABLE KEYS */;
INSERT INTO `mas_state` (`StateId`, `CountryId`, `StateName`, `StateCode`, `IsActive`) VALUES
	(1, 1, 'TAMILNADU', '33', 1),
	(2, 1, 'KERALA', '01', 1),
	(3, 1, 'KERALAS', '30002', 1),
	(4, 2, 'QQ', '523', 1),
	(5, 1, 'WEST BENGAL', '30000', 1),
	(6, 1, 'MAHARASTRA', '27', 1),
	(7, 1, 'UTTAR PRADESH', '09', 1);
/*!40000 ALTER TABLE `mas_state` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_stockadjustmenttype
DROP TABLE IF EXISTS `mas_stockadjustmenttype`;
CREATE TABLE IF NOT EXISTS `mas_stockadjustmenttype` (
  `StockAdjustmentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `StockAdjustmentType` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`StockAdjustmentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.mas_stockadjustmenttype: ~2 rows (approximately)
DELETE FROM `mas_stockadjustmenttype`;
/*!40000 ALTER TABLE `mas_stockadjustmenttype` DISABLE KEYS */;
INSERT INTO `mas_stockadjustmenttype` (`StockAdjustmentTypeId`, `StockAdjustmentType`, `IsActive`) VALUES
	(1, 'ADD', 1),
	(2, 'LESS', 1);
/*!40000 ALTER TABLE `mas_stockadjustmenttype` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_supplier
DROP TABLE IF EXISTS `mas_supplier`;
CREATE TABLE IF NOT EXISTS `mas_supplier` (
  `SupplierId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` text,
  `ReportHeader` text,
  `LedgerName` varchar(250) DEFAULT NULL,
  `Address1` text,
  `Address2` text,
  `CityId` int(11) DEFAULT '0',
  `PinCode` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(200) DEFAULT NULL,
  `MobileNo` varchar(200) DEFAULT NULL,
  `eMailId` varchar(200) DEFAULT NULL,
  `GSTId` varchar(200) DEFAULT NULL,
  `PANNo` varchar(10) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `IsReverseCharge` int(1) DEFAULT '0',
  `AgentId` int(11) DEFAULT '0',
  PRIMARY KEY (`SupplierId`),
  KEY `FK_mas_supplier_mas_city` (`CityId`),
  CONSTRAINT `FK_mas_supplier_mas_city` FOREIGN KEY (`CityId`) REFERENCES `mas_city` (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_supplier: ~3 rows (approximately)
DELETE FROM `mas_supplier`;
/*!40000 ALTER TABLE `mas_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_supplier` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_suppliercategory
DROP TABLE IF EXISTS `mas_suppliercategory`;
CREATE TABLE IF NOT EXISTS `mas_suppliercategory` (
  `SupplierCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierCategory` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`SupplierCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_suppliercategory: ~11 rows (approximately)
DELETE FROM `mas_suppliercategory`;
/*!40000 ALTER TABLE `mas_suppliercategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_suppliercategory` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_suppliers_x_category
DROP TABLE IF EXISTS `mas_suppliers_x_category`;
CREATE TABLE IF NOT EXISTS `mas_suppliers_x_category` (
  `SuppliersxCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `SupplierCategoryId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SuppliersxCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_suppliers_x_category: ~0 rows (approximately)
DELETE FROM `mas_suppliers_x_category`;
/*!40000 ALTER TABLE `mas_suppliers_x_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_suppliers_x_category` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_tallyledger
DROP TABLE IF EXISTS `mas_tallyledger`;
CREATE TABLE IF NOT EXISTS `mas_tallyledger` (
  `TallyLedgerId` int(11) NOT NULL AUTO_INCREMENT,
  `TallyLedgerName` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`TallyLedgerId`),
  UNIQUE KEY `TallyLedgerName` (`TallyLedgerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.mas_tallyledger: ~1 rows (approximately)
DELETE FROM `mas_tallyledger`;
/*!40000 ALTER TABLE `mas_tallyledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_tallyledger` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_tax
DROP TABLE IF EXISTS `mas_tax`;
CREATE TABLE IF NOT EXISTS `mas_tax` (
  `TaxId` int(11) NOT NULL AUTO_INCREMENT,
  `TaxName` varchar(200) DEFAULT NULL,
  `TaxPer` decimal(15,2) DEFAULT '0.00',
  `Sgst` decimal(15,2) DEFAULT '0.00',
  `Cgst` decimal(15,2) DEFAULT '0.00',
  `Igst` decimal(15,2) DEFAULT '0.00',
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`TaxId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_tax: ~6 rows (approximately)
DELETE FROM `mas_tax`;
/*!40000 ALTER TABLE `mas_tax` DISABLE KEYS */;
INSERT INTO `mas_tax` (`TaxId`, `TaxName`, `TaxPer`, `Sgst`, `Cgst`, `Igst`, `IsActive`) VALUES
	(6, '5', 5.00, 2.50, 2.50, 5.00, 1),
	(7, 'GST-1', 0.00, 0.05, 0.05, 0.10, 1),
	(8, '123', 18.00, 9.00, 9.00, 18.00, 1),
	(10, 'IGST9', 0.00, 0.00, 0.00, 0.00, 1),
	(12, 'IGST', 25.00, 2.00, 3.00, 8.00, 1),
	(14, '45689', 5.00, 56.00, 8.00, 9.00, 1);
/*!40000 ALTER TABLE `mas_tax` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_taxitems
DROP TABLE IF EXISTS `mas_taxitems`;
CREATE TABLE IF NOT EXISTS `mas_taxitems` (
  `TaxItemId` int(11) NOT NULL AUTO_INCREMENT,
  `TaxItemName` varchar(350) DEFAULT NULL,
  `TallyColumn` text,
  `HsnCode` varchar(25) DEFAULT NULL,
  `TaxId` int(11) DEFAULT '0',
  `UomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `IsTaxable` int(11) DEFAULT '0',
  `IsActive` int(1) DEFAULT '1',
  `IsShowInSales` int(1) DEFAULT '0',
  `IsCessCalc` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaxItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_taxitems: ~4 rows (approximately)
DELETE FROM `mas_taxitems`;
/*!40000 ALTER TABLE `mas_taxitems` DISABLE KEYS */;
INSERT INTO `mas_taxitems` (`TaxItemId`, `TaxItemName`, `TallyColumn`, `HsnCode`, `TaxId`, `UomId`, `sUomId`, `IsTaxable`, `IsActive`, `IsShowInSales`, `IsCessCalc`) VALUES
	(1, 'Freight Charge', 'Freight Charges', '5205', 6, 4, 4, 1, 1, 1, 0),
	(2, 'Unloading', 'Unloading Charges', '5205', 6, 4, 4, 1, 1, 1, 0),
	(3, 'M.C.Cess 1%', 'M.C. Cess @ 1%', '5202', 6, 4, 4, 1, 1, 1, 1),
	(4, 'Transist Insurance', 'Transit Insurance', '5205', 6, 4, 4, 1, 1, 1, 2);
/*!40000 ALTER TABLE `mas_taxitems` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_uom
DROP TABLE IF EXISTS `mas_uom`;
CREATE TABLE IF NOT EXISTS `mas_uom` (
  `UomId` int(11) NOT NULL AUTO_INCREMENT,
  `UomName` varchar(200) DEFAULT NULL,
  `DecimalPlace` int(3) DEFAULT '0',
  `pValue` decimal(11,5) DEFAULT NULL,
  `pUomId` int(11) unsigned DEFAULT NULL,
  `sValue` decimal(11,5) DEFAULT NULL,
  `sUomId` int(11) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`UomId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_uom: ~8 rows (approximately)
DELETE FROM `mas_uom`;
/*!40000 ALTER TABLE `mas_uom` DISABLE KEYS */;
INSERT INTO `mas_uom` (`UomId`, `UomName`, `DecimalPlace`, `pValue`, `pUomId`, `sValue`, `sUomId`, `IsActive`) VALUES
	(4, 'BAG 50.0', 2, 1.00000, 4, 50.00000, 4, 1),
	(5, 'KGS', 0, 0.00000, NULL, 0.00000, 0, 1),
	(6, 'BAG 60.0', 0, 1.00000, NULL, 60.00000, 5, 1),
	(7, 'BOXS 45.36', 0, 4.00000, NULL, 45.36000, 5, 1),
	(8, 'BALE', 0, 5.00000, NULL, 0.00000, 5, 1),
	(9, 'BAG 54.37', 0, 1.00000, NULL, 54.37500, 5, 1),
	(10, 'NOS', 0, 1.00000, NULL, 1.00000, 5, 1),
	(11, 'CONES 12', 0, 1.56250, NULL, 18.75000, 5, 1);
/*!40000 ALTER TABLE `mas_uom` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_warehouse
DROP TABLE IF EXISTS `mas_warehouse`;
CREATE TABLE IF NOT EXISTS `mas_warehouse` (
  `WarehouseId` int(11) NOT NULL AUTO_INCREMENT,
  `WarehouseName` varchar(300) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`WarehouseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_warehouse: ~0 rows (approximately)
DELETE FROM `mas_warehouse`;
/*!40000 ALTER TABLE `mas_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_warehouse` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.mas_weekdays
DROP TABLE IF EXISTS `mas_weekdays`;
CREATE TABLE IF NOT EXISTS `mas_weekdays` (
  `WeekDaysId` int(11) NOT NULL AUTO_INCREMENT,
  `WeekDays` varchar(250) DEFAULT NULL,
  `ShortCode` varchar(10) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`WeekDaysId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.mas_weekdays: ~7 rows (approximately)
DELETE FROM `mas_weekdays`;
/*!40000 ALTER TABLE `mas_weekdays` DISABLE KEYS */;
INSERT INTO `mas_weekdays` (`WeekDaysId`, `WeekDays`, `ShortCode`, `IsActive`) VALUES
	(1, 'SUNDAY', 'SUN', 1),
	(2, 'MONDAY', 'MON', 1),
	(3, 'TUESDAY', 'TUE', 1),
	(4, 'WEDNESDAY', 'WED', 1),
	(5, 'THURSDAY', 'THU', 1),
	(6, 'FRIDAY', 'FRI', 1),
	(7, 'SATURDAY', 'SAT', 1);
/*!40000 ALTER TABLE `mas_weekdays` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `ModuleId` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT '0',
  `menu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_order` int(5) NOT NULL DEFAULT '0',
  `parent` int(11) DEFAULT '0',
  `target` enum('_self','_blank','_parent','_top') COLLATE utf8_unicode_ci DEFAULT '_self',
  `menu_default` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `menu_status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1',
  `external_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_after_login` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `entry_by` int(11) NOT NULL DEFAULT '1',
  `IsTop` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `IsSideMenu` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `IsFooter` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `IsListing` int(1) NOT NULL DEFAULT '0',
  `IsAdd` int(1) NOT NULL DEFAULT '0',
  `IsEdit` int(1) NOT NULL DEFAULT '0',
  `IsDelete` int(1) NOT NULL DEFAULT '0',
  `IsView` int(1) NOT NULL DEFAULT '0',
  `IsPrint` int(1) NOT NULL DEFAULT '0',
  `IsApprove` int(1) NOT NULL DEFAULT '0',
  `IsUnApprove` int(1) NOT NULL DEFAULT '0',
  `IsEmail` int(1) NOT NULL DEFAULT '0',
  `IsSMS` int(1) NOT NULL DEFAULT '0',
  `IsExportExcel` int(1) NOT NULL DEFAULT '0',
  `IsExportPDF` int(1) NOT NULL DEFAULT '0',
  `IsImport` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  KEY `FK_menu_modules` (`ModuleId`),
  CONSTRAINT `FK_menu_modules` FOREIGN KEY (`ModuleId`) REFERENCES `modules` (`ModuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.menu: ~333 rows (approximately)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES
	(1, 1, 0, 'Item Type', 'Item Type', NULL, 'itemtype', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(2, 1, 0, 'Item Group', 'Item Group', NULL, 'itemgroup', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(3, 1, 0, 'Item', 'Item', NULL, 'item', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(4, 1, 0, 'Country', 'Country', NULL, 'country', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(5, 1, 0, 'State', 'State', NULL, 'state', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(6, 1, 0, 'City', 'City', NULL, 'city', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(7, 1, 0, 'Tax', 'Tax', NULL, 'tax', 7, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(8, 1, 0, 'Supplier', 'Supplier', NULL, 'supplier', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(9, 1, 0, 'Uom', 'Uom', NULL, 'uom', 9, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(10, 1, 0, 'Tally Ledger', 'Tally Ledger', NULL, 'tallyledger', 10, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(11, 2, 0, 'Cotton Inward', 'Cotton Inward', NULL, 'cottoninward', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(12, 3, 0, 'General Settings', 'General Settings', NULL, 'generalsettings', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(13, 3, 0, 'Menu', 'Menu', NULL, 'menu', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(14, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 1, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(15, 1, 0, 'Add', 'Add', NULL, 'add', 2, 1, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(16, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 1, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(17, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 1, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(18, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 2, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(19, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 3, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(20, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 4, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(21, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 5, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(22, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 6, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(23, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 7, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(24, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 8, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(25, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 9, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(26, 1, 0, 'Add', 'Add', NULL, 'add', 2, 2, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(27, 1, 0, 'Add', 'Add', NULL, 'add', 2, 3, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(28, 1, 0, 'Add', 'Add', NULL, 'add', 2, 4, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(29, 1, 0, 'Add', 'Add', NULL, 'add', 2, 5, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(30, 1, 0, 'Add', 'Add', NULL, 'add', 2, 6, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(31, 1, 0, 'Add', 'Add', NULL, 'add', 2, 7, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(32, 1, 0, 'Add', 'Add', NULL, 'add', 2, 8, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(33, 1, 0, 'Add', 'Add', NULL, 'add', 2, 9, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(34, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 2, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(35, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 3, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(36, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 4, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(37, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 5, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(38, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 6, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(39, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 7, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(40, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 8, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(41, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 9, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(42, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 2, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(43, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 3, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(44, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 4, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(45, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 5, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(46, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 6, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(47, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 7, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(48, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 8, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(49, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 9, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(50, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 10, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(51, 1, 0, 'Add', 'Add', NULL, 'add', 2, 10, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(52, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 10, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(53, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 10, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(54, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(55, 2, 0, 'Add', 'Add', NULL, 'add', 2, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(56, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(57, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(58, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 12, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(59, 3, 0, 'Add', 'Add', NULL, 'add', 2, 12, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(60, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 12, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(61, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 12, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(62, 3, 0, 'Company', 'Company', NULL, 'company', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(63, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 62, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(64, 3, 0, 'Add', 'Add', NULL, 'add', 2, 62, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(65, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 62, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(66, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 62, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(67, 4, 0, 'Stock Adjustment', 'Stock Adjustment', NULL, 'stockadjustment', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(68, 4, 0, 'Stock Report Qty', 'Stock Report Qty', NULL, 'stockreportqty', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(69, 4, 0, 'Stock Report Value', 'Stock Report Value', NULL, 'stockreportvalue', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(70, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(71, 4, 0, 'Add', 'Add', NULL, 'add', 2, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(72, 4, 0, 'Edit', 'Edit', NULL, 'edit', 3, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(73, 4, 0, 'Delete', 'Delete', NULL, 'delete', 4, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(74, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 68, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(75, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 68, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
	(76, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 69, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(77, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 69, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
	(78, 2, 0, 'View', 'View', NULL, 'View', 5, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(79, 2, 0, 'Mixing Issue', 'Mixing Issue', NULL, 'mixingissue', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(80, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(81, 2, 0, 'Add', 'Add', NULL, 'add', 2, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(82, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(83, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(84, 2, 0, 'View', 'View', NULL, 'View', 5, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(85, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 13, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(86, 3, 0, 'Add', 'Add', NULL, 'add', 2, 13, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(87, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 13, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(88, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 13, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(90, 3, 0, 'Menu Template', 'Menu Template', NULL, 'menutemplate', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(91, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 90, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(92, 3, 0, 'Add', 'Add', NULL, 'add', 2, 90, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(93, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 90, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(94, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 90, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(95, 3, 0, 'Financial Year', 'Financial Year', NULL, 'financialyear', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(96, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 95, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(97, 3, 0, 'Add', 'Add', NULL, 'add', 2, 95, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(98, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 95, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(99, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 95, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(100, 1, 0, 'Payroll', 'Payroll', NULL, 'payroll', 11, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(101, 5, 0, 'Shift', 'Shift', NULL, 'shift', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(102, 5, 0, 'Department', 'Department', NULL, 'department', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(103, 5, 0, 'Designation', 'Designation', NULL, 'designation', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(104, 5, 0, 'Employee Category', 'Employee Category', NULL, 'employeecategory', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(105, 5, 0, 'Location', 'Location', NULL, 'location', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(106, 5, 0, 'Route', 'Route', NULL, 'route', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(107, 5, 0, 'Native', 'Native', NULL, 'native', 7, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(108, 5, 0, 'Work Hour', 'Work Hour', NULL, 'workhour', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(109, 5, 0, 'Qualification', 'Qualification', NULL, 'qualification', 9, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(110, 5, 0, 'Skills', 'Skills', NULL, 'skills', 10, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(111, 5, 0, 'Weekoff', 'Weekoff', NULL, 'weekoff', 11, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(112, 1, 0, 'Counts', 'Counts', NULL, 'counts', 12, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(113, 1, 0, 'Machines', 'Machines', NULL, 'machines', 12, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(114, 1, 0, 'Cotton Waste Type', 'Cotton Waste Type', NULL, 'cottonwastetype', 13, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(115, 1, 0, 'Warehouse', 'Warehouse', NULL, 'warehouse', 14, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(116, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 101, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(117, 5, 0, 'Add', 'Add', NULL, 'add', 2, 101, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(118, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 101, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(119, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 101, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(120, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 102, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(121, 5, 0, 'Add', 'Add', NULL, 'add', 2, 102, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(122, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 102, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(123, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 102, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(124, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 103, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(125, 5, 0, 'Add', 'Add', NULL, 'add', 2, 103, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(126, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 103, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(127, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 103, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(128, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 104, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(129, 5, 0, 'Add', 'Add', NULL, 'add', 2, 104, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(130, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 104, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(131, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 104, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(132, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 105, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(133, 5, 0, 'Add', 'Add', NULL, 'add', 2, 105, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(134, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 105, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(135, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 105, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(136, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 106, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(137, 5, 0, 'Add', 'Add', NULL, 'add', 2, 106, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(138, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 106, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(139, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 106, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(140, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 107, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(141, 5, 0, 'Add', 'Add', NULL, 'add', 2, 107, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(142, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 107, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(143, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 107, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(144, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 108, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(145, 5, 0, 'Add', 'Add', NULL, 'add', 2, 108, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(146, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 108, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(147, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 108, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(148, 5, 0, 'Employee', 'Employee', NULL, 'employee', 12, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(149, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 109, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(150, 5, 0, 'Add', 'Add', NULL, 'add', 2, 109, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(151, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 109, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(152, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 109, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(153, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 110, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(154, 5, 0, 'Add', 'Add', NULL, 'add', 2, 110, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(155, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 110, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(156, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 110, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(157, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 111, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(158, 5, 0, 'Add', 'Add', NULL, 'add', 2, 111, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(159, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 111, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(160, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 111, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(161, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 112, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(162, 1, 0, 'Add', 'Add', NULL, 'add', 2, 112, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(163, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 112, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(164, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 112, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(165, 5, 0, 'Listing', 'Listing', NULL, 'listing', 1, 148, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(166, 5, 0, 'Add', 'Add', NULL, 'add', 2, 148, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(167, 5, 0, 'Edit', 'Edit', NULL, 'edit', 3, 148, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(168, 5, 0, 'Delete', 'Delete', NULL, 'delete', 4, 148, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(169, 5, 0, 'View', 'View', NULL, 'View', 5, 148, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(170, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 113, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(171, 1, 0, 'Add', 'Add', NULL, 'add', 2, 113, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(172, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 113, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(173, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 113, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(174, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 113, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(175, 1, 0, 'Add', 'Add', NULL, 'add', 2, 114, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(176, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 114, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(177, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 114, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(178, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 114, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(179, 1, 0, 'Add', 'Add', NULL, 'add', 2, 115, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(180, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 115, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(181, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 115, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(182, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 115, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(184, 3, 0, 'Users', 'Users', NULL, 'users', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(185, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 184, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(186, 3, 0, 'Add', 'Add', NULL, 'add', 2, 184, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(187, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 184, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(188, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 184, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(189, 2, 0, 'Mixing Chart', 'Mixing Chart', NULL, 'mixingchart', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(190, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 189, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(191, 2, 0, 'Add', 'Add', NULL, 'add', 2, 189, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(192, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 189, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(193, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 189, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(194, 2, 0, 'View', 'View', NULL, 'View', 5, 189, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(195, 3, 0, 'Auto No', 'Auto No', NULL, 'autono', 7, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(196, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 195, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(197, 3, 0, 'Add', 'Add', NULL, 'add', 2, 195, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(198, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 195, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(199, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 195, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(200, 2, 0, 'Drawing', 'Drawing', NULL, 'drawing', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(201, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 200, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(202, 2, 0, 'Add', 'Add', NULL, 'add', 2, 200, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(203, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 200, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(204, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 200, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(205, 2, 0, 'View', 'View', NULL, 'View', 5, 200, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(206, 2, 0, 'Comper', 'Comper', NULL, 'comper', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(207, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 206, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(208, 2, 0, 'Add', 'Add', NULL, 'add', 2, 206, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(209, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 206, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(210, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 206, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(211, 2, 0, 'View', 'View', NULL, 'View', 5, 206, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(212, 2, 0, 'Simplex', 'Simplex', NULL, 'simplex', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(213, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 212, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(214, 2, 0, 'Add', 'Add', NULL, 'add', 2, 212, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(215, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 212, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(216, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 212, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(217, 2, 0, 'View', 'View', NULL, 'View', 5, 212, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(218, 2, 0, 'Spinning', 'Spinning', NULL, 'spinning', 7, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(219, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 218, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(220, 2, 0, 'Add', 'Add', NULL, 'add', 2, 218, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(221, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 218, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(222, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 218, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(223, 2, 0, 'View', 'View', NULL, 'View', 5, 218, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(224, 6, 0, 'Supplier wise Cotton Inward - Summary', 'Supplier wise Cotton Inward - Summary', NULL, 'swci_s', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(225, 6, 0, 'Listing', 'Listing', NULL, 'listing', 1, 224, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(226, 6, 0, 'Supplier wise Cotton Inward - Detail', 'Supplier wise Cotton Inward - Detail', NULL, 'swci_d', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(227, 6, 0, 'Listing', 'Listing', NULL, 'listing', 1, 226, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(228, 6, 0, 'Cotton Inward Day Wise - Monthly', 'Cotton Inward Day Wise - Monthly', NULL, 'cidw_m', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(229, 6, 0, 'Listing', 'Listing', NULL, 'listing', 1, 228, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(230, 7, 0, 'Sale Order', 'Sale Order', NULL, 'salesorder', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(231, 7, 0, 'Listing', 'Listing', NULL, 'listing', 1, 230, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(232, 7, 0, 'Add', 'Add', NULL, 'add', 2, 230, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(233, 7, 0, 'Edit', 'Edit', NULL, 'edit', 3, 230, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(234, 7, 0, 'Delete', 'Delete', NULL, 'delete', 4, 230, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(235, 7, 0, 'View', 'View', NULL, 'View', 5, 230, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(236, 7, 0, 'Sale Order Sort Close', 'Sale Order Sort Close', NULL, 'saleordersortclose', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(237, 7, 0, 'Listing', 'Listing', NULL, 'listing', 1, 236, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(238, 7, 0, 'Add', 'Add', NULL, 'add', 2, 236, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(239, 7, 0, 'Edit', 'Edit', NULL, 'edit', 3, 236, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(240, 7, 0, 'Delete', 'Delete', NULL, 'delete', 4, 236, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(241, 7, 0, 'View', 'View', NULL, 'view', 5, 236, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(242, 7, 0, 'Sales', 'Sales', NULL, 'sales', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(243, 7, 0, 'Listing', 'Listing', NULL, 'listing', 1, 242, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(244, 7, 0, 'Add', 'Add', NULL, 'add', 2, 242, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(245, 7, 0, 'Edit', 'Edit', NULL, 'edit', 3, 242, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(246, 7, 0, 'Delete', 'Delete', NULL, 'delete', 4, 242, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(247, 7, 0, 'View', 'View', NULL, 'View', 5, 242, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(248, 1, 0, 'Customer', 'Customer', NULL, 'customer', 15, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(249, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 248, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(250, 1, 0, 'Add', 'Add', NULL, 'add', 2, 248, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(251, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 248, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(252, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 248, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(253, 1, 0, 'Consignee', 'Consignee', NULL, 'consignee', 16, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(254, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 253, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(255, 1, 0, 'Add', 'Add', NULL, 'add', 2, 253, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(256, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 253, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(257, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 253, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(258, 1, 0, 'Color', 'Color', NULL, 'color', 17, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(259, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 258, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(260, 1, 0, 'Add', 'Add', NULL, 'add', 2, 258, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(261, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 258, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(262, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 258, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(263, 1, 0, 'Agent', 'Agent', NULL, 'agent', 18, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(264, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 263, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(265, 1, 0, 'Add', 'Add', NULL, 'add', 2, 263, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(266, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 263, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(267, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 263, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(268, 8, 0, 'Purchase Order', 'Purchase Order', NULL, 'purchaseorder', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(269, 8, 0, 'Listing', 'Listing', NULL, 'listing', 1, 268, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(270, 8, 0, 'Add', 'Add', NULL, 'add', 2, 268, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(271, 8, 0, 'Edit', 'Edit', NULL, 'edit', 3, 268, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(272, 8, 0, 'Delete', 'Delete', NULL, 'delete', 4, 268, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(273, 8, 0, 'View', 'View', NULL, 'View', 5, 268, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(274, 8, 0, 'Purchase Inward', 'Purchase Inward', NULL, 'purchaseinward', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(275, 8, 0, 'Listing', 'Listing', NULL, 'listing', 1, 274, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(276, 8, 0, 'Add', 'Add', NULL, 'add', 2, 274, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(277, 8, 0, 'Edit', 'Edit', NULL, 'edit', 3, 274, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(278, 8, 0, 'Delete', 'Delete', NULL, 'delete', 4, 274, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(279, 8, 0, 'View', 'View', NULL, 'View', 5, 274, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(280, 8, 0, 'General Inward', 'General Inward', NULL, 'generalinward', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(281, 8, 0, 'Listing', 'Listing', NULL, 'listing', 1, 280, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(282, 8, 0, 'Add', 'Add', NULL, 'add', 2, 280, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(283, 8, 0, 'Edit', 'Edit', NULL, 'edit', 3, 280, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(284, 8, 0, 'Delete', 'Delete', NULL, 'delete', 4, 280, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(285, 8, 0, 'View', 'View', NULL, 'View', 5, 280, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(286, 1, 0, 'Expense Type', 'Expense Type', NULL, 'expensetypemaster', 19, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(287, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 286, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(288, 1, 0, 'Add', 'Add', NULL, 'add', 2, 286, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(289, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 286, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(290, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 286, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(291, 11, 0, 'Expense Entry', 'Expense Entry', NULL, 'expenseentry', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(292, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 291, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(293, 11, 0, 'Add', 'Add', NULL, 'add', 2, 291, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(294, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 291, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(295, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 291, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(296, 11, 0, 'View', 'View', NULL, 'View', 5, 291, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(297, 9, 0, 'Credit Note', 'Credit Note', NULL, 'creditnote', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(298, 9, 0, 'Listing', 'Listing', NULL, 'listing', 1, 297, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(299, 9, 0, 'Add', 'Add', NULL, 'add', 2, 297, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(300, 9, 0, 'Edit', 'Edit', NULL, 'edit', 3, 297, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(301, 9, 0, 'Delete', 'Delete', NULL, 'delete', 4, 297, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(302, 9, 0, 'View', 'View', NULL, 'View', 5, 297, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(303, 9, 0, 'Debit Note', 'Debit Note', NULL, 'debitnote', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(304, 9, 0, 'Listing', 'Listing', NULL, 'listing', 1, 303, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(305, 9, 0, 'Add', 'Add', NULL, 'add', 2, 303, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(306, 9, 0, 'Edit', 'Edit', NULL, 'edit', 3, 303, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(307, 9, 0, 'Delete', 'Delete', NULL, 'delete', 4, 303, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(308, 9, 0, 'View', 'View', NULL, 'View', 5, 303, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(309, 4, 0, 'Stock Report Qty - Summary', 'Stock Report Qty - Summary', NULL, 'stockreportqty_summary', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(310, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 309, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(311, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 309, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
	(312, 11, 0, 'Delivery Challan', 'Delivery Challan', NULL, 'deliverychallan', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(313, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(314, 11, 0, 'Add', 'Add', NULL, 'add', 2, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(315, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(316, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(317, 11, 0, 'View', 'View', NULL, 'View', 5, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(318, 11, 0, 'Supplier Program Chart', 'Supplier Program Chart', NULL, 'supplierpgmchart', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(319, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(320, 11, 0, 'Add', 'Add', NULL, 'add', 2, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(321, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(322, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(323, 11, 0, 'View', 'View', NULL, 'View', 5, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(324, 11, 0, 'Yarn Receipt', 'Yarn Receipt', NULL, 'yarnreceipt', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(325, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(326, 11, 0, 'Add', 'Add', NULL, 'add', 2, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(327, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(328, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(329, 11, 0, 'View', 'View', NULL, 'View', 5, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(330, 11, 0, 'Waste Cotton Receipt', 'Waste Cotton Receipt', NULL, 'wastecottonreceipt', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(331, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(332, 11, 0, 'Add', 'Add', NULL, 'add', 2, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(333, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(334, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(335, 11, 0, 'View', 'View', NULL, 'View', 5, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(336, 4, 0, 'Supplier Stock Qty - Summary', 'Supplier Stock Qty - Summary', NULL, 'supplierstockqty_summary', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(337, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 336, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(338, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 336, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
	(339, 4, 0, 'Supplier Stock Qty - Detail', 'Supplier Stock Qty - Detail', NULL, 'supplierstockqty_detail', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(340, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 339, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(341, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 339, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
	(342, 11, 0, 'Job Work Return', 'Job Work Return', NULL, 'jobworkreturn', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(343, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(344, 11, 0, 'Add', 'Add', NULL, 'add', 2, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(345, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(346, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(347, 11, 0, 'View', 'View', NULL, 'View', 5, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(348, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 312, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(349, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(350, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(351, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(352, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(353, 3, 0, 'Supplier Category', 'Supplier Category', NULL, 'suppliercategory', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(354, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(355, 3, 0, 'Add', 'Add', NULL, 'add', 2, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(356, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(357, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(358, 3, 0, 'View', 'View', NULL, 'View', 5, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(359, 3, 0, 'Customer Category', 'Customer Category', NULL, 'customercategory', 9, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(360, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(361, 3, 0, 'Add', 'Add', NULL, 'add', 2, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(362, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(363, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(364, 3, 0, 'View', 'View', NULL, 'View', 5, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(365, 2, 0, 'Production Entry', 'Production Entry', NULL, 'productionentry', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(366, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(367, 2, 0, 'Add', 'Add', NULL, 'add', 2, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(368, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(369, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(370, 2, 0, 'View', 'View', NULL, 'View', 5, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	(371, 2, 0, 'Print', 'Print', NULL, 'Print', 6, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	(372, 8, 0, 'PRINT', 'PRINT', NULL, 'Print', 6, 280, '_self', '0', '1', NULL, '0', 1, '0', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.modules
DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `ModuleId` int(5) NOT NULL AUTO_INCREMENT,
  `ModuleName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ModuleTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ModuleImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModuleTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModuleOrder` int(5) NOT NULL DEFAULT '0',
  `ModuleStatus` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1',
  `IsTop` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `IsSideMenu` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `IsFooter` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`ModuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.modules: ~9 rows (approximately)
DELETE FROM `modules`;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitle`, `ModuleImage`, `ModuleTemplate`, `ModuleOrder`, `ModuleStatus`, `IsTop`, `IsSideMenu`, `IsFooter`) VALUES
	(1, 'Master', 'Master', NULL, 'master', 10, '1', '1', '0', '0'),
	(2, 'Production', 'Production', NULL, 'transaction', 30, '1', '1', '0', '0'),
	(3, 'Settings', 'Settings', NULL, 'settings', 100, '1', '1', '0', '0'),
	(4, 'Stock', 'Stock', NULL, 'stock', 90, '1', '1', '0', '0'),
	(5, 'Payroll', 'Payroll', NULL, 'payroll', 20, '1', '1', '0', '0'),
	(6, 'Report', 'Report', NULL, 'report', 70, '1', '1', '0', '0'),
	(7, 'Sales', 'Sales', NULL, 'sales', 40, '1', '1', '0', '0'),
	(8, 'Purchase', 'Purchase', NULL, 'purchase', 50, '1', '1', '0', '0'),
	(9, 'Accounts', 'Accounts', NULL, 'accounts', 60, '1', '1', '0', '0'),
	(10, 'MIS', 'MIS', NULL, 'mis', 80, '1', '1', '0', '0'),
	(11, 'Transaction', 'Transaction', NULL, 'trn', 31, '1', '1', '0', '0');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.privilege
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE IF NOT EXISTS `privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuTemplateId` int(11) DEFAULT '0',
  `menu_id` int(11) DEFAULT '0',
  `IsActive` int(1) DEFAULT '0',
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.privilege: ~0 rows (approximately)
DELETE FROM `privilege`;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `SettingsId` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `site_url` varchar(150) NOT NULL,
  `site_email` varchar(50) NOT NULL,
  `theme` varchar(32) NOT NULL,
  `theme_var` varchar(32) DEFAULT NULL,
  `seo` tinyint(1) NOT NULL DEFAULT '0',
  `perpage` tinyint(4) NOT NULL DEFAULT '10',
  `backup` varchar(64) NOT NULL,
  `thumb_w` varchar(5) NOT NULL,
  `thumb_h` varchar(5) NOT NULL,
  `img_w` varchar(5) NOT NULL,
  `img_h` varchar(5) NOT NULL,
  `avatar_w` varchar(3) DEFAULT '80',
  `avatar_h` varchar(3) DEFAULT '80',
  `short_date` varchar(50) NOT NULL,
  `long_date` varchar(50) NOT NULL,
  `dtz` varchar(120) DEFAULT NULL,
  `weekstart` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `show_lang` tinyint(1) NOT NULL DEFAULT '0',
  `langdir` varchar(3) NOT NULL DEFAULT 'ltr',
  `eucookie` tinyint(1) NOT NULL DEFAULT '0',
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `offline_msg` text,
  `offline_data` varchar(20) DEFAULT '0000:00:00 00:00:00',
  `logo` varchar(100) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `cur_symbol` varchar(2) DEFAULT NULL,
  `reg_verify` tinyint(1) NOT NULL DEFAULT '1',
  `auto_verify` tinyint(1) NOT NULL DEFAULT '1',
  `reg_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `notify_admin` tinyint(1) NOT NULL DEFAULT '0',
  `user_limit` varchar(6) DEFAULT NULL,
  `flood` varchar(6) DEFAULT NULL,
  `attempt` varchar(2) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '0',
  `enablefb` tinyint(1) NOT NULL DEFAULT '0',
  `fbapi` varchar(50) DEFAULT NULL,
  `fbsecret` varchar(120) DEFAULT NULL,
  `metakeys` text,
  `metadesc` text,
  `analytics` text,
  `mailer` enum('PHP','SMTP','SMAIL') DEFAULT NULL,
  `sendmail` varchar(60) DEFAULT NULL,
  `smtp_host` varchar(150) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(3) DEFAULT NULL,
  `is_ssl` tinyint(1) DEFAULT '0',
  `version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SettingsId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table jegan_spinning_erp.settings: 1 rows
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`SettingsId`, `site_name`, `company`, `site_url`, `site_email`, `theme`, `theme_var`, `seo`, `perpage`, `backup`, `thumb_w`, `thumb_h`, `img_w`, `img_h`, `avatar_w`, `avatar_h`, `short_date`, `long_date`, `dtz`, `weekstart`, `lang`, `show_lang`, `langdir`, `eucookie`, `offline`, `offline_msg`, `offline_data`, `logo`, `currency`, `cur_symbol`, `reg_verify`, `auto_verify`, `reg_allowed`, `notify_admin`, `user_limit`, `flood`, `attempt`, `logging`, `enablefb`, `fbapi`, `fbsecret`, `metakeys`, `metadesc`, `analytics`, `mailer`, `sendmail`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `is_ssl`, `version`) VALUES
	(1, 'Spinning ERP', 'Spinning ERP', 'http://localhost:8080/kalai/spin_erp', 'yathavtech@gmail.com', '', NULL, 0, 10, '25-Oct-2017_01-50-53.sql', '150', '150', '800', '800', '80', '80', '%b %d %Y', '%d %B %Y %H:%M', 'Asia/Kolkata', 1, 'en', 0, '', 0, 0, 'We are currently working on improving our site. Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', '2013:01:08 23:00:00', NULL, 'Rs', 'Rs', 0, 0, 0, 0, '0', '0', '0', 1, 0, '', '', 'Spinning Erp', 'Spinning Erp', '', 'PHP', '/usr/sbin/sendmail -t -i', 'mail.hostname.com', 'yourusername', 'yourpass', '25', 0, '1.00');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_accesslog
DROP TABLE IF EXISTS `set_accesslog`;
CREATE TABLE IF NOT EXISTS `set_accesslog` (
  `LogId` int(11) NOT NULL AUTO_INCREMENT,
  `AccDate` date DEFAULT NULL,
  `StatusId` int(1) DEFAULT '1',
  PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_accesslog: ~17 rows (approximately)
DELETE FROM `set_accesslog`;
/*!40000 ALTER TABLE `set_accesslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_accesslog` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_autono
DROP TABLE IF EXISTS `set_autono`;
CREATE TABLE IF NOT EXISTS `set_autono` (
  `AutoNoId` int(11) NOT NULL AUTO_INCREMENT,
  `MenuId` int(11) DEFAULT '0',
  `Text1` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Text2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Text3` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumberSeed` int(11) DEFAULT '0',
  `NumberOfDigits` int(11) DEFAULT '0',
  `NumberPosition` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '1',
  `FinancialYearId` int(11) DEFAULT '1',
  `Tag` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AutoNoId`),
  KEY `FK_set_autono_set_company` (`CompanyId`),
  KEY `FK_set_autono_set_financialyear` (`FinancialYearId`),
  KEY `FK_set_autono_menu` (`MenuId`),
  CONSTRAINT `FK_set_autono_menu` FOREIGN KEY (`MenuId`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `FK_set_autono_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_set_autono_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.set_autono: ~20 rows (approximately)
DELETE FROM `set_autono`;
/*!40000 ALTER TABLE `set_autono` DISABLE KEYS */;
INSERT INTO `set_autono` (`AutoNoId`, `MenuId`, `Text1`, `Text2`, `Text3`, `NumberSeed`, `NumberOfDigits`, `NumberPosition`, `CompanyId`, `FinancialYearId`, `Tag`) VALUES
	(1, 11, 'CI', '', '', 0, 4, 0, 1, 2, 'A'),
	(2, 189, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(3, 79, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(4, 200, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(5, 206, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(6, 212, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(7, 230, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(8, 242, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(9, 268, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(10, 274, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(11, 280, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(12, 291, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(13, 297, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(14, 303, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(15, 312, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(16, 318, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(17, 324, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(18, 330, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(19, 342, '', '', '', 0, 0, 0, 1, 2, 'A'),
	(20, 365, '', '', '', 0, 0, 0, 1, 2, 'A');
/*!40000 ALTER TABLE `set_autono` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_company
DROP TABLE IF EXISTS `set_company`;
CREATE TABLE IF NOT EXISTS `set_company` (
  `CompanyId` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(250) DEFAULT NULL,
  `Address1` varchar(250) DEFAULT NULL,
  `Address2` varchar(250) DEFAULT NULL,
  `CityId` int(11) DEFAULT '0',
  `PinCode` varchar(250) DEFAULT NULL,
  `Phone` varchar(250) DEFAULT NULL,
  `Fax` varchar(250) DEFAULT NULL,
  `Mobile` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Web` varchar(250) DEFAULT NULL,
  `TINNo` varchar(250) DEFAULT NULL,
  `CSTNo` varchar(250) DEFAULT NULL,
  `GstNo` varchar(250) DEFAULT NULL,
  `PanNo` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`CompanyId`),
  KEY `FK_set_company_MAS_city` (`CityId`),
  CONSTRAINT `FK_set_company_MAS_city` FOREIGN KEY (`CityId`) REFERENCES `mas_city` (`CityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_company: ~1 rows (approximately)
DELETE FROM `set_company`;
/*!40000 ALTER TABLE `set_company` DISABLE KEYS */;
INSERT INTO `set_company` (`CompanyId`, `CompanyName`, `Address1`, `Address2`, `CityId`, `PinCode`, `Phone`, `Fax`, `Mobile`, `Email`, `Web`, `TINNo`, `CSTNo`, `GstNo`, `PanNo`, `IsActive`) VALUES
	(1, 'Lambodhara Textiles Ltd', 'asdf', 'adsfads', 2, '641602', '9009', 'none', '8675503968', '', '', '', '', '12345', '1212', 1);
/*!40000 ALTER TABLE `set_company` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_customer_link
DROP TABLE IF EXISTS `set_customer_link`;
CREATE TABLE IF NOT EXISTS `set_customer_link` (
  `CustomerLinkId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerCategoryId` int(11) NOT NULL DEFAULT '0',
  `MenuId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CustomerLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_customer_link: ~5 rows (approximately)
DELETE FROM `set_customer_link`;
/*!40000 ALTER TABLE `set_customer_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_customer_link` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_financialyear
DROP TABLE IF EXISTS `set_financialyear`;
CREATE TABLE IF NOT EXISTS `set_financialyear` (
  `FinancialYearId` int(11) NOT NULL AUTO_INCREMENT,
  `FinancialYear` varchar(100) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `CompanyId` int(1) DEFAULT '1',
  PRIMARY KEY (`FinancialYearId`),
  KEY `FK_set_financialyear_set_company` (`CompanyId`),
  CONSTRAINT `FK_set_financialyear_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_financialyear: ~3 rows (approximately)
DELETE FROM `set_financialyear`;
/*!40000 ALTER TABLE `set_financialyear` DISABLE KEYS */;
INSERT INTO `set_financialyear` (`FinancialYearId`, `FinancialYear`, `FromDate`, `ToDate`, `IsActive`, `CompanyId`) VALUES
	(1, '2012-2013', '2015-04-01', '2016-04-01', 0, 1),
	(2, '2017-2018', '2017-04-01', '2018-03-31', 0, 1),
	(3, '2018-2019', '2018-04-01', '2019-03-31', 1, 1);
/*!40000 ALTER TABLE `set_financialyear` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_menutemplate
DROP TABLE IF EXISTS `set_menutemplate`;
CREATE TABLE IF NOT EXISTS `set_menutemplate` (
  `MenuTemplateId` int(11) NOT NULL AUTO_INCREMENT,
  `MenuTemplate` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`MenuTemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_menutemplate: ~0 rows (approximately)
DELETE FROM `set_menutemplate`;
/*!40000 ALTER TABLE `set_menutemplate` DISABLE KEYS */;
INSERT INTO `set_menutemplate` (`MenuTemplateId`, `MenuTemplate`, `IsActive`) VALUES
	(1, 'ADMIN', 1);
/*!40000 ALTER TABLE `set_menutemplate` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_supplier_link
DROP TABLE IF EXISTS `set_supplier_link`;
CREATE TABLE IF NOT EXISTS `set_supplier_link` (
  `SupplierLinkId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierCategoryId` int(11) NOT NULL DEFAULT '0',
  `MenuId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SupplierLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_supplier_link: ~14 rows (approximately)
DELETE FROM `set_supplier_link`;
/*!40000 ALTER TABLE `set_supplier_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_supplier_link` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_users
DROP TABLE IF EXISTS `set_users`;
CREATE TABLE IF NOT EXISTS `set_users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `HodEmail` varchar(200) DEFAULT NULL,
  `UserTypeId` int(11) DEFAULT '0',
  `lastip` varchar(50) DEFAULT '0',
  `StatusId` int(11) DEFAULT '1',
  `LastLogin` date DEFAULT NULL,
  `LastLoginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsOnline` int(11) DEFAULT '0',
  `EmployeeId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '1',
  `MenuTemplateId` int(11) DEFAULT '0',
  PRIMARY KEY (`UserId`),
  KEY `FK_set_users_set_usertype` (`UserTypeId`),
  CONSTRAINT `FK_set_users_set_usertype` FOREIGN KEY (`UserTypeId`) REFERENCES `set_usertype` (`UserTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_users: ~14 rows (approximately)
DELETE FROM `set_users`;
/*!40000 ALTER TABLE `set_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_users` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.set_usertype
DROP TABLE IF EXISTS `set_usertype`;
CREATE TABLE IF NOT EXISTS `set_usertype` (
  `UserTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(250) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  PRIMARY KEY (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.set_usertype: ~3 rows (approximately)
DELETE FROM `set_usertype`;
/*!40000 ALTER TABLE `set_usertype` DISABLE KEYS */;
INSERT INTO `set_usertype` (`UserTypeId`, `UserType`, `IsActive`) VALUES
	(1, 'Admin', 1),
	(2, 'Limited User', 1),
	(200, 'Administrator', 0);
/*!40000 ALTER TABLE `set_usertype` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.stock_adjustment
DROP TABLE IF EXISTS `stock_adjustment`;
CREATE TABLE IF NOT EXISTS `stock_adjustment` (
  `AdjustmentId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemId` int(11) DEFAULT '0',
  `LotNo` varchar(50) DEFAULT NULL,
  `BaleNo` varchar(50) DEFAULT NULL,
  `AdjRate` decimal(15,2) DEFAULT '0.00',
  `AdjQty` decimal(15,3) DEFAULT '0.000',
  `AdjAmount` decimal(15,2) DEFAULT '0.00',
  `UomId` int(11) DEFAULT '0',
  `AdjTypeId` int(11) DEFAULT '0',
  `AdjDate` date DEFAULT NULL,
  `AdjUserId` int(11) DEFAULT '0',
  `AdjcDate` datetime DEFAULT NULL,
  `AdjuDate` datetime DEFAULT NULL,
  PRIMARY KEY (`AdjustmentId`),
  KEY `FK_trn_item_adjustment_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_item_adjustment_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.stock_adjustment: ~9 rows (approximately)
DELETE FROM `stock_adjustment`;
/*!40000 ALTER TABLE `stock_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_adjustment` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_comper
DROP TABLE IF EXISTS `trn_comper`;
CREATE TABLE IF NOT EXISTS `trn_comper` (
  `ComperId` int(11) NOT NULL AUTO_INCREMENT,
  `ComperNo` int(11) NOT NULL DEFAULT '0',
  `ComperDate` date DEFAULT NULL,
  `MixingChartId` int(11) DEFAULT '0',
  `ShiftId` int(11) DEFAULT '0',
  `Emp_Id` int(11) DEFAULT '0',
  `MachineId` int(11) DEFAULT '0',
  `CountsId` int(11) DEFAULT '0',
  `cProdWt` decimal(15,3) DEFAULT '0.000',
  `CottonWasteTypeId` int(11) DEFAULT '0',
  `cWasteWt` decimal(15,3) DEFAULT '0.000',
  `cUserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`ComperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_comper: ~4 rows (approximately)
DELETE FROM `trn_comper`;
/*!40000 ALTER TABLE `trn_comper` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_comper` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_cottoninward
DROP TABLE IF EXISTS `trn_cottoninward`;
CREATE TABLE IF NOT EXISTS `trn_cottoninward` (
  `CiId` int(11) NOT NULL AUTO_INCREMENT,
  `CiNo` int(11) DEFAULT NULL,
  `CiDate` date DEFAULT NULL,
  `SupplierId` int(11) DEFAULT '0',
  `TotalBales` decimal(10,2) DEFAULT '0.00',
  `TotalSupplierWt` decimal(15,3) DEFAULT '0.000',
  `TotalSupplierTareWt` decimal(15,3) DEFAULT '0.000',
  `TotalSupplierNetWt` decimal(15,3) DEFAULT '0.000',
  `SupplierInvoiceAmount` decimal(15,2) DEFAULT '0.00',
  `TotalMillsWt` decimal(15,3) DEFAULT '0.000',
  `TotalMillsTareWt` decimal(15,3) DEFAULT '0.000',
  `TotalMillsNetWt` decimal(15,3) DEFAULT '0.000',
  `BalesRate` decimal(15,2) DEFAULT '0.00',
  `InwardAmount` decimal(15,2) DEFAULT '0.00',
  `LossPer` decimal(15,2) DEFAULT '0.00',
  `DiffAmount` decimal(15,2) DEFAULT '0.00',
  `SupplierLotNo` varchar(150) DEFAULT NULL,
  `MillsLotNo` varchar(150) DEFAULT NULL,
  `cRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  `IsIgstFormat` int(11) DEFAULT '0',
  PRIMARY KEY (`CiId`),
  KEY `FK_trn_cottoninward_mas_supplier` (`SupplierId`),
  KEY `FK_trn_cottoninward_set_users` (`UserId`),
  KEY `FK_trn_cottoninward_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_cottoninward_set_company` (`CompanyId`),
  KEY `CiNo` (`CiNo`),
  CONSTRAINT `FK_trn_cottoninward_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_cottoninward_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_cottoninward_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_cottoninward_set_users` FOREIGN KEY (`UserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_cottoninward: ~11 rows (approximately)
DELETE FROM `trn_cottoninward`;
/*!40000 ALTER TABLE `trn_cottoninward` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_cottoninward` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_cottoninwarddetail
DROP TABLE IF EXISTS `trn_cottoninwarddetail`;
CREATE TABLE IF NOT EXISTS `trn_cottoninwarddetail` (
  `CiDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `CiId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `SupplierBaleNo` varchar(150) DEFAULT NULL,
  `SupplierWt` decimal(10,3) DEFAULT '0.000',
  `MillWt` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`CiDetailId`),
  KEY `FK_trn_cottoninwarddetail_trn_cottoninward` (`CiId`),
  KEY `FK_trn_cottoninwarddetail_mas_item` (`ItemId`),
  KEY `FK_trn_cottoninwarddetail_mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_cottoninwarddetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_cottoninwarddetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_cottoninwarddetail_trn_cottoninward` FOREIGN KEY (`CiId`) REFERENCES `trn_cottoninward` (`CiId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_cottoninwarddetail: ~130 rows (approximately)
DELETE FROM `trn_cottoninwarddetail`;
/*!40000 ALTER TABLE `trn_cottoninwarddetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_cottoninwarddetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_creditnote
DROP TABLE IF EXISTS `trn_creditnote`;
CREATE TABLE IF NOT EXISTS `trn_creditnote` (
  `CreditNoteId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesNo` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `CustomerId` int(11) DEFAULT '0',
  `AgentId` int(11) DEFAULT '0',
  `SalesId` int(11) DEFAULT '0',
  `ShippedId` int(11) DEFAULT '0',
  `TotalQty` decimal(10,2) DEFAULT '0.00',
  `TotalAmount` decimal(15,2) DEFAULT '0.00',
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `BillTotal` decimal(15,2) DEFAULT '0.00',
  `TotalTaxValue` decimal(15,2) DEFAULT '0.00',
  `TotalCgst` decimal(15,2) DEFAULT '0.00',
  `TotalSgst` decimal(15,2) DEFAULT '0.00',
  `TotalIgst` decimal(15,2) DEFAULT '0.00',
  `tTotalAmount` decimal(15,2) DEFAULT '0.00',
  `FreightCharges` decimal(10,2) DEFAULT '0.00',
  `LPCharges` decimal(10,2) DEFAULT '0.00',
  `InsuranceCharges` decimal(10,2) DEFAULT '0.00',
  `OtherCharges` decimal(10,2) DEFAULT '0.00',
  `RoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(10,2) DEFAULT '0.00',
  `SaleRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  `TransportMode` varchar(250) DEFAULT NULL,
  `VehicleNo` varchar(250) DEFAULT NULL,
  `IsIgstFormat` int(1) DEFAULT '0',
  `IsCessTaxCalc` int(1) DEFAULT '0',
  `CessPer` decimal(10,2) DEFAULT '0.00',
  `CessTotal` decimal(15,2) DEFAULT '0.00',
  `nTotal` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`CreditNoteId`),
  KEY `FK_trn_creditnote_mas_customer` (`CustomerId`),
  KEY `FK_trn_creditnote_trn_sales` (`SalesId`),
  KEY `FK_trn_creditnote_set_users` (`UserId`),
  KEY `FK_trn_creditnote_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_creditnote_set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_creditnote_mas_customer` FOREIGN KEY (`CustomerId`) REFERENCES `mas_customer` (`CustomerId`),
  CONSTRAINT `FK_trn_creditnote_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_creditnote_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_creditnote_set_users` FOREIGN KEY (`UserId`) REFERENCES `set_users` (`UserId`),
  CONSTRAINT `FK_trn_creditnote_trn_sales` FOREIGN KEY (`SalesId`) REFERENCES `trn_sales` (`SalesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_creditnote: ~0 rows (approximately)
DELETE FROM `trn_creditnote`;
/*!40000 ALTER TABLE `trn_creditnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_creditnote` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_creditnotedetail
DROP TABLE IF EXISTS `trn_creditnotedetail`;
CREATE TABLE IF NOT EXISTS `trn_creditnotedetail` (
  `CreditNoteDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `CreditNoteId` int(11) DEFAULT '0',
  `SalesDetailId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `Qty` decimal(10,3) DEFAULT '0.000',
  `sQty` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Total` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(10,2) DEFAULT '0.00',
  `SgstValue` decimal(10,2) DEFAULT '0.00',
  `CgstPer` decimal(10,2) DEFAULT '0.00',
  `CgstValue` decimal(10,2) DEFAULT '0.00',
  `IgstPer` decimal(10,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `IsTaxItem` int(1) DEFAULT '0',
  `ItemDescription` text,
  PRIMARY KEY (`CreditNoteDetailId`),
  KEY `FK_trn_creditnotedetail_trn_creditnote` (`CreditNoteId`),
  KEY `FK_trn_creditnotedetail_trn_salesdetail` (`SalesDetailId`),
  KEY `FK_trn_creditnotedetail_mas_item` (`ItemId`),
  KEY `FK_trn_creditnotedetail_mas_uom` (`UomId`),
  KEY `FK_trn_creditnotedetail_mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_creditnotedetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_creditnotedetail_mas_tax` FOREIGN KEY (`TaxId`) REFERENCES `mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_creditnotedetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_creditnotedetail_trn_creditnote` FOREIGN KEY (`CreditNoteId`) REFERENCES `trn_creditnote` (`CreditNoteId`),
  CONSTRAINT `FK_trn_creditnotedetail_trn_salesdetail` FOREIGN KEY (`SalesDetailId`) REFERENCES `trn_salesdetail` (`SalesDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_creditnotedetail: ~0 rows (approximately)
DELETE FROM `trn_creditnotedetail`;
/*!40000 ALTER TABLE `trn_creditnotedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_creditnotedetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_debitnote
DROP TABLE IF EXISTS `trn_debitnote`;
CREATE TABLE IF NOT EXISTS `trn_debitnote` (
  `DebitNoteId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesNo` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `SupplierId` int(11) DEFAULT '0',
  `AgentId` int(11) DEFAULT '0',
  `PurchaseId` int(11) DEFAULT '0',
  `ShippedId` int(11) DEFAULT '0',
  `TotalQty` decimal(10,2) DEFAULT '0.00',
  `TotalAmount` decimal(15,2) DEFAULT '0.00',
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `BillTotal` decimal(15,2) DEFAULT '0.00',
  `TotalTaxValue` decimal(15,2) DEFAULT '0.00',
  `TotalCgst` decimal(15,2) DEFAULT '0.00',
  `TotalSgst` decimal(15,2) DEFAULT '0.00',
  `TotalIgst` decimal(15,2) DEFAULT '0.00',
  `tTotalAmount` decimal(15,2) DEFAULT '0.00',
  `FreightCharges` decimal(10,2) DEFAULT '0.00',
  `LPCharges` decimal(10,2) DEFAULT '0.00',
  `InsuranceCharges` decimal(10,2) DEFAULT '0.00',
  `OtherCharges` decimal(10,2) DEFAULT '0.00',
  `RoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(10,2) DEFAULT '0.00',
  `SaleRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  `TransportMode` varchar(250) DEFAULT NULL,
  `VehicleNo` varchar(250) DEFAULT NULL,
  `IsIgstFormat` int(1) DEFAULT '0',
  `IsCessTaxCalc` int(1) DEFAULT '0',
  `CessPer` decimal(10,2) DEFAULT '0.00',
  `CessTotal` decimal(15,2) DEFAULT '0.00',
  `nTotal` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`DebitNoteId`),
  KEY `FK_trn_debitnote_mas_supplier` (`SupplierId`),
  KEY `FK_trn_debitnote_set_users` (`UserId`),
  KEY `FK_trn_debitnote_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_debitnote_set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_debitnote_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_debitnote_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_debitnote_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_debitnote_set_users` FOREIGN KEY (`UserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_debitnote: ~0 rows (approximately)
DELETE FROM `trn_debitnote`;
/*!40000 ALTER TABLE `trn_debitnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_debitnote` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_debitnotedetail
DROP TABLE IF EXISTS `trn_debitnotedetail`;
CREATE TABLE IF NOT EXISTS `trn_debitnotedetail` (
  `DebitNoteDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `DebitNoteId` int(11) DEFAULT '0',
  `PiDetailId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `Qty` decimal(10,5) DEFAULT '0.00000',
  `sQty` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Total` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(10,2) DEFAULT '0.00',
  `SgstValue` decimal(10,2) DEFAULT '0.00',
  `CgstPer` decimal(10,2) DEFAULT '0.00',
  `CgstValue` decimal(10,2) DEFAULT '0.00',
  `IgstPer` decimal(10,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `IsTaxItem` int(1) DEFAULT '0',
  `ItemDescription` text,
  PRIMARY KEY (`DebitNoteDetailId`),
  KEY `FK_trn_debitnotedetail_trn_debitnote` (`DebitNoteId`),
  KEY `FK_trn_debitnotedetail_mas_item` (`ItemId`),
  KEY `FK_trn_debitnotedetail_mas_uom` (`UomId`),
  KEY `FK_trn_debitnotedetail_mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_debitnotedetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_debitnotedetail_mas_tax` FOREIGN KEY (`TaxId`) REFERENCES `mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_debitnotedetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_debitnotedetail_trn_debitnote` FOREIGN KEY (`DebitNoteId`) REFERENCES `trn_debitnote` (`DebitNoteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_debitnotedetail: ~0 rows (approximately)
DELETE FROM `trn_debitnotedetail`;
/*!40000 ALTER TABLE `trn_debitnotedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_debitnotedetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_deliverychallan
DROP TABLE IF EXISTS `trn_deliverychallan`;
CREATE TABLE IF NOT EXISTS `trn_deliverychallan` (
  `DeliveryChallanId` int(11) NOT NULL AUTO_INCREMENT,
  `DcNo` int(11) DEFAULT '0',
  `DcDate` date DEFAULT NULL,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `TotalBales` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TotalQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DcRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) NOT NULL DEFAULT '0',
  `FinancialYearId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DeliveryChallanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_deliverychallan: ~2 rows (approximately)
DELETE FROM `trn_deliverychallan`;
/*!40000 ALTER TABLE `trn_deliverychallan` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_deliverychallan` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_deliverychallandetail
DROP TABLE IF EXISTS `trn_deliverychallandetail`;
CREATE TABLE IF NOT EXISTS `trn_deliverychallandetail` (
  `DeliveryChallanDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `DeliveryChallanId` int(11) NOT NULL DEFAULT '0',
  `CiDetailId` int(11) NOT NULL DEFAULT '0',
  `CiId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `MillLotNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierBaleNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bUomId` int(11) NOT NULL DEFAULT '0',
  `sUomId` int(11) NOT NULL DEFAULT '0',
  `DcQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `DcRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DcAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`DeliveryChallanDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_deliverychallandetail: ~9 rows (approximately)
DELETE FROM `trn_deliverychallandetail`;
/*!40000 ALTER TABLE `trn_deliverychallandetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_deliverychallandetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_drawing
DROP TABLE IF EXISTS `trn_drawing`;
CREATE TABLE IF NOT EXISTS `trn_drawing` (
  `DrawingId` int(11) NOT NULL AUTO_INCREMENT,
  `DrawingNo` int(11) NOT NULL DEFAULT '0',
  `DrawingDate` date DEFAULT NULL,
  `MixingChartId` int(11) DEFAULT '0',
  `ShiftId` int(11) DEFAULT '0',
  `Emp_Id` int(11) DEFAULT '0',
  `MachineId` int(11) DEFAULT '0',
  `CountsId` int(11) DEFAULT '0',
  `dProdWt` decimal(15,3) DEFAULT '0.000',
  `CottonWasteTypeId` int(11) DEFAULT '0',
  `dWasteWt` decimal(15,3) DEFAULT '0.000',
  `cUserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`DrawingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_drawing: ~9 rows (approximately)
DELETE FROM `trn_drawing`;
/*!40000 ALTER TABLE `trn_drawing` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_drawing` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_expensesentry
DROP TABLE IF EXISTS `trn_expensesentry`;
CREATE TABLE IF NOT EXISTS `trn_expensesentry` (
  `ExpenseId` int(11) NOT NULL AUTO_INCREMENT,
  `ExpenseTypeId` int(11) NOT NULL DEFAULT '0',
  `ExpenseDate` date DEFAULT NULL,
  `MarketingId` int(11) NOT NULL DEFAULT '0',
  `OrderId` int(11) NOT NULL DEFAULT '0',
  `ExpQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `ExpRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ExpenseAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `IsApproved` int(1) NOT NULL DEFAULT '0',
  `aUserId` int(11) NOT NULL DEFAULT '0',
  `aDate` date DEFAULT NULL,
  `aTime` time DEFAULT NULL,
  PRIMARY KEY (`ExpenseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_expensesentry: ~14 rows (approximately)
DELETE FROM `trn_expensesentry`;
/*!40000 ALTER TABLE `trn_expensesentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_expensesentry` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_genpurchaseinward
DROP TABLE IF EXISTS `trn_genpurchaseinward`;
CREATE TABLE IF NOT EXISTS `trn_genpurchaseinward` (
  `PurchaseInwardId` int(11) NOT NULL AUTO_INCREMENT,
  `PiNo` int(11) DEFAULT '0',
  `PiDate` date DEFAULT NULL,
  `SupplierId` int(11) DEFAULT '0',
  `PoId` int(11) DEFAULT '0',
  `SupDcNo` varchar(300) DEFAULT NULL,
  `SupDcDt` varchar(300) DEFAULT NULL,
  `piTotalQty` decimal(15,3) DEFAULT '0.000',
  `piTotalAmount` decimal(15,3) DEFAULT '0.000',
  `CgstAmount` decimal(15,2) DEFAULT '0.00',
  `SgstAmount` decimal(15,2) DEFAULT '0.00',
  `IgstAmount` decimal(15,2) DEFAULT '0.00',
  `piTaxAmount` decimal(15,2) DEFAULT '0.00',
  `piPackingCharge` decimal(15,2) DEFAULT '0.00',
  `piAddAmt` decimal(15,2) DEFAULT '0.00',
  `piLessAmt` decimal(15,2) DEFAULT '0.00',
  `piNetAmount` decimal(15,2) DEFAULT '0.00',
  `piRoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(15,2) DEFAULT '0.00',
  `PiRemarks` text,
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `cUserId` int(11) DEFAULT '0',
  `aDate` date DEFAULT NULL,
  `aTime` time DEFAULT NULL,
  `aUserId` int(11) DEFAULT '0',
  `aRemarks` text,
  `CompanyId` int(11) DEFAULT '0',
  `DepartmentId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  `LinkId` int(11) DEFAULT '1',
  `BillOfEntry` varchar(200) DEFAULT NULL,
  `PortCode` varchar(200) DEFAULT NULL,
  `BlNo` varchar(200) DEFAULT NULL,
  `PortOfOrgin` varchar(200) DEFAULT NULL,
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `TotalAfterDiscount` decimal(15,2) DEFAULT '0.00',
  `CashOrCredit` int(1) DEFAULT '2',
  PRIMARY KEY (`PurchaseInwardId`),
  KEY `FK_trn_genpurchaseinward_mas_supplier` (`SupplierId`),
  KEY `FK_trn_genpurchaseinward_set_company` (`CompanyId`),
  KEY `FK_trn_genpurchaseinward_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_genpurchaseinward_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_genpurchaseinward_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_genpurchaseinward_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_genpurchaseinward: ~17 rows (approximately)
DELETE FROM `trn_genpurchaseinward`;
/*!40000 ALTER TABLE `trn_genpurchaseinward` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_genpurchaseinward` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_genpurchaseinwarddetail
DROP TABLE IF EXISTS `trn_genpurchaseinwarddetail`;
CREATE TABLE IF NOT EXISTS `trn_genpurchaseinwarddetail` (
  `PurchaseInwardDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `PurchaseInwardId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `bUomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `piQty` decimal(15,3) DEFAULT '0.000',
  `piRate` decimal(15,3) DEFAULT '0.000',
  `piAmount` decimal(15,3) DEFAULT '0.000',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(15,2) DEFAULT '0.00',
  `SgstValue` decimal(15,2) DEFAULT '0.00',
  `CgstPer` decimal(15,2) DEFAULT '0.00',
  `CgstValue` decimal(15,2) DEFAULT '0.00',
  `IgstPer` decimal(15,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `DiscountAfter` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  PRIMARY KEY (`PurchaseInwardDetailId`),
  KEY `FK_trn_genpurchaseinwarddetail_trn_genpurchaseinward` (`PurchaseInwardId`),
  KEY `FK_trn_genpurchaseinwarddetail_mas_item` (`ItemId`),
  KEY `FK_trn_genpurchaseinwarddetail_mas_uom_b` (`bUomId`),
  KEY `FK_trn_genpurchaseinwarddetail_mas_uom_s` (`sUomId`),
  CONSTRAINT `FK_trn_genpurchaseinwarddetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_genpurchaseinwarddetail_mas_uom_b` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_genpurchaseinwarddetail_mas_uom_s` FOREIGN KEY (`sUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_genpurchaseinwarddetail_trn_genpurchaseinward` FOREIGN KEY (`PurchaseInwardId`) REFERENCES `trn_genpurchaseinward` (`PurchaseInwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_genpurchaseinwarddetail: ~17 rows (approximately)
DELETE FROM `trn_genpurchaseinwarddetail`;
/*!40000 ALTER TABLE `trn_genpurchaseinwarddetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_genpurchaseinwarddetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_jobworkreturn
DROP TABLE IF EXISTS `trn_jobworkreturn`;
CREATE TABLE IF NOT EXISTS `trn_jobworkreturn` (
  `JobWorkReturnId` int(11) NOT NULL AUTO_INCREMENT,
  `ReturnNo` int(11) DEFAULT '0',
  `ReturnDate` date DEFAULT NULL,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `TotalQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalBales` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `retRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) NOT NULL DEFAULT '0',
  `FinancialYearId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JobWorkReturnId`),
  KEY `FK_trn_jobworkreturn_mas_supplier` (`SupplierId`),
  KEY `FK_trn_jobworkreturn_set_company` (`CompanyId`),
  KEY `FK_trn_jobworkreturn_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_jobworkreturn_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_jobworkreturn_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_jobworkreturn_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_jobworkreturn: ~2 rows (approximately)
DELETE FROM `trn_jobworkreturn`;
/*!40000 ALTER TABLE `trn_jobworkreturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_jobworkreturn` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_jobworkreturndetail
DROP TABLE IF EXISTS `trn_jobworkreturndetail`;
CREATE TABLE IF NOT EXISTS `trn_jobworkreturndetail` (
  `JobWorkReturnDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `JobWorkReturnId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `MillLotNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierBaleNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bUomId` int(11) NOT NULL DEFAULT '0',
  `sUomId` int(11) NOT NULL DEFAULT '0',
  `RetQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `RetRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `RetAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`JobWorkReturnDetailId`),
  KEY `FK_trn_jobworkreturndetail_trn_jobworkreturn` (`JobWorkReturnId`),
  KEY `FK_trn_jobworkreturndetail_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_jobworkreturndetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_jobworkreturndetail_trn_jobworkreturn` FOREIGN KEY (`JobWorkReturnId`) REFERENCES `trn_jobworkreturn` (`JobWorkReturnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_jobworkreturndetail: ~2 rows (approximately)
DELETE FROM `trn_jobworkreturndetail`;
/*!40000 ALTER TABLE `trn_jobworkreturndetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_jobworkreturndetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_mixingchart
DROP TABLE IF EXISTS `trn_mixingchart`;
CREATE TABLE IF NOT EXISTS `trn_mixingchart` (
  `MixingChartId` int(11) NOT NULL AUTO_INCREMENT,
  `MixingChartNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MixingChartDate` date DEFAULT NULL,
  `SupervisorId` int(11) DEFAULT '0',
  `MixingQty` decimal(10,3) NOT NULL DEFAULT '0.000',
  `TotalBales` decimal(10,2) DEFAULT '0.00',
  `TotalIssueWt` decimal(15,3) DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `MixingChartRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`MixingChartId`),
  KEY `MixingChartNo` (`MixingChartNo`),
  KEY `FK_trn_mixingchart_set_users` (`cUserId`),
  KEY `FK_trn_mixingchart_set_company` (`CompanyId`),
  KEY `FK_trn_mixingchart_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_mixingchart_mas_employee` (`SupervisorId`),
  CONSTRAINT `FK_trn_mixingchart_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_mixingchart_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_mixingchart_set_users` FOREIGN KEY (`cUserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_mixingchart: ~2 rows (approximately)
DELETE FROM `trn_mixingchart`;
/*!40000 ALTER TABLE `trn_mixingchart` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_mixingchart` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_mixingchartdetail
DROP TABLE IF EXISTS `trn_mixingchartdetail`;
CREATE TABLE IF NOT EXISTS `trn_mixingchartdetail` (
  `MixingChartDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `MixingChartId` int(11) DEFAULT '0',
  `CiDetailId` int(11) DEFAULT '0',
  `CiId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `SupplierBaleNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT '0',
  `MillLotNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT '0',
  `IssueWt` decimal(15,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `Rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `Amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`MixingChartDetailId`),
  KEY `FK_trn_mixingchartdetail_trn_mixingchart` (`MixingChartId`),
  KEY `FK_trn_mixingchartdetail_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_mixingchartdetail_trn_mixingchart` FOREIGN KEY (`MixingChartId`) REFERENCES `trn_mixingchart` (`MixingChartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_mixingchartdetail: ~2 rows (approximately)
DELETE FROM `trn_mixingchartdetail`;
/*!40000 ALTER TABLE `trn_mixingchartdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_mixingchartdetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_mixingissue
DROP TABLE IF EXISTS `trn_mixingissue`;
CREATE TABLE IF NOT EXISTS `trn_mixingissue` (
  `MixingIssueId` int(11) NOT NULL AUTO_INCREMENT,
  `MixingChartId` int(11) DEFAULT '0',
  `EmployeeId` int(11) DEFAULT '0',
  `MixingIssueNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MixingIssueDate` date DEFAULT NULL,
  `TotalBales` decimal(10,2) DEFAULT '0.00',
  `TotalIssueWt` decimal(15,3) DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `MixingIssueRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`MixingIssueId`),
  KEY `FK_trn_mixingissue_trn_mixingchart` (`MixingChartId`),
  KEY `FK_trn_mixingissue_set_company` (`CompanyId`),
  KEY `FK_trn_mixingissue_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_mixingissue_set_users` (`cUserId`),
  KEY `FK_trn_mixingissue_mas_employee` (`EmployeeId`),
  CONSTRAINT `FK_trn_mixingissue_mas_employee` FOREIGN KEY (`EmployeeId`) REFERENCES `mas_employee` (`Emp_Id`),
  CONSTRAINT `FK_trn_mixingissue_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_mixingissue_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_mixingissue_set_users` FOREIGN KEY (`cUserId`) REFERENCES `set_users` (`UserId`),
  CONSTRAINT `FK_trn_mixingissue_trn_mixingchart` FOREIGN KEY (`MixingChartId`) REFERENCES `trn_mixingchart` (`MixingChartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_mixingissue: ~14 rows (approximately)
DELETE FROM `trn_mixingissue`;
/*!40000 ALTER TABLE `trn_mixingissue` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_mixingissue` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_mixingissuedetail
DROP TABLE IF EXISTS `trn_mixingissuedetail`;
CREATE TABLE IF NOT EXISTS `trn_mixingissuedetail` (
  `MixingIssueDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `MixingIssueId` int(11) DEFAULT '0',
  `MixingChartDetailId` int(11) DEFAULT '0',
  `MixingChartId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `SupplierBaleNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT '0',
  `MillLotNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT '0',
  `IssueWt` decimal(15,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `Rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `Amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`MixingIssueDetailId`),
  KEY `FK_trn_mixingissuedetail_trn_mixingissue` (`MixingIssueId`),
  CONSTRAINT `FK_trn_mixingissuedetail_trn_mixingissue` FOREIGN KEY (`MixingIssueId`) REFERENCES `trn_mixingissue` (`MixingIssueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_mixingissuedetail: ~20 rows (approximately)
DELETE FROM `trn_mixingissuedetail`;
/*!40000 ALTER TABLE `trn_mixingissuedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_mixingissuedetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_production
DROP TABLE IF EXISTS `trn_production`;
CREATE TABLE IF NOT EXISTS `trn_production` (
  `ProId` int(11) NOT NULL AUTO_INCREMENT,
  `MixingChartId` int(11) DEFAULT '0',
  `ProNo` varchar(50) DEFAULT NULL,
  `ProDate` date DEFAULT NULL,
  `TotalQty` decimal(10,2) DEFAULT '0.00',
  `GrandTotal` decimal(10,2) DEFAULT '0.00',
  `ProRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  PRIMARY KEY (`ProId`),
  KEY `FK_trn_production_trn_mixingchart` (`MixingChartId`),
  CONSTRAINT `FK_trn_production_trn_mixingchart` FOREIGN KEY (`MixingChartId`) REFERENCES `trn_mixingchart` (`MixingChartId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_production: ~3 rows (approximately)
DELETE FROM `trn_production`;
/*!40000 ALTER TABLE `trn_production` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_production` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_productiondetail
DROP TABLE IF EXISTS `trn_productiondetail`;
CREATE TABLE IF NOT EXISTS `trn_productiondetail` (
  `ProDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `ProId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `Qty` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Total` decimal(15,2) DEFAULT '0.00',
  `LotNo` varchar(50) DEFAULT 'NULL',
  PRIMARY KEY (`ProDetailId`),
  KEY `FK_trn_productiondetail_trn_production` (`ProId`),
  KEY `FK_trn_productiondetail_mas_uom` (`UomId`),
  KEY `FK_trn_productiondetail_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_productiondetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_productiondetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_productiondetail_trn_production` FOREIGN KEY (`ProId`) REFERENCES `trn_production` (`ProId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_productiondetail: ~3 rows (approximately)
DELETE FROM `trn_productiondetail`;
/*!40000 ALTER TABLE `trn_productiondetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_productiondetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_purchaseinward
DROP TABLE IF EXISTS `trn_purchaseinward`;
CREATE TABLE IF NOT EXISTS `trn_purchaseinward` (
  `PurchaseInwardId` int(11) NOT NULL AUTO_INCREMENT,
  `PiNo` int(11) DEFAULT '0',
  `PiDate` date DEFAULT NULL,
  `SupplierId` int(11) DEFAULT '0',
  `PoId` int(11) DEFAULT '0',
  `SupDcNo` varchar(300) DEFAULT NULL,
  `SupDcDt` varchar(300) DEFAULT NULL,
  `DocNo` varchar(200) DEFAULT NULL,
  `DocDate` varchar(100) DEFAULT NULL,
  `piTotalQty` decimal(15,3) DEFAULT '0.000',
  `piTotalAmount` decimal(15,2) DEFAULT '0.00',
  `CgstAmount` decimal(15,2) DEFAULT '0.00',
  `SgstAmount` decimal(15,2) DEFAULT '0.00',
  `IgstAmount` decimal(15,2) DEFAULT '0.00',
  `piTaxAmount` decimal(15,2) DEFAULT '0.00',
  `piPackingCharge` decimal(15,2) DEFAULT '0.00',
  `piAddAmt` decimal(15,2) DEFAULT '0.00',
  `piLessAmt` decimal(15,2) DEFAULT '0.00',
  `piNetAmount` decimal(15,2) DEFAULT '0.00',
  `piRoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(15,2) DEFAULT '0.00',
  `PiRemarks` text,
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `cUserId` int(11) DEFAULT '0',
  `aDate` date DEFAULT NULL,
  `aTime` time DEFAULT NULL,
  `aUserId` int(11) DEFAULT '0',
  `aRemarks` text,
  `CompanyId` int(11) DEFAULT '0',
  `DepartmentId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  `LinkId` int(11) DEFAULT '2',
  `BillOfEntry` varchar(200) DEFAULT NULL,
  `PortCode` varchar(200) DEFAULT NULL,
  `BlNo` varchar(200) DEFAULT NULL,
  `PortOfOrgin` varchar(200) DEFAULT NULL,
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `TotalAfterDiscount` decimal(15,2) DEFAULT '0.00',
  `CashOrCredit` int(1) DEFAULT '2',
  PRIMARY KEY (`PurchaseInwardId`),
  KEY `FK_trn_purchaseinward_mas_supplier` (`SupplierId`),
  KEY `FK_trn_purchaseinward_set_company` (`CompanyId`),
  KEY `FK_trn_purchaseinward_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_purchaseinward_mas_department` (`DepartmentId`),
  CONSTRAINT `FK_trn_purchaseinward_mas_department` FOREIGN KEY (`DepartmentId`) REFERENCES `mas_department` (`DepartmentId`),
  CONSTRAINT `FK_trn_purchaseinward_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_purchaseinward_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_purchaseinward_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_purchaseinward: ~573 rows (approximately)
DELETE FROM `trn_purchaseinward`;
/*!40000 ALTER TABLE `trn_purchaseinward` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_purchaseinward` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_purchaseinwarddetail
DROP TABLE IF EXISTS `trn_purchaseinwarddetail`;
CREATE TABLE IF NOT EXISTS `trn_purchaseinwarddetail` (
  `PurchaseInwardDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `PurchaseInwardId` int(11) DEFAULT '0',
  `PodId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `bUomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `piQty` decimal(15,3) DEFAULT '0.000',
  `piRate` decimal(15,2) DEFAULT '0.00',
  `piAmount` decimal(15,2) DEFAULT '0.00',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(15,2) DEFAULT '0.00',
  `SgstValue` decimal(15,2) DEFAULT '0.00',
  `CgstPer` decimal(15,2) DEFAULT '0.00',
  `CgstValue` decimal(15,2) DEFAULT '0.00',
  `IgstPer` decimal(15,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `DiscountAfter` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  `IsOtherItem` int(1) DEFAULT '0',
  PRIMARY KEY (`PurchaseInwardDetailId`),
  KEY `FK_trn_pidd_trn_pod` (`PurchaseInwardId`),
  KEY `FK_trn_pidd_mas_item` (`ItemId`),
  KEY `FK_trn_pidd_mas_uom_b` (`bUomId`),
  KEY `FK_trn_pidd_mas_uom_s` (`sUomId`),
  CONSTRAINT `FK_trn_pidd_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_pidd_mas_uom_b` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_pidd_mas_uom_s` FOREIGN KEY (`sUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_pidd_trn_pod` FOREIGN KEY (`PurchaseInwardId`) REFERENCES `trn_purchaseinward` (`PurchaseInwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_purchaseinwarddetail: ~1,086 rows (approximately)
DELETE FROM `trn_purchaseinwarddetail`;
/*!40000 ALTER TABLE `trn_purchaseinwarddetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_purchaseinwarddetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_purchaseorder
DROP TABLE IF EXISTS `trn_purchaseorder`;
CREATE TABLE IF NOT EXISTS `trn_purchaseorder` (
  `PoId` int(11) NOT NULL AUTO_INCREMENT,
  `PoNo` int(11) DEFAULT '0',
  `PoDate` date DEFAULT NULL,
  `SupplierId` int(11) DEFAULT '0',
  `poTotalQty` decimal(15,3) DEFAULT '0.000',
  `poTotalAmount` decimal(15,3) DEFAULT '0.000',
  `CgstAmount` decimal(15,2) DEFAULT '0.00',
  `SgstAmount` decimal(15,2) DEFAULT '0.00',
  `IgstAmount` decimal(15,2) DEFAULT '0.00',
  `piTaxAmount` decimal(15,2) DEFAULT '0.00',
  `piPackingCharge` decimal(15,2) DEFAULT '0.00',
  `piAddAmt` decimal(15,2) DEFAULT '0.00',
  `piLessAmt` decimal(15,2) DEFAULT '0.00',
  `piNetAmount` decimal(15,2) DEFAULT '0.00',
  `piRoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(15,2) DEFAULT '0.00',
  `PoRemarks` text,
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `cUserId` int(11) DEFAULT '0',
  `aStatusId` int(11) DEFAULT '0',
  `aDate` date DEFAULT NULL,
  `aTime` time DEFAULT NULL,
  `aUserId` int(11) DEFAULT '0',
  `aRemarks` text,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  `IsCompleted` int(1) DEFAULT '0',
  `DeliveryDate` date DEFAULT NULL,
  `PayTerms` text,
  `TaxPatternId` int(11) DEFAULT '0',
  `TransportMode` text,
  `Guarantee` text,
  `DeliverySchedule` text,
  `DeliveryPoint` text,
  `RefNo` varchar(50) DEFAULT NULL,
  `RefDate` date DEFAULT NULL,
  PRIMARY KEY (`PoId`),
  KEY `FK_trn_purchaseorder_mas_supplier` (`SupplierId`),
  KEY `FK_trn_purchaseorder_set_users` (`cUserId`),
  KEY `FK_trn_purchaseorder_set_company` (`CompanyId`),
  KEY `FK_trn_purchaseorder_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_purchaseorder_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_purchaseorder_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_purchaseorder_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_purchaseorder_set_users` FOREIGN KEY (`cUserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_purchaseorder: ~533 rows (approximately)
DELETE FROM `trn_purchaseorder`;
/*!40000 ALTER TABLE `trn_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_purchaseorder` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_purchaseorderdetail
DROP TABLE IF EXISTS `trn_purchaseorderdetail`;
CREATE TABLE IF NOT EXISTS `trn_purchaseorderdetail` (
  `PodId` int(11) NOT NULL AUTO_INCREMENT,
  `PoId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `bUomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `poQty` decimal(15,3) DEFAULT '0.000',
  `poRate` decimal(15,3) DEFAULT '0.000',
  `poAmount` decimal(15,3) DEFAULT '0.000',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(15,2) DEFAULT '0.00',
  `SgstValue` decimal(15,2) DEFAULT '0.00',
  `CgstPer` decimal(15,2) DEFAULT '0.00',
  `CgstValue` decimal(15,2) DEFAULT '0.00',
  `IgstPer` decimal(15,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  PRIMARY KEY (`PodId`),
  KEY `FK_trn_pod_trn_pod` (`PoId`),
  KEY `FK_trn_pod_mas_item` (`ItemId`),
  KEY `FK_trn_pod_mas_uom_b` (`bUomId`),
  KEY `FK_trn_pod_mas_uom_s` (`sUomId`),
  CONSTRAINT `FK_trn_pod_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_pod_mas_uom_b` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_pod_mas_uom_s` FOREIGN KEY (`sUomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_pod_trn_pod` FOREIGN KEY (`PoId`) REFERENCES `trn_purchaseorder` (`PoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_purchaseorderdetail: ~986 rows (approximately)
DELETE FROM `trn_purchaseorderdetail`;
/*!40000 ALTER TABLE `trn_purchaseorderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_purchaseorderdetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_sales
DROP TABLE IF EXISTS `trn_sales`;
CREATE TABLE IF NOT EXISTS `trn_sales` (
  `SalesId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesNo` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `CustomerId` int(11) DEFAULT '0',
  `SalesOrderId` int(11) DEFAULT '0',
  `AgentId` int(11) DEFAULT '0',
  `ShippedId` int(11) DEFAULT '0',
  `TotalQty` decimal(10,2) DEFAULT '0.00',
  `TotalAmount` decimal(15,2) DEFAULT '0.00',
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `BillTotal` decimal(15,2) DEFAULT '0.00',
  `TotalTaxValue` decimal(15,2) DEFAULT '0.00',
  `TotalItemTaxValue` decimal(15,2) DEFAULT '0.00',
  `TotalCgst` decimal(15,2) DEFAULT '0.00',
  `TotalSgst` decimal(15,2) DEFAULT '0.00',
  `TotalIgst` decimal(15,2) DEFAULT '0.00',
  `tTotalAmount` decimal(15,2) DEFAULT '0.00',
  `FreightCharges` decimal(10,2) DEFAULT '0.00',
  `LPCharges` decimal(10,2) DEFAULT '0.00',
  `InsuranceCharges` decimal(10,2) DEFAULT '0.00',
  `OtherCharges` decimal(10,2) DEFAULT '0.00',
  `RoundOff` decimal(15,2) DEFAULT '0.00',
  `GrandTotal` decimal(10,2) DEFAULT '0.00',
  `SaleRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  `TransportMode` varchar(250) DEFAULT NULL,
  `VehicleNo` varchar(250) DEFAULT NULL,
  `IsIgstFormat` int(1) DEFAULT '0',
  `IsCessTaxCalc` int(1) DEFAULT '0',
  `CessPer` decimal(10,2) DEFAULT '0.00',
  `CessTotal` decimal(15,2) DEFAULT '0.00',
  `nTotal` decimal(15,2) DEFAULT '0.00',
  `cPermitNo` varchar(200) DEFAULT '0',
  PRIMARY KEY (`SalesId`),
  KEY `FK_trn_sales_mas_customer` (`CustomerId`),
  KEY `FK_trn_sales_set_users` (`UserId`),
  KEY `FK_trn_sales_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_sales_set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_sales_mas_customer` FOREIGN KEY (`CustomerId`) REFERENCES `mas_customer` (`CustomerId`),
  CONSTRAINT `FK_trn_sales_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_sales_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_sales_set_users` FOREIGN KEY (`UserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_sales: ~1,181 rows (approximately)
DELETE FROM `trn_sales`;
/*!40000 ALTER TABLE `trn_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_sales` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_salesdetail
DROP TABLE IF EXISTS `trn_salesdetail`;
CREATE TABLE IF NOT EXISTS `trn_salesdetail` (
  `SalesDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesId` int(11) DEFAULT '0',
  `SalesOrderDetailId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `Qty` decimal(10,3) DEFAULT '0.000',
  `sQty` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Total` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(10,2) DEFAULT '0.00',
  `SgstValue` decimal(10,2) DEFAULT '0.00',
  `CgstPer` decimal(10,2) DEFAULT '0.00',
  `CgstValue` decimal(10,2) DEFAULT '0.00',
  `IgstPer` decimal(10,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `IsTaxItem` int(1) DEFAULT '0',
  `ItemDescription` text,
  PRIMARY KEY (`SalesDetailId`),
  KEY `FK_trn_salesdetail_trn_sales` (`SalesId`),
  KEY `FK_trn_salesdetail_mas_uom` (`UomId`),
  KEY `FK_trn_salesdetail_mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_salesdetail_mas_tax` FOREIGN KEY (`TaxId`) REFERENCES `mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_salesdetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_salesdetail_trn_sales` FOREIGN KEY (`SalesId`) REFERENCES `trn_sales` (`SalesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_salesdetail: ~3,246 rows (approximately)
DELETE FROM `trn_salesdetail`;
/*!40000 ALTER TABLE `trn_salesdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_salesdetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_salesorder
DROP TABLE IF EXISTS `trn_salesorder`;
CREATE TABLE IF NOT EXISTS `trn_salesorder` (
  `SalesOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesOrderNo` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `CustomerId` int(11) DEFAULT '0',
  `AgentId` int(11) DEFAULT '0',
  `ShippedId` int(11) DEFAULT '0',
  `TotalQty` decimal(10,2) DEFAULT '0.00',
  `TotalAmount` decimal(15,2) DEFAULT '0.00',
  `TotalDiscount` decimal(15,2) DEFAULT '0.00',
  `BillTotal` decimal(15,2) DEFAULT '0.00',
  `TotalTaxValue` decimal(15,2) DEFAULT '0.00',
  `TotalIgst` decimal(15,2) DEFAULT '0.00',
  `TotalCgst` decimal(15,2) DEFAULT '0.00',
  `TotalSgst` decimal(15,2) DEFAULT '0.00',
  `FreightCharges` decimal(10,2) DEFAULT '0.00',
  `LPCharges` decimal(10,2) DEFAULT '0.00',
  `InsuranceCharges` decimal(10,2) DEFAULT '0.00',
  `OtherCharges` decimal(10,2) DEFAULT '0.00',
  `RoundOff` decimal(15,2) DEFAULT '0.00',
  `SaleRemarks` text,
  `UserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `FinancialYearId` int(11) DEFAULT '0',
  `CompanyId` int(11) DEFAULT '0',
  `IsOpenable` int(1) DEFAULT '0',
  `TransportMode` varchar(250) DEFAULT NULL,
  `VehicleNo` varchar(250) DEFAULT NULL,
  `IsIgstFormat` int(1) DEFAULT '0',
  `IsCessTaxCalc` int(1) DEFAULT '0',
  `CessPer` decimal(10,2) DEFAULT '0.00',
  `CessTotal` decimal(15,2) DEFAULT '0.00',
  `nTotal` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`SalesOrderId`),
  KEY `FK_trn_salesorder_mas_customer` (`CustomerId`),
  KEY `FK_trn_salesorder_set_users` (`UserId`),
  KEY `FK_trn_salesorder_set_financialyear` (`FinancialYearId`),
  KEY `FK_trn_salesorder_set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_salesorder_mas_customer` FOREIGN KEY (`CustomerId`) REFERENCES `mas_customer` (`CustomerId`),
  CONSTRAINT `FK_trn_salesorder_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_salesorder_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_salesorder_set_users` FOREIGN KEY (`UserId`) REFERENCES `set_users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_salesorder: ~311 rows (approximately)
DELETE FROM `trn_salesorder`;
/*!40000 ALTER TABLE `trn_salesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_salesorder` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_salesorderdetail
DROP TABLE IF EXISTS `trn_salesorderdetail`;
CREATE TABLE IF NOT EXISTS `trn_salesorderdetail` (
  `SalesOrderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `SalesOrderId` int(11) DEFAULT '0',
  `ItemId` int(11) DEFAULT '0',
  `Qty` decimal(10,3) DEFAULT '0.000',
  `sQty` decimal(10,3) DEFAULT '0.000',
  `UomId` int(11) DEFAULT '0',
  `sUomId` int(11) DEFAULT '0',
  `Rate` decimal(10,2) DEFAULT '0.00',
  `Total` decimal(15,2) DEFAULT '0.00',
  `Discount` decimal(15,2) DEFAULT '0.00',
  `TaxableValue` decimal(15,2) DEFAULT '0.00',
  `TaxId` int(11) DEFAULT '0',
  `SgstPer` decimal(10,2) DEFAULT '0.00',
  `SgstValue` decimal(10,2) DEFAULT '0.00',
  `CgstPer` decimal(10,2) DEFAULT '0.00',
  `CgstValue` decimal(10,2) DEFAULT '0.00',
  `IgstPer` decimal(10,2) DEFAULT '0.00',
  `IgstValue` decimal(15,2) DEFAULT '0.00',
  `IsTaxable` int(1) DEFAULT '0',
  `ItemTotalAmount` decimal(15,2) DEFAULT '0.00',
  `IsTaxItem` int(1) DEFAULT '0',
  `ItemDescription` text,
  PRIMARY KEY (`SalesOrderDetailId`),
  KEY `FK_trn_salesorderdetail_trn_salesorder` (`SalesOrderId`),
  KEY `FK_trn_salesorderdetail_mas_uom` (`UomId`),
  KEY `FK_trn_salesorderdetail_mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_salesorderdetail_mas_tax` FOREIGN KEY (`TaxId`) REFERENCES `mas_tax` (`TaxId`),
  CONSTRAINT `FK_trn_salesorderdetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_salesorderdetail_trn_salesorder` FOREIGN KEY (`SalesOrderId`) REFERENCES `trn_salesorder` (`SalesOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_salesorderdetail: ~335 rows (approximately)
DELETE FROM `trn_salesorderdetail`;
/*!40000 ALTER TABLE `trn_salesorderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_salesorderdetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_simplex
DROP TABLE IF EXISTS `trn_simplex`;
CREATE TABLE IF NOT EXISTS `trn_simplex` (
  `SimplexId` int(11) NOT NULL AUTO_INCREMENT,
  `SimplexNo` int(11) NOT NULL DEFAULT '0',
  `SimplexDate` date DEFAULT NULL,
  `MixingChartId` int(11) DEFAULT '0',
  `ShiftId` int(11) DEFAULT '0',
  `Emp_Id` int(11) DEFAULT '0',
  `MachineId` int(11) DEFAULT '0',
  `CountsId` int(11) DEFAULT '0',
  `sProdWt` decimal(15,3) DEFAULT '0.000',
  `CottonWasteTypeId` int(11) DEFAULT '0',
  `sWasteWt` decimal(15,3) DEFAULT '0.000',
  `cUserId` int(11) DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`SimplexId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_simplex: ~4 rows (approximately)
DELETE FROM `trn_simplex`;
/*!40000 ALTER TABLE `trn_simplex` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_simplex` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_spinning
DROP TABLE IF EXISTS `trn_spinning`;
CREATE TABLE IF NOT EXISTS `trn_spinning` (
  `SpinningId` int(11) NOT NULL AUTO_INCREMENT,
  `ShiftId` int(11) NOT NULL DEFAULT '0',
  `MachineId` int(11) NOT NULL DEFAULT '0',
  `EmpCode` int(11) NOT NULL DEFAULT '0',
  `CountsId` int(11) NOT NULL DEFAULT '0',
  `AverageSpeed` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ActualHunk` decimal(15,2) NOT NULL DEFAULT '0.00',
  `WastageKg` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DoffValue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DoffTime` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TotalStopageTime` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) DEFAULT '0',
  `FinancialYearId` int(11) DEFAULT '0',
  PRIMARY KEY (`SpinningId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_spinning: ~0 rows (approximately)
DELETE FROM `trn_spinning`;
/*!40000 ALTER TABLE `trn_spinning` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_spinning` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_spinningstopage
DROP TABLE IF EXISTS `trn_spinningstopage`;
CREATE TABLE IF NOT EXISTS `trn_spinningstopage` (
  `SpinningStopageId` int(11) NOT NULL AUTO_INCREMENT,
  `SpinningId` int(11) NOT NULL DEFAULT '0',
  `ErrorId` int(11) NOT NULL DEFAULT '0',
  `StopageTime` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`SpinningStopageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jegan_spinning_erp.trn_spinningstopage: ~0 rows (approximately)
DELETE FROM `trn_spinningstopage`;
/*!40000 ALTER TABLE `trn_spinningstopage` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_spinningstopage` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_supplierpgmplan
DROP TABLE IF EXISTS `trn_supplierpgmplan`;
CREATE TABLE IF NOT EXISTS `trn_supplierpgmplan` (
  `SupplierPgmPlanId` int(11) NOT NULL AUTO_INCREMENT,
  `PgmNo` int(11) DEFAULT '0',
  `PgmDate` date DEFAULT NULL,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `UomId` int(11) NOT NULL DEFAULT '0',
  `ReqPgmQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalBales` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TotalQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `PgmRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) NOT NULL DEFAULT '0',
  `FinancialYearId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SupplierPgmPlanId`),
  KEY `FK_trn_supplierpgmplan_mas_supplier` (`SupplierId`),
  KEY `FK_trn_supplierpgmplan_mas_item` (`ItemId`),
  KEY `FK_trn_supplierpgmplan_set_company` (`CompanyId`),
  KEY `FK_trn_supplierpgmplan_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_supplierpgmplan_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_supplierpgmplan_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_supplierpgmplan_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_supplierpgmplan_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_supplierpgmplan: ~3 rows (approximately)
DELETE FROM `trn_supplierpgmplan`;
/*!40000 ALTER TABLE `trn_supplierpgmplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_supplierpgmplan` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_supplierpgmplandetail
DROP TABLE IF EXISTS `trn_supplierpgmplandetail`;
CREATE TABLE IF NOT EXISTS `trn_supplierpgmplandetail` (
  `SupplierPgmPlanDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierPgmPlanId` int(11) NOT NULL DEFAULT '0',
  `CiDetailId` int(11) NOT NULL DEFAULT '0',
  `CiId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `MillLotNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierBaleNo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bUomId` int(11) NOT NULL DEFAULT '0',
  `sUomId` int(11) NOT NULL DEFAULT '0',
  `PgmQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `PgmRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `PgmAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`SupplierPgmPlanDetailId`),
  KEY `FK_trn_supplierpgmplandetail_trn_cottoninwarddetail` (`CiDetailId`),
  KEY `FK_trn_supplierpgmplandetail_trn_cottoninward` (`CiId`),
  KEY `FK_trn_supplierpgmplandetail_mas_item` (`ItemId`),
  KEY `FK_trn_supplierpgmplandetail_trn_supplierpgmplan` (`SupplierPgmPlanId`),
  CONSTRAINT `FK_trn_supplierpgmplandetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_supplierpgmplandetail_trn_cottoninward` FOREIGN KEY (`CiId`) REFERENCES `trn_cottoninward` (`CiId`),
  CONSTRAINT `FK_trn_supplierpgmplandetail_trn_cottoninwarddetail` FOREIGN KEY (`CiDetailId`) REFERENCES `trn_cottoninwarddetail` (`CiDetailId`),
  CONSTRAINT `FK_trn_supplierpgmplandetail_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_supplierpgmplandetail: ~5 rows (approximately)
DELETE FROM `trn_supplierpgmplandetail`;
/*!40000 ALTER TABLE `trn_supplierpgmplandetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_supplierpgmplandetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_wastecottonreceipt
DROP TABLE IF EXISTS `trn_wastecottonreceipt`;
CREATE TABLE IF NOT EXISTS `trn_wastecottonreceipt` (
  `WasteCottonReceiptId` int(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` int(11) DEFAULT '0',
  `ReceiptDate` date DEFAULT NULL,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanId` int(11) NOT NULL DEFAULT '0',
  `TotalQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `trnRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) NOT NULL DEFAULT '0',
  `FinancialYearId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`WasteCottonReceiptId`),
  KEY `FK_trn_wastecottonreceipt_mas_supplier` (`SupplierId`),
  KEY `FK_trn_wastecottonreceipt_trn_supplierpgmplan` (`SupplierPgmPlanId`),
  KEY `FK_trn_wastecottonreceipt_set_company` (`CompanyId`),
  KEY `FK_trn_wastecottonreceipt_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_wastecottonreceipt_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_wastecottonreceipt_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_wastecottonreceipt_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_wastecottonreceipt_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_wastecottonreceipt: ~2 rows (approximately)
DELETE FROM `trn_wastecottonreceipt`;
/*!40000 ALTER TABLE `trn_wastecottonreceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_wastecottonreceipt` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_wastecottonreceiptdetail
DROP TABLE IF EXISTS `trn_wastecottonreceiptdetail`;
CREATE TABLE IF NOT EXISTS `trn_wastecottonreceiptdetail` (
  `WasteCottonReceiptDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `WasteCottonReceiptId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `bUomId` int(11) NOT NULL DEFAULT '0',
  `sUomId` int(11) NOT NULL DEFAULT '0',
  `ReceiptQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `ReceiptRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ReceiptAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`WasteCottonReceiptDetailId`),
  KEY `FK_trn_wastecottonreceiptdetail_trn_yarnreceipt` (`WasteCottonReceiptId`),
  KEY `FK_trn_wastecottonreceiptdetail_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_wastecottonreceiptdetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_wastecottonreceiptdetail_trn_yarnreceipt` FOREIGN KEY (`WasteCottonReceiptId`) REFERENCES `trn_wastecottonreceipt` (`WasteCottonReceiptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_wastecottonreceiptdetail: ~2 rows (approximately)
DELETE FROM `trn_wastecottonreceiptdetail`;
/*!40000 ALTER TABLE `trn_wastecottonreceiptdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_wastecottonreceiptdetail` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_yarnreceipt
DROP TABLE IF EXISTS `trn_yarnreceipt`;
CREATE TABLE IF NOT EXISTS `trn_yarnreceipt` (
  `YarnReceiptId` int(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` int(11) DEFAULT '0',
  `ReceiptDate` date DEFAULT NULL,
  `SupplierId` int(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanId` int(11) NOT NULL DEFAULT '0',
  `TotalQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `trnRemarks` text COLLATE utf8_unicode_ci,
  `cUserId` int(11) NOT NULL DEFAULT '0',
  `cDate` date DEFAULT NULL,
  `cTime` time DEFAULT NULL,
  `CompanyId` int(11) NOT NULL DEFAULT '0',
  `FinancialYearId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`YarnReceiptId`),
  KEY `FK_trn_yarnreceipt_mas_supplier` (`SupplierId`),
  KEY `FK_trn_yarnreceipt_trn_supplierpgmplan` (`SupplierPgmPlanId`),
  KEY `FK_trn_yarnreceipt_set_company` (`CompanyId`),
  KEY `FK_trn_yarnreceipt_set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_yarnreceipt_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`),
  CONSTRAINT `FK_trn_yarnreceipt_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`),
  CONSTRAINT `FK_trn_yarnreceipt_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`),
  CONSTRAINT `FK_trn_yarnreceipt_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_yarnreceipt: ~8 rows (approximately)
DELETE FROM `trn_yarnreceipt`;
/*!40000 ALTER TABLE `trn_yarnreceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_yarnreceipt` ENABLE KEYS */;

-- Dumping structure for table jegan_spinning_erp.trn_yarnreceiptdetail
DROP TABLE IF EXISTS `trn_yarnreceiptdetail`;
CREATE TABLE IF NOT EXISTS `trn_yarnreceiptdetail` (
  `YarnReceiptDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `YarnReceiptId` int(11) NOT NULL DEFAULT '0',
  `ItemId` int(11) NOT NULL DEFAULT '0',
  `bUomId` int(11) NOT NULL DEFAULT '0',
  `sUomId` int(11) NOT NULL DEFAULT '0',
  `ReceiptQty` decimal(15,3) NOT NULL DEFAULT '0.000',
  `ReceiptRate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ReceiptAmount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`YarnReceiptDetailId`),
  KEY `FK_trn_yarnreceiptdetail_trn_yarnreceipt` (`YarnReceiptId`),
  KEY `FK_trn_yarnreceiptdetail_mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_yarnreceiptdetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_yarnreceiptdetail_trn_yarnreceipt` FOREIGN KEY (`YarnReceiptId`) REFERENCES `trn_yarnreceipt` (`YarnReceiptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table jegan_spinning_erp.trn_yarnreceiptdetail: ~8 rows (approximately)
DELETE FROM `trn_yarnreceiptdetail`;
/*!40000 ALTER TABLE `trn_yarnreceiptdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_yarnreceiptdetail` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

CREATE TABLE `trn_autoconer` (
  `AutoconerId` INT(11) NOT NULL AUTO_INCREMENT,
  `ShiftId` INT(11) NOT NULL DEFAULT '0',
  `MachineId` INT(11) NOT NULL DEFAULT '0',
  `EmpCode` INT(11) NOT NULL DEFAULT '0',
  `CountsId` INT(11) NOT NULL DEFAULT '0',
  `DrumsCounts` DECIMAL(10,2) NOT NULL DEFAULT '0.00',
  `ConeWt` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `ConeCount` DECIMAL(5,2) NOT NULL DEFAULT '0.00',
  `ProdKg` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `WasteTypeId` INT(11) NOT NULL DEFAULT '0',
  `WasteKg` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `WastePer` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `EffValue` DECIMAL(10,2) NOT NULL DEFAULT '0.00',
  `aCuts` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `aPer` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `aTime` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `aProdHours` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `TotalStopageTime` DECIMAL(11,2) NOT NULL DEFAULT '0.00',
  `cUserId` INT(11) NOT NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `eDate` DATE NULL DEFAULT NULL,
  `eTime` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`AutoconerId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_autoconerstopage` (
  `AutoconerStopageId` INT(11) NOT NULL AUTO_INCREMENT,
  `AutoconerId` INT(11) NOT NULL DEFAULT '0',
  `ErrorId` INT(11) NOT NULL DEFAULT '0',
  `StopageTime` DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`AutoconerStopageId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `mas_wastetype` (
  `WasteTypeId` INT(11) NOT NULL AUTO_INCREMENT,
  `WasteTypeName` VARCHAR(250) NULL DEFAULT NULL,
  `ItemTypeId` INT(11) NOT NULL DEFAULT 0,
  `DepartmentId` INT(11) NOT NULL DEFAULT 0,
  `IsActive` INT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`WasteTypeId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_autoconer` WRITE;
ALTER TABLE `trn_autoconer` ADD CONSTRAINT `FK_trn_autoconer_mas_shift` FOREIGN KEY (`ShiftId`) REFERENCES `mas_shift` (`ShiftId`);
ALTER TABLE `trn_autoconer` ADD CONSTRAINT `FK_trn_autoconer_mas_machine` FOREIGN KEY (`MachineId`) REFERENCES `mas_machine` (`MachineId`);
ALTER TABLE `trn_autoconer` ADD CONSTRAINT `FK_trn_autoconer_mas_counts` FOREIGN KEY (`CountsId`) REFERENCES `mas_counts` (`CountsId`);
ALTER TABLE `trn_autoconer` ADD CONSTRAINT `FK_trn_autoconer_set_users` FOREIGN KEY (`cUserId`) REFERENCES `set_users` (`UserId`);
UNLOCK TABLES;

LOCK TABLES `trn_autoconerstopage` WRITE;
ALTER TABLE `trn_autoconerstopage` ADD CONSTRAINT `FK_trn_autoconerstopage_mas_errorcode` FOREIGN KEY (`ErrorId`) REFERENCES `mas_errorcode` (`ErrorId`);
ALTER TABLE `trn_autoconerstopage` ADD CONSTRAINT `FK_trn_autoconerstopage_trn_autoconer` FOREIGN KEY (`AutoconerId`) REFERENCES `trn_autoconer` (`AutoconerId`);
UNLOCK TABLES;

LOCK TABLES `mas_machine` WRITE;
ALTER TABLE mas_machine ADD COLUMN `DepartmentId` INT(11) NOT NULL DEFAULT 0 AFTER `StdSpeed`;
ALTER TABLE mas_machine ADD COLUMN `menuid` INT(11) NOT NULL DEFAULT 0 AFTER `DepartmentId`;
UNLOCK TABLES;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (420, 2, 0, 'Autoconer', 'Autoconer', NULL, 'autoconer', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (421, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (422, 2, 0, 'Add', 'Add', NULL, 'add', 2, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (423, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (424, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (425, 2, 0, 'View', 'View', NULL, 'View', 5, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (426, 2, 0, 'Print', 'Print', NULL, 'Print', 6, 420, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (427, 1, 0, 'Waste Type', 'Waste Type', NULL, 'wastetype', 20, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (428, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 427, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (429, 1, 0, 'Add', 'Add', NULL, 'add', 2, 427, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (430, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 427, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (431, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 427, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update menu set menu_name='Error Code', menu_title='Error Code', menu_template='errorcode' where menu_id=114;
update menu set menu_order=9 where menu_id=365;
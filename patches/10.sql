CREATE TABLE IF NOT EXISTS `trn_jobworkreturn` (
  `JobWorkReturnId` INT(11) NOT NULL AUTO_INCREMENT,
  `ReturnNo` INT(11) NULL DEFAULT 0,
  `ReturnDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NOT NULL DEFAULT '0',
  `TotalQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalBales` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalAmount` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `retRemarks` TEXT NULL DEFAULT NULL,
  `cUserId` INT(11) NOT NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NOT NULL DEFAULT '0',
  `FinancialYearId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JobWorkReturnId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `trn_jobworkreturndetail` (
  `JobWorkReturnDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `JobWorkReturnId` INT(11) NOT NULL DEFAULT '0',
  `ItemId` INT(11) NOT NULL DEFAULT '0',
  `MillLotNo` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `SupplierBaleNo` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `bUomId` INT(11) NOT NULL DEFAULT '0',
  `sUomId` INT(11) NOT NULL DEFAULT '0',
  `RetQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `RetRate` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `RetAmount` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`JobWorkReturnDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (342, 11, 0, 'Job Work Return', 'Job Work Return', NULL, 'jobworkreturn', 6, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (343, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (344, 11, 0, 'Add', 'Add', NULL, 'add', 2, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (345, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (346, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (347, 11, 0, 'View', 'View', NULL, 'View', 5, 342, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

LOCK TABLES `trn_jobworkreturn` WRITE;
ALTER TABLE `trn_jobworkreturn` ADD CONSTRAINT `FK_trn_jobworkreturn_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_jobworkreturn` ADD CONSTRAINT `FK_trn_jobworkreturn_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_jobworkreturn` ADD CONSTRAINT `FK_trn_jobworkreturn_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_jobworkreturndetail` WRITE;
ALTER TABLE `trn_jobworkreturndetail` ADD CONSTRAINT `FK_trn_jobworkreturndetail_trn_jobworkreturn` FOREIGN KEY (`JobWorkReturnId`) REFERENCES `trn_jobworkreturn` (`JobWorkReturnId`);
ALTER TABLE `trn_jobworkreturndetail` ADD CONSTRAINT `FK_trn_jobworkreturndetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;
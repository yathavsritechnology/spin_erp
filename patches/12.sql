CREATE TABLE `trn_production` (
  `ProId` INT(11) NOT NULL AUTO_INCREMENT,
  `MixingChartId` INT(11) NULL DEFAULT '0',
  `ProNo` VARCHAR(50) NULL DEFAULT NULL,
  `ProDate` DATE NULL DEFAULT NULL,
  `TotalQty` DECIMAL(10,2) NULL DEFAULT '0.00',
  `GrandTotal` DECIMAL(10,2) NULL DEFAULT '0.00',
  `ProRemarks` TEXT NULL,
  `UserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  `CompanyId` INT(11) NULL DEFAULT '0',
  `IsOpenable` INT(1) NULL DEFAULT '0',
  PRIMARY KEY (`ProId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_productiondetail` (
  `ProDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `ProId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `Qty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `UomId` INT(11) NULL DEFAULT '0',
  `Rate` DECIMAL(10,2) NULL DEFAULT '0.00',
  `Total` DECIMAL(15,2) NULL DEFAULT '0.00',
  `LotNo` VARCHAR(50) NULL DEFAULT 'NULL',
  PRIMARY KEY (`ProDetailId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (365, 2, 0, 'Production Entry', 'Production Entry', NULL, 'productionentry', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (366, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (367, 2, 0, 'Add', 'Add', NULL, 'add', 2, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (368, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (369, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (370, 2, 0, 'View', 'View', NULL, 'View', 5, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (371, 2, 0, 'Print', 'Print', NULL, 'Print', 6, 365, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

LOCK TABLES `trn_production` WRITE;
ALTER TABLE `trn_production` ADD CONSTRAINT `FK_trn_production_trn_mixingchart` FOREIGN KEY (`MixingChartId`) REFERENCES `trn_mixingchart` (`MixingChartId`);
UNLOCK TABLES;

LOCK TABLES `trn_productiondetail` WRITE;
ALTER TABLE `trn_productiondetail` ADD CONSTRAINT `FK_trn_productiondetail_trn_production` FOREIGN KEY (`ProId`) REFERENCES `trn_production` (`ProId`);
ALTER TABLE `trn_productiondetail` ADD CONSTRAINT `FK_trn_productiondetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`);
ALTER TABLE `trn_productiondetail` ADD CONSTRAINT `FK_trn_productiondetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;
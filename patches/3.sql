/* 20-01-2018 */
INSERT INTO `modules` (`ModuleName`, `ModuleTitle`, `ModuleTemplate`, `ModuleOrder`) VALUES ('Stock', 'Stock', 'stock', '3');
UPDATE `modules` SET `ModuleOrder`='10' WHERE  `ModuleId`=3;

LOCK TABLES `menu` WRITE;
ALTER TABLE `menu` ADD CONSTRAINT `FK_menu_modules` FOREIGN KEY (`ModuleId`) REFERENCES `modules` (`ModuleId`);
UNLOCK TABLES;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (67, 4, 0, 'Stock Adjustment', 'Stock Adjustment', NULL, 'stockadjustment', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (68, 4, 0, 'Stock Report Qty', 'Stock Report Qty', NULL, 'stockreportqty', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (69, 4, 0, 'Stock Report Value', 'Stock Report Value', NULL, 'stockreportvalue', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (70, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (71, 4, 0, 'Add', 'Add', NULL, 'add', 2, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (72, 4, 0, 'Edit', 'Edit', NULL, 'edit', 3, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (73, 4, 0, 'Delete', 'Delete', NULL, 'delete', 4, 67, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (74, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 68, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (75, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 68, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (76, 4, 0, 'Listing', 'Listing', NULL, 'listing', 1, 69, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (77, 4, 0, 'Export Excel', 'Export Excel', NULL, 'exportexcel', 2, 69, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (78, 1, 0, 'View', 'View', NULL, 'View', 5, 11, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (79, 2, 0, 'Mixing Issue', 'Mixing Issue', NULL, 'mixingissue', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (80, 1, 0, 'Listing', 'Listing', NULL, 'listing', 1, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (81, 1, 0, 'Add', 'Add', NULL, 'add', 2, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (82, 1, 0, 'Edit', 'Edit', NULL, 'edit', 3, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (83, 1, 0, 'Delete', 'Delete', NULL, 'delete', 4, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (84, 1, 0, 'View', 'View', NULL, 'View', 5, 79, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_mixingissue` (
  `MixingIssueId` INT(11) NOT NULL AUTO_INCREMENT,
  `MixingIssueNo` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `MixingIssueDate` DATE NULL DEFAULT NULL,
  `TotalBales` DECIMAL(10,2) NULL DEFAULT '0.00',
  `TotalIssueWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `MixingIssueRemarks` TEXT NULL COLLATE 'utf8_unicode_ci',
  `cUserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`MixingIssueId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_mixingissuedetail` (
  `MixingIssueDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `MixingIssueId` INT(11) NULL DEFAULT '0',
  `CiDetailId` INT(11) NULL DEFAULT '0',
  `CiId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `SupplierBaleNo` VARCHAR(150) NULL DEFAULT '0' COLLATE 'utf8_unicode_ci',
  `MillLotNo` VARCHAR(150) NULL DEFAULT '0' COLLATE 'utf8_unicode_ci',
  `IssueWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `UomId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`MixingIssueDetailId`),
  INDEX `FK_trn_mixingissuedetail_trn_mixingissue` (`MixingIssueId`),
  INDEX `FK_trn_mixingissuedetail_trn_cottoninwarddetail` (`CiDetailId`),
  INDEX `FK_trn_mixingissuedetail_trn_cottoninward` (`CiId`),
  INDEX `FK_trn_mixingissuedetail_mas_item` (`ItemId`),
  INDEX `FK_trn_mixingissuedetail_mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_mixingissuedetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_mixingissuedetail_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_mixingissuedetail_trn_cottoninward` FOREIGN KEY (`CiId`) REFERENCES `trn_cottoninward` (`CiId`),
  CONSTRAINT `FK_trn_mixingissuedetail_trn_cottoninwarddetail` FOREIGN KEY (`CiDetailId`) REFERENCES `trn_cottoninwarddetail` (`CiDetailId`),
  CONSTRAINT `FK_trn_mixingissuedetail_trn_mixingissue` FOREIGN KEY (`MixingIssueId`) REFERENCES `trn_mixingissue` (`MixingIssueId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `stock_adjustment` (
  `AdjustmentId` INT(11) NOT NULL AUTO_INCREMENT,
  `ItemId` INT(11) NULL DEFAULT '0',
  `LotNo` VARCHAR(50) NULL DEFAULT NULL,
  `BaleNo` VARCHAR(50) NULL DEFAULT NULL,
  `AdjRate` DECIMAL(15,2) NULL DEFAULT '0.00',
  `AdjQty` DECIMAL(15,3) NULL DEFAULT '0.000',
  `AdjAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `UomId` INT(11) NULL DEFAULT '0',
  `AdjTypeId` INT(11) NULL DEFAULT '0',
  `AdjDate` DATE NULL DEFAULT NULL,
  `AdjUserId` INT(11) NULL DEFAULT '0',
  `AdjcDate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `AdjuDate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdjustmentId`),
  INDEX `FK_trn_item_adjustment_mas_item` (`ItemId`),
  INDEX `FK_trn_item_adjustment_mas_uom` (`UomId`),
  CONSTRAINT `FK_trn_item_adjustment_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`),
  CONSTRAINT `FK_trn_item_adjustment_mas_uom` FOREIGN KEY (`UomId`) REFERENCES `mas_uom` (`UomId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `mas_stockadjustmenttype` (
  `StockAdjustmentTypeId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockAdjustmentType` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `IsActive` INT(1) NULL DEFAULT '1',
  PRIMARY KEY (`StockAdjustmentTypeId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `mas_stockadjustmenttype` (`StockAdjustmentTypeId`, `StockAdjustmentType`, `IsActive`) VALUES (1, 'ADD', 1);
INSERT INTO `mas_stockadjustmenttype` (`StockAdjustmentTypeId`, `StockAdjustmentType`, `IsActive`) VALUES (2, 'LESS', 1);

CREATE TABLE `version_info` (
  `Ver_Inst` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `Ver_Inst_Dt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `Ver_Cur` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci'
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;
INSERT INTO `version_info` (`Ver_Inst`, `Ver_Inst_Dt`, `Ver_Cur`) VALUES ('1.0.0.0', '2018-01-20 07:41:43', '1.0.0.0');


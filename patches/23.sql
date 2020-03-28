INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (488, 2, 0, 'Autoconer Summary', 'Autoconer Summary', NULL, 'autoconer_summary', 14, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (489, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 488, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (490, 2, 0, 'Add', 'Add', NULL, 'add', 2, 488, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (491, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 488, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (492, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 488, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (493, 2, 0, 'View', 'View', NULL, 'View', 5, 488, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_autoconer_summary` (
  `SummaryId` INT(11) NOT NULL AUTO_INCREMENT,
  `sDate` DATE NULL DEFAULT NULL,
  `Cnt` INT(11) NOT NULL DEFAULT '0',
  `TotalStdHank` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalWasteKg` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalProdKg` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalDoff` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalDoffTime` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `TotalStopage` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `ShiftId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_autoconer_summarydetail` (
  `SummaryDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `SummaryId` INT(11) NOT NULL DEFAULT '0',
  `ShiftId` INT(11) NOT NULL DEFAULT '0',
  `MachineId` INT(11) NOT NULL DEFAULT '0',
  `EmpCode` INT(11) NOT NULL DEFAULT '0',
  `CountsId` INT(11) NOT NULL DEFAULT '0',
  `WastageKg` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `ProdKg` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `aCuts` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `aProdHours` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `EffValue` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `TotalStopage` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;


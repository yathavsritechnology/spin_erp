INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (570, 2, 0, 'Bale Arrangement Chart', 'Bale Arrangement Chart', NULL, 'bale_arrangement_chart', 17, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (571, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (572, 2, 0, 'Add', 'Add', NULL, 'add', 2, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (573, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (574, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (575, 2, 0, 'View', 'View', NULL, 'View', 5, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (576, 2, 0, 'Print', 'Print', NULL, 'Print', 6, 570, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);


CREATE TABLE `trn_balearr` (
    `BaleArrId` INT(11) NOT NULL AUTO_INCREMENT,
    `BaleArrNo` INT(11) NOT NULL DEFAULT '0',
    `BaleArrDate` DATE NULL DEFAULT NULL,
    `MixNo` INT(11) NOT NULL DEFAULT '0',
    `cUserId` INT(11) NOT NULL DEFAULT 0,
    `cDate` DATE NULL DEFAULT NULL,
  	`cTime` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`BaleArrId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_balearr_detail` (
  `BaleArrDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `BaleArrId` INT(11) NOT NULL DEFAULT '0',
  `SupplierId` INT(11) NOT NULL DEFAULT '0',
  `MillLotNo` VARCHAR(150) NULL DEFAULT NULL,
  `PartyLotNo` VARCHAR(150) NULL DEFAULT NULL,
  `BaleCount` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BaleArrDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

  INSERT INTO `set_autono` (`AutoNoId`, `MenuId`, `Text1`, `Text2`, `Text3`, `NumberSeed`, `NumberOfDigits`, `NumberPosition`, `CompanyId`, `FinancialYearId`, `Tag`) VALUES (29, 570, NULL, NULL, NULL, 0, 4, 4, 1, 2, 'A');
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (482, 2, 0, 'Waste Entry', 'Waste Entry', NULL, 'waste_entry', 13, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (483, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 482, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (484, 2, 0, 'Add', 'Add', NULL, 'add', 2, 482, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (485, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 482, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (486, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 482, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (487, 2, 0, 'View', 'View', NULL, 'View', 5, 482, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_waste_entry` (
  `WasteEntryId` INT(11) NOT NULL AUTO_INCREMENT,
  `WasteEntryDate` DATE NULL DEFAULT NULL,
  `MixingChartId` INT(11) NULL DEFAULT '0',
  `ShiftId` INT(11) NULL DEFAULT '0',
  `WasteTypeId` INT(11) NULL DEFAULT '0',
  `sWasteWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `cUserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`WasteEntryId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;
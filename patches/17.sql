CREATE TABLE `trn_carding` (
	`CardingId` INT(11) NOT NULL AUTO_INCREMENT,
	`CardingNo` INT(11) NOT NULL DEFAULT '0',
	`CardingDate` DATE NULL DEFAULT NULL,
	`MixingChartId` INT(11) NULL DEFAULT '0',
	`ShiftId` INT(11) NULL DEFAULT '0',
	`Emp_Id` INT(11) NULL DEFAULT '0',
	`MachineId` INT(11) NULL DEFAULT '0',
	`CountsId` INT(11) NULL DEFAULT '0',
	`cProdWt` DECIMAL(15,3) NULL DEFAULT '0.000',
	`CottonWasteTypeId` INT(11) NULL DEFAULT '0',
	`cWasteWt` DECIMAL(15,3) NULL DEFAULT '0.000',
	`cUserId` INT(11) NULL DEFAULT '0',
	`cDate` DATE NULL DEFAULT NULL,
	`cTime` TIME NULL DEFAULT NULL,
	`CompanyId` INT(11) NULL DEFAULT '0',
	`FinancialYearId` INT(11) NULL DEFAULT '0',
	PRIMARY KEY (`CardingId`)
)
	COLLATE='utf8_unicode_ci'
	ENGINE=InnoDB;

INSERT INTO `menu` (`ModuleId`, `menu_name`, `menu_title`, `menu_template`, `menu_order`) VALUES ('2', 'Drawing', 'Drawing', 'drawing', '4');

UPDATE `menu` SET `menu_name`='Carding', `menu_title`='Carding', `menu_template`='carding' WHERE  `menu_id`=423;

UPDATE `menu` SET `menu_order`='4' WHERE  `menu_id`=432;
UPDATE `menu` SET `menu_order`='5' WHERE  `menu_id`=200;
UPDATE `menu` SET `menu_order`='6' WHERE  `menu_id`=206;
UPDATE `menu` SET `menu_order`='7' WHERE  `menu_id`=212;
UPDATE `menu` SET `menu_order`='8' WHERE  `menu_id`=218;
UPDATE `menu` SET `menu_order`='9' WHERE  `menu_id`=420;
UPDATE `menu` SET `menu_order`='10' WHERE  `menu_id`=365;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (433, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 432, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (434, 2, 0, 'Add', 'Add', NULL, 'add', 2, 432, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (435, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 432, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (436, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 432, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (437, 2, 0, 'View', 'View', NULL, 'View', 5, 432, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `set_autono` (`MenuId`, `NumberOfDigits`, `NumberPosition`, `FinancialYearId`, `Tag`) VALUES ('432', '3', '4', '2', 'A');
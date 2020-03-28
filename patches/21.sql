update menu as d set d.parent=432 where d.menu_id=433;
update menu as d set d.parent=432 where d.menu_id=434;
update menu as d set d.parent=432 where d.menu_id=435;
update menu as d set d.parent=432 where d.menu_id=436;
update menu as d set d.parent=432 where d.menu_id=437;

update menu as d set d.ModuleId=2, d.role_id=0, d.menu_name='Edit', d.menu_title='Edit', d.menu_template='edit', d.menu_order=3,d.parent=420, d.menu_status='1', d.IsTop='1', d.IsSideMenu='0', d.IsFooter='0',d.IsListing=0, d.IsAdd=0, d.IsEdit=1, d.IsDelete=0, d.IsView=0, d.IsPrint=0, d.IsApprove=0, d.IsUnApprove=0, d.IsEmail=0, d.IsSMS=0, d.IsExportExcel=0, d.IsExportPDF=0, d.IsImport=0 where d.menu_id=423;

update set_autono as d set d.MenuId=432 where d.AutoNoId=26;

update menu as d set d.ModuleId=2, d.role_id=0, d.menu_name='Carding', d.menu_title='Carding', d.menu_template='carding', d.menu_order=4,d.parent=0, d.menu_status='1', d.IsTop='1', d.IsSideMenu='0', d.IsFooter='0',d.IsListing=0, d.IsAdd=0, d.IsEdit=0, d.IsDelete=0, d.IsView=0, d.IsPrint=0, d.IsApprove=0, d.IsUnApprove=0, d.IsEmail=0, d.IsSMS=0, d.IsExportExcel=0, d.IsExportPDF=0, d.IsImport=0 where d.menu_id=432;

CREATE TABLE `trn_sbtwenty` (
  `SbTwentyId` INT(11) NOT NULL AUTO_INCREMENT,
  `SbTwentyNo` INT(11) NOT NULL DEFAULT '0',
  `SbTwentyDate` DATE NULL DEFAULT NULL,
  `MixingChartId` INT(11) NULL DEFAULT '0',
  `ShiftId` INT(11) NULL DEFAULT '0',
  `Emp_Id` INT(11) NULL DEFAULT '0',
  `MachineId` INT(11) NULL DEFAULT '0',
  `CountsId` INT(11) NULL DEFAULT '0',
  `sProdWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `CottonWasteTypeId` INT(11) NULL DEFAULT '0',
  `sWasteWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `cUserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`SbTwentyId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_unilap` (
  `UnilapId` INT(11) NOT NULL AUTO_INCREMENT,
  `UnilapNo` INT(11) NOT NULL DEFAULT '0',
  `UnilapDate` DATE NULL DEFAULT NULL,
  `MixingChartId` INT(11) NULL DEFAULT '0',
  `ShiftId` INT(11) NULL DEFAULT '0',
  `Emp_Id` INT(11) NULL DEFAULT '0',
  `MachineId` INT(11) NULL DEFAULT '0',
  `CountsId` INT(11) NULL DEFAULT '0',
  `sProdWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `CottonWasteTypeId` INT(11) NULL DEFAULT '0',
  `sWasteWt` DECIMAL(15,3) NULL DEFAULT '0.000',
  `cUserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`UnilapId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (469, 2, 0, 'Sb 20', 'Sb 20', NULL, 'sb_twenty', 12, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (470, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 469, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (471, 2, 0, 'Add', 'Add', NULL, 'add', 2, 469, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (472, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 469, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (473, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 469, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (474, 2, 0, 'View', 'View', NULL, 'View', 5, 469, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (475, 2, 0, 'Uni Lap', 'Uni Lap', NULL, 'unilap', 12, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (476, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 475, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (477, 2, 0, 'Add', 'Add', NULL, 'add', 2, 475, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (478, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 475, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (479, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 475, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (480, 2, 0, 'View', 'View', NULL, 'View', 5, 475, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);


#carding - 432 - 4
#sb20 - 469 - 5
#unilap - 475 - 6
#comber - 206 - 7
#drawing - 200 - 8
#simplex - 212 - 9
#spinning - 218 - 10
#autoconer - 420 - 11


update menu as d set d.menu_order=4 where d.menu_id=432;
update menu as d set d.menu_order=5 where d.menu_id=469;
update menu as d set d.menu_order=6 where d.menu_id=475;
update menu as d set d.menu_order=7 where d.menu_id=206;
update menu as d set d.menu_order=8 where d.menu_id=200;
update menu as d set d.menu_order=9 where d.menu_id=212;
update menu as d set d.menu_order=10 where d.menu_id=218;
update menu as d set d.menu_order=11 where d.menu_id=420;

INSERT INTO `set_autono` (`AutoNoId`, `MenuId`, `Text1`, `Text2`, `Text3`, `NumberSeed`, `NumberOfDigits`, `NumberPosition`, `CompanyId`, `FinancialYearId`, `Tag`) VALUES (27, 469, NULL, NULL, NULL, 0, 4, 4, 1, 2, 'A');
INSERT INTO `set_autono` (`AutoNoId`, `MenuId`, `Text1`, `Text2`, `Text3`, `NumberSeed`, `NumberOfDigits`, `NumberPosition`, `CompanyId`, `FinancialYearId`, `Tag`) VALUES (28, 475, NULL, NULL, NULL, 0, 4, 4, 1, 2, 'A');

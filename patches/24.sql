INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (501, 2, 0, 'Carding Summary', 'Carding Summary', NULL, 'carding_summary', 15, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (502, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 501, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (503, 2, 0, 'Add', 'Add', NULL, 'add', 2, 501, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (504, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 501, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (505, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 501, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (506, 2, 0, 'View', 'View', NULL, 'View', 5, 501, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_carding_summary` (
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

CREATE TABLE `trn_carding_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (507, 2, 0, 'Sb 20 Summary', 'Sb 20 Summary', NULL, 'sb_twenty_summary', 16, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (508, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 507, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (509, 2, 0, 'Add', 'Add', NULL, 'add', 2, 507, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (510, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 507, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (511, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 507, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (512, 2, 0, 'View', 'View', NULL, 'View', 5, 507, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_sb_twenty_summary` (
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

CREATE TABLE `trn_sb_twenty_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (513, 2, 0, 'Uni Lap Summary', 'Uni Lap Summary', NULL, 'unilap_summary', 17, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (514, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 513, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (515, 2, 0, 'Add', 'Add', NULL, 'add', 2, 513, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (516, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 513, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (517, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 513, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (518, 2, 0, 'View', 'View', NULL, 'View', 5, 513, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_unilap_summary` (
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

CREATE TABLE `trn_unilap_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (519, 2, 0, 'Comper Summary', 'Comper Summary', NULL, 'comper_summary', 18, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (520, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 519, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (521, 2, 0, 'Add', 'Add', NULL, 'add', 2, 519, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (522, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 519, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (523, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 519, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (524, 2, 0, 'View', 'View', NULL, 'View', 5, 519, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_comper_summary` (
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

CREATE TABLE `trn_comper_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (525, 2, 0, 'Drawing Summary', 'Drawing Summary', NULL, 'drawing_summary', 19, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (526, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 525, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (527, 2, 0, 'Add', 'Add', NULL, 'add', 2, 525, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (528, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 525, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (529, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 525, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (530, 2, 0, 'View', 'View', NULL, 'View', 5, 525, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_drawing_summary` (
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

CREATE TABLE `trn_drawing_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (531, 2, 0, 'Simplex Summary', 'Simplex Summary', NULL, 'simplex_summary', 20, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (532, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 531, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (533, 2, 0, 'Add', 'Add', NULL, 'add', 2, 531, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (534, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 531, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (535, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 531, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (536, 2, 0, 'View', 'View', NULL, 'View', 5, 531, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_simplex_summary` (
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

CREATE TABLE `trn_simplex_summarydetail` (
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
  `UtilPer` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `IsMachine` INT(1) NOT NULL DEFAULT '0',
  `IsEmployee` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SummaryDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (539, 2, 0, 'Stoppage Entry', 'Stoppage Entry', NULL, 'stoppage_entry', 21, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (540, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 539, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (541, 2, 0, 'Add', 'Add', NULL, 'add', 2, 539, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (542, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 539, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (543, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 539, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (544, 2, 0, 'View', 'View', NULL, 'View', 5, 539, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_stoppage_entry` (
    `SrId` INT(11) NOT NULL AUTO_INCREMENT,
    `SrDate` DATE NULL DEFAULT NULL,
    `MachinesId` INT(11) NOT NULL DEFAULT '0',
    `ShiftId` INT(11) NOT NULL DEFAULT '0',
    `TotalTime` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
    `SrRemarks` TEXT NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
    `cUserId` INT(11) NULL DEFAULT 0,
    `cDate` DATE NULL DEFAULT NULL,
	`cTime` TIME NULL DEFAULT NULL,
	`FinancialYearId` INT(11) NULL DEFAULT 0,
	`CompanyId` INT(11) NULL DEFAULT 0,
  PRIMARY KEY (`SrId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_stoppage_entrydetail` (
  `SrDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `SrId` INT(11) NOT NULL DEFAULT '0',
  `ErrorId` INT(11) NOT NULL DEFAULT '0',
  `StopTime` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`SrDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `trn_yarnreceipt` (
  `YarnReceiptId` INT(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` INT(11) NULL DEFAULT 0,
  `ReceiptDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanId` INT(11) NOT NULL DEFAULT '0',
  `TotalQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `trnRemarks` TEXT NULL DEFAULT NULL,
  `cUserId` INT(11) NOT NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NOT NULL DEFAULT '0',
  `FinancialYearId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`YarnReceiptId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `trn_yarnreceiptdetail` (
  `YarnReceiptDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `YarnReceiptId` INT(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanDetailId` INT(11) NOT NULL DEFAULT '0',
  `ItemId` INT(11) NOT NULL DEFAULT '0',
  `bUomId` INT(11) NOT NULL DEFAULT '0',
  `sUomId` INT(11) NOT NULL DEFAULT '0',
  `ReceiptQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `ReceiptRate` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `ReceiptAmount` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`YarnReceiptDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (324, 11, 0, 'Yarn Receipt', 'Yarn Receipt', NULL, 'yarnreceipt', 4, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (325, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (326, 11, 0, 'Add', 'Add', NULL, 'add', 2, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (327, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (328, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (329, 11, 0, 'View', 'View', NULL, 'View', 5, 324, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

LOCK TABLES `trn_yarnreceipt` WRITE;
ALTER TABLE `trn_yarnreceipt` ADD CONSTRAINT `FK_trn_yarnreceipt_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_yarnreceipt` ADD CONSTRAINT `FK_trn_yarnreceipt_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`);
ALTER TABLE `trn_yarnreceipt` ADD CONSTRAINT `FK_trn_yarnreceipt_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_yarnreceipt` ADD CONSTRAINT `FK_trn_yarnreceipt_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_yarnreceiptdetail` WRITE;
ALTER TABLE `trn_yarnreceiptdetail` ADD CONSTRAINT `FK_trn_yarnreceiptdetail_trn_yarnreceipt` FOREIGN KEY (`YarnReceiptId`) REFERENCES `trn_yarnreceipt` (`YarnReceiptId`);
ALTER TABLE `trn_yarnreceiptdetail` ADD CONSTRAINT `FK_trn_yarnreceiptdetail_trn_supplierpgmplandetail` FOREIGN KEY (`SupplierPgmPlanDetailId`) REFERENCES `trn_supplierpgmplandetail` (`SupplierPgmPlanDetailId`);
ALTER TABLE `trn_yarnreceiptdetail` ADD CONSTRAINT `FK_trn_yarnreceiptdetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `trn_wastecottonreceipt` (
  `WasteCottonReceiptId` INT(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` INT(11) NULL DEFAULT 0,
  `ReceiptDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanId` INT(11) NOT NULL DEFAULT '0',
  `TotalQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `trnRemarks` TEXT NULL DEFAULT NULL,
  `cUserId` INT(11) NOT NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NOT NULL DEFAULT '0',
  `FinancialYearId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`WasteCottonReceiptId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `trn_wastecottonreceiptdetail` (
  `WasteCottonReceiptDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `WasteCottonReceiptId` INT(11) NOT NULL DEFAULT '0',
  `SupplierPgmPlanDetailId` INT(11) NOT NULL DEFAULT '0',
  `ItemId` INT(11) NOT NULL DEFAULT '0',
  `bUomId` INT(11) NOT NULL DEFAULT '0',
  `sUomId` INT(11) NOT NULL DEFAULT '0',
  `ReceiptQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
  `ReceiptRate` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `ReceiptAmount` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`WasteCottonReceiptDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (330, 11, 0, 'Waste Cotton Receipt', 'Waste Cotton Receipt', NULL, 'wastecottonreceipt', 5, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (331, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (332, 11, 0, 'Add', 'Add', NULL, 'add', 2, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (333, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (334, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (335, 11, 0, 'View', 'View', NULL, 'View', 5, 330, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

LOCK TABLES `trn_wastecottonreceipt` WRITE;
ALTER TABLE `trn_wastecottonreceipt` ADD CONSTRAINT `FK_trn_wastecottonreceipt_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`);
ALTER TABLE `trn_wastecottonreceipt` ADD CONSTRAINT `FK_trn_wastecottonreceipt_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_wastecottonreceipt` ADD CONSTRAINT `FK_trn_wastecottonreceipt_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_wastecottonreceiptdetail` WRITE;
ALTER TABLE `trn_wastecottonreceiptdetail` ADD CONSTRAINT `FK_trn_wastecottonreceiptdetail_trn_yarnreceipt` FOREIGN KEY (`WasteCottonReceiptId`) REFERENCES `trn_wastecottonreceipt` (`WasteCottonReceiptId`);
ALTER TABLE `trn_wastecottonreceiptdetail` ADD CONSTRAINT `FK_trn_wastecottonreceiptdetail_trn_supplierpgmplandetail` FOREIGN KEY (`SupplierPgmPlanDetailId`) REFERENCES `trn_supplierpgmplandetail` (`SupplierPgmPlanDetailId`);
ALTER TABLE `trn_wastecottonreceiptdetail` ADD CONSTRAINT `FK_trn_wastecottonreceiptdetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;
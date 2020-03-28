CREATE TABLE `trn_blendingissue` (
  `BlendingIssueId` INT(11) NOT NULL AUTO_INCREMENT,
  `IssueNo` VARCHAR(50) NULL DEFAULT NULL,
  `IssueDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `TotalKgs` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalBags` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalNos` DECIMAL(10,2) NULL DEFAULT '0.00',
  `TotalAmount` DECIMAL(10,2) NULL DEFAULT '0.00',
  `bRemarks` TEXT NULL,
  `UserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`BlendingIssueId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_blendingissuedetail` (
  `BlendingIssueDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `BlendingIssueId` INT(11) NULL DEFAULT '0',
  `YarnReceiptDetailId` INT(11) NULL DEFAULT '0',
  `YarnReceiptId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `IssueQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `IssuesQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `IssueBag` DECIMAL(10,3) NULL DEFAULT '0.000',
  `IssueRate` DECIMAL(10,2) NULL DEFAULT '0.00',
  `IssueAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `LotNo` VARCHAR(50) NULL DEFAULT 'NULL',
  PRIMARY KEY (`BlendingIssueDetailId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_blendingissue` WRITE;
ALTER TABLE `trn_blendingissue` ADD CONSTRAINT `FK_trn_blendingissue_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_blendingissue` ADD CONSTRAINT `FK_trn_blendingissue_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_blendingissue` ADD CONSTRAINT `FK_trn_blendingissue_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_blendingissuedetail` WRITE;
ALTER TABLE `trn_blendingissuedetail` ADD CONSTRAINT `FK_trn_blendingissuedetail_trn_blendingissue` FOREIGN KEY (`BlendingIssueId`) REFERENCES `trn_blendingissue` (`BlendingIssueId`);
ALTER TABLE `trn_blendingissuedetail` ADD CONSTRAINT `FK_trn_blendingissuedetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_blendingissuedetail` ADD CONSTRAINT `FK_trn_blendingissuedetail_mas_uom` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`);
UNLOCK TABLES;

CREATE TABLE `trn_blendingpgmplan` (
  `BlendingPgmPlanId` INT(11) NOT NULL AUTO_INCREMENT,
  `PgmNo` VARCHAR(50) NULL DEFAULT NULL,
  `PgmDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `UomId` INT(11) NULL DEFAULT '0',
  `ReqPgmQty` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalQty` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalBags` DECIMAL(10,2) NULL DEFAULT '0.00',
  `TotalAmount` DECIMAL(10,2) NULL DEFAULT '0.00',
  `bRemarks` TEXT NULL,
  `UserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`BlendingPgmPlanId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_blendingpgmplandetail` (
  `BlendingPgmPlanDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `BlendingPgmPlanId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `PgmQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `PgmsQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `PgmBag` DECIMAL(10,3) NULL DEFAULT '0.000',
  `PgmRate` DECIMAL(10,2) NULL DEFAULT '0.00',
  `PgmAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `LotNo` VARCHAR(50) NULL DEFAULT 'NULL',
  PRIMARY KEY (`BlendingPgmPlanDetailId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_blendingpgmplan` WRITE;
ALTER TABLE `trn_blendingpgmplan` ADD CONSTRAINT `FK_trn_blendingpgmplan_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_blendingpgmplan` ADD CONSTRAINT `FK_trn_blendingpgmplan_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_blendingpgmplan` ADD CONSTRAINT `FK_trn_blendingpgmplan_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_blendingpgmplan` ADD CONSTRAINT `FK_trn_blendingpgmplan_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_blendingpgmplandetail` WRITE;
ALTER TABLE `trn_blendingpgmplandetail` ADD CONSTRAINT `FK_trn_blendingpgmplandetail_trn_blendingpgmplan` FOREIGN KEY (`BlendingPgmPlanId`) REFERENCES `trn_blendingpgmplan` (`BlendingPgmPlanId`);
ALTER TABLE `trn_blendingpgmplandetail` ADD CONSTRAINT `FK_trn_blendingpgmplandetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_blendingpgmplandetail` ADD CONSTRAINT `FK_trn_blendingpgmplandetail_mas_uom` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`);
UNLOCK TABLES;

CREATE TABLE `trn_blendingreceipt` (
  `BlendingReceiptId` INT(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` VARCHAR(50) NULL DEFAULT NULL,
  `ReceiptDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `BlendingPgmPlanId` INT(11) NULL DEFAULT '0',
  `TotalQty` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalBags` DECIMAL(10,2) NULL DEFAULT '0.00',
  `TotalAmount` DECIMAL(10,2) NULL DEFAULT '0.00',
  `bRemarks` TEXT NULL,
  `UserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`BlendingReceiptId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_blendingreceiptdetail` (
  `BlendingReceiptDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `BlendingReceiptId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `ReceiptQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReceiptsQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReceiptBag` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReceiptRate` DECIMAL(10,2) NULL DEFAULT '0.00',
  `ReceiptAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `LotNo` VARCHAR(50) NULL DEFAULT 'NULL',
  PRIMARY KEY (`BlendingReceiptDetailId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_blendingreceipt` WRITE;
ALTER TABLE `trn_blendingreceipt` ADD CONSTRAINT `FK_trn_blendingreceipt_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_blendingreceipt` ADD CONSTRAINT `FK_trn_blendingreceipt_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_blendingreceipt` ADD CONSTRAINT `FK_trn_blendingreceipt_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
ALTER TABLE `trn_blendingreceipt` ADD CONSTRAINT `FK_trn_blendingreceipt_trn_blendingpgmplan` FOREIGN KEY (`BlendingPgmPlanId`) REFERENCES `trn_blendingpgmplan` (`BlendingPgmPlanId`);
UNLOCK TABLES;

LOCK TABLES `trn_blendingreceiptdetail` WRITE;
ALTER TABLE `trn_blendingreceiptdetail` ADD CONSTRAINT `FK_trn_blendingreceiptdetail_trn_blendingreceipt` FOREIGN KEY (`BlendingReceiptId`) REFERENCES `trn_blendingreceipt` (`BlendingReceiptId`);
ALTER TABLE `trn_blendingreceiptdetail` ADD CONSTRAINT `FK_trn_blendingreceiptdetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (372, 11, 0, 'Blending Issue', 'Blending Issue', NULL, 'blendingissue', 7, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (373, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (374, 11, 0, 'Add', 'Add', NULL, 'add', 2, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (375, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (376, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (377, 11, 0, 'View', 'View', NULL, 'View', 5, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (378, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 372, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (379, 11, 0, 'Blending Pgm Chart', 'Blending Pgm Chart', NULL, 'blendingpgmchart', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (380, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (381, 11, 0, 'Add', 'Add', NULL, 'add', 2, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (382, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (383, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (384, 11, 0, 'View', 'View', NULL, 'View', 5, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (385, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 379, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (386, 11, 0, 'Blending Receipt', 'Blending Receipt', NULL, 'blendingreceipt', 9, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (387, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (388, 11, 0, 'Add', 'Add', NULL, 'add', 2, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (389, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (390, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (391, 11, 0, 'View', 'View', NULL, 'View', 5, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (392, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 386, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (393, 11, 0, 'Blending Return', 'Blending Return', NULL, 'blendingreturn', 10, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (394, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (395, 11, 0, 'Add', 'Add', NULL, 'add', 2, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (396, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (397, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (398, 11, 0, 'View', 'View', NULL, 'View', 5, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (399, 11, 0, 'Print', 'Print', NULL, 'Print', 6, 393, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
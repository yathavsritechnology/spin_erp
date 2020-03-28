CREATE TABLE IF NOT EXISTS `trn_supplierpgmplan` (
      `SupplierPgmPlanId` INT(11) NOT NULL AUTO_INCREMENT,
      `PgmNo` INT(11) NULL DEFAULT 0,
      `PgmDate` DATE NULL DEFAULT NULL,
      `SupplierId` INT(11) NOT NULL DEFAULT '0',
      `ItemId` INT(11) NOT NULL DEFAULT '0',
      `UomId` INT(11) NOT NULL DEFAULT '0',
      `ReqPgmQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
      `TotalBales` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
      `TotalQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
      `PgmRemarks` TEXT NULL DEFAULT NULL,
      `cUserId` INT(11) NOT NULL DEFAULT '0',
      `cDate` DATE NULL DEFAULT NULL,
      `cTime` TIME NULL DEFAULT NULL,
      `CompanyId` INT(11) NOT NULL DEFAULT '0',
      `FinancialYearId` INT(11) NOT NULL DEFAULT '0',
      PRIMARY KEY (`SupplierPgmPlanId`)
  )
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `trn_supplierpgmplandetail` (
      `SupplierPgmPlanDetailId` INT(11) NOT NULL AUTO_INCREMENT,
      `SupplierPgmPlanId` INT(11) NOT NULL DEFAULT '0',
      `CiDetailId` INT(11) NOT NULL DEFAULT '0',
      `CiId` INT(11) NOT NULL DEFAULT '0',
      `ItemId` INT(11) NOT NULL DEFAULT '0',
      `MillLotNo` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
      `SupplierBaleNo` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
      `bUomId` INT(11) NOT NULL DEFAULT '0',
      `sUomId` INT(11) NOT NULL DEFAULT '0',
      `PgmQty` DECIMAL(15,3) NOT NULL DEFAULT '0.000',
      `PgmRate` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
      `PgmAmount` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
      PRIMARY KEY (`SupplierPgmPlanDetailId`)
  )
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (318, 11, 0, 'Supplier Program Chart', 'Supplier Program Chart', NULL, 'supplierpgmchart', 3, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (319, 11, 0, 'Listing', 'Listing', NULL, 'listing', 1, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (320, 11, 0, 'Add', 'Add', NULL, 'add', 2, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (321, 11, 0, 'Edit', 'Edit', NULL, 'edit', 3, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (322, 11, 0, 'Delete', 'Delete', NULL, 'delete', 4, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (323, 11, 0, 'View', 'View', NULL, 'View', 5, 318, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
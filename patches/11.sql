CREATE TABLE `mas_suppliercategory` (
  `SupplierCategoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `SupplierCategory` VARCHAR(250) NULL DEFAULT NULL,
  `IsActive` INT(1) NULL DEFAULT '1',
  PRIMARY KEY (`SupplierCategoryId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (1, 'Job Worker', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (2, 'Yarn Suppliers', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (3, 'Cotton Supplier', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (4, 'Store Supplier', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (5, 'Waste Cotton Supplier', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (6, 'General Items', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (7, 'Goods Carriers', 1);
INSERT INTO `mas_suppliercategory` (`SupplierCategoryId`, `SupplierCategory`, `IsActive`) VALUES (8, 'Couriers', 1);

CREATE TABLE `mas_suppliers_x_category` (
  `SuppliersxCategoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `SupplierId` INT(11) NOT NULL DEFAULT '0',
  `SupplierCategoryId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SuppliersxCategoryId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `set_supplier_link` (
  `SupplierLinkId` INT(11) NOT NULL AUTO_INCREMENT,
  `SupplierCategoryId` INT(11) NOT NULL DEFAULT '0',
  `MenuId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SupplierLinkId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `mas_customercategory` (
  `CustomerCategoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerCategory` VARCHAR(250) NULL DEFAULT NULL,
  `IsActive` INT(1) NULL DEFAULT '1',
  PRIMARY KEY (`CustomerCategoryId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

INSERT INTO `mas_customercategory` (`CustomerCategoryId`, `CustomerCategory`, `IsActive`) VALUES (1, 'Sales', 0);

CREATE TABLE `mas_customer_x_category` (
  `CustomersxCategoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` INT(11) NOT NULL DEFAULT '0',
  `CustomerCategoryId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CustomersxCategoryId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `set_customer_link` (
  `CustomerLinkId` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerCategoryId` INT(11) NOT NULL DEFAULT '0',
  `MenuId` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CustomerLinkId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (353, 3, 0, 'Supplier Category', 'Supplier Category', NULL, 'suppliercategory', 8, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (354, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (355, 3, 0, 'Add', 'Add', NULL, 'add', 2, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (356, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (357, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (358, 3, 0, 'View', 'View', NULL, 'View', 5, 353, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (359, 3, 0, 'Customer Category', 'Customer Category', NULL, 'customercategory', 9, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (360, 3, 0, 'Listing', 'Listing', NULL, 'listing', 1, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (361, 3, 0, 'Add', 'Add', NULL, 'add', 2, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (362, 3, 0, 'Edit', 'Edit', NULL, 'edit', 3, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (363, 3, 0, 'Delete', 'Delete', NULL, 'delete', 4, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (364, 3, 0, 'View', 'View', NULL, 'View', 5, 359, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
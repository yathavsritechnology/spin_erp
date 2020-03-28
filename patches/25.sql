INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (558, 2, 0, 'Cotton Test Import', 'Cotton Test Import', NULL, 'cotton_test_import', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (559, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 558, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (560, 2, 0, 'Add', 'Add', NULL, 'add', 2, 558, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (561, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 558, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (562, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 558, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (563, 2, 0, 'View', 'View', NULL, 'View', 5, 558, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_cotton_test` (
    `CottonTestId` INT(11) NOT NULL AUTO_INCREMENT,
    `TestIdNo` INT(11) NOT NULL DEFAULT '0',
    `TestDate` DATE NULL DEFAULT NULL,
    `MillLotNo` VARCHAR(150) NULL DEFAULT NULL,
    `PartyLotNo` VARCHAR(150) NULL DEFAULT NULL,
    `SupplierId` INT(11) NOT NULL DEFAULT '0',
    `cUserId` INT(11) NOT NULL DEFAULT 0,
    `cDate` DATE NULL DEFAULT NULL,
  	`cTime` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`CottonTestId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_cotton_test_detail` (
  `CottonTestDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `CottonTestId` INT(11) NOT NULL DEFAULT '0',
  `BaleNo` VARCHAR(150) NULL DEFAULT NULL,
  `c_uhml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_ml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_ul` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_elong` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_strength` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_mic` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_rd` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_bplus` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_cg` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_moist` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_sfi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_risi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_mr` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_Trash` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`CottonTestDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_cotton_test_average` (
  `CottonTestDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `CottonTestId` INT(11) NOT NULL DEFAULT '0',
  `AvgTitle` VARCHAR(150) NULL DEFAULT NULL,
  `c_uhml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_ml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_ul` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_elong` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_strength` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_mic` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_rd` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_bplus` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_cg` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_moist` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_sfi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_risi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_mr` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  `c_Trash` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`CottonTestDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;


  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=291;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=312;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=318;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=324;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=330;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=342;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=372;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=379;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=386;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=393;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=447;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=448;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=449;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=450;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=451;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=452;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=453;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=454;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=455;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=456;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=457;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=458;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=459;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=460;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=461;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=462;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=463;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=464;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=465;
  UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=466;

  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=443;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=444;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=445;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=446;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=488;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=489;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=490;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=491;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=492;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=493;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='1' WHERE  `menu_id`=501;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=502;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=503;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=504;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=505;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=506;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='2' WHERE  `menu_id`=507;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=508;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=509;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=510;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=511;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=512;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='3' WHERE  `menu_id`=513;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=514;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=515;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=516;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=517;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=518;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='4' WHERE  `menu_id`=519;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=520;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=521;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=522;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=523;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=524;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='5' WHERE  `menu_id`=525;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=526;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=527;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=528;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=529;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=530;
  UPDATE `menu` SET `ModuleId`='11', `menu_order`='6' WHERE  `menu_id`=531;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=532;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=533;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=534;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=535;
  UPDATE `menu` SET `ModuleId`='11' WHERE  `menu_id`=536;

  UPDATE `menu` SET `menu_order`='4' WHERE  `menu_id`=189;
  UPDATE `menu` SET `menu_order`='5' WHERE  `menu_id`=79;
  UPDATE `menu` SET `menu_order`='6' WHERE  `menu_id`=432;
  UPDATE `menu` SET `menu_order`='7' WHERE  `menu_id`=469;
  UPDATE `menu` SET `menu_order`='8' WHERE  `menu_id`=475;
  UPDATE `menu` SET `menu_order`='9' WHERE  `menu_id`=206;
  UPDATE `menu` SET `menu_order`='10' WHERE  `menu_id`=200;
  UPDATE `menu` SET `menu_order`='11' WHERE  `menu_id`=212;
  UPDATE `menu` SET `menu_order`='12' WHERE  `menu_id`=365;
  UPDATE `menu` SET `menu_order`='13' WHERE  `menu_id`=218;
  UPDATE `menu` SET `menu_order`='14' WHERE  `menu_id`=420;
  UPDATE `menu` SET `menu_order`='15' WHERE  `menu_id`=482;
  UPDATE `menu` SET `menu_order`='16' WHERE  `menu_id`=539;

  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (564, 2, 0, 'Mixing Test Import', 'Mixing Test Import', NULL, 'mixing_test_import', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (565, 2, 0, 'Listing', 'Listing', NULL, 'listing', 1, 564, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (566, 2, 0, 'Add', 'Add', NULL, 'add', 2, 564, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (567, 2, 0, 'Edit', 'Edit', NULL, 'edit', 3, 564, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (568, 2, 0, 'Delete', 'Delete', NULL, 'delete', 4, 564, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (569, 2, 0, 'View', 'View', NULL, 'View', 5, 564, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

  CREATE TABLE `trn_mixing_test` (
      `MixingTestId` INT(11) NOT NULL AUTO_INCREMENT,
      `TestIdNo` INT(11) NOT NULL DEFAULT '0',
      `TestDate` DATE NULL DEFAULT NULL,
      `MixNo` VARCHAR(150) NULL DEFAULT NULL,
      `Remarks` TEXT NULL DEFAULT NULL,
      `cUserId` INT(11) NOT NULL DEFAULT 0,
      `cDate` DATE NULL DEFAULT NULL,
    	`cTime` TIME NULL DEFAULT NULL,
    PRIMARY KEY (`MixingTestId`)
  )
    COLLATE='utf8_unicode_ci'
    ENGINE=InnoDB;

  CREATE TABLE `trn_mixing_test_detail` (
    `MixingTestDetailId` INT(11) NOT NULL AUTO_INCREMENT,
    `MixingTestId` INT(11) NOT NULL DEFAULT '0',
    `LotNo` VARCHAR(150) NULL DEFAULT NULL,
    `BaleNo` VARCHAR(150) NULL DEFAULT NULL,
    `c_uhml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_ml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_ul` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_elong` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_strength` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_mic` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_rd` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_bplus` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_cg` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_moist` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_sfi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_risi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_mr` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_Trash` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    PRIMARY KEY (`MixingTestDetailId`)
  )
    COLLATE='utf8_unicode_ci'
    ENGINE=InnoDB;

  CREATE TABLE `trn_mixing_test_average` (
    `MixingTestDetailId` INT(11) NOT NULL AUTO_INCREMENT,
    `MixingTestId` INT(11) NOT NULL DEFAULT '0',
    `AvgTitle` VARCHAR(150) NULL DEFAULT NULL,
    `c_uhml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_ml` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_ul` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_elong` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_strength` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_mic` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_rd` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_bplus` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_cg` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_moist` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_sfi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_risi` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_mr` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    `c_Trash` DECIMAL(15,2) NOT NULL DEFAULT '0.000',
    PRIMARY KEY (`MixingTestDetailId`)
  )
    COLLATE='utf8_unicode_ci'
    ENGINE=InnoDB;
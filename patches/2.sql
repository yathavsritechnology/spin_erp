CREATE TABLE IF NOT EXISTS `modules` (
  `ModuleId` INT(5) NOT NULL AUTO_INCREMENT,
  `ModuleName` VARCHAR(255) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
  `ModuleTitle` VARCHAR(255) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
  `ModuleImage` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `ModuleOrder` INT(5) NOT NULL DEFAULT '0',
  `ModuleStatus` ENUM('0','1') NULL DEFAULT '1' COLLATE 'utf8_unicode_ci',
  `IsTop` ENUM('0','1') NOT NULL DEFAULT '1' COLLATE 'utf8_unicode_ci',
  `IsSideMenu` ENUM('0','1') NOT NULL DEFAULT '1' COLLATE 'utf8_unicode_ci',
  `IsFooter` ENUM('0','1') NOT NULL DEFAULT '1' COLLATE 'utf8_unicode_ci',
  PRIMARY KEY (`ModuleId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;


INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitle`, `ModuleImage`, `ModuleOrder`, `ModuleStatus`, `IsTop`, `IsSideMenu`, `IsFooter`) VALUES (1, 'Master', 'Master', NULL, 1, '1', '1', '0', '0');
INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitle`, `ModuleImage`, `ModuleOrder`, `ModuleStatus`, `IsTop`, `IsSideMenu`, `IsFooter`) VALUES (2, 'Transaction', 'Transaction', NULL, 2, '1', '1', '0', '0');
INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitle`, `ModuleImage`, `ModuleOrder`, `ModuleStatus`, `IsTop`, `IsSideMenu`, `IsFooter`) VALUES (3, 'Settings', 'Settings', NULL, 3, '1', '1', '0', '0');

LOCK TABLES `menu` WRITE;
ALTER TABLE `menu`
  CHANGE COLUMN `group_id` `ModuleId` INT NOT NULL DEFAULT '0' AFTER `menu_id`;
ALTER TABLE `menu`
  ADD COLUMN `IsListing` INT(1) NOT NULL DEFAULT '0' AFTER `IsFooter`,
  ADD COLUMN `IsAdd` INT(1) NOT NULL DEFAULT '0' AFTER `IsListing`,
  ADD COLUMN `IsEdit` INT(1) NOT NULL DEFAULT '0' AFTER `IsAdd`,
  ADD COLUMN `IsDelete` INT(1) NOT NULL DEFAULT '0' AFTER `IsEdit`,
  ADD COLUMN `IsView` INT(1) NOT NULL DEFAULT '0' AFTER `IsDelete`,
  ADD COLUMN `IsPrint` INT(1) NOT NULL DEFAULT '0' AFTER `IsView`,
  ADD COLUMN `IsApprove` INT(1) NOT NULL DEFAULT '0' AFTER `IsPrint`,
  ADD COLUMN `IsUnApprove` INT(1) NOT NULL DEFAULT '0' AFTER `IsApprove`,
  ADD COLUMN `IsEmail` INT(1) NOT NULL DEFAULT '0' AFTER `IsUnApprove`,
  ADD COLUMN `IsSMS` INT(1) NOT NULL DEFAULT '0' AFTER `IsEmail`,
  ADD COLUMN `IsExportExcel` INT(1) NOT NULL DEFAULT '0' AFTER `IsSMS`,
  ADD COLUMN `IsExportPDF` INT(1) NOT NULL DEFAULT '0' AFTER `IsExportExcel`;
UNLOCK TABLES;

LOCK TABLES `modules` WRITE;
ALTER TABLE `modules`
  ADD COLUMN `ModuleTemplate` VARCHAR(255) NULL DEFAULT NULL AFTER `ModuleImage`;
UNLOCK TABLES;
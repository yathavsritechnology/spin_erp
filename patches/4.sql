CREATE TABLE IF NOT EXISTS `set_menutemplate` (
  `MenuTemplateId` INT(11) NOT NULL AUTO_INCREMENT,
  `MenuTemplate` VARCHAR(250) NULL DEFAULT NULL,
  `IsActive` INT(1) NULL DEFAULT '1',
  PRIMARY KEY (`MenuTemplateId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;


LOCK TABLES `set_users` WRITE;
ALTER TABLE `set_users`
  ADD COLUMN `MenuTemplateId` INT(11) NULL DEFAULT '0' AFTER `CompanyId`;
UNLOCK TABLES;

LOCK TABLES `privilege` WRITE;
ALTER TABLE `privilege`
  CHANGE COLUMN `privilege_name` `MenuTemplateId` INT(11) NULL DEFAULT '0' AFTER `privilege_id`,
  CHANGE COLUMN `privilege_description` `menu_id` INT NULL DEFAULT '0' AFTER `MenuTemplateId`,
  CHANGE COLUMN `module_name` `IsActive` INT(1) NULL DEFAULT '0' AFTER `menuid`,
  DROP COLUMN `controller_name`;
UNLOCK TABLES;


UPDATE `modules` SET `ModuleOrder`='10' WHERE  `ModuleId`=1;
INSERT INTO `modules` (`ModuleName`, `ModuleTitle`, `ModuleTemplate`, `ModuleOrder`) VALUES ('Payroll', 'Payroll', 'payroll', '2');
UPDATE `modules` SET `ModuleOrder`='20' WHERE  `ModuleId`=5;
UPDATE `modules` SET `ModuleOrder`='30' WHERE  `ModuleId`=2;
UPDATE `modules` SET `ModuleOrder`='90' WHERE  `ModuleId`=4;
UPDATE `modules` SET `ModuleOrder`='100' WHERE  `ModuleId`=3;

INSERT INTO `menu` (`ModuleId`, `menu_name`, `menu_title`, `menu_template`, `menu_order`) VALUES ('1', 'Payroll', 'Payroll', 'payroll', '10');
UPDATE `menu` SET `menu_order`='11' WHERE  `menu_id`=100;
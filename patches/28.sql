ALTER TABLE mas_department ADD COLUMN `IsProduction` INT(1) NULL DEFAULT 1 AFTER `IsActive`;

INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitle`, `ModuleImage`, `ModuleTemplate`, `ModuleOrder`, `ModuleStatus`, `IsTop`, `IsSideMenu`, `IsFooter`) VALUES (12, 'Schedule', 'Schedule', NULL, 'schedule', 32, '1', '1', '0', '0');

CREATE TABLE `mas_workmastertime` (
	`WorkMasterTimeId` INT(11) NOT NULL AUTO_INCREMENT,
	`WorkMasterTime` VARCHAR(250) NULL DEFAULT NULL,
	`IsActive` INT(1) NULL DEFAULT 1,
	PRIMARY KEY (`WorkMasterTimeId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (1, 'Daily', 1);
INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (2, 'Days', 0);
INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (3, 'Weekly', 1);
INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (4, 'Monthly', 1);
INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (5, 'Yearly', 1);
INSERT INTO `mas_workmastertime` (`WorkMasterTimeId`, `WorkMasterTime`, `IsActive`) VALUES (6, 'Custom Days', 1);


CREATE TABLE `mas_workmasterstatus` (
	`StatusId` INT(11) NOT NULL AUTO_INCREMENT,
	`WorkStatus` VARCHAR(250) NULL DEFAULT '0',
	`IsActive` INT(1) NULL DEFAULT 1,
	PRIMARY KEY (`StatusId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (1, 'Open', 1);
INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (2, 'Assigned', 0);
INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (3, 'In Progress', 0);
INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (4, 'Hold', 0);
INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (5, 'Postponed', 1);
INSERT INTO `mas_workmasterstatus` (`StatusId`, `WorkStatus`, `IsActive`) VALUES (6, 'Completed', 1);

CREATE TABLE `mas_priority` (
	`PriorityId` INT(11) NOT NULL AUTO_INCREMENT,
	`PriorityName` VARCHAR(250) NULL DEFAULT NULL,
	`IsActive` INT(1) NULL DEFAULT 1,
	PRIMARY KEY (`PriorityId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `mas_priority` (`PriorityId`, `PriorityName`, `IsActive`) VALUES (1, 'High', 1);
INSERT INTO `mas_priority` (`PriorityId`, `PriorityName`, `IsActive`) VALUES (2, 'Medium', 1);
INSERT INTO `mas_priority` (`PriorityId`, `PriorityName`, `IsActive`) VALUES (3, 'Low', 1);

CREATE TABLE `trn_workmaster` (
	`WorkMasterId` INT(11) NOT NULL AUTO_INCREMENT,
	`EffDate` DATE NULL DEFAULT '2015-01-01',
	`WorkMasterName` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`WorkMasterCode` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`FromDepartmentId` INT(11) NULL DEFAULT 0,
	`ToDepartmentId` INT(11) NULL DEFAULT 0,
	`PeriodId` INT(11) NULL DEFAULT 0,
	`TermsDet` TEXT NULL DEFAULT NULL,
	`ConditionInfo` TEXT NULL DEFAULT NULL,
	`IsActive` INT(11) NULL DEFAULT 1,
	`EmployeeId` INT(11) NULL DEFAULT 0,
	`PriorityId` INT(11) NULL DEFAULT 0,
	`StatusId` INT(11) NULL DEFAULT 1,
	`Freq` INT(11) NULL DEFAULT 0,
	`Tolerance` INT(11) NULL DEFAULT 0,
	`IsApproved` INT(1) NULL DEFAULT 0,
	`cUserId` INT(11) NULL DEFAULT 0,
    `cDate` DATE NULL DEFAULT NULL,
    `cTime` TIME NULL DEFAULT NULL,
	PRIMARY KEY (`WorkMasterId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

CREATE TABLE `trn_workmasterdetail` (
	`WorkMasterDetailId` INT(11) NOT NULL AUTO_INCREMENT,
	`WorkMasterId` INT(11) NOT NULL DEFAULT 0,
	`PeriodId` INT(11) NOT NULL DEFAULT 0,
	`WorkDt` DATE NULL DEFAULT NULL,
	`WmStartTime` TIME NULL DEFAULT NULL,
	`WmEndTime` TIME NULL DEFAULT NULL,
	`WmDay` INT(2) NULL DEFAULT 0,
	`WmMonth` INT(2) NULL DEFAULT 0,
	`WmYear` INT(2) NULL DEFAULT 0,
	`WmWeek` VARCHAR(250) NULL DEFAULT NULL,
	`IsActive` INT(1) NULL DEFAULT 1,
	PRIMARY KEY (`WorkMasterDetailId`),
	INDEX `FK_trn_workmasterdetail_trn_workmaster` (`WorkMasterId`),
	CONSTRAINT `FK_trn_workmasterdetail_trn_workmaster` FOREIGN KEY (`WorkMasterId`) REFERENCES `trn_workmaster` (`WorkMasterId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

CREATE TABLE `trn_workmastermachine` (
	`WorkMasterMachineId` INT(11) NOT NULL AUTO_INCREMENT,
	`WorkMasterId` INT(11) NOT NULL DEFAULT 0,
	`MachineId` INT(11) NOT NULL DEFAULT 0,
	`PeriodId` INT(11) NOT NULL DEFAULT 0,
	`WorkDt` DATE NULL DEFAULT NULL,
	`WmDay` INT(2) NULL DEFAULT 0,
	`WmMonth` INT(2) NULL DEFAULT 0,
	`WmYear` INT(2) NULL DEFAULT 0,
	`WmWeek` VARCHAR(250) NULL DEFAULT NULL,
	`IsActive` INT(1) NULL DEFAULT 1,
	PRIMARY KEY (`WorkMasterMachineId`),
	INDEX `FK_trn_workmastermachine_trn_workmaster` (`WorkMasterId`),
	CONSTRAINT `FK_trn_workmastermachine_trn_workmaster` FOREIGN KEY (`WorkMasterId`) REFERENCES `trn_workmaster` (`WorkMasterId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (604, 12, 0, 'Work Master', 'Work Master', NULL, 'work_master', 1, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (605, 12, 0, 'Listing', 'Listing', NULL, 'listing', 1, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (606, 12, 0, 'Add', 'Add', NULL, 'add', 2, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (607, 12, 0, 'Edit', 'Edit', NULL, 'edit', 3, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (608, 12, 0, 'Delete', 'Delete', NULL, 'delete', 4, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (609, 12, 0, 'View', 'View', NULL, 'View', 5, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (610, 12, 0, 'Print', 'Print', NULL, 'Print', 6, 604, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (611, 12, 0, 'Schedule List', 'Schedule List', NULL, 'schedule_list', 2, 0, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (612, 12, 0, 'Listing', 'Listing', NULL, 'listing', 1, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (613, 12, 0, 'Add', 'Add', NULL, 'add', 2, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (614, 12, 0, 'Edit', 'Edit', NULL, 'edit', 3, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (615, 12, 0, 'Delete', 'Delete', NULL, 'delete', 4, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (616, 12, 0, 'View', 'View', NULL, 'View', 5, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (617, 12, 0, 'Print', 'Print', NULL, 'Print', 6, 611, '_self', '0', '1', NULL, '0', 1, '1', '0', '0', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `trn_workstatus` (
	`WorkStatusId` INT(11) NOT NULL AUTO_INCREMENT,
	`WorkListDate` DATE NULL DEFAULT NULL,
	`WorkMasterId` INT(11) NULL DEFAULT 0,
	`WorkMasterDetailId` INT(11) NULL DEFAULT 0,
	`WorkMasterMachineId` INT(11) NULL DEFAULT 0,
	`StartTime` TIME NULL DEFAULT NULL,
	`EndTime` TIME NULL DEFAULT NULL,
	`StatusId` INT(11) NULL DEFAULT 0,
	`EmpCode` INT(11) NULL DEFAULT 0,
	`ReportingToId` INT(11) NULL DEFAULT 0,
	`WComments` TEXT NULL DEFAULT NULL,
	`StartDate` DATE NULL DEFAULT NULL,
	`CompDate` DATE NULL DEFAULT NULL,
	`CompTime` TIME NULL DEFAULT NULL,
	`IsApproved` INT(11) NULL DEFAULT 0,
	`AppDate` DATE NULL DEFAULT NULL,
	`AppTime` TIME NULL DEFAULT NULL,
	`Id` INT(11) NULL DEFAULT 0,
	`FileName` TEXT NULL DEFAULT NULL,
	`StatusRemarks` TEXT NULL DEFAULT NULL,
	PRIMARY KEY (`WorkStatusId`),
	INDEX `FK_trn_workstatus_trn_workmasterdetail` (`WorkMasterId`),
	CONSTRAINT `FK_trn_workstatus_trn_workmasterdetail` FOREIGN KEY (`WorkMasterId`) REFERENCES `trn_workmasterdetail` (`WorkMasterDetailId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;
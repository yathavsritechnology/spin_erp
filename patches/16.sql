ALTER TABLE `mas_itemgroup` ADD COLUMN `IsFormula` INT(1) NULL DEFAULT '0' AFTER `GroupDescription`;

ALTER TABLE `trn_cottoninward`
	ADD COLUMN `MoistureRegain` DECIMAL(15,3) NULL DEFAULT '0' AFTER `IsIgstFormat`,
	ADD COLUMN `AverageMoisture` DECIMAL(15,3) NULL DEFAULT '0' AFTER `MoistureRegain`;
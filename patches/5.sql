ALTER TABLE `trn_drawing`
	ADD COLUMN `DrawingNo` INT(11) NOT NULL DEFAULT '0' AFTER `DrawingId`;

  ALTER TABLE `trn_comper`
	ADD COLUMN `ComperNo` INT(11) NOT NULL DEFAULT '0' AFTER `ComperId`;

  ALTER TABLE `trn_simplex`
	ADD COLUMN `SimplexNo` INT(11) NOT NULL DEFAULT '0' AFTER `SimplexId`;

  ALTER TABLE `mas_counts`
	CHANGE COLUMN `CountsConst` `CountsConst` DECIMAL(10,2) NULL DEFAULT '0.00' AFTER `AvgSpeed`,
	ADD COLUMN `ConeWt` DECIMAL(15,3) NULL DEFAULT '0.00' AFTER `CountsConst`;


  ALTER TABLE `mas_counts`
  	CHANGE COLUMN `CountsConst` `CountsConst` DECIMAL(10,2) NULL DEFAULT '0.00' AFTER `AvgSpeed`,
  	ADD COLUMN `ConeWt` DECIMAL(15,3) NULL DEFAULT '0.00' AFTER `CountsConst`;

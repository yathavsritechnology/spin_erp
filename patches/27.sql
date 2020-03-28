CREATE TABLE `mas_baleposition` (
    `BalePositionId` INT(11) NOT NULL AUTO_INCREMENT,
    `BalePositionName` VARCHAR(200) NULL DEFAULT NULL,
    `IsActive` INT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`BalePositionId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

  INSERT INTO `mas_baleposition` (`BalePositionId`, `BalePositionName`, `IsActive`) VALUES ('1', 'HORIZONTAL', '1');
  INSERT INTO `mas_baleposition` (`BalePositionId`, `BalePositionName`, `IsActive`) VALUES ('2', 'VERTICAL', '1');

CREATE TABLE `trn_balechart` (
    `BaleChartId` INT(11) NOT NULL AUTO_INCREMENT,
    `BaleArrId` INT(11) NOT NULL DEFAULT '0',
    `BacDate` DATE NULL DEFAULT NULL,
    `cUserId` INT(11) NOT NULL DEFAULT 0,
    `cDate` DATE NULL DEFAULT NULL,
  	`cTime` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`BaleChartId`),
	INDEX `FK_trn_balechart_trn_balearr` (`BaleArrId`),
	CONSTRAINT `FK_trn_balechart_trn_balearr` FOREIGN KEY (`BaleArrId`) REFERENCES `trn_balearr` (`BaleArrId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_balechartdetail` (
	`BaleChartDetailId` INT(11) NOT NULL AUTO_INCREMENT,
	`BalePositionId` INT(11) NOT NULL DEFAULT 0,
	`BaleChartId` INT(11) NOT NULL DEFAULT 0,
	`BaleArrId` INT(11) NOT NULL DEFAULT 0,
	`BaleArrDetailId` INT(11) NOT NULL DEFAULT 0,
	`CiDetailId` INT(11) NOT NULL DEFAULT 0,
	`CiId` INT(11) NOT NULL DEFAULT 0,
	`SupplierId` INT(11) NOT NULL DEFAULT 0,
	`MillLotNo` VARCHAR(150) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`PartyLotNo` VARCHAR(150) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`BaleNo` VARCHAR(150) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	PRIMARY KEY (`BaleChartDetailId`),
	INDEX `FK_trn_balechartdetail_mas_baleposition` (`BalePositionId`),
	INDEX `FK_trn_balechartdetail_trn_balechart` (`BaleChartId`),
	INDEX `FK_trn_balechartdetail_trn_balearr` (`BaleArrId`),
	INDEX `FK_trn_balechartdetail_trn_balearr_detail` (`BaleArrDetailId`),
	INDEX `FK_trn_balechartdetail_trn_cottoninwarddetail` (`CiDetailId`),
	CONSTRAINT `FK_trn_balechartdetail_mas_baleposition` FOREIGN KEY (`BalePositionId`) REFERENCES `mas_baleposition` (`BalePositionId`),
	CONSTRAINT `FK_trn_balechartdetail_trn_balearr` FOREIGN KEY (`BaleArrId`) REFERENCES `trn_balearr` (`BaleArrId`),
	CONSTRAINT `FK_trn_balechartdetail_trn_balearr_detail` FOREIGN KEY (`BaleArrDetailId`) REFERENCES `trn_balearr_detail` (`BaleArrDetailId`),
	CONSTRAINT `FK_trn_balechartdetail_trn_balechart` FOREIGN KEY (`BaleChartId`) REFERENCES `trn_balechart` (`BaleChartId`),
	CONSTRAINT `FK_trn_balechartdetail_trn_cottoninwarddetail` FOREIGN KEY (`CiDetailId`) REFERENCES `trn_cottoninwarddetail` (`CiDetailId`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;
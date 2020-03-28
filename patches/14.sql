CREATE TABLE `trn_blendingreturn` (
  `BlendingReturnId` INT(11) NOT NULL AUTO_INCREMENT,
  `ReturnNo` VARCHAR(50) NULL DEFAULT NULL,
  `ReturnDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `TotalKgs` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalBags` DECIMAL(10,3) NULL DEFAULT '0.00',
  `TotalNos` DECIMAL(10,2) NULL DEFAULT '0.00',
  `TotalAmount` DECIMAL(10,2) NULL DEFAULT '0.00',
  `retRemarks` TEXT NULL,
  `cUserId` INT(11) NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`BlendingReturnId`)
)COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_blendingreturndetail` (
  `BlendingReturnDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `BlendingReturnId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `ReturnQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReturnsQty` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReturnBag` DECIMAL(10,3) NULL DEFAULT '0.000',
  `ReturnRate` DECIMAL(10,2) NULL DEFAULT '0.00',
  `ReturnAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `LotNo` VARCHAR(50) NULL DEFAULT 'NULL',
  PRIMARY KEY (`BlendingReturnDetailId`)
)
  COLLATE='utf8_unicode_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_blendingreturn` WRITE;
ALTER TABLE `trn_blendingreturn` ADD CONSTRAINT `FK_trn_blendingreturn_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_blendingreturn` ADD CONSTRAINT `FK_trn_blendingreturn_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_blendingreturn` ADD CONSTRAINT `FK_trn_blendingreturn_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_blendingreturndetail` WRITE;
ALTER TABLE `trn_blendingreturndetail` ADD CONSTRAINT `FK_trn_blendingreturndetail_trn_blendingreturn` FOREIGN KEY (`BlendingReturnId`) REFERENCES `trn_blendingreturn` (`BlendingReturnId`);
ALTER TABLE `trn_blendingreturndetail` ADD CONSTRAINT `FK_trn_blendingreturndetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_blendingreturndetail` ADD CONSTRAINT `FK_trn_blendingreturndetail_mas_uom` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`);
UNLOCK TABLES;
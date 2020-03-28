CREATE TABLE `trn_purchaseinward` (
  `PurchaseInwardId` INT(11) NOT NULL AUTO_INCREMENT,
  `PiNo` INT(11) NULL DEFAULT '0',
  `PiDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `PoId` INT(11) NULL DEFAULT '0',
  `SupDcNo` VARCHAR(300) NULL DEFAULT NULL,
  `SupDcDt` VARCHAR(300) NULL DEFAULT NULL,
  `DocNo` VARCHAR(200) NULL DEFAULT NULL,
  `DocDate` VARCHAR(100) NULL DEFAULT NULL,
  `piTotalQty` DECIMAL(15,3) NULL DEFAULT '0.000',
  `piTotalAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `SgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piTaxAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piPackingCharge` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piAddAmt` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piLessAmt` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piNetAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piRoundOff` DECIMAL(15,2) NULL DEFAULT '0.00',
  `GrandTotal` DECIMAL(15,2) NULL DEFAULT '0.00',
  `PiRemarks` TEXT NULL,
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `cUserId` INT(11) NULL DEFAULT '0',
  `aDate` DATE NULL DEFAULT NULL,
  `aTime` TIME NULL DEFAULT NULL,
  `aUserId` INT(11) NULL DEFAULT '0',
  `aRemarks` TEXT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `DepartmentId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  `LinkId` INT(11) NULL DEFAULT '2',
  `BillOfEntry` VARCHAR(200) NULL DEFAULT NULL,
  `PortCode` VARCHAR(200) NULL DEFAULT NULL,
  `BlNo` VARCHAR(200) NULL DEFAULT NULL,
  `PortOfOrgin` VARCHAR(200) NULL DEFAULT NULL,
  `TotalDiscount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `TotalAfterDiscount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CashOrCredit` INT(1) NULL DEFAULT '2',
  PRIMARY KEY (`PurchaseInwardId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;


CREATE TABLE `trn_purchaseinwarddetail` (
  `PurchaseInwardDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `PurchaseInwardId` INT(11) NULL DEFAULT '0',
  `PodId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `piQty` DECIMAL(15,3) NULL DEFAULT '0.000',
  `piRate` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `TaxId` INT(11) NULL DEFAULT '0',
  `SgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `SgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `ItemTotalAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `TaxableValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `Discount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `DiscountAfter` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IsTaxable` INT(1) NULL DEFAULT '0',
  `IsOtherItem` INT(1) NULL DEFAULT '0',
  PRIMARY KEY (`PurchaseInwardDetailId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_purchaseorder` (
  `PoId` INT(11) NOT NULL AUTO_INCREMENT,
  `PoNo` INT(11) NULL DEFAULT '0',
  `PoDate` DATE NULL DEFAULT NULL,
  `SupplierId` INT(11) NULL DEFAULT '0',
  `poTotalQty` DECIMAL(15,3) NULL DEFAULT '0.000',
  `poTotalAmount` DECIMAL(15,3) NULL DEFAULT '0.000',
  `CgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `SgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piTaxAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piPackingCharge` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piAddAmt` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piLessAmt` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piNetAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `piRoundOff` DECIMAL(15,2) NULL DEFAULT '0.00',
  `GrandTotal` DECIMAL(15,2) NULL DEFAULT '0.00',
  `PoRemarks` TEXT NULL,
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `cUserId` INT(11) NULL DEFAULT '0',
  `aStatusId` INT(11) NULL DEFAULT '0',
  `aDate` DATE NULL DEFAULT NULL,
  `aTime` TIME NULL DEFAULT NULL,
  `aUserId` INT(11) NULL DEFAULT '0',
  `aRemarks` TEXT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `DepartmentId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  `IsCompleted` INT(1) NULL DEFAULT '0',
  `DeliveryDate` DATE NULL DEFAULT NULL,
  `PayTerms` TEXT NULL,
  `TaxPatternId` INT(11) NULL DEFAULT '0',
  `TransportMode` TEXT NULL,
  `Guarantee` TEXT NULL,
  `DeliverySchedule` TEXT NULL,
  `DeliveryPoint` TEXT NULL,
  `RefNo` VARCHAR(50) NULL DEFAULT NULL,
  `RefDate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`PoId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_purchaseorderdetail` (
  `PodId` INT(11) NOT NULL AUTO_INCREMENT,
  `PoId` INT(11) NULL DEFAULT '0',
  `ItemId` INT(11) NULL DEFAULT '0',
  `bUomId` INT(11) NULL DEFAULT '0',
  `sUomId` INT(11) NULL DEFAULT '0',
  `poQty` DECIMAL(15,3) NULL DEFAULT '0.000',
  `poRate` DECIMAL(15,3) NULL DEFAULT '0.000',
  `poAmount` DECIMAL(15,3) NULL DEFAULT '0.000',
  `TaxId` INT(11) NULL DEFAULT '0',
  `SgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `SgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `CgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstPer` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IgstValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `ItemTotalAmount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `TaxableValue` DECIMAL(15,2) NULL DEFAULT '0.00',
  `Discount` DECIMAL(15,2) NULL DEFAULT '0.00',
  `IsTaxable` INT(1) NULL DEFAULT '0',
  PRIMARY KEY (`PodId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_spinning` (
  `SpinningId` INT(11) NOT NULL AUTO_INCREMENT,
  `ShiftId` INT(11) NOT NULL DEFAULT '0',
  `MachineId` INT(11) NOT NULL DEFAULT '0',
  `EmpCode` INT(11) NOT NULL DEFAULT '0',
  `CountsId` INT(11) NOT NULL DEFAULT '0',
  `AverageSpeed` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `ActualHunk` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `WastageKg` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `DoffValue` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `DoffTime` DECIMAL(15,2) NOT NULL DEFAULT '0.00',
  `TotalStopageTime` DECIMAL(11,2) NOT NULL DEFAULT '0.00',
  `cUserId` INT(11) NOT NULL DEFAULT '0',
  `cDate` DATE NULL DEFAULT NULL,
  `cTime` TIME NULL DEFAULT NULL,
  `CompanyId` INT(11) NULL DEFAULT '0',
  `FinancialYearId` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`SpinningId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

CREATE TABLE `trn_spinningstopage` (
  `SpinningStopageId` INT(11) NOT NULL AUTO_INCREMENT,
  `SpinningId` INT(11) NOT NULL DEFAULT '0',
  `ErrorId` INT(11) NOT NULL DEFAULT '0',
  `StopageTime` DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`SpinningStopageId`)
)
  COLLATE='latin1_swedish_ci'
  ENGINE=InnoDB;

LOCK TABLES `trn_purchaseinward` WRITE;
ALTER TABLE `trn_purchaseinward` ADD CONSTRAINT `FK_trn_purchaseinward_mas_department` FOREIGN KEY (`DepartmentId`) REFERENCES `mas_department` (`DepartmentId`);
ALTER TABLE `trn_purchaseinward` ADD CONSTRAINT `FK_trn_purchaseinward_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_purchaseinward` ADD CONSTRAINT `FK_trn_purchaseinward_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_purchaseinward` ADD CONSTRAINT `FK_trn_purchaseinward_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_purchaseinwarddetail` WRITE;
ALTER TABLE `trn_purchaseinwarddetail` ADD CONSTRAINT `FK_trn_pidd_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_purchaseinwarddetail` ADD CONSTRAINT `FK_trn_pidd_mas_uom_b` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`);
ALTER TABLE `trn_purchaseinwarddetail` ADD CONSTRAINT `FK_trn_pidd_mas_uom_s` FOREIGN KEY (`sUomId`) REFERENCES `mas_uom` (`UomId`);
ALTER TABLE `trn_purchaseinwarddetail` ADD CONSTRAINT `FK_trn_pidd_trn_pod` FOREIGN KEY (`PurchaseInwardId`) REFERENCES `trn_purchaseinward` (`PurchaseInwardId`);
UNLOCK TABLES;

LOCK TABLES `trn_purchaseorder` WRITE;
ALTER TABLE `trn_purchaseorder` ADD CONSTRAINT `FK_trn_purchaseorder_mas_department` FOREIGN KEY (`DepartmentId`) REFERENCES `mas_department` (`DepartmentId`);
ALTER TABLE `trn_purchaseorder` ADD CONSTRAINT `FK_trn_purchaseorder_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_purchaseorder` ADD CONSTRAINT `FK_trn_purchaseorder_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_purchaseorder` ADD CONSTRAINT `FK_trn_purchaseorder_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_purchaseorderdetail` WRITE;
ALTER TABLE `trn_purchaseorderdetail` ADD CONSTRAINT `FK_trn_pod_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_purchaseorderdetail` ADD CONSTRAINT `FK_trn_pod_mas_uom_b` FOREIGN KEY (`bUomId`) REFERENCES `mas_uom` (`UomId`);
ALTER TABLE `trn_purchaseorderdetail` ADD CONSTRAINT `FK_trn_pod_mas_uom_s` FOREIGN KEY (`sUomId`) REFERENCES `mas_uom` (`UomId`);
ALTER TABLE `trn_purchaseorderdetail` ADD CONSTRAINT `FK_trn_pod_trn_pod` FOREIGN KEY (`PoId`) REFERENCES `trn_purchaseorder` (`PoId`);
UNLOCK TABLES;
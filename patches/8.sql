
LOCK TABLES `trn_supplierpgmplan` WRITE;
ALTER TABLE `trn_supplierpgmplan` ADD CONSTRAINT `FK_trn_supplierpgmplan_mas_supplier` FOREIGN KEY (`SupplierId`) REFERENCES `mas_supplier` (`SupplierId`);
ALTER TABLE `trn_supplierpgmplan` ADD CONSTRAINT `FK_trn_supplierpgmplan_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
ALTER TABLE `trn_supplierpgmplan` ADD CONSTRAINT `FK_trn_supplierpgmplan_set_company` FOREIGN KEY (`CompanyId`) REFERENCES `set_company` (`CompanyId`);
ALTER TABLE `trn_supplierpgmplan` ADD CONSTRAINT `FK_trn_supplierpgmplan_set_financialyear` FOREIGN KEY (`FinancialYearId`) REFERENCES `set_financialyear` (`FinancialYearId`);
UNLOCK TABLES;

LOCK TABLES `trn_supplierpgmplandetail` WRITE;
ALTER TABLE `trn_supplierpgmplandetail` ADD CONSTRAINT `FK_trn_supplierpgmplandetail_trn_supplierpgmplan` FOREIGN KEY (`SupplierPgmPlanId`) REFERENCES `trn_supplierpgmplan` (`SupplierPgmPlanId`);
ALTER TABLE `trn_supplierpgmplandetail` ADD CONSTRAINT `FK_trn_supplierpgmplandetail_trn_cottoninwarddetail` FOREIGN KEY (`CiDetailId`) REFERENCES `trn_cottoninwarddetail` (`CiDetailId`);
ALTER TABLE `trn_supplierpgmplandetail` ADD CONSTRAINT `FK_trn_supplierpgmplandetail_trn_cottoninward` FOREIGN KEY (`CiId`) REFERENCES `trn_cottoninward` (`CiId`);
ALTER TABLE `trn_supplierpgmplandetail` ADD CONSTRAINT `FK_trn_supplierpgmplandetail_mas_item` FOREIGN KEY (`ItemId`) REFERENCES `mas_item` (`ItemId`);
UNLOCK TABLES;
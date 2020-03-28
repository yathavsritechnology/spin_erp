LOCK TABLES `trn_cottoninward` WRITE;
ALTER TABLE `trn_cottoninward`
  ADD COLUMN `TotalSupplierTareWt` DECIMAL(15,3) NULL DEFAULT '0.000' AFTER `TotalSupplierWt`,
  ADD COLUMN `TotalSupplierNetWt` DECIMAL(15,3) NULL DEFAULT '0.000' AFTER `TotalSupplierTareWt`,
  ADD COLUMN `SupplierInvoiceAmount` DECIMAL(15,2) NULL DEFAULT '0.000' AFTER `TotalSupplierNetWt`,
  ADD COLUMN `TotalMillsTareWt` DECIMAL(15,3) NULL DEFAULT '0.000' AFTER `TotalMillsWt`,
  ADD COLUMN `TotalMillsNetWt` DECIMAL(15,3) NULL DEFAULT '0.000' AFTER `TotalMillsTareWt`,
  ADD COLUMN `BalesRate` DECIMAL(15,2) NULL DEFAULT '0.000' AFTER `TotalMillsNetWt`,
  ADD COLUMN `InwardAmount` DECIMAL(15,2) NULL DEFAULT '0.000' AFTER `BalesRate`,
  ADD COLUMN `DiffAmount` DECIMAL(15,2) NULL DEFAULT '0.00' AFTER `LossPer`;
UNLOCK TABLES;


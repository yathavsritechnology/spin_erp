CREATE TABLE `mas_itemtypecategory` (
  `CategoryId` INT NOT NULL AUTO_INCREMENT,
  `CategoryName` VARCHAR(250) NULL DEFAULT NULL,
  `IsActive` INT(1) NULL DEFAULT '1',
  PRIMARY KEY (`CategoryId`)
)
  COLLATE='utf8_unicode_ci';
ALTER TABLE `mas_itemtypecategory` ADD INDEX `CategoryName` (`CategoryName`);

INSERT INTO `mas_itemtypecategory` (`CategoryId`, `CategoryName`, `IsActive`) VALUES (1, 'RAW MATERIAL', 1);
INSERT INTO `mas_itemtypecategory` (`CategoryId`, `CategoryName`, `IsActive`) VALUES (2, 'PRODUCTION', 1);
INSERT INTO `mas_itemtypecategory` (`CategoryId`, `CategoryName`, `IsActive`) VALUES (3, 'FINISHED PRODUCT', 1);


ALTER TABLE `mas_itemtype` ADD COLUMN `CategoryId` INT(11) NOT NULL DEFAULT '0' AFTER `ItemTypeId`;


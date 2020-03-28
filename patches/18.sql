
UPDATE `menu` SET `menu_name`='Production Report', `menu_title`='Production Report' WHERE  `menu_id`=401;


INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (438, 2, 423, 'Carding - Summary', 'Carding - Summary', NULL, 'carding_summary', 8, 400, '_self', '0', '1', NULL, '0', 1, '0', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (439, 2, 423, 'Carding - Detail', 'Carding - Detail', NULL, 'carding_detail', 9, 400, '_self', '0', '1', NULL, '0', 1, '0', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `menu_name`, `menu_title`, `menu_template`, `menu_order`, `menu_status`) VALUES (442, '10', 'Mis', 'Mis', 'report', '2', '0');

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (440, 10, 442, 'Prod Analysis - Summary', 'Prod Analysis - Summary', NULL, 'production_analysis_sum', 22, 400, '_self', '0', '1', NULL, '0', 1, '0', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `menu` (`menu_id`, `ModuleId`, `role_id`, `menu_name`, `menu_title`, `menu_image`, `menu_template`, `menu_order`, `parent`, `target`, `menu_default`, `menu_status`, `external_link`, `show_after_login`, `entry_by`, `IsTop`, `IsSideMenu`, `IsFooter`, `IsListing`, `IsAdd`, `IsEdit`, `IsDelete`, `IsView`, `IsPrint`, `IsApprove`, `IsUnApprove`, `IsEmail`, `IsSMS`, `IsExportExcel`, `IsExportPDF`, `IsImport`) VALUES (441, 10, 442, 'Prod Analysis - Detail', 'Prod Analysis - Detail', NULL, 'production_analysis_det', 22, 400, '_self', '0', '1', NULL, '0', 1, '0', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);



UPDATE `menu` SET `menu_order`='10' WHERE  `menu_id`=408;
UPDATE `menu` SET `menu_order`='11' WHERE  `menu_id`=409;
UPDATE `menu` SET `menu_order`='12' WHERE  `menu_id`=410;
UPDATE `menu` SET `menu_order`='13' WHERE  `menu_id`=411;
UPDATE `menu` SET `menu_order`='14' WHERE  `menu_id`=412;
UPDATE `menu` SET `menu_order`='15' WHERE  `menu_id`=413;
UPDATE `menu` SET `menu_order`='16' WHERE  `menu_id`=414;
UPDATE `menu` SET `menu_order`='17' WHERE  `menu_id`=415;
UPDATE `menu` SET `menu_order`='18' WHERE  `menu_id`=416;
UPDATE `menu` SET `menu_order`='19' WHERE  `menu_id`=417;
UPDATE `menu` SET `menu_order`='20' WHERE  `menu_id`=418;
UPDATE `menu` SET `menu_order`='21' WHERE  `menu_id`=419;
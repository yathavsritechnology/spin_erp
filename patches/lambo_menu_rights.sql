/* Sales */
UPDATE `modules` SET `ModuleStatus`='0' WHERE  `ModuleId`=7;
/* Purchase */
UPDATE `modules` SET `ModuleStatus`='0' WHERE  `ModuleId`=8;
/* Accounts */
UPDATE `modules` SET `ModuleStatus`='0' WHERE  `ModuleId`=9;


/* Purchase Order */
UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=268;
/* Purchase Inward */
UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=274;
/* General Inward */
UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=280;
/* Credit Note */
UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=297;
/* Debit Note */
UPDATE `menu` SET `menu_status`='0' WHERE  `menu_id`=303;
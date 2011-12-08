CREATE  TABLE `sshop`.`shop_email` (

  `ID` BIGINT(10) NOT NULL ,

  `name` VARCHAR(100) NULL ,

  `createData` DATETIME NULL ,

  `updateDate` DATETIME NULL ,

  `email_address` VARCHAR(100) NULL ,

  PRIMARY KEY (`ID`) );

  ALTER TABLE `sshop`.`shop_email` CHANGE COLUMN `ID` `ID` BIGINT(10) NOT NULL AUTO_INCREMENT  ;

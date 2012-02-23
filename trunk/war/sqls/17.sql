CREATE  TABLE `sshop`.`SHOP_Coupon` (

  `ID` BIGINT(10) NOT NULL ,

  `name` VARCHAR(100) NULL ,

  `createDate` DATETIME,

  `updateDate` DATETIME ,

  `componentStatus`  ,
  
  `value` float  ,
  
  `cutOff` boolean ,
  
  `onetime` boolean ,
  
  `usedCount` int ,
   
    `startDate`DATETIME  ,
    
     `endTime` DATETIME,

  PRIMARY KEY (`ID`) );

  ALTER TABLE `sshop`.`shop_email` CHANGE COLUMN `ID` `ID` BIGINT(10) NOT NULL AUTO_INCREMENT  ;

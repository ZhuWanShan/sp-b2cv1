CREATE  TABLE `sshop`.`SHOP_Coupon_01` (

  `ID` BIGINT(10) auto_increment,

  `name` VARCHAR(100) NULL ,
  
  `code` VARCHAR(100) NOT NULL ,

  `createDate` DATETIME,

  `updateDate` DATETIME ,

  `componentStatus` int ,
  
  `value` float  ,
  
  `cutOff` boolean ,
  
  `onetime` boolean ,
  
  `usedCount` int ,
   
    `startDate`DATETIME  ,
    
     `endTime` DATETIME,

  PRIMARY KEY (`ID`) );
  
  
  ALTER TABLE SHOP_Order ADD COLUMN(couponCode varchar(100));
    ALTER TABLE SHOP_Order ADD COLUMN(couponCutOff float);
/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : sshop

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-08-29 23:31:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `shop_tabproduct`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabproduct`;
CREATE TABLE `shop_tabproduct` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `shop_tabselling`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabselling`;
CREATE TABLE `shop_tabselling` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_tabselling
-- ----------------------------

-- ----------------------------
-- Table structure for `tab_product`
-- ----------------------------
DROP TABLE IF EXISTS `tab_product`;
CREATE TABLE `tab_product` (
  `tab_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  KEY `FK43C4CE45B0F999F2` (`tab_id`),
  KEY `FK43C4CE45582107E7` (`product_id`),
  CONSTRAINT `FK43C4CE45582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK43C4CE45B0F999F2` FOREIGN KEY (`tab_id`) REFERENCES `shop_tabproduct` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `tab_product_selling`
-- ----------------------------
DROP TABLE IF EXISTS `tab_product_selling`;
CREATE TABLE `tab_product_selling` (
  `selling_id` bigint(20) NOT NULL,
  `t_product_id` bigint(20) NOT NULL,
  KEY `FK4A030F5687682EB8` (`selling_id`),
  KEY `FK4A030F56582107E7` (`t_product_id`),
  CONSTRAINT `FK4A030F56582107E7` FOREIGN KEY (`t_product_id`) REFERENCES `shop_tabproduct` (`ID`),
  CONSTRAINT `FK4A030F5687682EB8` FOREIGN KEY (`selling_id`) REFERENCES `shop_tabselling` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_product_selling
-- ----------------------------

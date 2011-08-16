/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : sshop

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-08-16 22:28:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `shop_address`
-- ----------------------------
DROP TABLE IF EXISTS `shop_address`;
CREATE TABLE `shop_address` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC257578BBF627AED` (`site_id`),
  CONSTRAINT `FKC257578BBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_address
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `specialOffer_image` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `relatedKeyword` varchar(255) DEFAULT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `specialOffer` bit(1) DEFAULT NULL,
  `marketContent` longtext,
  PRIMARY KEY (`ID`),
  KEY `FKD43A7447C7120C87` (`specialOffer_image`),
  KEY `FKD43A7447BF627AED` (`site_id`),
  KEY `FKD43A7447BF210EE1` (`parent_id`),
  CONSTRAINT `FKD43A7447BF210EE1` FOREIGN KEY (`parent_id`) REFERENCES `shop_category` (`ID`),
  CONSTRAINT `FKD43A7447BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FKD43A7447C7120C87` FOREIGN KEY (`specialOffer_image`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('1', 'home', '2011-08-11 20:56:03', '2011-08-11 20:56:03', null, null, 'Home', null, '/', '', '', '', 'Home');
INSERT INTO `shop_category` VALUES ('2', 'weddingdre2011col', '2011-07-27 17:06:16', '2011-08-06 18:14:35', null, '65', 'Wedding Dress 2011 Collection', null, null, 'Wedding Dress 2011 Collection keywords', 'Wedding Dress 2011 Collection - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('3', 'costumes', '2011-08-06 17:56:10', '2011-08-06 17:56:10', null, '65', 'Costumes', null, null, 'costumes keywords', 'Costumes - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('4', 'women', '2011-08-06 17:57:04', '2011-08-06 17:57:04', null, null, 'Women', null, null, 'women keywords', 'Women - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('5', 'men', '2011-08-06 17:59:32', '2011-08-06 17:59:32', null, '65', 'Men', null, null, 'men keywords', 'Men - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('6', 'shoes', '2011-08-06 18:00:54', '2011-08-06 18:00:54', null, null, 'Shoes', null, null, 'shoes keywords', 'Shoes - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('7', 'accessories', '2011-08-06 18:03:03', '2011-08-06 18:03:03', null, null, 'Accessories', null, null, 'accessories keywords', 'Accessories - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('8', 'sports', '2011-08-06 18:06:11', '2011-08-06 18:06:11', null, null, 'Sports', null, null, 'sports keywords', 'Sports - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('9', 'kids', '2011-08-06 18:07:04', '2011-08-06 18:07:04', null, null, 'Kids', null, null, 'kids keywords', 'Kids - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('10', 'weddingdre', '2011-08-06 18:20:00', '2011-08-06 18:20:00', null, null, 'Wedding Dresses', null, null, 'Wedding Dresses keywords', 'Wedding Dresses', '', '');
INSERT INTO `shop_category` VALUES ('11', 'weddingpartydre', '2011-08-06 18:23:19', '2011-08-09 21:16:19', null, '65', 'Wedding Party Dresses', null, 'www.facebook.com', 'Wedding Party Dresses keywords', 'Wedding Party Dresses', '', '');
INSERT INTO `shop_category` VALUES ('12', 'springfashiontrend', '2011-08-06 18:29:08', '2011-08-06 18:29:08', null, '2', 'Spring Fashion Trends', null, null, 'Spring Fashion Trends keywords', 'Spring Fashion Trends', '', '');
INSERT INTO `shop_category` VALUES ('13', 'summerfashiontrends', '2011-08-06 18:30:46', '2011-08-06 18:30:46', null, '2', 'Summer Fashion Trends', null, null, 'Summer Fashion Trends keywords', 'Summer Fashion Trends - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('14', 'fallfashiontrends', '2011-08-06 18:35:31', '2011-08-06 18:35:31', null, '2', 'Fall Fashion Trends', null, null, 'Fall Fashion Trends keywords', 'Fall Fashion Trends', '', '');
INSERT INTO `shop_category` VALUES ('15', 'winterfashiontrends', '2011-08-06 18:36:22', '2011-08-06 18:36:22', null, '2', 'Winter Fashion Trends', null, null, 'Winter Fashion Trends keywords', 'Winter Fashion Trends', '', '');
INSERT INTO `shop_category` VALUES ('16', 'weddingdreunder100', '2011-08-06 19:27:37', '2011-08-06 19:27:37', null, '10', 'Wedding Dress Under $100', null, null, 'Wedding Dress Under $100 Keywords', 'Wedding Dress Under $100', '', '');
INSERT INTO `shop_category` VALUES ('17', 'receptiondre', '2011-08-06 19:35:05', '2011-08-06 19:35:05', null, '10', 'Reception Dresses', null, null, 'Reception Dresses Keywords', 'Reception Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('18', 'beachweddingdre', '2011-08-06 19:39:29', '2011-08-06 19:39:29', null, '10', 'Beach Wedding Dresses', null, null, 'Beach Wedding Dresses keywords', 'Beach Wedding Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('19', 'littlegirldre', '2011-08-06 19:40:47', '2011-08-06 19:40:47', null, '11', 'Little Girl Dresses', null, null, 'Little Girl Dresses keywords', 'Little Girl Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('20', 'maternitybridesmaiddre', '2011-08-06 20:02:53', '2011-08-06 20:02:53', null, '11', 'Maternity Bridesmaid Dresses', null, null, 'Maternity Bridesmaid Dresses keywords', 'Maternity Bridesmaid Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('21', 'flowergirldre', '2011-08-06 20:04:19', '2011-08-06 20:04:19', null, '11', 'Flower Girl Dresses', null, null, 'Flower Girl Dresses keywords', 'Flower Girl Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('22', 'juniorbridesmaiddre', '2011-08-06 20:11:56', '2011-08-06 20:11:56', null, '11', 'Junior Bridesmaid Dresses', null, null, 'Junior Bridesmaid Dresses keywords', 'Junior Bridesmaid Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('23', 'bridesmaiddre', '2011-08-06 20:25:13', '2011-08-06 20:25:13', null, '11', 'Bridesmaid Dresses', null, null, 'Bridesmaid Dresses keywords', 'Bridesmaid Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('24', 'cosplay', '2011-08-06 20:34:05', '2011-08-06 20:35:33', null, '3', 'Cosplay Costumes', null, null, 'Cosplay Costumes keywords', 'Cosplay Costumes - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('25', 'punkclothing', '2011-08-06 20:35:15', '2011-08-06 20:35:15', null, '3', 'Punk Clothing', null, null, 'Punk Clothing keywords', 'Punk Clothing - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('26', 'mascot', '2011-08-06 20:37:45', '2011-08-06 20:37:45', null, '3', 'Mascot Costumes', null, null, 'Mascot Costumes keywords', 'Mascot Costumes - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('27', 'lolitaclothing', '2011-08-06 20:40:05', '2011-08-06 20:40:05', null, '3', 'Lolita Clothing', null, null, 'Lolita Clothing keywords', 'Lolita Clothing - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('28', 'cosplaywigs', '2011-08-06 20:45:32', '2011-08-06 20:45:32', null, '24', 'Cosplay Wigs', null, null, 'Cosplay Wigs keywords', 'Cosplay Wigs - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('29', 'cosplayshoes', '2011-08-06 20:47:25', '2011-08-06 20:47:25', null, '24', 'Cosplay Shoes', null, null, 'Cosplay Wigs keywords', 'Cosplay Shoes - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('30', 'schooluniform', '2011-08-06 20:49:07', '2011-08-06 20:49:07', null, '24', 'School Uniform', null, null, 'School Uniform keywords', 'School Uniform - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('31', 'punkdre', '2011-08-06 20:50:12', '2011-08-06 20:50:12', null, '25', 'Punk Dresses', null, null, 'Punk Dresses keywords', 'Punk Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('32', 'punkskirts', '2011-08-06 20:51:08', '2011-08-06 20:51:08', null, '25', 'Punk Skirts', null, null, 'Punk Skirts keywords', 'Punk Skirts - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('33', 'punkcoats', '2011-08-06 20:52:10', '2011-08-06 20:52:10', null, '25', 'Punk Coats', null, null, 'Punk Coats keywords', 'Punk Coats - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('34', 'bearmascots', '2011-08-06 20:53:27', '2011-08-06 20:53:27', null, '26', 'Bear Mascots', null, null, 'Bear Mascots keywords', 'Bear Mascots - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('35', 'lionmascots', '2011-08-06 20:56:22', '2011-08-06 20:56:22', null, '26', 'Lion Mascots', null, null, 'Lion Mascots keywords', 'Lion Mascots - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('36', 'lolitadre', '2011-08-06 20:58:18', '2011-08-06 20:58:18', null, '27', 'Lolita Dresses', null, null, 'Lolita Dresses', 'Lolita Dresses - spark\'s shop', '', '');
INSERT INTO `shop_category` VALUES ('37', 'lolitashirts', '2011-08-06 21:00:54', '2011-08-06 21:00:54', null, '27', 'Lolita Shirts', null, null, 'Lolita Shirts keywords', 'Lolita Shirts', '', '');
INSERT INTO `shop_category` VALUES ('38', 'lolitaoutfits', '2011-08-06 21:01:53', '2011-08-06 21:01:53', null, '27', 'Lolita Outfits', null, null, 'Lolita Outfits keywords', 'Lolita Outfits', '', '');
INSERT INTO `shop_category` VALUES ('39', 'lolitablouses', '2011-08-06 21:02:50', '2011-08-06 21:02:50', null, '27', 'Lolita Blouses', null, null, 'Lolita Blouses', 'Lolita Blouses', '', '');
INSERT INTO `shop_category` VALUES ('40', 'lolitabloomers', '2011-08-06 21:03:54', '2011-08-06 21:03:54', null, '27', 'Lolita Bloomers', null, null, 'Lolita Bloomers keywords', 'Lolita Bloomers', '', '');
INSERT INTO `shop_category` VALUES ('41', 'coastjackets', '2011-08-06 21:05:15', '2011-08-06 21:05:15', null, '27', 'Coast & Jackets', null, null, 'Coast Jackets keywords', 'Coast & Jackets', '', '');
INSERT INTO `shop_category` VALUES ('42', 'springsummer2011', '2011-08-06 21:14:15', '2011-08-06 21:14:15', null, '4', 'Spring/Summer 2011 Trends', null, null, 'Spring Summer 2011 Trends keywords', 'Spring/Summer 2011 Trends', '', '');
INSERT INTO `shop_category` VALUES ('43', 'pants', '2011-08-06 21:21:23', '2011-08-06 21:21:23', null, '4', 'Pants', null, null, 'Pants keywords', 'Pants', '', '');
INSERT INTO `shop_category` VALUES ('44', 'womenfeatures', '2011-08-06 21:22:43', '2011-08-06 21:24:53', null, '4', 'Features', null, null, 'Features keywords', 'Features', '', '');
INSERT INTO `shop_category` VALUES ('45', 'mentshirts', '2011-08-06 21:24:31', '2011-08-06 21:24:31', null, '5', 'Men\'s T-Shirts', null, null, 'Men T-Shirts keywords', 'Men\'s T-Shirts', '', '');
INSERT INTO `shop_category` VALUES ('46', 'fashionshoes', '2011-08-06 21:27:45', '2011-08-06 21:27:45', null, '6', 'Fashion Shoes', null, null, 'Fashion Shoes keywords', 'Fashion Shoes', '', '');
INSERT INTO `shop_category` VALUES ('47', 'jewelry', '2011-08-06 21:30:43', '2011-08-06 21:30:43', null, '7', 'Jewelry', null, null, 'Jewelry keywords', 'Jewelry', '', '');
INSERT INTO `shop_category` VALUES ('48', 'swimsuits', '2011-08-06 21:31:44', '2011-08-06 21:31:44', null, '8', 'Swim Suits', null, null, 'Swim Suits', 'Swim Suits', '', '');
INSERT INTO `shop_category` VALUES ('49', 'baby0_24m', '2011-08-06 21:40:47', '2011-08-06 21:40:47', null, '9', 'Baby (0-24 months)', null, null, 'Baby (0-24 months) keywords', 'Baby (0-24 months)', '', '');
INSERT INTO `shop_category` VALUES ('50', 'pleateddre', '2011-08-06 21:45:00', '2011-08-06 21:45:00', null, '42', 'Pleated Dresses', null, null, 'Pleated Dresses keywords', 'Pleated Dresses', '', '');
INSERT INTO `shop_category` VALUES ('51', 'pleatedskirts', '2011-08-06 21:46:18', '2011-08-06 21:46:18', null, '42', 'Pleated Skirts', null, null, 'Pleated Skirts keywords', 'Pleated Skirts', '', '');
INSERT INTO `shop_category` VALUES ('52', 'womenharempants', '2011-08-06 21:48:22', '2011-08-06 21:48:22', null, '43', 'Women\'s Harem Pants', null, null, 'Women\'s Harem Pants keywords', 'Women\'s Harem Pants', '', '');
INSERT INTO `shop_category` VALUES ('53', 'summerinthenet', '2011-08-06 21:50:17', '2011-08-06 21:50:17', null, '44', 'Summer In The Net', null, null, 'Summer Net keywords', 'Summer In The Net', '', '');
INSERT INTO `shop_category` VALUES ('54', 'sequins', '2011-08-06 21:51:40', '2011-08-06 21:51:40', null, '44', 'Sequins', null, null, 'Sequins keywords', 'Sequins', '', '');
INSERT INTO `shop_category` VALUES ('55', 'parishilton', '2011-08-06 21:54:47', '2011-08-06 21:54:47', null, '44', 'Paris Hilton', null, null, 'Paris Hilton keywords', 'Paris Hilton', '', '');
INSERT INTO `shop_category` VALUES ('56', 'poloshirts', '2011-08-06 21:56:13', '2011-08-06 21:56:13', null, '45', 'Polo Shirts', null, null, 'Polo shirts keywords', 'Polo Shirts', '', '');
INSERT INTO `shop_category` VALUES ('57', 'mtshirts', '2011-08-06 21:57:14', '2011-08-06 21:58:05', null, '45', 'T-Shirts', null, null, 'T-Shirts Men keywords', 'T-Shirts', '', '');
INSERT INTO `shop_category` VALUES ('58', 'paintedshoes', '2011-08-06 22:03:25', '2011-08-06 22:03:25', null, '46', 'Painted Shoes', null, null, 'Painted Shoes keywords', 'Painted Shoes', '', '');
INSERT INTO `shop_category` VALUES ('59', 'pearljewelry', '2011-08-06 22:04:31', '2011-08-06 22:04:31', null, '47', 'Pearl Jewelry', null, null, 'Pearl Jewelry keywords', 'Pearl Jewelry', '', '');
INSERT INTO `shop_category` VALUES ('60', 'crystaljewelry', '2011-08-06 22:05:51', '2011-08-06 22:05:51', null, '47', 'Crystal Jewelry', null, null, 'Crystal Jewelry keywords', 'Crystal Jewelry', '', '');
INSERT INTO `shop_category` VALUES ('61', 'onepieceswim', '2011-08-06 22:07:11', '2011-08-06 22:08:29', null, '48', 'One Piece Swimsuits', null, null, 'One Piece Swimsuits keywords', 'One Piece Swimsuits', '', '');
INSERT INTO `shop_category` VALUES ('62', '2pieceswim', '2011-08-06 22:09:30', '2011-08-06 22:09:29', null, '48', 'Two Piece Swimsuits', null, null, 'Two Piece Swimsuits keywords', 'Two Piece Swimsuits', '', '');
INSERT INTO `shop_category` VALUES ('63', 'bikiniswim', '2011-08-06 22:10:08', '2011-08-06 22:10:08', null, '48', 'Bikini Swimsuits', null, null, 'Bikini Swimsuits keywords', 'Bikini Swimsuits', '', '');
INSERT INTO `shop_category` VALUES ('64', 'boysclothing2_15y', '2011-08-06 22:11:34', '2011-08-06 22:11:34', null, '9', 'Boys Clothing (2-15 years)', null, null, 'Boys Clothing keywords', 'Boys Clothing (2-15 years)', '', '');
INSERT INTO `shop_category` VALUES ('65', 'WeddingEvents', '2011-07-27 16:57:52', '2011-08-09 21:16:07', null, null, 'Wedding & Events', null, 'www.google.com', 'wedding events keywords', 'Wedding & Events - spark\'s shop', '', '');

-- ----------------------------
-- Table structure for `shop_comment`
-- ----------------------------
DROP TABLE IF EXISTS `shop_comment`;
CREATE TABLE `shop_comment` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  `rate` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `reply_for` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3F65A9F620E7A8E0` (`reply_for`),
  KEY `FK3F65A9F6E6DF2B8B` (`user_id`),
  KEY `FK3F65A9F6582107E7` (`product_id`),
  KEY `FK3F65A9F6BF627AED` (`site_id`),
  CONSTRAINT `FK3F65A9F620E7A8E0` FOREIGN KEY (`reply_for`) REFERENCES `shop_comment` (`ID`),
  CONSTRAINT `FK3F65A9F6582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK3F65A9F6BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK3F65A9F6E6DF2B8B` FOREIGN KEY (`user_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `shop_configuration`;
CREATE TABLE `shop_configuration` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `strType` varchar(20) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK8FC7E34DBF627AED` (`site_id`),
  CONSTRAINT `FK8FC7E34DBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_configuration
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_country`
-- ----------------------------
DROP TABLE IF EXISTS `shop_country`;
CREATE TABLE `shop_country` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `abbrCode` varchar(50) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3FD7132DD0E15FA7` (`image_id`),
  KEY `FK3FD7132DBF627AED` (`site_id`),
  CONSTRAINT `FK3FD7132DBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK3FD7132DD0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_country
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `shop_coupon`;
CREATE TABLE `shop_coupon` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4C61CDAFEA82B030` (`Promotion_id`),
  CONSTRAINT `FK4C61CDAFEA82B030` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_cutoff`
-- ----------------------------
DROP TABLE IF EXISTS `shop_cutoff`;
CREATE TABLE `shop_cutoff` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4CB56956EAD64BD7` (`Promotion_id`),
  CONSTRAINT `FK4CB56956EAD64BD7` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cutoff
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_deliver`
-- ----------------------------
DROP TABLE IF EXISTS `shop_deliver`;
CREATE TABLE `shop_deliver` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK632BC4BCD0E15FA7` (`image_id`),
  KEY `FK632BC4BCBF627AED` (`site_id`),
  CONSTRAINT `FK632BC4BCBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK632BC4BCD0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_deliver
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `shop_feedback`;
CREATE TABLE `shop_feedback` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  `strType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC5BF16EE3972FC6D` (`user_id`),
  KEY `FKC5BF16EEBF627AED` (`site_id`),
  CONSTRAINT `FKC5BF16EE3972FC6D` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`ID`),
  CONSTRAINT `FKC5BF16EEBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_image`
-- ----------------------------
DROP TABLE IF EXISTS `shop_image`;
CREATE TABLE `shop_image` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `altTitle` varchar(200) DEFAULT NULL,
  `largerUrl` varchar(200) DEFAULT NULL,
  `logoUrl` varchar(200) DEFAULT NULL,
  `noChangeUrl` varchar(200) DEFAULT NULL,
  `smallUrl` varchar(200) DEFAULT NULL,
  `iconUrl` varchar(200) DEFAULT NULL,
  `thumbnailUrl` varchar(200) DEFAULT NULL,
  `strSizeType` varchar(200) DEFAULT NULL,
  `strType` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK23D25EB2BF627AED` (`site_id`),
  CONSTRAINT `FK23D25EB2BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_image
-- ----------------------------
INSERT INTO `shop_image` VALUES ('1', 'asdasdas', '2011-08-11 20:55:11', '2011-08-11 20:55:11', '1', 'asdasdas', '/image/18414385601451_460X635.jpg', '/image/18414385601451_317X438.jpg', '/image/18414385601451.jpg', '/image/18414385601451_74X102.jpg', '/image/18414385601451_46X63.jpg', '/image/18414385601451_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('2', 'asdasd', '2011-08-15 19:36:33', '2011-08-15 19:36:33', '1', 'asdasd', '/image/2096858214183_460X635.jpg', '/image/2096858214183_317X438.jpg', '/image/2096858214183.jpg', '/image/2096858214183_74X102.jpg', '/image/2096858214183_46X63.jpg', '/image/2096858214183_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');

-- ----------------------------
-- Table structure for `shop_markplace`
-- ----------------------------
DROP TABLE IF EXISTS `shop_markplace`;
CREATE TABLE `shop_markplace` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK1CEB4C111265A9BE` (`Promotion_id`),
  CONSTRAINT `FK1CEB4C111265A9BE` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_markplace
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_newsletter`
-- ----------------------------
DROP TABLE IF EXISTS `shop_newsletter`;
CREATE TABLE `shop_newsletter` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKA3DF0DC2BF627AED` (`site_id`),
  CONSTRAINT `FKA3DF0DC2BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_newsletter
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `customerAddress` varchar(200) DEFAULT NULL,
  `customerCompany` varchar(200) DEFAULT NULL,
  `customerCountry` varchar(200) DEFAULT NULL,
  `customerEmail` varchar(200) DEFAULT NULL,
  `customerName` varchar(200) DEFAULT NULL,
  `customerTelephone` varchar(200) DEFAULT NULL,
  `customerZipcode` varchar(200) DEFAULT NULL,
  `deliverCode` varchar(200) DEFAULT NULL,
  `deliverCompany` varchar(200) DEFAULT NULL,
  `deliverPhone` varchar(200) DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `totalPrice` float DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK24293CA53972FC6D` (`user_id`),
  KEY `FK24293CA51EE5B775` (`status_id`),
  KEY `FK24293CA5BF627AED` (`site_id`),
  CONSTRAINT `FK24293CA51EE5B775` FOREIGN KEY (`status_id`) REFERENCES `shop_orderstatus` (`ID`),
  CONSTRAINT `FK24293CA53972FC6D` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`ID`),
  CONSTRAINT `FK24293CA5BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderitem`;
CREATE TABLE `shop_orderitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `finalPrice` float DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3E6351584E06B6C7` (`order_id`),
  KEY `FK3E635158582107E7` (`product_id`),
  CONSTRAINT `FK3E6351584E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK3E635158582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderstatus`;
CREATE TABLE `shop_orderstatus` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK43E328F7BF627AED` (`site_id`),
  CONSTRAINT `FK43E328F7BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_coupon`;
CREATE TABLE `shop_order_coupon` (
  `order_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  KEY `FK8D44B0E0C94681CD` (`coupon_id`),
  KEY `FK8D44B0E04E06B6C7` (`order_id`),
  CONSTRAINT `FK8D44B0E04E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK8D44B0E0C94681CD` FOREIGN KEY (`coupon_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `abstractText` longtext,
  `keywords` longtext,
  `hit` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `rateCount` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `detail` longtext,
  `commentsTotal` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKF44D8886BF627AED` (`site_id`),
  CONSTRAINT `FKF44D8886BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('12', 'Abc', '2011-08-16 22:10:20', '2011-08-16 22:27:50', '1', null, 'asdasd', '0', '0', null, '0', 'asdas', 'asdasdasdasd', '0', '0');

-- ----------------------------
-- Table structure for `shop_productoption`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productoption`;
CREATE TABLE `shop_productoption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `defaultValue` varchar(200) DEFAULT NULL,
  `description` longtext,
  `strSelectType` varchar(50) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK53BA009B582107E7` (`product_id`),
  CONSTRAINT `FK53BA009B582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoption
-- ----------------------------
INSERT INTO `shop_productoption` VALUES ('15', 'Color', null, null, 'asdasd', 'adasd', 'COLOR_SINGLE', '12');
INSERT INTO `shop_productoption` VALUES ('16', 'adsas', null, null, 'asdasd', 'asdasd', 'INPUT_TEXT', '12');
INSERT INTO `shop_productoption` VALUES ('17', 'asdasd', null, null, 'asdasd', 'asdasd', 'SINGLE_LIST', '12');

-- ----------------------------
-- Table structure for `shop_productoptionitem`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productoptionitem`;
CREATE TABLE `shop_productoptionitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `altTitle` varchar(200) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `value` longtext,
  `icon_id` bigint(20) DEFAULT NULL,
  `product_option_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKEF652A4E23F866E6` (`product_option_id`),
  KEY `FKEF652A4E65CB8FC9` (`icon_id`),
  CONSTRAINT `FKEF652A4E23F866E6` FOREIGN KEY (`product_option_id`) REFERENCES `shop_productoption` (`ID`),
  CONSTRAINT `FKEF652A4E65CB8FC9` FOREIGN KEY (`icon_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoptionitem
-- ----------------------------
INSERT INTO `shop_productoptionitem` VALUES ('17', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('18', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('19', 'Item 1', null, null, null, null, null, null, '16');
INSERT INTO `shop_productoptionitem` VALUES ('20', 'asdas', null, null, null, null, 'asdasd', null, '17');
INSERT INTO `shop_productoptionitem` VALUES ('21', 'aazx', null, null, null, null, 'asdasd', null, '17');

-- ----------------------------
-- Table structure for `shop_productproperty`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productproperty`;
CREATE TABLE `shop_productproperty` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `value` longtext,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK16BFE47B582107E7` (`product_id`),
  CONSTRAINT `FK16BFE47B582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productproperty
-- ----------------------------
INSERT INTO `shop_productproperty` VALUES ('13', 'das', null, null, 'asdasd', '12');
INSERT INTO `shop_productproperty` VALUES ('14', 'asdas', null, null, 'asdasd', '12');

-- ----------------------------
-- Table structure for `shop_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_category`;
CREATE TABLE `shop_product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `FK811F00B79F630A0D` (`category_id`),
  KEY `FK811F00B7582107E7` (`product_id`),
  CONSTRAINT `FK811F00B7582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK811F00B79F630A0D` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_category
-- ----------------------------
INSERT INTO `shop_product_category` VALUES ('12', '1');
INSERT INTO `shop_product_category` VALUES ('12', '4');

-- ----------------------------
-- Table structure for `shop_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_image`;
CREATE TABLE `shop_product_image` (
  `product_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  KEY `FK6EA19862D0E15FA7` (`image_id`),
  KEY `FK6EA19862582107E7` (`product_id`),
  CONSTRAINT `FK6EA19862582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK6EA19862D0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_image
-- ----------------------------
INSERT INTO `shop_product_image` VALUES ('12', '2');

-- ----------------------------
-- Table structure for `shop_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `shop_promotion`;
CREATE TABLE `shop_promotion` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeString` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `strStatus` varchar(50) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `html` longtext,
  PRIMARY KEY (`ID`),
  KEY `FK261C2E7ABF627AED` (`site_id`),
  CONSTRAINT `FK261C2E7ABF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_searchhistory`
-- ----------------------------
DROP TABLE IF EXISTS `shop_searchhistory`;
CREATE TABLE `shop_searchhistory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT NULL,
  `hit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_searchhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_site`
-- ----------------------------
DROP TABLE IF EXISTS `shop_site`;
CREATE TABLE `shop_site` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) DEFAULT NULL,
  `imageMagicCommand` varchar(200) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `suffix` varchar(100) DEFAULT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `log_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK2A76A310C2B5B11E` (`log_id`),
  CONSTRAINT `FK2A76A310C2B5B11E` FOREIGN KEY (`log_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_site
-- ----------------------------
INSERT INTO `shop_site` VALUES ('1', '127.0.0.1:8888', null, '/image', '/', 'www', null);

-- ----------------------------
-- Table structure for `shop_user`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK2A77AF94BF627AED` (`site_id`),
  CONSTRAINT `FK2A77AF94BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_useroption`
-- ----------------------------
DROP TABLE IF EXISTS `shop_useroption`;
CREATE TABLE `shop_useroption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `optional` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBA02252932475AA4` (`order_item_id`),
  KEY `FKBA0225293D035A95` (`item_id`),
  KEY `FKBA022529BF627AED` (`site_id`),
  CONSTRAINT `FKBA02252932475AA4` FOREIGN KEY (`order_item_id`) REFERENCES `shop_orderitem` (`ID`),
  CONSTRAINT `FKBA0225293D035A95` FOREIGN KEY (`item_id`) REFERENCES `shop_orderitem` (`ID`),
  CONSTRAINT `FKBA022529BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_useroption
-- ----------------------------

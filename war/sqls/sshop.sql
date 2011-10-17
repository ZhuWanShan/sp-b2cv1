/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : sshop

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-10-11 20:52:47
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
  `isEnable` bit(1) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
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
  `market_only` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKD43A7447C7120C87` (`specialOffer_image`),
  KEY `FKD43A7447BF627AED` (`site_id`),
  KEY `FKD43A7447BF210EE1` (`parent_id`),
  CONSTRAINT `FKD43A7447BF210EE1` FOREIGN KEY (`parent_id`) REFERENCES `shop_category` (`ID`),
  CONSTRAINT `FKD43A7447BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FKD43A7447C7120C87` FOREIGN KEY (`specialOffer_image`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('', '0', '', '1', 'home', '2011-08-11 20:56:03', '2011-09-14 23:26:17', null, null, 'Home', null, '/', '', 'asdasdas', '', '<a href=\"/c/zxczxz\">Help</a>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '2', 'weddingdre2011col', '2011-07-27 17:06:16', '2011-08-06 18:14:35', null, '65', 'Wedding Dress 2011 Collection', null, null, 'Wedding Dress 2011 Collection keywords', 'Wedding Dress 2011 Collection - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '3', 'costumes', '2011-08-06 17:56:10', '2011-08-27 12:15:23', null, null, 'Costumes', null, '', 'costumes keywords', 'Costumes - spark\'s shop', '', '<img src=\"http://127.0.0.1:8888/image/19372690665746.jpg\">', '0', '');
INSERT INTO `shop_category` VALUES ('', '7', 'asdfasdasd', '4', 'women', '2011-08-06 17:57:04', '2011-08-18 21:09:36', null, null, 'Women', null, '', 'women keywords', 'Women - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '5', 'men', '2011-08-06 17:59:32', '2011-08-06 17:59:32', null, null, 'Men', null, null, 'men keywords', 'Men - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '4', '', '6', 'shoes', '2011-08-06 18:00:54', '2011-09-08 23:39:14', null, null, 'Shoes', null, '', 'shoes keywords', 'Shoes - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '2', '', '7', 'accessories', '2011-08-06 18:03:03', '2011-08-18 21:01:47', null, null, 'Accessories', null, '', 'accessories keywords', 'Accessories - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '3', '', '8', 'sports', '2011-08-06 18:06:11', '2011-08-18 21:09:15', null, null, 'Sports', null, '', 'sports keywords', 'Sports - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '5', '', '9', 'kids', '2011-08-06 18:07:04', '2011-09-08 23:34:27', null, null, 'Kids', null, '', 'kids keywords', 'Kids - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '6', '', '10', 'weddingdre', '2011-08-06 18:20:00', '2011-08-18 21:00:54', null, '65', 'Wedding Dresses', null, '', 'Wedding Dresses keywords', 'Wedding Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '11', 'weddingpartydre', '2011-08-06 18:23:19', '2011-08-09 21:16:19', null, '65', 'Wedding Party Dresses', null, 'www.facebook.com', 'Wedding Party Dresses keywords', 'Wedding Party Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '12', 'springfashiontrend', '2011-08-06 18:29:08', '2011-08-06 18:29:08', null, '2', 'Spring Fashion Trends', null, null, 'Spring Fashion Trends keywords', 'Spring Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '13', 'summerfashiontrends', '2011-08-06 18:30:46', '2011-08-06 18:30:46', null, '2', 'Summer Fashion Trends', null, null, 'Summer Fashion Trends keywords', 'Summer Fashion Trends - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '14', 'fallfashiontrends', '2011-08-06 18:35:31', '2011-08-06 18:35:31', null, '2', 'Fall Fashion Trends', null, null, 'Fall Fashion Trends keywords', 'Fall Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '15', 'winterfashiontrends', '2011-08-06 18:36:22', '2011-08-06 18:36:22', null, '2', 'Winter Fashion Trends', null, null, 'Winter Fashion Trends keywords', 'Winter Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '16', 'weddingdreunder100', '2011-08-06 19:27:37', '2011-08-06 19:27:37', null, '10', 'Wedding Dress Under $100', null, null, 'Wedding Dress Under $100 Keywords', 'Wedding Dress Under $100', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '17', 'receptiondre', '2011-08-06 19:35:05', '2011-08-06 19:35:05', null, '10', 'Reception Dresses', null, null, 'Reception Dresses Keywords', 'Reception Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '18', 'beachweddingdre', '2011-08-06 19:39:29', '2011-08-06 19:39:29', null, '10', 'Beach Wedding Dresses', null, null, 'Beach Wedding Dresses keywords', 'Beach Wedding Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '19', 'littlegirldre', '2011-08-06 19:40:47', '2011-08-06 19:40:47', null, '11', 'Little Girl Dresses', null, null, 'Little Girl Dresses keywords', 'Little Girl Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '20', 'maternitybridesmaiddre', '2011-08-06 20:02:53', '2011-08-06 20:02:53', null, '11', 'Maternity Bridesmaid Dresses', null, null, 'Maternity Bridesmaid Dresses keywords', 'Maternity Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '21', 'flowergirldre', '2011-08-06 20:04:19', '2011-08-06 20:04:19', null, '11', 'Flower Girl Dresses', null, null, 'Flower Girl Dresses keywords', 'Flower Girl Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '22', 'juniorbridesmaiddre', '2011-08-06 20:11:56', '2011-08-06 20:11:56', null, '11', 'Junior Bridesmaid Dresses', null, null, 'Junior Bridesmaid Dresses keywords', 'Junior Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '23', 'bridesmaiddre', '2011-08-06 20:25:13', '2011-08-06 20:25:13', null, '11', 'Bridesmaid Dresses', null, null, 'Bridesmaid Dresses keywords', 'Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '24', 'cosplay', '2011-08-06 20:34:05', '2011-08-06 20:35:33', null, '3', 'Cosplay Costumes', null, null, 'Cosplay Costumes keywords', 'Cosplay Costumes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '25', 'punkclothing', '2011-08-06 20:35:15', '2011-08-06 20:35:15', null, '3', 'Punk Clothing', null, null, 'Punk Clothing keywords', 'Punk Clothing - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '26', 'mascot', '2011-08-06 20:37:45', '2011-08-06 20:37:45', null, '3', 'Mascot Costumes', null, null, 'Mascot Costumes keywords', 'Mascot Costumes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '27', 'lolitaclothing', '2011-08-06 20:40:05', '2011-08-06 20:40:05', null, '3', 'Lolita Clothing', null, null, 'Lolita Clothing keywords', 'Lolita Clothing - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '28', 'cosplaywigs', '2011-08-06 20:45:32', '2011-08-06 20:45:32', null, '24', 'Cosplay Wigs', null, null, 'Cosplay Wigs keywords', 'Cosplay Wigs - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '29', 'cosplayshoes', '2011-08-06 20:47:25', '2011-08-06 20:47:25', null, '24', 'Cosplay Shoes', null, null, 'Cosplay Wigs keywords', 'Cosplay Shoes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '30', 'schooluniform', '2011-08-06 20:49:07', '2011-08-06 20:49:07', null, '24', 'School Uniform', null, null, 'School Uniform keywords', 'School Uniform - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '31', 'punkdre', '2011-08-06 20:50:12', '2011-08-06 20:50:12', null, '25', 'Punk Dresses', null, null, 'Punk Dresses keywords', 'Punk Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '32', 'punkskirts', '2011-08-06 20:51:08', '2011-08-06 20:51:08', null, '25', 'Punk Skirts', null, null, 'Punk Skirts keywords', 'Punk Skirts - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '33', 'punkcoats', '2011-08-06 20:52:10', '2011-08-06 20:52:10', null, '25', 'Punk Coats', null, null, 'Punk Coats keywords', 'Punk Coats - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '34', 'bearmascots', '2011-08-06 20:53:27', '2011-08-06 20:53:27', null, '26', 'Bear Mascots', null, null, 'Bear Mascots keywords', 'Bear Mascots - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '35', 'lionmascots', '2011-08-06 20:56:22', '2011-08-06 20:56:22', null, '26', 'Lion Mascots', null, null, 'Lion Mascots keywords', 'Lion Mascots - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '36', 'lolitadre', '2011-08-06 20:58:18', '2011-08-06 20:58:18', null, '27', 'Lolita Dresses', null, null, 'Lolita Dresses', 'Lolita Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '37', 'lolitashirts', '2011-08-06 21:00:54', '2011-08-06 21:00:54', null, '27', 'Lolita Shirts', null, null, 'Lolita Shirts keywords', 'Lolita Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '38', 'lolitaoutfits', '2011-08-06 21:01:53', '2011-08-06 21:01:53', null, '27', 'Lolita Outfits', null, null, 'Lolita Outfits keywords', 'Lolita Outfits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '39', 'lolitablouses', '2011-08-06 21:02:50', '2011-08-06 21:02:50', null, '27', 'Lolita Blouses', null, null, 'Lolita Blouses', 'Lolita Blouses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '40', 'lolitabloomers', '2011-08-06 21:03:54', '2011-08-06 21:03:54', null, '27', 'Lolita Bloomers', null, null, 'Lolita Bloomers keywords', 'Lolita Bloomers', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '41', 'coastjackets', '2011-08-06 21:05:15', '2011-08-06 21:05:15', null, '27', 'Coast & Jackets', null, null, 'Coast Jackets keywords', 'Coast & Jackets', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '42', 'springsummer2011', '2011-08-06 21:14:15', '2011-08-06 21:14:15', null, '4', 'Spring/Summer 2011 Trends', null, null, 'Spring Summer 2011 Trends keywords', 'Spring/Summer 2011 Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '43', 'pants', '2011-08-06 21:21:23', '2011-08-06 21:21:23', null, '4', 'Pants', null, null, 'Pants keywords', 'Pants', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '44', 'womenfeatures', '2011-08-06 21:22:43', '2011-08-06 21:24:53', null, '4', 'Features', null, null, 'Features keywords', 'Features', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '45', 'mentshirts', '2011-08-06 21:24:31', '2011-08-06 21:24:31', null, '5', 'Men\'s T-Shirts', null, null, 'Men T-Shirts keywords', 'Men\'s T-Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '46', 'fashionshoes', '2011-08-06 21:27:45', '2011-09-08 23:34:44', null, null, 'Fashion Shoes', null, '', 'Fashion Shoes keywords', 'Fashion Shoes', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '47', 'jewelry', '2011-08-06 21:30:43', '2011-08-06 21:30:43', null, '7', 'Jewelry', null, null, 'Jewelry keywords', 'Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '48', 'swimsuits', '2011-08-06 21:31:44', '2011-08-06 21:31:44', null, '8', 'Swim Suits', null, null, 'Swim Suits', 'Swim Suits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '49', 'baby0_24m', '2011-08-06 21:40:47', '2011-08-06 21:40:47', null, '9', 'Baby (0-24 months)', null, null, 'Baby (0-24 months) keywords', 'Baby (0-24 months)', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '50', 'pleateddre', '2011-08-06 21:45:00', '2011-08-06 21:45:00', null, '42', 'Pleated Dresses', null, null, 'Pleated Dresses keywords', 'Pleated Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '51', 'pleatedskirts', '2011-08-06 21:46:18', '2011-08-06 21:46:18', null, '42', 'Pleated Skirts', null, null, 'Pleated Skirts keywords', 'Pleated Skirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '52', 'womenharempants', '2011-08-06 21:48:22', '2011-08-06 21:48:22', null, '43', 'Women\'s Harem Pants', null, null, 'Women\'s Harem Pants keywords', 'Women\'s Harem Pants', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '53', 'summerinthenet', '2011-08-06 21:50:17', '2011-08-06 21:50:17', null, '44', 'Summer In The Net', null, null, 'Summer Net keywords', 'Summer In The Net', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '54', 'sequins', '2011-08-06 21:51:40', '2011-08-06 21:51:40', null, '44', 'Sequins', null, null, 'Sequins keywords', 'Sequins', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '55', 'parishilton', '2011-08-06 21:54:47', '2011-08-06 21:54:47', null, '44', 'Paris Hilton', null, null, 'Paris Hilton keywords', 'Paris Hilton', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '56', 'poloshirts', '2011-08-06 21:56:13', '2011-08-06 21:56:13', null, '45', 'Polo Shirts', null, null, 'Polo shirts keywords', 'Polo Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '57', 'mtshirts', '2011-08-06 21:57:14', '2011-08-06 21:58:05', null, '45', 'T-Shirts', null, null, 'T-Shirts Men keywords', 'T-Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '58', 'paintedshoes', '2011-08-06 22:03:25', '2011-09-08 23:16:44', null, null, 'Painted Shoes', null, '', 'Painted Shoes keywords', 'Painted Shoes', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '2', '', '59', 'pearljewelry', '2011-08-06 22:04:31', '2011-08-18 21:01:17', null, '47', 'Pearl Jewelry', null, '', 'Pearl Jewelry keywords', 'Pearl Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '60', 'crystaljewelry', '2011-08-06 22:05:51', '2011-08-06 22:05:51', null, '47', 'Crystal Jewelry', null, null, 'Crystal Jewelry keywords', 'Crystal Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '61', 'onepieceswim', '2011-08-06 22:07:11', '2011-08-06 22:08:29', null, '48', 'One Piece Swimsuits', null, null, 'One Piece Swimsuits keywords', 'One Piece Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '62', '2pieceswim', '2011-08-06 22:09:30', '2011-08-06 22:09:29', null, '48', 'Two Piece Swimsuits', null, null, 'Two Piece Swimsuits keywords', 'Two Piece Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '63', 'bikiniswim', '2011-08-06 22:10:08', '2011-08-06 22:10:08', null, '48', 'Bikini Swimsuits', null, null, 'Bikini Swimsuits keywords', 'Bikini Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '64', 'boysclothing2_15y', '2011-08-06 22:11:34', '2011-08-06 22:11:34', null, '9', 'Boys Clothing (2-15 years)', null, null, 'Boys Clothing keywords', 'Boys Clothing (2-15 years)', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '1', '', '65', 'WeddingEvents', '2011-07-27 16:57:52', '2011-08-18 21:00:58', null, null, 'Wedding & Events', null, 'www.google.com', 'wedding events keywords', 'Wedding & Events - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root1 desc', '66', 'specialofferroot1', '2011-08-28 20:56:08', '2011-08-28 20:56:08', null, '3', 'Special Offer Root1', null, '', 'Special Offer Root1 keywords', 'Special Offer Root1', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root2 desc', '67', 'specialofferroot2', '2011-08-28 20:56:58', '2011-08-28 20:56:58', null, '3', 'Special Offer Root2', null, '', 'Special Offer Root2 keywords', 'Special Offer Root2', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root3 desc', '68', 'specialofferroot3', '2011-08-28 20:57:35', '2011-08-28 20:57:35', null, '3', 'Special Offer Root3', null, '', 'Special Offer Root3 keywords', 'Special Offer Root3', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root4 desc', '69', 'specialofferroot4', '2011-08-28 22:25:31', '2011-08-28 22:25:31', null, '24', 'Special Offer Root4', null, '', 'Special Offer Root4 keywords', 'Special Offer Root4', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root5 desc', '70', 'specialofferroot5', '2011-08-28 22:26:34', '2011-08-28 23:58:18', null, '28', 'Special Offer Root5', '32', '', 'Special Offer Root5 keywords', 'Special Offer Root5', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root6 desc', '71', 'specialofferroot6', '2011-08-28 22:27:39', '2011-08-28 22:27:39', null, '31', 'Special Offer Root6', null, '', 'Special Offer Root6 desc', 'Special Offer Root6', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root7 desc', '72', 'specialofferroot7', '2011-08-28 22:30:09', '2011-08-29 00:10:00', null, '56', 'Special Offer Root7', '33', '', 'Special Offer Root7 keywords', 'Special Offer Root7', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '15', 'Gundam seed', '73', 'gundam', '2011-08-29 23:10:22', '2011-09-08 23:51:42', null, null, 'Gundam', null, '', 'seed gundam kira', 'Gundam', '', '<a href=\"http://www.xiaonei.com\"><img src=\"http://127.0.0.1:8888/image/13359512696421.jpg\"></a><br><br>', '1', '');
INSERT INTO `shop_category` VALUES ('', '0', 'asdasd', '74', 'asdas', '2011-09-08 00:06:10', '2011-09-08 00:06:10', null, '73', 'asdas', null, '', 'asdasd', 'asdas', '', 'asdasdasjhkasfjksdhfsdkhfsdfhfsdfsdfsdf', '1', '');
INSERT INTO `shop_category` VALUES ('', '0', 'DASDAS', '75', 'aDAaDASDAS', '2011-09-09 15:06:48', '2011-09-09 15:06:53', null, null, 'ASDASDASD', null, '', 'ASDASD', 'ASDAS', '', 'ASDASDASD', '0', '');
INSERT INTO `shop_category` VALUES ('', '8', 'New Category desc', '76', 'NewCategory', '2011-09-14 23:21:27', '2011-09-14 23:21:55', null, null, 'New Category', null, '', 'New Category key', 'New Category title', '', 'asdasdasdasdasd', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'asdasd', '77', 'asdasaaaaxz', '2011-09-14 23:22:27', '2011-09-14 23:22:27', null, '76', 'asdas', null, 'asdasd', 'asdasd', 'asdas', '', 'asdasda', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'asdas', '78', 'specialA11', '2011-09-14 23:22:59', '2011-09-14 23:22:59', null, '76', 'asdas', null, '', 'dasdasd', '', '', 'asdasdasdasdasdasd', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'asdas', '79', 'zxczxz', '2011-09-14 23:24:30', '2011-09-14 23:28:56', null, null, 'aasass', null, '', 'asdasdasd', 'asdas', '', '<div class=\"banner_top2\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <ul class=\"listtxtad_left txt_deepblue\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(411);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=415068133&amp;what=zone:411&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5538&amp;zoneid=411&amp;source=&amp;dest=http%3A%2F%2Fwww.embedu.org%2Fkoubei%2Findex.htm\" target=\"_blank\">【顶】应届生,入职年薪5-10万</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(412);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=665442180&amp;what=zone:412&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=6014&amp;zoneid=412&amp;source=&amp;dest=http%3A%2F%2Fwww.bjtarena.com%2Ftg%2Findex_c.html\" target=\"_blank\">不懂C/C++不是真正的程序员！</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(413);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=426916267&amp;what=zone:413&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5088&amp;zoneid=413&amp;source=&amp;dest=http%3A%2F%2Fbaidu.csdn.net%2F\" target=\"_blank\">诚邀您加入百度互联网技术社区</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(414);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=963154749&amp;what=zone:414&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5687&amp;zoneid=414&amp;source=&amp;dest=http%3A%2F%2Fwww.chinatarena.com\" target=\"_blank\">【达内】java/测试/Android培训</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(415);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=963849541&amp;what=zone:415&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=6015&amp;zoneid=415&amp;source=&amp;dest=http%3A%2F%2Fwww.gsdtarena.com\" target=\"_blank\">【达内3G学院】平均就业月薪5K</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <ul class=\"listad_mid\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(404);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=287818407&amp;what=zone:404&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=6034&amp;zoneid=404&amp;source=&amp;dest=http%3A%2F%2Fsap.csdn.net%2Fteched2011%2Fagree.aspx\" target=\"_blank\"><img src=\"http://info-database.csdn.net/Upload/2011-09-09/56095_sap.gif\" alt=\"\" title=\"\" border=\"0\" height=\"95\" width=\"560\"></a><div id=\"beacon_6034\" style=\"position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img src=\"http://z.csdn.net/gmlog.php?bannerid=6034&amp;clientid=1998&amp;zf=&amp;zoneid=404&amp;source=&amp;block=0&amp;capping=0&amp;cb=5bc575ecd400575ddd9e7f447e334b67\" alt=\"\" style=\"width: 0px; height: 0px;\" height=\"0\" width=\"0\"></div></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <ul class=\"listtxtad_left txt_deepblue\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(416);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=148698989&amp;what=zone:416&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5539&amp;zoneid=416&amp;source=&amp;dest=http%3A%2F%2Fqt.csdn.net%2F\" target=\"_blank\">Qt风暴来袭 你hold住了吗</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(417);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=382233894&amp;what=zone:417&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=6025&amp;zoneid=417&amp;source=&amp;dest=http%3A%2F%2Fmpday.csdn.net%2F\" target=\"_blank\">软件开发必修课，研发经验分享</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(418);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=841011314&amp;what=zone:418&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=6039&amp;zoneid=418&amp;source=&amp;dest=http%3A%2F%2Frubyconfchina.csdn.net%2F\" target=\"_blank\">年度最有价值Ruby盛会！</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(419);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=081774591&amp;what=zone:419&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5950&amp;zoneid=419&amp;source=&amp;dest=http%3A%2F%2Fwww.lampbrother.net%2Fcourses.php\" target=\"_blank\">解决大流量/高并发等的PHP课程</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li><script type=\"text/javascript\">show_ads_zone(420);</script><script language=\"JavaScript\" type=\"text/javascript\" src=\"http://z.csdn.net/adjs.php?n=475669745&amp;what=zone:420&amp;charset=utf-8&amp;exclude=,\"></script><a href=\"http://z.csdn.net/gmclick.php?bannerid=5915&amp;zoneid=420&amp;source=&amp;dest=http%3A%2F%2Fblog.csdn.net%2Flihuoming%2Farticle%2Fdetails%2F6286241\" target=\"_blank\">悬赏:PHP讲师通缉令！</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </ul> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>', '1', '');

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
  `expired` bit(1) DEFAULT NULL,
  `strExpired` varchar(3) DEFAULT NULL,
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
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK632BC4BCD0E15FA7` (`image_id`),
  KEY `FK632BC4BCBF627AED` (`site_id`),
  KEY `FK632BC4BCFE88B287` (`country_id`),
  CONSTRAINT `FK632BC4BCBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK632BC4BCD0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`),
  CONSTRAINT `FK632BC4BCFE88B287` FOREIGN KEY (`country_id`) REFERENCES `shop_country` (`ID`)
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
-- Table structure for `shop_html`
-- ----------------------------
DROP TABLE IF EXISTS `shop_html`;
CREATE TABLE `shop_html` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `strExpired` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_html
-- ----------------------------
INSERT INTO `shop_html` VALUES ('6', 'asdas', '2011-09-08 22:48:53', null, 'asdasdasd', null);
INSERT INTO `shop_html` VALUES ('7', 'adasdas', '2011-10-08 16:24:04', null, 'asdasdasd', 'Y');
INSERT INTO `shop_html` VALUES ('8', 'adasdas', '2011-10-08 16:26:58', null, 'dasdasdasdasdasd', 'N');

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
  `expired` bit(1) DEFAULT NULL,
  `strExpired` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK23D25EB2BF627AED` (`site_id`),
  CONSTRAINT `FK23D25EB2BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_image
-- ----------------------------
INSERT INTO `shop_image` VALUES ('1', 'asdasdas', '2011-08-11 20:55:11', '2011-08-17 23:12:10', '1', 'asdasdas', '/image/123711895637103_460X635.jpg', '/image/123711895637103_317X438.jpg', '/image/123711895637103.jpg', '/image/123711895637103_74X102.jpg', '/image/123711895637103_46X63.jpg', '/image/123711895637103_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('2', 'asdasd', '2011-08-15 19:36:33', '2011-08-17 23:12:00', '1', 'asdasd', '/image/123701248716953_460X635.jpg', '/image/123701248716953_317X438.jpg', '/image/123701248716953.jpg', '/image/123701248716953_74X102.jpg', '/image/123701248716953_46X63.jpg', '/image/123701248716953_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('3', 'dddddd', '2011-08-17 21:37:51', '2011-08-17 21:38:05', '1', 'dddddd', '/image/118066906655980_460X635.jpg', '/image/118066906655980_317X438.jpg', '/image/118066906655980.jpg', '/image/118066906655980_74X102.jpg', '/image/118066906655980_46X63.jpg', '/image/118066906655980_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('4', 'asdasdasd', '2011-08-17 21:40:23', '2011-08-17 21:41:21', '1', 'asdasdasd', '/image/118263049668863_460X635.jpg', '/image/118263049668863_317X438.jpg', '/image/118263049668863.jpg', '/image/118263049668863_74X102.jpg', '/image/118263049668863_46X63.jpg', '/image/118263049668863_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('5', 'asdasdasd', '2011-08-17 21:43:35', '2011-08-17 23:11:50', '1', 'asdasdasd', '/image/123691340488827_460X635.jpg', '/image/123691340488827_317X438.jpg', '/image/123691340488827.jpg', '/image/123691340488827_74X102.jpg', '/image/123691340488827_46X63.jpg', '/image/123691340488827_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('14', 'cosplay1', '2011-08-23 21:26:47', '2011-08-23 21:26:47', '1', 'cosplay1', '/image/9331994551495_460X635.jpg', '/image/9331994551495_317X438.jpg', '/image/9331994551495.jpg', '/image/9331994551495_74X102.jpg', '/image/9331994551495_46X63.jpg', '/image/9331994551495_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('15', 'productImg2', '2011-08-24 00:04:36', '2011-08-24 00:04:36', '1', 'productImg2', '/image/18801009063392_460X635.jpg', '/image/18801009063392_317X438.jpg', '/image/18801009063392.jpg', '/image/18801009063392_74X102.jpg', '/image/18801009063392_46X63.jpg', '/image/18801009063392_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('16', 'ibrasimovic3', '2011-08-24 00:04:57', '2011-08-24 00:04:57', '1', 'ibrasimovic3', '/image/18822107699958_460X635.jpg', '/image/18822107699958_317X438.jpg', '/image/18822107699958.jpg', '/image/18822107699958_74X102.jpg', '/image/18822107699958_46X63.jpg', '/image/18822107699958_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('17', 'productImg4', '2011-08-24 00:05:18', '2011-08-24 00:05:18', '1', 'productImg4', '/image/18842705838860_460X635.jpg', '/image/18842705838860_317X438.jpg', '/image/18842705838860.jpg', '/image/18842705838860_74X102.jpg', '/image/18842705838860_46X63.jpg', '/image/18842705838860_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', '', 'N');
INSERT INTO `shop_image` VALUES ('18', 'productImg5', '2011-08-24 00:05:33', '2011-08-24 00:05:33', '1', 'productImg5', '/image/18858187148595_460X635.jpg', '/image/18858187148595_317X438.jpg', '/image/18858187148595.jpg', '/image/18858187148595_74X102.jpg', '/image/18858187148595_46X63.jpg', '/image/18858187148595_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', '', 'N');
INSERT INTO `shop_image` VALUES ('19', 'productImg6', '2011-08-24 00:05:46', '2011-08-24 00:05:46', '1', 'productImg6', '/image/18870461554478_460X635.jpg', '/image/18870461554478_317X438.jpg', '/image/18870461554478.jpg', '/image/18870461554478_74X102.jpg', '/image/18870461554478_46X63.jpg', '/image/18870461554478_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', '', 'N');
INSERT INTO `shop_image` VALUES ('20', 'productImg7', '2011-08-24 00:06:00', '2011-08-24 00:06:00', '1', 'productImg7', '/image/18884416337585_460X635.jpg', '/image/18884416337585_317X438.jpg', '/image/18884416337585.jpg', '/image/18884416337585_74X102.jpg', '/image/18884416337585_46X63.jpg', '/image/18884416337585_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('21', 'productImg8', '2011-08-24 00:06:12', '2011-08-24 00:06:12', '1', 'productImg8', '/image/18896754856543_460X635.jpg', '/image/18896754856543_317X438.jpg', '/image/18896754856543.jpg', '/image/18896754856543_74X102.jpg', '/image/18896754856543_46X63.jpg', '/image/18896754856543_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('22', 'p1', '2011-08-24 22:36:39', '2011-08-24 22:36:39', '1', 'p1', '/image/11330325949885_460X635.jpg', '/image/11330325949885_317X438.jpg', '/image/11330325949885.jpg', '/image/11330325949885_74X102.jpg', '/image/11330325949885_46X63.jpg', '/image/11330325949885_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('23', 'p2', '2011-08-24 22:36:52', '2011-08-24 22:36:52', '1', 'p2', '/image/11343124813232_460X635.jpg', '/image/11343124813232_317X438.jpg', '/image/11343124813232.jpg', '/image/11343124813232_74X102.jpg', '/image/11343124813232_46X63.jpg', '/image/11343124813232_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('24', 'p3', '2011-08-24 22:37:05', '2011-08-24 22:37:05', '1', 'p3', '/image/11355880870033_460X635.jpg', '/image/11355880870033_317X438.jpg', '/image/11355880870033.jpg', '/image/11355880870033_74X102.jpg', '/image/11355880870033_46X63.jpg', '/image/11355880870033_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('25', 'p4', '2011-08-24 22:37:20', '2011-08-24 22:37:20', '1', 'p4', '/image/11370693998123_460X635.jpg', '/image/11370693998123_317X438.jpg', '/image/11370693998123.jpg', '/image/11370693998123_74X102.jpg', '/image/11370693998123_46X63.jpg', '/image/11370693998123_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('26', 'p5', '2011-08-24 22:37:31', '2011-08-24 22:37:31', '1', 'p5', '/image/11382226876851_460X635.jpg', '/image/11382226876851_317X438.jpg', '/image/11382226876851.jpg', '/image/11382226876851_74X102.jpg', '/image/11382226876851_46X63.jpg', '/image/11382226876851_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('27', 'p6', '2011-08-24 22:37:42', '2011-08-24 22:37:42', '1', 'p6', '/image/11393018761012_460X635.jpg', '/image/11393018761012_317X438.jpg', '/image/11393018761012.jpg', '/image/11393018761012_74X102.jpg', '/image/11393018761012_46X63.jpg', '/image/11393018761012_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('28', 'p7', '2011-08-24 22:37:52', '2011-08-24 22:37:52', '1', 'p7', '/image/11403243673392_460X635.jpg', '/image/11403243673392_317X438.jpg', '/image/11403243673392.jpg', '/image/11403243673392_74X102.jpg', '/image/11403243673392_46X63.jpg', '/image/11403243673392_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('29', 'p8', '2011-08-24 22:38:04', '2011-08-24 22:38:04', '1', 'p8', '/image/11415156835584_460X635.jpg', '/image/11415156835584_317X438.jpg', '/image/11415156835584.jpg', '/image/11415156835584_74X102.jpg', '/image/11415156835584_46X63.jpg', '/image/11415156835584_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('30', 'p9', '2011-08-24 22:38:16', '2011-08-24 22:38:16', '1', 'p9', '/image/11426788977866_460X635.jpg', '/image/11426788977866_317X438.jpg', '/image/11426788977866.jpg', '/image/11426788977866_74X102.jpg', '/image/11426788977866_46X63.jpg', '/image/11426788977866_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('31', 'home-ad', '2011-08-27 02:36:12', '2011-08-27 02:36:12', '1', 'home-ad', '/image/19372690665746_460X635.jpg', '/image/19372690665746_317X438.jpg', '/image/19372690665746.jpg', '/image/19372690665746_74X102.jpg', '/image/19372690665746_46X63.jpg', '/image/19372690665746_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('32', 'specialOfferImg', '2011-08-28 23:57:16', '2011-08-28 23:57:16', '1', 'specialOfferImg', '/image/42110342251015_460X635.jpg', '/image/42110342251015_317X438.jpg', '/image/42110342251015.jpg', '/image/42110342251015_74X102.jpg', '/image/42110342251015_46X63.jpg', '/image/42110342251015_192X265.jpg', 'SPECIAL_OFFER', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('33', 'specialOfferImg2', '2011-08-29 00:09:30', '2011-08-29 00:09:30', '1', 'specialOfferImg2', '/image/42844648607038_460X635.jpg', '/image/42844648607038_317X438.jpg', '/image/42844648607038.jpg', '/image/42844648607038_74X102.jpg', '/image/42844648607038_46X63.jpg', '/image/42844648607038_192X265.jpg', 'SPECIAL_OFFER', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('34', 'gundamCategoryImg', '2011-08-29 23:13:47', '2011-08-29 23:27:39', '1', 'gundamCategoryImg', '/image/13359512696421_460X635.jpg', '/image/13359512696421_317X438.jpg', '/image/13359512696421.jpg', '/image/13359512696421_74X102.jpg', '/image/13359512696421_46X63.jpg', '/image/13359512696421_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('35', 'asdasdasdasd', '2011-09-14 23:43:55', '2011-09-14 23:43:55', '1', 'asdasdasdasd', '/image/135213433449691_460X635.jpg', '/image/135213433449691_317X438.jpg', '/image/135213433449691.jpg', '/image/135213433449691_74X102.jpg', '/image/135213433449691_46X63.jpg', '/image/135213433449691_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('36', 'dasdasdasd', '2011-09-14 23:47:12', '2011-09-14 23:47:12', '1', 'dasdasdasd', '/image/135409591385415_460X635.jpg', '/image/135409591385415_317X438.jpg', '/image/135409591385415.jpg', '/image/135409591385415_74X102.jpg', '/image/135409591385415_46X63.jpg', '/image/135409591385415_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('37', 'asdasdasd', '2011-09-15 19:00:21', '2011-09-15 19:00:21', '1', 'asdasdasd', '/image/7412225412994_635X460.jpg', '/image/7412225412994_635X460.jpg', '/image/7412225412994.jpg', '/image/7412225412994_635X460.jpg', '/image/7412225412994_635X460.jpg', '/image/7412225412994_635X460.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('38', 'asdasdasd', '2011-09-15 19:20:33', '2011-09-15 19:26:45', '1', 'asdasdasd', '/image/8995668652756_460X635.jpg', '/image/8995668652756_317X438.jpg', '/image/8995668652756.jpg', '/image/8995668652756_46X63.jpg', '/image/8995668652756_74X102.jpg', '/image/8995668652756_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('39', 'asdasdasd', '2011-09-15 19:42:11', '2011-09-15 19:49:16', '1', 'asdasdasd', '/image/10346492510010_635X460.jpg', '/image/10346492510010_438X317.jpg', '/image/10346492510010.jpg', '/image/10346492510010_63X46.jpg', '/image/10346492510010_102X74.jpg', '/image/10346492510010_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('40', 'asdasdasdasdzzz', '2011-09-15 19:52:48', '2011-09-15 20:17:26', '1', 'asdasdasdasdzzz', '/image/12036373216041_635X460.jpg', '/image/12036373216041_438X317.jpg', '/image/12036373216041.jpg', '/image/12036373216041_102X74.jpg', '/image/12036373216041_63X46.jpg', '/image/12036373216041_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('41', '/image/Chrysanthemum.jpg', '2011-09-15 20:17:51', '2011-09-15 20:17:51', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('42', '/image/Desert.jpg', '2011-09-15 20:17:51', '2011-09-15 20:17:51', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('43', '/image/Hydrangeas.jpg', '2011-09-15 20:17:51', '2011-09-15 20:17:51', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('44', '/image/Jellyfish.jpg', '2011-09-15 20:17:52', '2011-09-15 20:17:52', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('45', '/image/Koala.jpg', '2011-09-15 20:17:52', '2011-09-15 20:17:52', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('46', '/image/Lighthouse.jpg', '2011-09-15 20:17:53', '2011-09-15 20:17:53', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('47', '/image/Penguins.jpg', '2011-09-15 20:17:53', '2011-09-15 20:17:53', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('48', '/image/Tulips.jpg', '2011-09-15 20:17:54', '2011-09-15 20:17:54', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('49', '/image/Chrysanthemum.jpg', '2011-09-15 20:19:34', '2011-09-15 20:19:34', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('50', '/image/Desert.jpg', '2011-09-15 20:19:34', '2011-09-15 20:19:34', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('51', '/image/Hydrangeas.jpg', '2011-09-15 20:19:35', '2011-09-15 20:19:35', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('52', '/image/Jellyfish.jpg', '2011-09-15 20:19:35', '2011-09-15 20:19:35', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('53', '/image/Koala.jpg', '2011-09-15 20:19:36', '2011-09-15 20:19:36', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('54', '/image/Lighthouse.jpg', '2011-09-15 20:19:36', '2011-09-15 20:19:36', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('55', '/image/Penguins.jpg', '2011-09-15 20:19:36', '2011-09-15 20:19:36', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('56', '/image/Tulips.jpg', '2011-09-15 20:19:37', '2011-09-15 20:19:37', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('57', '/image/Chrysanthemum.jpg', '2011-09-15 20:20:19', '2011-09-15 20:20:19', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('58', '/image/Desert.jpg', '2011-09-15 20:21:35', '2011-09-15 20:21:35', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('59', '/image/Chrysanthemum.jpg', '2011-09-15 20:28:18', '2011-09-15 20:28:18', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('60', '/image/Desert.jpg', '2011-09-15 20:28:19', '2011-09-15 20:28:19', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('61', '/image/Hydrangeas.jpg', '2011-09-15 20:28:19', '2011-09-15 20:28:19', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('62', '/image/Jellyfish.jpg', '2011-09-15 20:28:19', '2011-09-15 20:28:19', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('63', '/image/Koala.jpg', '2011-09-15 20:28:19', '2011-09-15 20:28:19', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('64', '/image/Lighthouse.jpg', '2011-09-15 20:28:20', '2011-09-15 20:28:20', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('65', '/image/Penguins.jpg', '2011-09-15 20:28:20', '2011-09-15 20:28:20', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('66', '/image/Tulips.jpg', '2011-09-15 20:28:20', '2011-09-15 20:28:20', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('67', 'Chrysanthemum', '2011-09-15 20:29:53', '2011-09-15 20:29:53', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('68', 'Desert', '2011-09-15 20:29:54', '2011-09-15 20:29:54', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('69', 'Hydrangeas', '2011-09-15 20:29:55', '2011-09-15 20:29:55', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('70', 'Jellyfish', '2011-09-15 20:29:56', '2011-09-15 20:29:56', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('71', 'Koala', '2011-09-15 20:29:56', '2011-09-15 20:29:56', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('72', 'Lighthouse', '2011-09-15 20:29:56', '2011-09-15 20:29:56', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('73', 'Penguins', '2011-09-15 20:29:57', '2011-09-15 20:29:57', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('74', 'Tulips', '2011-09-15 20:29:57', '2011-09-15 20:29:57', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('75', 'Chrysanthemum', '2011-09-15 20:43:44', '2011-09-15 20:43:44', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('76', 'Desert', '2011-09-15 20:43:45', '2011-09-15 20:43:45', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('77', 'Hydrangeas', '2011-09-15 20:43:45', '2011-09-15 20:43:45', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('78', 'Jellyfish', '2011-09-15 20:43:45', '2011-09-15 20:43:45', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('79', 'Koala', '2011-09-15 20:43:46', '2011-09-15 20:43:46', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('80', 'Lighthouse', '2011-09-15 20:43:46', '2011-09-15 20:43:46', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('81', 'Penguins', '2011-09-15 20:43:46', '2011-09-15 20:43:46', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('82', 'Tulips', '2011-09-15 20:43:47', '2011-09-15 20:43:47', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('83', 'Hydran_geas', '2011-09-15 20:43:47', '2011-09-15 20:43:47', '1', '/image/Hydran_geas.jpg', '/image/Hydran_geas_635X460.jpg', '/image/Hydran_geas_438X317.jpg', '/image/Hydran_geas.jpg', '/image/Hydran_geas_102X74.jpg', '/image/Hydran_geas_63X46.jpg', '/image/Hydran_geas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('84', 'fsdfsdfsdf', '2011-09-15 21:28:49', '2011-09-15 21:28:49', '1', 'fsdfsdfsdf', '/image/16319872227487_635X460.jpg', '/image/16319872227487_438X317.jpg', '/image/16319872227487.jpg', '/image/16319872227487_102X74.jpg', '/image/16319872227487_63X46.jpg', '/image/16319872227487_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('85', 'Chrysanthemum', '2011-09-15 21:29:04', '2011-09-15 21:29:04', '1', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_635X460.jpg', '/image/Chrysanthemum_438X317.jpg', '/image/Chrysanthemum.jpg', '/image/Chrysanthemum_102X74.jpg', '/image/Chrysanthemum_63X46.jpg', '/image/Chrysanthemum_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('86', 'Desert', '2011-09-15 21:29:07', '2011-09-15 21:29:07', '1', '/image/Desert.jpg', '/image/Desert_635X460.jpg', '/image/Desert_438X317.jpg', '/image/Desert.jpg', '/image/Desert_102X74.jpg', '/image/Desert_63X46.jpg', '/image/Desert_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('87', 'Hydrangeas', '2011-09-15 21:29:09', '2011-09-15 21:29:09', '1', '/image/Hydrangeas.jpg', '/image/Hydrangeas_635X460.jpg', '/image/Hydrangeas_438X317.jpg', '/image/Hydrangeas.jpg', '/image/Hydrangeas_102X74.jpg', '/image/Hydrangeas_63X46.jpg', '/image/Hydrangeas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('88', 'Jellyfish', '2011-09-15 21:29:12', '2011-09-15 21:29:12', '1', '/image/Jellyfish.jpg', '/image/Jellyfish_635X460.jpg', '/image/Jellyfish_438X317.jpg', '/image/Jellyfish.jpg', '/image/Jellyfish_102X74.jpg', '/image/Jellyfish_63X46.jpg', '/image/Jellyfish_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('89', 'Koala', '2011-09-15 21:29:12', '2011-09-15 21:29:12', '1', '/image/Koala.jpg', '/image/Koala_635X460.jpg', '/image/Koala_438X317.jpg', '/image/Koala.jpg', '/image/Koala_102X74.jpg', '/image/Koala_63X46.jpg', '/image/Koala_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('90', 'Lighthouse', '2011-09-15 21:29:12', '2011-09-15 21:29:12', '1', '/image/Lighthouse.jpg', '/image/Lighthouse_635X460.jpg', '/image/Lighthouse_438X317.jpg', '/image/Lighthouse.jpg', '/image/Lighthouse_102X74.jpg', '/image/Lighthouse_63X46.jpg', '/image/Lighthouse_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('91', 'Penguins', '2011-09-15 21:29:13', '2011-09-15 21:29:13', '1', '/image/Penguins.jpg', '/image/Penguins_635X460.jpg', '/image/Penguins_438X317.jpg', '/image/Penguins.jpg', '/image/Penguins_102X74.jpg', '/image/Penguins_63X46.jpg', '/image/Penguins_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('92', 'Tulips', '2011-09-15 21:29:13', '2011-09-15 21:29:13', '1', '/image/Tulips.jpg', '/image/Tulips_635X460.jpg', '/image/Tulips_438X317.jpg', '/image/Tulips.jpg', '/image/Tulips_102X74.jpg', '/image/Tulips_63X46.jpg', '/image/Tulips_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('93', 'Hydran_geas', '2011-09-15 21:29:14', '2011-09-15 21:29:14', '1', '/image/Hydran_geas.jpg', '/image/Hydran_geas_635X460.jpg', '/image/Hydran_geas_438X317.jpg', '/image/Hydran_geas.jpg', '/image/Hydran_geas_102X74.jpg', '/image/Hydran_geas_63X46.jpg', '/image/Hydran_geas_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('94', 'Chrysanthemum_17891901548811', '2011-09-15 21:55:01', '2011-09-15 21:55:01', '1', '/image/Chrysanthemum_17891901548811.jpg', '/image/Chrysanthemum_17891901548811_635X460.jpg', '/image/Chrysanthemum_17891901548811_438X317.jpg', '/image/Chrysanthemum_17891901548811.jpg', '/image/Chrysanthemum_17891901548811_102X74.jpg', '/image/Chrysanthemum_17891901548811_63X46.jpg', '/image/Chrysanthemum_17891901548811_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('95', 'Desert_17892236532685', '2011-09-15 21:55:02', '2011-09-15 21:55:02', '1', '/image/Desert_17892236532685.jpg', '/image/Desert_17892236532685_635X460.jpg', '/image/Desert_17892236532685_438X317.jpg', '/image/Desert_17892236532685.jpg', '/image/Desert_17892236532685_102X74.jpg', '/image/Desert_17892236532685_63X46.jpg', '/image/Desert_17892236532685_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('96', 'Hydrangeas_17892546239145', '2011-09-15 21:55:02', '2011-09-15 21:55:02', '1', '/image/Hydrangeas_17892546239145.jpg', '/image/Hydrangeas_17892546239145_635X460.jpg', '/image/Hydrangeas_17892546239145_438X317.jpg', '/image/Hydrangeas_17892546239145.jpg', '/image/Hydrangeas_17892546239145_102X74.jpg', '/image/Hydrangeas_17892546239145_63X46.jpg', '/image/Hydrangeas_17892546239145_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('97', 'Jellyfish_17892877443956', '2011-09-15 21:55:02', '2011-09-15 21:55:02', '1', '/image/Jellyfish_17892877443956.jpg', '/image/Jellyfish_17892877443956_635X460.jpg', '/image/Jellyfish_17892877443956_438X317.jpg', '/image/Jellyfish_17892877443956.jpg', '/image/Jellyfish_17892877443956_102X74.jpg', '/image/Jellyfish_17892877443956_63X46.jpg', '/image/Jellyfish_17892877443956_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('98', 'Koala_17893226152100', '2011-09-15 21:55:03', '2011-09-15 21:55:03', '1', '/image/Koala_17893226152100.jpg', '/image/Koala_17893226152100_635X460.jpg', '/image/Koala_17893226152100_438X317.jpg', '/image/Koala_17893226152100.jpg', '/image/Koala_17893226152100_102X74.jpg', '/image/Koala_17893226152100_63X46.jpg', '/image/Koala_17893226152100_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('99', 'Lighthouse_17893495652749', '2011-09-15 21:55:03', '2011-09-15 21:55:03', '1', '/image/Lighthouse_17893495652749.jpg', '/image/Lighthouse_17893495652749_635X460.jpg', '/image/Lighthouse_17893495652749_438X317.jpg', '/image/Lighthouse_17893495652749.jpg', '/image/Lighthouse_17893495652749_102X74.jpg', '/image/Lighthouse_17893495652749_63X46.jpg', '/image/Lighthouse_17893495652749_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('100', 'Penguins_17893816512391', '2011-09-15 21:55:03', '2011-09-15 21:55:03', '1', '/image/Penguins_17893816512391.jpg', '/image/Penguins_17893816512391_635X460.jpg', '/image/Penguins_17893816512391_438X317.jpg', '/image/Penguins_17893816512391.jpg', '/image/Penguins_17893816512391_102X74.jpg', '/image/Penguins_17893816512391_63X46.jpg', '/image/Penguins_17893816512391_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('101', 'Tulips_17894161796011', '2011-09-15 21:55:04', '2011-09-15 21:55:04', '1', '/image/Tulips_17894161796011.jpg', '/image/Tulips_17894161796011_635X460.jpg', '/image/Tulips_17894161796011_438X317.jpg', '/image/Tulips_17894161796011.jpg', '/image/Tulips_17894161796011_102X74.jpg', '/image/Tulips_17894161796011_63X46.jpg', '/image/Tulips_17894161796011_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('102', 'Hydran_geas_17894480836760', '2011-09-15 21:55:04', '2011-09-15 21:55:04', '1', '/image/Hydran_geas_17894480836760.jpg', '/image/Hydran_geas_17894480836760_635X460.jpg', '/image/Hydran_geas_17894480836760_438X317.jpg', '/image/Hydran_geas_17894480836760.jpg', '/image/Hydran_geas_17894480836760_102X74.jpg', '/image/Hydran_geas_17894480836760_63X46.jpg', '/image/Hydran_geas_17894480836760_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('103', 'ASDFASFAS', '2011-09-15 21:55:32', '2011-09-15 21:55:32', '1', 'ASDFASFAS', '/image/17922502637298_635X460.jpg', '/image/17922502637298_438X317.jpg', '/image/17922502637298.jpg', '/image/17922502637298_102X74.jpg', '/image/17922502637298_63X46.jpg', '/image/17922502637298_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('104', 'Chrysanthemum_19867940433470', '2011-09-15 22:27:57', '2011-09-15 22:27:57', '1', '/image/Chrysanthemum_19867940433470.jpg', '/image/Chrysanthemum_19867940433470_635X460.jpg', '/image/Chrysanthemum_19867940433470_438X317.jpg', '/image/Chrysanthemum_19867940433470.jpg', '/image/Chrysanthemum_19867940433470_102X74.jpg', '/image/Chrysanthemum_19867940433470_63X46.jpg', '/image/Chrysanthemum_19867940433470_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('105', 'Desert_19868200445465', '2011-09-15 22:27:58', '2011-09-15 22:27:58', '1', '/image/Desert_19868200445465.jpg', '/image/Desert_19868200445465_635X460.jpg', '/image/Desert_19868200445465_438X317.jpg', '/image/Desert_19868200445465.jpg', '/image/Desert_19868200445465_102X74.jpg', '/image/Desert_19868200445465_63X46.jpg', '/image/Desert_19868200445465_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('106', 'Hydrangeas_19868664908724', '2011-09-15 22:27:58', '2011-09-15 22:27:58', '1', '/image/Hydrangeas_19868664908724.jpg', '/image/Hydrangeas_19868664908724_635X460.jpg', '/image/Hydrangeas_19868664908724_438X317.jpg', '/image/Hydrangeas_19868664908724.jpg', '/image/Hydrangeas_19868664908724_102X74.jpg', '/image/Hydrangeas_19868664908724_63X46.jpg', '/image/Hydrangeas_19868664908724_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('107', 'Jellyfish_19869061943986', '2011-09-15 22:27:59', '2011-09-15 22:27:59', '1', '/image/Jellyfish_19869061943986.jpg', '/image/Jellyfish_19869061943986_635X460.jpg', '/image/Jellyfish_19869061943986_438X317.jpg', '/image/Jellyfish_19869061943986.jpg', '/image/Jellyfish_19869061943986_102X74.jpg', '/image/Jellyfish_19869061943986_63X46.jpg', '/image/Jellyfish_19869061943986_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('108', 'Koala_19869420160031', '2011-09-15 22:27:59', '2011-09-15 22:27:59', '1', '/image/Koala_19869420160031.jpg', '/image/Koala_19869420160031_635X460.jpg', '/image/Koala_19869420160031_438X317.jpg', '/image/Koala_19869420160031.jpg', '/image/Koala_19869420160031_102X74.jpg', '/image/Koala_19869420160031_63X46.jpg', '/image/Koala_19869420160031_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('109', 'Lighthouse_19869814024453', '2011-09-15 22:27:59', '2011-09-15 22:27:59', '1', '/image/Lighthouse_19869814024453.jpg', '/image/Lighthouse_19869814024453_635X460.jpg', '/image/Lighthouse_19869814024453_438X317.jpg', '/image/Lighthouse_19869814024453.jpg', '/image/Lighthouse_19869814024453_102X74.jpg', '/image/Lighthouse_19869814024453_63X46.jpg', '/image/Lighthouse_19869814024453_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('110', 'Penguins_19870230075519', '2011-09-15 22:28:00', '2011-09-15 22:28:00', '1', '/image/Penguins_19870230075519.jpg', '/image/Penguins_19870230075519_635X460.jpg', '/image/Penguins_19870230075519_438X317.jpg', '/image/Penguins_19870230075519.jpg', '/image/Penguins_19870230075519_102X74.jpg', '/image/Penguins_19870230075519_63X46.jpg', '/image/Penguins_19870230075519_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('111', 'Tulips_19870584107533', '2011-09-15 22:28:00', '2011-09-15 22:28:00', '1', '/image/Tulips_19870584107533.jpg', '/image/Tulips_19870584107533_635X460.jpg', '/image/Tulips_19870584107533_438X317.jpg', '/image/Tulips_19870584107533.jpg', '/image/Tulips_19870584107533_102X74.jpg', '/image/Tulips_19870584107533_63X46.jpg', '/image/Tulips_19870584107533_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('112', 'Hydran_geas_19870981401482', '2011-09-15 22:28:00', '2011-09-15 22:28:00', '1', '/image/Hydran_geas_19870981401482.jpg', '/image/Hydran_geas_19870981401482_635X460.jpg', '/image/Hydran_geas_19870981401482_438X317.jpg', '/image/Hydran_geas_19870981401482.jpg', '/image/Hydran_geas_19870981401482_102X74.jpg', '/image/Hydran_geas_19870981401482_63X46.jpg', '/image/Hydran_geas_19870981401482_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('113', '_______________________________35508384722668', '2011-09-21 22:36:40', '2011-09-21 22:36:40', '1', '/image/_______________________________35508384722668.jpg', '/image/_______________________________35508384722668_635X460.jpg', '/image/_______________________________35508384722668_438X317.jpg', '/image/_______________________________35508384722668.jpg', '/image/_______________________________35508384722668_102X74.jpg', '/image/_______________________________35508384722668_63X46.jpg', '/image/_______________________________35508384722668_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('114', '_______________________________35510202556102', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35510202556102.jpg', '/image/_______________________________35510202556102_635X460.jpg', '/image/_______________________________35510202556102_438X317.jpg', '/image/_______________________________35510202556102.jpg', '/image/_______________________________35510202556102_102X74.jpg', '/image/_______________________________35510202556102_63X46.jpg', '/image/_______________________________35510202556102_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('115', '_______________________________35510331043748', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35510331043748.jpg', '/image/_______________________________35510331043748_635X460.jpg', '/image/_______________________________35510331043748_438X317.jpg', '/image/_______________________________35510331043748.jpg', '/image/_______________________________35510331043748_102X74.jpg', '/image/_______________________________35510331043748_63X46.jpg', '/image/_______________________________35510331043748_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('116', '_______________________________35510521517262', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35510521517262.jpg', '/image/_______________________________35510521517262_635X460.jpg', '/image/_______________________________35510521517262_438X317.jpg', '/image/_______________________________35510521517262.jpg', '/image/_______________________________35510521517262_102X74.jpg', '/image/_______________________________35510521517262_63X46.jpg', '/image/_______________________________35510521517262_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('117', '_______________________________35510657372565', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35510657372565.jpg', '/image/_______________________________35510657372565_635X460.jpg', '/image/_______________________________35510657372565_438X317.jpg', '/image/_______________________________35510657372565.jpg', '/image/_______________________________35510657372565_102X74.jpg', '/image/_______________________________35510657372565_63X46.jpg', '/image/_______________________________35510657372565_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('118', '_______________________________35510812423658', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35510812423658.jpg', '/image/_______________________________35510812423658_635X460.jpg', '/image/_______________________________35510812423658_438X317.jpg', '/image/_______________________________35510812423658.jpg', '/image/_______________________________35510812423658_102X74.jpg', '/image/_______________________________35510812423658_63X46.jpg', '/image/_______________________________35510812423658_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('119', '_______________________________35511002722018', '2011-09-21 22:36:42', '2011-09-21 22:36:42', '1', '/image/_______________________________35511002722018.jpg', '/image/_______________________________35511002722018_635X460.jpg', '/image/_______________________________35511002722018_438X317.jpg', '/image/_______________________________35511002722018.jpg', '/image/_______________________________35511002722018_102X74.jpg', '/image/_______________________________35511002722018_63X46.jpg', '/image/_______________________________35511002722018_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('120', '_______________________________35511181616850', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/_______________________________35511181616850.jpg', '/image/_______________________________35511181616850_635X460.jpg', '/image/_______________________________35511181616850_438X317.jpg', '/image/_______________________________35511181616850.jpg', '/image/_______________________________35511181616850_102X74.jpg', '/image/_______________________________35511181616850_63X46.jpg', '/image/_______________________________35511181616850_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('121', '_______________________________35511327190346', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/_______________________________35511327190346.jpg', '/image/_______________________________35511327190346_635X460.jpg', '/image/_______________________________35511327190346_438X317.jpg', '/image/_______________________________35511327190346.jpg', '/image/_______________________________35511327190346_102X74.jpg', '/image/_______________________________35511327190346_63X46.jpg', '/image/_______________________________35511327190346_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('122', '_______________________________35511486311186', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/_______________________________35511486311186.jpg', '/image/_______________________________35511486311186_635X460.jpg', '/image/_______________________________35511486311186_438X317.jpg', '/image/_______________________________35511486311186.jpg', '/image/_______________________________35511486311186_102X74.jpg', '/image/_______________________________35511486311186_63X46.jpg', '/image/_______________________________35511486311186_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('123', '________________________________35511664001493', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/________________________________35511664001493.jpg', '/image/________________________________35511664001493_635X460.jpg', '/image/________________________________35511664001493_438X317.jpg', '/image/________________________________35511664001493.jpg', '/image/________________________________35511664001493_102X74.jpg', '/image/________________________________35511664001493_63X46.jpg', '/image/________________________________35511664001493_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('124', '________________________________35511908459582', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/________________________________35511908459582.jpg', '/image/________________________________35511908459582_635X460.jpg', '/image/________________________________35511908459582_438X317.jpg', '/image/________________________________35511908459582.jpg', '/image/________________________________35511908459582_102X74.jpg', '/image/________________________________35511908459582_63X46.jpg', '/image/________________________________35511908459582_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('125', '________________________________35512008682279', '2011-09-21 22:36:43', '2011-09-21 22:36:43', '1', '/image/________________________________35512008682279.jpg', '/image/________________________________35512008682279_635X460.jpg', '/image/________________________________35512008682279_438X317.jpg', '/image/________________________________35512008682279.jpg', '/image/________________________________35512008682279_102X74.jpg', '/image/________________________________35512008682279_63X46.jpg', '/image/________________________________35512008682279_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('126', 'Beautiful_and_simple_short_sleeve_satin_dress_35512195368989', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989_635X460.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989_438X317.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989_102X74.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989_63X46.jpg', '/image/Beautiful_and_simple_short_sleeve_satin_dress_35512195368989_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('127', 'Elegant__taffeta___piece_dress_and_jacket_set_35512399941101', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101_635X460.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101_438X317.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101_102X74.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101_63X46.jpg', '/image/Elegant__taffeta___piece_dress_and_jacket_set_35512399941101_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('128', '______________________________35512549435366', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/______________________________35512549435366.jpg', '/image/______________________________35512549435366_635X460.jpg', '/image/______________________________35512549435366_438X317.jpg', '/image/______________________________35512549435366.jpg', '/image/______________________________35512549435366_102X74.jpg', '/image/______________________________35512549435366_63X46.jpg', '/image/______________________________35512549435366_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('129', '______________________________35512714358635', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/______________________________35512714358635.jpg', '/image/______________________________35512714358635_635X460.jpg', '/image/______________________________35512714358635_438X317.jpg', '/image/______________________________35512714358635.jpg', '/image/______________________________35512714358635_102X74.jpg', '/image/______________________________35512714358635_63X46.jpg', '/image/______________________________35512714358635_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('130', '______________________________35512922336831', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/______________________________35512922336831.jpg', '/image/______________________________35512922336831_635X460.jpg', '/image/______________________________35512922336831_438X317.jpg', '/image/______________________________35512922336831.jpg', '/image/______________________________35512922336831_102X74.jpg', '/image/______________________________35512922336831_63X46.jpg', '/image/______________________________35512922336831_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('131', '______________________________35513054329879', '2011-09-21 22:36:44', '2011-09-21 22:36:44', '1', '/image/______________________________35513054329879.jpg', '/image/______________________________35513054329879_635X460.jpg', '/image/______________________________35513054329879_438X317.jpg', '/image/______________________________35513054329879.jpg', '/image/______________________________35513054329879_102X74.jpg', '/image/______________________________35513054329879_63X46.jpg', '/image/______________________________35513054329879_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('132', '______________________________35513219380183', '2011-09-21 22:36:45', '2011-09-21 22:36:45', '1', '/image/______________________________35513219380183.jpg', '/image/______________________________35513219380183_635X460.jpg', '/image/______________________________35513219380183_438X317.jpg', '/image/______________________________35513219380183.jpg', '/image/______________________________35513219380183_102X74.jpg', '/image/______________________________35513219380183_63X46.jpg', '/image/______________________________35513219380183_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('133', '______________________________35513439188052', '2011-09-21 22:36:45', '2011-09-21 22:36:45', '1', '/image/______________________________35513439188052.jpg', '/image/______________________________35513439188052_635X460.jpg', '/image/______________________________35513439188052_438X317.jpg', '/image/______________________________35513439188052.jpg', '/image/______________________________35513439188052_102X74.jpg', '/image/______________________________35513439188052_63X46.jpg', '/image/______________________________35513439188052_265X192.jpg', 'PRODUCT_NORMAL', null, '', 'N');
INSERT INTO `shop_image` VALUES ('134', 'sdfsdfsd', '2011-09-29 00:16:43', '2011-09-29 00:17:40', '1', 'sdfsdfsd', '/image/20584008902408_690X500.jpg', '/image/20584008902408_438X317.jpg', '/image/20584008902408.jpg', '/image/20584008902408_102X74.jpg', '/image/20584008902408_63X46.jpg', '/image/20584008902408_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', '', 'N');
INSERT INTO `shop_image` VALUES ('135', 'Chrysanthemum_20164673170252', '2011-10-08 15:17:10', '2011-10-08 15:17:10', '1', '/image/Chrysanthemum_20164673170252.jpg', '/image/Chrysanthemum_20164673170252_690X500.jpg', '/image/Chrysanthemum_20164673170252_438X317.jpg', '/image/Chrysanthemum_20164673170252.jpg', '/image/Chrysanthemum_20164673170252_102X74.jpg', '/image/Chrysanthemum_20164673170252_63X46.jpg', '/image/Chrysanthemum_20164673170252_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('136', 'Desert_20167310693903', '2011-10-08 15:17:13', '2011-10-08 15:17:13', '1', '/image/Desert_20167310693903.jpg', '/image/Desert_20167310693903_690X500.jpg', '/image/Desert_20167310693903_438X317.jpg', '/image/Desert_20167310693903.jpg', '/image/Desert_20167310693903_102X74.jpg', '/image/Desert_20167310693903_63X46.jpg', '/image/Desert_20167310693903_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('137', 'Hydrangeas_20167870930959', '2011-10-08 15:17:13', '2011-10-08 15:17:13', '1', '/image/Hydrangeas_20167870930959.jpg', '/image/Hydrangeas_20167870930959_690X500.jpg', '/image/Hydrangeas_20167870930959_438X317.jpg', '/image/Hydrangeas_20167870930959.jpg', '/image/Hydrangeas_20167870930959_102X74.jpg', '/image/Hydrangeas_20167870930959_63X46.jpg', '/image/Hydrangeas_20167870930959_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('138', 'Jellyfish_20168350094988', '2011-10-08 15:17:14', '2011-10-08 15:17:14', '1', '/image/Jellyfish_20168350094988.jpg', '/image/Jellyfish_20168350094988_690X500.jpg', '/image/Jellyfish_20168350094988_438X317.jpg', '/image/Jellyfish_20168350094988.jpg', '/image/Jellyfish_20168350094988_102X74.jpg', '/image/Jellyfish_20168350094988_63X46.jpg', '/image/Jellyfish_20168350094988_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('139', 'Koala_20168910732014', '2011-10-08 15:17:14', '2011-10-08 15:17:14', '1', '/image/Koala_20168910732014.jpg', '/image/Koala_20168910732014_690X500.jpg', '/image/Koala_20168910732014_438X317.jpg', '/image/Koala_20168910732014.jpg', '/image/Koala_20168910732014_102X74.jpg', '/image/Koala_20168910732014_63X46.jpg', '/image/Koala_20168910732014_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('140', 'Lighthouse_20169389515320', '2011-10-08 15:17:15', '2011-10-08 15:17:15', '1', '/image/Lighthouse_20169389515320.jpg', '/image/Lighthouse_20169389515320_690X500.jpg', '/image/Lighthouse_20169389515320_438X317.jpg', '/image/Lighthouse_20169389515320.jpg', '/image/Lighthouse_20169389515320_102X74.jpg', '/image/Lighthouse_20169389515320_63X46.jpg', '/image/Lighthouse_20169389515320_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('141', 'Penguins_20169852430712', '2011-10-08 15:17:15', '2011-10-08 15:17:15', '1', '/image/Penguins_20169852430712.jpg', '/image/Penguins_20169852430712_690X500.jpg', '/image/Penguins_20169852430712_438X317.jpg', '/image/Penguins_20169852430712.jpg', '/image/Penguins_20169852430712_102X74.jpg', '/image/Penguins_20169852430712_63X46.jpg', '/image/Penguins_20169852430712_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('142', 'Tulips_20170325130548', '2011-10-08 15:17:16', '2011-10-08 15:17:16', '1', '/image/Tulips_20170325130548.jpg', '/image/Tulips_20170325130548_690X500.jpg', '/image/Tulips_20170325130548_438X317.jpg', '/image/Tulips_20170325130548.jpg', '/image/Tulips_20170325130548_102X74.jpg', '/image/Tulips_20170325130548_63X46.jpg', '/image/Tulips_20170325130548_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('143', 'Hydran geas_20170836412280', '2011-10-08 15:17:16', '2011-10-08 15:17:16', '1', '/image/Hydran geas_20170836412280.jpg', '/image/Hydran geas_20170836412280_690X500.jpg', '/image/Hydran geas_20170836412280_438X317.jpg', '/image/Hydran geas_20170836412280.jpg', '/image/Hydran geas_20170836412280_102X74.jpg', '/image/Hydran geas_20170836412280_63X46.jpg', '/image/Hydran geas_20170836412280_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('144', 'Chrysanthemum_20327163316709', '2011-10-08 15:20:34', '2011-10-08 15:20:34', '1', '/image/Chrysanthemum_20327163316709.jpg', '/image/Chrysanthemum_20327163316709_690X500.jpg', '/image/Chrysanthemum_20327163316709_438X317.jpg', '/image/Chrysanthemum_20327163316709.jpg', '/image/Chrysanthemum_20327163316709_102X74.jpg', '/image/Chrysanthemum_20327163316709_63X46.jpg', '/image/Chrysanthemum_20327163316709_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('145', 'Desert_20387920652732', '2011-10-08 15:20:53', '2011-10-08 15:20:53', '1', '/image/Desert_20387920652732.jpg', '/image/Desert_20387920652732_690X500.jpg', '/image/Desert_20387920652732_438X317.jpg', '/image/Desert_20387920652732.jpg', '/image/Desert_20387920652732_102X74.jpg', '/image/Desert_20387920652732_63X46.jpg', '/image/Desert_20387920652732_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('146', 'Hydrangeas_20390624749248', '2011-10-08 15:20:56', '2011-10-08 15:20:56', '1', '/image/Hydrangeas_20390624749248.jpg', '/image/Hydrangeas_20390624749248_690X500.jpg', '/image/Hydrangeas_20390624749248_438X317.jpg', '/image/Hydrangeas_20390624749248.jpg', '/image/Hydrangeas_20390624749248_102X74.jpg', '/image/Hydrangeas_20390624749248_63X46.jpg', '/image/Hydrangeas_20390624749248_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('147', 'Jellyfish_20391320654272', '2011-10-08 15:20:57', '2011-10-08 15:20:57', '1', '/image/Jellyfish_20391320654272.jpg', '/image/Jellyfish_20391320654272_690X500.jpg', '/image/Jellyfish_20391320654272_438X317.jpg', '/image/Jellyfish_20391320654272.jpg', '/image/Jellyfish_20391320654272_102X74.jpg', '/image/Jellyfish_20391320654272_63X46.jpg', '/image/Jellyfish_20391320654272_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('148', 'Koala_20392244551419', '2011-10-08 15:20:58', '2011-10-08 15:20:58', '1', '/image/Koala_20392244551419.jpg', '/image/Koala_20392244551419_690X500.jpg', '/image/Koala_20392244551419_438X317.jpg', '/image/Koala_20392244551419.jpg', '/image/Koala_20392244551419_102X74.jpg', '/image/Koala_20392244551419_63X46.jpg', '/image/Koala_20392244551419_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('149', 'Lighthouse_20392907407913', '2011-10-08 15:20:58', '2011-10-08 15:20:58', '1', '/image/Lighthouse_20392907407913.jpg', '/image/Lighthouse_20392907407913_690X500.jpg', '/image/Lighthouse_20392907407913_438X317.jpg', '/image/Lighthouse_20392907407913.jpg', '/image/Lighthouse_20392907407913_102X74.jpg', '/image/Lighthouse_20392907407913_63X46.jpg', '/image/Lighthouse_20392907407913_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('150', 'Penguins_20393575262299', '2011-10-08 15:20:59', '2011-10-08 15:20:59', '1', '/image/Penguins_20393575262299.jpg', '/image/Penguins_20393575262299_690X500.jpg', '/image/Penguins_20393575262299_438X317.jpg', '/image/Penguins_20393575262299.jpg', '/image/Penguins_20393575262299_102X74.jpg', '/image/Penguins_20393575262299_63X46.jpg', '/image/Penguins_20393575262299_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('151', 'Tulips_20394301535784', '2011-10-08 15:21:00', '2011-10-08 15:21:00', '1', '/image/Tulips_20394301535784.jpg', '/image/Tulips_20394301535784_690X500.jpg', '/image/Tulips_20394301535784_438X317.jpg', '/image/Tulips_20394301535784.jpg', '/image/Tulips_20394301535784_102X74.jpg', '/image/Tulips_20394301535784_63X46.jpg', '/image/Tulips_20394301535784_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('152', 'Hydran geas_20395217885856', '2011-10-08 15:21:01', '2011-10-08 15:21:01', '1', '/image/Hydran geas_20395217885856.jpg', '/image/Hydran geas_20395217885856_690X500.jpg', '/image/Hydran geas_20395217885856_438X317.jpg', '/image/Hydran geas_20395217885856.jpg', '/image/Hydran geas_20395217885856_102X74.jpg', '/image/Hydran geas_20395217885856_63X46.jpg', '/image/Hydran geas_20395217885856_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'Y');
INSERT INTO `shop_image` VALUES ('153', 'Chrysanthemum_20424339023634', '2011-10-08 15:22:18', '2011-10-08 15:22:20', '1', '/image/Chrysanthemum_20424339023634.jpg', '/image/Chrysanthemum_20424339023634_690X500.jpg', '/image/Chrysanthemum_20424339023634_438X317.jpg', '/image/Chrysanthemum_20424339023634.jpg', '/image/Chrysanthemum_20424339023634_102X74.jpg', '/image/Chrysanthemum_20424339023634_63X46.jpg', '/image/Chrysanthemum_20424339023634_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'Y');
INSERT INTO `shop_image` VALUES ('154', 'Chrysanthemum_20697550229722', '2011-10-08 15:26:04', '2011-10-08 15:26:04', '1', '/image/Chrysanthemum_20697550229722.jpg', '/image/Chrysanthemum_20697550229722_690X500.jpg', '/image/Chrysanthemum_20697550229722_438X317.jpg', '/image/Chrysanthemum_20697550229722.jpg', '/image/Chrysanthemum_20697550229722_102X74.jpg', '/image/Chrysanthemum_20697550229722_63X46.jpg', '/image/Chrysanthemum_20697550229722_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'Y');
INSERT INTO `shop_image` VALUES ('155', 'Desert_20700080955231', '2011-10-08 15:26:06', '2011-10-08 15:26:06', '1', '/image/Desert_20700080955231.jpg', '/image/Desert_20700080955231_690X500.jpg', '/image/Desert_20700080955231_438X317.jpg', '/image/Desert_20700080955231.jpg', '/image/Desert_20700080955231_102X74.jpg', '/image/Desert_20700080955231_63X46.jpg', '/image/Desert_20700080955231_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('156', 'Hydrangeas_20702045792519', '2011-10-08 15:26:08', '2011-10-08 15:26:08', '1', '/image/Hydrangeas_20702045792519.jpg', '/image/Hydrangeas_20702045792519_690X500.jpg', '/image/Hydrangeas_20702045792519_438X317.jpg', '/image/Hydrangeas_20702045792519.jpg', '/image/Hydrangeas_20702045792519_102X74.jpg', '/image/Hydrangeas_20702045792519_63X46.jpg', '/image/Hydrangeas_20702045792519_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('157', 'Jellyfish_20703738043919', '2011-10-08 15:26:09', '2011-10-08 15:26:09', '1', '/image/Jellyfish_20703738043919.jpg', '/image/Jellyfish_20703738043919_690X500.jpg', '/image/Jellyfish_20703738043919_438X317.jpg', '/image/Jellyfish_20703738043919.jpg', '/image/Jellyfish_20703738043919_102X74.jpg', '/image/Jellyfish_20703738043919_63X46.jpg', '/image/Jellyfish_20703738043919_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('158', 'Koala_20705490844383', '2011-10-08 15:26:11', '2011-10-08 15:26:11', '1', '/image/Koala_20705490844383.jpg', '/image/Koala_20705490844383_690X500.jpg', '/image/Koala_20705490844383_438X317.jpg', '/image/Koala_20705490844383.jpg', '/image/Koala_20705490844383_102X74.jpg', '/image/Koala_20705490844383_63X46.jpg', '/image/Koala_20705490844383_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('159', 'Lighthouse_20707227276104', '2011-10-08 15:26:13', '2011-10-08 15:26:13', '1', '/image/Lighthouse_20707227276104.jpg', '/image/Lighthouse_20707227276104_690X500.jpg', '/image/Lighthouse_20707227276104_438X317.jpg', '/image/Lighthouse_20707227276104.jpg', '/image/Lighthouse_20707227276104_102X74.jpg', '/image/Lighthouse_20707227276104_63X46.jpg', '/image/Lighthouse_20707227276104_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('160', 'Penguins_20709012466051', '2011-10-08 15:26:15', '2011-10-08 15:26:15', '1', '/image/Penguins_20709012466051.jpg', '/image/Penguins_20709012466051_690X500.jpg', '/image/Penguins_20709012466051_438X317.jpg', '/image/Penguins_20709012466051.jpg', '/image/Penguins_20709012466051_102X74.jpg', '/image/Penguins_20709012466051_63X46.jpg', '/image/Penguins_20709012466051_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('161', 'Tulips_20710551387287', '2011-10-08 15:26:16', '2011-10-08 15:26:16', '1', '/image/Tulips_20710551387287.jpg', '/image/Tulips_20710551387287_690X500.jpg', '/image/Tulips_20710551387287_438X317.jpg', '/image/Tulips_20710551387287.jpg', '/image/Tulips_20710551387287_102X74.jpg', '/image/Tulips_20710551387287_63X46.jpg', '/image/Tulips_20710551387287_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('162', 'Hydran geas_20712347852230', '2011-10-08 15:26:18', '2011-10-08 15:26:18', '1', '/image/Hydran geas_20712347852230.jpg', '/image/Hydran geas_20712347852230_690X500.jpg', '/image/Hydran geas_20712347852230_438X317.jpg', '/image/Hydran geas_20712347852230.jpg', '/image/Hydran geas_20712347852230_102X74.jpg', '/image/Hydran geas_20712347852230_63X46.jpg', '/image/Hydran geas_20712347852230_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('163', 'asdasdasd', '2011-10-08 15:27:06', '2011-10-08 15:27:06', '1', 'asdasdasd', '/image/20760715903907_690X500.jpg', '/image/20760715903907_438X317.jpg', '/image/20760715903907.jpg', '/image/20760715903907_102X74.jpg', '/image/20760715903907_63X46.jpg', '/image/20760715903907_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('164', 'asdasd', '2011-10-08 15:36:07', '2011-10-08 15:36:07', '1', 'asdasd', '/image/21301902077033_690X500.jpg', '/image/21301902077033_438X317.jpg', '/image/21301902077033.jpg', '/image/21301902077033_102X74.jpg', '/image/21301902077033_63X46.jpg', '/image/21301902077033_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('165', 'spark', '2011-10-08 15:37:57', '2011-10-08 15:37:57', '1', 'spark', '/image/21411459635561_690X500.jpg', '/image/21411459635561_438X317.jpg', '/image/21411459635561.jpg', '/image/21411459635561_102X74.jpg', '/image/21411459635561_63X46.jpg', '/image/21411459635561_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'Y');
INSERT INTO `shop_image` VALUES ('166', 'Chrysanthemum_21628197523188', '2011-10-08 15:41:34', '2011-10-08 15:41:34', '1', '/image/Chrysanthemum_21628197523188.jpg', '/image/Chrysanthemum_21628197523188_690X500.jpg', '/image/Chrysanthemum_21628197523188_438X317.jpg', '/image/Chrysanthemum_21628197523188.jpg', '/image/Chrysanthemum_21628197523188_102X74.jpg', '/image/Chrysanthemum_21628197523188_63X46.jpg', '/image/Chrysanthemum_21628197523188_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('167', 'Desert_21628807600969', '2011-10-08 15:41:34', '2011-10-08 15:41:34', '1', '/image/Desert_21628807600969.jpg', '/image/Desert_21628807600969_690X500.jpg', '/image/Desert_21628807600969_438X317.jpg', '/image/Desert_21628807600969.jpg', '/image/Desert_21628807600969_102X74.jpg', '/image/Desert_21628807600969_63X46.jpg', '/image/Desert_21628807600969_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('168', 'Hydrangeas_21629358189856', '2011-10-08 15:41:35', '2011-10-08 15:41:35', '1', '/image/Hydrangeas_21629358189856.jpg', '/image/Hydrangeas_21629358189856_690X500.jpg', '/image/Hydrangeas_21629358189856_438X317.jpg', '/image/Hydrangeas_21629358189856.jpg', '/image/Hydrangeas_21629358189856_102X74.jpg', '/image/Hydrangeas_21629358189856_63X46.jpg', '/image/Hydrangeas_21629358189856_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('169', 'Jellyfish_21629835359039', '2011-10-08 15:41:35', '2011-10-08 15:41:35', '1', '/image/Jellyfish_21629835359039.jpg', '/image/Jellyfish_21629835359039_690X500.jpg', '/image/Jellyfish_21629835359039_438X317.jpg', '/image/Jellyfish_21629835359039.jpg', '/image/Jellyfish_21629835359039_102X74.jpg', '/image/Jellyfish_21629835359039_63X46.jpg', '/image/Jellyfish_21629835359039_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('170', 'Koala_21630329916329', '2011-10-08 15:41:36', '2011-10-08 15:41:36', '1', '/image/Koala_21630329916329.jpg', '/image/Koala_21630329916329_690X500.jpg', '/image/Koala_21630329916329_438X317.jpg', '/image/Koala_21630329916329.jpg', '/image/Koala_21630329916329_102X74.jpg', '/image/Koala_21630329916329_63X46.jpg', '/image/Koala_21630329916329_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('171', 'Lighthouse_21630799236245', '2011-10-08 15:41:36', '2011-10-08 15:41:36', '1', '/image/Lighthouse_21630799236245.jpg', '/image/Lighthouse_21630799236245_690X500.jpg', '/image/Lighthouse_21630799236245_438X317.jpg', '/image/Lighthouse_21630799236245.jpg', '/image/Lighthouse_21630799236245_102X74.jpg', '/image/Lighthouse_21630799236245_63X46.jpg', '/image/Lighthouse_21630799236245_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('172', 'Penguins_21631249520440', '2011-10-08 15:41:37', '2011-10-08 15:41:37', '1', '/image/Penguins_21631249520440.jpg', '/image/Penguins_21631249520440_690X500.jpg', '/image/Penguins_21631249520440_438X317.jpg', '/image/Penguins_21631249520440.jpg', '/image/Penguins_21631249520440_102X74.jpg', '/image/Penguins_21631249520440_63X46.jpg', '/image/Penguins_21631249520440_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('173', 'Tulips_21631716977936', '2011-10-08 15:41:37', '2011-10-08 15:41:37', '1', '/image/Tulips_21631716977936.jpg', '/image/Tulips_21631716977936_690X500.jpg', '/image/Tulips_21631716977936_438X317.jpg', '/image/Tulips_21631716977936.jpg', '/image/Tulips_21631716977936_102X74.jpg', '/image/Tulips_21631716977936_63X46.jpg', '/image/Tulips_21631716977936_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('174', 'Hydran geas_21632207440442', '2011-10-08 15:41:38', '2011-10-08 15:41:38', '1', '/image/Hydran geas_21632207440442.jpg', '/image/Hydran geas_21632207440442_690X500.jpg', '/image/Hydran geas_21632207440442_438X317.jpg', '/image/Hydran geas_21632207440442.jpg', '/image/Hydran geas_21632207440442_102X74.jpg', '/image/Hydran geas_21632207440442_63X46.jpg', '/image/Hydran geas_21632207440442_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('175', 'asdasdasd', '2011-10-08 15:54:42', '2011-10-08 15:54:42', '1', 'asdasdasd', '/image/22416342675333_690X500.jpg', '/image/22416342675333_438X317.jpg', '/image/22416342675333.jpg', '/image/22416342675333_102X74.jpg', '/image/22416342675333_63X46.jpg', '/image/22416342675333_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, 'N');
INSERT INTO `shop_image` VALUES ('176', 'Chrysanthemum_22501844880557', '2011-10-08 15:56:07', '2011-10-08 15:56:07', '1', '/image/Chrysanthemum_22501844880557.jpg', '/image/Chrysanthemum_22501844880557_690X500.jpg', '/image/Chrysanthemum_22501844880557_438X317.jpg', '/image/Chrysanthemum_22501844880557.jpg', '/image/Chrysanthemum_22501844880557_102X74.jpg', '/image/Chrysanthemum_22501844880557_63X46.jpg', '/image/Chrysanthemum_22501844880557_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('177', 'Desert_22502426188986', '2011-10-08 15:56:08', '2011-10-08 15:56:08', '1', '/image/Desert_22502426188986.jpg', '/image/Desert_22502426188986_690X500.jpg', '/image/Desert_22502426188986_438X317.jpg', '/image/Desert_22502426188986.jpg', '/image/Desert_22502426188986_102X74.jpg', '/image/Desert_22502426188986_63X46.jpg', '/image/Desert_22502426188986_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('178', 'Hydrangeas_22503047141793', '2011-10-08 15:56:09', '2011-10-08 15:56:09', '1', '/image/Hydrangeas_22503047141793.jpg', '/image/Hydrangeas_22503047141793_690X500.jpg', '/image/Hydrangeas_22503047141793_438X317.jpg', '/image/Hydrangeas_22503047141793.jpg', '/image/Hydrangeas_22503047141793_102X74.jpg', '/image/Hydrangeas_22503047141793_63X46.jpg', '/image/Hydrangeas_22503047141793_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('179', 'Jellyfish_22503510197309', '2011-10-08 15:56:09', '2011-10-08 15:56:09', '1', '/image/Jellyfish_22503510197309.jpg', '/image/Jellyfish_22503510197309_690X500.jpg', '/image/Jellyfish_22503510197309_438X317.jpg', '/image/Jellyfish_22503510197309.jpg', '/image/Jellyfish_22503510197309_102X74.jpg', '/image/Jellyfish_22503510197309_63X46.jpg', '/image/Jellyfish_22503510197309_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('180', 'Koala_22504034069049', '2011-10-08 15:56:10', '2011-10-08 15:56:10', '1', '/image/Koala_22504034069049.jpg', '/image/Koala_22504034069049_690X500.jpg', '/image/Koala_22504034069049_438X317.jpg', '/image/Koala_22504034069049.jpg', '/image/Koala_22504034069049_102X74.jpg', '/image/Koala_22504034069049_63X46.jpg', '/image/Koala_22504034069049_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('181', 'Lighthouse_22504523914470', '2011-10-08 15:56:10', '2011-10-08 15:56:10', '1', '/image/Lighthouse_22504523914470.jpg', '/image/Lighthouse_22504523914470_690X500.jpg', '/image/Lighthouse_22504523914470_438X317.jpg', '/image/Lighthouse_22504523914470.jpg', '/image/Lighthouse_22504523914470_102X74.jpg', '/image/Lighthouse_22504523914470_63X46.jpg', '/image/Lighthouse_22504523914470_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('182', 'Penguins_22505041969130', '2011-10-08 15:56:11', '2011-10-08 15:56:11', '1', '/image/Penguins_22505041969130.jpg', '/image/Penguins_22505041969130_690X500.jpg', '/image/Penguins_22505041969130_438X317.jpg', '/image/Penguins_22505041969130.jpg', '/image/Penguins_22505041969130_102X74.jpg', '/image/Penguins_22505041969130_63X46.jpg', '/image/Penguins_22505041969130_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('183', 'Tulips_22505554480799', '2011-10-08 15:56:11', '2011-10-08 15:56:11', '1', '/image/Tulips_22505554480799.jpg', '/image/Tulips_22505554480799_690X500.jpg', '/image/Tulips_22505554480799_438X317.jpg', '/image/Tulips_22505554480799.jpg', '/image/Tulips_22505554480799_102X74.jpg', '/image/Tulips_22505554480799_63X46.jpg', '/image/Tulips_22505554480799_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('184', 'Hydran geas_22506110884457', '2011-10-08 15:56:12', '2011-10-08 15:56:12', '1', '/image/Hydran geas_22506110884457.jpg', '/image/Hydran geas_22506110884457_690X500.jpg', '/image/Hydran geas_22506110884457_438X317.jpg', '/image/Hydran geas_22506110884457.jpg', '/image/Hydran geas_22506110884457_102X74.jpg', '/image/Hydran geas_22506110884457_63X46.jpg', '/image/Hydran geas_22506110884457_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('185', 'Chrysanthemum_22620495935820', '2011-10-08 15:58:06', '2011-10-08 15:58:06', '1', '/image/Chrysanthemum_22620495935820.jpg', '/image/Chrysanthemum_22620495935820_690X500.jpg', '/image/Chrysanthemum_22620495935820_438X317.jpg', '/image/Chrysanthemum_22620495935820.jpg', '/image/Chrysanthemum_22620495935820_102X74.jpg', '/image/Chrysanthemum_22620495935820_63X46.jpg', '/image/Chrysanthemum_22620495935820_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('186', 'Desert_22621036764901', '2011-10-08 15:58:07', '2011-10-08 15:58:07', '1', '/image/Desert_22621036764901.jpg', '/image/Desert_22621036764901_690X500.jpg', '/image/Desert_22621036764901_438X317.jpg', '/image/Desert_22621036764901.jpg', '/image/Desert_22621036764901_102X74.jpg', '/image/Desert_22621036764901_63X46.jpg', '/image/Desert_22621036764901_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('187', 'Hydrangeas_22621636894631', '2011-10-08 15:58:07', '2011-10-08 15:58:07', '1', '/image/Hydrangeas_22621636894631.jpg', '/image/Hydrangeas_22621636894631_690X500.jpg', '/image/Hydrangeas_22621636894631_438X317.jpg', '/image/Hydrangeas_22621636894631.jpg', '/image/Hydrangeas_22621636894631_102X74.jpg', '/image/Hydrangeas_22621636894631_63X46.jpg', '/image/Hydrangeas_22621636894631_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('188', 'Jellyfish_22622174585546', '2011-10-08 15:58:08', '2011-10-08 15:58:08', '1', '/image/Jellyfish_22622174585546.jpg', '/image/Jellyfish_22622174585546_690X500.jpg', '/image/Jellyfish_22622174585546_438X317.jpg', '/image/Jellyfish_22622174585546.jpg', '/image/Jellyfish_22622174585546_102X74.jpg', '/image/Jellyfish_22622174585546_63X46.jpg', '/image/Jellyfish_22622174585546_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('189', 'Koala_22622753320154', '2011-10-08 15:58:08', '2011-10-08 15:58:08', '1', '/image/Koala_22622753320154.jpg', '/image/Koala_22622753320154_690X500.jpg', '/image/Koala_22622753320154_438X317.jpg', '/image/Koala_22622753320154.jpg', '/image/Koala_22622753320154_102X74.jpg', '/image/Koala_22622753320154_63X46.jpg', '/image/Koala_22622753320154_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('190', 'Lighthouse_22623410972034', '2011-10-08 15:58:09', '2011-10-08 15:58:09', '1', '/image/Lighthouse_22623410972034.jpg', '/image/Lighthouse_22623410972034_690X500.jpg', '/image/Lighthouse_22623410972034_438X317.jpg', '/image/Lighthouse_22623410972034.jpg', '/image/Lighthouse_22623410972034_102X74.jpg', '/image/Lighthouse_22623410972034_63X46.jpg', '/image/Lighthouse_22623410972034_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('191', 'Penguins_22623980322555', '2011-10-08 15:58:10', '2011-10-08 15:58:10', '1', '/image/Penguins_22623980322555.jpg', '/image/Penguins_22623980322555_690X500.jpg', '/image/Penguins_22623980322555_438X317.jpg', '/image/Penguins_22623980322555.jpg', '/image/Penguins_22623980322555_102X74.jpg', '/image/Penguins_22623980322555_63X46.jpg', '/image/Penguins_22623980322555_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('192', 'Tulips_22624564885408', '2011-10-08 15:58:10', '2011-10-08 15:58:10', '1', '/image/Tulips_22624564885408.jpg', '/image/Tulips_22624564885408_690X500.jpg', '/image/Tulips_22624564885408_438X317.jpg', '/image/Tulips_22624564885408.jpg', '/image/Tulips_22624564885408_102X74.jpg', '/image/Tulips_22624564885408_63X46.jpg', '/image/Tulips_22624564885408_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('193', 'Hydran geas_22625096988676', '2011-10-08 15:58:11', '2011-10-08 15:58:11', '1', '/image/Hydran geas_22625096988676.jpg', '/image/Hydran geas_22625096988676_690X500.jpg', '/image/Hydran geas_22625096988676_438X317.jpg', '/image/Hydran geas_22625096988676.jpg', '/image/Hydran geas_22625096988676_102X74.jpg', '/image/Hydran geas_22625096988676_63X46.jpg', '/image/Hydran geas_22625096988676_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('194', 'Chrysanthemum_23386591819670', '2011-10-08 16:10:52', '2011-10-08 16:10:52', '1', '/image/Chrysanthemum_23386591819670.jpg', '/image/Chrysanthemum_23386591819670_690X500.jpg', '/image/Chrysanthemum_23386591819670_438X317.jpg', '/image/Chrysanthemum_23386591819670.jpg', '/image/Chrysanthemum_23386591819670_102X74.jpg', '/image/Chrysanthemum_23386591819670_63X46.jpg', '/image/Chrysanthemum_23386591819670_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('195', 'Desert_23387831260405', '2011-10-08 16:10:53', '2011-10-08 16:10:53', '1', '/image/Desert_23387831260405.jpg', '/image/Desert_23387831260405_690X500.jpg', '/image/Desert_23387831260405_438X317.jpg', '/image/Desert_23387831260405.jpg', '/image/Desert_23387831260405_102X74.jpg', '/image/Desert_23387831260405_63X46.jpg', '/image/Desert_23387831260405_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('196', 'Hydrangeas_23388812250475', '2011-10-08 16:10:54', '2011-10-08 16:10:54', '1', '/image/Hydrangeas_23388812250475.jpg', '/image/Hydrangeas_23388812250475_690X500.jpg', '/image/Hydrangeas_23388812250475_438X317.jpg', '/image/Hydrangeas_23388812250475.jpg', '/image/Hydrangeas_23388812250475_102X74.jpg', '/image/Hydrangeas_23388812250475_63X46.jpg', '/image/Hydrangeas_23388812250475_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('197', 'Jellyfish_23389733213483', '2011-10-08 16:10:55', '2011-10-08 16:10:55', '1', '/image/Jellyfish_23389733213483.jpg', '/image/Jellyfish_23389733213483_690X500.jpg', '/image/Jellyfish_23389733213483_438X317.jpg', '/image/Jellyfish_23389733213483.jpg', '/image/Jellyfish_23389733213483_102X74.jpg', '/image/Jellyfish_23389733213483_63X46.jpg', '/image/Jellyfish_23389733213483_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('198', 'Koala_23390720777073', '2011-10-08 16:10:56', '2011-10-08 16:10:56', '1', '/image/Koala_23390720777073.jpg', '/image/Koala_23390720777073_690X500.jpg', '/image/Koala_23390720777073_438X317.jpg', '/image/Koala_23390720777073.jpg', '/image/Koala_23390720777073_102X74.jpg', '/image/Koala_23390720777073_63X46.jpg', '/image/Koala_23390720777073_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('199', 'Lighthouse_23391737287094', '2011-10-08 16:10:57', '2011-10-08 16:10:57', '1', '/image/Lighthouse_23391737287094.jpg', '/image/Lighthouse_23391737287094_690X500.jpg', '/image/Lighthouse_23391737287094_438X317.jpg', '/image/Lighthouse_23391737287094.jpg', '/image/Lighthouse_23391737287094_102X74.jpg', '/image/Lighthouse_23391737287094_63X46.jpg', '/image/Lighthouse_23391737287094_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('200', 'Penguins_23392749854005', '2011-10-08 16:10:58', '2011-10-08 16:10:58', '1', '/image/Penguins_23392749854005.jpg', '/image/Penguins_23392749854005_690X500.jpg', '/image/Penguins_23392749854005_438X317.jpg', '/image/Penguins_23392749854005.jpg', '/image/Penguins_23392749854005_102X74.jpg', '/image/Penguins_23392749854005_63X46.jpg', '/image/Penguins_23392749854005_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('201', 'Tulips_23393675583931', '2011-10-08 16:10:59', '2011-10-08 16:10:59', '1', '/image/Tulips_23393675583931.jpg', '/image/Tulips_23393675583931_690X500.jpg', '/image/Tulips_23393675583931_438X317.jpg', '/image/Tulips_23393675583931.jpg', '/image/Tulips_23393675583931_102X74.jpg', '/image/Tulips_23393675583931_63X46.jpg', '/image/Tulips_23393675583931_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('202', 'Hydran geas_23394533046027', '2011-10-08 16:11:00', '2011-10-08 16:11:00', '1', '/image/Hydran geas_23394533046027.jpg', '/image/Hydran geas_23394533046027_690X500.jpg', '/image/Hydran geas_23394533046027_438X317.jpg', '/image/Hydran geas_23394533046027.jpg', '/image/Hydran geas_23394533046027_102X74.jpg', '/image/Hydran geas_23394533046027_63X46.jpg', '/image/Hydran geas_23394533046027_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('203', 'Chrysanthemum_24902290680006', '2011-10-08 16:36:08', '2011-10-08 16:36:08', '1', '/image/Chrysanthemum_24902290680006.jpg', '/image/Chrysanthemum_24902290680006_690X500.jpg', '/image/Chrysanthemum_24902290680006_438X317.jpg', '/image/Chrysanthemum_24902290680006.jpg', '/image/Chrysanthemum_24902290680006_102X74.jpg', '/image/Chrysanthemum_24902290680006_63X46.jpg', '/image/Chrysanthemum_24902290680006_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('204', 'Desert_24903052682859', '2011-10-08 16:36:09', '2011-10-08 16:36:09', '1', '/image/Desert_24903052682859.jpg', '/image/Desert_24903052682859_690X500.jpg', '/image/Desert_24903052682859_438X317.jpg', '/image/Desert_24903052682859.jpg', '/image/Desert_24903052682859_102X74.jpg', '/image/Desert_24903052682859_63X46.jpg', '/image/Desert_24903052682859_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('205', 'Hydrangeas_24903623297962', '2011-10-08 16:36:09', '2011-10-08 16:36:09', '1', '/image/Hydrangeas_24903623297962.jpg', '/image/Hydrangeas_24903623297962_690X500.jpg', '/image/Hydrangeas_24903623297962_438X317.jpg', '/image/Hydrangeas_24903623297962.jpg', '/image/Hydrangeas_24903623297962_102X74.jpg', '/image/Hydrangeas_24903623297962_63X46.jpg', '/image/Hydrangeas_24903623297962_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('206', 'Jellyfish_24904190673269', '2011-10-08 16:36:10', '2011-10-08 16:36:10', '1', '/image/Jellyfish_24904190673269.jpg', '/image/Jellyfish_24904190673269_690X500.jpg', '/image/Jellyfish_24904190673269_438X317.jpg', '/image/Jellyfish_24904190673269.jpg', '/image/Jellyfish_24904190673269_102X74.jpg', '/image/Jellyfish_24904190673269_63X46.jpg', '/image/Jellyfish_24904190673269_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('207', 'Koala_24904718559723', '2011-10-08 16:36:10', '2011-10-08 16:36:10', '1', '/image/Koala_24904718559723.jpg', '/image/Koala_24904718559723_690X500.jpg', '/image/Koala_24904718559723_438X317.jpg', '/image/Koala_24904718559723.jpg', '/image/Koala_24904718559723_102X74.jpg', '/image/Koala_24904718559723_63X46.jpg', '/image/Koala_24904718559723_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('208', 'Lighthouse_24905220061246', '2011-10-08 16:36:11', '2011-10-08 16:36:11', '1', '/image/Lighthouse_24905220061246.jpg', '/image/Lighthouse_24905220061246_690X500.jpg', '/image/Lighthouse_24905220061246_438X317.jpg', '/image/Lighthouse_24905220061246.jpg', '/image/Lighthouse_24905220061246_102X74.jpg', '/image/Lighthouse_24905220061246_63X46.jpg', '/image/Lighthouse_24905220061246_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('209', 'Penguins_24905686075155', '2011-10-08 16:36:11', '2011-10-08 16:36:11', '1', '/image/Penguins_24905686075155.jpg', '/image/Penguins_24905686075155_690X500.jpg', '/image/Penguins_24905686075155_438X317.jpg', '/image/Penguins_24905686075155.jpg', '/image/Penguins_24905686075155_102X74.jpg', '/image/Penguins_24905686075155_63X46.jpg', '/image/Penguins_24905686075155_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('210', 'Tulips_24906172320461', '2011-10-08 16:36:12', '2011-10-08 16:36:12', '1', '/image/Tulips_24906172320461.jpg', '/image/Tulips_24906172320461_690X500.jpg', '/image/Tulips_24906172320461_438X317.jpg', '/image/Tulips_24906172320461.jpg', '/image/Tulips_24906172320461_102X74.jpg', '/image/Tulips_24906172320461_63X46.jpg', '/image/Tulips_24906172320461_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('211', 'Hydran_geas_24906632431828', '2011-10-08 16:36:12', '2011-10-08 16:36:12', '1', '/image/Hydran_geas_24906632431828.jpg', '/image/Hydran_geas_24906632431828_690X500.jpg', '/image/Hydran_geas_24906632431828_438X317.jpg', '/image/Hydran_geas_24906632431828.jpg', '/image/Hydran_geas_24906632431828_102X74.jpg', '/image/Hydran_geas_24906632431828_63X46.jpg', '/image/Hydran_geas_24906632431828_265X192.jpg', 'PRODUCT_NORMAL', null, null, 'N');
INSERT INTO `shop_image` VALUES ('212', 'Chrysanthemum_25783975419362', '2011-10-08 16:50:50', '2011-10-08 16:50:50', '1', '/image/Chrysanthemum_25783975419362.jpg', '/image/Chrysanthemum_25783975419362_690X500.jpg', '/image/Chrysanthemum_25783975419362_438X317.jpg', '/image/Chrysanthemum_25783975419362.jpg', '/image/Chrysanthemum_25783975419362_102X74.jpg', '/image/Chrysanthemum_25783975419362_63X46.jpg', '/image/Chrysanthemum_25783975419362_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('213', 'Desert_25784733591510', '2011-10-08 16:50:50', '2011-10-08 16:50:50', '1', '/image/Desert_25784733591510.jpg', '/image/Desert_25784733591510_690X500.jpg', '/image/Desert_25784733591510_438X317.jpg', '/image/Desert_25784733591510.jpg', '/image/Desert_25784733591510_102X74.jpg', '/image/Desert_25784733591510_63X46.jpg', '/image/Desert_25784733591510_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('214', 'Hydrangeas_25785289033932', '2011-10-08 16:50:51', '2011-10-08 16:50:51', '1', '/image/Hydrangeas_25785289033932.jpg', '/image/Hydrangeas_25785289033932_690X500.jpg', '/image/Hydrangeas_25785289033932_438X317.jpg', '/image/Hydrangeas_25785289033932.jpg', '/image/Hydrangeas_25785289033932_102X74.jpg', '/image/Hydrangeas_25785289033932_63X46.jpg', '/image/Hydrangeas_25785289033932_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('215', 'Jellyfish_25785787715647', '2011-10-08 16:50:51', '2011-10-08 16:50:51', '1', '/image/Jellyfish_25785787715647.jpg', '/image/Jellyfish_25785787715647_690X500.jpg', '/image/Jellyfish_25785787715647_438X317.jpg', '/image/Jellyfish_25785787715647.jpg', '/image/Jellyfish_25785787715647_102X74.jpg', '/image/Jellyfish_25785787715647_63X46.jpg', '/image/Jellyfish_25785787715647_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('216', 'Koala_25786273657223', '2011-10-08 16:50:52', '2011-10-08 16:50:52', '1', '/image/Koala_25786273657223.jpg', '/image/Koala_25786273657223_690X500.jpg', '/image/Koala_25786273657223_438X317.jpg', '/image/Koala_25786273657223.jpg', '/image/Koala_25786273657223_102X74.jpg', '/image/Koala_25786273657223_63X46.jpg', '/image/Koala_25786273657223_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('217', 'Lighthouse_25786775348915', '2011-10-08 16:50:52', '2011-10-08 16:50:52', '1', '/image/Lighthouse_25786775348915.jpg', '/image/Lighthouse_25786775348915_690X500.jpg', '/image/Lighthouse_25786775348915_438X317.jpg', '/image/Lighthouse_25786775348915.jpg', '/image/Lighthouse_25786775348915_102X74.jpg', '/image/Lighthouse_25786775348915_63X46.jpg', '/image/Lighthouse_25786775348915_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('218', 'Penguins_25787228228487', '2011-10-08 16:50:53', '2011-10-08 16:50:53', '1', '/image/Penguins_25787228228487.jpg', '/image/Penguins_25787228228487_690X500.jpg', '/image/Penguins_25787228228487_438X317.jpg', '/image/Penguins_25787228228487.jpg', '/image/Penguins_25787228228487_102X74.jpg', '/image/Penguins_25787228228487_63X46.jpg', '/image/Penguins_25787228228487_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('219', 'Tulips_25787731574338', '2011-10-08 16:50:53', '2011-10-08 16:50:53', '1', '/image/Tulips_25787731574338.jpg', '/image/Tulips_25787731574338_690X500.jpg', '/image/Tulips_25787731574338_438X317.jpg', '/image/Tulips_25787731574338.jpg', '/image/Tulips_25787731574338_102X74.jpg', '/image/Tulips_25787731574338_63X46.jpg', '/image/Tulips_25787731574338_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('220', 'Hydran_geas_25788223666750', '2011-10-08 16:50:54', '2011-10-08 16:50:54', '1', '/image/Hydran_geas_25788223666750.jpg', '/image/Hydran_geas_25788223666750_690X500.jpg', '/image/Hydran_geas_25788223666750_438X317.jpg', '/image/Hydran_geas_25788223666750.jpg', '/image/Hydran_geas_25788223666750_102X74.jpg', '/image/Hydran_geas_25788223666750_63X46.jpg', '/image/Hydran_geas_25788223666750_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('221', 'asdasd', '2011-10-08 16:51:35', '2011-10-08 16:51:35', '1', 'asdasd', '/image/25829689857354_690X500.jpg', '/image/25829689857354_438X317.jpg', '/image/25829689857354.jpg', '/image/25829689857354_102X74.jpg', '/image/25829689857354_63X46.jpg', '/image/25829689857354_265X192.jpg', 'PRODUCT_NORMAL', 'INTERNAL', null, null);
INSERT INTO `shop_image` VALUES ('222', 'Chrysanthemum 52423922405440', '2011-10-09 00:14:51', '2011-10-09 00:14:51', '1', '/image/Chrysanthemum_52423922405440.jpg', '/image/Chrysanthemum_52423922405440_690X500.jpg', '/image/Chrysanthemum_52423922405440_438X317.jpg', '/image/Chrysanthemum_52423922405440.jpg', '/image/Chrysanthemum_52423922405440_102X74.jpg', '/image/Chrysanthemum_52423922405440_63X46.jpg', '/image/Chrysanthemum_52423922405440_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('223', 'Desert 52426748700290', '2011-10-09 00:14:54', '2011-10-09 00:14:54', '1', '/image/Desert_52426748700290.jpg', '/image/Desert_52426748700290_690X500.jpg', '/image/Desert_52426748700290_438X317.jpg', '/image/Desert_52426748700290.jpg', '/image/Desert_52426748700290_102X74.jpg', '/image/Desert_52426748700290_63X46.jpg', '/image/Desert_52426748700290_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('224', 'Hydrangeas 52427939944065', '2011-10-09 00:14:55', '2011-10-09 00:14:55', '1', '/image/Hydrangeas_52427939944065.jpg', '/image/Hydrangeas_52427939944065_690X500.jpg', '/image/Hydrangeas_52427939944065_438X317.jpg', '/image/Hydrangeas_52427939944065.jpg', '/image/Hydrangeas_52427939944065_102X74.jpg', '/image/Hydrangeas_52427939944065_63X46.jpg', '/image/Hydrangeas_52427939944065_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('225', 'Jellyfish 52428605047166', '2011-10-09 00:14:56', '2011-10-09 00:14:56', '1', '/image/Jellyfish_52428605047166.jpg', '/image/Jellyfish_52428605047166_690X500.jpg', '/image/Jellyfish_52428605047166_438X317.jpg', '/image/Jellyfish_52428605047166.jpg', '/image/Jellyfish_52428605047166_102X74.jpg', '/image/Jellyfish_52428605047166_63X46.jpg', '/image/Jellyfish_52428605047166_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('226', 'Koala 52429165975990', '2011-10-09 00:14:56', '2011-10-09 00:14:56', '1', '/image/Koala_52429165975990.jpg', '/image/Koala_52429165975990_690X500.jpg', '/image/Koala_52429165975990_438X317.jpg', '/image/Koala_52429165975990.jpg', '/image/Koala_52429165975990_102X74.jpg', '/image/Koala_52429165975990_63X46.jpg', '/image/Koala_52429165975990_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('227', 'Lighthouse 52429737000302', '2011-10-09 00:14:57', '2011-10-09 00:14:57', '1', '/image/Lighthouse_52429737000302.jpg', '/image/Lighthouse_52429737000302_690X500.jpg', '/image/Lighthouse_52429737000302_438X317.jpg', '/image/Lighthouse_52429737000302.jpg', '/image/Lighthouse_52429737000302_102X74.jpg', '/image/Lighthouse_52429737000302_63X46.jpg', '/image/Lighthouse_52429737000302_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('228', 'Penguins 52430482737195', '2011-10-09 00:14:58', '2011-10-09 00:14:58', '1', '/image/Penguins_52430482737195.jpg', '/image/Penguins_52430482737195_690X500.jpg', '/image/Penguins_52430482737195_438X317.jpg', '/image/Penguins_52430482737195.jpg', '/image/Penguins_52430482737195_102X74.jpg', '/image/Penguins_52430482737195_63X46.jpg', '/image/Penguins_52430482737195_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('229', 'Tulips 52431174510094', '2011-10-09 00:14:58', '2011-10-09 00:14:58', '1', '/image/Tulips_52431174510094.jpg', '/image/Tulips_52431174510094_690X500.jpg', '/image/Tulips_52431174510094_438X317.jpg', '/image/Tulips_52431174510094.jpg', '/image/Tulips_52431174510094_102X74.jpg', '/image/Tulips_52431174510094_63X46.jpg', '/image/Tulips_52431174510094_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);
INSERT INTO `shop_image` VALUES ('230', 'Hydran geas 52431767038470', '2011-10-09 00:14:59', '2011-10-09 00:14:59', '1', '/image/Hydran_geas_52431767038470.jpg', '/image/Hydran_geas_52431767038470_690X500.jpg', '/image/Hydran_geas_52431767038470_438X317.jpg', '/image/Hydran_geas_52431767038470.jpg', '/image/Hydran_geas_52431767038470_102X74.jpg', '/image/Hydran_geas_52431767038470_63X46.jpg', '/image/Hydran_geas_52431767038470_265X192.jpg', 'PRODUCT_NORMAL', null, null, null);

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
  `order_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK24293CA53972FC6D` (`user_id`),
  KEY `FK24293CA51EE5B775` (`status_id`),
  KEY `FK24293CA5BF627AED` (`site_id`),
  CONSTRAINT `FK24293CA51EE5B775` FOREIGN KEY (`status_id`) REFERENCES `shop_orderstatus` (`ID`),
  CONSTRAINT `FK24293CA53972FC6D` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`ID`),
  CONSTRAINT `FK24293CA5BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('1', null, '2011-09-13 12:20:09', null, null, null, null, null, 'szhu.spark@gmail.com', null, null, null, null, null, null, null, '1998', null, null);

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
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3E6351584E06B6C7` (`order_id`),
  KEY `FK3E635158582107E7` (`product_id`),
  CONSTRAINT `FK3E6351584E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK3E635158582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderitem
-- ----------------------------
INSERT INTO `shop_orderitem` VALUES ('1', null, '2011-09-13 12:22:16', null, '1998', '41', '2', '1');

-- ----------------------------
-- Table structure for `shop_orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderstatus`;
CREATE TABLE `shop_orderstatus` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderstatus
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
  `showComments` int(11) DEFAULT NULL,
  `showlikeButton` int(11) DEFAULT NULL,
  `tabProductKey` mediumtext,
  `price` double DEFAULT NULL,
  `actualPrice` double DEFAULT NULL,
  `manualKey` varchar(255) DEFAULT NULL,
  `expired` bit(1) DEFAULT NULL,
  `strExpired` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKF44D8886BF627AED` (`site_id`),
  CONSTRAINT `FKF44D8886BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('12', 'Abc', '2011-08-16 22:10:20', '2011-08-16 23:38:01', '1', null, 'asdasd', '0', '0', null, '0', 'asdas', 'asdasdasdasd', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('13', 'ddd', '2011-08-17 22:52:00', '2011-08-17 22:59:48', '1', null, 'asdas', '0', '0', null, '0', 'asasd', '<p class=\"noFlow\"><a class=\"item_help\" id=\"wholesale\">Submit a large order inquiry</a></p>\n          		  <div class=\"item_linkBox\">\n			<div style=\"display: block;\" class=\"addthis_box\"><div style=\"clear: both;\"><div style=\"float:left;\"><div class=\"addthis_toolbox addthis_default_style\"><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Send to Facebook\" class=\"addthis_button_facebook at300b\"><span class=\"at300bs at15nc at15t_facebook\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Tweet This\" class=\"addthis_button_twitter at300b\"><span class=\"at300bs at15nc at15t_twitter\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Email\" class=\"addthis_button_email at300b\"><span class=\"at300bs at15nc at15t_email\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" class=\"addthis_button_compact at300m\"><span class=\"at300bs at15nc at15t_compact\"></span></a></div></div><br></div></div>\n		  </div>', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('14', 'School-Days-Katsura-Kotonoha-Microfibre-Pillowcase', '2011-08-23 21:27:05', '2011-08-23 21:27:05', '1', null, 'School Days Katsura Kotonoha Microfibre Pillowcase', '0', '0', null, '0', 'School Days Katsura Kotonoha Microfibre Pillowcase', '', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('15', 'Lolita-Cosplay-Costume-2', '2011-08-24 00:06:34', '2011-08-24 00:06:34', '1', null, 'Lolita Cosplay Costume 2', '0', '0', null, '0', 'Lolita Cosplay Costume 2', '<br>', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('16', 'Lolita-Cosplay-Costume-3', '2011-08-24 00:08:03', '2011-08-24 00:08:03', '1', null, 'Lolita Cosplay Costume 3', '0', '0', null, '0', 'Lolita Cosplay Costume 3', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('17', 'Lolita-Cosplay-Costume-5', '2011-08-24 00:09:38', '2011-08-24 00:09:38', '1', null, 'Lolita Cosplay Costume 5', '0', '0', null, '0', 'Lolita Cosplay Costume 5', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('18', 'Lolita-Cosplay-Costume-4', '2011-08-24 00:10:39', '2011-08-24 00:10:39', '1', null, 'Lolita Cosplay Costume 4', '0', '0', null, '0', 'Lolita Cosplay Costume 4', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('19', 'Lolita-Cosplay-Costume-6', '2011-08-24 00:11:34', '2011-08-24 00:11:34', '1', null, 'Lolita Cosplay Costume 6', '0', '0', null, '0', 'Lolita Cosplay Costume 6', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('20', 'Lolita-Cosplay-Costume-7', '2011-08-24 00:17:04', '2011-08-24 00:17:04', '1', null, 'Lolita Cosplay Costume 7', '0', '0', null, '0', 'Lolita Cosplay Costume 7', '<br>', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('21', 'Lolita-Cosplay-Costume-8', '2011-08-24 00:17:47', '2011-08-24 00:17:47', '1', null, 'Lolita Cosplay Costume 8', '0', '0', null, '0', 'Lolita Cosplay Costume 8', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('22', 'Lolita-Cosplay-Costume-9', '2011-08-24 00:18:23', '2011-08-24 00:18:23', '1', null, 'Lolita Cosplay Costume 9', '0', '0', null, '0', 'Lolita Cosplay Costume 9', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('23', 'Lolita-Cosplay-Costume-10', '2011-08-24 00:19:10', '2011-08-24 00:19:10', '1', null, 'Lolita Cosplay Costume 10', '0', '0', null, '0', 'Lolita Cosplay Costume 10', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('24', 'Lolita-Cosplay-Costume-11', '2011-08-24 00:19:55', '2011-08-24 00:19:55', '1', null, 'Lolita Cosplay Costume 11', '0', '0', null, '0', 'Lolita Cosplay Costume 11', '<br>', '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('25', 'Lolita-Cosplay-Costume-12', '2011-08-24 00:20:25', '2011-08-24 00:20:25', '1', null, 'Lolita Cosplay Costume 12', '0', '0', null, '0', 'Lolita Cosplay Costume 12', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('26', 'Lolita-Cosplay-Costume-13', '2011-08-24 00:20:58', '2011-08-24 00:20:58', '1', null, 'Lolita Cosplay Costume 13', '0', '0', null, '0', 'Lolita Cosplay Costume 13', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('27', 'Lolita-Cosplay-Costume-14', '2011-08-24 00:21:34', '2011-08-24 00:21:34', '1', null, 'Lolita Cosplay Costume 14', '0', '0', null, '0', 'Lolita Cosplay Costume 14', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('28', 'Lolita-Cosplay-Costume-15', '2011-08-24 00:22:08', '2011-08-24 00:22:08', '1', null, 'Lolita Cosplay Costume 15', '0', '0', null, '0', 'Lolita Cosplay Costume 15', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('29', 'Polyester-Womens-Gothic-Dress-1', '2011-08-24 22:38:21', '2011-08-24 22:38:21', '1', null, 'Polyester Womens Gothic Dress 1', '0', '0', null, '0', 'Polyester Womens Gothic Dress 1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('30', 'Polyester-Womens-Gothic-Dress-2', '2011-08-24 22:39:32', '2011-08-24 22:39:32', '1', null, 'Polyester Womens Gothic Dress 2', '0', '0', null, '0', 'Polyester Womens Gothic Dress 2', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('31', 'Polyester-Womens-Gothic-Dress-3', '2011-08-24 22:40:07', '2011-08-24 22:40:07', '1', null, 'Polyester Womens Gothic Dress 3', '0', '0', null, '0', 'Polyester Womens Gothic Dress 3', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('32', 'Polyester-Womens-Gothic-Dress-4', '2011-08-24 22:40:40', '2011-08-24 22:40:40', '1', null, 'Polyester Womens Gothic Dress 4', '0', '0', null, '0', 'Polyester Womens Gothic Dress 4', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('33', 'Polyester-Womens-Gothic-Dress-5', '2011-08-24 22:41:17', '2011-08-24 22:41:17', '1', null, 'Polyester Womens Gothic Dress 5', '0', '0', null, '0', 'Polyester Womens Gothic Dress 5', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('34', 'Polyester-Womens-Gothic-Dress-6', '2011-08-24 22:41:55', '2011-08-24 22:41:55', '1', null, 'Polyester Womens Gothic Dress 6', '0', '0', null, '0', 'Polyester Womens Gothic Dress 6', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('35', 'Polyester-Womens-Gothic-Dress-7', '2011-08-24 22:42:31', '2011-08-24 22:42:31', '1', null, 'Polyester Womens Gothic Dress 7', '0', '0', null, '0', 'Polyester Womens Gothic Dress 7', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('36', 'Polyester-Womens-Gothic-Dress-8', '2011-08-24 22:43:10', '2011-08-24 22:43:10', '1', null, 'Polyester Womens Gothic Dress 8', '0', '0', null, '0', 'Polyester Womens Gothic Dress 8', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('37', 'Polyester-Womens-Gothic-Dress-9', '2011-08-24 22:44:10', '2011-08-24 22:44:10', '1', null, 'Polyester Womens Gothic Dress 9', '0', '0', null, '0', 'Polyester Womens Gothic Dress 9', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('38', 'Polyester-Womens-Gothic-Dress-10', '2011-08-24 22:44:46', '2011-08-24 22:44:46', '1', null, 'Polyester Womens Gothic Dress 10', '0', '0', null, '0', 'Polyester Womens Gothic Dress 10', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('39', 'Men-T-shirt', '2011-08-25 01:24:33', '2011-08-25 17:29:44', '1', null, 'Men T-shirt', '0', '0', null, '0', 'Men\'s T-shirt', null, '0', '0', '0', '0', '0', '0', '0', null, null, null);
INSERT INTO `shop_product` VALUES ('40', 'DASASDA', '2011-09-05 22:19:27', '2011-09-05 22:24:20', '1', null, 'asdas', '0', '0', null, '0', 'asdas', 'adsasdasdasd', '0', '0', '1', '1', '29', '999', '77', null, null, null);
INSERT INTO `shop_product` VALUES ('41', '23423423423423', '2011-09-05 22:28:19', '2011-09-05 23:46:23', '1', null, 'daD', '0', '0', null, '0', 'ADA', 'If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.', '0', '0', '1', '1', '30', '999', '999', null, null, null);
INSERT INTO `shop_product` VALUES ('42', 'aDA', '2011-09-07 14:49:17', '2011-09-07 21:47:53', '1', null, 'dasdas', '0', '0', null, '0', 'asdas', 'dasdasdasdas<br>', '0', '0', '0', '0', '0', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('43', 'ascfasdazzz', '2011-09-07 23:29:07', '2011-09-08 00:34:07', '1', null, 'dasdas', '0', '0', null, '0', 'asdas', 'asdasd', '0', '0', '1', '1', '17', '2312312', '123121', null, null, 'N');
INSERT INTO `shop_product` VALUES ('44', 'asdaaaaaaaa', '2011-09-08 17:31:49', '2011-09-08 21:37:45', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('45', 'dddddazzzzzz', '2011-09-08 22:42:35', '2011-09-08 22:42:35', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('46', 'dddddazzzzzzddddzxxx', '2011-09-08 22:43:08', '2011-09-08 22:43:08', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('47', 'Hello-spark', '2011-09-08 22:46:23', '2011-09-08 22:46:23', '1', null, 'Hello-spark', '0', '0', null, '0', 'Hello-spark', 'Hello-spark', '0', '0', '1', '1', '32', '66', '444', null, null, 'N');
INSERT INTO `shop_product` VALUES ('48', 'asdas', '2011-09-08 22:49:12', '2011-09-08 22:49:12', '1', null, 'asasdasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', null, null, 'N');
INSERT INTO `shop_product` VALUES ('49', 'asdaxzzzzz', '2011-09-08 22:50:28', '2011-09-08 22:50:28', '1', null, 'asasdasdadasdasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', null, null, 'N');
INSERT INTO `shop_product` VALUES ('50', 'xcxcxczczxczxczxczx', '2011-09-08 22:50:35', '2011-09-09 15:13:07', '1', null, 'asasdasdadasdasdadasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', null, null, 'N');
INSERT INTO `shop_product` VALUES ('51', 'asdasdas', '2011-09-14 23:49:02', '2011-09-14 23:49:02', '1', null, 'asdasdasd', '0', '0', null, '0', 'dasdasd', 'asdasdasd', '0', '0', '0', '0', '0', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('52', 'asdasdaaaa', '2011-09-14 23:51:53', '2011-09-14 23:51:53', '1', null, 'dasdas', '0', '0', null, '0', 'asdas', 'asdasd', '0', '0', '0', '0', '0', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('53', 'asdasdaaaa001', '2011-09-14 23:52:44', '2011-09-14 23:52:44', '1', null, 'asdasd', '0', '0', null, '0', 'asdasd', 'asdasdasdasdas', '0', '0', '0', '0', '0', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('54', 'asdasdaaaa004', '2011-09-14 23:53:04', '2011-09-14 23:53:04', '1', null, 'asdasdasdasdas', '0', '0', null, '0', 'asdasddasd', 'asdasdasdasdas', '0', '0', '0', '0', '0', '0', '0', null, null, 'N');
INSERT INTO `shop_product` VALUES ('55', 'Spark-Test1', '2011-09-19 20:04:11', '2011-09-19 20:34:45', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('56', 'Spark-Test2', '2011-09-19 20:34:54', '2011-09-19 20:34:54', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('57', 'Spark-Test3', '2011-09-19 21:17:23', '2011-09-19 21:47:53', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('58', 'Spark-Test4', '2011-09-27 00:06:47', '2011-09-27 00:06:47', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('59', 'Spark-Test5-asdasdas-dasdasd', '2011-09-28 21:32:02', '2011-09-28 21:40:55', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('60', 'Spark-Test6', '2011-09-28 21:55:41', '2011-09-28 21:55:41', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('61', 'Spark-Test6-sdas-232', '2011-09-28 21:56:08', '2011-09-28 21:56:08', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'sdfsdfsdfasfasfasjfhjkashfddd', '0', '0', '1', '1', '24', '11223', '111', null, null, 'N');
INSERT INTO `shop_product` VALUES ('62', 'Spark-Test6-sdas-231', '2011-10-08 21:37:11', '2011-10-09 21:09:30', '1', null, 'Spark-Test1', '0', '0', null, '0', 'Spark Test1 Spark Test1 Spark Test1', 'asdasdasdasd<div>asdas</div><div>das</div><div>das</div><div>d</div><div>as</div><div>das</div><div>d</div><div>asd</div><div>as</div><div>das</div><div>d</div><div>as</div><div>das</div><div>d</div><div>asd</div><div>as</div><div>das</div><div>d</div><div>asd</div><div>as</div><div>das</div><div>d</div><div>asd</div>', '0', '0', '1', '1', '24', '11223', '111', '8,7,6', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoption
-- ----------------------------
INSERT INTO `shop_productoption` VALUES ('15', 'Color', null, null, 'asdasd', 'adasd', 'COLOR_SINGLE', '12');
INSERT INTO `shop_productoption` VALUES ('16', 'adsas', null, null, 'asdasd', 'asdasd', 'INPUT_TEXT', '12');
INSERT INTO `shop_productoption` VALUES ('17', 'asdasd', null, null, 'asdasd', 'asdasd', 'SINGLE_LIST', '12');
INSERT INTO `shop_productoption` VALUES ('18', 'Size', null, null, 'us2', null, 'SINGLE_LIST', '13');
INSERT INTO `shop_productoption` VALUES ('19', 'Dress Color', null, null, null, null, 'COLOR_SINGLE', '13');
INSERT INTO `shop_productoption` VALUES ('20', 'Qty', null, null, null, null, 'INPUT_TEXT', '13');
INSERT INTO `shop_productoption` VALUES ('21', 'New Option', null, null, null, null, 'MULTI_LIST', '13');
INSERT INTO `shop_productoption` VALUES ('22', 'Color', null, null, null, null, 'COLOR_SINGLE', '40');
INSERT INTO `shop_productoption` VALUES ('23', 'Size', null, null, null, null, 'SINGLE_LIST', '40');
INSERT INTO `shop_productoption` VALUES ('24', 'Qty', null, null, null, null, 'INPUT_TEXT', '40');
INSERT INTO `shop_productoption` VALUES ('25', 'Color', null, null, null, null, 'COLOR_SINGLE', '41');
INSERT INTO `shop_productoption` VALUES ('26', 'Size', null, null, null, null, 'SINGLE_LIST', '41');
INSERT INTO `shop_productoption` VALUES ('27', 'Qty', null, null, null, null, 'INPUT_TEXT', '41');
INSERT INTO `shop_productoption` VALUES ('28', 'Color', null, null, null, null, 'COLOR_SINGLE', '42');
INSERT INTO `shop_productoption` VALUES ('29', 'Size', null, null, null, null, 'SINGLE_LIST', '42');
INSERT INTO `shop_productoption` VALUES ('30', 'Qty', null, null, null, null, 'INPUT_TEXT', '42');
INSERT INTO `shop_productoption` VALUES ('31', 'Color', null, null, null, null, 'COLOR_SINGLE', '43');
INSERT INTO `shop_productoption` VALUES ('32', 'Size', null, null, null, null, 'SINGLE_LIST', '43');
INSERT INTO `shop_productoption` VALUES ('33', 'Qty', null, null, null, null, 'INPUT_TEXT', '43');
INSERT INTO `shop_productoption` VALUES ('34', 'Color', null, null, null, null, 'COLOR_SINGLE', '46');
INSERT INTO `shop_productoption` VALUES ('35', 'Size', null, null, null, null, 'SINGLE_LIST', '46');
INSERT INTO `shop_productoption` VALUES ('36', 'Qty', null, null, null, null, 'INPUT_TEXT', '46');
INSERT INTO `shop_productoption` VALUES ('37', 'Color', null, null, null, null, 'COLOR_SINGLE', '47');
INSERT INTO `shop_productoption` VALUES ('38', 'Size', null, null, null, null, 'SINGLE_LIST', '47');
INSERT INTO `shop_productoption` VALUES ('39', 'Qty', null, null, null, null, 'INPUT_TEXT', '47');
INSERT INTO `shop_productoption` VALUES ('40', 'Color', null, null, null, null, 'COLOR_SINGLE', '50');
INSERT INTO `shop_productoption` VALUES ('41', 'Size', null, null, null, null, 'SINGLE_LIST', '50');
INSERT INTO `shop_productoption` VALUES ('42', 'Qty', null, null, null, null, 'INPUT_TEXT', '50');
INSERT INTO `shop_productoption` VALUES ('43', 'Color', null, null, null, null, 'COLOR_SINGLE', '51');
INSERT INTO `shop_productoption` VALUES ('44', 'Size', null, null, null, null, 'SINGLE_LIST', '51');
INSERT INTO `shop_productoption` VALUES ('45', 'Qty', null, null, null, null, 'INPUT_TEXT', '51');
INSERT INTO `shop_productoption` VALUES ('46', 'Color', null, null, null, null, 'COLOR_SINGLE', '54');
INSERT INTO `shop_productoption` VALUES ('47', 'Size', null, null, null, null, 'SINGLE_LIST', '54');
INSERT INTO `shop_productoption` VALUES ('48', 'Qty', null, null, null, null, 'INPUT_TEXT', '54');
INSERT INTO `shop_productoption` VALUES ('49', 'Color', null, null, null, null, 'COLOR_SINGLE', '56');
INSERT INTO `shop_productoption` VALUES ('50', 'Size', null, null, null, null, 'SINGLE_LIST', '56');
INSERT INTO `shop_productoption` VALUES ('51', 'Qty', null, null, null, null, 'INPUT_TEXT', '56');
INSERT INTO `shop_productoption` VALUES ('52', 'Color', null, null, null, null, 'COLOR_SINGLE', '57');
INSERT INTO `shop_productoption` VALUES ('53', 'Size', null, null, 'm', null, 'SINGLE_LIST', '57');
INSERT INTO `shop_productoption` VALUES ('54', 'Qty', null, null, null, null, 'INPUT_TEXT', '57');
INSERT INTO `shop_productoption` VALUES ('55', 'Color', null, null, null, null, 'COLOR_SINGLE', '58');
INSERT INTO `shop_productoption` VALUES ('56', 'Size', null, null, 'm', null, 'SINGLE_LIST', '58');
INSERT INTO `shop_productoption` VALUES ('57', 'Qty', null, null, null, null, 'INPUT_TEXT', '58');
INSERT INTO `shop_productoption` VALUES ('58', 'Color', null, null, null, null, 'COLOR_SINGLE', '59');
INSERT INTO `shop_productoption` VALUES ('59', 'Size', null, null, 'm', null, 'SINGLE_LIST', '59');
INSERT INTO `shop_productoption` VALUES ('60', 'Qty', null, null, null, null, 'INPUT_TEXT', '59');
INSERT INTO `shop_productoption` VALUES ('61', 'Color', null, null, null, null, 'COLOR_SINGLE', '60');
INSERT INTO `shop_productoption` VALUES ('62', 'Size', null, null, 'm', null, 'SINGLE_LIST', '60');
INSERT INTO `shop_productoption` VALUES ('63', 'Qty', null, null, null, null, 'INPUT_TEXT', '60');
INSERT INTO `shop_productoption` VALUES ('64', 'Color', null, null, null, null, 'COLOR_SINGLE', '61');
INSERT INTO `shop_productoption` VALUES ('65', 'Size', null, null, 'm', null, 'SINGLE_LIST', '61');
INSERT INTO `shop_productoption` VALUES ('66', 'Qty', null, null, null, null, 'INPUT_TEXT', '61');
INSERT INTO `shop_productoption` VALUES ('67', 'Color', null, null, null, null, 'COLOR_SINGLE', '62');
INSERT INTO `shop_productoption` VALUES ('68', 'Size', null, null, 'm', null, 'SINGLE_LIST', '62');
INSERT INTO `shop_productoption` VALUES ('69', 'Qty', null, null, null, null, 'INPUT_TEXT', '62');

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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoptionitem
-- ----------------------------
INSERT INTO `shop_productoptionitem` VALUES ('17', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('18', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('19', 'Item 1', null, null, null, null, null, null, '16');
INSERT INTO `shop_productoptionitem` VALUES ('20', 'asdas', null, null, null, null, 'asdasd', null, '17');
INSERT INTO `shop_productoptionitem` VALUES ('21', 'aazx', null, null, null, null, 'asdasd', null, '17');
INSERT INTO `shop_productoptionitem` VALUES ('22', 'US 2', null, null, null, null, 'asdas', null, '18');
INSERT INTO `shop_productoptionitem` VALUES ('23', 'US 3', null, null, null, null, 'sdasd', null, '18');
INSERT INTO `shop_productoptionitem` VALUES ('24', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('25', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('26', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('27', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('28', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('29', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('30', 'Item 1', null, null, null, null, null, null, '20');
INSERT INTO `shop_productoptionitem` VALUES ('31', 'Item 1', null, null, null, null, null, null, '21');
INSERT INTO `shop_productoptionitem` VALUES ('32', 'New Item', null, null, null, null, null, null, '21');
INSERT INTO `shop_productoptionitem` VALUES ('33', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('34', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('35', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('36', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('37', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('38', 'asdas', null, null, null, null, 'asdas', null, '23');
INSERT INTO `shop_productoptionitem` VALUES ('39', 'asdaaa', null, null, null, null, 'asdasd', null, '23');
INSERT INTO `shop_productoptionitem` VALUES ('40', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('41', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('42', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('43', 'asdas', null, null, null, null, 'asdasd', null, '26');
INSERT INTO `shop_productoptionitem` VALUES ('44', 'aaaa', null, null, null, null, 'asdasdas', null, '26');
INSERT INTO `shop_productoptionitem` VALUES ('45', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('46', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('47', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('48', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('49', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('50', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('51', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('52', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('53', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('54', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('55', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('56', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('57', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('58', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('59', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('60', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('61', 'aa', null, null, null, null, 'aaa', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('62', 'asdas', null, null, null, null, 'asdasd', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('63', 'eeee', null, null, null, null, 'asdasdasd', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('64', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('65', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('66', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('67', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('68', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('69', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('70', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('71', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('72', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('73', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('74', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('75', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('76', 'asda', null, null, null, null, 'asdasd', null, '32');
INSERT INTO `shop_productoptionitem` VALUES ('77', 'Nesdss', null, null, null, null, 'assas', null, '32');
INSERT INTO `shop_productoptionitem` VALUES ('78', 'assas', null, null, null, null, 'asdasdas', null, '32');
INSERT INTO `shop_productoptionitem` VALUES ('79', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('80', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('81', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('82', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('83', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('84', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('85', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('86', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('87', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('88', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('89', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('90', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('91', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('92', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('93', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('94', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('95', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('96', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('97', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('98', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '49');
INSERT INTO `shop_productoptionitem` VALUES ('99', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('100', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('101', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('102', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('103', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('104', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('105', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('106', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('107', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('108', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('109', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('110', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('111', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('112', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('113', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('114', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('115', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('116', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('117', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('118', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '52');
INSERT INTO `shop_productoptionitem` VALUES ('119', 'L', null, null, null, null, ' L', null, '53');
INSERT INTO `shop_productoptionitem` VALUES ('120', 'M', null, null, null, null, 'M', null, '53');
INSERT INTO `shop_productoptionitem` VALUES ('121', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('122', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('123', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('124', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('125', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('126', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('127', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('128', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('129', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('130', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('131', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('132', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('133', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('134', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('135', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('136', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('137', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('138', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('139', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('140', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '55');
INSERT INTO `shop_productoptionitem` VALUES ('141', 'L', null, null, null, null, ' L', null, '56');
INSERT INTO `shop_productoptionitem` VALUES ('142', 'M', null, null, null, null, 'M', null, '56');
INSERT INTO `shop_productoptionitem` VALUES ('143', 'Customized Size', null, null, null, null, 'Customized', null, '56');
INSERT INTO `shop_productoptionitem` VALUES ('144', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('145', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('146', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('147', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('148', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('149', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('150', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('151', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('152', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('153', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('154', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('155', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('156', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('157', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('158', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('159', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('160', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('161', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('162', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('163', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '58');
INSERT INTO `shop_productoptionitem` VALUES ('164', 'L', null, null, null, null, ' L', null, '59');
INSERT INTO `shop_productoptionitem` VALUES ('165', 'M', null, null, null, null, 'M', null, '59');
INSERT INTO `shop_productoptionitem` VALUES ('166', 'Customized Size', null, null, null, null, 'Customized', null, '59');
INSERT INTO `shop_productoptionitem` VALUES ('167', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('168', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('169', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('170', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('171', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('172', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('173', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('174', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('175', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('176', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('177', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('178', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('179', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('180', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('181', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('182', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('183', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('184', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('185', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('186', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '61');
INSERT INTO `shop_productoptionitem` VALUES ('187', 'L', null, null, null, null, ' L', null, '62');
INSERT INTO `shop_productoptionitem` VALUES ('188', 'M', null, null, null, null, 'M', null, '62');
INSERT INTO `shop_productoptionitem` VALUES ('189', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('190', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('191', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('192', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('193', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('194', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('195', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('196', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('197', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('198', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('199', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('200', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('201', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('202', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('203', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('204', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('205', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('206', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('207', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('208', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '64');
INSERT INTO `shop_productoptionitem` VALUES ('209', 'L', null, null, null, null, ' L', null, '65');
INSERT INTO `shop_productoptionitem` VALUES ('210', 'M', null, null, null, null, 'M', null, '65');
INSERT INTO `shop_productoptionitem` VALUES ('211', 'sage', null, null, null, null, '#C6DAC1 #B3BE8E #B3BE8E #C6DAC1', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('212', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('213', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('214', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('215', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('216', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('217', 'royalblue', null, null, null, null, '#7DACED #4B79C4 #4B79C4 #7DACED', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('218', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('219', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('220', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('221', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('222', 'red', null, null, null, null, '#FF4D4D #D00000 #D00000 #FF4D4D', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('223', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('224', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('225', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('226', 'pink', null, null, null, null, '#FFD2FB #FBB3FF #FBB3FF #FFD2FB', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('227', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('228', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('229', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('230', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '67');
INSERT INTO `shop_productoptionitem` VALUES ('231', 'L', null, null, null, null, ' L', null, '68');
INSERT INTO `shop_productoptionitem` VALUES ('232', 'M', null, null, null, null, 'M', null, '68');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productproperty
-- ----------------------------
INSERT INTO `shop_productproperty` VALUES ('13', 'das', null, null, 'asdasd', '12');
INSERT INTO `shop_productproperty` VALUES ('14', 'asdas', null, null, 'asdasd', '12');
INSERT INTO `shop_productproperty` VALUES ('15', '0011', null, null, 'iseswwaa', '13');
INSERT INTO `shop_productproperty` VALUES ('16', 'Gender ', null, null, 'unisex', '14');
INSERT INTO `shop_productproperty` VALUES ('17', 'asd', null, null, 'asdasdasd', '40');
INSERT INTO `shop_productproperty` VALUES ('18', 'asdas', null, null, 'asdasd', '40');
INSERT INTO `shop_productproperty` VALUES ('19', 'asd', null, null, 'asasdas', '41');
INSERT INTO `shop_productproperty` VALUES ('20', 'asdas', null, null, 'dasdas', '41');
INSERT INTO `shop_productproperty` VALUES ('21', 'asdas', null, null, 'asdasd', '43');
INSERT INTO `shop_productproperty` VALUES ('22', 'asdasd', null, null, 'asdasdas', '43');
INSERT INTO `shop_productproperty` VALUES ('23', 'asdasdas', null, null, 'dasdasdasdas', '43');
INSERT INTO `shop_productproperty` VALUES ('24', 'asdasdas', null, null, 'asdasdasd', '43');
INSERT INTO `shop_productproperty` VALUES ('25', 'asdas', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('26', 'asdasd', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('27', 'asdas', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('28', 'asdas', null, null, 'asdasdas', '46');
INSERT INTO `shop_productproperty` VALUES ('29', 'asdasd', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('30', 'asdas', null, null, 'asdasdas', '47');
INSERT INTO `shop_productproperty` VALUES ('31', 'adas', null, null, 'dasdasdasdas', '50');
INSERT INTO `shop_productproperty` VALUES ('32', 'a', null, null, 'd', '56');
INSERT INTO `shop_productproperty` VALUES ('33', 'd', null, null, 'd', '56');
INSERT INTO `shop_productproperty` VALUES ('34', 'dd', null, null, 'daadd', '56');
INSERT INTO `shop_productproperty` VALUES ('35', 'a', null, null, 'd', '57');
INSERT INTO `shop_productproperty` VALUES ('36', 'd', null, null, 'd', '57');
INSERT INTO `shop_productproperty` VALUES ('37', 'dd', null, null, 'daadd', '57');
INSERT INTO `shop_productproperty` VALUES ('38', 'a', null, null, 'd', '58');
INSERT INTO `shop_productproperty` VALUES ('39', 'd', null, null, 'd', '58');
INSERT INTO `shop_productproperty` VALUES ('40', 'dd', null, null, 'daadd', '58');
INSERT INTO `shop_productproperty` VALUES ('41', 'a', null, null, 'd', '59');
INSERT INTO `shop_productproperty` VALUES ('42', 'd', null, null, 'd', '59');
INSERT INTO `shop_productproperty` VALUES ('43', 'dd', null, null, 'daadd', '59');
INSERT INTO `shop_productproperty` VALUES ('44', 'a', null, null, 'd', '60');
INSERT INTO `shop_productproperty` VALUES ('45', 'd', null, null, 'd', '60');
INSERT INTO `shop_productproperty` VALUES ('46', 'dd', null, null, 'daadd', '60');
INSERT INTO `shop_productproperty` VALUES ('47', 'a', null, null, 'd', '61');
INSERT INTO `shop_productproperty` VALUES ('48', 'd', null, null, 'd', '61');
INSERT INTO `shop_productproperty` VALUES ('49', 'dd', null, null, 'daadd', '61');
INSERT INTO `shop_productproperty` VALUES ('50', 'a', null, null, 'asdasdas  asdasdasasdasdas  asdasdas asdasdas  asdasdas  ', '62');
INSERT INTO `shop_productproperty` VALUES ('51', 'd', null, null, 'asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas ', '62');
INSERT INTO `shop_productproperty` VALUES ('52', 'dd', null, null, 'asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas ', '62');
INSERT INTO `shop_productproperty` VALUES ('53', 'asdas', null, null, 'asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas ', '62');
INSERT INTO `shop_productproperty` VALUES ('54', 'asdasdas', null, null, 'asdasdas  asdasdas asdasdas  asdasdas asdasdas  asdasdas ', '62');

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
INSERT INTO `shop_product_category` VALUES ('12', '4');
INSERT INTO `shop_product_category` VALUES ('12', '8');
INSERT INTO `shop_product_category` VALUES ('13', '9');
INSERT INTO `shop_product_category` VALUES ('13', '4');
INSERT INTO `shop_product_category` VALUES ('14', '3');
INSERT INTO `shop_product_category` VALUES ('15', '3');
INSERT INTO `shop_product_category` VALUES ('16', '3');
INSERT INTO `shop_product_category` VALUES ('17', '3');
INSERT INTO `shop_product_category` VALUES ('18', '3');
INSERT INTO `shop_product_category` VALUES ('19', '3');
INSERT INTO `shop_product_category` VALUES ('20', '3');
INSERT INTO `shop_product_category` VALUES ('21', '3');
INSERT INTO `shop_product_category` VALUES ('22', '3');
INSERT INTO `shop_product_category` VALUES ('24', '3');
INSERT INTO `shop_product_category` VALUES ('29', '3');
INSERT INTO `shop_product_category` VALUES ('30', '3');
INSERT INTO `shop_product_category` VALUES ('31', '3');
INSERT INTO `shop_product_category` VALUES ('32', '3');
INSERT INTO `shop_product_category` VALUES ('33', '3');
INSERT INTO `shop_product_category` VALUES ('23', '3');
INSERT INTO `shop_product_category` VALUES ('27', '3');
INSERT INTO `shop_product_category` VALUES ('28', '3');
INSERT INTO `shop_product_category` VALUES ('26', '3');
INSERT INTO `shop_product_category` VALUES ('25', '3');
INSERT INTO `shop_product_category` VALUES ('34', '3');
INSERT INTO `shop_product_category` VALUES ('35', '3');
INSERT INTO `shop_product_category` VALUES ('41', '5');
INSERT INTO `shop_product_category` VALUES ('40', '8');
INSERT INTO `shop_product_category` VALUES ('42', '5');
INSERT INTO `shop_product_category` VALUES ('43', '5');
INSERT INTO `shop_product_category` VALUES ('44', '7');
INSERT INTO `shop_product_category` VALUES ('39', '57');
INSERT INTO `shop_product_category` VALUES ('38', '3');
INSERT INTO `shop_product_category` VALUES ('37', '3');
INSERT INTO `shop_product_category` VALUES ('36', '3');
INSERT INTO `shop_product_category` VALUES ('50', '5');
INSERT INTO `shop_product_category` VALUES ('49', '5');
INSERT INTO `shop_product_category` VALUES ('48', '5');
INSERT INTO `shop_product_category` VALUES ('47', '5');
INSERT INTO `shop_product_category` VALUES ('46', '7');
INSERT INTO `shop_product_category` VALUES ('45', '7');
INSERT INTO `shop_product_category` VALUES ('51', '3');
INSERT INTO `shop_product_category` VALUES ('51', '8');
INSERT INTO `shop_product_category` VALUES ('52', '7');
INSERT INTO `shop_product_category` VALUES ('53', '7');
INSERT INTO `shop_product_category` VALUES ('54', '7');
INSERT INTO `shop_product_category` VALUES ('55', '5');
INSERT INTO `shop_product_category` VALUES ('56', '5');
INSERT INTO `shop_product_category` VALUES ('57', '5');
INSERT INTO `shop_product_category` VALUES ('58', '5');
INSERT INTO `shop_product_category` VALUES ('59', '5');
INSERT INTO `shop_product_category` VALUES ('60', '5');
INSERT INTO `shop_product_category` VALUES ('61', '5');
INSERT INTO `shop_product_category` VALUES ('62', '5');

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
INSERT INTO `shop_product_image` VALUES ('13', '5');
INSERT INTO `shop_product_image` VALUES ('13', '4');
INSERT INTO `shop_product_image` VALUES ('13', '3');
INSERT INTO `shop_product_image` VALUES ('13', '2');
INSERT INTO `shop_product_image` VALUES ('13', '1');
INSERT INTO `shop_product_image` VALUES ('14', '14');
INSERT INTO `shop_product_image` VALUES ('15', '21');
INSERT INTO `shop_product_image` VALUES ('16', '20');
INSERT INTO `shop_product_image` VALUES ('17', '19');
INSERT INTO `shop_product_image` VALUES ('18', '18');
INSERT INTO `shop_product_image` VALUES ('19', '17');
INSERT INTO `shop_product_image` VALUES ('20', '16');
INSERT INTO `shop_product_image` VALUES ('21', '15');
INSERT INTO `shop_product_image` VALUES ('22', '21');
INSERT INTO `shop_product_image` VALUES ('24', '19');
INSERT INTO `shop_product_image` VALUES ('29', '30');
INSERT INTO `shop_product_image` VALUES ('30', '29');
INSERT INTO `shop_product_image` VALUES ('31', '28');
INSERT INTO `shop_product_image` VALUES ('32', '27');
INSERT INTO `shop_product_image` VALUES ('33', '26');
INSERT INTO `shop_product_image` VALUES ('23', '20');
INSERT INTO `shop_product_image` VALUES ('27', '16');
INSERT INTO `shop_product_image` VALUES ('28', '15');
INSERT INTO `shop_product_image` VALUES ('26', '17');
INSERT INTO `shop_product_image` VALUES ('25', '18');
INSERT INTO `shop_product_image` VALUES ('34', '25');
INSERT INTO `shop_product_image` VALUES ('35', '24');
INSERT INTO `shop_product_image` VALUES ('41', '34');
INSERT INTO `shop_product_image` VALUES ('41', '32');
INSERT INTO `shop_product_image` VALUES ('41', '33');
INSERT INTO `shop_product_image` VALUES ('41', '31');
INSERT INTO `shop_product_image` VALUES ('41', '30');
INSERT INTO `shop_product_image` VALUES ('40', '34');
INSERT INTO `shop_product_image` VALUES ('40', '32');
INSERT INTO `shop_product_image` VALUES ('40', '31');
INSERT INTO `shop_product_image` VALUES ('40', '30');
INSERT INTO `shop_product_image` VALUES ('42', '34');
INSERT INTO `shop_product_image` VALUES ('42', '33');
INSERT INTO `shop_product_image` VALUES ('42', '32');
INSERT INTO `shop_product_image` VALUES ('42', '31');
INSERT INTO `shop_product_image` VALUES ('43', '34');
INSERT INTO `shop_product_image` VALUES ('43', '33');
INSERT INTO `shop_product_image` VALUES ('43', '32');
INSERT INTO `shop_product_image` VALUES ('43', '31');
INSERT INTO `shop_product_image` VALUES ('44', '34');
INSERT INTO `shop_product_image` VALUES ('44', '31');
INSERT INTO `shop_product_image` VALUES ('44', '33');
INSERT INTO `shop_product_image` VALUES ('44', '32');
INSERT INTO `shop_product_image` VALUES ('44', '30');
INSERT INTO `shop_product_image` VALUES ('39', '28');
INSERT INTO `shop_product_image` VALUES ('39', '29');
INSERT INTO `shop_product_image` VALUES ('39', '26');
INSERT INTO `shop_product_image` VALUES ('39', '25');
INSERT INTO `shop_product_image` VALUES ('39', '24');
INSERT INTO `shop_product_image` VALUES ('38', '28');
INSERT INTO `shop_product_image` VALUES ('37', '22');
INSERT INTO `shop_product_image` VALUES ('36', '23');
INSERT INTO `shop_product_image` VALUES ('50', '34');
INSERT INTO `shop_product_image` VALUES ('50', '33');
INSERT INTO `shop_product_image` VALUES ('50', '32');
INSERT INTO `shop_product_image` VALUES ('50', '31');
INSERT INTO `shop_product_image` VALUES ('50', '30');
INSERT INTO `shop_product_image` VALUES ('49', '34');
INSERT INTO `shop_product_image` VALUES ('49', '33');
INSERT INTO `shop_product_image` VALUES ('49', '32');
INSERT INTO `shop_product_image` VALUES ('49', '31');
INSERT INTO `shop_product_image` VALUES ('49', '30');
INSERT INTO `shop_product_image` VALUES ('48', '34');
INSERT INTO `shop_product_image` VALUES ('48', '33');
INSERT INTO `shop_product_image` VALUES ('48', '32');
INSERT INTO `shop_product_image` VALUES ('48', '31');
INSERT INTO `shop_product_image` VALUES ('48', '30');
INSERT INTO `shop_product_image` VALUES ('47', '34');
INSERT INTO `shop_product_image` VALUES ('47', '33');
INSERT INTO `shop_product_image` VALUES ('47', '32');
INSERT INTO `shop_product_image` VALUES ('47', '31');
INSERT INTO `shop_product_image` VALUES ('47', '30');
INSERT INTO `shop_product_image` VALUES ('47', '29');
INSERT INTO `shop_product_image` VALUES ('46', '34');
INSERT INTO `shop_product_image` VALUES ('46', '31');
INSERT INTO `shop_product_image` VALUES ('46', '33');
INSERT INTO `shop_product_image` VALUES ('46', '32');
INSERT INTO `shop_product_image` VALUES ('46', '30');
INSERT INTO `shop_product_image` VALUES ('45', '34');
INSERT INTO `shop_product_image` VALUES ('45', '31');
INSERT INTO `shop_product_image` VALUES ('45', '33');
INSERT INTO `shop_product_image` VALUES ('45', '32');
INSERT INTO `shop_product_image` VALUES ('45', '30');
INSERT INTO `shop_product_image` VALUES ('51', '35');
INSERT INTO `shop_product_image` VALUES ('51', '34');
INSERT INTO `shop_product_image` VALUES ('51', '33');
INSERT INTO `shop_product_image` VALUES ('51', '36');
INSERT INTO `shop_product_image` VALUES ('52', '34');
INSERT INTO `shop_product_image` VALUES ('53', '35');
INSERT INTO `shop_product_image` VALUES ('53', '34');
INSERT INTO `shop_product_image` VALUES ('53', '33');
INSERT INTO `shop_product_image` VALUES ('54', '33');
INSERT INTO `shop_product_image` VALUES ('54', '34');
INSERT INTO `shop_product_image` VALUES ('54', '35');
INSERT INTO `shop_product_image` VALUES ('54', '32');
INSERT INTO `shop_product_image` VALUES ('55', '110');
INSERT INTO `shop_product_image` VALUES ('55', '111');
INSERT INTO `shop_product_image` VALUES ('55', '112');
INSERT INTO `shop_product_image` VALUES ('55', '107');
INSERT INTO `shop_product_image` VALUES ('55', '108');
INSERT INTO `shop_product_image` VALUES ('55', '109');
INSERT INTO `shop_product_image` VALUES ('55', '105');
INSERT INTO `shop_product_image` VALUES ('56', '110');
INSERT INTO `shop_product_image` VALUES ('56', '111');
INSERT INTO `shop_product_image` VALUES ('56', '112');
INSERT INTO `shop_product_image` VALUES ('56', '107');
INSERT INTO `shop_product_image` VALUES ('56', '108');
INSERT INTO `shop_product_image` VALUES ('56', '109');
INSERT INTO `shop_product_image` VALUES ('56', '105');
INSERT INTO `shop_product_image` VALUES ('57', '110');
INSERT INTO `shop_product_image` VALUES ('57', '111');
INSERT INTO `shop_product_image` VALUES ('57', '112');
INSERT INTO `shop_product_image` VALUES ('57', '107');
INSERT INTO `shop_product_image` VALUES ('57', '108');
INSERT INTO `shop_product_image` VALUES ('57', '109');
INSERT INTO `shop_product_image` VALUES ('57', '105');
INSERT INTO `shop_product_image` VALUES ('58', '110');
INSERT INTO `shop_product_image` VALUES ('58', '111');
INSERT INTO `shop_product_image` VALUES ('58', '112');
INSERT INTO `shop_product_image` VALUES ('58', '107');
INSERT INTO `shop_product_image` VALUES ('58', '108');
INSERT INTO `shop_product_image` VALUES ('58', '109');
INSERT INTO `shop_product_image` VALUES ('58', '105');
INSERT INTO `shop_product_image` VALUES ('59', '110');
INSERT INTO `shop_product_image` VALUES ('59', '111');
INSERT INTO `shop_product_image` VALUES ('59', '112');
INSERT INTO `shop_product_image` VALUES ('59', '107');
INSERT INTO `shop_product_image` VALUES ('59', '108');
INSERT INTO `shop_product_image` VALUES ('59', '109');
INSERT INTO `shop_product_image` VALUES ('59', '105');
INSERT INTO `shop_product_image` VALUES ('60', '110');
INSERT INTO `shop_product_image` VALUES ('60', '111');
INSERT INTO `shop_product_image` VALUES ('60', '112');
INSERT INTO `shop_product_image` VALUES ('60', '107');
INSERT INTO `shop_product_image` VALUES ('60', '108');
INSERT INTO `shop_product_image` VALUES ('60', '109');
INSERT INTO `shop_product_image` VALUES ('60', '105');
INSERT INTO `shop_product_image` VALUES ('61', '110');
INSERT INTO `shop_product_image` VALUES ('61', '111');
INSERT INTO `shop_product_image` VALUES ('61', '112');
INSERT INTO `shop_product_image` VALUES ('61', '107');
INSERT INTO `shop_product_image` VALUES ('61', '108');
INSERT INTO `shop_product_image` VALUES ('61', '109');
INSERT INTO `shop_product_image` VALUES ('61', '105');
INSERT INTO `shop_product_image` VALUES ('62', '110');
INSERT INTO `shop_product_image` VALUES ('62', '111');
INSERT INTO `shop_product_image` VALUES ('62', '112');
INSERT INTO `shop_product_image` VALUES ('62', '107');
INSERT INTO `shop_product_image` VALUES ('62', '108');
INSERT INTO `shop_product_image` VALUES ('62', '109');
INSERT INTO `shop_product_image` VALUES ('62', '105');

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
  `sideBar` text,
  `siteFooter` text,
  `delivery_img_id` int(11) DEFAULT NULL,
  `featuredCat_img_id` int(11) DEFAULT NULL,
  `deliveryURL` varchar(200) DEFAULT NULL,
  `featuredCatURL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK2A76A310C2B5B11E` (`log_id`),
  CONSTRAINT `FK2A76A310C2B5B11E` FOREIGN KEY (`log_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_site
-- ----------------------------
INSERT INTO `shop_site` VALUES ('1', '127.0.0.1:8888', null, '/image', '/', 'www', '17', '<div style=\"display:block;background:black;width:180px;height:400px\"></div>', '<div style=\"display:block;background:black;width:999px;height:80px\"></div>', '19', '18', 'http://tv.sohu.com', 'http://www.google.com');

-- ----------------------------
-- Table structure for `shop_tabproduct`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabproduct`;
CREATE TABLE `shop_tabproduct` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_tabproduct
-- ----------------------------
INSERT INTO `shop_tabproduct` VALUES ('16', 'DEFAUL_TOP_SELLING', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('17', 'Hot', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('18', 'adasdasdas', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('19', 'Day Dresses', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('24', 'asdasd', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('25', 'New comming', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('26', 'asdasd', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('27', '\"\"', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('28', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('29', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('30', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('31', 'asdasdasds', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('32', 'sadasdas', '2011-09-07');

-- ----------------------------
-- Table structure for `shop_tabselling`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabselling`;
CREATE TABLE `shop_tabselling` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_tabselling
-- ----------------------------
INSERT INTO `shop_tabselling` VALUES ('1', null);
INSERT INTO `shop_tabselling` VALUES ('2', null);
INSERT INTO `shop_tabselling` VALUES ('3', 'DEFAULF_TAB_SELLING');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('11', 'szhu.spark@gmail.com', '2011-09-13 12:17:32', null, null, null, null, 'szhu.spark@gmail.com', null, null, 'adminadmin', null, null);

-- ----------------------------
-- Table structure for `shop_useroption`
-- ----------------------------
DROP TABLE IF EXISTS `shop_useroption`;
CREATE TABLE `shop_useroption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `strOptionType` varchar(255) DEFAULT NULL,
  `optionName` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBA0225293D035A95` (`item_id`),
  CONSTRAINT `FKBA0225293D035A95` FOREIGN KEY (`item_id`) REFERENCES `shop_orderitem` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_useroption
-- ----------------------------
INSERT INTO `shop_useroption` VALUES ('1', null, null, null, null, 'Size', 'asdasd', '1');
INSERT INTO `shop_useroption` VALUES ('2', null, null, null, null, 'price', '999.0', '1');
INSERT INTO `shop_useroption` VALUES ('3', null, null, null, null, 'Qty', '2', '1');
INSERT INTO `shop_useroption` VALUES ('4', null, null, null, null, 'Color', '#F24A78 #C8183F #C8183F #F24A78', '1');

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
-- Records of tab_product
-- ----------------------------
INSERT INTO `tab_product` VALUES ('17', '39');
INSERT INTO `tab_product` VALUES ('17', '38');
INSERT INTO `tab_product` VALUES ('17', '37');
INSERT INTO `tab_product` VALUES ('17', '36');
INSERT INTO `tab_product` VALUES ('18', '39');
INSERT INTO `tab_product` VALUES ('18', '38');
INSERT INTO `tab_product` VALUES ('18', '37');
INSERT INTO `tab_product` VALUES ('18', '36');
INSERT INTO `tab_product` VALUES ('24', '38');
INSERT INTO `tab_product` VALUES ('24', '39');
INSERT INTO `tab_product` VALUES ('24', '37');
INSERT INTO `tab_product` VALUES ('24', '36');
INSERT INTO `tab_product` VALUES ('16', '39');
INSERT INTO `tab_product` VALUES ('16', '38');
INSERT INTO `tab_product` VALUES ('16', '37');
INSERT INTO `tab_product` VALUES ('16', '36');
INSERT INTO `tab_product` VALUES ('26', '37');
INSERT INTO `tab_product` VALUES ('26', '39');
INSERT INTO `tab_product` VALUES ('26', '38');
INSERT INTO `tab_product` VALUES ('26', '36');
INSERT INTO `tab_product` VALUES ('26', '35');
INSERT INTO `tab_product` VALUES ('26', '34');
INSERT INTO `tab_product` VALUES ('27', '39');
INSERT INTO `tab_product` VALUES ('27', '38');
INSERT INTO `tab_product` VALUES ('27', '37');
INSERT INTO `tab_product` VALUES ('27', '36');
INSERT INTO `tab_product` VALUES ('27', '35');
INSERT INTO `tab_product` VALUES ('28', '39');
INSERT INTO `tab_product` VALUES ('28', '38');
INSERT INTO `tab_product` VALUES ('28', '37');
INSERT INTO `tab_product` VALUES ('28', '36');
INSERT INTO `tab_product` VALUES ('28', '35');
INSERT INTO `tab_product` VALUES ('28', '34');
INSERT INTO `tab_product` VALUES ('29', '38');
INSERT INTO `tab_product` VALUES ('29', '36');
INSERT INTO `tab_product` VALUES ('29', '37');
INSERT INTO `tab_product` VALUES ('30', '39');
INSERT INTO `tab_product` VALUES ('30', '40');
INSERT INTO `tab_product` VALUES ('30', '38');
INSERT INTO `tab_product` VALUES ('30', '37');
INSERT INTO `tab_product` VALUES ('30', '36');
INSERT INTO `tab_product` VALUES ('30', '35');
INSERT INTO `tab_product` VALUES ('31', '42');
INSERT INTO `tab_product` VALUES ('31', '41');
INSERT INTO `tab_product` VALUES ('31', '40');
INSERT INTO `tab_product` VALUES ('31', '39');
INSERT INTO `tab_product` VALUES ('31', '38');
INSERT INTO `tab_product` VALUES ('32', '42');
INSERT INTO `tab_product` VALUES ('32', '41');
INSERT INTO `tab_product` VALUES ('32', '40');
INSERT INTO `tab_product` VALUES ('32', '39');
INSERT INTO `tab_product` VALUES ('19', '39');
INSERT INTO `tab_product` VALUES ('19', '38');
INSERT INTO `tab_product` VALUES ('19', '37');
INSERT INTO `tab_product` VALUES ('19', '36');
INSERT INTO `tab_product` VALUES ('25', '50');
INSERT INTO `tab_product` VALUES ('25', '49');
INSERT INTO `tab_product` VALUES ('25', '48');
INSERT INTO `tab_product` VALUES ('25', '47');
INSERT INTO `tab_product` VALUES ('25', '46');
INSERT INTO `tab_product` VALUES ('25', '45');

-- ----------------------------
-- Table structure for `tab_product_selling`
-- ----------------------------
DROP TABLE IF EXISTS `tab_product_selling`;
CREATE TABLE `tab_product_selling` (
  `selling_id` bigint(20) NOT NULL,
  `t_product_id` bigint(20) NOT NULL,
  KEY `FK4A030F5687682EB8` (`selling_id`),
  KEY `FK4A030F56582107E7` (`t_product_id`),
  KEY `FK4A030F56B5C9B03` (`t_product_id`),
  CONSTRAINT `FK4A030F56582107E7` FOREIGN KEY (`t_product_id`) REFERENCES `shop_tabproduct` (`ID`),
  CONSTRAINT `FK4A030F5687682EB8` FOREIGN KEY (`selling_id`) REFERENCES `shop_tabselling` (`ID`),
  CONSTRAINT `FK4A030F56B5C9B03` FOREIGN KEY (`t_product_id`) REFERENCES `shop_tabproduct` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_product_selling
-- ----------------------------
INSERT INTO `tab_product_selling` VALUES ('1', '17');
INSERT INTO `tab_product_selling` VALUES ('2', '18');
INSERT INTO `tab_product_selling` VALUES ('3', '19');
INSERT INTO `tab_product_selling` VALUES ('3', '25');

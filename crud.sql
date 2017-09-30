/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : crud

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-29 17:49:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '开发部');
INSERT INTO `tbl_dept` VALUES ('2', '测试部');
INSERT INTO `tbl_dept` VALUES ('3', '运营部');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', 'Jerry', 'M', 'Jerry@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('3', '921a71', 'F', '921a71@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('4', 'f09ee2', 'M', 'f09ee2@copasso.com', '2');
INSERT INTO `tbl_emp` VALUES ('5', '8c41f3', 'M', '8c41f3@copasso.com', '2');
INSERT INTO `tbl_emp` VALUES ('6', 'eccf34', 'M', 'eccf34@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('7', '3f2955', 'M', '3f2955@copasso.com', '2');
INSERT INTO `tbl_emp` VALUES ('8', '83d356', 'M', '83d356@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('9', '740537', 'M', '740537@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('10', '760588', 'M', '760588@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('11', '6b0cc9', 'M', '6b0cc9@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('15', 'dc2ed13', 'F', 'dc2ed13@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('16', '2fd1614', 'M', '2fd1614@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('17', '2b76b15', 'F', '2b76b15@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('18', '24d7c16', 'M', '24d7c16@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('19', '5346b17', 'M', '5346b17@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('20', '1baca18', 'M', '1baca18@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('21', '22c1b19', 'M', '22c1b19@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('22', '992e520', 'M', '992e520@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('23', 'd030521', 'M', 'd030521@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('24', '7441522', 'M', '7441522@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('25', 'd9f6623', 'M', 'd9f6623@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('26', 'd8ab524', 'M', 'd8ab524@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('27', 'af87b25', 'M', 'af87b25@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('28', '99e9126', 'M', '99e9126@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('29', '024aa27', 'M', '024aa27@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('30', 'ab90c28', 'M', 'ab90c28@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('31', '357f629', 'M', '357f629@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('32', '2c66730', 'M', '2c66730@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('33', '94c7131', 'M', '94c7131@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('34', '996a532', 'M', '996a532@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('35', '091e333', 'M', '091e333@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('36', '8a60c34', 'M', '8a60c34@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('37', '405d235', 'M', '405d235@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'aa6b236', 'M', 'aa6b236@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('39', '07df337', 'M', '07df337@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('40', 'a237e38', 'M', 'a237e38@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('41', '88d2b39', 'M', '88d2b39@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('42', '3ff7440', 'M', '3ff7440@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('43', 'de11341', 'M', 'de11341@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('44', '350b442', 'M', '350b442@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('45', '4811143', 'M', '4811143@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('46', '6656a44', 'M', '6656a44@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('47', '6d32845', 'M', '6d32845@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('48', '1103746', 'M', '1103746@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('49', '167d647', 'M', '167d647@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('50', '6574348', 'M', '6574348@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('51', '4305c49', 'M', '4305c49@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('52', '972bd50', 'M', '972bd50@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('53', 'ce0db51', 'M', 'ce0db51@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('54', '3a0ce52', 'M', '3a0ce52@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('55', '69d9853', 'M', '69d9853@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('56', '8568d54', 'M', '8568d54@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('57', 'e115f55', 'M', 'e115f55@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('58', '3cbe456', 'M', '3cbe456@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('59', 'ddc9e57', 'M', 'ddc9e57@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('60', '616ab58', 'M', '616ab58@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('61', 'c941859', 'M', 'c941859@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('62', '3abfe60', 'M', '3abfe60@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('63', '5931161', 'M', '5931161@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('64', 'b110062', 'M', 'b110062@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('65', '5f6c663', 'M', '5f6c663@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('66', 'f51e064', 'M', 'f51e064@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('67', '8d55665', 'M', '8d55665@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('68', '2070966', 'M', '2070966@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('69', '929dd67', 'M', '929dd67@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('70', 'e6ac968', 'M', 'e6ac968@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('71', 'd2e2469', 'M', 'd2e2469@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('72', 'b5cf470', 'M', 'b5cf470@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('73', '957a271', 'M', '957a271@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('74', '111b272', 'M', '111b272@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('75', '90f6773', 'M', '90f6773@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('76', 'c891674', 'M', 'c891674@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('77', 'a9bc375', 'M', 'a9bc375@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('78', 'fd32b76', 'M', 'fd32b76@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('79', 'ebff977', 'M', 'ebff977@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('80', '5360b78', 'M', '5360b78@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('81', '5431879', 'M', '5431879@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('82', 'c0c4480', 'M', 'c0c4480@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('83', '2f12581', 'M', '2f12581@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('84', '62abb82', 'M', '62abb82@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('85', 'c3d9583', 'M', 'c3d9583@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('86', 'c99fa84', 'M', 'c99fa84@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('87', '8097085', 'M', '8097085@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('88', '663c286', 'M', '663c286@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('89', 'b88c787', 'M', 'b88c787@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('90', '24cb188', 'M', '24cb188@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('91', 'adf3c89', 'M', 'adf3c89@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('92', '4fa2d90', 'M', '4fa2d90@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('93', '721bd91', 'M', '721bd91@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('94', '1c42c92', 'M', '1c42c92@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('95', '35af593', 'M', '35af593@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('96', 'bfcf194', 'M', 'bfcf194@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('97', '51e7b95', 'M', '51e7b95@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('98', '6840f96', 'M', '6840f96@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('99', 'f650197', 'M', 'f650197@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('100', 'f92db98', 'M', 'f92db98@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('101', '3f74799', 'M', '3f74799@copasso.com', '1');
INSERT INTO `tbl_emp` VALUES ('102', 'Markstone', 'F', 'Markstone@copasso.com', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'admin');

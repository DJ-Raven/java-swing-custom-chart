/*
Navicat MySQL Data Transfer

Source Server         : SEVER 3305
Source Server Version : 50620
Source Host           : localhost:3305
Source Database       : data_chart

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2021-10-28 10:57:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `OrderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `QtySold` int(10) DEFAULT NULL,
  `ProductID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2017-01-01', '14', '1');
INSERT INTO `order` VALUES ('2', '2017-01-01', '14', '2');
INSERT INTO `order` VALUES ('3', '2017-01-01', '16', '3');
INSERT INTO `order` VALUES ('4', '2017-01-01', '14', '4');
INSERT INTO `order` VALUES ('5', '2017-01-01', '17', '5');
INSERT INTO `order` VALUES ('6', '2017-02-01', '20', '1');
INSERT INTO `order` VALUES ('7', '2017-02-01', '22', '2');
INSERT INTO `order` VALUES ('8', '2017-02-01', '11', '3');
INSERT INTO `order` VALUES ('9', '2017-02-01', '23', '4');
INSERT INTO `order` VALUES ('10', '2017-02-01', '16', '5');
INSERT INTO `order` VALUES ('11', '2017-03-01', '9', '1');
INSERT INTO `order` VALUES ('12', '2017-03-01', '23', '2');
INSERT INTO `order` VALUES ('13', '2017-03-01', '26', '3');
INSERT INTO `order` VALUES ('14', '2017-03-01', '23', '4');
INSERT INTO `order` VALUES ('15', '2017-03-01', '17', '5');
INSERT INTO `order` VALUES ('16', '2017-04-01', '17', '1');
INSERT INTO `order` VALUES ('17', '2017-04-01', '23', '2');
INSERT INTO `order` VALUES ('18', '2017-04-01', '15', '3');
INSERT INTO `order` VALUES ('19', '2017-04-01', '22', '4');
INSERT INTO `order` VALUES ('20', '2017-04-01', '13', '5');
INSERT INTO `order` VALUES ('21', '2017-05-01', '10', '1');
INSERT INTO `order` VALUES ('22', '2017-05-01', '25', '2');
INSERT INTO `order` VALUES ('23', '2017-05-01', '13', '3');
INSERT INTO `order` VALUES ('24', '2017-05-01', '28', '4');
INSERT INTO `order` VALUES ('25', '2017-05-01', '13', '5');
INSERT INTO `order` VALUES ('26', '2017-06-01', '16', '1');
INSERT INTO `order` VALUES ('27', '2017-06-01', '13', '2');
INSERT INTO `order` VALUES ('28', '2017-06-01', '26', '3');
INSERT INTO `order` VALUES ('29', '2017-06-01', '7', '4');
INSERT INTO `order` VALUES ('30', '2017-06-01', '15', '5');
INSERT INTO `order` VALUES ('31', '2017-07-01', '20', '1');
INSERT INTO `order` VALUES ('32', '2017-07-01', '25', '2');
INSERT INTO `order` VALUES ('33', '2017-07-01', '27', '3');
INSERT INTO `order` VALUES ('34', '2017-07-01', '14', '4');
INSERT INTO `order` VALUES ('35', '2017-07-01', '24', '5');
INSERT INTO `order` VALUES ('36', '2017-08-01', '14', '1');
INSERT INTO `order` VALUES ('37', '2017-08-01', '13', '2');
INSERT INTO `order` VALUES ('38', '2017-08-01', '23', '3');
INSERT INTO `order` VALUES ('39', '2017-08-01', '14', '4');
INSERT INTO `order` VALUES ('40', '2017-08-01', '17', '5');
INSERT INTO `order` VALUES ('41', '2017-09-01', '16', '1');
INSERT INTO `order` VALUES ('42', '2017-09-01', '12', '2');
INSERT INTO `order` VALUES ('43', '2017-09-01', '9', '3');
INSERT INTO `order` VALUES ('44', '2017-09-01', '19', '4');
INSERT INTO `order` VALUES ('45', '2017-09-01', '22', '5');
INSERT INTO `order` VALUES ('46', '2017-10-01', '6', '1');
INSERT INTO `order` VALUES ('47', '2017-10-01', '12', '2');
INSERT INTO `order` VALUES ('48', '2017-10-01', '29', '3');
INSERT INTO `order` VALUES ('49', '2017-10-01', '6', '4');
INSERT INTO `order` VALUES ('50', '2017-10-01', '5', '5');
INSERT INTO `order` VALUES ('51', '2017-11-01', '5', '1');
INSERT INTO `order` VALUES ('52', '2017-11-01', '14', '2');
INSERT INTO `order` VALUES ('53', '2017-11-01', '25', '3');
INSERT INTO `order` VALUES ('54', '2017-11-01', '12', '4');
INSERT INTO `order` VALUES ('55', '2017-11-01', '26', '5');
INSERT INTO `order` VALUES ('56', '2017-12-01', '29', '1');
INSERT INTO `order` VALUES ('57', '2017-12-01', '18', '2');
INSERT INTO `order` VALUES ('58', '2017-12-01', '7', '3');
INSERT INTO `order` VALUES ('59', '2017-12-01', '29', '4');
INSERT INTO `order` VALUES ('60', '2017-12-01', '13', '5');
INSERT INTO `order` VALUES ('61', '2018-01-01', '6', '1');
INSERT INTO `order` VALUES ('62', '2018-01-01', '9', '2');
INSERT INTO `order` VALUES ('63', '2018-01-01', '20', '3');
INSERT INTO `order` VALUES ('64', '2018-01-01', '24', '4');
INSERT INTO `order` VALUES ('65', '2018-01-01', '5', '5');
INSERT INTO `order` VALUES ('66', '2018-02-01', '5', '1');
INSERT INTO `order` VALUES ('67', '2018-02-01', '12', '2');
INSERT INTO `order` VALUES ('68', '2018-02-01', '7', '3');
INSERT INTO `order` VALUES ('69', '2018-02-01', '25', '4');
INSERT INTO `order` VALUES ('70', '2018-02-01', '6', '5');
INSERT INTO `order` VALUES ('71', '2018-03-01', '15', '1');
INSERT INTO `order` VALUES ('72', '2018-03-01', '26', '2');
INSERT INTO `order` VALUES ('73', '2018-03-01', '15', '3');
INSERT INTO `order` VALUES ('74', '2018-03-01', '28', '4');
INSERT INTO `order` VALUES ('75', '2018-03-01', '11', '5');
INSERT INTO `order` VALUES ('76', '2018-04-01', '12', '1');
INSERT INTO `order` VALUES ('77', '2018-04-01', '25', '2');
INSERT INTO `order` VALUES ('78', '2018-04-01', '17', '3');
INSERT INTO `order` VALUES ('79', '2018-04-01', '27', '4');
INSERT INTO `order` VALUES ('80', '2018-04-01', '26', '5');
INSERT INTO `order` VALUES ('81', '2018-05-01', '5', '1');
INSERT INTO `order` VALUES ('82', '2018-05-01', '29', '2');
INSERT INTO `order` VALUES ('83', '2018-05-01', '13', '3');
INSERT INTO `order` VALUES ('84', '2018-05-01', '19', '4');
INSERT INTO `order` VALUES ('85', '2018-05-01', '13', '5');
INSERT INTO `order` VALUES ('86', '2018-06-01', '22', '1');
INSERT INTO `order` VALUES ('87', '2018-06-01', '10', '2');
INSERT INTO `order` VALUES ('88', '2018-06-01', '25', '3');
INSERT INTO `order` VALUES ('89', '2018-06-01', '16', '4');
INSERT INTO `order` VALUES ('90', '2018-06-01', '23', '5');
INSERT INTO `order` VALUES ('91', '2018-07-01', '5', '1');
INSERT INTO `order` VALUES ('92', '2018-07-01', '28', '2');
INSERT INTO `order` VALUES ('93', '2018-07-01', '21', '3');
INSERT INTO `order` VALUES ('94', '2018-07-01', '17', '4');
INSERT INTO `order` VALUES ('95', '2018-07-01', '23', '5');
INSERT INTO `order` VALUES ('96', '2018-08-01', '16', '1');
INSERT INTO `order` VALUES ('97', '2018-08-01', '7', '2');
INSERT INTO `order` VALUES ('98', '2018-08-01', '26', '3');
INSERT INTO `order` VALUES ('99', '2018-08-01', '27', '4');
INSERT INTO `order` VALUES ('100', '2018-08-01', '14', '5');
INSERT INTO `order` VALUES ('101', '2018-09-01', '20', '1');
INSERT INTO `order` VALUES ('102', '2018-09-01', '20', '2');
INSERT INTO `order` VALUES ('103', '2018-09-01', '21', '3');
INSERT INTO `order` VALUES ('104', '2018-09-01', '9', '4');
INSERT INTO `order` VALUES ('105', '2018-09-01', '5', '5');
INSERT INTO `order` VALUES ('106', '2018-10-01', '27', '1');
INSERT INTO `order` VALUES ('107', '2018-10-01', '6', '2');
INSERT INTO `order` VALUES ('108', '2018-10-01', '13', '3');
INSERT INTO `order` VALUES ('109', '2018-10-01', '11', '4');
INSERT INTO `order` VALUES ('110', '2018-10-01', '28', '5');
INSERT INTO `order` VALUES ('111', '2018-11-01', '7', '1');
INSERT INTO `order` VALUES ('112', '2018-11-01', '27', '2');
INSERT INTO `order` VALUES ('113', '2018-11-01', '11', '3');
INSERT INTO `order` VALUES ('114', '2018-11-01', '26', '4');
INSERT INTO `order` VALUES ('115', '2018-11-01', '29', '5');
INSERT INTO `order` VALUES ('116', '2018-12-01', '11', '1');
INSERT INTO `order` VALUES ('117', '2018-12-01', '16', '2');
INSERT INTO `order` VALUES ('118', '2018-12-01', '14', '3');
INSERT INTO `order` VALUES ('119', '2018-12-01', '25', '4');
INSERT INTO `order` VALUES ('120', '2018-12-01', '5', '5');
INSERT INTO `order` VALUES ('121', '2019-01-01', '22', '1');
INSERT INTO `order` VALUES ('122', '2019-01-01', '16', '2');
INSERT INTO `order` VALUES ('123', '2019-01-01', '18', '3');
INSERT INTO `order` VALUES ('124', '2019-01-01', '18', '4');
INSERT INTO `order` VALUES ('125', '2019-01-01', '6', '5');
INSERT INTO `order` VALUES ('126', '2019-02-01', '7', '1');
INSERT INTO `order` VALUES ('127', '2019-02-01', '17', '2');
INSERT INTO `order` VALUES ('128', '2019-02-01', '5', '3');
INSERT INTO `order` VALUES ('129', '2019-02-01', '28', '4');
INSERT INTO `order` VALUES ('130', '2019-02-01', '5', '5');
INSERT INTO `order` VALUES ('131', '2019-03-01', '29', '1');
INSERT INTO `order` VALUES ('132', '2019-03-01', '26', '2');
INSERT INTO `order` VALUES ('133', '2019-03-01', '12', '3');
INSERT INTO `order` VALUES ('134', '2019-03-01', '14', '4');
INSERT INTO `order` VALUES ('135', '2019-03-01', '9', '5');
INSERT INTO `order` VALUES ('136', '2019-04-01', '24', '1');
INSERT INTO `order` VALUES ('137', '2019-04-01', '9', '2');
INSERT INTO `order` VALUES ('138', '2019-04-01', '6', '3');
INSERT INTO `order` VALUES ('139', '2019-04-01', '17', '4');
INSERT INTO `order` VALUES ('140', '2019-04-01', '18', '5');
INSERT INTO `order` VALUES ('141', '2019-05-01', '26', '1');
INSERT INTO `order` VALUES ('142', '2019-05-01', '16', '2');
INSERT INTO `order` VALUES ('143', '2019-05-01', '29', '3');
INSERT INTO `order` VALUES ('144', '2019-05-01', '10', '4');
INSERT INTO `order` VALUES ('145', '2019-05-01', '17', '5');
INSERT INTO `order` VALUES ('146', '2019-06-01', '13', '1');
INSERT INTO `order` VALUES ('147', '2019-06-01', '28', '2');
INSERT INTO `order` VALUES ('148', '2019-06-01', '8', '3');
INSERT INTO `order` VALUES ('149', '2019-06-01', '14', '4');
INSERT INTO `order` VALUES ('150', '2019-06-01', '16', '5');
INSERT INTO `order` VALUES ('151', '2019-07-01', '13', '1');
INSERT INTO `order` VALUES ('152', '2019-07-01', '16', '2');
INSERT INTO `order` VALUES ('153', '2019-07-01', '14', '3');
INSERT INTO `order` VALUES ('154', '2019-07-01', '8', '4');
INSERT INTO `order` VALUES ('155', '2019-07-01', '23', '5');
INSERT INTO `order` VALUES ('156', '2019-08-01', '22', '1');
INSERT INTO `order` VALUES ('157', '2019-08-01', '27', '2');
INSERT INTO `order` VALUES ('158', '2019-08-01', '29', '3');
INSERT INTO `order` VALUES ('159', '2019-08-01', '29', '4');
INSERT INTO `order` VALUES ('160', '2019-08-01', '20', '5');
INSERT INTO `order` VALUES ('161', '2019-09-01', '5', '1');
INSERT INTO `order` VALUES ('162', '2019-09-01', '21', '2');
INSERT INTO `order` VALUES ('163', '2019-09-01', '12', '3');
INSERT INTO `order` VALUES ('164', '2019-09-01', '8', '4');
INSERT INTO `order` VALUES ('165', '2019-09-01', '24', '5');
INSERT INTO `order` VALUES ('166', '2019-10-01', '11', '1');
INSERT INTO `order` VALUES ('167', '2019-10-01', '26', '2');
INSERT INTO `order` VALUES ('168', '2019-10-01', '29', '3');
INSERT INTO `order` VALUES ('169', '2019-10-01', '19', '4');
INSERT INTO `order` VALUES ('170', '2019-10-01', '7', '5');
INSERT INTO `order` VALUES ('171', '2019-11-01', '9', '1');
INSERT INTO `order` VALUES ('172', '2019-11-01', '25', '2');
INSERT INTO `order` VALUES ('173', '2019-11-01', '28', '3');
INSERT INTO `order` VALUES ('174', '2019-11-01', '20', '4');
INSERT INTO `order` VALUES ('175', '2019-11-01', '11', '5');
INSERT INTO `order` VALUES ('176', '2019-12-01', '23', '1');
INSERT INTO `order` VALUES ('177', '2019-12-01', '21', '2');
INSERT INTO `order` VALUES ('178', '2019-12-01', '14', '3');
INSERT INTO `order` VALUES ('179', '2019-12-01', '7', '4');
INSERT INTO `order` VALUES ('180', '2019-12-01', '7', '5');
INSERT INTO `order` VALUES ('181', '2020-01-01', '20', '1');
INSERT INTO `order` VALUES ('182', '2020-01-01', '20', '2');
INSERT INTO `order` VALUES ('183', '2020-01-01', '27', '3');
INSERT INTO `order` VALUES ('184', '2020-01-01', '14', '4');
INSERT INTO `order` VALUES ('185', '2020-01-01', '17', '5');
INSERT INTO `order` VALUES ('186', '2020-02-01', '6', '1');
INSERT INTO `order` VALUES ('187', '2020-02-01', '19', '2');
INSERT INTO `order` VALUES ('188', '2020-02-01', '25', '3');
INSERT INTO `order` VALUES ('189', '2020-02-01', '18', '4');
INSERT INTO `order` VALUES ('190', '2020-02-01', '21', '5');
INSERT INTO `order` VALUES ('191', '2020-03-01', '7', '1');
INSERT INTO `order` VALUES ('192', '2020-03-01', '26', '2');
INSERT INTO `order` VALUES ('193', '2020-03-01', '18', '3');
INSERT INTO `order` VALUES ('194', '2020-03-01', '22', '4');
INSERT INTO `order` VALUES ('195', '2020-03-01', '20', '5');
INSERT INTO `order` VALUES ('196', '2020-04-01', '17', '1');
INSERT INTO `order` VALUES ('197', '2020-04-01', '25', '2');
INSERT INTO `order` VALUES ('198', '2020-04-01', '18', '3');
INSERT INTO `order` VALUES ('199', '2020-04-01', '25', '4');
INSERT INTO `order` VALUES ('200', '2020-04-01', '28', '5');
INSERT INTO `order` VALUES ('201', '2020-05-01', '11', '1');
INSERT INTO `order` VALUES ('202', '2020-05-01', '18', '2');
INSERT INTO `order` VALUES ('203', '2020-05-01', '13', '3');
INSERT INTO `order` VALUES ('204', '2020-05-01', '28', '4');
INSERT INTO `order` VALUES ('205', '2020-05-01', '29', '5');
INSERT INTO `order` VALUES ('206', '2020-06-01', '18', '1');
INSERT INTO `order` VALUES ('207', '2020-06-01', '19', '2');
INSERT INTO `order` VALUES ('208', '2020-06-01', '23', '3');
INSERT INTO `order` VALUES ('209', '2020-06-01', '26', '4');
INSERT INTO `order` VALUES ('210', '2020-06-01', '25', '5');
INSERT INTO `order` VALUES ('211', '2020-07-01', '6', '1');
INSERT INTO `order` VALUES ('212', '2020-07-01', '15', '2');
INSERT INTO `order` VALUES ('213', '2020-07-01', '27', '3');
INSERT INTO `order` VALUES ('214', '2020-07-01', '10', '4');
INSERT INTO `order` VALUES ('215', '2020-07-01', '7', '5');
INSERT INTO `order` VALUES ('216', '2020-08-01', '24', '1');
INSERT INTO `order` VALUES ('217', '2020-08-01', '8', '2');
INSERT INTO `order` VALUES ('218', '2020-08-01', '25', '3');
INSERT INTO `order` VALUES ('219', '2020-08-01', '22', '4');
INSERT INTO `order` VALUES ('220', '2020-08-01', '21', '5');
INSERT INTO `order` VALUES ('221', '2020-09-01', '23', '1');
INSERT INTO `order` VALUES ('222', '2020-09-01', '24', '2');
INSERT INTO `order` VALUES ('223', '2020-09-01', '28', '3');
INSERT INTO `order` VALUES ('224', '2020-09-01', '17', '4');
INSERT INTO `order` VALUES ('225', '2020-09-01', '19', '5');
INSERT INTO `order` VALUES ('226', '2020-10-01', '27', '1');
INSERT INTO `order` VALUES ('227', '2020-10-01', '19', '2');
INSERT INTO `order` VALUES ('228', '2020-10-01', '15', '3');
INSERT INTO `order` VALUES ('229', '2020-10-01', '21', '4');
INSERT INTO `order` VALUES ('230', '2020-10-01', '16', '5');
INSERT INTO `order` VALUES ('231', '2020-11-01', '7', '1');
INSERT INTO `order` VALUES ('232', '2020-11-01', '8', '2');
INSERT INTO `order` VALUES ('233', '2020-11-01', '24', '3');
INSERT INTO `order` VALUES ('234', '2020-11-01', '21', '4');
INSERT INTO `order` VALUES ('235', '2020-11-01', '13', '5');
INSERT INTO `order` VALUES ('236', '2020-12-01', '13', '1');
INSERT INTO `order` VALUES ('237', '2020-12-01', '29', '2');
INSERT INTO `order` VALUES ('238', '2020-12-01', '13', '3');
INSERT INTO `order` VALUES ('239', '2020-12-01', '14', '4');
INSERT INTO `order` VALUES ('240', '2020-12-01', '23', '5');
INSERT INTO `order` VALUES ('241', '2021-01-01', '16', '1');
INSERT INTO `order` VALUES ('242', '2021-01-01', '19', '2');
INSERT INTO `order` VALUES ('243', '2021-01-01', '29', '3');
INSERT INTO `order` VALUES ('244', '2021-01-01', '8', '4');
INSERT INTO `order` VALUES ('245', '2021-01-01', '17', '5');
INSERT INTO `order` VALUES ('246', '2021-02-01', '9', '1');
INSERT INTO `order` VALUES ('247', '2021-02-01', '9', '2');
INSERT INTO `order` VALUES ('248', '2021-02-01', '17', '3');
INSERT INTO `order` VALUES ('249', '2021-02-01', '26', '4');
INSERT INTO `order` VALUES ('250', '2021-02-01', '16', '5');
INSERT INTO `order` VALUES ('251', '2021-03-01', '6', '1');
INSERT INTO `order` VALUES ('252', '2021-03-01', '11', '2');
INSERT INTO `order` VALUES ('253', '2021-03-01', '17', '3');
INSERT INTO `order` VALUES ('254', '2021-03-01', '18', '4');
INSERT INTO `order` VALUES ('255', '2021-03-01', '8', '5');
INSERT INTO `order` VALUES ('256', '2021-04-01', '27', '1');
INSERT INTO `order` VALUES ('257', '2021-04-01', '13', '2');
INSERT INTO `order` VALUES ('258', '2021-04-01', '21', '3');
INSERT INTO `order` VALUES ('259', '2021-04-01', '22', '4');
INSERT INTO `order` VALUES ('260', '2021-04-01', '29', '5');
INSERT INTO `order` VALUES ('261', '2021-05-01', '26', '1');
INSERT INTO `order` VALUES ('262', '2021-05-01', '9', '2');
INSERT INTO `order` VALUES ('263', '2021-05-01', '23', '3');
INSERT INTO `order` VALUES ('264', '2021-05-01', '24', '4');
INSERT INTO `order` VALUES ('265', '2021-05-01', '7', '5');
INSERT INTO `order` VALUES ('266', '2021-06-01', '29', '1');
INSERT INTO `order` VALUES ('267', '2021-06-01', '13', '2');
INSERT INTO `order` VALUES ('268', '2021-06-01', '29', '3');
INSERT INTO `order` VALUES ('269', '2021-06-01', '20', '4');
INSERT INTO `order` VALUES ('270', '2021-06-01', '17', '5');
INSERT INTO `order` VALUES ('271', '2021-07-01', '11', '1');
INSERT INTO `order` VALUES ('272', '2021-07-01', '23', '2');
INSERT INTO `order` VALUES ('273', '2021-07-01', '7', '3');
INSERT INTO `order` VALUES ('274', '2021-07-01', '26', '4');
INSERT INTO `order` VALUES ('275', '2021-07-01', '24', '5');
INSERT INTO `order` VALUES ('276', '2021-08-01', '12', '1');
INSERT INTO `order` VALUES ('277', '2021-08-01', '23', '2');
INSERT INTO `order` VALUES ('278', '2021-08-01', '15', '3');
INSERT INTO `order` VALUES ('279', '2021-08-01', '25', '4');
INSERT INTO `order` VALUES ('280', '2021-08-01', '22', '5');
INSERT INTO `order` VALUES ('281', '2021-09-01', '23', '1');
INSERT INTO `order` VALUES ('282', '2021-09-01', '11', '2');
INSERT INTO `order` VALUES ('283', '2021-09-01', '12', '3');
INSERT INTO `order` VALUES ('284', '2021-09-01', '5', '4');
INSERT INTO `order` VALUES ('285', '2021-09-01', '25', '5');
INSERT INTO `order` VALUES ('286', '2021-10-01', '22', '1');
INSERT INTO `order` VALUES ('287', '2021-10-01', '8', '2');
INSERT INTO `order` VALUES ('288', '2021-10-01', '22', '3');
INSERT INTO `order` VALUES ('289', '2021-10-01', '27', '4');
INSERT INTO `order` VALUES ('290', '2021-10-01', '21', '5');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ProductID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Coke');
INSERT INTO `product` VALUES ('2', 'Fanta');
INSERT INTO `product` VALUES ('3', 'Pepsi');
INSERT INTO `product` VALUES ('4', 'Red Bull');
INSERT INTO `product` VALUES ('5', 'Sprite');

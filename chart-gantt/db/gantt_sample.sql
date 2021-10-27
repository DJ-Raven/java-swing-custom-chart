/*
Navicat MySQL Data Transfer

Source Server         : SEVER 3305
Source Server Version : 50620
Source Host           : localhost:3305
Source Database       : gantt_sample

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2021-10-26 22:44:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phases
-- ----------------------------
DROP TABLE IF EXISTS `phases`;
CREATE TABLE `phases` (
  `PhasesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PhasesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phases
-- ----------------------------
INSERT INTO `phases` VALUES ('1', 'Requirement');
INSERT INTO `phases` VALUES ('2', 'Design');
INSERT INTO `phases` VALUES ('3', 'Coding');
INSERT INTO `phases` VALUES ('4', 'Testing');
INSERT INTO `phases` VALUES ('5', 'Deployment');

-- ----------------------------
-- Table structure for phases_detail
-- ----------------------------
DROP TABLE IF EXISTS `phases_detail`;
CREATE TABLE `phases_detail` (
  `PhasesDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PhasesID` int(10) unsigned NOT NULL,
  `SoftwareID` int(10) unsigned NOT NULL,
  `EstimatedDateStart` date DEFAULT NULL,
  `EstimatedDateEnd` date DEFAULT NULL,
  `ActualDateStart` date DEFAULT NULL,
  `ActualDateEnd` date DEFAULT NULL,
  PRIMARY KEY (`PhasesDID`),
  KEY `SoftwareID` (`SoftwareID`),
  KEY `PhasesID` (`PhasesID`),
  CONSTRAINT `phases_detail_ibfk_1` FOREIGN KEY (`SoftwareID`) REFERENCES `software` (`SoftwareID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phases_detail_ibfk_2` FOREIGN KEY (`PhasesID`) REFERENCES `phases` (`PhasesID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phases_detail
-- ----------------------------
INSERT INTO `phases_detail` VALUES ('1', '1', '2', '2021-10-26', '2021-10-29', '2021-10-26', '2021-10-28');
INSERT INTO `phases_detail` VALUES ('2', '2', '2', '2021-10-30', '2021-11-02', '2021-10-28', '2021-10-30');
INSERT INTO `phases_detail` VALUES ('3', '3', '2', '2021-11-03', '2021-11-07', '2021-10-30', '2021-11-05');
INSERT INTO `phases_detail` VALUES ('4', '4', '2', '2021-11-08', '2021-11-11', '2021-11-05', '2021-11-10');
INSERT INTO `phases_detail` VALUES ('5', '5', '2', '2021-11-12', '2021-11-16', '2021-11-10', '2021-11-18');

-- ----------------------------
-- Table structure for software
-- ----------------------------
DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `SoftwareID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SoftwareName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SoftwareID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of software
-- ----------------------------
INSERT INTO `software` VALUES ('1', 'School System');
INSERT INTO `software` VALUES ('2', 'Hotel System');
INSERT INTO `software` VALUES ('3', 'Mart System');

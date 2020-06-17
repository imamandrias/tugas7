/*
 Navicat Premium Data Transfer

 Source Server         : laptop
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : 127.0.0.1:3306
 Source Schema         : kamus_app

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 17/06/2020 16:10:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_terjemahan
-- ----------------------------
DROP TABLE IF EXISTS `tb_terjemahan`;
CREATE TABLE `tb_terjemahan`  (
  `bhs_inggris` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bhs_indonesia` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_terjemahan
-- ----------------------------
INSERT INTO `tb_terjemahan` VALUES ('a', 'sebuah');
INSERT INTO `tb_terjemahan` VALUES ('about', 'tentang');
INSERT INTO `tb_terjemahan` VALUES ('able', 'sanggup');
INSERT INTO `tb_terjemahan` VALUES ('above', 'atas');
INSERT INTO `tb_terjemahan` VALUES ('abstract', 'abstrak');
INSERT INTO `tb_terjemahan` VALUES ('baby', 'bayi');
INSERT INTO `tb_terjemahan` VALUES ('back', 'kembali');
INSERT INTO `tb_terjemahan` VALUES ('background', 'latar belakang');
INSERT INTO `tb_terjemahan` VALUES ('bad', 'buruk');
INSERT INTO `tb_terjemahan` VALUES ('can', 'bisa');
INSERT INTO `tb_terjemahan` VALUES ('co', 'bersama');
INSERT INTO `tb_terjemahan` VALUES ('cool', 'keren');
INSERT INTO `tb_terjemahan` VALUES ('could', 'bisa');
INSERT INTO `tb_terjemahan` VALUES ('dear', 'terhormat');
INSERT INTO `tb_terjemahan` VALUES ('do', 'melakukan');
INSERT INTO `tb_terjemahan` VALUES ('either', 'antara');
INSERT INTO `tb_terjemahan` VALUES ('enjoy', 'nikmati');
INSERT INTO `tb_terjemahan` VALUES ('enough', 'cukup');
INSERT INTO `tb_terjemahan` VALUES ('even', 'bahkan');
INSERT INTO `tb_terjemahan` VALUES ('final', 'terakhir');
INSERT INTO `tb_terjemahan` VALUES ('finally', 'akhirnya');
INSERT INTO `tb_terjemahan` VALUES ('first', 'pertama');
INSERT INTO `tb_terjemahan` VALUES ('for', 'untuk');
INSERT INTO `tb_terjemahan` VALUES ('go', 'pergi');
INSERT INTO `tb_terjemahan` VALUES ('good', 'baik');
INSERT INTO `tb_terjemahan` VALUES ('good afternoon', 'selamat sore');
INSERT INTO `tb_terjemahan` VALUES ('good morning', 'selamat pagi');
INSERT INTO `tb_terjemahan` VALUES ('hello', 'halo');
INSERT INTO `tb_terjemahan` VALUES ('hi', 'hai');
INSERT INTO `tb_terjemahan` VALUES ('how', 'bagaimana');
INSERT INTO `tb_terjemahan` VALUES ('however', 'namun');
INSERT INTO `tb_terjemahan` VALUES ('im', 'aku');
INSERT INTO `tb_terjemahan` VALUES ('in', 'di');
INSERT INTO `tb_terjemahan` VALUES ('is', 'adalah');

SET FOREIGN_KEY_CHECKS = 1;

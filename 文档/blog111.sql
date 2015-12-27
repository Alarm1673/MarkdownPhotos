/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2015-12-27 15:30:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `isdelete` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(1) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `tagname` text COMMENT '标签',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `view_count` int(10) DEFAULT NULL COMMENT '阅读量',
  `zan` int(10) DEFAULT NULL COMMENT '点赞量',
  `comment_count` int(10) DEFAULT NULL COMMENT '评论量',
  `comment` text COMMENT '评论',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `isdelete` int(1) unsigned DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL COMMENT '文章id',
  `userid` int(10) NOT NULL COMMENT '评论用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `content` text NOT NULL COMMENT '评论内容',
  `pid` int(10) NOT NULL COMMENT '父评论id',
  `zan` int(10) DEFAULT NULL,
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `isdelete` int(1) unsigned DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `url` text COMMENT '地址',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `isdelete` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of links
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `url` text COMMENT '地址',
  `email` varchar(100) DEFAULT '' COMMENT 'email',
  `content` text NOT NULL COMMENT '留言内容',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `isdelete` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `email` varchar(100) DEFAULT '' COMMENT 'email',
  `qq` varchar(50) DEFAULT '' COMMENT 'qq',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `descrp` text COMMENT '描述',
  `url` text COMMENT '地址',
  `picurl` text COMMENT '头像地址',
  `status` int(1) unsigned DEFAULT '0' COMMENT '激活状态\r\n0未激活\r\n1已激活',
  `qopenid` varchar(100) DEFAULT NULL COMMENT 'QqConnect OpenId',
  `qtoken` text COMMENT 'QqConnect token',
  `isdelete` int(1) unsigned DEFAULT '0' COMMENT '删除状态\r\n0 未删除\r\n1已删除',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

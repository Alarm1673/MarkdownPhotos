/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-12-27 11:37:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `catalog` text COMMENT '标签',
  `uid` int(1) NOT NULL COMMENT '用户id',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `read` int(10) DEFAULT NULL COMMENT '阅读次数',
  `smile` int(10) DEFAULT NULL COMMENT '点赞次数',
  `reply` int(10) DEFAULT NULL COMMENT '评论次数',
  `descrp` text COMMENT '评论',
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0' COMMENT '假删除字段',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `author` varchar(100) DEFAULT NULL COMMENT '密码',
  `content` text COMMENT '密码',
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news2message
-- ----------------------------
DROP TABLE IF EXISTS `news2message`;
CREATE TABLE `news2message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '留言内容',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '留言用户id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0' COMMENT '假删除字段',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news2mood
-- ----------------------------
DROP TABLE IF EXISTS `news2mood`;
CREATE TABLE `news2mood` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '内容',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0' COMMENT '假删除字段',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reply2article
-- ----------------------------
DROP TABLE IF EXISTS `reply2article`;
CREATE TABLE `reply2article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL COMMENT '话题id',
  `uid` int(10) NOT NULL COMMENT '评论用户id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `url` varchar(100) DEFAULT NULL COMMENT 'url',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `content` text NOT NULL COMMENT '评论内容',
  `quote` int(10) NOT NULL COMMENT '0：未引用 非0：引用楼层id',
  `smile` int(10) DEFAULT NULL,
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0' COMMENT '假删除字段',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`),
  KEY `uid` (`uid`),
  KEY `quote` (`quote`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reply2message
-- ----------------------------
DROP TABLE IF EXISTS `reply2message`;
CREATE TABLE `reply2message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL COMMENT '话题id',
  `uid` int(10) NOT NULL COMMENT '评论用户id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `url` varchar(100) DEFAULT NULL COMMENT 'url',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `content` text NOT NULL COMMENT '评论内容',
  `quote` int(10) NOT NULL COMMENT '0：未引用 非0：引用楼层id',
  `smile` int(10) DEFAULT NULL,
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0' COMMENT '假删除字段',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`),
  KEY `uid` (`uid`),
  KEY `quote` (`quote`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ucustom
-- ----------------------------
DROP TABLE IF EXISTS `ucustom`;
CREATE TABLE `ucustom` (
  `uid` int(11) unsigned NOT NULL,
  `descrp` text COMMENT '描述',
  `top` text COMMENT '头部与页眉',
  `right` text COMMENT '右侧',
  `left` text COMMENT '左侧',
  `bottom` text COMMENT '底部与页脚',
  `style` text COMMENT '样式',
  `javascript` text COMMENT 'js脚本',
  `init_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `tombstone` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for uinfo
-- ----------------------------
DROP TABLE IF EXISTS `uinfo`;
CREATE TABLE `uinfo` (
  `uid` int(11) unsigned NOT NULL,
  `rname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `descrp` text COMMENT '描述',
  `gender` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` varchar(100) DEFAULT NULL COMMENT '出生日期',
  `area` varchar(100) DEFAULT NULL COMMENT '地区',
  `reg_ip` char(15) DEFAULT '' COMMENT '注册ip',
  `last_ip` char(15) DEFAULT '' COMMENT '最后一次登录ip',
  `last_time` int(10) DEFAULT '0' COMMENT '最后一次登录时间',
  `credits` int(10) unsigned DEFAULT NULL COMMENT '积分',
  `level` int(10) unsigned DEFAULT NULL COMMENT '等级',
  `honor` varchar(100) DEFAULT NULL COMMENT '荣誉',
  `photo` varchar(100) DEFAULT NULL COMMENT '头像',
  `init_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `tombstone` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for urecord
-- ----------------------------
DROP TABLE IF EXISTS `urecord`;
CREATE TABLE `urecord` (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `records` text,
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `init_time` int(10) unsigned NOT NULL DEFAULT '0',
  `tombstone` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(100) NOT NULL COMMENT '用户名',
  `password` char(50) NOT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT '' COMMENT '邮箱',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `descrp` text COMMENT '描述',
  `type` int(1) unsigned DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `qopenid` varchar(100) DEFAULT NULL,
  `qtoken` text,
  `sopenid` varchar(100) DEFAULT NULL,
  `stoken` text,
  `init_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `tombstone` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `email` (`email`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

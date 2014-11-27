/*
 Navicat MySQL Data Transfer

 Source Server         : 我的服务器
 Source Server Version : 50173
 Source Host           : 115.28.107.151
 Source Database       : Crowdfunding

 Target Server Version : 50173
 File Encoding         : utf-8

 Date: 11/27/2014 01:08:20 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_permission`
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry'), ('2', 'Can change log entry', '1', 'change_logentry'), ('3', 'Can delete log entry', '1', 'delete_logentry'), ('4', 'Can add permission', '2', 'add_permission'), ('5', 'Can change permission', '2', 'change_permission'), ('6', 'Can delete permission', '2', 'delete_permission'), ('7', 'Can add group', '3', 'add_group'), ('8', 'Can change group', '3', 'change_group'), ('9', 'Can delete group', '3', 'delete_group'), ('10', 'Can add user', '4', 'add_user'), ('11', 'Can change user', '4', 'change_user'), ('12', 'Can delete user', '4', 'delete_user'), ('13', 'Can add content type', '5', 'add_contenttype'), ('14', 'Can change content type', '5', 'change_contenttype'), ('15', 'Can delete content type', '5', 'delete_contenttype'), ('16', 'Can add session', '6', 'add_session'), ('17', 'Can change session', '6', 'change_session'), ('18', 'Can delete session', '6', 'delete_session'), ('19', 'Can add 用户', '7', 'add_users'), ('20', 'Can change 用户', '7', 'change_users'), ('21', 'Can delete 用户', '7', 'delete_users'), ('22', 'Can add 账户', '8', 'add_account'), ('23', 'Can change 账户', '8', 'change_account'), ('24', 'Can delete 账户', '8', 'delete_account'), ('25', 'Can add 行业', '9', 'add_industry'), ('26', 'Can change 行业', '9', 'change_industry'), ('27', 'Can delete 行业', '9', 'delete_industry'), ('28', 'Can add 地区', '10', 'add_province'), ('29', 'Can change 地区', '10', 'change_province'), ('30', 'Can delete 地区', '10', 'delete_province'), ('31', 'Can add 公司类型', '11', 'add_pro_type'), ('32', 'Can change 公司类型', '11', 'change_pro_type'), ('33', 'Can delete 公司类型', '11', 'delete_pro_type'), ('34', 'Can add 企业类型', '12', 'add_com_type'), ('35', 'Can change 企业类型', '12', 'change_com_type'), ('36', 'Can delete 企业类型', '12', 'delete_com_type'), ('37', 'Can add 股权众筹', '13', 'add_stock'), ('38', 'Can change 股权众筹', '13', 'change_stock'), ('39', 'Can delete 股权众筹', '13', 'delete_stock'), ('40', 'Can add 债权众筹', '14', 'add_bond'), ('41', 'Can change 债权众筹', '14', 'change_bond'), ('42', 'Can delete 债权众筹', '14', 'delete_bond'), ('43', 'Can add 用户投资股权众筹', '15', 'add_invest_stock'), ('44', 'Can change 用户投资股权众筹', '15', 'change_invest_stock'), ('45', 'Can delete 用户投资股权众筹', '15', 'delete_invest_stock'), ('46', 'Can add 用户投资债权众筹', '16', 'add_invest_bond'), ('47', 'Can change 用户投资债权众筹', '16', 'change_invest_bond'), ('48', 'Can delete 用户投资债权众筹', '16', 'delete_invest_bond'), ('49', 'Can add 充值信息', '17', 'add_recharge'), ('50', 'Can change 充值信息', '17', 'change_recharge'), ('51', 'Can delete 充值信息', '17', 'delete_recharge'), ('52', 'Can add 关注', '18', 'add_user_focus'), ('53', 'Can change 关注', '18', 'change_user_focus'), ('54', 'Can delete 关注', '18', 'delete_user_focus'), ('55', 'Can add 用户讨论', '19', 'add_talk'), ('56', 'Can change 用户讨论', '19', 'change_talk'), ('57', 'Can delete 用户讨论', '19', 'delete_talk'), ('58', 'Can add 系统通知', '20', 'add_notice'), ('59', 'Can change 系统通知', '20', 'change_notice'), ('60', 'Can delete 系统通知', '20', 'delete_notice'), ('61', 'Can add 用户通知', '21', 'add_notice_user'), ('62', 'Can change 用户通知', '21', 'change_notice_user'), ('63', 'Can delete 用户通知', '21', 'delete_notice_user'), ('64', 'Can add 系统通知查看', '22', 'add_notice_read'), ('65', 'Can change 系统通知查看', '22', 'change_notice_read'), ('66', 'Can delete 系统通知查看', '22', 'delete_notice_read'), ('67', 'Can add 用户收益', '23', 'add_profit'), ('68', 'Can change 用户收益', '23', 'change_profit'), ('69', 'Can delete 用户收益', '23', 'delete_profit'), ('70', 'Can view content type', '5', 'view_contenttype'), ('71', 'Can view group', '3', 'view_group'), ('72', 'Can view log entry', '1', 'view_logentry'), ('73', 'Can view permission', '2', 'view_permission'), ('74', 'Can view session', '6', 'view_session'), ('75', 'Can view user', '4', 'view_user'), ('76', 'Can view 企业类型', '12', 'view_com_type'), ('77', 'Can view 债权众筹', '14', 'view_bond'), ('78', 'Can view 充值信息', '17', 'view_recharge'), ('79', 'Can view 公司类型', '11', 'view_pro_type'), ('80', 'Can view 关注', '18', 'view_user_focus'), ('81', 'Can view 地区', '10', 'view_province'), ('82', 'Can view 用户', '7', 'view_users'), ('83', 'Can view 用户投资债权众筹', '16', 'view_invest_bond'), ('84', 'Can view 用户投资股权众筹', '15', 'view_invest_stock'), ('85', 'Can view 用户收益', '23', 'view_profit'), ('86', 'Can view 用户讨论', '19', 'view_talk'), ('87', 'Can view 用户通知', '21', 'view_notice_user'), ('88', 'Can view 系统通知', '20', 'view_notice'), ('89', 'Can view 系统通知查看', '22', 'view_notice_read'), ('90', 'Can view 股权众筹', '13', 'view_stock'), ('91', 'Can view 行业', '9', 'view_industry'), ('92', 'Can view 账户', '8', 'view_account'), ('93', 'Can add revision', '24', 'add_revision'), ('94', 'Can change revision', '24', 'change_revision'), ('95', 'Can delete revision', '24', 'delete_revision'), ('96', 'Can add version', '25', 'add_version'), ('97', 'Can change version', '25', 'change_version'), ('98', 'Can delete version', '25', 'delete_version'), ('99', 'Can view revision', '24', 'view_revision'), ('100', 'Can view version', '25', 'view_version'), ('101', 'Can add Bookmark', '26', 'add_bookmark'), ('102', 'Can change Bookmark', '26', 'change_bookmark'), ('103', 'Can delete Bookmark', '26', 'delete_bookmark'), ('104', 'Can add User Setting', '27', 'add_usersettings'), ('105', 'Can change User Setting', '27', 'change_usersettings'), ('106', 'Can delete User Setting', '27', 'delete_usersettings'), ('107', 'Can add User Widget', '28', 'add_userwidget'), ('108', 'Can change User Widget', '28', 'change_userwidget'), ('109', 'Can delete User Widget', '28', 'delete_userwidget'), ('110', 'Can view Bookmark', '26', 'view_bookmark'), ('111', 'Can view User Setting', '27', 'view_usersettings'), ('112', 'Can view User Widget', '28', 'view_userwidget'), ('113', 'Can add 验证码', '29', 'add_randomcode'), ('114', 'Can change 验证码', '29', 'change_randomcode'), ('115', 'Can delete 验证码', '29', 'delete_randomcode'), ('116', 'Can view 验证码', '29', 'view_randomcode'), ('117', 'Can add token', '30', 'add_token'), ('118', 'Can change token', '30', 'change_token'), ('119', 'Can delete token', '30', 'delete_token'), ('120', 'Can view token', '30', 'view_token'), ('121', 'Can add 系统基础参数', '31', 'add_settings'), ('122', 'Can change 系统基础参数', '31', 'change_settings'), ('123', 'Can delete 系统基础参数', '31', 'delete_settings'), ('124', 'Can view 系统基础参数', '31', 'view_settings'), ('125', 'Can add 用户反馈', '32', 'add_feedback'), ('126', 'Can change 用户反馈', '32', 'change_feedback'), ('127', 'Can delete 用户反馈', '32', 'delete_feedback'), ('128', 'Can view 用户反馈', '32', 'view_feedback'), ('129', 'Can add 认购状态', '33', 'add_invest_status'), ('130', 'Can change 认购状态', '33', 'change_invest_status'), ('131', 'Can delete 认购状态', '33', 'delete_invest_status'), ('132', 'Can view 认购状态', '33', 'view_invest_status'), ('133', 'Can add 定金', '34', 'add_payment'), ('134', 'Can change 定金', '34', 'change_payment'), ('135', 'Can delete 定金', '34', 'delete_payment'), ('136', 'Can view 定金', '34', 'view_payment');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_user`
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$12000$k8qUUIkcEI2i$r5U1FAbqrkuiJXQgVUJaNJgNfSz1SW/Z+zUS9XwDHBg=', '2014-11-26 12:08:24', '1', 'admin', '', '', '', '1', '1', '2014-11-03 15:07:38');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2014-11-03 17:00:54', '1', '7', '1', 'sun', '1', ''), ('2', '2014-11-03 17:01:11', '1', '7', '2', 'xiao', '1', ''), ('3', '2014-11-03 17:01:34', '1', '7', '3', 'yu', '1', '');
COMMIT;

-- ----------------------------
--  Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_content_type`
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry'), ('2', 'permission', 'auth', 'permission'), ('3', 'group', 'auth', 'group'), ('4', 'user', 'auth', 'user'), ('5', 'content type', 'contenttypes', 'contenttype'), ('6', 'session', 'sessions', 'session'), ('7', '用户', 'qdinvest', 'users'), ('8', '账户', 'qdinvest', 'account'), ('9', '行业', 'qdinvest', 'industry'), ('10', '地区', 'qdinvest', 'province'), ('11', '公司类型', 'qdinvest', 'pro_type'), ('12', '企业类型', 'qdinvest', 'com_type'), ('13', '股权众筹', 'qdinvest', 'stock'), ('14', '债权众筹', 'qdinvest', 'bond'), ('15', '用户投资股权众筹', 'qdinvest', 'invest_stock'), ('16', '用户投资债权众筹', 'qdinvest', 'invest_bond'), ('17', '充值信息', 'qdinvest', 'recharge'), ('18', '关注', 'qdinvest', 'user_focus'), ('19', '用户讨论', 'qdinvest', 'talk'), ('20', '系统通知', 'qdinvest', 'notice'), ('21', '用户通知', 'qdinvest', 'notice_user'), ('22', '系统通知查看', 'qdinvest', 'notice_read'), ('23', '用户收益', 'qdinvest', 'profit'), ('24', 'revision', 'reversion', 'revision'), ('25', 'version', 'reversion', 'version'), ('26', 'Bookmark', 'xadmin', 'bookmark'), ('27', 'User Setting', 'xadmin', 'usersettings'), ('28', 'User Widget', 'xadmin', 'userwidget'), ('29', '验证码', 'qdinvest', 'randomcode'), ('30', 'token', 'qdinvest', 'token'), ('31', '系统基础参数', 'qdinvest', 'settings'), ('32', '用户反馈', 'qdinvest', 'feedback'), ('33', '认购状态', 'qdinvest', 'invest_status'), ('34', '定金', 'qdinvest', 'payment');
COMMIT;

-- ----------------------------
--  Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_session`
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('f69666ivzw8iwn4c24gkd9bhc4fpqwjg', 'MmQ1NjdiYjU1Zjg5MWVkOTUxMjQxMzU5OTkyNDdiMTg1YjJiMzUxODp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwiaW52ZXN0X3N0b2NrIl0sIiJdLCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NGYxOFxcdThkMjhcXHU0ZjAxXFx1NGUxYVxcdTRmZTFcXHU3NTI4XFx1OGQzN1xcdWZmMDhcXHU3NjdlXFx1NjJkM1xcdTc5ZDFcXHU2MjgwXFx1ZmYwOVxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NmQ3N1xcdTVlNzNcXHU4MGExXFx1NGVmZFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NWI4OVxcdTVmYmRcXHU5ZWM0XFx1NWM3MVxcdTdiMmNcXHU0ZTAwXFx1NWVmYVxcdTdiNTFcXHU1Yjg5XFx1ODhjNVxcdTVkZTVcXHU3YTBiXFx1ODBhMVxcdTRlZmRcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU4MWVhXFx1NzUzMVxcdTdlY2ZcXHU4NDI1XFx1NzUyOFxcdTkwMTQgXFx1ZmYwOFxcdTY1YjBcXHU2MjRiXFx1NGY1M1xcdTlhOGNcXHVmZjA5XFx1N2IyY1xcdTRlMDlcXHU2NzFmXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU5OGRmXFx1NTRjMVxcdTc1MWZcXHU0ZWE3XFx1NGYwMVxcdTRlMWFcXHU3ZWNmXFx1ODQyNVxcdThkMzdcXHU2YjNlXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1YmZhXFx1NWU5M1xcdTRmOWJcXHU1ZTk0XFx1NTU0NlxcdTg3OGRcXHU4ZDQ0XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1MTljXFx1NGUxYVxcdTUxNmNcXHU1M2Y4XFx1N2VjZlxcdTg0MjVcXHU4ZDM3XFx1NmIzZVxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NjIzZlxcdTRlYTdcXHU1NDY4XFx1OGY2Y1xcdThkMzdcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTUwM2FcXHU2NzQzXFx1ODc4ZFxcdThkNDQtXFx1ODMwMlxcdTk3MTZcXHU5YWQ4XFx1NzlkMVxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl1dIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcF9maWxlcyI6e30sInN0ZXAiOm51bGwsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnt9fX0=', '2014-11-24 15:13:11'), ('zzq2ifoj0wssqfzxr8tssus0m82j58s9', 'NTQ0N2Q5M2FjZWQ4MmQ4MTcwYTk1ZDhlYTk0Y2RlZjlhMzk4MjFmZjp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwiYm9uZCJdLCIiXSwiX21lc3NhZ2VzIjoiW1tcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTg4NGNcXHU0ZTFhIFxcXCJcXHU4YmMxXFx1NTIzOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODg0Y1xcdTRlMWEgXFxcIlxcdTVlZmFcXHU3YjUxXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ODRjXFx1NGUxYSBcXFwiXFx1N2ViYVxcdTdlYzdcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTg4NGNcXHU0ZTFhIFxcXCJcXHU1MzNiXFx1ODM2ZlxcdTUyMzZcXHU5MDIwXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ODRjXFx1NGUxYSBcXFwiXFx1NzlkMVxcdTYyODBcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTg4NGNcXHU0ZTFhIFxcXCJcXHU2MjNmXFx1NTczMFxcdTRlYTdcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTg4NGNcXHU0ZTFhIFxcXCJcXHU1MzZiXFx1NzUxZlxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl1dIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxfQ==', '2014-11-22 21:55:29'), ('qrej62hr39tpa7zc2r4u9jyyk2yuki0e', 'ZDg2YmZlNGQ5ZjQ4NTMwNjcwZGQzMGFhNjQ5NjU4MDg0ZjkwNTU1Yjp7InVzZXJuYW1lIjoiY3lkIiwiTElTVF9RVUVSWSI6W1sicWRpbnZlc3QiLCJ1c2VycyJdLCIiXSwidXNlcl9pZCI6MTAsIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-12-01 18:26:54'), ('w82qt7qbyv09aadtleqngjy745c3wynq', 'NzVlODViNWNkY2VmZWRhMTM2OWRhMDk3ZTNmZDZkNjlhZDZmZGYyOTp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwidXNlcl9mb2N1cyJdLCIiXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxfQ==', '2014-11-21 16:11:34'), ('2lm3khf1qlljaufj73zj1u924c4ib269', 'NmFmNzU1NzU1YWQ3NGNiOTgyN2QzMDJkNTIxMmYyZTJlZTU2OGFiOTp7Il9hdXRoX3VzZXJfaWQiOjEsIkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwiYWNjb3VudCJdLCIiXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NzUyOFxcdTYyMzdcXHU1M2NkXFx1OTk4OCBcXFwiPGEgY2xhc3M9J2FsZXJ0LWxpbmsnIGhyZWY9Jy9hZG1pbi9xZGludmVzdC9mZWVkYmFjay8xL3VwZGF0ZS8nPlxcdTY3NGVcXHU0ZTNkPC9hPlxcXCIgXFx1NmRmYlxcdTUyYTBcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl1dIn0=', '2014-11-26 22:27:25'), ('1v9xt93l3gct21luw2ikj593yatso370', 'OWM5ZGYzMTYwZTVmZDE2ZTk1YzI3MWU3ZGIyNGQyYjU1YjFmNzdiODp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwiaW52ZXN0X3N0b2NrIl0sIiJdLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2014-11-26 23:55:54'), ('l7b5cx4htd8s7ki84l5t6mtfbamk5vya', 'ZGFlOWYyZWVmY2VhYzVhZWU3OGE4NDZjOWQzNDdjNWExZTM2NjdkZjp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwiaW52ZXN0X3N0b2NrIl0sIiJdLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2014-11-26 23:47:10'), ('cnwju4ppvmxtm2em84hplox7xcezl7zx', 'NTBlZTRlY2ZlNWJjM2U5Y2ZiMTEwZTA2ZTlkMzllMzhhM2UwNzE0Mjp7fQ==', '2014-11-29 15:39:53'), ('g3vpfrnus8tsmcq1zs9t8y6qt4akre1s', 'MTViZDA0Y2QwYTBhNWZmY2FkOWMzMzM2ZGI3MDk0ZTM2N2MwYzM5Zjp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwicHJvZml0Il0sIiJdLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2014-11-27 00:48:49'), ('eil5vm9ahkq12ryaa3n7p5o2y4iznc7f', 'NTBlZTRlY2ZlNWJjM2U5Y2ZiMTEwZTA2ZTlkMzllMzhhM2UwNzE0Mjp7fQ==', '2014-12-04 11:13:47'), ('le6occpffwix24vldzolh1d374qbg3d2', 'NDk0ZWExZTQwODBlNWYxYWE4MjM1ZDQwODI3MDM0NjkwZWZjYmZjMzp7IkxJU1RfUVVFUlkiOltbImF1dGgiLCJ1c2VyIl0sIiJdLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2014-12-06 19:38:10'), ('xguuvis9yhukxsvyc5a91pj79z0d9wrm', 'MWNiODU1NDdiYWVkZjE1NDc4NzVjZjA2Y2RkZjY5NGYwMDYyMzljMzp7InN0X2lkIjo4OCwiTElTVF9RVUVSWSI6W1sicWRpbnZlc3QiLCJpbnZlc3RfYm9uZCJdLCIiXSwiX2F1dGhfdXNlcl9pZCI6MSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2014-12-06 23:50:29'), ('wxtplu0sgf87198p82r4bkikejme2fpt', 'MzBmYzQ5YTM4NDVhOGNiM2FmNGE2MDQ2YzVmZjUyMGJkMTZiMTQ3YTp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwidXNlcnMiXSwiIl0sIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-12-08 22:01:03'), ('u6qwunmgx5jx3y7tr2eu3i6xjwulfsgf', 'MWY1YWE4YWY5Nzg1NTY5MzI5YTBlODliNjRiNjg1NjljYTI1MTgxZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sicWRpbnZlc3QiLCJzdG9jayJdLCIiXSwiX2F1dGhfdXNlcl9pZCI6MSwiX21lc3NhZ2VzIjoiW1tcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTRmMWZcXHU2MDUyXFx1NTU0NlxcdThkMzhcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFx1OGY2Y1xcdThkMzdcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTY2MDBcXHU1ZWI3XFx1NTU0NlxcdThkMzhcXHU4ZjZjXFx1OGQzN1xcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NzIzMVxcdTk4N2FcXHU1NTQ2XFx1OGQzOFxcdThmNmNcXHU4ZDM3XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU0ZTJkXFx1NjEwZlxcdTRlMDdcXHU4ZmJlXFx1NTU0NlxcdThkMzhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdThkODVcXHU1MjRkXFx1NTU0NlxcdThkMzhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTk3NTZcXHU2ZDY5XFx1NTU0NlxcdThkMzhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTlhZDhcXHU3MzliXFx1NTU0NlxcdThkMzhcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1MDNhXFx1Njc0M1xcdTg3OGRcXHU4ZDQ0LVxcdTgzMDJcXHU5NzE2XFx1OWFkOFxcdTc5ZDFcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTUwM2FcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTYyM2ZcXHU0ZWE3XFx1NTQ2OFxcdThmNmNcXHU4ZDM3XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1MTljXFx1NGUxYVxcdTUxNmNcXHU1M2Y4XFx1N2VjZlxcdTg0MjVcXHU4ZDM3XFx1NmIzZVxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NWJmYVxcdTVlOTNcXHU0ZjliXFx1NWU5NFxcdTU1NDZcXHU4NzhkXFx1OGQ0NFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1OThkZlxcdTU0YzFcXHU3NTFmXFx1NGVhN1xcdTRmMDFcXHU0ZTFhXFx1N2VjZlxcdTg0MjVcXHU4ZDM3XFx1NmIzZVxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1ODFlYVxcdTc1MzFcXHU3ZWNmXFx1ODQyNVxcdTc1MjhcXHU5MDE0IFxcdTdiMmNcXHU0ZTA5XFx1NjcxZlxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NTAzYVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NWI4OVxcdTVmYmRcXHU5ZWM0XFx1NWM3MVxcdTdiMmNcXHU0ZTAwXFx1NWVmYVxcdTdiNTFcXHU1Yjg5XFx1ODhjNVxcdTVkZTVcXHU3YTBiXFx1ODBhMVxcdTRlZmRcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU1MDNhXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU2ZDc3XFx1NWU3M1xcdTgwYTFcXHU0ZWZkXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4MGExXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1MzRlXFx1ODIyYVxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NTM0ZVxcdTgyMmFcXHU1NTQ2XFx1OGQzOFxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTViOWNcXHU5ZTNmXFx1NTU0NlxcdThkMzhcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4MGExXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1ZmI3XFx1OGZiMFxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NGUwYVxcdTZkNzdcXHU3YWNiXFx1NTM1YVxcdTU4NTFcXHU4MGY2XFx1NWRlNVxcdTUxNzdcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4MGExXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU4MzYzXFx1NjIxMFxcdTc2ZGJcXHU2Y2M5XFx1NTE3YlxcdTgwMDFcXHU2NzBkXFx1NTJhMVxcdTgwYTFcXHU0ZWZkXFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NWJjY1xcdTg0ZGRcXHU1NTQ2XFx1OGQzOFxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTViY2NcXHU4NGRkXFx1NTU0NlxcdThkMzhcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4MGExXFx1Njc0M1xcdTRmMTdcXHU3Yjc5IFxcXCJcXHU1ZGU4XFx1NjY1NlxcdTU1NDZcXHU4ZDM4XFx1NWU3ZlxcdTU0NGFcXHU2NzA5XFx1OTY1MFxcdTUxNmNcXHU1M2Y4IFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NmNmMFxcdTU4ZWJcXHU3Mjc5XFx1NTU0NlxcdThkMzhcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NWI5ZFxcdTk0YTJcXHU1NTQ2XFx1OGQzOFxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTkxZDFcXHU1Yjg5XFx1OGZiZVxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1OWYwZVxcdTk0NmJcXHU3NmRiXFx1NjYwZVxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NGUwYVxcdTZkNzdcXHU1MzRlXFx1OWY5OVxcdTZkNGJcXHU4YmQ1XFx1NGVlYVxcdTU2NjhcXHU4MGExXFx1NGVmZFxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTgyY2ZcXHU1ZGRlXFx1OTA1M1xcdThiZGFcXHU3OWQxXFx1NjI4MFxcdTgwYTFcXHU0ZWZkXFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NGUwYVxcdTZkNzdcXHU5MWQxXFx1NTczMFxcdTUxOWNcXHU0ZTFhXFx1NTNkMVxcdTVjNTVcXHU4MGExXFx1NGVmZFxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTRlMGFcXHU2ZDc3XFx1NWEwMVxcdTYyZmZcXHU1MzYxXFx1NTU0NlxcdTUyYTFcXHU2NzBkXFx1NTJhMVxcdTY3MDlcXHU5NjUwXFx1NTE2Y1xcdTUzZjhcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTRlOTFcXHU1MzU3XFx1OWViYlxcdTg4OGJcXHU1ZTdmXFx1NTQ0YVxcdTRmMjBcXHU2NGFkXFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NzY3ZVxcdTRlOGJcXHU2MDUyXFx1NTE3NFxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOCBcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTRmZTFcXHU3OTg0XFx1NGZlMVxcdTgwYTFcXHU0ZWZkXFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NTFlZlxcdTkxZDFcXHU2NzNhXFx1NjhiMFxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NzQ1ZVxcdTlhNzBcXHU1NTQ2XFx1OGQzOFxcdTY3MDlcXHU5NjUwXFx1OGQyM1xcdTRlZmJcXHU1MTZjXFx1NTNmOFxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1ODBhMVxcdTY3NDNcXHU0ZjE3XFx1N2I3OSBcXFwiXFx1NzZkYlxcdTRlMTZcXHU5MWQxXFx1NTIyOVxcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOCBcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTgwYTFcXHU2NzQzXFx1NGYxN1xcdTdiNzkgXFxcIlxcdTlhOGZcXHU1MzVhXFx1NWZiN1xcdTU1NDZcXHU4ZDM4XFx1NjcwOVxcdTk2NTBcXHU1MTZjXFx1NTNmOCBcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdTdjZmJcXHU3ZWRmXFx1OTAxYVxcdTc3ZTUgXFxcIk5PVElDRSBvYmplY3RcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdXSJ9', '2014-12-09 20:08:19'), ('lsu1y2hks3ysv8rt1lnn3iabq14b2lgg', 'Zjg5ODYxODZiOTFlMzIxNjY0Y2U2YTAzNjUzZTc5OGRjYTI1MmIyYjp7InN0X2lkIjoiYWxsMiIsIkxJU1RfUVVFUlkiOltbInFkaW52ZXN0Iiwibm90aWNlIl0sIiJdLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU3NTI4XFx1NjIzN1xcdTkwMWFcXHU3N2U1IFxcXCI8YSBjbGFzcz0nYWxlcnQtbGluaycgaHJlZj0nL2FkbWluL3FkaW52ZXN0L25vdGljZV91c2VyLzYvdXBkYXRlLyc+XFx1NWI5YVxcdTU0MTFcXHU1M2QxXFx1OTAwMVxcdTZkNGJcXHU4YmQ1PC9hPlxcXCIgXFx1NmRmYlxcdTUyYTBcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1NzUyOFxcdTYyMzdcXHU5MDFhXFx1NzdlNSBcXFwiPGEgY2xhc3M9J2FsZXJ0LWxpbmsnIGhyZWY9Jy9hZG1pbi9xZGludmVzdC9ub3RpY2VfdXNlci83L3VwZGF0ZS8nPlxcdTViOWFcXHU1NDExXFx1NTNkMVxcdTkwMDFcXHU2ZDRiXFx1OGJkNTI8L2E+XFxcIiBcXHU2ZGZiXFx1NTJhMFxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU3NTI4XFx1NjIzN1xcdTkwMWFcXHU3N2U1IFxcXCI8YSBjbGFzcz0nYWxlcnQtbGluaycgaHJlZj0nL2FkbWluL3FkaW52ZXN0L25vdGljZV91c2VyLzgvdXBkYXRlLyc+XFx1NWMwZlxcdTdlYTJcXHU3MGI5XFx1NmQ0YlxcdThiZDU8L2E+XFxcIiBcXHU2ZGZiXFx1NTJhMFxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwieWNtXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwidGIgXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwiTXVycGh5XFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwiMTIzXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwidGFuZ1xcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1OGQyNlxcdTYyMzcgXFxcIlxcdTkwZGRcXHU1ZWZhXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwiXFx1NWYyMFxcdTY2MGVcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdThkMjZcXHU2MjM3IFxcXCJcXHU0ZWZiXFx1OTQ2YlxcXCIgXFx1NGZlZVxcdTY1MzlcXHU2MjEwXFx1NTI5ZlxcdTMwMDJcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiXFx1OGQyNlxcdTYyMzcgXFxcIlxcdTY3NGVcXHU0ZTNkXFxcIiBcXHU0ZmVlXFx1NjUzOVxcdTYyMTBcXHU1MjlmXFx1MzAwMlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJcXHU4ZDI2XFx1NjIzNyBcXFwiXFx1NWYyMFxcdTVmM2FcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyNSxcIlxcdThkMjZcXHU2MjM3IFxcXCJcXHU4ZDc1XFx1OWUzZlxcdTVmM2FcXFwiIFxcdTRmZWVcXHU2NTM5XFx1NjIxMFxcdTUyOWZcXHUzMDAyXCJdXSIsIl9hdXRoX3VzZXJfaWQiOjF9', '2014-12-11 00:57:32'), ('roarb9vsnj9gv473nng9n66zi5scl2nr', 'NzJhYTQyODA2YjEyNDVkZjlkYWYxOWJlZmJhZGJlNzBkNjY5NGRjNTp7InN0X2lkIjoiYWxsMiIsIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwicHRfaWQiOiJhbGwyIiwiY3RfaWQiOiIyIiwicHJ0X2lkIjoiYWxsMiIsIkxJU1RfUVVFUlkiOltbInFkaW52ZXN0Iiwibm90aWNlX3JlYWQiXSwiIl0sIml0X2lkIjoiYWxsMiJ9', '2014-12-09 15:13:40'), ('qy2ccza2w8ypci29gf210ti53a4t38qs', 'NzUwOTBhY2Q3OGI0YzNlNjMwZmMzY2M2MTM3N2UyM2ZlYmFlYjBiODp7InN0X2lkIjoiYWxsMiJ9', '2014-12-08 02:35:43'), ('gv3od5c3q8h9aurdhpsiizmg5hkm5bc6', 'OWVkOGJhOGRkZGVlYmFkM2RjOTdkMDdhNDU4NGM4MDZiOWY3NWYyYTp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0Iiwibm90aWNlX3VzZXIiXSwiIl0sIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-12-09 15:01:18'), ('8lwtct9d6edqbak2s0h688dgt6ip5y8m', 'ODEyYmRlODNkY2UzMjVhNDAzZjU5ZWIxYWIxYzMzN2MwYmNhZmJjMDp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0IiwicHJvX3R5cGUiXSwiIl0sIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-12-11 00:01:51'), ('7yerqxeq02jwexfmfghxge0ri1lgheto', 'OTNiYjgxYTNhZWFiM2FhNmRiM2E2M2I1OWUwOTcxNmM3MTA4MTRiMTp7Iml0X2lkIjoiNiJ9', '2014-12-10 09:51:27'), ('e0kjlwndt31e5lcp6ieu5t9vif8mawsr', 'MjViY2FhN2Q4ZWMyYzE5MmY0NmEyMmVjMzE5MGFiOWQyMmRhZjViODp7ImN0X2lkIjoiNSIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:21:32'), ('81fwdwjwyd03u30s80sdk2sh9oyvyg4t', 'MTM2OTlhNzllZWNhMGNkYmY0MzQzZGQ3YWM4ZDAyNTBhNGZlNWJhMjp7IkxJU1RfUVVFUlkiOltbInFkaW52ZXN0Iiwibm90aWNlIl0sIiJdLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2014-12-11 01:00:13'), ('4kjbza8tn9xk3x23ypqwpkf91sq2sobi', 'MWFlNzE4NzdjMmRlYzNhNzhjOWY5Njk0OGYzY2RmY2NlMzQ2NjNiMDp7ImN0X2lkIjoiMiIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:21:36'), ('g3xtrv8wuh5aylcxy5e0w97gigi5qh0t', 'ZGJkNjUzMDBmZGI2NjQyZjgzMzE3MzU5MWRhZmE5MTU4OTRmMzQ1MDp7ImN0X2lkIjoiNyIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:21:45'), ('hqq2ttuao2h5km1xwjl4487z8jgo6sqf', 'ZTQyM2M0MWJjZmE1ODMxNDMyMTJlMmExZWZhYWVjNmE0NGIyYzEzMTp7ImN0X2lkIjoiMSIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:22:29'), ('9pqf7dc2pm9j0xj8mb624hkg1lrssc7b', 'YzRlYTc1N2I4NGEwZDYwNjNlZDAzZGY5ZjM4Y2FhNmE4YWI1OGYzMjp7ImN0X2lkIjoiNiIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:22:38'), ('ied8t0qrgf811imfoqy2mpf9dabmlahg', 'OWFkY2EyZGMyN2E5MjNiN2EzZjUxYjc3Njg4NTAwZDZjZDQzNWJkMDp7ImN0X2lkIjoiOSIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:23:02'), ('7g7junr79oeh23gkg0kaxvtjhhjm0qdv', 'NTgzY2Q2ZjA3NDFiNTBjNDU3MTEwZTYzNWY1NmUwNTAzMzFhNjc3Zjp7ImN0X2lkIjoiMyIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:23:11'), ('56z6k3bmweatchqw85ul7wokbrqjfhtt', 'NmY5YWJiN2NiOWVjODk5MGRiMDdiMDZhMDc2MjBlODM2OTExMmJlZjp7InN0X2lkIjoiMSJ9', '2014-12-10 12:23:52'), ('dpxhinkjtpxi2bkix6fr0caxix82gxb4', 'NWNhMWIxYjA4MGViZWUxYTRlYTU0Y2NhMzE0NTRjNTcyZjFjNDRkMDp7ImN0X2lkIjoiNCIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:23:55'), ('y9n5qtmlwqdnb8odeybp5z7yn4iryxzx', 'ZWE2ODM0OTRiMDkwYzI2MWYzZDE1MjlmYjRkNjgzZTBkMDk0MjcyODp7ImN0X2lkIjoiMTAiLCJzdF9pZCI6ImFsbDIifQ==', '2014-12-10 12:24:16'), ('w3zlotq3yu3m81p4if7jzcjwsky5ez3u', 'MmI4NDg5MDNhYTc4NjYxY2EwZTBjODM5MDAwMTZlYThiZmY0YjAwZDp7InB0X2lkIjoiNyIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:24:38'), ('jicmn7ikmrg0tje74nl8o9ueberyinjw', 'YTAxMDViZWM1NGQ3M2YyMjZlZDZlMjQ5NDc0Y2UwZGFiYTJjN2M2NDp7InB0X2lkIjoiNCIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:24:49'), ('63bb40sca8bdd31vz2snmfvyakj9g7zh', 'Mjg3ODAyN2RkYTM5NzExOGZmZDA5NTM3Njk0Nzg2ODc2MmJhZjVkZjp7InB0X2lkIjoiYWxsMiIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:24:49'), ('ofhax1fmm507g8z5fu39olc8lutqo3u5', 'NGQzZmQ2ZWI1NzEzYjRkNzliOTJhOGRiZTBmMDUwMmE5NjEzZGE3Nzp7InN0X2lkIjoiMyJ9', '2014-12-10 12:25:07'), ('0hrwnzc2m6uf5ox57m9lt6v7xt4axb47', 'MWZiMmI5ZGJlMTc1NDc2ZGQ1MDEzZmU3NGRlMTFlMDUxMDU1YmM1Njp7InN0X2lkIjoiNCJ9', '2014-12-10 12:25:41'), ('39lj3307pdzh9zs8ndjnf88u8cgenjh3', 'MmE1YTIwOTllNGU0ZWZmYjI3M2M3YzRmYjNkMjgzYTM1OTYwYjUzNTp7InN0X2lkIjoiNSJ9', '2014-12-10 12:25:41'), ('metzg28chznsh9me4l60ojbcfjb9ifcj', 'NmE4ZjFhMDdiY2VhNDhkMTBmZWQ4MTEwNzUzMmJlZDg5OGQ4NmNiZTp7InB0X2lkIjoiMSIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:25:54'), ('0znwq7qz1hz3l3zme3ved92daxgdcy12', 'MTkxYTE1NWMwM2M1OTU1YzRiYzdhYjU2NWUzNWU0ZTdiN2UxMjg3NTp7ImN0X2lkIjoiOCIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:26:22'), ('svy0rs3m12h4l8c2fdozio1x0rzwr2c4', 'YjM0OTI4OTkyOTliNWUzNTYzMjEwYzcxNGFlMGQ1MjMzOGUzMmNlODp7InN0X2lkIjoiYWxsMiIsInRyX2lkIjoyNSwidHJfaWQxIjoyMH0=', '2014-12-10 12:27:57'), ('ver7w5k9pnm07ai79o2boznspdwr60s7', 'NzUwOTBhY2Q3OGI0YzNlNjMwZmMzY2M2MTM3N2UyM2ZlYmFlYjBiODp7InN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:28:06'), ('6jr3zj3l6wdkf0hhysrqa4ji3nwxwhe8', 'MmU1YWNhMDIzMzBmZWM0YjM1MzMxNjRhNTA1YzUwMzRkMGQyMGI3OTp7ImN0X2lkIjoiYWxsMiIsInN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:28:41'), ('3p79uutvpv4mcrzo8pg24r1yuzy9vvho', 'NzRiZmNlN2VkMTNmNWJjODgzYWRkOGE2MDU5YWUzZGRlMmQ4MjU1ZDp7InN0X2lkIjoiYWxsMiIsInRyX2lkIjoxMH0=', '2014-12-10 12:29:39'), ('fpaooeb5zi55s1gyweies8xtqoah8p1f', 'ZWYwMWFmYTIwMjIzNmQ3ODc1OTJjY2VjYTNlM2MzNWQ3NWQyZmRkODp7InN0X2lkIjoiYWxsMiIsInRyX2lkIjoyMCwidHJfaWQxIjoxNX0=', '2014-12-10 12:29:42'), ('rxt3afe6whvjscpzwgimfxqnjbgqfgj1', 'NzUwOTBhY2Q3OGI0YzNlNjMwZmMzY2M2MTM3N2UyM2ZlYmFlYjBiODp7InN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:30:07'), ('s1z3o0wfh6xjt720afkjvw9j2cknvwlm', 'NWU5ZjFkNjkzZTE0YzZhYWYzZTQ1M2Y5YzEwN2I5M2U5ZmU2NGFhOTp7ImN0X2lkIjoiMTAifQ==', '2014-12-10 12:31:45'), ('xnax490bpuv2vgrp2busy3muengsh6um', 'MDk4NjU0YTViYjIyMzIyMGFmYWQ5NmYyYzgyZGMzN2Q0ZTRjZTc5Yjp7ImN0X2lkIjoiMSJ9', '2014-12-10 12:33:46'), ('p8btrl3jostexahg85halh1owvtne6f2', 'MWE0ODg5MzZmNjJjOTk4ZTk2ZDhkZmU2MTcwNzNjMTQyODg4MDhmYjp7InN0X2lkIjoiYWxsMiIsInRyX2lkIjoiYWxsMiJ9', '2014-12-10 12:34:10'), ('rd5yx7s7lg5yobm9qprqu05np87o9qsa', 'ZWZjNDA3N2QxOTlkZDM1N2FkNGFiNDk1ZjVhNDUwODkyNGMwYzc1MDp7InN0X2lkIjoiMiJ9', '2014-12-10 12:34:24'), ('tne1myace24agvsx7zv2ex52p27ounpe', 'YzNkNGYyZTc2ZTUwMDU0NWZmMjcxYjE1Njc5YmQ4YTY1YjEyNTU4ZTp7ImN0X2lkIjoiOCJ9', '2014-12-10 12:34:55'), ('1148i7068s0715o48yt9mgsgg8bdo8dq', 'YzYwMTc1Mjg5ZGQyMDRlYzU3YWNmNWUxOTdhODllNWUwNDI5ZDExMjp7ImN0X2lkIjoiMyJ9', '2014-12-10 12:35:36'), ('9so8siipsk39j26biedvt35w1hk3aqi0', 'YTAxMjM2MmQwZWU2MzM5NDhlZWI3ZTQ3Zjk3YTJhMGEyMjA0ZDEzZjp7ImN0X2lkIjoiNCJ9', '2014-12-10 12:35:47'), ('jvw5w8wdajqmgttrk6mezs3y83j5krym', 'MmQxMWJmNjkwNzk5MzAxOGMzOTVkMmFhMmM5NDA1MTY3ODQwYmJhOTp7ImN0X2lkIjoiOSJ9', '2014-12-10 12:35:51'), ('efuy0aghafz25ira5r7e5y51wg06gmys', 'MWUwNzQ1NWE5MzlkNzhjYWQ3YjhiNzhjNGFhNWM4Y2QzYzc5ZjNhMTp7Iml0X2lkIjoiMSJ9', '2014-12-10 12:36:00'), ('83gnu4y2dg7sy4medf5agnr53vmx5r9o', 'ZDJiZmM5ZmQxMWI1M2YwZjFiZTY5Y2FiYjkxY2E0MGQ0NzlkYjAwMDp7ImN0X2lkIjoiNyJ9', '2014-12-10 12:36:11'), ('1fulejmtpnr74flee71m1h4ahhnjsw47', 'MzJiMTc5Mjg5ZjJmZjgyNTljNDI0NzdiNGI5OTI0ZTk4ODkyYjE3Nzp7InN0X2lkIjoiYWxsMiIsInRyX2lkIjoxNSwidHJfaWQxIjoxMH0=', '2014-12-10 12:37:02'), ('0a2ak9e87mf9kguxx62up7p3slcnbloo', 'ZmM5Y2I2YWI0MmFiYjNmNWZhYmU1MWU3NjUyYjQ2NDJjOTViNmMzMDp7InBydF9pZCI6IjExIn0=', '2014-12-10 12:37:21'), ('kiog5tm29mj4bopoztzmc4vq6f4affrl', 'MDZmMjNiN2VjOGVkY2FhNWU0NDBjYWU3MGZlZjg2Mzk5N2Y2NjE5NDp7InBydF9pZCI6IjEyIn0=', '2014-12-10 12:37:28'), ('bnun5ixmk8ke97q87pt0368rltdj17k0', 'NzgzZDUxMTNkN2QxNTMzOTBjZWQ4YzZjMDg0YzBlNjNmZjdmNDgwNDp7ImN0X2lkIjoiNiJ9', '2014-12-10 12:37:39'), ('oetcaks37szcx7iom897ox3iakkg5hdw', 'ZmZlYmU5MzU2OGQxYWM0MzVjNDU3ZWYzMzMxYjNhNzI5NTE5MGViMjp7Iml0X2lkIjoiOSJ9', '2014-12-10 12:37:51'), ('ambnarop9yqk7qx1tvhq535ajexs39hp', 'NTE4MmYyMGNjMmM3M2E1NGY4ODE1YWM3MzE0OTliMzFhMjQ5OWMxNDp7InBydF9pZCI6IjIifQ==', '2014-12-10 12:38:00'), ('1ebeyuc49n44um1bbmw2q5el0ecftnv7', 'YjkzOWMzMjE0MzE5ZmU2ZmI5MzE4MGU2N2MyMWVkNDdjYWI0YmY1MDp7InBydF9pZCI6IjEwIn0=', '2014-12-10 12:38:23'), ('qyh91vke1kig32w49xcu0cj1ckxdhfzp', 'OTY4YmQzM2EzNDljNjFkYWM1NzM0OGYzMTg0YWU3N2Y3OGUwOWQxZTp7ImN0X2lkIjoiNSJ9', '2014-12-10 12:38:36'), ('qc2vb8wxkkjpr1sndxg0fgvq43aq47zw', 'ZGE0YjFjYTlmZTJhZDRhNGJiNDU1ZmEyZDAwYjEwNTRlYzRmY2Y5OTp7Iml0X2lkIjoiNyJ9', '2014-12-10 12:38:36'), ('l65eibvpx7av0reo07ft0vi5v7e0bldu', 'NjNkYWFlNTU1M2Y5MDk2YzJjMzEwMjExNTdjNmVlNDU3ODcyYjE4Zjp7Iml0X2lkIjoiNCJ9', '2014-12-10 12:39:00'), ('s4xn3q3e2ik2gwi2xrtfolb4gnt30vql', 'MjFkYWJlNGVkODEyNWVkMTEwNDc1ZTRhZTQzZGVlZmYyODExYjE5ZDp7InB0X2lkIjoiNCJ9', '2014-12-10 12:39:14'), ('7f256e42lq37d1wziopzxrjyixg2wxwe', 'MTVmYTEyM2M1OTIzYmUyNTUwODQ0MTMwNjQ0ZTZjZWQyMmFlODBlYTp7Iml0X2lkIjoiMiJ9', '2014-12-10 12:39:23'), ('x11jevnau9qoq0dm6pll4jonznylmars', 'Nzk1NDhkNjkyMjk2MzlhNmQwOTUxNmVhNjRjZjI5N2FhZmE2MDcyZTp7ImN0X2lkIjoiYWxsMiJ9', '2014-12-10 12:39:24'), ('21fqa4r3k7cb5gnsrnownp06cszrygud', 'YWM0ZTY3ZTc3MjU1ZjMwNTljMDU3ZmEyYjk5OTQwNDc2ZmI1Nzc3MDp7Iml0X2lkIjoiMyJ9', '2014-12-10 12:39:27'), ('8naunnatpt1wvmr6eueu2w8pkfsst2fy', 'YWI4NWYzN2Y1NGQwOTQ3Mjk4Njk3OGNmNWExYjg1YzgwMGI5MjhlMTp7InB0X2lkIjoiNyJ9', '2014-12-10 12:39:42'), ('1v60vbqa0yyq4gclt81tjix6wsxtsbgn', 'ZTM5MjQ2N2Q4NTQyMzY4YzIyODRiMDMyODE4M2FlMWQ3M2M0N2IyNzp7InB0X2lkIjoiMSJ9', '2014-12-10 12:40:15'), ('bdinqqk390wtw4xk8azic17iust3z675', 'MjZjYzExODE5ZjBmMmUyMmVjZjliZmFiNWZkY2FkNjNmODUyOWRhMTp7InBydF9pZCI6IjkifQ==', '2014-12-10 12:40:53'), ('7brz8tmfwwp4viz5wgrxp3lpld3tx6u2', 'MTgyZDQ1OWM4YmM4ZDhjNDQwNzBmOTk3YmE3MDVjZmNhOTMyZmFlYzp7Iml0X2lkIjoiNSJ9', '2014-12-10 12:41:45'), ('v4g8f6zl5pz70pm4pjllt008utc2p5he', 'OTNiYjgxYTNhZWFiM2FhNmRiM2E2M2I1OWUwOTcxNmM3MTA4MTRiMTp7Iml0X2lkIjoiNiJ9', '2014-12-10 12:42:24'), ('zjqrnt69o8wqibzp35rw9p0k3ymez5cy', 'ZTAzOGJhNWJlOTQyMDdkNGZmODhhOTkyMTE5MjQ2ZDE5NDM4NjEwNDp7Iml0X2lkIjoiOCJ9', '2014-12-10 12:45:43'), ('n758g1i4yuflu3zu2f681ph1fhrrr6df', 'ZTA5NGFhZmFmN2U3MTdmZTljNTVlNjUwMjBmNDMxMTg5OTIyMmQ4Nzp7ImN0X2lkIjoiMiJ9', '2014-12-10 12:46:18'), ('q966eam4fmgpub1c4j7twajqfddrcdcr', 'NzY4Zjg5OThkYWM4MDUxNjY2ZGJiNjM2NTVkOWE4MjRhM2E2MjkyMjp7InBydF9pZCI6IjUifQ==', '2014-12-10 12:46:51'), ('lzndtxynlelp4krhwtse02bb73so7jco', 'NmY1ZmM5NGU1OTY0NDM1ZDUxZjEzN2ZlNmI1OTY0YzNiOWM4MzM4Nzp7InBydF9pZCI6IjMifQ==', '2014-12-10 12:46:58'), ('u18w230255rw9kwmpg331l0bieys44d0', 'NTU3N2YxMDZjZWYwYjY3MmI3ZTczOTdlNWMwNjY1MGY2MWYzOTE4MTp7InBydF9pZCI6IjYifQ==', '2014-12-10 12:47:29'), ('4aix1lkgmcr9hif95aec4n6x5rq2w3av', 'MWVjNzlmYzMxOTc1YTc3MzA0YzViYjE1NWM0NzUyYzM1YWRmZDZjNTp7InBydF9pZCI6IjQifQ==', '2014-12-10 12:47:58'), ('bnpm6eyuny4g5g6bobx5y14fv7t6nm3h', 'MGY1NWQzMTMwMmFmZGNlMTgxNDA1MmFiNzM5M2M0N2VjNjNjYjk5Mzp7InBydF9pZCI6IjEifQ==', '2014-12-10 12:48:08'), ('oz92mhxdvaxj5b9sfjjdw4j07dm0fw9c', 'Y2RjZWRmYmVlM2JjNTBkMjNlMjg5MjY0MGQ3Yjg5MDlmNWRlMzJjMjp7InB0X2lkIjoiYWxsMiJ9', '2014-12-10 12:48:17'), ('ioini7dapcscm2g2p357cbx2fjhegqjd', 'OTM1NjIzOTgxYWFiYWYwODk1Nzk1NzBkNjE0ZGVmOWZmZjAwZDQ3MDp7InBydF9pZCI6IjgifQ==', '2014-12-10 12:48:34'), ('ujsgh57006aeqmdl4kql4i18whg5mf8n', 'MGM1NGEyYWFmYTc1NGU1MzdjMDlmODMxYjY0MTc4MGFmMzliMmM3Mzp7InBydF9pZCI6IjcifQ==', '2014-12-10 12:49:35'), ('dq9hzoep0n04ozu4hvpznzq5u59avowh', 'Nzg5MjI2MzVmNTQyMzQzN2RlZDA1NmM4YWIwOWRjM2ZhMzFlODYwZTp7InBydF9pZCI6ImFsbDIifQ==', '2014-12-10 12:50:23'), ('39fm7ap0zzop3if4y5wlgh514brhmxuv', 'ZjhmNmE5NzlhN2I2ZDU5ZTRmY2ExOGEzNDI4Mjk2MzNhZjRlMzdiMjp7Iml0X2lkIjoiYWxsMiJ9', '2014-12-10 12:53:03'), ('mh8jcmepa0qj451ycl2ys7xpn64lj15k', 'ZjBjYzNiNzczMGQ3YjE3MDJlODcwYjUyMTQ2YzlkNTNhNTcyMDE1NTp7InB0X2lkIjoiODgyIn0=', '2014-12-10 16:49:14');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_account`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_account`;
CREATE TABLE `qdinvest_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_user_id` int(11) NOT NULL,
  `ac_like` int(11) NOT NULL,
  `ac_support` int(11) NOT NULL,
  `ac_sponsor` int(11) NOT NULL,
  `ac_infos` int(11) NOT NULL,
  `ac_stock_invest` decimal(16,4) NOT NULL,
  `ac_bond_invest` decimal(16,4) NOT NULL,
  `ac_total_invest` decimal(16,4) NOT NULL,
  `ac_stock_profit` decimal(16,4) NOT NULL,
  `ac_bond_profit` decimal(16,4) NOT NULL,
  `ac_total_profit` decimal(16,4) NOT NULL,
  `ac_subscription` decimal(16,4) NOT NULL,
  `ac_total_subscription` decimal(16,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ac_user_id` (`ac_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_account`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_account` VALUES ('1', '3', '34', '10', '14', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('2', '9', '32', '24', '23', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('3', '5', '23', '3', '4', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('5', '4', '5', '2', '2', '0', '147.0000', '123.0000', '270.0000', '100.0000', '249.0000', '349.0000', '0.0000', '15154.0000'), ('6', '6', '6', '2', '2', '0', '20.0000', '333.0000', '353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20360.0000'), ('7', '2', '35', '45', '53', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '564377.0000'), ('8', '1', '34', '54', '45', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('9', '7', '6', '7', '8', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('10', '8', '3', '4', '54', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('11', '10', '3', '0', '0', '0', '100.0000', '100.0000', '200.0000', '0.0000', '0.0000', '0.0000', '0.0000', '124256.0000'), ('12', '15', '3', '0', '0', '0', '1111.0000', '0.0000', '1111.0000', '100.0000', '1230.0000', '1330.0000', '0.0000', '124924.0000'), ('13', '16', '0', '0', '0', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '663.0000'), ('14', '17', '0', '0', '0', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'), ('15', '18', '1', '0', '0', '0', '189.0000', '123.0000', '312.0000', '0.0000', '0.0000', '0.0000', '1000.0000', '11423.0000'), ('16', '19', '0', '0', '0', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_bond`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_bond`;
CREATE TABLE `qdinvest_bond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_user_id` int(11) NOT NULL,
  `bo_title` varchar(100) NOT NULL,
  `bo_image` varchar(100) NOT NULL,
  `bo_video` varchar(100) DEFAULT NULL,
  `bo_com_name` varchar(100) NOT NULL,
  `bo_brief` varchar(200) NOT NULL,
  `bo_begin_time` datetime NOT NULL,
  `bo_create_time` datetime NOT NULL,
  `bo_end_time` datetime NOT NULL,
  `bo_is_commend` int(11) NOT NULL,
  `bo_scale` double NOT NULL,
  `bo_province_id` int(11) NOT NULL,
  `bo_industry_id` int(11) NOT NULL,
  `bo_total_price` decimal(16,2) NOT NULL,
  `bo_current_price` decimal(16,2) NOT NULL,
  `bo_min_price` decimal(16,2) NOT NULL,
  `bo_pro_type_id` int(11) NOT NULL,
  `bo_com_type_id` int(11) NOT NULL,
  `bo_like_count` int(11) NOT NULL,
  `bo_view_count` int(11) NOT NULL,
  `bo_invest_count` int(11) NOT NULL,
  `bo_goal` varchar(200) NOT NULL,
  `bo_repayment` varchar(200) NOT NULL,
  `bo_com_inf` longtext,
  `bo_risk_inf` longtext,
  `bo_files` longtext,
  `bo_repay_plan` longtext,
  `bo_finance` longtext,
  `bo_manage` longtext,
  `bo_sort` int(11) NOT NULL,
  `bo_status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_bond_04479c37` (`bo_user_id`),
  KEY `qdinvest_bond_5163b332` (`bo_province_id`),
  KEY `qdinvest_bond_642e9bfe` (`bo_industry_id`),
  KEY `qdinvest_bond_dd3922c3` (`bo_pro_type_id`),
  KEY `qdinvest_bond_3a7e8e97` (`bo_com_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_bond`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_bond` VALUES ('1', '5', '债权融资-茂霖高科', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '上海茂霖高分子科技股份有限公司', '有关证券债权融资', '2014-11-03 08:17:30', '2014-11-03 20:17:30', '2015-01-09 20:17:45', '0', '26', '11', '1', '40000.00', '3466.00', '4000.00', '7', '2', '0', '33', '0', '有关证券投资', '投资证券的收益', '<p>&nbsp; &nbsp; 上海茂霖高分子科技股份有限公司（以下简称“茂霖高科”、“公司”）成立于2013年8月19日，注册资本1,635万元人民币。茂霖高科主要从事胶辊产品的研发、生产和销售。公司盈利的优势在于，所掌握的橡胶材料技术使公司可以根据打印机的特点调整胶辊品质，使其适用于高端（北美）、中端（日韩）和低端（国内）打印机耗材市场。打印机整机的关键技术主要由日本和韩国控制，日韩原装的打印机对耗材品质要求很高，而国内硒鼓生产商由于使用品质较差、特性参差不齐的碳粉，要求胶辊必须能匹配碳粉的特性，才能满足打印机整机的质量要求。公司在胶辊生产及产品性能方面均存在优势，使得公司通过分析打印机质量要求和硒鼓生产商碳粉特性来定制不同规格和品质的胶辊产品成为可能，该方面生产技术的先进性以及产品的优越性能，使公司获得市场认可并积累了大量的长期优质客户。本次公司吸引投资者，拟与原韩国小星于威海投资之子公司威海极帝原高管朴总团队共同成立威海星河电子科技有限公司，要为三星配套生产导电胶辊的企业，主要生产技术系三星所有。</p>', '<p>&nbsp; &nbsp; （1） 产能不足的风险\r\n\r\n公司的主要产品为打印机耗材——一般胶辊和导电胶辊，该业务系母公司通过业务重组装入公司。公司目前部分关键环节委托由母公司持股60%的淮安欣展进行加工。经过多年的产品研发和推广，母公司在胶辊行业内积累了良好的声誉和丰富的经验，产品从性价比角度已经超越日、韩竞争对手，具备进入北美市场的能力。虽然公司自身和淮安欣展目前的产能尚有剩余，但在与世界排名前三位的客户接洽时仍无法满足其大额订单的需求，因此公司计划通过进入上海股交中心挂牌融资，在收购淮安欣展100%股权的基础上、进一步在成本更低的珠海建立生产基地，以提高市场占有率。如果不能扩大产能、占领市场，公司未来的长远发展将受到制约。\r\n\r\n（2） 业务重组的风险\r\n\r\n2013年5月，本公司母公司上海欣展收购了上海语际包装制品有限公司，将该公司作为载体，将胶辊业务整体注入。语际包装在收购前仅存在少量资产，且基本处于停运状态。截至本说明书出具日，重组工作已基本完成，公司的相关资产、人员、业务、专利等已经完成交接，公司已基本进入了正常运营的状态。但由于业务重组完成后运行时间尚短，茂霖高科在业务注入后尚未进入到最佳的运营状态，公司的运营团队尚处于磨合期，因此存在业务重组暂时影响经营业绩的风险。此外，由于本说明书所披露的报告期仅截至2013年6月30日，财务报表体现了一些业务重组过渡期的特殊交易数据，包括胶辊业务客户的合同转换尚未全部完成，以及茂霖高科自母公司买入了业务相关的原材料、半成品和产成品等，导致目前所披露的财务数据显示对少量客户及关联方的重大依赖。因为胶辊业务相关的全部管理、研发团队和资产都已注入茂霖高科，预计随着公司的运行，业务重组导致的过渡问题将逐步解决完毕，不会对公司的正常经营造成进一步的不利影响，在维持该业务原于母公司经营的业绩基础上，随着海外订单的增加，业绩还将不断提升。\r\n\r\n（3） 业务扩张的管理风险\r\n\r\n虽然公司在业务重组的过程中接受了胶辊业务相关的全部管理团队，足以应对目前的经营规模。但根据公司的战略规划，公司产品已经具备进入北美市场的品质，公司将通过资本市场融资扩大生产能力、提高市场占有率，经营规模将不断扩大，对公司管理的要求将越来越高。公司一方面需要提高现有管理层的管理水平，面临管理层能力不足以应对更复杂的经营状况的风险，另一方面需要为扩大的经营规模配备相应的生产、管理、营销、技术等各方面的人才，面临人才不足的风险。虽然本公司的管理层在企业管理方面已经积累了一定的经验，但是如果不能及时适应公司业务发展的需要，将直接影响公司的发展速度。\r\n\r\n（3） 关联交易的风险\r\n\r\n报告期内存在2013年公司向上海欣展采购的关联交易，且采购金额在总体采购金额里占比较大，主要是由于母公司上海欣展为了业务重组将胶辊业务相关的原材料及半成品一次性出售给了本公司。随着公司接受业务注入后经营逐步走上正轨，除公司经营战略需要再次进行资产重组的可能外，这种大比例关联交易的情况将不再发生。\r\n\r\n除上述关联交易外，公司还存在如下关联交易：一、公司导电胶辊的关键环节目前出于成本考虑交由关联方淮安欣展委托加工，未来计划融资收购淮安欣展的全部股权，使其成为公司的子公司；二、部分胶辊生产部件出于性价比的考虑向上海欣展采购，根据经验，这部分采购约占总体采购量的30%；三、公司目前生产厂房系向上海欣展租赁。公司制定了《关联交易管理办法》，建立了严格的内部控制制度，将对关联交易进行严格控制，保证关联交易的公允性。</p>', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 项目总融资1000万元；融资方式为向投资者债权众筹筹集资金。\r\n\r\n1、债权众筹：1000万元，起始金额10万元。\r\n\r\n2、项目建设期3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）；\r\n\r\n4、项目满五年后上海茂霖高分子科技股份有限公司及其控股公司有权回购所有投资份额，投资者亦有权要求上海茂霖高分子科技股份有限公司及其控股公司回购所有投资份额，回购价格为原认购金额的120%。\r\n\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于项目前期建设及后期运营；募集资金在完成募集后打入新设有限合伙企业专用账户；\r\n\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '<p>&nbsp; &nbsp; 1、威海子公司项目财务分析：\r\n\r\n（1）投资金额\r\n\r\n建设投入：1000万</p>', '', '2', '1'), ('2', '3', '房产周转贷', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '中升德亿', '有关房地产债权融资', '2014-07-07 02:22:01', '2014-07-24 02:22:03', '2014-11-05 20:17:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '1', '6', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('5', '4', '食品生产企业经营贷款', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '河北融投', '有关餐饮方面融资', '2014-11-04 20:45:00', '2014-02-04 20:45:15', '2015-07-15 09:45:33', '0', '23', '10', '1', '33000.00', '2000.00', '4000.00', '4', '3', '0', '3', '0', '公司的经营周转，补充流动资金。', '经营收入', '', '', '', '', '', '', '24', '0'), ('7', '2', '安徽黄山第一建筑安装工程股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '安徽黄山第一建筑安装工程股份有限公司', '为扩大业务向广大民众融资', '2014-06-30 20:58:15', '2014-02-18 06:58:45', '2015-03-18 21:00:00', '0', '16', '12', '1', '20000.00', '1000.00', '350.00', '4', '6', '0', '4', '0', '扩大建筑业务', '业务收益', '<p>&nbsp; &nbsp; 黄山一建成立于2003年，是一家具有房屋建筑施工总承包一级资质的施工企业，并拥有市政公用工程、水利水电工程、装修装饰、土石方、防水工程等资质， 2004 年通过了ISO9001质量管理体系认证。 \r\n\r\n本公司具有房屋建筑工程施工总承包壹级、建筑防水工程专业承包叁级，建筑装修装饰工程专业承包贰级，土石方工程专业承包叁级、市政公用工程施工总承包贰级，水利水电施工总承包叁级等资质。 \r\n\r\n本公司多年来承建了黄山区 70%以上重点形象工程和高难度项目，先后有65 项工程分别被评为省、市、区优良工程和市、区安全文明工地，公司先后荣获了省、市、区“安康杯先进企业”、“重信用、守合同企业”、“工程质量先进单位”、“安全生产先进企业”、“黄山市纳税百强企业”、“优秀建筑业企业”等荣誉称号\r\n 黄山一建成立于2003年，是一家具有房屋建筑施工总承包一级资质的施工企业，并拥有市政公用工程、水利水电工程、装修装饰、土石方、防水工程等资质， 2004 年通过了ISO9001质量管理体系认证。 \r\n\r\n本公司具有房屋建筑工程施工总承包壹级、建筑防水工程专业承包叁级，建筑装修装饰工程专业承包贰级，土石方工程专业承包叁级、市政公用工程施工总承包贰级，水利水电施工总承包叁级等资质。 \r\n\r\n本公司多年来承建了黄山区 70%以上重点形象工程和高难度项目，先后有65 项工程分别被评为省、市、区优良工程和市、区安全文明工地，公司先后荣获了省、市、区“安康杯先进企业”、“重信用、守合同企业”、“工程质量先进单位”、“安全生产先进企业”、“黄山市纳税百强企业”、“优秀建筑业企业”等荣誉称号</p>', '', '', '', '', '', '11', '0'), ('8', '6', '海平股份', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '安徽海平新型建筑材料股份有限公司', '为扩大业务向广大民众融资', '2014-07-08 20:58:15', '2014-01-01 20:58:45', '2014-11-05 23:00:00', '0', '11', '12', '1', '1000.00', '800.00', '200.00', '7', '6', '0', '2', '0', '扩大业务', '业务收益', '<p>&nbsp; &nbsp; 海平股份于2009年9月23日成立，现有注册资本2,000万元，目前占地面积100亩，拥有一条年产30万立方米蒸压加气混凝土砌块生产线。公司属于中国加气混凝土协会会员单位及县、市重点招商引资工业类生产型企业，专业从事加气混凝土砌块的生产与销售。公司生产的“中安海平”牌系列产品是国家发改委重点推广、大力扶持的新型节能减排项目产品，属于绿色环保新型材料，是用于替代实心粘土砖和空心粘土砖等最理想的墙体材料。</p>', '', '', '', '', '', '23', '1'), ('3', '1', '农业公司经营贷款', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '云南中铭', '农业融资', '2014-07-08 02:18:48', '2013-07-25 02:01:50', '2015-02-19 09:56:00', '0', '8', '4', '1', '3500.00', '800.00', '200.00', '1', '5', '0', '1', '0', '公司的经营周转，补充流动资金。', '经营收入', '', '', '', '', '', '', '33', '1'), ('4', '9', '寺库供应商融资', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '寺库商贸', '供货商融资', '2014-07-06 20:58:15', '2014-01-05 09:53:25', '2014-11-14 23:45:55', '0', '43', '5', '1', '8000.00', '500.00', '300.00', '7', '2', '0', '5', '0', '个人经营用途.采购存货', '经营收入', '', '', '', '', '', '', '24', '0'), ('6', '8', '自由经营用途 第三期', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', ' 云南中铭', '新业务融资', '2014-08-26 20:58:15', '2014-02-11 20:34:45', '2014-12-31 23:34:45', '0', '7', '4', '1', '6000.00', '600.00', '2300.00', '7', '1', '0', '5', '0', '公司的经营周转，补充', '对机票采购商的应收账款', '<p>&nbsp; &nbsp; 企业基本信息\r\n\r\n\r\n注册年限11 年注册资金2000.00 万元资产净值9849.95 万元上年度经营现金流入8109.04 万元行业批发和零售业 . 批发业经营情况公司主要从事汽车销售，经营的三大汽车品牌，市场需求较旺盛，再借助公司已经搭建完善的营销网络，公司销售得以保持良好的趋势，从2011年开始公司销售收入均达到并超过三亿元，并表现出强劲的增长势头。公司经营时限十余年，经营产品有一定的市场需求量，销售体系搭建完善。经营稳定，销售规模较大。借款人具备偿债能力，还款有保障。涉诉情况无征信记录企业无不良征信记录。实际控制人有账户发生逾期，单月最高逾期总额为4860元，最长逾期月数为1个月。\r\n\r\n财务状况\r\n\r\n\r\n年份\r\n\r\n主营收入(万)\r\n\r\n毛利润(万)\r\n\r\n净利润(万)\r\n\r\n总资产(万)\r\n\r\n净资产(万)\r\n\r\n备注\r\n\r\n\r\n2011 29363.47 2272.73 913.37 10323.95 7662.08 &nbsp;\r\n2012 37951.03 2937.41 1165.68 15711.02 8827.76 &nbsp;\r\n2013 32515.8 2841.88 1022.19 17195.4 9849.95 截至到2013年9月30日</p>', '', '', '', '', '', '11', '0'), ('10', '3', '靖浩商贸', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '靖浩商贸有限公司', '有关房地产债权融资', '2014-07-01 02:33:01', '2014-07-15 04:44:03', '2014-11-18 05:06:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '2', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('11', '3', '超前商贸', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '超前商贸有限公司', '有关房地产债权融资', '2014-07-16 04:04:01', '2014-07-21 07:08:03', '2014-11-18 06:07:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '31', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '0', '0'), ('12', '3', '中意万达商贸', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '中意万达商贸有限公司', '有关房地产债权融资', '2014-07-15 04:04:01', '2014-07-21 05:06:03', '2014-11-18 06:06:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '0', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('13', '3', '爱顺商贸转贷', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '爱顺商贸有限公司', '有关房地产债权融资', '2014-07-08 05:06:01', '2014-08-14 06:07:03', '2015-01-22 05:06:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '4', '3', '0', '8', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('14', '3', '昀康商贸转贷', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '昀康商贸有限公司', '有关房地产债权融资', '2014-06-18 05:07:01', '2014-09-10 06:07:03', '2014-06-28 06:07:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '1', '38', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '0', '0'), ('15', '5', '展翅鸿业商贸有限公司转贷', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '展翅鸿业商贸有限公司', '有关房地产债权融资', '2014-07-17 05:08:46', '2014-12-10 06:06:03', '2014-12-18 04:21:21', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '7', '3', '4', '277', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '<p>ssssssssssssssssssss</p>', '<p>ssssssss</p>', '<p>sssssss</p>', '', '<p>sssssss</p>', '<p>3325156336</p>', '40', '0'), ('16', '3', '伟恒商贸有限公司转贷', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '伟恒商贸有限公司', '有关房地产债权融资', '2014-07-18 03:33:43', '2014-07-30 04:11:43', '2014-11-19 23:04:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '0', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('18', '8', '鑫隆电子商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '鑫隆电子商贸有限公司', '有关房地产债权融资', '2014-07-16 03:56:01', '2014-07-25 02:55:03', '2014-11-17 05:05:55', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '4', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('17', '3', '汇香源商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '汇香源商贸有限公司', '有关房地产债权融资', '2014-05-21 04:04:56', '2014-07-23 03:56:03', '2014-11-19 07:07:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '0', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('19', '3', '海丽商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '海丽商贸有限公司', '有关房地产债权融资', '2014-05-06 07:07:01', '2014-05-20 02:03:54', '2015-12-29 05:56:45', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '3', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '0', '0'), ('20', '3', '益昌商贸有限公司 ', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '益昌商贸有限公司 ', '有关房地产债权融资', '2014-11-08 06:56:01', '2014-07-24 02:22:03', '2014-11-18 06:05:56', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '1', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('21', '5', '顺天府商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '顺天府商贸有限公司 ', '有关房地产债权融资', '2014-11-18 05:45:01', '2014-08-13 05:06:03', '2014-11-11 04:06:56', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '15', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('22', '5', '久益商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '久益商贸有限公司', '有关房地产债权融资', '2014-08-19 06:05:01', '2014-07-21 04:05:57', '2014-11-13 06:05:56', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '1', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('23', '9', '中祥商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '中祥商贸有限公司', '有关房地产债权融资', '2014-09-15 07:56:01', '2014-07-24 02:22:03', '2014-11-18 06:05:56', '1', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '2', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('24', '1', '颐事达商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '颐事达商贸有限公司 ', '有关房地产债权融资', '2014-11-05 06:06:01', '2014-07-15 07:22:03', '2014-11-03 07:07:56', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '2', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('25', '8', '金益明商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '金益明商贸有限公司 ', '有关房地产债权融资', '2014-11-19 06:07:01', '2014-07-30 07:08:03', '2014-11-14 09:00:56', '1', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '2', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0'), ('9', '8', '高玛商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '高玛商贸有限公司', '有关房地产债权融资', '2014-11-11 07:09:01', '2014-07-23 09:08:03', '2014-11-17 09:00:56', '0', '14', '3', '1', '4000.00', '4000.00', '400.00', '1', '3', '0', '2', '0', '公司的经营周转，补充流动资金。', '对机票采购商的应收账款', '', '', '', '', '', '', '40', '0');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_com_type`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_com_type`;
CREATE TABLE `qdinvest_com_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_com_type`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_com_type` VALUES ('1', '个人独资企业'), ('2', '合伙企业'), ('3', '零售商企业'), ('4', '工业企业'), ('5', '农业企业'), ('6', '建筑企业'), ('7', '交通运输企业'), ('8', '邮电企业'), ('9', '商业企业'), ('10', '外贸企业');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_feedback`;
CREATE TABLE `qdinvest_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fe_user_id` int(11) NOT NULL,
  `fe_mail` varchar(100) DEFAULT NULL,
  `fe_time` datetime NOT NULL,
  `fe_content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_feedback_497f7699` (`fe_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_feedback`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_feedback` VALUES ('1', '3', 'test@test.com', '2014-11-12 20:11:45', 'sdfsdafdsafasdf'), ('2', '10', '', '2014-11-12 20:19:19', ''), ('3', '10', 'test@test.com', '2014-11-12 20:20:28', '你们的软件真是太好用啦，莱斯啊'), ('4', '4', 'sss@asd.ddd', '2014-11-25 14:42:43', '好使么？');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_industry`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_industry`;
CREATE TABLE `qdinvest_industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `in_name` varchar(100) NOT NULL,
  `in_sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_industry`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_industry` VALUES ('1', '房地产', '32'), ('2', '科技', '76'), ('3', '医药制造', '27'), ('4', '纺织', '17'), ('5', '建筑', '48'), ('6', '证券', '69'), ('7', '餐饮', '67'), ('8', '卫生', '85'), ('9', '其他', '83');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_invest_bond`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_invest_bond`;
CREATE TABLE `qdinvest_invest_bond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ib_user_id` int(11) NOT NULL,
  `ib_bond_id` int(11) NOT NULL,
  `ib_amount` decimal(16,4) NOT NULL,
  `ib_date` datetime NOT NULL,
  `ib_soon_profit` decimal(16,4) DEFAULT NULL,
  `ib_profit_date` date DEFAULT NULL,
  `ib_status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_invest_bond_3ececc94` (`ib_user_id`),
  KEY `qdinvest_invest_bond_9504ab5a` (`ib_bond_id`),
  KEY `qdinvest_invest_bond_562dd205` (`ib_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_invest_bond`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_invest_bond` VALUES ('1', '10', '1', '100.0000', '2014-11-22 23:50:15', '1.0000', '2014-11-22', '2'), ('2', '15', '15', '123.0000', '2014-11-23 00:38:29', null, null, '1'), ('3', '6', '15', '333.0000', '2014-11-23 00:42:00', null, null, '3'), ('4', '15', '15', '123456.0000', '2014-11-23 01:01:51', null, null, '1'), ('5', '2', '1', '123.0000', '2014-11-23 09:19:20', null, null, '1'), ('6', '2', '15', '123.0000', '2014-11-23 09:19:44', null, null, '1'), ('7', '2', '15', '113.0000', '2014-11-23 09:20:15', null, null, '1'), ('8', '15', '15', '111.0000', '2014-11-23 09:24:04', null, null, '1'), ('9', '4', '15', '1000.0000', '2014-11-23 09:54:44', null, null, '1'), ('10', '2', '1', '1000.0000', '2014-11-23 09:58:13', null, null, '1'), ('11', '2', '14', '1000.0000', '2014-11-23 09:58:35', null, null, '1'), ('12', '15', '21', '123.0000', '2014-11-23 10:24:15', null, null, '1'), ('13', '10', '15', '500.0000', '2014-11-23 14:15:52', null, null, '1'), ('14', '2', '15', '12.0000', '2014-11-23 14:19:56', null, null, '1'), ('15', '4', '6', '123.0000', '2014-11-23 14:30:02', null, null, '2'), ('16', '4', '15', '10000.0000', '2014-11-23 16:59:54', null, null, '1'), ('17', '18', '21', '123.0000', '2014-11-23 17:39:37', null, null, '2'), ('18', '16', '15', '100.0000', '2014-11-23 18:15:33', null, null, '1'), ('19', '6', '1', '4343.0000', '2014-11-23 18:34:04', null, null, '1'), ('20', '10', '15', '123456.0000', '2014-11-23 20:30:50', null, null, '1'), ('21', '6', '15', '10000.0000', '2014-11-24 14:40:48', null, null, '1'), ('22', '2', '15', '555555.0000', '2014-11-24 16:01:55', null, null, '1'), ('23', '16', '15', '563.0000', '2014-11-25 00:35:31', null, null, '1'), ('24', '2', '15', '222.0000', '2014-11-25 18:36:16', null, null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_invest_status`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_invest_status`;
CREATE TABLE `qdinvest_invest_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_invest_status`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_invest_status` VALUES ('1', '认购中', '1'), ('2', '持有中', '2'), ('3', '已完成', '3');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_invest_stock`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_invest_stock`;
CREATE TABLE `qdinvest_invest_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_user_id` int(11) NOT NULL,
  `is_stock_id` int(11) NOT NULL,
  `is_amount` decimal(16,4) NOT NULL,
  `is_date` datetime NOT NULL,
  `is_soon_profit` decimal(16,4) DEFAULT NULL,
  `is_profit_date` date DEFAULT NULL,
  `is_status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_invest_stock_fab129d5` (`is_user_id`),
  KEY `qdinvest_invest_stock_4f8bffae` (`is_stock_id`),
  KEY `qdinvest_invest_stock_92e3bf8e` (`is_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_invest_stock`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_invest_stock` VALUES ('1', '10', '1', '100.0000', '2014-11-12 23:48:30', '12.0000', '2014-12-02', '1'), ('2', '10', '1', '100.0000', '2014-11-22 23:50:00', '100.0000', '2014-11-22', '2'), ('3', '4', '5', '586.0000', '2014-11-23 00:35:15', null, null, '1'), ('4', '6', '3', '20.0000', '2014-11-23 00:35:42', null, null, '3'), ('5', '2', '5', '1000.0000', '2014-11-23 09:36:26', null, null, '1'), ('6', '4', '3', '1000.0000', '2014-11-23 09:57:08', null, null, '1'), ('7', '2', '9', '1000.0000', '2014-11-23 09:59:04', null, null, '1'), ('8', '2', '7', '1000.0000', '2014-11-23 09:59:29', null, null, '1'), ('9', '2', '7', '1000.0000', '2014-11-23 10:20:55', null, null, '1'), ('10', '2', '21', '1000.0000', '2014-11-23 10:23:01', null, null, '1'), ('11', '4', '20', '1000.0000', '2014-11-23 10:38:21', null, null, '1'), ('12', '4', '5', '55.0000', '2014-11-23 11:18:52', null, null, '1'), ('13', '4', '3', '555.0000', '2014-11-23 11:19:09', null, null, '1'), ('14', '2', '5', '123.0000', '2014-11-23 14:19:32', null, null, '1'), ('15', '2', '5', '106.0000', '2014-11-23 14:20:19', null, null, '1'), ('16', '4', '5', '147.0000', '2014-11-23 14:24:18', null, null, '2'), ('17', '15', '5', '1111.0000', '2014-11-23 15:18:46', null, null, '2'), ('18', '6', '3', '43.0000', '2014-11-23 18:22:08', null, null, '1'), ('19', '18', '5', '11111.0000', '2014-11-23 18:35:40', null, null, '1'), ('20', '18', '5', '189.0000', '2014-11-23 18:35:57', null, null, '2'), ('21', '6', '7', '66.0000', '2014-11-23 18:36:59', null, null, '1'), ('22', '6', '7', '5555.0000', '2014-11-23 18:41:42', null, null, '1'), ('23', '2', '5', '1000.0000', '2014-11-24 15:52:43', null, null, '1'), ('24', '4', '5', '688.0000', '2014-11-25 17:40:06', null, null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_notice`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_notice`;
CREATE TABLE `qdinvest_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_title` varchar(100) NOT NULL,
  `no_body` longtext NOT NULL,
  `no_brief` varchar(200) NOT NULL,
  `no_time` datetime NOT NULL,
  `no_type` int(11) NOT NULL,
  `no_sort` int(11) NOT NULL,
  `no_is_delete` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `qdinvest_notice_read`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_notice_read`;
CREATE TABLE `qdinvest_notice_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nr_user_id` int(11) NOT NULL,
  `nr_notice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_notice_read_e399ce2b` (`nr_user_id`),
  KEY `qdinvest_notice_read_d29b9edf` (`nr_notice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `qdinvest_notice_user`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_notice_user`;
CREATE TABLE `qdinvest_notice_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nu_title` varchar(100) NOT NULL,
  `nu_body` longtext NOT NULL,
  `nu_brief` varchar(200) NOT NULL,
  `nu_time` datetime NOT NULL,
  `nu_user_id` int(11) NOT NULL,
  `nu_type` int(11) NOT NULL,
  `nu_is_read` int(11) NOT NULL,
  `nu_is_delete` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_notice_user_a37dbd78` (`nu_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `qdinvest_payment`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_payment`;
CREATE TABLE `qdinvest_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pa_user_id` int(11) NOT NULL,
  `pa_amount` decimal(16,4) NOT NULL,
  `pa_date` date NOT NULL,
  `pa_stock_id` int(11) DEFAULT NULL,
  `pa_bond_id` int(11) DEFAULT NULL,
  `pa_status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_payment_7530e17c` (`pa_user_id`),
  KEY `qdinvest_payment_c838aa13` (`pa_stock_id`),
  KEY `qdinvest_payment_6956a0e0` (`pa_bond_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_payment`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_payment` VALUES ('1', '18', '1000.0000', '2014-11-25', '5', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_pro_type`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_pro_type`;
CREATE TABLE `qdinvest_pro_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_pro_type`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_pro_type` VALUES ('1', '成功项目'), ('4', '即将开始'), ('7', '筹资中');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_profit`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_profit`;
CREATE TABLE `qdinvest_profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_user_id` int(11) NOT NULL,
  `pr_amount` decimal(16,4) NOT NULL,
  `pr_date` date NOT NULL,
  `pr_stock_id` int(11) DEFAULT NULL,
  `pr_bond_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_profit_7d02eb06` (`pr_user_id`),
  KEY `qdinvest_profit_d1b05ad7` (`pr_stock_id`),
  KEY `qdinvest_profit_42e8a746` (`pr_bond_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_profit`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_profit` VALUES ('1', '10', '100.0000', '2014-11-12', '3', null), ('2', '10', '1.0000', '2014-11-04', null, '4'), ('3', '4', '100.0000', '2014-11-23', '7', null), ('4', '4', '249.0000', '2014-11-04', null, '3'), ('5', '15', '100.0000', '2014-11-23', '5', null), ('6', '15', '1230.0000', '2014-11-11', null, '2');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_province`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_province`;
CREATE TABLE `qdinvest_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_province`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_province` VALUES ('1', '黑龙江'), ('2', '山西'), ('3', '河南'), ('4', '云南'), ('5', '山东'), ('6', '江西'), ('7', '吉林'), ('8', '辽宁'), ('9', '江苏'), ('10', '河北'), ('11', '上海'), ('12', '安徽');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_randomcode`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_randomcode`;
CREATE TABLE `qdinvest_randomcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_tel` varchar(20) NOT NULL,
  `rc_code` varchar(10) NOT NULL,
  `rc_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_randomcode`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_randomcode` VALUES ('1', '18646373437', '723186', '2014-11-23 00:36:21'), ('2', '13089706902', '843029', '2014-11-23 01:01:44'), ('3', '15601622688', '560247', '2014-11-23 10:26:42'), ('4', '13136652521', '425987', '2014-11-23 17:08:26'), ('5', '13836030532', '359412', '2014-11-23 17:37:05'), ('6', '13936395291', '872105', '2014-11-26 08:41:57');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_recharge`;
CREATE TABLE `qdinvest_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_user_id` int(11) NOT NULL,
  `rc_type` int(11) NOT NULL,
  `rc_value` decimal(16,4) NOT NULL,
  `rc_date` datetime NOT NULL,
  `rc_status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_recharge_8d7f0cec` (`rc_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `qdinvest_settings`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_settings`;
CREATE TABLE `qdinvest_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `se_android_version` varchar(20) NOT NULL,
  `se_ios_version` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_settings`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_settings` VALUES ('1', '1.1.1', '1.0'), ('2', '2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_stock`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_stock`;
CREATE TABLE `qdinvest_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_user_id` int(11) NOT NULL,
  `st_title` varchar(100) NOT NULL,
  `st_image` varchar(100) NOT NULL,
  `st_video` varchar(100) DEFAULT NULL,
  `st_brief` varchar(200) NOT NULL,
  `st_begin_time` datetime NOT NULL,
  `st_end_time` datetime NOT NULL,
  `st_create_time` datetime NOT NULL,
  `st_is_commend` int(11) NOT NULL,
  `st_scale` double NOT NULL,
  `st_total_price` decimal(16,2) NOT NULL,
  `st_current_price` decimal(16,2) NOT NULL,
  `st_min_price` decimal(16,2) NOT NULL,
  `st_industry_id` int(11) NOT NULL,
  `st_province_id` int(11) NOT NULL,
  `st_pro_type_id` int(11) NOT NULL,
  `st_com_type_id` int(11) NOT NULL,
  `st_like_count` int(11) NOT NULL,
  `st_view_count` int(11) NOT NULL,
  `st_invest_count` int(11) NOT NULL,
  `st_hint` longtext,
  `st_com_brief` longtext,
  `st_protect` longtext,
  `st_inf_expose` longtext,
  `st_plan` longtext,
  `st_finance` longtext,
  `st_good_bad` longtext,
  `st_market` longtext,
  `st_business` longtext,
  `st_risk` longtext,
  `st_team` longtext,
  `st_prospectus` longtext,
  `st_manage` longtext,
  `st_sort` int(11) NOT NULL,
  `st_status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_stock_e326f37d` (`st_user_id`),
  KEY `qdinvest_stock_d310553e` (`st_industry_id`),
  KEY `qdinvest_stock_e448c2d5` (`st_province_id`),
  KEY `qdinvest_stock_95727a7e` (`st_pro_type_id`),
  KEY `qdinvest_stock_899c6c7f` (`st_com_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_stock`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_stock` VALUES ('1', '5', '企业融资', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '为扩大业务进行融资', '2014-11-05 21:55:45', '2014-12-30 23:00:00', '2014-01-06 06:23:34', '0', '23', '40000.00', '3000.00', '2000.00', '1', '2', '7', '2', '2', '31', '3', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n2、投资者认投本项目，应当认真阅读本说明书及有关信息披露文件，对企业(个人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n3、企业(个人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 安徽省庆元堂徽菊股份有限公司成立于2009年1月，注册资本800万元，公司地址为休宁县海阳镇盐铺，公司占地面积5000m2，建筑面积1800 m2。主营业务为菊花的种植、加工和销售。\r\n\r\n经公司员工五年多的顽强拼搏，我公司在2010年7月“庆元堂有机徽菊”获“第三届安徽民营企业十大创新品牌”，2010年2月荣获“黄山知名品牌产品”称号，2010年11月被授予“安徽省中药材产业化龙头企业”，2010年12月和2012年12月二次被授予“安徽省农业产业化龙头企业”，2011年7月公司产品获得国内有机认证机构和欧盟有机认证机构的有机颁证，2011年7月荣获名优农产品（上海）博览会“最佳企业展示奖”。公司秉承“质量第一、诚实守信、服务客户、回报社会”为宗旨，2013年3月26日荣获“安徽省知名品牌产品”称号。\r\n2010年公司在商山乡新雁村建立了450亩标准化有机徽菊种植基地。以独有的现代化先进加工工艺（发明专利：“一种干菊花的制作工艺”，专利号：200910185992.9 ），确保产品的质量安全性和优异品质，从而使公司产品得到社会和市场的认可和青睐，产品的知名度和美誉度逐年提升，目前公司产品在国内市场已经基本覆盖的安徽、北京、上海、浙江、重庆、山东、江苏、广东、湖南、湖北、陕西、山西、江西、福建、河南等省，其中安徽省覆盖到县级，公司业绩逐年得到了大幅提升。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件应及时予以披露并采取整改措施；\r\n2、发起人拥有完善的企业治理机制、议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理。</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及安徽省股权托管交易中心成长板信息披露要求予以披露。</p>', '<p>&nbsp; &nbsp; 庆元堂1000亩有机徽菊种植基地扩建项目拟融资500.00万元；融资方式为向投资者进行股权质押、股权转让、发行企业债券等方式筹集资金。</p>', '<p>&nbsp; &nbsp; 1、投资金额\r\n总投资为1,606.71万元\r\n2、项目效益分析\r\n（1）项目达产时年产系列特色菊花210吨，每吨按均价52.38万元计,年可新增销售收入11,000.00万元。\r\n按正常生产年份可实现：\r\n销售收入：11,000.00万元(生产期平均)；\r\n总成本：9,700.00万元(生产期平均)；\r\n净利润: 1,300.00万元(生产期平均)；\r\n税金：免税\r\n（2）可分配盈余及分配情况\r\n如果按项目完成所增产值11,000.00万元，扣除原材料，燃料、工资、折旧费、推销费、维修费、销售费、管理费等各项开支9,700.00万，其利润盈余可达1,300.00万。如果再扣除提留130.00万元用于下半年度发展基金，这样可参加利润分配约1,170.00万元，实际效益明显。</p>', '<p>&nbsp; &nbsp; 1、 公司竞争优势\r\n(1) 产品质量优势\r\n公司从成立之初就专注于有机菊花的种植、加工和销售，公司从种苗的选育就开始严格把控生态有机种植，完全避免化学农药的使用，利用生物技术和物理技术防治病虫害，从根源上保证菊花的卫生质量条件，针对生产环节的农药残留问题，公司组织 2 个专业服务队，除对基地实行统防统治，还为其他农户提供免费生物农药、免费统一防治的服务；针对生产环节质量不均衡问题，公司在新上的生产线中增加了杀青工艺和自动包装工艺，使生产出来的黄山贡菊干花淡雅香气更浓（提高口感）、花型花色更美、花朵体积更小（便于储藏、包装、运输）。这就在一定程度上解决了长期困扰黄山贡菊发展中的企业与技术研发、基地建设的衔接问题。\r\n目前， 公司生产的三类有机菊花产品已经先后获得国内有机产品认证和欧盟有机产品双重认证，公司依靠科技创新，严格的现代化企业管理，清洁化生产流程和发明的先进加工工艺，生产出了“纯天然、无污染、富营养、高品位”的有机无公害菊花系列产品。在有机徽菊生产过程中，公司积极研究编制了《有机徽菊》、《有机徽菊栽培技术规程》、《有机徽菊加工技术规程》、《有机徽菊质量标准》等有机生产加工和管理文件，并严格按照《有机产品》GB/T 19630.1～GB/T19630.3 的标准实施，以确保生产的有机菊花的质量和品质。\r\n公司生产的有机徽菊品质优良，色、香、味、形具佳，产品经中国农科院茶叶研究所农产品质量检测中心检测，其十五种主要农药残留量均为零，符合有机菊花质量标准。所以，公司产品在质量品质方面具有显著优势。\r\n(2) 品牌优势\r\n公司从成立之初就非常重视品牌的建设，公司自己开发的“庆元堂”牌有机菊花产品以高品质、纯天然、无污染特性，已经获得了市场的高度认可。目前市场上传统菊花因农药残量较高对销售影响很大，销售状况不佳，而本公司生产的“庆元堂”牌有机菊花从根本上改变了生产加工工艺，达到了绿色有机产品的质量标准，打消了消费者对农残的心里疑虑， 从而销售价格也是普通菊花的好几倍，这就是长期以来公司重视品牌建设所带来的品牌增值效应。 公司立足将“庆元堂”牌有机菊花品牌打造成有机徽菊的代表，结合徽州文化深厚的底蕴，将公司的产品迅速推向全国，让广大消费者真正喝到放心的菊花茶，让“庆元堂”这个品牌根植于消费者心理。\r\n(3) 地域优势\r\n公司坐落于世界自然与文化遗产地之一的黄山脚下，位于有“中国第一状元县”、“中国有机徽菊之乡”、“中国乡村旅游福地”之称的休宁县境内。物华天宝，人杰地灵，休宁县生态环境自然条件非常优越，环境污染轻，非常适合菊花、茶叶等农作物的生长，是徽菊的主产地之一，该地区山峦起伏，绿水长流，夏无酷暑，冬无严寒，四季分明，温暖湿润，雨量充沛，阳光充足，年均气温在16.4℃左右，属热带北缘区，特别适宜徽菊的生长，且利于有机种植生态环境的营造和维持。这样的原产地地域优势造就了公司生产的菊花的天然优良品质，这也为公司定位于经营中高端有机菊花产品打下了坚实的基础。\r\n(4) 技术优势\r\n公司为了推动技术研发，成立了黄山市休宁县徽菊科学研究所，并以此为平台，与安徽农业建立了技术合作，在黄山贡菊良种选育、高产栽培等方面进行技术合作，通过外植体组培、脱毒技术、筛选出贡菊 5 号、22 号原种苗，经南京农业大学检测，达到了脱毒复壮要求，提高了黄山贡菊质量，实现了花大、早熟、抗逆性强优良品质。黄山贡菊的商品干花经权威机构检测，符合绿色无公害食品的标准，项目技术通过省科技厅组织的专家鉴定，达到国内领先水平，《黄山贡菊良种选育及两季花高产栽培技术》获得安徽省科学成果三等奖。“植物组织培养及快繁技术”和“黄山贡菊花加工技术”的成功研发，为公司菊花的良种苗繁育、技术推广提供了坚强保障。所以，公司在有机菊花的种苗选育、有机栽培和加工工艺方面具有明显的技术优势。\r\n2、公司竞争劣势\r\n我国茶叶及代用茶产业经过多年的发展，市场化程度已经达到了一个较高的水平，各种茶之间已经处于充分竞争状态。目前国内茶叶大类主要分为绿茶、红茶、乌龙茶、普洱茶和代用茶等，其中绿茶是我国产量与消费量最大的茶类，其次是乌龙茶与红茶。2009 年，我国绿茶产量约占全国茶叶总产量的72%，乌龙茶与红茶约分别占茶叶总产量的12%与6%。\r\n虽然，近年来，随着国家交通业和物流业的迅速发展，人口流动性的日益频繁，以及茶叶储藏包装技术的提高，菊花茶生产也得到了快速发展，菊花茶的消费市场也由区域市场逐步拓展为全国性市场，将在未来一段时间内保持快速发展趋势。但菊花茶等代用茶在很长一段时间内仍将面临绿茶、红茶、普洱茶等其它茶类的竞争。</p>', '', '<p>&nbsp; &nbsp; 　　目前公司已经成功开发出了“庆元堂”牌无公害有机菊花，是集科研、生产、加工及其销售为一体的有机菊花经营企业，也是目前唯一取得国内有机产品认证和欧盟有机产品双重认证的有机菊花经营企业，是目前国内独具特色的有机生态保健饮品生产经营企业之一。公司目前主要产品包括三大类别：有机徽菊、黄山雪菊和帝女花。公司目前已经开发了自有有机菊花生产示范基地450 亩，该基地为国家级有机菊花标准化示范基地。</p>', '<p>&nbsp; &nbsp; （1）经营用地风险\r\n股份公司目前无自有土地，建造有机徽菊加工厂房、保鲜库、办公楼等生产、生活设施的土地，系公司自行与休宁县农民协商购买所得，并未履行农村集体土地承包经营权流转手续，土地合计16,212.48m2，其中签订协议的6,313.58 m2,未签订的协议的9,898.9 m2。对于未签订协议的土地，公司已经获得相关证明和承诺。\r\n股份公司全体股东已承诺若由于土地问题导致对公司利益的任何损害，包括但不限于公司失去生产经营用地、公司因违章建筑缴纳罚款等，公司的全部损失由承诺人承担连带责任，包括但不限于无偿提供公司生产经营用地、承担公司停产损失和支付违章罚款等。\r\n（2）品牌风险\r\n公司主营业务为有机菊花的种植、加工和销售。现阶段，国内菊花行业企业大多停留在手工作坊式的生产和加工，销售基本也停留在产地周边地带，在产业的价值链中基本处于大型知名茶企的原料供应商，大部分菊花生产企业的经营管理者对品牌概念的理解不强或者很是模糊，对树立自有品牌的意识较为淡薄，从而导致国内走得出去的大型菊花企业寥寥无几。\r\n不过，随着信息时代的到来，菊花产业经营者视野的开阔，对品牌的理解也日益深入，品牌竞争的概念也不断得到灌输，随着整个行业从业人员整体文化素质的提高，社会服务理念及品牌知识的整体提升，品牌竞争的概念将越来越受到行业以及消费者的重视和青睐。\r\n公司现拥有“庆元堂+QINGYUAN TANG”“庆元堂徽菊”和“菊花台”等注册商标，目前，公司正在为“庆元堂”牌有机徽菊申请“中华老字号”认定。虽然公司已经建立了《品牌管理制度》，但若行业内的其它企业出现侵权、生产假冒伪劣商品以次充好等行为，或发生食品安全事故，将会损害公司形象，降低消费者对公司品牌的信心与忠实度，影响公司竞争力。\r\n（3）食品质量安全控制风险\r\n随着经济的快速发展及人民生活水平的迅速提高，近年来消费者及政府对食品安全重视程度不断增强，2009 年颁布实施的《食品安全法》、《食品安全法实施条例》等法律法规进一步强化了食品生产者的社会责任，规范了食品生产企业的经营行为，加大了食品安全领域的监管力度并确立了惩罚性赔偿制度。\r\n本公司自成立以来一直将产品质量控制置于各项工作的重中之重，公司按照相关国家质量标准、行业标准严格执行相关的质量控制标准。公司依据 ISO 22000:2005 《 食品安全管理体系 - 食品链中各类组织的要求》 、CNCA/CTS0027-2008《食品安全管理体系-茶叶加工企业要求》及相关法律法规的要求，结合公司实际情况，在原材料采购、生产加工、产成品验收出库等各业务环节建立健全了质量管理体系并编制了《质量手册》在日常经营中严格执行。 \r\n目前，公司已取得了中鉴认证有限责任公司出具的《有机产品认证证书》、万泰认证有限公司出具的《HACCP 认证证书》以及瑞士生态市场研究生出具的《欧盟有机产品证书》。公司设立至今未发生过重大食品安全事故，但不排除可能因偶发性因素引起的控制失误导致产品质量和食品安全问题，从而对公司声誉和业绩造成不利影响。\r\n（4）竞争风险\r\n我国茶叶及代用茶产业经过多年的发展，市场化程度已经达到了一个较高的水平，各种茶之间已经处于充分竞争状态。目前国内茶叶大类主要分为绿茶、红茶、乌龙茶、普洱茶和代用茶等，其中绿茶是我国产量与消费量最大的茶类，其次是乌龙茶与红茶。\r\n虽然，近年来，随着国家交通业和物流业的迅速发展，人口流动性的日益频繁，以及茶叶储藏包装技术的提高，菊花茶生产也得到了快速发展，菊花茶的消费市场也由区域市场逐步拓展为全国性市场，将在未来一段时间内保持快速发展趋势。但菊花茶等代用茶在很长一段时间内仍将面临绿茶、红茶、普洱茶等其它茶类的竞争。\r\n若公司不能持续提升品牌知名度，拓展销售渠道并及时应对市场需求的变化，将对公司的持续增长产生不利影响，公司存在因行业竞争加剧造成盈利能力下降的风险。\r\n（5）税收优惠风险\r\n本公司根据《中华人民共和国企业所得税法》第二十七条规定，从事农业项目所得，免征所得税并且依据《中华人民共和国增值税暂行条例》第十五条第（一）款规定，销售产品属于农业生产者自产自销产品的，享受国家免税政策（减征100%）。 \r\n报告期内，公司营业收入、利润总额增长较快，公司经营业绩不会依赖于税收优惠。但若税收优惠政策发生变化，公司盈利水平将会受到一定程度的影响。 &nbsp;\r\n（6）消费市场的区域性可能导致的市场扩张不利和市场区域相对集中的风险\r\n公司主营产品为菊花茶，菊花茶的主产区在安徽，长三角地区是菊花茶的传统消费区域。随着我国经济的发展、人员交流的频繁、物流和保鲜技术的发展，菊花茶的消费区域已拓展到全国。\r\n报告期内，公司来自于安徽地区的营业收入市场区域仍然相对集中，一旦该区域市场竞争加剧或发生其他不利变化，将对公司的经营业绩产生较大影响。\r\n在安徽和长三角传统消费以外的区域，若客户对菊花茶的消费偏好与口味没有逐步改变或者接受程度缓慢，则将影响公司市场的扩张和盈利的提升。</p>', '<p>&nbsp; &nbsp; 高守清先生，现任公司董事长。曾任休宁县林业局技术员、助理工程师；休宁县科协任科普部部长；曾创立皖南特种水产养殖中心。\r\n宋德兴先生，现任公司总经理、公司董事。曾任安徽省休宁县五交化商店会计、安徽省休宁县五交化公司主管会计、外商独资杭州联和纺织有限公司副总、财务经理。\r\n吴文正先生，现任公司副总经理、公司董事。曾任深圳市今日文具有限公司市场部经理、黄山市正点广告公司市场总监、黄山市徽山食用油业有限公司经理、安徽省庆元堂徽菊有限公司业务经理。\r\n项群英女士，现任公司董事。曾就职于休宁县食用菌开发总公司，从事食用菌育种工作，期间进修菊花组培。\r\n柯美华女士，现任公司董事。曾就职于皖南特种水产养殖中心。\r\n黄高嵩先生，现任公司财务负责人。曾任休宁县食品厂主管会计、浙江宁波渔具公司主管会计，庆元堂有限财务经理。</p>', '', null, '2', '0'), ('7', '7', '上海金地农业发展股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '上海金地农业发展股份有限公司融资', '2014-07-16 15:43:07', '2014-10-24 15:43:09', '2014-08-07 09:20:45', '0', '80', '1000.00', '600.00', '60.00', '9', '11', '7', '5', '9', '17', '8', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 上海金地农业发展股份有限公司（以下简称“金农股份”、“公司”）成立于2002年10月23日，注册资本2418．5万元人民币，是一家以有机雷竹笋种植经营为主业，涵盖土壤修复、稀有树木品种培育、生态园林建设经营的都市农业生产企业。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 项目总融资1000万元；融资方式为向投资者股权众筹筹集资金。\r\n1、股权众筹：1000万元，起始金额10万元，认购股份按金额赠送等额股权。\r\n2、项目建设期3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）\r\n4、项目满五年后上海金地农业发展股份有限公司及其控股公司有权回购所有投资份额，投资者亦有权要求上海金地农业发展股份有限公司及其控股公司回购所有投资份额，回购价格为原认购金额的120%。\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于项目前期建设及后期运营；募集资金在完成募集后打入新设有限合伙企业专用账户；\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '<p>&nbsp; &nbsp; 1、项目财务分析：\r\n（1）投资金额\r\n投资金额：1000万\r\n（2）盈利分析\r\n公司2013年度经审计的总资产为20,815,569.53元，比2012年增长4.33%。随着城市生态环境的高速发展，公司在2013年引进大批园林苗木，随着苗木树龄的增长，其增值能力将使得公司营业收入在后续期间大大增加； 2013年度雷竹和竹笋地销售规模不断扩大，使得营业收入相对2012年增长47.31%，应收账款增长1254.05%；同时，为扩大生产，公司苗木种植成本增加，导致营业成本增长86.19%；2013年度净利润相对2012年增长104.55%，公司在未来的两年经营发展计划中，将继续增加土地面积，扩大生产，预计在2014年营业额达到700万元。</p>', '<p>&nbsp; &nbsp; 1、公司竞争优势\r\n（1）产品培育技术优势\r\n公司产品质量较高，本地化生产使苗木和雷竹更加适合上海的气候、水、土等外部环境，苗木和雷竹的成活率较高、抗逆性较强。从培育到种植各个环节，公司均按以下方法严格管理，不使用化肥、农药，不添加激素等化学制品，将所有影响产品质量的环节纳入管理范围，从而保证了公司产品的质量：公司还与上海交通大学签订了《农业科研项目战略合作协议》，双方协议约定合作建立研发基地，交通大学派遣专家及研发团队帮助金地农业研究雷竹笋深精加工、储存保鲜等技术。公司提供场地，必要的人员和设备以及公司现有的种植技术，双方共同合作对现有的种植技术进行改良。\r\n\r\n（2）地域优势：\r\n公司身处上海，毗邻浙江、江苏等笋类制品消费大省，且所在区域交通便利，位于中国大陆海岸线中部长江口，拥有中国最大外贸港口之一，能够有效对接国内国外市场。供应及时性较强，规避了远距离运输供应中运输成本较高且成活率不高的问题。生产更加贴进本地市场，经营的品种、规格与本地需求匹配性更强。\r\n（3）低成本优势：\r\n公司实现了竹笋的规模化经营，包括肥料、农用物资等统一采购，产品实行统一销售，同时对于部分有机肥料也实行自主加工，从而降低了种植成本。\r\n2、公司竞争劣势\r\n公司的种植规模快速扩张存在资金瓶颈。由于公司日常对肥料、农用物资等具有刚性需求，且规模扩张也取决于可取得的土地资源，这导致公司需要的流动资金需求量较大。因此公司未来的规模扩张必须与自身积累产生的现金流及银行融资相匹配，这在一定程度上制约了公司的发展速度。公司目前仅提供竹笋的初级产品，尚未开发竹笋深加工、有技术含量和经济附加值的产品。</p>', '<p>&nbsp; &nbsp; 上海金地农业发展股份有限公司主营业务为有机雷竹笋的种植销售，以及依托并延伸发展林下经济模式。\r\n\r\n林业产业是一个横跨第一、二、三产业的产业体系，具有产业链条长、涵盖范围广和产品种类多的特点，是我国的基础产业之一。我国林业产业可以分为第一产业、第二产业和第三产业三个种类。林业在“十一五”期间发展迅速，根据统计，2011年，林业产业持续快速增长。全年实现林业产业总产值 30,597 亿元（按现价计算），比 2010年增加 7,818 亿元，增长34.32%。其中第一、二、三产业分别增长 24.29%、40.51%和 42.12%。林业三次产业的产值结构由2010年的39.05：52.14：8.81调整为36.14: 54.54：9.32。第七次全国森林资源清查结果显示：全国森林面积1.95亿hm2，较第六次普查数据上涨11.7%，森林覆盖率20.4%，森林蓄积137.2亿m3，较第六次普查上涨10.2%。通过历次清查数据可以看出，我国林业资源近期处于一个平稳上升的格局。林业资源的总体增长趋势对林业产品需求市场来说具有一定利多影响。\r\n\r\n公司主要从事雷竹笋的培育、种植和销售，辅以金桂等园林苗木的种植销售，所经营业务属于林业中的第一产业-竹产业和花卉苗木产业。\r\n\r\n（1）竹产业\r\n竹林资源分为经济类竹林和生态类竹林，其中经济类竹林又分为材用竹林和笋用竹林。制约笋用竹林发展的主要问题有超强度经营、竹林衰退、产品和品质下降等。雷竹笋由于其自身出笋早、出笋期长、产量高、连年出笋、造林周期短的特点，加上食用口感较好，是理想的笋用竹种。公司的主要产品雷竹笋原产地为浙江临安，目前的种植地也以浙江临安、安吉、奉化、余姚等地为主。长三角地区对竹笋这一味道鲜美、营养丰富的绿色食品市场需求非常大，但由于上海土壤偏碱性、不适宜雷竹笋生长的原因，在本公司成功培育雷竹笋之前，上海并没有规模化种植雷竹笋的本地企业，上海市场的雷竹笋由周边省市运抵，在保鲜时效和运输成本方面本公司更具有竞争力。\r\n\r\n竹笋是上海市民普遍喜欢的蔬菜，在上海市场一直供不应求。而雷竹口感鲜嫩、营养价值高，更迎合了当地市场的需求。近几年，随着食品安全问题的日益凸显，种植污染低的竹笋食品更是受到市场的亲睐，市场需求和价格也逐年上升。据行业网站统计，2012 年 7 月竹笋价格较去年同期上升了近 60%。未来，随着保鲜加工技术的发展，竹笋的市场容量将进一步扩大。\r\n\r\n（2）苗木产业\r\n一直以来，园林苗木产业就与园林绿化产业息息相关，园林苗木是园林绿化中不可或缺的一部分。近十几年，随着城市绿地的发展，园林绿化以及园林苗木行业也产生了巨大的飞跃。\r\n\r\n随着城市绿化的快速发展，绿化苗木行业也增长迅速。根据林业局 2011 年全国林业统计年报分析报告显示，2011 年我国花卉苗木种植面积达到 86.22 万公顷，比 2010 年的 76.40 万公顷增长 12.85%，花卉种植产值达到940亿元，其中观赏苗木种植量达到 121 亿株，比2010年的57亿株增长 112.28%。</p>', '<p>&nbsp; &nbsp; 公司采用“公司+基地+市场”的经营模式，公司指派专业技术人员和管理人员负责基地的日常管理与维护，公司研发部通过改良土壤结构，通过研究苗木生长习性合理配置苗木混合种植配比，以提高苗木种植的效益,种植部负责具体执行，在产品的播种和采收阶段，基地聘请农民为农场临时员工，由公司种植部统一安排作业。公司销售部通过建立与基地、市场的信息联动，制定价格策略，将供应信息通过“线上推广+线下拓展”的形式发布到市场。</p>', '<p>&nbsp; &nbsp; （1）市场风险\r\n公司的产品毛利率主要是由产品的销售价格和购进的种苗、肥料、农用物资的成本决定的。这些农产品市场价格都具有周期性，其波动将直接影响公司的毛利率。因此，公司未来面临着一定的市场波动风险。另一方面，公司的苗木产品种植时间较长，从播种达到可出售状态需要数年时间，较长的时间跨度将加大市场价格波动的风险。\r\n（2）产品质量及食品安全风险\r\n近年来消费者及政府对食品安全的重视程度不断加强，有关部门相继出台《农产品质量安全法》、《食品安全法》、《食品生产加工企业质量安全监督管理实施细则（试行）》等一系列法律法规，加大食品安全领域的监管力度，规范食品生产企业的经营行为。公司作为竹笋生产企业也受到相关部门日益严格的食品质量安全监管。虽然本公司在生产经营过程中严格推行食品安全及质量管控体系，所建立的符合国家标准的检验体系能够对农药残留等多项指标进行检测，公司设立至今也未发生过重大食品安全事故，但偶发性因素引起的控制失误仍可能出现，由此导致的食品安全和质量问题将可能对公司声誉和业绩造成不利影响。\r\n（3）回购风险\r\n发起人及其控股股东是否有能力回购投资份额与其是否有足够的现金流相关，因此存在发起人推迟回购或无法回购的风险。</p>', '<p>&nbsp; &nbsp; 公司控股股东及实际控制人均为竺国领先生。竺国领现直接持有公司9,700,000 股份，占公司股份总数的 60.59%，通过其控制的四明集团间接控制公司 300,000 股份，占公司股份总数的 1.87%，合计控制公司 10,000,000 股份，直接和间接合计持有本公司 62.35%的股份（控制的股权比例为 62.46%）。\r\n竺国领先生，1958 年出生，中国籍，无境外永久居留权，南京空军政治学院工商管理专业，大专学历。1976 年 1 月至 1988 年 10 月任南京军区 83018 部队连长；1988 年 10 月至 2007 年 3 月任上海市工商局公务员；2007 年 5 月至 2012年 8 月任有限公司执行董事；2012 年 8 月 24 日至今担任本公司董事长兼总经理。\r\n邹筠女士,公司董事、财务总监，1981 年出生，中国国籍，无境外永久居留权，涉外贸易管理学院会计学专业，大专学历。2002 年 6 月至 2009 年 7 月任上海润翔广告有限公司会计；2009 年 9 月至今任本公司财务总监。\r\n王磊先生，公司董事兼技术研发部经理，1984 年出生，中国国籍，无境外永久居留权，上海农林技术学院城市园林专业，大专学历。2005 年 7 月至 2009年 6 月任上海四明集团股份有限公司技术主管；2009 年 7 月至今任本公司技术研发部经理。\r\n方国苏先生，公司董事兼董事会秘书，1985 年出生，中国国籍，无境外永久居留权，上海科技学院通信与信息专业，本科学历。2007 年 9 月至 2009 年 4月任中国移动上海分公司北区公司职工；2009 年 6 月至 2011 年 6 月任上海润言投资咨询有限公司项目经理；2011 年 7 月至 2012 年 2 月任上海博涵公共关系管理咨询有限公司项目部副总监；2012 年 3 月至 2012 年 9 月任上海哲儒投资管理有限公司项目部总监；2012 年 9 月至今任公司董事会秘书。</p>', '', '', '7', '1'), ('2', '4', '上海茂霖高分子科技股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '科技股票融资', '2014-11-04 07:44:33', '2014-12-11 23:24:55', '2014-01-14 06:55:44', '0', '56', '8000.00', '8000.00', '10.00', '2', '11', '7', '1', '6', '2', '0', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 上海茂霖高分子科技股份有限公司（以下简称“茂霖高科”、“公司”）成立于2013年8月19日，注册资本1,635万元人民币。茂霖高科主要从事胶辊产品的研发、生产和销售。公司盈利的优势在于，所掌握的橡胶材料技术使公司可以根据打印机的特点调整胶辊品质，使其适用于高端（北美）、中端（日韩）和低端（国内）打印机耗材市场。打印机整机的关键技术主要由日本和韩国控制，日韩原装的打印机对耗材品质要求很高，而国内硒鼓生产商由于使用品质较差、特性参差不齐的碳粉，要求胶辊必须能匹配碳粉的特性，才能满足打印机整机的质量要求。公司在胶辊生产及产品性能方面均存在优势，使得公司通过分析打印机质量要求和硒鼓生产商碳粉特性来定制不同规格和品质的胶辊产品成为可能，该方面生产技术的先进性以及产品的优越性能，使公司获得市场认可并积累了大量的长期优质客户。本次公司吸引投资者，拟与原韩国小星于威海投资之子公司威海极帝原高管朴总团队共同成立威海星河电子科技有限公司，要为三星配套生产导电胶辊的企业，主要生产技术系三星所有。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; &nbsp; &nbsp;发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 项目总融资1000万元；融资方式为向投资者债权众筹筹集资金。\r\n1、债权众筹：1000万元，起始金额10万元。\r\n2、项目建设期3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）；\r\n4、项目满五年后上海茂霖高分子科技股份有限公司及其控股公司有权回购所有投资份额，投资者亦有权要求上海茂霖高分子科技股份有限公司及其控股公司回购所有投资份额，回购价格为原认购金额的120%。\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于项目前期建设及后期运营；募集资金在完成募集后打入新设有限合伙企业专用账户\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '<p>&nbsp; &nbsp; 1、威海子公司项目财务分析：\r\n（1）投资金额\r\n建设投入：1000万</p>', '<p>&nbsp; &nbsp; 1、公司竞争优势\r\n（1） 技术研发优势\r\n母公司上海欣展从事高分子材料研究多年，行业经验丰富。茂霖高科秉承母公司的研发传统，由台湾资深专家领衔进行新型高分子材料产品开发，公司配备有设备先进的实验室用于新产品的开发，聘任行业经验丰富的技术人员组成技术团队，目前拥有9项胶辊生产相关专利，另有多项专利正在申请中。核心生产工艺及技术要点是在日本施乐公司及三星公司的基础上，通过优化和改进，研发出具有自主知识产权的技术专利，已完全达到了国际同行的水平。各项专利技术均用于公司及代加工方的实际生产。\r\n（2） 市场和营销优势 \r\n企业积极进行市场开拓，为将销售窗口延伸到客户中间，企业在中国半导电胶辊耗材之都—广东珠海设有专门的营销中心，企业建有一支敬业的销售团队，全面负责公司所有半导电胶辊的销售及售后服务。近年，企业建立、完善了较好的营销网络，主要采用的方式有网络销售、产品展示、拜访客户、电话销售等。\r\n（3）生产工艺优势 \r\n橡胶制品中的新型产品通常具有较高工艺要求，需要投入大量的人力、物力资源进行研制，并通过不断积累，才能获得成熟的工艺。依靠公司技术团队多年的不懈努力，形成自己独特的生产工艺，打破了日韩对于相关技术的垄断。另外，公司注重在生产工艺、新材料配方等方面的自主研发，通过不断改进，促成生产工艺、生产技术、产品质量趋于成熟。公司凭借其在生产工艺上积累的丰富的经验，研制的高端新产品在市场竞争中具有先入优势。\r\n2、公司竞争劣势\r\n（1） 胶辊市场竞争激烈\r\n虽然公司由于产品质量得到市场认可，订单较为充裕，但由于胶辊生产的行业特点，公司需要花费大量资金用于原材料的购买，资金短缺问题成为制约公司快速发展和规模化经营的瓶颈。因此资金不足是目前影响公司发展的一个主要原因。\r\n（2）专业人才的引进\r\n随着公司业务的不断拓展，和老一辈专业人员的退出，为继续保持公司产品在市场上的质量优势，需进一步加大科技投入进行新工艺、新产品的研发，面临着高技术人才短缺的困境，需进一步引进相关方面人才。\r\n（3） 产能有限 \r\n公司生产基地在上海青浦，为适应市场需求，上海欣展于2010年在江苏淮安建立控股子公司淮安欣展，建成后又先后组建多条生产线，目前已达到120万支/月的产能，公司暂时将导电胶辊的关键生产环节交由淮安欣展生产。但随着公司国内市场的稳固以及国际市场战略的快速展开，特别是公司与美国第二大打印耗材公司进行业务合作后，公司的产能无法满足快速发展的打印耗材市场需求。目前，产能不足对公司国际化市场战略的实施形成了一定的限制。</p>', '<p>&nbsp; &nbsp; 公司专注于高分子材料研发，主要从事一般胶辊及导电胶辊产品的研发、生产及销售。\r\n\r\n公司胶辊产品是研发团队耗时将近7年的研发成果，相关产品生产工艺及相关技术已申请专利。上海欣展于2007年在上海青浦建厂开始生产胶辊产品，2010年考虑到市场需求，于江苏淮安建立控股子公司进一步扩大产能，形成规模效应。公司生产经验丰富，规模效益带来成本优势，且产品质量获得国内外客户认可，已在国内市场建立起品牌效应。随着公司国际市场战略的推进，母公司与美国第二大耗材企业Future Graphics达成合作协议，并开始稳定供货，是公司抢夺北美市场的良好开端。为适应国内外的强劲需求，公司未来计划在中国最大的打印耗材产业基地--广东珠海市建立生产厂，厂区建立完成后能有效降低运输成本，进一步增强公司产品的竞争力。考虑到世界激光打印耗材市场的良好发展趋势，公司计划进行整装硒鼓的研发生产，同时尝试研发公司自有打印机产品，摆脱对于国外原装打印机品牌的约束。由此形成了打印机与打印耗材的对接，为打印耗材终端客户提供打印耗材整体解决方案服务。</p>', '<p>&nbsp; &nbsp; 公司具备持续的研发能力，胶辊相关技术均为自主研发，保证了公司产品较长时期都能维持质量和技术上的领先地位。除了普通胶辊和导电胶辊以外，公司还开发出了LIM液体硅胶胶辊产品，用于高速复印机中的加热和加压。\r\n\r\n公司的生产模式为自行研发，自行采购原材料，胶辊的关键生产环节采用给料外包的委托加工模式交由关联方淮安欣展生产。导电胶辊的关键生产环节单独设在淮安建厂是出于成本和环保测评方面的考虑。目前淮安欣展60%的股权由茂霖高科的母公司上海欣展持有，40%的股权由其它无关联关系的外资持有。公司未来计划融资后获取淮安欣展100%的股权，使淮安欣展成为公司的全资子公司，从而将胶辊业务完整地纳入挂牌公司架构中。\r\n公司的销售模式为直销模式，前期客户拓展主要通过网上询价、参与招标等形式拓展客户，直接建立合作关系，后期建立合作关系后直接与销售部门联系下单。由于全国打印耗材主要集中在广东珠海，公司在广东珠海设立办事处，负责市场开拓与后期客户服务，同时积极收集市场信息，与总部形成快速市场反应机制。\r\n公司产品目前已在国内市场获得一定知名度，与珠海中润靖杰打印机耗材有限公司、珠海市拓佳科技有限公司、珠海神舟打印耗材有限公司等公司建立合作关系，国际上公司与北美第二大打印耗材集团Future Graphics LLC也已建立合作。</p>', '<p>&nbsp; &nbsp; 风险因素及风险控制\r\n（1） 产能不足的风险\r\n公司的主要产品为打印机耗材——一般胶辊和导电胶辊，该业务系母公司通过业务重组装入公司。公司目前部分关键环节委托由母公司持股60%的淮安欣展进行加工。经过多年的产品研发和推广，母公司在胶辊行业内积累了良好的声誉和丰富的经验，产品从性价比角度已经超越日、韩竞争对手，具备进入北美市场的能力。虽然公司自身和淮安欣展目前的产能尚有剩余，但在与世界排名前三位的客户接洽时仍无法满足其大额订单的需求，因此公司计划通过进入上海股交中心挂牌融资，在收购淮安欣展100%股权的基础上、进一步在成本更低的珠海建立生产基地，以提高市场占有率。如果不能扩大产能、占领市场，公司未来的长远发展将受到制约。\r\n（2） 业务重组的风险\r\n2013年5月，本公司母公司上海欣展收购了上海语际包装制品有限公司，将该公司作为载体，将胶辊业务整体注入。语际包装在收购前仅存在少量资产，且基本处于停运状态。截至本说明书出具日，重组工作已基本完成，公司的相关资产、人员、业务、专利等已经完成交接，公司已基本进入了正常运营的状态。但由于业务重组完成后运行时间尚短，茂霖高科在业务注入后尚未进入到最佳的运营状态，公司的运营团队尚处于磨合期，因此存在业务重组暂时影响经营业绩的风险。此外，由于本说明书所披露的报告期仅截至2013年6月30日，财务报表体现了一些业务重组过渡期的特殊交易数据，包括胶辊业务客户的合同转换尚未全部完成，以及茂霖高科自母公司买入了业务相关的原材料、半成品和产成品等，导致目前所披露的财务数据显示对少量客户及关联方的重大依赖。因为胶辊业务相关的全部管理、研发团队和资产都已注入茂霖高科，预计随着公司的运行，业务重组导致的过渡问题将逐步解决完毕，不会对公司的正常经营造成进一步的不利影响，在维持该业务原于母公司经营的业绩基础上，随着海外订单的增加，业绩还将不断提升。\r\n（3） 业务扩张的管理风险\r\n虽然公司在业务重组的过程中接受了胶辊业务相关的全部管理团队，足以应对目前的经营规模。但根据公司的战略规划，公司产品已经具备进入北美市场的品质，公司将通过资本市场融资扩大生产能力、提高市场占有率，经营规模将不断扩大，对公司管理的要求将越来越高。公司一方面需要提高现有管理层的管理水平，面临管理层能力不足以应对更复杂的经营状况的风险，另一方面需要为扩大的经营规模配备相应的生产、管理、营销、技术等各方面的人才，面临人才不足的风险。虽然本公司的管理层在企业管理方面已经积累了一定的经验，但是如果不能及时适应公司业务发展的需要，将直接影响公司的发展速度。\r\n（3） 关联交易的风险\r\n报告期内存在2013年公司向上海欣展采购的关联交易，且采购金额在总体采购金额里占比较大，主要是由于母公司上海欣展为了业务重组将胶辊业务相关的原材料及半成品一次性出售给了本公司。随着公司接受业务注入后经营逐步走上正轨，除公司经营战略需要再次进行资产重组的可能外，这种大比例关联交易的情况将不再发生。\r\n除上述关联交易外，公司还存在如下关联交易：一、公司导电胶辊的关键环节目前出于成本考虑交由关联方淮安欣展委托加工，未来计划融资收购淮安欣展的全部股权，使其成为公司的子公司；二、部分胶辊生产部件出于性价比的考虑向上海欣展采购，根据经验，这部分采购约占总体采购量的30%；三、公司目前生产厂房系向上海欣展租赁。公司制定了《关联交易管理办法》，建立了严格的内部控制制度，将对关联交易进行严格控制，保证关联交易的公允性。</p>', '<p>&nbsp; &nbsp; 本公司除董事长王智信、总经理钟大正、核心技术人员吴定基、林柏州为中国台湾居民外，其他所有董事、监事、高级管理人员和核心技术人员均为中国国籍。\r\n王智信先生，公司董事长，1949年出生，中国台湾居民，高中学历。1986年4月至1995年11月任台湾欣秉胶业有限公司董事长；1995年8月至今任上海欣展橡胶有限公司董事长；2013年5月至今任茂霖高科董事长。\r\n钟大正，公司董事、总经理，1967年出生，中国台湾居民，中国文化大学企业管理学专业毕业，本科学历。1991年6月至1993年6月在台湾地区服兵役；1993年6月至1996年10月任宜进实业股份有限公司（台湾）业务员；1996年10月至2001年5月任厦门民兴工业有限公司财务主管；2001年6月至2004年5月任南京统宝光电有限公司行政主管；2004年7月至2007年8月任深圳天王星电子商务贸易有限公司总经理；2007年10月至2013年5月任上海欣展橡胶有限公司总经理；2013年6月至今任茂霖高科总经理；2013年8月9日在股份公司创立大会上被选举为公司董事。</p>', '', null, '13', '0'), ('3', '3', '上海立博塑胶工具有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '上海立博塑胶工具有限公司融资', '2014-07-16 15:53:41', '2014-10-16 15:53:42', '2014-11-04 22:09:30', '0', '10', '1000.00', '1000.00', '10.00', '9', '11', '7', '4', '7', '73', '5', '', '', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '', '', '<p>&nbsp; &nbsp; 1. 规模优势\r\n公司目前是长三角地区最大的五金套装工具生产企业，每年生产的产品大量出口到欧洲、美洲等地，并且与众多浙江、福建等地的五金工具生产企业签订了长期战略协议。公司可以提供数百种不同规格、不同要求的五金套装工具，并且可以根据客户需求定制。\r\n2. 品牌优势\r\n“立博”品牌现已在市场形成良好的市场品牌，在京东、天猫等国内大型B2C网站进行销售，或的良好口碑。\r\n3. 渠道优势\r\n公司与欧洲、美洲等地区多个国家五金产品批发商建立了良好的客户关系，凭借优异的品质和诚信，建立了稳定的销售渠道。\r\n4. 资金缺口\r\n目前公司正在增加生产规模，新购置的产房和土地需要大量流动资金注入，因此存在一定资金缺口。</p>', '<p>&nbsp; &nbsp; 我国的五金工具市场主要分布在浙江、江苏、上海、广东和山东等地方，其中浙江和广东最为突出。浙江的永康向来就被称为&quot;五金之乡&quot;，而在深圳周边及珠江三角地区聚集了6000多家模具企业，从业人员超过10万人。 &nbsp; 目前，我国已成为世界五金生产大国之一。虽说前几年金融危机对我国五金出口略有影响，但从1999年开始有所好转。2002年，我国五金工业总产值达到1895亿元，同比增长19.15%，海关统计出口总额67.74亿美元，同比增长24.51%。其中，燃气热水器产量243.84万台，比上年增长19.18%。锁具12.30亿把，比上年增长9.43%。日用不锈钢制品41.5万吨，同比增长24.56%。\r\n据了解，现在中国五金产业中至少有70%为民营企业，为中国五金行业发展的主力军。另一方面，国际五金市场上，欧美发达国家由于生产技术快速发展与劳动力价格升高，将普遍性产品转由发展中国家生产，仅生产高附加价值的产品，而中国又拥有强大的市场潜力，所以更有利发展为五金加工出口大国。\r\n欧美国家中产阶级高房屋拥有率，需要很高的劳动成本。雇用别人做家务的成本非常高，所以是DIY为主。普通的欧美家庭都是自己去工具店买所需要的产品，回到家后再对房屋进行维修、整理。2007年以后，美国房地产的巨变，使得美国民众更专注于小项目，比如房屋的修理、维护。危机之后，美国业界预计有3%的新建房屋会带来市场增长，2009年开始的增长迅速。</p>', '', '', '', '', '', '12', '0'), ('4', '6', '荣成盛泉养老服务股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '荣成盛泉养老服务股份有限公司', '2014-07-16 15:51:46', '2014-10-16 15:51:48', '2014-07-05 22:14:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '0'), ('5', '2', '上海华龙测试仪器股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '上海华龙测试仪器股份有限公司', '2014-07-16 15:49:00', '2014-10-16 15:49:28', '2014-11-06 08:57:00', '0', '68', '1000.00', '1000.00', '100.00', '9', '11', '7', '2', '29', '194', '22', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 上海华龙测试仪器股份有限公司成立于2002年，现注册资本1700万元，公司是智能化、数字化、自动化试验机产品的专业研发生产企业，所生产的试验机可以对各类金属和非金属的材料、构件和成品进行各项物理力学性能测试、分析和研究，是国内品种最全的试验机制造商、高端试验机产品的研发基地和国内测试仪器行业内领航者之一。 \r\n公司在成立之初就以“测试科技，启创未来；华龙品系，信立天下”为发展目标。经过多年的发展，公司在试验机行业已取得较为瞩目的成绩，主要产品有WHY 系列微机控制压力试验机、YJW 系列微机控制压剪试验机、WAW 系列微机控制电液伺服万能试验机和 WDW 系列微机控制电子万能试验机等。公司产品广泛应用于航空航天、国防军工、机械制造、车辆船舶、钢铁冶金、电线电缆、塑料橡胶、建筑建材、商检质检、大专院校及科研院所的学术研发等国民经济各领域。 公司是国内试验机行业唯一具有进出口资质的本土企业，2012 年公司出口产品销售额占公司年度总销售额 6.14%。公司现阶段以国内销售为主、出口销售为辅，但随着公司研发产品质量的提高和在国外市场品牌知名度的提高，公司的出口业务会进一步扩大。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 目前华龙测试正在拟定两项融资计划，尚未公布。</p>', '', '<p>&nbsp; &nbsp; 优势和劣势\r\n一、公司竞争优势\r\n公司制造试验机已有二十多年历史。现已是智能化、数字化、自动化、集成化、网络化中国高端试验机专业产品的最大研制基地；公司的综合实力名列前茅，是中国试验机知名品牌和国内品种最全的试验机产品制造商。试验机行业在国内市场仍处于发展早期，公司作为该行业的先驱者和领导者，生产的材料拉伸静态试验机在业内具有雄厚的竞争力，有较大的市场份额，在石材化工、轨道工程等领域中所供应的专业试验机占有的市场率较大。公司有进出口资质，在国外亚太地区、中东地区、欧洲地区、南美地区设有分支代理机构，如WAW型电液伺服万能试验机因其高精密性能、自动化控制、低噪音以及节油省电环保的优势而备受各国客户青睐而出口到海外。\r\n公司与上海宝钢工业技术服务有限公司签订了“联合开发高端试验机——暨战略合作协协议”，取得丰盛成果，联合成功研发“LZW系列微机控制全自动拉伸试验机”，该系列产品填补国内空白，其技术性能已经达到国际先进水平，但价格是同类进口产品的三分之一。\r\n1、商业模式优势\r\n公司从起步就认识到技术对产品的重要性，公司依靠技术领先在前期取得了稳步的发展，完成了技术、品牌、人才等初步积累。公司通过加强对研发、技术、推广和服务等专业化能力的提升，维持公司在试验机行业领域的领先优势及在市场上的竞争地位。在多年的整合式业务发展中，公司各种业务之间相互促进与发展，有较强的协同性，形成了系统化竞争策略，构建了具有华龙测试特色的“研发+产品+推广+服务”的一体化商业模式。\r\n2、技术优势\r\n公司围绕国内外急需的试验仪器进行前沿性研究工作，保持和高校、研究所、国内知名公司的密切合作，在产品开发中形成上下游共同开发格局和产业链，将原创性的成果并成功地进行市场化运作，使产品的品种更具实用、档次更上一个台阶。分析国外的同类产品的性能和特点，利用自有技术和高校研究所的成果进行合作开发。在开发过程中结合本公司技术优势，开发系列产品，将微机、智能、数字相结合，发挥各自的优点。同时，密切关注国外新产品的动向，对国外新技术品种进行跟踪和了解，尽可能和国际著名公司联合开发国内外市场，保持未来市场强大竞争力。\r\n3、管理优势\r\n公司将“标准化、规范化、管理创新”作为管理宗旨，建立了涵盖战略、研发策略、质量管理、财务管理、供应链管理、营销策略等标准化的管理体系，公司各下属公司、各部门实施职能化管理，并通过统一的运营流程实施管控。公司的管理优势突出体现在：\r\n（1）标准化的质量管理\r\n公司将质量视为生存之根本，先后通过 ISO9001（1994版）国际质量体系认证和ISO9001（2008版）中国及美国国际质量体系认证, 2012年,公司环境管理体系符合GB/T24001-2004/ISO 14001:2004，获得由北京世标认证中心有限公司颁发的《认证证书》，形成了“一丝不苟，精益求精，操作规范，科学求实，以完美的质量和便捷的服务让顾客满意”的全面质量管理理念。\r\n（2）成本的整合式策略\r\n公司通过上下游产业链整合及内部资源有效整合实现成本领先；以持续优化供应商及产品供应价格，从而达到降低采购成本的目的；同时，公司通过治理结构的完善与组织体系的梳理，逐步降低内部交易成本。\r\n（3）高效的信息化管理平台\r\n公司自成立以来就开始实施信息化建设的战略，并致力于实现实验室全自动化管理，以达到高效运营与决策的目的，截至目前公司已获得3项计算机软件著作权。信息化管理优势主要体现在：公司信息化系统的功能涵盖了实验室管理、物流服务管理、客户业务管理、财务管理、质量控制管理等模块，在业务系统与管理系统上实现了高度整合与有效结合。\r\n4、人才优势\r\n试验机产品对高级专业、技术人才的综合技术能力要求较高，除了必须具备专业技术能力外，还必须深入了解行业的业务流程、标准和相关技术，从而保证了公司研发的产品不仅具有技术上的领先优势，而且可以比较准确地把握并满足客户的需求。\r\n公司本着引进、培育和聘请结合的方针，重视技术人才人引进与培养，已组建一支核心技术团队。同时，公司依托内部师资力量，并通过与大专院校的教学合作，培育了一批积极向上的年轻人作为技术人才的后备力量。\r\n二、公司竞争劣势\r\n1、公司资本规模偏小\r\n公司设立以来主要依靠自身的积累发展，目前的规模相对偏小。随着公司开发技术所需硬件条件的提高、业务的不断扩大和客户需求的增加，将导致公司未来可能出现资本投入不能及时满足市场和竞争需求的状况。\r\n2、间接融资困难\r\n由于公司是尚处于快速发展阶段，缺乏获得与公司发展速度相匹配的资金支持。因此资金压力成为公司近年来快速发展和规模化经营的瓶颈。3、高端人才尚显不足\r\n随着公司业务的快速发展，公司需要大量人才充实到研发、销售和管理环节。但作为一家中小企业，公司虽然已经建立人才激励机制，但在吸引高端人才方面仍显不足，这对公司的长远发展提出了挑战。</p>', '<p>&nbsp; &nbsp; 市场分析\r\n中国商务研究网统计数据显示2012年1-12月全国仪器仪表制造业总产值为6528.14亿元，累计增长率为20.08%；出口交货值为1084.46亿元，累计增长率为17.22%，可知我国仪器仪表行业发展形势有所放缓，仪器仪表行业产销及出口增速均相对平缓。\r\n金属、非金属、高温合金、高分子化合物等材料若要达到“物尽其用”，除了结构设计、加工工艺等影响因素外，其物理性能也是一个不可或缺的重要因素，试验机便是用于测量材料物理性能的首选仪器和必备工具。随着全球科学技术的发展与工业生产要求的提高，曾经“冷僻”的试验机行业如今已走出“深闺”，日益向人们彰示这一行业的市场潜力与强劲的发展势头，2012年初仪器仪表行业协会数据预计中国试验机市场销售总额2012年可高达40多亿人民币。2013年2月20日，中国商务研究网公布试验机行业统计数据，2012年1-12月全国试验机制造总产值为81.73亿元，累计增长率为24.42%；出口交货值为8.48亿元，累计增长率为20.25%。\r\n伴随着基础战略产业和现代制造服务业的发展，各行业对新材料、半成品、结构件、整机整车和各类工程项目的检测需求越来越多，检测标准也有了更多、更高、更复杂化的要求，这些为试验机行业的发展带来了新的机遇。\r\n试验机市场前景如此大好，但我国试验机制造企业技术研发投入普遍不足，产品更新速度缓慢，且90%以上试验机高端的市场由国外仪器厂商占有，国产仪器厂商处于相对弱势的位置。高端精密仪器严重依赖进口，我国在科学仪器的研究和制造方面与发达国家相比差距不是缩小，而是逐步拉大。\r\n1、测试对象发展\r\n材料性能的研究起始于欧洲工业革命时期，当时主要是利用机械测试设备进行静态试验，用以评价材料在拉压和弯曲载荷作用下的力学特征。近几年，合金材料、聚合物材料、陶瓷材料、超导材料等新材料的开发与使用，极大地拓展了试验机的应用领域。\r\n目前，试验机主要针对材料的强度、刚度、硬度、弹性、塑性、韧性、延性、表面与内部缺陷等参数进行力学性能测试和分析研究，可以广泛地应于在矿企业、计量部门、科研院所的现场和实验室，具体领域涉及到航天航空、机械制造、石油化工、食品、医药包装、车辆制造、电线电缆、纺织纤维、塑料橡胶、建筑建材等各行各业。\r\n(1)“大”：近几年，我国航空航天事业发展很快，诸如导弹、火箭这样的大型结构件越来越多。另外，我国将逐步开放3000米以下的低空领域，如此以来，低空飞机的市场需求将会大幅提升，这些都将大大促进试验机往“大”的方向不断拓展。\r\n(2)“小、精”：精度是各种仪器设备永远不变的追求之一，试验机亦不例外。与航空航天领域不同的是，在生物医学工程方面，人们需要对一些微小材料、微小部件进行性能评价，如人体骨骼、眼睛的巩膜等生物材料，其感应量在0.1N，而通常的试验机精度很难达到，这就要求厂家能够提供更为小巧、灵敏的试验机“精”品。\r\n(3)“环境模拟”：目前，环境模拟技术已成为试验机技术发展的一个重要方向。随着工业的发展，材料测试不再局限于力的模拟，对于极端试验条件下的环境模拟要求也越来越多：超高压、超高温、超低温、超真空、超高强、超辐射、耐腐蚀等。例如，液氧、液氮、液氢的储存罐材料要模拟航空航天环境，以便能更为精准地测试材料的力学性能。\r\n2、试验技术的发展\r\n20世纪引入液压伺服技术与电子计算机技术后，试验机测试技术实现了过去人工操作不可能完成的试验，使材料性能研究达到了一个全新高度。进入21世纪以来，全球科技飞速发展，材料的工作条件越来越复杂，对材料力学性能测试的要求也不断提高。目前试验机技术的发展方向主要包括“大、小、精”以及“环境模拟”。\r\n目前，环境模拟技术已成为试验机技术发展的一个重要方向。随着工业的发展，材料测试不再局限于力的模拟，对于极端试验条件下的环境模拟要求也越来越多：超高压、超高温、超低温、超真空、超高强、超辐射、耐腐蚀等。例如，液氧、液氮、液氢的储存罐材料要模拟航空航天环境，以便能更为精准地测试材料的力学性能。\r\n试验机一直是欧美国家对我国尖端科研课题限制出口的产品，因此，打造我国试验机民族品牌，增强国产试验机的市场竞争力显得尤为重要。面对当前进口产品的竞争，我们期待国内试验机企业走自己的路，做出属于我们自己的试验机来。</p>', '<p>&nbsp; &nbsp; 公司利用目前已有的遍布于全国10多个省市自治区的经销网络，产品经销代理商20余家。在销售的同时我们积累客户对产品的评价测试资料和使用资料，不断完善产品。同时建立重要客户资料库，对重要客户进行定期不定期的回访，以此与客户保持良好的沟通，并对客户提出的问题切实及时认真的加以解决。利用优质的售后服务，提升品牌形象，扩大销售量。针对各重点客户，公司每月举办客户培训班，提高客户产品认知度的同时，无形中进行了产品推广。同时利用产品性价比的优势打入国际市场，出口创汇。</p>', '<p>&nbsp; &nbsp; （1）宏观经济波动风险\r\n仪器仪表行业作为国民经济的支柱产业之一，其行业发展与宏观经济运行密切相关。从长期看，仪器仪表行业受国家宏观经济发展水平和发展周期的制约较为明显； \r\n（2）技术和产品创新的风险\r\n材料试验技术是将力学原理和技术应用于材料性能检测验证而产生的技术，是当代材料科学发展的重要前沿领域之一。目前各行业对材料质量控制的要求不断提高，不可再生能源的匮乏也使得研发替代性可再生材料的需求不断增强，因此材料试验行业进入了快速发展阶段。材料试验机不同于其它机电设备，搭建一个高水平的材料检测技术平台，不仅需要合理的机械、电力、仪器原理和技术，也要有现代化的设计、生产、实验室管理以及严格的标准和质量控制体系。若本公司对技术和产品的市场发展趋势不能正确判断并适时调整自身研发策略，在研发设施、研发人员和研发资金投入方面不能继续保持或增加，技术创新不能成功转化为产品创新，都将导致公司的市场竞争力下降。\r\n（3）产能不足风险\r\n随着对市场开拓力度的加大以及市场需求的不断增加，本公司产能不足的风险日益突出。现有厂房、设备及人员即使全年保持满负荷的生产，产量仍仅能在目前的基础上再扩大20%—30%，无法满足日益增长的市场需求。若公司不能跟随市场需求扩大的步伐，将无法保持目前占据优势的市场份额、丧失领先的市场地位，因此公司产能不足的风险较大。\r\n（4）人才缺失和知识产权被侵权的风险\r\n公司是国内试验机行业的领军企业，进行各类材料检测试验所依赖的核心技术全部是公司自主研发取得的各项专利，由于国内材料试验技术和人员都相对欠缺，因此公司经营对参与研发的技术人员存在依赖，技术的泄密和核心技术人员的流失都将会对本公司的生产造成较大影响。\r\n（5）销售渠道管控风险\r\n公司的材料试验机种类繁多，涉及的行业领域非常广，设备体积大、单价高、专业性强、组装周期长，因此自营销开始至设备运行的整个销售周期时间长、范围广、技术性强。要与客户建立并保持良好的长期合作关系，除产品本身的质量和性能优势外，极大地依赖于销售人员的职业水准。因此，本公司市场开发及维护对销售人才的依赖性较强，存在销售渠道管控的风险。\r\n（6）回购风险\r\n发起人及其控股股东是否有能力回购投资份额与其是否有足够的现金流相关，因此存在发起人推迟回购或无法回购的风险。</p>', '<p>&nbsp; &nbsp; 卢长城先生，公司董事长，1951年出生，中国国籍，无境外永久居留权，甘肃工业大学机械系铸造专业，本科学历。1977年3月至1979年8月，在天水红山试验机厂一车间任技术员；1979年9月至1983年2月，在天水红山试验机厂一车间任主任；1983年3月至1988年10月，在天水红山试验机厂厂部任技术副厂长；1988年10月至1993年2月，在天水红山试验机厂厂部任厂长；1989年9月至1992年4月，在中国衡器协会任副会长；1992年4月至1993年2月，在西部试验机检测装备集团公司任总经理；1993年3月至2002年5月，在上海华龙测试仪器厂任总经理兼总工程师；2002年6月至2008年9月，任公司总经理兼执行董事；2008年10月至2013年3月，任公司执行董事；2013年3月至今，任公司董事长。\r\n卢丹先生，公司股东、董事、总经理，1978年出生，中国国籍，无境外永久居留权，上海电视大学工商管理专业，本科学历。2000年10月至2003年5月，在上海华龙测试仪器厂任市场部平面设计师；2003年5月至2004年10月，任公司市场部平面设计师；2004年10月至2006年10月，任公司研发中心设计师；2006年10月至2007年10月，公司制造部计划员；2007年10月至2008年10月，任公司文控中心主任；2008年10月至2013年3月，任公司总经理；2013年3月至今，任公司董事、总经理。</p>', '', '', '10', '1'), ('6', '1', '苏州道诚科技股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '苏州道诚科技股份有限公司融资', '2014-07-15 09:05:45', '2014-10-16 09:06:00', '2014-08-15 07:00:00', '0', '56', '1000.00', '800.00', '10.00', '2', '9', '4', '3', '12', '29', '11', '<p>&nbsp; &nbsp; 重要提示\r\n1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 公司介绍\r\n苏州道诚科技股份有限公司成立于2000年， 现注册资本850万元，是一家专业从事为金属半成品及成品加工企业提供供应链解决方案的供应链服务商。公司为客户提供专业的半成品金属品供应链管理服务，为金属制品及相关终端客户提供除核心业务（包括产品设计、开发、制造、销售、市场等）以外的供应链环节服务，具体包括如传统的原材料代理采购服务、供应商管理库存（VMI）、原材料加工、仓储、物流运输等服务，涉及的产品种类包括：镍、钴、铜、铝等有色金属，钼铁、钨铁、钒钛等铁合金，金属铬、钼、钨等纯金属以及各类炼钢辅料。</p>', '<p>&nbsp; &nbsp; 投资者保护机制\r\n1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 目前道诚科技正在拟定一项融资计划，尚未公布。</p>', '', '<p>&nbsp; &nbsp; 优势和劣势\r\n一、公司竞争优势\r\n（1）技术优势：\r\n公司团队凭借多年的经营经验，在贵金属和有色金属供求市场方面积累了丰富的经验，从而能够在最大程度保证原材料采购价在相对较低水平的情况下，为下游企业原材料采购提供合理的价位，使其生产成本保持在行业内较低的水平。同时公司依托信息化系统以及专业化的供应链管理人才队伍，能为下游客户提供较强的库存管理服务。公司针对客户的生产模式和周期，为客户量身定制供应链管理服务，在保证客户每个生产阶段金属原材料充足的前提下，减少下游客户在原材料库存上积压的流动资金，使下游企业将资金运用在自身的核心生产上。\r\n（2）信息平台的支撑：\r\n公司整合了专业软件中的供应链管理模块，将公司多年搜集和积累的下游企业信息归档整理并进行数字化管理。该系统会提前提醒公司未来下游企业对贵金属和有色金属的需求类别及数量，公司可依照系统信息和实际情况对金属品种和数量的采购进行调整。公司信息系统能智能化管理客户的基本信息，为公司大规模扩展业务提供了强大的信息技术支持。\r\n（3）客户满意度优势及细分行业先发优势：\r\n公司是目前国内最早涉足贵金属和有色金属供应链行业的企业之一。公司与多家金属制造企业建立了战略合作关系，尤其在江苏地区更是形成了良好的市场基础。客户对公司服务质量、效率和满意度较高，品牌认可度强，同时行业经验的积累和品牌知名度的不断提升也成为了公司未来发展的重要支撑，构成了公司重要的核心竞争力。\r\n(4)较强的上下游议价能力\r\n对于供应链管理的上游行业如运输业、仓储业、报关业等，由于竞争非常充分，公司在选择供货商方面拥有较大的余地，一方面可选择优秀的长期合作伙伴，另一方面可利用规模效应获得较好的价格优惠。\r\n对于下游客户，公司以提高客户效率和满意度为标准，通过个性化方案和优质服务提高客户粘度。因此，公司拥有较强的议价能力，按业务量收取的费率相对较高，保证了公司较强的盈利能力\r\n二、公司竞争劣势\r\n(1)间接融资困难\r\n由于公司处于快速发展阶段，扩大企业规模需要大量资金的投入，仅依靠自身利润积累不能满足资金的大量需求，缺乏能与公司发展速度相匹配的资金支持。同时，资金短缺也影响了公司进行信息化建设与引进先进技术，进一步制约公司业务的发展与盈利水平的提高。因此资金压力成为公司近年来快速发展和规模化经营的瓶颈。\r\n(2)高端人才尚显不足\r\n随着公司业务的快速发展，公司业务范围不断扩大，客户群体逐渐增多，这种趋势需要公司有大量新型专业人才与其匹配。公司需要大量人才充实到供应链设计和管理环节。当前公司人才结构方面呈现出不平衡的特点，作业类人员充足，而技术类、营销类、管理类人才，特别是复合型人才十分缺乏，人才不足与日益增长的业务需求之间的矛盾将不断凸显。\r\n(3)抗风险能力较弱\r\n公司目前主要提供贵金属和有色金属供应链管理服务，由于产品结构比较单一，且受上下游行业影响较大，抗风险能力相对较弱。贵金属和有色金属的价格波动比较大，所以公司对单价的判断会直接影响公司的利润，如果未来有突发未能预料的价格变动会对公司产生较大影响。</p>', '<p>&nbsp; &nbsp; (1)有色金属行业市场及前景\r\n有色金属工业是国民经济重要的基础原材料产业，产品种类多、应用领域广、产业关联度高，在经济社会发展以及国防科技工业建设等方面发挥着重要作用。铜、铝、铅、锌等有色金属产品作为经济建设的重要中间原材料，是国民经济中大部分行业的必备材料之一。我国已经发展成为全球制造业中心，有色金属产业在技术进步、改善品种质量、淘汰落后产能、开发利用境外资源方面迅速发展，生产和消费规模不断扩大。\r\n有色金属是我国最早进入期货市场的行业，也是运行最为成熟、市场化和国际化程度最高的代表性行业。历经近20年发展，我国有色金属行业和期货市场实现了共同成长和共同发展。期货市场推动了我国有色金属行业的可持续发展，有色金属行业不断做大做强，我国已经连续11年成为世界最大的有色金属生产国和消费国。我国有色金属期货市场从无到有、从小到大，已经成为全球仅次于伦敦金属交易所LME的重要市场。“十一五”期间，铜、铝、铅、锌、镍等10种产品的64个品牌已先后在伦敦金属交易所（LME）注册。2013年11月26日上海期货交易所印发了关于《阴极铜、铝、锌、铅四个期货合约修订案》，从12月20日起，国内开展连续交易的期货品种将从贵金属扩展到铜、铝、锌、铅等有色金属品种。“夜盘”交易将使投资者有了更多的风险对冲和投资机会，期货公司也将从连续交易品种的扩容上获得更多的机遇，将有利于提高铜铝铅锌市场的活跃度。 \r\n根据工信部《2013年有色金属工业经济运行情况》预测，未来我国有色金属工业生产、消费、投资仍将小幅增长，行业发展面临的资源、能源、环境压力日益增大，产业结构调整将进一步深化。\r\n从国际环境看，全球经济逐步恢复增长，发展中国家尤其是新兴经济体快速发展，为全球有色金属工业提供了持续的发展空间。经济全球化深入发展，有利于我国企业广泛参与全球经济合作与竞争。同时国际金融危机影响深远，全球经济治理和均衡增长趋势明显，国际贸易保护主义抬头，围绕资源、市场、技术、标准等方面的竞争更加激烈。应对全球气候变化，减少二氧化碳等温室气体排放的新形势，使有色金属工业发展的外部环境更趋复杂。\r\n从国内发展环境看，随着工业化、城镇化、信息化深入发展，内需进一步扩大，交通、能源、保障性住房、城镇基础设施和新农村建设等重大工程的继续实施，为有色金属工业发展带来了更大市场空间。战略性新兴产业及国防科技工业的发展，需要有色金属工业提供重要支撑，在高精尖产品发展方面需要重大突破。上下游产业相互融合、企业重组步伐加快，为有色金属工业发展增添了新的活力。同时，随着建设资源节约型、环境友好型社会战略的推进，对节能减排、保护环境提出了新的、更高的目标和任务，能源、资源和生态环境的制约因素日趋强化，迫切要求有色金属工业加快转变发展方式，加速实现转型升级。\r\n(2)现代物流业市场及前景\r\n在我国经济高速发展和全球经济一体化的背景下，我国物流需求出现持续快速增长，在经济持续较快增长和一系列政策措施的推动下，我国物流业发展取得了新进展，物流专业化、社会化进程在结构调整中明显加快，社会物流总额不断扩大。\r\n报告显示，2013年中国社会物流总费用增长9.3%，增幅比上年回落2.1个百分点。其中，运输费用5.4万亿元，同比增长9.2%，其中保管费用3.6万亿元，增长8.9%；管理费用1.3万亿元，增长10.8%。去年我国社会物流总额197.8万亿元，同比增长9.5%，增幅比上年回落0.3个百分点。去年我国物流业增加值3.9万亿元，同比增长8.5%，增幅比上年回落0.7个百分点。物流业增加值占GDP的比重为6.8%，占服务业增加值的比重为14.8%。\r\n物流业的发达程度和水平高低是一个国家现代化程度和综合国力的重要标志之一，现代物流已经成为发达国家最具普遍影响力的经济基础和“朝阳产业”。因此从整体看，“十二五”时期将会是我国物流业在调整振兴基础上进一步夯实产业基础、步入快速发展新阶段的重要时期，物流行业将迎来发展的持续上升期。\r\n面对日益激烈的市场竞争环境，企业在将资源集中于核心竞争力的前提下，必然将其它非核心竞争业务交给外部企业。企业通过物流外包可以降低产品或服务的成本，减少固定资产投资，提高企业适应市场需求变化的能力。物流外包模式从最初的制造功能外包逐步演化为从采购、生产至分销的供应链集成外包。2000-2007年我国物流外包市场的年复合增长率达到25%，目前超过90%的外资企业有外包需求，但我国物流外包市场还处于起步阶段，目前外包比例不到10%。随着我国产业结构的不断升级和基础设施的不断完善，我国物流外包市场增速将会加快。</p>', '<p>&nbsp; &nbsp; 本公司区别于传统的有色金属贸易企业，突破原有的用户发出订单进行补货的传统做法，通过对供应链各环节进行计划、协调、控制和优化，以及商流、物流、资金流、信息流的整合，为客户提供“一站式供应链管理服务”。\r\n公司在不断拓展及深化服务产品和服务内容(即纵向专业化)的基础上，结合先进的信息系统、经验丰富的专业团队和高效严谨的风险与内部控制体系，对企业供应链环节尽可能的渗透，使企业能尽可能的把非核心竞争力，即供应链环节业务外包给本公司(即横向一体化)。由客户订单需求开始，范围涵盖并贯穿从原材料采购、加工、运输和仓储，直到把产品送到最终用户的各项业务，有效帮助客户企业降低采购成本，提高供货速度，减少缺货，降低库存，并通过有效的预测使企业更好安排生产，提高企业核心竞争力。\r\n公司多年从事有色金属和铁合金贸易，积累了大量的行业数据和经验，同时通过向专业的数据库企业购买相关下游企业的数据信息，运用专业经验和数据技术人员，建立了区域性的数据管理系统。通过公司自有的数据库和下游企业采购模型，从而可以准确地判断下游企业的采购量和采购周期。同时公司团队运用多年累积的自身经验和行业数据，通过市场行情分析，在价格低谷时将下游企业所需的原材料采购并仓储，待下游企业需要时直接运输到下游企业的生产车间。通过以上方式使得材料采购成本得以有效降低，由此实现公司与客户发展过程中的双赢。\r\n公司以建立的数据库为基础，为客户提供高附加值的供应链管理服务。公司通过自己的物流和仓储实现了下游企业零库存管理，为下游企业节省了大量的流动资金，使其可专注于生产和技术开发等核心环节，从而提高了公司在传统有色金属贸易行业中的核心竞争力。</p>', '<p>&nbsp; &nbsp; （1）宏观经济波动风险\r\n有色金属行业作为国民经济的支柱产业之一，其行业发展与宏观经济运行密切相关。从长期看，该行业受国家宏观经济发展水平和发展政策的制约较为明显； \r\n（2）人才缺失的风险\r\n随着公司业务的快速发展，公司业务范围不断扩大，客户群体逐渐增多，这种趋势需要公司有大量新型专业人才与其匹配。公司需要大量人才充实到供应链设计和管理环节。当前公司人才结构方面呈现出不平衡的特点，作业类人员充足，而技术类、营销类、管理类人才，特别是复合型人才十分缺乏，人才不足与日益增长的业务需求之间的矛盾将不断凸显。\r\n（3）市场价格波动影响\r\n由于铜、铝等原材料价格较高，一般相关企业的使用量较大，企业用于购买铜、铝的资金所占流动资金比例较高。铜铝价格近两年的大起大落，人民币双向波动、供应过剩、需求增长乏力等诸多因素将导致未来有色金属价格波动多变，这对企业的稳定运营以及长期的资金规划安排带来负面影响。同时对于铜铝材简单加工企业而言，原材料成本占总体成本的主导地位，铜铝价格的频繁波动对产品议价带来一定难度，铜铝价格的频繁波动会影响下游企业铜铝型材或合金的库存量，并加大高库存的风险，这都将对企业正常生产产生一定的不利影响。\r\n（4）回购风险\r\n发起人及其控股股东是否有能力回购投资份额与其是否有足够的现金流相关，因此存在发起人推迟回购或无法回购的风险。</p>', '<p>&nbsp; &nbsp; 袁掌兴先生，公司董事，1963年出生，高中学历，中国国籍，无境外永久居留权，1979年9月至1981年9月，入伍。1981年10月至1999年10月，任江苏省苏州市冶塘镇第二砖瓦厂销售；2000年1月至今任职于苏州道诚科技股份有限公司，现任公司董事。\r\n范玉英女士，公司董事，1963年出生，高中学历，中国国籍，无境外永久居留权，1982年9月至1995年6月，任江苏省苏州市冶塘镇平瓦厂会计；1995年4月至1999年12月，担江苏省苏州市冶塘镇村委会计；2000年1月至今任职于苏州道诚科技股份有限公司，现任公司董事。\r\n范袁鋆先生，公司董事、总经理，1986年出生，中国国籍，无境外永久居留权。2005年9月至2009年6月，复旦大学法律专业，本科学历。2009年7月至今任职于苏州道诚科技股份有限公司，现任公司董事兼总经理。\r\n谢丽园女士，公司董事、财务负责人，1986年出生，中国国籍，无境外永久居留权。2005年9月至2009年6月，南京财经大学英语专业，本科学历。2009年7月至今任职于苏州道诚科技股份有限公司，现任公司董事、财务负责人。\r\n周任琪先生，公司董事，1987年出生，中国国籍，无境外永久居留权。2005年9月至2009年6月，南京审计学院审计学专业，本科学历；2009年7月至2011年2月，任苏州衡平会计事务所审计专员；2011年2月至今任职于苏州道诚科技股份有限公司，现任公司董事。</p>', '', '', '9', '0'), ('8', '8', '上海威拿卡商务服务有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '上海威拿卡商务服务有限公司融资', '2014-04-02 15:33:33', '2014-07-16 15:33:40', '2013-12-30 09:26:15', '0', '36', '3000.00', '2000.00', '10.00', '9', '11', '4', '3', '9', '7', '9', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 上海威拿卡商务服务有限公司（以下简称“威拿卡”或“公司”）成立于2010年9月，是一家电子商务和供应链管理的现代服务品牌的综合企业，为客户在预付卡发行、数据管理、商务智能分析、数字营销推广、CRM客户关系管理等方面提供有效的整体解决方案。本次项目威拿卡预计通过申请第三方支付牌照，利用现有企业资源与合作客户，开展可跨地区、跨行业、跨法人使用的多用途商业预付卡业务，以有效整合企业客户资源，更大程度为消费者提供便捷、全面、安全的消费服务，同时开发威拿卡电子商务服务平台，大力拓展B2B（企业对企业的电子商务模式）、B2C（企业对客户电子商务模式）业务。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 威拿卡项目总融资3000万元；融资方式为公司股东认领其中1000万元，其余2000万元部分向投资者股权众筹筹集资金。\r\n1、股权众筹：2000万元，起始金额10万元，认购股份按金额赠送等额威拿卡股权。\r\n2、本项目周期为3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）；\r\n4、项目满五年后威拿卡有权回购所有投资份额，投资者亦有权要求威拿卡回购所有投资份额，回购价格为原认购金额的120%。\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于第三方支付牌照的申请，销售渠道拓展、硬件设备采购以及场地支出。根据中国人民银行于2010年6月21日发布的《非金融机构支付服务管理办法》，拟在省（自治区、直辖市）范围内从事支付业务的，其注册资本最低限额为3千万元人民币。\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '', '<p>&nbsp; &nbsp; 威拿卡项目总融资3000万元；融资方式为公司股东认领其中1000万元，其余2000万元部分向投资者股权众筹筹集资金\r\n1、股权众筹：2000万元，起始金额10万元，认购股份按金额赠送等额威拿卡股权。\r\n2、本项目周期为3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）；\r\n4、项目满五年后威拿卡有权回购所有投资份额，投资者亦有权要求威拿卡回购所有投资份额，回购价格为原认购金额的120%。\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于第三方支付牌照的申请，销售渠道拓展、硬件设备采购以及场地支出。根据中国人民银行于2010年6月21日发布的《非金融机构支付服务管理办法》，拟在省（自治区、直辖市）范围内从事支付业务的，其注册资本最低限额为3千万元人民币。\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '<p>&nbsp; &nbsp; 由赛迪投资顾问发布的《中国第三方支付产业发展战略研究（2011）》中显示，近年来，在世界各主要经济区域，预付卡都在以超过真实国民生产总值的增速发展。据不完全统计，目前国内预付卡消费主要集中在零售业。2010年，我国预付卡规模已突破14000亿元，成为全球第二大预付卡市场，国内预付卡产业链已相当完备。从全国格局来看，预付卡市场发展分化明显，京沪在早期已形成了具有影响力的品牌。\r\n商业预付卡的主要优势在于能够高效完成市场资源配置，实现商家与消费者的共赢。2006年商务部和国务院先后认定预付卡“债权凭证”的市场地位，使其身份合法化。经过多年的发展，预付卡作为营销、资金管理的重要工具被商业流通企业广泛应用；也作为人们日常生活中不可或缺的小额支付电子工具，被广泛应用于公共交通、通讯、医疗服务、餐饮及美容美发等各种领域；满足社会公众对支付服务多元化的现实需求，一定程度上弥补了以银行为主体的传统支付结算服务的不足。随着预付卡发卡主体的多样化，多种类型的支付公司、数据处理商、网络公司、预付款公司等参与主体增多，预付卡已经渐成产业体系。预付卡发行和使用数量快速扩张，使用范围丰富，功能不断创新，其社会和经济的影响渐强。\r\n当前我国商业预付卡行业呈现出以下几点特征:\r\n（1）政策和监管将日趋明朗，预付卡进入监管时代 \r\n由于发展前期，商业预付卡市场存在监管不严、违反财务纪律、缺乏风险防范机制、公款消费和收卡受贿等突出问题，一定程度上扰乱了税收和财务管理秩序，助长了腐败行为。2011年5月，国务院办公厅转发了七部委《关于规范商业预付卡管理的意见》，首次明确了商业预付卡的地位、作用和分类，明确了分类监管的思路。即：多用途卡由人民银行进行监管、单用途卡由商务部进行监管；明确了发卡和购买、发票和财务管理、资金管理与业务管理等制度框架。2010年和2011年先后出台的《非金融机构支付服务管理办法》和《关于规范商业预付卡管理的意见》对中国预付卡行业的发展具有里程碑式的意义，随着政策和监管将日趋明朗，中国预付卡行业目前已进入规范发展的监管时代。\r\n（2）中国预付卡市场规模迅速壮大 \r\n2011年3月国际知名研究机构麦卡托（Mercator）发布的对中国预付卡市场的第一份专题研究报告认为, 2010年中国预付卡市场规模将突破15，930.651亿元（包括公务卡、校园卡、游戏点卡、政府支出、会员卡、加油卡和通讯充值卡七大类）。根据商务部对部分地区300多家商业企业的调研数据测算，中国商业预付卡销售规模为14，203.33亿元，预付卡消费规模达10，652.50亿元；从沪深A股50家商业上市公司公布的数据测算，中国商业预付卡销售规模达为14,160.95亿元，预付卡消费规模为10,368.19亿元；根据上海银商资讯有限公司提供的交易数据测算，2010年中国商业预付卡销售规模达14,856.55亿元（不含交通、通讯、校园卡、会员卡、加油卡等），预付卡消费规模达10，399.58亿元。因此，2010年中国商业预付卡市场规模至少已突破14，000亿元，预付卡消费规模至少已突破10000亿元大关，且近年来增速达到30%左右。\r\n（3）企业客户为主、合作商户多样化、销售渠道多样化\r\n目前购买预付卡的客户多数以企业为主，主要用于解决员工福利、公务消费、商务礼品等方面的需求。这些企业集中在政府部门、企事业单位、金融企业、公关公司以及私营企业等。其中政府部门、事业单位等已经成为各发卡机构关注的重点。而个人消费者用户在发卡机构的客户比例中占据较小的份额。 \r\n从目前与第三方发卡机构合作的商户来看，合作商户类型多种多样，其中以百货、超市等大规模的合作商户是第三方发卡机构合作的优先考虑对象。主要目的是通过大规模商户来促进预付卡的消费及推广。而现有合作的商户中，已经包含百货、超市、家具建材、餐饮、娱乐、生活服务、酒店、旅游等。 \r\n现有第三方发卡机构随着业务的增加，区域范围的扩大，销售渠道由原有的单一直销方式向多渠道销售的方式转变。有些公司除了通过公司销售部门进行产品销售以外，还与代理商进行合作，利用其客户及渠道资源。另外，还通过与合作商户、银行（如渤海易生与光大银行合作）等联合发卡的方式扩大销售范围。\r\n国内著名市场调查机构艾瑞咨询认为，未来几年我国预付卡市场将呈现高速增长的态势，多用途卡的增长速度将明显超过单用途卡，监管政策的出台不会对行业造成普遍预期的巨大影响。相反，已获牌照的发卡企业将会因为竞争对手的牌照和地域限制而加速扩张，同时，由于盈利模式的限制，发卡企业将加大发卡力度以提升整体盈利水平。另外，二三线城市将成为发卡企业未来市场拓展的主要方向。</p>', '<p>&nbsp; &nbsp; 公司运用威拿卡电子支付平台，通过与大型超市、商场、企业、店铺合作，发行威拿卡多用途卡。消费者持卡消费时，公司将收取一定比例的服务手续费。在电子商务服务平台的运行方面，公司一方面促使用户关注企业的产品，另一方面不断推进技术革新，通过对消费者关注产品的种类、时间、区域、价格等参数进行科学分析，使企业及时根据分析结果完善销售体系，降低销售成本，增加产品销售收入。</p>', '<p>&nbsp; &nbsp; （1）宏观经济波动风险\r\n互联网传媒作为国民经济的新兴产业之一，其行业发展与宏观经济运行密切相关。从长期看，互联网传媒受国家宏观经济发展水平和发展周期的制约较为明显；从短期看， \r\n（2）行业竞争风险\r\n随着互联网的快速发展与普及，第三方支付的地位在逐步上升，市场需求迅速扩大，将吸引越来越多的国内外企业进入该市场，从而加剧市场竞争，为公司今后的业务发展带来市场竞争风险。\r\n目前公司的电子商务服务范围主要在上海及周边地区，尚未在全国市场形成强有力的品牌形象，公司未来将面临开拓国内新的地区市场，可能会面临其它地区市场的竞争风险。\r\n对此，公司拟采取如下措施：通过市场调查及时了解第三方支付行业的市场需求，通过移动互联网技术创新不断提高公司服务的技术含量，增强公司的核心竞争力。为目前的客户提供更广泛区域的支付服务，同时为更多地区的客户提供优质服务。公司注重建立和维护长期稳定的客户关系，重视潜在客户的开发与培养。\r\n（3）回购风险\r\n发起人及其控股股东是否有能力回购投资份额与其是否有足够的现金流相关，因此存在发起人推迟回购或无法回购的风险。</p>', '<p>&nbsp; &nbsp; 丁瑾，公司董事长，1971年出生，中国国籍，无境外永久居留权。上海大学商学院会计学专业，专科学历；2012年5月至2013年4月，在上海财经大学CFO高级研修班进修；2013年2月至今，在澳门城市大学攻读工商管理硕士学位（MBA）。2000年8月取得助理会计师职称；2002年5月取得中级会计师职称。1993年8月至2000年12月，在华润集团(上海)有限公司先后任会计、主任会计；2000年12月至2001年9月，在上海胜康廖氏房地产开发有限公司任会计主任；2001年9月至今，在上海新高盈能源科技股份有限公司（原上海高盈石化股份有限公司）先后任总帐会计、财务经理、财务总监；2013年10月18日，在股份公司创立大会上被选举为公司董事，在股份有限公司第一届董事会第一次会议上被选举为公司董事长。\r\n胡昉成先生，公司董事、总经理，1984年出生，中国国籍，无境外永久居留权，东华大学高分子材料与工程专业，本科学历。2007年4月至2010年7月，在SK化研株式会社任质量控制专员；2010年7月至2012年2月，在阿克苏诺贝尔集团任技术支援；2012年2月至2013年9月，在上海新高盈能源科技股份有限公司（原上海高盈石化股份有限公司）先后任总经理助理、开发部经理； 2013年10月至今，任公司董事兼总经理。\r\n陈学琪先生，公司股东、职工监事，1964年出生，中国国籍，无境外永久居留权，专科学历。1996年1月至2001年9月，在灿坤集团中国市场总部任资深IT专员；2001年10月至2002年6月，在上海三禾信息股份有限公司任资深IT专员；2002年7月至2003年2月，待业；2003年3月至2010年12月，在上海风采航运旅游有限公司任资深IT；2011年1月至今，在公司IT部任部门经理。</p>', '', '', '4', '1'), ('9', '9', '云南麻袋广告传播有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '云南麻袋广告传播有限公司融资', '2014-07-16 15:18:24', '2014-09-16 15:18:27', '2014-08-06 09:31:30', '0', '89', '2000.00', '2000.00', '10.00', '9', '4', '1', '3', '5', '12', '4', '<p>&nbsp; &nbsp; 1、企业(个人)发起的众筹项目申请在本众筹平台进行信息展示,本平台不对企业(个人)的经营风险、募集风险、诉讼风险以及众筹项目的投资风险或收益等作出判断或保证。\r\n\r\n2、投资者认投本项目，应当认真阅读本说明书及有光信息披露文件，对企业(人)信息披露的真实性、准确性进行独立分析，并据以独立判断投资价值，自行承担投资风险。\r\n\r\n3、企业(人)保证本项目融资说明书不存在任何虚假、误导性陈述或重大遗留，并对真实性、准确性负个别和连带责任。</p>', '<p>&nbsp; &nbsp; 云南麻袋广告传播有限公司（以下简称“云南麻袋”、“公司”）成立于2014年2月26日，注册资本1000万元人民币，是香港宣祥事业集团旗下的企业之一，云南麻袋主要从事企业的产品和服务的信息推广工作，广告费通过点对点的精准投放的目标客户市场，以最少的广告资金获得最有效的广告效益。公司的宗旨是：为市场提供一个环保节能、精准投放、集公益、福利、政府的传声筒、就业一体的多元化互联网广告平台。</p>', '<p>&nbsp; &nbsp; 1、推荐人有义务对发起人的信息展示、资金募集、资金使用、项目运作、收益和红利发放等进行持续督导，在持续督导过程中遇项目重大事件及时予以披露并采取整改措施；\r\n\r\n2、发起人拥有完善的企业治理机制，议事规则，在经营过程中严格遵照公司章程规定，股东大会、董事会、监事会的决议进行管理；</p>', '<p>&nbsp; &nbsp; 发起人为众筹网,按本网站规定及成长板信批要求予以披露。</p>', '<p>&nbsp; &nbsp; 昆明麻袋项目总融资2000万元；融资方式为向投资者股权众筹筹集资金。\r\n1、股权众筹：2000万元，起始金额10万元，认购股份按金额赠送等额麻袋股权。\r\n2、项目建设期3年，从第4年开始，每年分红一次，根据项目当年实际盈利情况进行分红；\r\n3、单个股东最低认购金额10万元（含），最高认购金额500万元（含）；\r\n4、项目满五年后云南麻袋广告有限公司及其控股公司有权回购所有投资份额，投资者亦有权要求云南麻袋广告有限公司及其控股公司回购所有投资份额，回购价格为原认购金额的120%\r\n5、本次众筹项目主要是引入项目投资者，本次募集资金主要用于项目前期建设及后期运营；募集资金在完成募集后打入新设有限合伙企业专用账户；\r\n6、本次投资产生的税费由投资者按国家税收法律、法规有关规定自行处理。</p>', '', '<p>&nbsp; &nbsp; 1、公司竞争优势\r\n\r\n公司正在积极准备申请软件著作权登记所需要的材料，公司计划将麻袋App以及软件中的核心模块向中国版权保护中心申请软件著作权登记。预计申报材料能在30天内准备好，按照中国版权保护中心规定，在接到申报材料开始受理日的60天内即可完成受理申请的审核。因此，预计在未来90天内，公司即将完成麻袋App及其核心模块的软件著作权登记。\r\n\r\n麻袋App的雏形是由软通动力协助开发的，根据协议本公司拥有麻袋App的所有权和使用权，同时拥有麻袋App所有源代码，并对软件所产生的收益拥有100%的所有权。公司计划对麻袋App的未来版本和核心模块进行自主开发，避免核心技术和代码外泄的风险。公司已经在和清华大学、交通大学和哈尔滨工程大学等国内知名高等院校进行软件合作开发事宜的洽谈。\r\n\r\n公司除了让用户通过看广告、看新闻赚钱的方式从而实现为公司广告客户进行信息推广外，将逐步推出麻袋优品网上商城兑换、返现、求职、视频广告等多样化软件模块以满足不同用户多样化的需求。公司计划从目前的分类目标人群的广告投放到未来个人定向广告投放的策略，将是麻袋成为互联网媒体精准投放行业的领先企业。\r\n\r\n公司目前有15项商标正处于受理阶段，商标的注册将很好地保护公司无形资产,避免同行业不正当竞争。公司正在注册的15项商标详见（附件1. 商标注册清单）。公司在2014年6月前将有3项软件著作权可获的中国版权保护中的登记认证。\r\n\r\n2、公司竞争劣势\r\n公司目前的竞争劣势主要是三个方面：资金和技术人才的不足。互联网媒体的进入门槛比较高，尤其是在资金和人才方面。公司前期在软件设计和研发方面投入了大量的资金，而公司产品的推广和市场培育也需要大量资金去推动。公司目前就存在资金不足的情况，所以公司计划在短时间内进入资本市场（股权托管交易中心），通过资本运作来清除企业未来发展道路上的资金障碍。\r\n其次互联网媒体的核心竞争力就是技术，而强大的核心技术是依托核心技术人员的能力。在互联网媒体高速发展的形势下，核心技术人员尤为稀缺。同时为了避免公司核</p>', '<p>&nbsp; &nbsp; 公司现阶段处于互联网传媒行业，公司主要产品麻袋App既是移动终端广告平台，同时又是大数据产业的前端媒介，其最终将涉足大数据行业领域。\r\n1. 互联网传媒行业现状\r\n中国自1994年接入互联网之后，互联网普及率和网民数量逐年快速增加。截至2013年12月，中国网民规模达6.18亿，互联网普及率为45.8%。其中，手机网民规模达5亿，且继续保持稳定增长。在互联网盛行的同时，互联网传媒也应运而生，相较于传统的传播媒体，互联网媒体借助网络技术的发展，以其特有的信息容量大、覆盖范围广、传播速度快、互动性强等一系列特点，迅速成为传播领域的一大主流，占据着重要的市场份额，因此互联网媒体被称之为继报纸、广播、电视等传统媒体之后的“第四媒体”。\r\n互联网媒体目前主要应用在网络社交、资讯浏览、信息搜集、广告宣传、休闲娱乐等方面，调查显示 2012年-2013年中国网民最为依赖的3种网络应用则为及时通信、网络新闻和搜索引擎；而论坛/BBS、微博年增长率呈现最大下滑，分别为：-19.3%、-9.0%； 社交网站、网络游戏、电子邮件、网络音乐增长不足5%，行业呈现发展疲态，而博客和个人空间的使用年增长率为17%。\r\n此外，伴随着移动终端技术的普及和大范围应用，互联网传媒也开始把发展目标定位在开发手机用户上。截至2013年12月，中国手机网民规模达到5亿，年增长率为19.1%，继续保持上网第一大终端的地位。网民中使用手机上网的人群比例由2012年底的74.5%提升至81.0%，远高于其他设备上网的网民比例，手机依然是中国网民增长的主要驱动力。\r\n2. 互联网传媒行业未来发展\r\n互联网媒体近年来保持着强劲的增长趋势，其中以移动终端的增长率最为突出。专家指出在未来几年的发展中，中国互联网传媒将会向着以下几个方向发展\r\n首先，互联网媒体将继续着力探索网络传播的规律和方向，提高信息的准确性和完整性。\r\n其次，在互联网有关法律法规逐渐规范的将来，法制化管理与资本化运作相结合将是未来发展的一大趋势，在绝对控股的条件下引入公众股，在国内证券市场上市；或是由国家拥有或由国家控股的网络公司来收购或兼并在传媒业有竞争优势的媒体，然后在证券市场上市。\r\n最后，网络媒体与传统媒体的相互利用、相互融合势在必然，在融合基础上，传统媒体找到创新之路，网络媒体的发展也获得强大的新闻人才竞争优势，壮大开发与利用社会资源的能力。网络媒体在不远的将来，通过智能手机、交互电视、多媒体传播等将为人们提供更为便捷的服务。\r\n3. 大数据行业的现状\r\n大数据产业经过多年的发展，已经进入了3.0时代， 目前大数据的发展阶段主要分为4个环节：采集大数据、导入/预处理、统计与分析和挖掘。\r\n国外大数据行业约有1000亿美元的市场，而且每年都以10%的速度在增长，增速是软件行业的两倍。中国大数据应用市场已然显露出冰山一角，2012年市场规模达到4.5亿元， 2013年增速将达到77.8%，达到8.0亿元，产业发展潜力非常巨大，未来三年内有望突破40亿元，2016年有望达到百亿规模。\r\n大数据颠覆传统产业：随着大数据时代的到来，越来越多的企业将基于大数据进行商业模式的创新，甚至跨界涉足其他产业，并对该产业形成巨大的冲击。金融、电信、教育、医疗等各个产业未来都将会感受到大数据的颠覆力量。\r\n4. 大数据行业的未来发展\r\n大数据由网络数据处理走向企业级应用，合理有效的利用数据，能够为企业创造更大的竞争力、价值和财富，以实现企业数据价值的最大化，更好的实施差异化竞争。\r\n移动终端数据应用将成为下一轮数据创新的中心，据赛迪顾问研究统计，2011年，中国移动互联网市场规模为2500亿元，涵盖了人们对衣食住行、安全以及社交与自我实现等不同层次的需求，其中移动终端占据移动互联网市场的78.6%，移动应用和移动软件分别占据14.9%和6.5%的市场份额，用户可以随时随地在移动中获取和处理信息。通过移动搜索、浏览器、移动商店、移动广告等产生的数据量也随之呈现几何增长，企业可借助移动终端的数据搜集及分析获取用户的切实需求，进而进一步获取有价值的信息，因此移动终端的数据应用也将成为下一轮数据创新的中心。\r\n大数据的应用促使商业模式向以“数据租售”为直接盈利的模式转变，数据的“租售”成为了一种现实存在的直接盈利手段，无论是搜索引擎行业、电子商务领域还是人力资源行业，都通过出售原始的互联网数据或者是经过处理分析的商业结果来获取直接的利益，以商品化的数据应用创造了新的商业模式。</p>', '<p>&nbsp; &nbsp; 麻袋国内所有子公司将各地区商家提供的图片、文字、视频资料统一发送至总部设计处，内容涉及商家自主研发设计、生产、制造、经销的产品、服务以及商家的企业文化等，这些信息经过筛选、整合后最终以广告形式发布在麻袋APP手机应用客户端上；用户可通过苹果商城、安卓等多种途径免费下载APP，通过观看每个商家发布在麻袋APP的广告，并正确回答由商家提出的一个问题，即可免费获得商家奖励（赠送）的相应金额，该金额为麻袋虚拟货币，暂时仅限在APP上兑换话费或等值商品，但在未来计划开通返现功能；公司将依托麻袋App获取的数据信息相应地提供较高附加值服务，利用不同功能统计出用户大数据，为客户进行精准投放广告，\r\n麻袋1.5、2.0和3.0版本将陆续推出麻袋币兑换福利彩票功能、水电费、物业费、交通违章罚款支付功能、商家调查问卷功能。调查问卷的问题将根据商家的行业类别对用户进行三至五轮的提问，根据用户回答问题的结果，筛选出可以为商家实现销售增长的目标用户人群。</p>', '<p>&nbsp; &nbsp; （1）宏观经济波动风险\r\n互联网传媒作为国民经济的新兴产业之一，其行业发展与宏观经济运行密切相关。从长期看，互联网传媒受国家宏观经济发展水平和发展周期的制约较为明显；从短期看，\r\n（2）行业竞争风险\r\n互联网媒体虽然和国外相比发展历史还不久，但是市场份额已经被行业先行者牢牢地占据，具有较高的品牌认可度例如，百度和新浪。这两大行业先行者同时具有的强大的技术团队和资金实力，若开始深入涉足移动终端互联网媒体，这将对麻袋造成重大的冲击。\r\n此外公司其中一项盈利模式是账户资金利息收入，而自从四大银行限制余额宝的购买以及降低协议存款利率开始，资金沉淀的盈利空间将大大缩小。同时银行业出台政策，开始限制资金沉淀商业模式的流动性，也对麻袋具有一定的负面影响。\r\n（3）回购风险\r\n发起人及其控股股东是否有能力回购投资份额与其是否有足够的现金流相关，因此存在发起人推迟回购或无法回购的风险。</p>', '<p>&nbsp; &nbsp; 葛继红，董事长，先后在英国嘉实多公司云南营销中心和瑞士SGS通标公司担任过业务员，销售和西南地区办事处主任。毕业后成立云南宣祥实业，在短短几年中就成就了自己的商业帝国，目前宣祥实业所经营的项目包括影视传媒、广告、互联网科技、实木家俱、木雕、字画、艺术收藏品、瓷器及工艺美术品的设计生产及销售、物业管理服务、殡葬礼仪服务及顾问咨询机构、投资、国内贸易。宣祥实业在经历了13年的发展，逐步在全国以及香港地区扩张商业帝国的涉猎范围，使得旗下管理的各个子公司逐渐壮大。\r\n李亚民，总经理兼IT部门经理，计算机信息与技术硕士，毕业于新西兰奥克兰理工大学，2009年曾参与新西兰ASB银行iOS客户端的设计和研发，熟悉并掌握C++，SQL Server，AS，Java等编程语言且具有丰富的项目编程经验。现担任昆明麻袋技术研发部总监，全程参与并指导麻袋App的开发和编程工作。\r\n王磊，IT部门主管，计算机科学与技术硕士，毕业于昆明理工大学。2010年曾担任过某智能监控系统公司的iOS系统移动平台的开发。2011年独立开发完成云南联通iOs客户端的软件开发。2012年度里完成某第三方支付的Windows客户端的编写和开发。现任昆明麻袋技术研发部副总监，参与麻袋APP的前期开发和后期维护工作。\r\n黄俊峰，IT部门总监，计算机科学与技术本科，毕业于北京航空航天大学。 2012年主导某大型连锁KTV公司业务管理APP、iPhone在线预订APP，连续18个月内同类软件App Store排名前5. 1999年至今参与大小软件项目超过20个，设计数据管理（采集、处理、分析、统计、查询等）类网站和手机App应用。\r\n李小平，设计总监，具有10年的品牌推广从业经历，曾担任两家文化传播有限公司的设计总监，主要擅长互联网、广告、公关和市场推广。李小平具有丰富的从业经验，品牌推广设计曾设计过房地产、购物中心、酒店、银行、酒类、会展、汽车等多个行业。曾参与过的重大项目有绿地和华润的多个楼盘、国窖1573、温哥华牡丹国际、成都广播电台和吉利汽车等。主要擅长互联网、广告、公关和市场推广。文鹏，策略总监，具有6年的从业经历，曾担任多家文化传播和广告传媒公司，主要擅长影视作品的策划和拍摄、形象宣传和手机应用软件的推广。文鹏曾参与过房地产、手机软件和电视的品牌推广策划，参与过的重大项目有快用APP形象宣传、《八十天爱上四川》城市宣传片和四川广电熊猫TV宣传片等。</p>', '', '', '3', '1'), ('11', '6', '信禄信股份有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '信禄信股份有限公司', '2014-04-08 06:54:46', '2014-12-18 23:51:48', '2014-01-20 03:14:15', '0', '10', '900.00', '900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '87', '0'), ('12', '6', '骏博德商贸有限公司 ', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '骏博德商贸有限公司 ', '2014-06-11 18:55:46', '2015-01-14 22:03:48', '2014-07-21 06:14:15', '0', '10', '900.00', '900.00', '10.00', '2', '5', '1', '2', '56', '19', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0'), ('13', '6', '盛世金利商贸有限公司 ', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '盛世金利商贸有限公司 ', '2014-07-16 15:51:46', '2014-10-20 06:07:48', '2014-06-23 22:14:15', '0', '10', '700.00', '200.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '26', '0'), ('14', '10', '瑞驰商贸有限责任公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '瑞驰商贸有限责任公司', '2014-07-14 04:23:46', '2014-10-14 04:51:48', '2014-07-17 05:05:55', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '5', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '56', '0'), ('15', '11', '凯金机械商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '凯金机械商贸有限公司', '2014-01-14 04:04:46', '2014-09-18 06:06:48', '2014-06-11 09:09:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '0'), ('16', '12', '鼎鑫盛明商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '鼎鑫盛明商贸有限公司', '2014-04-23 01:10:46', '2015-03-11 21:45:12', '2014-10-01 21:05:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '21', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '46', '0'), ('17', '13', '金安达商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '金安达商贸有限公司', '2014-08-08 21:05:46', '2014-10-08 23:51:48', '2014-06-24 04:44:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '57', '0'), ('18', '6', '宝钢商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '宝钢商贸有限公司', '2014-07-08 12:44:46', '2014-10-12 05:07:48', '2014-07-31 04:09:56', '1', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '7', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '89', '0'), ('19', '10', '泰士特商贸公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '泰士特商贸公司', '2014-07-28 17:07:46', '2015-12-01 05:56:48', '2014-05-20 04:55:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '0'), ('10', '12', '百事恒兴商贸有限公司 ', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '百事恒兴商贸有限公司 ', '2014-07-13 23:22:44', '2014-10-16 02:51:48', '2014-06-17 03:44:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '0'), ('20', '6', '巨晖商贸广告有限公司 ', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '巨晖商贸广告有限公司 ', '2014-07-25 04:55:46', '2014-10-01 23:44:48', '2014-07-16 05:55:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '6', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '0'), ('21', '6', '富蓝商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '富蓝商贸有限公司', '2014-07-16 06:55:46', '2014-12-23 05:44:48', '2014-07-21 07:55:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '5', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '0'), ('22', '11', '德辰商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '德辰商贸有限公司', '2014-07-23 04:06:46', '2014-11-19 23:44:48', '2014-07-14 05:07:15', '1', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '5', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '0'), ('23', '6', '宜鸿商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '宜鸿商贸有限公司', '2014-07-22 04:06:46', '2014-10-07 06:08:48', '2014-07-14 07:07:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '11', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0'), ('24', '6', '华航商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '华航商贸有限公司', '2014-07-15 07:08:46', '2014-10-21 05:06:48', '2014-07-18 04:05:15', '0', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '0'), ('25', '6', '中楚亨通商贸有限公司', 'logo/Tulips_1NtaN99.jpg', 'bd407f5c92e348f0e8712be51f13d94a_b', '中楚亨通商贸有限公司', '2014-07-15 05:55:06', '2014-10-15 05:05:48', '2014-07-14 04:05:15', '1', '10', '9900.00', '9900.00', '10.00', '2', '5', '1', '2', '56', '4', '66', '', '', '', '', '', '', '', '', '', '', '', '', null, '5', '0');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_talk`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_talk`;
CREATE TABLE `qdinvest_talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ta_user_id` int(11) NOT NULL,
  `ta_stock_id` int(11) NOT NULL,
  `ta_msg` varchar(500) NOT NULL,
  `ta_pre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_talk_9636fb2b` (`ta_user_id`),
  KEY `qdinvest_talk_be809559` (`ta_stock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `qdinvest_token`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_token`;
CREATE TABLE `qdinvest_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_user_id` int(11) NOT NULL,
  `t_token` varchar(50) NOT NULL,
  `t_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_token_3e34be49` (`t_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_token`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_token` VALUES ('8', '6', '4xN1IGQjqeSOrKhX9ZpdmYaJkzguRDn5', '2014-11-24 23:15:10'), ('9', '10', 'ud6lJ0iE1YmB5CGeNpw2PkyW4j8nSXv7', '2014-11-26 22:54:24'), ('10', '8', 'VgjxeHavJpICzwTmY10R4NhW3qoOurdE', '2014-11-10 00:55:12'), ('11', '4', 'cAKeR94OZzkEwanB1jL3WDXh05q27Nop', '2014-11-27 01:00:49'), ('12', '9', 'I0V3SrmT9pu4MU6RkcxLZAFHB5PDOhzn', '2014-11-23 00:32:02'), ('13', '15', 'VZQzvkg3oYPFwnTJhcdsXArEDbl9L7KM', '2014-11-25 13:18:01'), ('14', '16', 'au6Kv0qcRgfzmjDB5CVoktPiGhH2IX8e', '2014-11-27 01:08:09'), ('15', '2', 'DrLbahkowEYIKyR4WdcA86XNuQFZ2Hjv', '2014-11-27 01:07:06'), ('16', '18', 'x9Nc8hu3YdLPMl6pREwzIfDAa2ZoFnbK', '2014-11-25 22:58:42'), ('17', '19', 'Bty0zuiqxjmIbAVSQdsEfMKJFaUZc27X', '2014-11-26 08:43:57');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_user_focus`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_user_focus`;
CREATE TABLE `qdinvest_user_focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uf_user_id` int(11) NOT NULL,
  `uf_stock_id` int(11) DEFAULT NULL,
  `uf_bond_id` int(11) DEFAULT NULL,
  `uf_update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qdinvest_user_focus_cdfa6d86` (`uf_user_id`),
  KEY `qdinvest_user_focus_4b23856b` (`uf_stock_id`),
  KEY `qdinvest_user_focus_e5e227a1` (`uf_bond_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_user_focus`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_user_focus` VALUES ('2', '10', '1', null, '2014-11-07 16:10:08'), ('3', '10', null, '1', '2014-11-07 16:13:03'), ('19', '10', null, '15', '2014-11-23 20:30:08'), ('12', '4', null, '15', '2014-11-23 16:59:12'), ('6', '2', '5', null, '2014-11-23 14:38:59'), ('7', '15', null, '15', '2014-11-23 16:33:43'), ('10', '15', '3', null, '2014-11-23 16:34:11'), ('11', '15', null, '2', '2014-11-23 16:35:20'), ('17', '18', '5', null, '2014-11-23 17:44:48'), ('21', '10', '5', null, '2014-11-23 20:30:14'), ('22', '10', '3', null, '2014-11-23 20:30:17'), ('23', '6', null, '15', '2014-11-24 14:12:49'), ('24', '6', '7', null, '2014-11-24 23:13:48'), ('25', '6', null, '14', '2014-11-24 23:14:11');
COMMIT;

-- ----------------------------
--  Table structure for `qdinvest_users`
-- ----------------------------
DROP TABLE IF EXISTS `qdinvest_users`;
CREATE TABLE `qdinvest_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_tel` varchar(20) NOT NULL,
  `u_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `qdinvest_users`
-- ----------------------------
BEGIN;
INSERT INTO `qdinvest_users` VALUES ('5', '张明', '57799', '15684752785', '0'), ('4', '郝建', '123456', '13136652522', '0'), ('3', '李丽', '318754', '13845763468', '0'), ('6', '张强', '135746', '15683287744', '1'), ('2', '吕友波', '458954', '15842268996', '0'), ('1', '王强', '553789', '15104673458', '0'), ('7', '梁英男', '315679', '13853763145', '1'), ('8', '赵鸿强', '356765', '15842789654', '1'), ('9', '任鑫', '246778', '18746647656', '1'), ('10', 'cyd', '123456', '13136652521', '0'), ('11', '刘建', '356745', '15486372864', '1'), ('12', '张东', '647675', '13845473763', '1'), ('13', '王洪亮', '667564', '15842564985', '0'), ('14', 'test', 'test11', 'test', '0'), ('15', 'tang', 'tangbin', '18646373437', '0'), ('16', '123', '123456', '13089706902', '0'), ('17', 'Murphy', '123456', '15601622688', '0'), ('18', 'tb ', 'tangbin', '13836030532', '0'), ('19', 'ycm', '67734811', '13936395291', '0');
COMMIT;

-- ----------------------------
--  Table structure for `reversion_revision`
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_slug` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_86395673` (`manager_slug`),
  KEY `reversion_revision_816e0180` (`date_created`),
  KEY `reversion_revision_6340c63c` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `reversion_version`
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision_id` int(11) NOT NULL,
  `object_id` longtext NOT NULL,
  `object_id_int` int(11) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_version_0c5c14b2` (`revision_id`),
  KEY `reversion_version_33b489b4` (`object_id_int`),
  KEY `reversion_version_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url_name` varchar(64) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_6340c63c` (`user_id`),
  KEY `xadmin_bookmark_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_6340c63c` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `xadmin_usersettings`
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES ('1', '1', 'dashboard:home:pos', '1');
COMMIT;

-- ----------------------------
--  Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_6340c63c` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `xadmin_userwidget`
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_userwidget` VALUES ('1', '1', 'home', 'list', '{\"model\": \"auth.user\", \"title\": \"用户列表\"}');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

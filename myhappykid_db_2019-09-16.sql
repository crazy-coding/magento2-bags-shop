# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 13.210.216.205 (MySQL 5.7.27-0ubuntu0.18.04.1)
# Database: myhappykid_db
# Generation Time: 2019-09-16 04:00:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_passwords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_passwords`;

CREATE TABLE `admin_passwords` (
  `password_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password Id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Deprecated',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`),
  CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

LOCK TABLES `admin_passwords` WRITE;
/*!40000 ALTER TABLE `admin_passwords` DISABLE KEYS */;

INSERT INTO `admin_passwords` (`password_id`, `user_id`, `password_hash`, `expires`, `last_updated`)
VALUES
	(1,1,'89e738c7166686b926ae79067ef34f873d156c9a787896568cc0ac8e4d473288:hY06CxUL7De3pa3x:2',0,1566509071),
	(2,2,'8c0a881d7f3e596261877841f29c585ec7a6bd7fe62d4ccf0d944bfcd3604de3:MIoy7hP61Fhn9gLQ:2',0,1568433345);

/*!40000 ALTER TABLE `admin_passwords` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_system_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_system_messages`;

CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

LOCK TABLES `admin_system_messages` WRITE;
/*!40000 ALTER TABLE `admin_system_messages` DISABLE KEYS */;

INSERT INTO `admin_system_messages` (`identity`, `severity`, `created_at`)
VALUES
	('da332d712f3215b9b94bfa268c398323',2,'2019-08-22 21:25:50');

/*!40000 ALTER TABLE `admin_system_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`, `interface_locale`, `failures_num`, `first_failure`, `lock_expires`)
VALUES
	(1,'admin','admin','admin@test.com','admin','89e738c7166686b926ae79067ef34f873d156c9a787896568cc0ac8e4d473288:hY06CxUL7De3pa3x:2','2019-08-22 21:24:31','2019-09-16 02:16:06','2019-09-16 02:15:33',22,0,1,'{\"configState\":{\"admin_security\":\"1\",\"admin_emails\":\"0\",\"admin_startup\":\"0\",\"admin_url\":\"0\",\"admin_dashboard\":\"0\",\"admin_captcha\":\"0\",\"ortho_settings_advancemenu\":\"1\",\"ortho_settings_newsletter\":\"1\",\"ortho_settings_leftcolumn\":\"1\",\"ortho_settings_productpage\":\"1\",\"mfblog_index_page\":\"0\",\"mfblog_general\":\"1\",\"mfblog_post_view\":\"0\",\"mfblog_post_list\":\"0\",\"mfblog_author\":\"0\",\"mfblog_tag\":\"0\",\"mfblog_search\":\"0\",\"mfblog_sidebar\":\"0\",\"mfblog_product_page\":\"0\",\"mfblog_permalink\":\"0\",\"mfblog_seo\":\"0\",\"mfblog_social\":\"0\",\"mfblog_top_menu\":\"0\",\"general_store_information\":\"1\",\"general_single_store_mode\":\"1\",\"web_url\":\"1\",\"web_seo\":\"0\",\"web_unsecure\":\"1\",\"web_secure\":\"1\",\"web_default\":\"1\",\"web_default_layouts\":\"0\",\"web_cookie\":\"0\",\"web_session\":\"0\",\"web_browser_capabilities\":\"0\"}}',NULL,NULL,'en_US',0,NULL,NULL),
	(2,'admin1','admin1','admin@myhappykid.com','admin1','8c0a881d7f3e596261877841f29c585ec7a6bd7fe62d4ccf0d944bfcd3604de3:MIoy7hP61Fhn9gLQ:2','2019-09-14 03:55:45','2019-09-16 02:25:49','2019-09-16 02:25:49',3,0,1,NULL,NULL,NULL,'en_US',0,NULL,NULL);

/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_session`;

CREATE TABLE `admin_user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`),
  CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

LOCK TABLES `admin_user_session` WRITE;
/*!40000 ALTER TABLE `admin_user_session` DISABLE KEYS */;

INSERT INTO `admin_user_session` (`id`, `session_id`, `user_id`, `status`, `created_at`, `updated_at`, `ip`)
VALUES
	(1,'o4c6vn6u314j8uf1jop6n5pcs4',1,1,'2019-08-22 21:25:41','2019-08-22 21:28:17','87.236.196.40'),
	(2,'cet5idmcr3c5bqjjchi16fu7d7',1,1,'2019-08-22 21:57:25','2019-08-22 22:00:28','87.236.196.40'),
	(3,'aermj27ishjb8tph85hfol8f2a',1,1,'2019-08-22 22:16:55','2019-08-22 22:17:33','87.236.196.40'),
	(4,'gjjcs17ubategcnu4i3su70jq0',1,2,'2019-08-22 22:54:52','2019-08-23 01:31:31','87.236.196.40'),
	(5,'ud3u165icg6o1mljh6q1vuul8v',1,2,'2019-08-22 23:20:27','2019-08-23 01:31:31','87.236.196.40'),
	(6,'dgh2lgiqhhh4nm9qnmd6jhejb7',1,1,'2019-08-23 01:31:31','2019-08-23 01:58:18','87.236.196.40'),
	(7,'2d8bar55c4kq87lm15dn3dt3it',1,2,'2019-08-23 05:51:37','2019-08-23 07:39:32','87.236.196.40'),
	(8,'bo03c20hv1ovdh79g9mt7pvrp4',1,1,'2019-08-23 07:39:32','2019-08-23 07:49:48','87.236.196.40'),
	(9,'dien2lsggv23t7ihf4v393al3k',1,2,'2019-08-23 12:47:33','2019-08-23 14:42:21','87.236.196.40'),
	(10,'6aqu7rgca3i6v40tgjedrvsicr',1,2,'2019-08-23 14:42:21','2019-08-23 19:46:24','87.236.196.40'),
	(11,'ld1ro4qam37bh93m1g31p8suja',1,2,'2019-08-23 19:46:24','2019-08-23 20:55:49','87.236.196.40'),
	(12,'lagijij3sn6cc0aapmcjcpsvpa',1,2,'2019-08-23 20:55:49','2019-08-23 21:59:08','87.236.196.40'),
	(13,'vfiig16d37g8ge1hrb0jhjdqd5',1,1,'2019-08-23 21:59:08','2019-08-23 22:29:50','87.236.196.40'),
	(14,'he437l15nd2nn2f26ofn6raqjh',1,2,'2019-08-24 17:35:44','2019-08-24 19:58:46','87.236.196.40'),
	(15,'4viomr3mk82nl6s7t82p0eogie',1,1,'2019-08-24 19:58:46','2019-08-24 20:07:43','87.236.196.40'),
	(16,'jhp253d82p3g8sedi4u8nb1kte',1,2,'2019-09-14 04:01:11','2019-09-14 05:50:59','87.236.196.40'),
	(17,'rubpnobabcqdgg0947v2p02b7m',1,1,'2019-09-14 05:50:59','2019-09-14 06:43:24','87.236.196.40'),
	(18,'vqdekv0hvrleqav4ooqinfb7k6',2,1,'2019-09-14 05:52:17','2019-09-14 05:52:17','87.236.196.40'),
	(19,'1sij2clm98fes274j9vqoha2vp',1,2,'2019-09-14 14:09:35','2019-09-14 15:29:01','87.236.196.40'),
	(20,'a1m5m1nv67jqabq8n7cs104sv1',1,1,'2019-09-14 15:29:01','2019-09-14 15:29:01','87.236.196.40'),
	(21,'odo0u9c7bva8j46e904gl2m763',1,0,'2019-09-16 00:08:09','2019-09-16 00:08:29','87.236.196.40'),
	(22,'tgddpn6rtbv87pg77eineafpsm',2,2,'2019-09-16 00:08:34','2019-09-16 02:25:49','87.236.196.40'),
	(23,'lo46p81cljuot1lm67nu3vlfhs',1,2,'2019-09-16 01:22:09','2019-09-16 02:15:33','87.236.196.40'),
	(24,'oc59iqm8lh6f09uir2tvort8f2',1,1,'2019-09-16 02:15:33','2019-09-16 02:16:13','87.236.196.40'),
	(25,'hm7r0odpimsr3ko4t8tvi8d4fc',2,1,'2019-09-16 02:25:49','2019-09-16 03:38:04','87.236.196.40');

/*!40000 ALTER TABLE `admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table adminnotification_inbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `adminnotification_inbox`;

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

LOCK TABLES `adminnotification_inbox` WRITE;
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`)
VALUES
	(1,4,'2019-08-22 21:24:27','Deprecation Notice','Catalog Search is currently configured to use the MySQL engine, which has been deprecated. Consider migrating to one of\nthe Elasticsearch engines now to ensure there are no service interruptions during your next upgrade.','',0,0),
	(2,3,'2019-08-22 21:25:43','New version 2.9.0 of Magefan Magento 2 Blog Extension is now available.',' You can download the new version from Magefan Store or update it via composer. Get us in touch if you need our help with an update or you have any questions.\n                                https://magefan.com/magento2-blog-extension?version=2.9.0\n                             ','https://magefan.com/magento2-blog-extension?version=2.9.0',0,0),
	(3,4,'2019-08-22 21:25:43','FAQ: How to configure &quot;read more&quot; in your Magento 2 blog post',' If you still don&#039;t know how to configure read more functionality in your magento 2 blog post, please read this article.\n                Online documentation for Magento 2 blog extension is also available on our website. http://goo.gl/XOEdpy ','http://magefan.com/blog/add-read-more-tag-to-blog-post-content/?from=notification1',0,0),
	(4,4,'2019-08-23 14:07:14','MagentoLive Europe 2019','Join 2000+ Commerce Innovators for MagentoLive Europe in Amsterdam from 22-23 October. Register Now!','https://live-eu.magento.com/',0,0);

/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table authorization_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authorization_role`;

CREATE TABLE `authorization_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

LOCK TABLES `authorization_role` WRITE;
/*!40000 ALTER TABLE `authorization_role` DISABLE KEYS */;

INSERT INTO `authorization_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `user_type`, `role_name`)
VALUES
	(1,0,1,1,'G',0,'2','Administrators'),
	(2,1,2,0,'U',1,'2','admin'),
	(3,1,2,0,'U',2,'2','admin1');

/*!40000 ALTER TABLE `authorization_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table authorization_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authorization_rule`;

CREATE TABLE `authorization_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

LOCK TABLES `authorization_rule` WRITE;
/*!40000 ALTER TABLE `authorization_rule` DISABLE KEYS */;

INSERT INTO `authorization_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `permission`)
VALUES
	(1,1,'Magento_Backend::all',NULL,'allow');

/*!40000 ALTER TABLE `authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';



# Dump of table cache_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_tag`;

CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';



# Dump of table captcha_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `captcha_log`;

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

LOCK TABLES `captcha_log` WRITE;
/*!40000 ALTER TABLE `captcha_log` DISABLE KEYS */;

INSERT INTO `captcha_log` (`type`, `value`, `count`, `updated_at`)
VALUES
	('1','185.214.165.170',6,'2019-09-16 03:56:59'),
	('2','foo2',2,'2019-09-16 03:22:59'),
	('2','magegiant',2,'2019-09-16 02:46:22'),
	('2','myhappykid',1,'2019-09-14 04:01:05'),
	('2','root',1,'2019-08-24 17:35:09'),
	('2','shiplark',2,'2019-09-16 03:56:59');

/*!40000 ALTER TABLE `captcha_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity`;

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `CATALOG_CATEGORY_ENTITY_PATH` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

LOCK TABLES `catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;

INSERT INTO `catalog_category_entity` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`)
VALUES
	(1,3,0,'2019-06-24 05:59:15','2019-06-24 08:29:29','1',0,0,3),
	(2,3,1,'2019-06-24 05:59:15','2019-06-24 08:29:29','1/2',1,1,2),
	(3,3,2,'2019-06-24 08:29:03','2019-06-24 08:29:03','1/2/3',1,2,0),
	(4,3,2,'2019-06-24 08:29:29','2019-06-24 08:29:29','1/2/4',2,2,0);

/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_entity_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

LOCK TABLES `catalog_category_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(1,61,0,3,NULL),
	(2,62,0,3,NULL);

/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_entity_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';



# Dump of table catalog_category_entity_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity_int`;

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

LOCK TABLES `catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;

INSERT INTO `catalog_category_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(1,69,0,1,1),
	(2,46,0,2,1),
	(3,69,0,2,1),
	(4,46,0,3,1),
	(5,54,0,3,1),
	(6,69,0,3,1),
	(7,70,0,3,0),
	(8,71,0,3,0),
	(9,46,0,4,1),
	(10,54,0,4,1),
	(11,69,0,4,1),
	(12,70,0,4,0),
	(13,71,0,4,0);

/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_entity_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity_text`;

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';



# Dump of table catalog_category_entity_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

LOCK TABLES `catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(1,45,0,1,'Root Catalog'),
	(2,45,0,2,'Default Category'),
	(3,52,0,2,'PRODUCTS'),
	(4,45,0,3,'Shoulder Bags'),
	(5,52,0,3,'PRODUCTS'),
	(6,119,0,3,'shoulder-bags'),
	(7,120,0,3,'shoulder-bags'),
	(8,45,0,4,'Kids Backpack'),
	(9,52,0,4,'PRODUCTS'),
	(10,119,0,4,'kids-backpack'),
	(11,120,0,4,'kids-backpack');

/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product`;

CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

LOCK TABLES `catalog_category_product` WRITE;
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;

INSERT INTO `catalog_category_product` (`entity_id`, `category_id`, `product_id`, `position`)
VALUES
	(3,3,2,0),
	(4,3,3,0),
	(13,3,12,0),
	(17,3,16,0),
	(18,3,17,0),
	(20,3,19,0),
	(21,3,20,0),
	(22,3,21,0),
	(23,3,22,0),
	(24,3,23,0),
	(25,3,24,0),
	(26,3,25,0),
	(27,3,26,0),
	(29,3,28,0),
	(30,3,29,0),
	(31,4,30,0),
	(32,4,31,0),
	(33,4,32,0),
	(34,4,33,0),
	(35,4,34,0),
	(36,4,35,0),
	(37,4,36,0),
	(38,4,37,0),
	(39,4,38,0),
	(40,4,39,0),
	(41,4,40,0),
	(42,4,41,0),
	(43,4,42,0),
	(44,4,43,0),
	(45,4,45,0),
	(46,4,46,0),
	(47,4,47,0),
	(48,4,48,0),
	(49,4,49,0),
	(50,4,50,0),
	(51,4,51,0),
	(52,4,52,0),
	(53,4,53,0),
	(54,4,54,0),
	(55,4,55,0),
	(56,4,56,0),
	(57,4,57,0),
	(58,4,58,0),
	(59,4,59,0),
	(60,4,60,0),
	(61,4,61,0),
	(62,4,62,0),
	(63,4,63,0),
	(64,4,64,0),
	(65,4,65,0),
	(66,4,66,0),
	(67,4,67,0),
	(68,4,68,0),
	(69,4,69,0),
	(70,4,70,0),
	(71,4,71,0),
	(72,4,72,0),
	(73,4,73,0),
	(74,4,74,0),
	(75,4,75,0),
	(76,4,76,0),
	(78,4,78,0),
	(79,4,79,0);

/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_product_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product_index`;

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';



# Dump of table catalog_category_product_index_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product_index_replica`;

CREATE TABLE `catalog_category_product_index_replica` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';



# Dump of table catalog_category_product_index_store1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product_index_store1`;

CREATE TABLE `catalog_category_product_index_store1` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_STORE1_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_216E521C8AD125E066D2B0BAB4A08412` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1';

LOCK TABLES `catalog_category_product_index_store1` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index_store1` DISABLE KEYS */;

INSERT INTO `catalog_category_product_index_store1` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`)
VALUES
	(2,2,0,1,1,4),
	(2,3,0,1,1,4),
	(2,12,0,1,1,4),
	(2,16,0,1,1,4),
	(2,17,0,1,1,4),
	(2,19,0,1,1,4),
	(2,20,0,1,1,4),
	(2,21,0,1,1,4),
	(2,22,0,1,1,4),
	(2,23,0,1,1,4),
	(2,24,0,1,1,4),
	(2,25,0,1,1,4),
	(2,26,0,1,1,4),
	(2,28,0,1,1,4),
	(2,29,0,1,1,4),
	(2,30,0,1,1,4),
	(2,31,0,1,1,4),
	(2,32,0,1,1,4),
	(2,33,0,1,1,4),
	(2,34,0,1,1,4),
	(2,35,0,1,1,4),
	(2,36,0,1,1,4),
	(2,37,0,1,1,4),
	(2,38,0,1,1,4),
	(2,39,0,1,1,4),
	(2,40,0,1,1,4),
	(2,41,0,1,1,4),
	(2,42,0,1,1,4),
	(2,43,0,1,1,4),
	(2,45,0,1,1,4),
	(2,46,0,1,1,4),
	(2,47,0,1,1,4),
	(2,48,0,1,1,4),
	(2,49,0,1,1,4),
	(2,50,0,1,1,4),
	(2,51,0,1,1,4),
	(2,52,0,1,1,4),
	(2,53,0,1,1,4),
	(2,54,0,1,1,4),
	(2,55,0,1,1,4),
	(2,56,0,1,1,4),
	(2,57,0,1,1,4),
	(2,58,0,1,1,4),
	(2,59,0,1,1,4),
	(2,60,0,1,1,4),
	(2,61,0,1,1,4),
	(2,62,0,1,1,4),
	(2,63,0,1,1,4),
	(2,64,0,1,1,4),
	(2,65,0,1,1,4),
	(2,66,0,1,1,4),
	(2,67,0,1,1,4),
	(2,68,0,1,1,4),
	(2,69,0,1,1,4),
	(2,70,0,1,1,4),
	(2,71,0,1,1,4),
	(2,72,0,1,1,4),
	(2,73,0,1,1,4),
	(2,74,0,1,1,4),
	(2,75,0,1,1,4),
	(2,76,0,1,1,4),
	(2,78,0,1,1,4),
	(2,79,0,1,1,4),
	(3,2,0,1,1,4),
	(3,3,0,1,1,4),
	(3,12,0,1,1,4),
	(3,16,0,1,1,4),
	(3,17,0,1,1,4),
	(3,19,0,1,1,4),
	(3,20,0,1,1,4),
	(3,21,0,1,1,4),
	(3,22,0,1,1,4),
	(3,23,0,1,1,4),
	(3,24,0,1,1,4),
	(3,25,0,1,1,4),
	(3,26,0,1,1,4),
	(3,28,0,1,1,4),
	(3,29,0,1,1,4),
	(4,30,0,1,1,4),
	(4,31,0,1,1,4),
	(4,32,0,1,1,4),
	(4,33,0,1,1,4),
	(4,34,0,1,1,4),
	(4,35,0,1,1,4),
	(4,36,0,1,1,4),
	(4,37,0,1,1,4),
	(4,38,0,1,1,4),
	(4,39,0,1,1,4),
	(4,40,0,1,1,4),
	(4,41,0,1,1,4),
	(4,42,0,1,1,4),
	(4,43,0,1,1,4),
	(4,45,0,1,1,4),
	(4,46,0,1,1,4),
	(4,47,0,1,1,4),
	(4,48,0,1,1,4),
	(4,49,0,1,1,4),
	(4,50,0,1,1,4),
	(4,51,0,1,1,4),
	(4,52,0,1,1,4),
	(4,53,0,1,1,4),
	(4,54,0,1,1,4),
	(4,55,0,1,1,4),
	(4,56,0,1,1,4),
	(4,57,0,1,1,4),
	(4,58,0,1,1,4),
	(4,59,0,1,1,4),
	(4,60,0,1,1,4),
	(4,61,0,1,1,4),
	(4,62,0,1,1,4),
	(4,63,0,1,1,4),
	(4,64,0,1,1,4),
	(4,65,0,1,1,4),
	(4,66,0,1,1,4),
	(4,67,0,1,1,4),
	(4,68,0,1,1,4),
	(4,69,0,1,1,4),
	(4,70,0,1,1,4),
	(4,71,0,1,1,4),
	(4,72,0,1,1,4),
	(4,73,0,1,1,4),
	(4,74,0,1,1,4),
	(4,75,0,1,1,4),
	(4,76,0,1,1,4),
	(4,78,0,1,1,4),
	(4,79,0,1,1,4);

/*!40000 ALTER TABLE `catalog_category_product_index_store1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_category_product_index_store1_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product_index_store1_replica`;

CREATE TABLE `catalog_category_product_index_store1_replica` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_4B965DC45C352D6E4C9DC0FF50B1FCF5` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_47AB760CD6A893ACEA69A9C2E0112C60` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1 Replica';



# Dump of table catalog_category_product_index_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer temporary table';



# Dump of table catalog_compare_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_compare_item`;

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';



# Dump of table catalog_eav_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_eav_attribute`;

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`),
  CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`, `is_required_in_admin_store`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `search_weight`, `additional_data`)
VALUES
	(45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,0,1,0,0,0,0,0,1,NULL),
	(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(64,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,0,0,0,0,0,0,0,5,NULL),
	(74,NULL,1,1,1,0,1,0,0,0,0,0,0,NULL,1,0,0,0,0,0,0,0,6,NULL),
	(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,0,1,0,0,0,0,0,1,NULL),
	(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,0,1,0,0,1,0,0,1,NULL),
	(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,configurable,downloadable,bundle',1,0,0,0,0,0,0,0,1,NULL),
	(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,1,0,1,1,NULL),
	(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,1,0,0,1,NULL),
	(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,1,0,0,1,NULL),
	(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,0,0,0,0,1,0,1,1,NULL),
	(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,1,0,1,1,NULL),
	(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,configurable',1,0,0,0,0,1,0,1,1,NULL),
	(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,NULL),
	(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,NULL),
	(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,NULL),
	(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable,bundle',0,0,0,0,0,0,0,0,1,NULL),
	(93,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,virtual,configurable',1,0,0,0,0,1,0,1,1,NULL),
	(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,0,0,0,1,0,0,0,1,NULL),
	(98,NULL,0,0,0,0,0,0,0,0,0,0,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,0,0,0,1,NULL),
	(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,0,0,0,1,NULL),
	(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,1,1,NULL),
	(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(103,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,configurable,grouped',0,0,0,0,0,1,0,1,1,NULL),
	(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(117,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,1,0,1,1,NULL),
	(118,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,0,0,0,0,0,0,0,1,NULL),
	(119,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(120,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(121,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,1,0,1,1,NULL),
	(122,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(123,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,0,0,0,0,0,0,0,1,NULL),
	(124,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,0,0,0,0,0,0,0,1,NULL),
	(125,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,0,0,0,0,0,0,0,1,NULL),
	(126,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,0,0,0,0,0,0,0,1,NULL),
	(127,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,1,0,0,1,NULL),
	(128,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,NULL),
	(129,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,0,0,0,0,0,0,0,1,NULL),
	(130,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,NULL),
	(131,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,NULL),
	(132,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,0,0,0,0,0,0,0,1,NULL),
	(133,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,0,0,0,0,1,NULL),
	(134,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,configurable,downloadable,bundle',0,0,0,0,0,1,0,1,1,NULL),
	(135,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,configurable,virtual,bundle,downloadable',0,0,0,0,0,0,0,0,1,NULL);

/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_bundle_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_option`;

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`),
  CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';



# Dump of table catalog_product_bundle_option_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_BNDL_OPT_VAL_OPT_ID_PARENT_PRD_ID_STORE_ID` (`option_id`,`parent_product_id`,`store_id`),
  CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';



# Dump of table catalog_product_bundle_price_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `min_price` decimal(20,6) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';



# Dump of table catalog_product_bundle_selection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';



# Dump of table catalog_product_bundle_selection_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Selection Price Value',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  PRIMARY KEY (`selection_id`,`parent_product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';



# Dump of table catalog_product_bundle_stock_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';



# Dump of table catalog_product_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity`;

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

LOCK TABLES `catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;

INSERT INTO `catalog_product_entity` (`entity_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`)
VALUES
	(2,4,'simple','NHK004G',0,0,'2019-06-28 13:28:15','2019-08-23 13:21:01'),
	(3,4,'simple','NHK004Y',0,0,'2019-06-28 13:51:10','2019-08-23 13:11:39'),
	(12,4,'simple','NHK001B',0,0,'2019-06-28 14:17:36','2019-08-23 13:19:42'),
	(16,4,'simple','NHK004P',0,0,'2019-07-01 05:05:55','2019-08-23 16:14:01'),
	(17,4,'simple','NHK001P',0,0,'2019-07-01 05:09:21','2019-08-23 13:27:29'),
	(19,4,'simple','NHK001BLACK',0,0,'2019-07-01 05:31:10','2019-08-23 13:27:56'),
	(20,4,'simple','GY266G',0,0,'2019-07-01 05:46:55','2019-08-23 16:16:01'),
	(21,4,'simple','NHK006',0,0,'2019-07-01 06:21:11','2019-08-23 16:17:03'),
	(22,4,'simple','NHX003',0,0,'2019-07-01 06:39:23','2019-08-23 16:20:17'),
	(23,4,'simple','NHK007',0,0,'2019-07-01 07:57:49','2019-07-01 10:03:34'),
	(24,4,'simple','NHK002Y',0,0,'2019-07-01 08:11:51','2019-07-01 08:23:46'),
	(25,4,'simple','NHK002B',0,0,'2019-07-01 08:29:30','2019-07-01 08:29:30'),
	(26,4,'simple','NHK002G',0,0,'2019-07-01 08:41:30','2019-07-01 10:13:49'),
	(28,4,'simple','NHK006RED',0,0,'2019-07-01 08:54:44','2019-08-23 16:22:52'),
	(29,4,'simple','NHY001',0,0,'2019-07-01 09:01:23','2019-08-23 16:23:58'),
	(30,4,'simple','NH022G',0,0,'2019-07-05 04:06:05','2019-07-05 10:43:12'),
	(31,4,'simple','NH022O',0,0,'2019-07-05 04:13:16','2019-07-05 10:44:28'),
	(32,4,'simple','NH022Y',0,0,'2019-07-05 04:27:15','2019-07-05 05:19:06'),
	(33,4,'simple','NH031',0,0,'2019-07-05 04:38:31','2019-07-05 05:24:53'),
	(34,4,'simple','NH030B',0,0,'2019-07-05 05:08:50','2019-07-05 05:08:50'),
	(35,4,'simple','NH030Y',0,0,'2019-07-05 05:16:58','2019-07-05 05:16:58'),
	(36,4,'simple','NH048',0,0,'2019-07-05 05:28:53','2019-08-23 16:24:43'),
	(37,4,'simple','NH034',0,0,'2019-07-05 05:41:54','2019-07-05 10:20:36'),
	(38,4,'simple','NHQ008',0,0,'2019-07-05 09:12:00','2019-07-05 09:12:00'),
	(39,4,'simple','NH014Y',0,0,'2019-07-05 09:25:44','2019-07-05 09:25:44'),
	(40,4,'simple','NH014G',0,0,'2019-07-05 09:32:01','2019-07-05 09:32:01'),
	(41,4,'simple','NH032P',0,0,'2019-07-05 09:46:51','2019-07-05 09:46:51'),
	(42,4,'simple','NH032B',0,0,'2019-07-05 09:50:37','2019-07-05 09:50:37'),
	(43,4,'simple','GY293',0,0,'2019-07-05 10:07:56','2019-08-23 16:31:01'),
	(45,4,'simple','NH058',0,0,'2019-07-05 10:25:59','2019-07-05 10:25:59'),
	(46,4,'simple','NH023',0,0,'2019-07-05 10:41:21','2019-07-05 10:41:21'),
	(47,4,'simple','NH026',0,0,'2019-07-05 11:06:41','2019-07-05 11:06:41'),
	(48,4,'simple','NH028G',0,0,'2019-07-05 11:24:40','2019-07-05 11:44:22'),
	(49,4,'simple','NH028O',0,0,'2019-07-05 11:40:25','2019-08-23 16:27:07'),
	(50,4,'simple','NH029SG',0,0,'2019-07-05 12:13:32','2019-08-23 16:29:39'),
	(51,4,'simple','NH029LO',0,0,'2019-07-05 12:31:13','2019-08-23 16:32:48'),
	(52,4,'simple','NH044',0,0,'2019-07-16 06:43:32','2019-08-23 16:36:50'),
	(53,4,'simple','NH066B',0,0,'2019-07-16 07:19:57','2019-08-23 16:37:04'),
	(54,4,'simple','NH046P',0,0,'2019-07-16 07:37:21','2019-08-23 16:42:44'),
	(55,4,'simple','NH046B',0,0,'2019-07-16 07:45:07','2019-08-23 16:44:20'),
	(56,4,'simple','NH046G',0,0,'2019-07-16 07:51:46','2019-08-23 16:42:52'),
	(57,4,'simple','NH018R',0,0,'2019-07-16 08:34:51','2019-07-16 09:06:33'),
	(58,4,'simple','NH018G',0,0,'2019-07-16 09:09:50','2019-07-16 09:09:50'),
	(59,4,'simple','NH018Y',0,0,'2019-07-16 09:13:50','2019-07-16 09:13:50'),
	(60,4,'simple','NH015B',0,0,'2019-07-16 09:47:28','2019-07-16 09:47:28'),
	(61,4,'simple','NH015Y',0,0,'2019-07-16 09:50:30','2019-07-16 09:50:30'),
	(62,4,'simple','NH015P',0,0,'2019-07-16 09:59:58','2019-07-16 09:59:58'),
	(63,4,'simple','NH012Y',0,0,'2019-07-16 10:29:23','2019-07-16 10:45:16'),
	(64,4,'simple','NH012G',0,0,'2019-07-16 10:55:55','2019-07-16 11:00:57'),
	(65,4,'simple','NH012B',0,0,'2019-07-16 11:20:41','2019-07-16 11:20:41'),
	(66,4,'simple','NH025',0,0,'2019-07-16 12:16:37','2019-07-16 12:16:37'),
	(67,4,'simple','NH033',0,0,'2019-07-17 05:30:02','2019-07-17 05:30:02'),
	(68,4,'simple','NH024',0,0,'2019-07-17 05:42:13','2019-07-17 05:42:13'),
	(69,4,'simple','NH016B',0,0,'2019-07-17 05:57:20','2019-07-17 06:30:05'),
	(70,4,'simple','NH016Y',0,0,'2019-07-17 06:22:58','2019-07-17 06:22:58'),
	(71,4,'simple','NH027R',0,0,'2019-07-17 06:43:28','2019-07-17 06:43:28'),
	(72,4,'simple','NH027P',0,0,'2019-07-17 07:05:17','2019-07-17 08:59:47'),
	(73,4,'simple','NH011B',0,0,'2019-07-17 07:25:42','2019-07-17 07:25:42'),
	(74,4,'simple','NH011BLUE',0,0,'2019-07-17 07:57:06','2019-07-17 07:57:06'),
	(75,4,'simple','NH011P',0,0,'2019-07-17 08:20:41','2019-07-17 08:20:41'),
	(76,4,'simple','NH009O',0,0,'2019-07-17 08:30:58','2019-07-17 08:33:13'),
	(78,4,'simple','NH009YELLOW',0,0,'2019-07-17 08:53:26','2019-07-17 08:53:26'),
	(79,4,'simple','NH05O',0,0,'2019-07-17 08:58:26','2019-08-23 16:43:37');

/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

LOCK TABLES `catalog_product_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(1,94,0,2,'2019-08-23 00:00:00'),
	(2,94,0,3,'2019-08-23 00:00:00'),
	(3,94,0,4,'2019-08-23 00:00:00'),
	(4,94,0,5,'2019-08-23 00:00:00'),
	(5,94,0,12,'2019-08-23 00:00:00'),
	(6,94,0,16,'2019-08-23 00:00:00'),
	(7,94,0,17,'2019-08-23 00:00:00'),
	(8,94,0,19,'2019-08-23 00:00:00'),
	(9,94,0,20,'2019-08-23 00:00:00'),
	(11,94,0,28,'2019-08-23 00:00:00');

/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(20,6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

LOCK TABLES `catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(2,77,0,2,24.000000),
	(3,135,0,2,6.500000),
	(4,136,0,2,6.500000),
	(5,137,0,2,3.140000),
	(6,77,0,3,24.000000),
	(7,135,0,3,6.500000),
	(8,136,0,3,6.500000),
	(9,137,0,3,3.140000),
	(46,77,0,12,24.000000),
	(47,135,0,12,6.500000),
	(48,136,0,12,6.500000),
	(49,137,0,12,3.140000),
	(63,77,0,16,24.000000),
	(64,135,0,16,6.500000),
	(65,136,0,16,6.500000),
	(66,137,0,16,3.140000),
	(67,77,0,17,24.000000),
	(68,135,0,17,6.500000),
	(69,136,0,17,6.500000),
	(70,137,0,17,3.140000),
	(75,77,0,19,24.000000),
	(76,135,0,19,6.500000),
	(77,136,0,19,6.500000),
	(78,137,0,19,3.140000),
	(79,77,0,20,24.000000),
	(80,135,0,20,6.500000),
	(81,136,0,20,6.500000),
	(82,137,0,20,3.140000),
	(83,77,0,21,28.000000),
	(84,135,0,21,6.600000),
	(85,136,0,21,5.900000),
	(86,137,0,21,2.700000),
	(87,77,0,22,20.000000),
	(88,135,0,22,6.600000),
	(89,136,0,22,5.900000),
	(90,137,0,22,2.700000),
	(91,77,0,23,28.000000),
	(92,135,0,23,7.200000),
	(93,136,0,23,5.900000),
	(94,137,0,23,2.300000),
	(95,77,0,24,24.000000),
	(96,82,0,24,0.300000),
	(97,135,0,24,6.500000),
	(98,136,0,24,6.500000),
	(99,137,0,24,3.100000),
	(100,77,0,25,24.000000),
	(101,82,0,25,0.300000),
	(102,135,0,25,6.500000),
	(103,136,0,25,6.500000),
	(104,137,0,25,3.140000),
	(105,77,0,26,24.000000),
	(106,82,0,26,0.300000),
	(107,135,0,26,6.500000),
	(108,136,0,26,6.500000),
	(109,137,0,26,3.140000),
	(114,77,0,28,24.000000),
	(115,82,0,28,0.300000),
	(116,135,0,28,6.500000),
	(117,136,0,28,6.500000),
	(118,137,0,28,3.140000),
	(119,77,0,29,16.800000),
	(120,77,0,30,44.000000),
	(121,135,0,30,12.700000),
	(122,136,0,30,8.850000),
	(123,137,0,30,7.480000),
	(124,77,0,31,44.000000),
	(125,135,0,31,12.700000),
	(126,136,0,31,8.850000),
	(127,137,0,31,7.480000),
	(128,77,0,32,44.000000),
	(129,135,0,32,12.700000),
	(130,136,0,32,8.850000),
	(131,137,0,32,7.400000),
	(132,77,0,33,44.000000),
	(133,135,0,33,12.700000),
	(134,136,0,33,8.800000),
	(135,137,0,33,7.400000),
	(136,77,0,34,44.000000),
	(137,135,0,34,12.700000),
	(138,136,0,34,8.850000),
	(139,137,0,34,7.400000),
	(140,77,0,35,44.000000),
	(141,135,0,35,12.700000),
	(142,136,0,35,8.850000),
	(143,137,0,35,7.400000),
	(144,77,0,36,28.000000),
	(145,77,0,37,28.000000),
	(146,77,0,38,36.000000),
	(147,77,0,39,44.000000),
	(148,77,0,40,44.000000),
	(149,77,0,41,44.000000),
	(150,77,0,42,44.000000),
	(151,77,0,43,33.600000),
	(153,77,0,45,30.400000),
	(154,135,0,43,9.400000),
	(155,136,0,43,8.600000),
	(156,137,0,43,3.700000),
	(157,77,0,46,36.000000),
	(158,77,0,47,36.000000),
	(159,77,0,48,44.000000),
	(160,77,0,49,44.000000),
	(161,135,0,49,10.630000),
	(162,136,0,49,4.530000),
	(163,137,0,49,12.200000),
	(164,135,0,48,10.630000),
	(165,136,0,48,4.530000),
	(166,137,0,48,12.200000),
	(167,77,0,50,44.000000),
	(168,77,0,51,44.000000),
	(169,77,0,52,33.600000),
	(170,77,0,53,36.000000),
	(171,82,0,53,0.660000),
	(172,135,0,53,23.500000),
	(173,136,0,53,6.000000),
	(174,137,0,53,21.000000),
	(175,77,0,54,40.000000),
	(176,77,0,55,40.000000),
	(177,77,0,56,40.000000),
	(178,77,0,57,40.000000),
	(179,77,0,58,40.000000),
	(180,77,0,59,40.000000),
	(181,77,0,60,36.000000),
	(182,77,0,61,36.000000),
	(183,77,0,62,36.000000),
	(184,77,0,63,44.000000),
	(185,77,0,64,44.000000),
	(186,77,0,65,44.000000),
	(187,77,0,66,40.000000),
	(188,77,0,67,40.000000),
	(189,77,0,68,33.600000),
	(190,77,0,69,40.000000),
	(191,77,0,70,40.000000),
	(192,77,0,71,40.000000),
	(193,77,0,72,40.000000),
	(194,77,0,73,40.000000),
	(195,77,0,74,40.000000),
	(196,77,0,75,40.000000),
	(197,77,0,76,40.000000),
	(199,77,0,78,40.000000),
	(200,77,0,79,33.600000);

/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';



# Dump of table catalog_product_entity_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_int`;

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

LOCK TABLES `catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(6,93,0,2,8),
	(7,97,0,2,1),
	(8,99,0,2,4),
	(9,129,0,2,0),
	(10,138,0,2,0),
	(11,93,0,3,6),
	(12,97,0,3,1),
	(13,99,0,3,4),
	(14,129,0,3,0),
	(15,138,0,3,0),
	(53,93,0,12,7),
	(54,97,0,12,1),
	(55,99,0,12,4),
	(56,129,0,12,0),
	(57,138,0,12,0),
	(73,93,0,16,5),
	(74,97,0,16,1),
	(75,99,0,16,4),
	(76,129,0,16,0),
	(77,138,0,16,0),
	(78,93,0,17,5),
	(79,97,0,17,1),
	(80,99,0,17,4),
	(81,129,0,17,0),
	(82,138,0,17,0),
	(88,93,0,19,4),
	(89,97,0,19,1),
	(90,99,0,19,4),
	(91,129,0,19,0),
	(92,138,0,19,0),
	(93,93,0,20,8),
	(94,97,0,20,1),
	(95,99,0,20,4),
	(96,129,0,20,0),
	(97,138,0,20,0),
	(98,93,0,21,7),
	(99,97,0,21,1),
	(100,99,0,21,4),
	(101,129,0,21,0),
	(102,138,0,21,0),
	(103,93,0,22,8),
	(104,97,0,22,1),
	(105,99,0,22,4),
	(106,129,0,22,0),
	(107,138,0,22,0),
	(108,93,0,23,7),
	(109,97,0,23,1),
	(110,99,0,23,4),
	(111,129,0,23,0),
	(112,138,0,23,0),
	(113,93,0,24,6),
	(114,97,0,24,1),
	(115,99,0,24,4),
	(116,129,0,24,0),
	(117,138,0,24,0),
	(118,93,0,25,7),
	(119,97,0,25,1),
	(120,99,0,25,4),
	(121,129,0,25,0),
	(122,138,0,25,0),
	(123,97,0,26,1),
	(124,99,0,26,4),
	(125,129,0,26,0),
	(126,138,0,26,0),
	(132,93,0,28,5),
	(133,97,0,28,1),
	(134,99,0,28,4),
	(135,129,0,28,0),
	(136,138,0,28,0),
	(137,93,0,29,5),
	(138,97,0,29,1),
	(139,99,0,29,4),
	(140,129,0,29,0),
	(141,138,0,29,0),
	(142,93,0,30,8),
	(143,97,0,30,1),
	(144,99,0,30,4),
	(145,129,0,30,0),
	(146,138,0,30,0),
	(147,93,0,31,6),
	(148,97,0,31,1),
	(149,99,0,31,4),
	(150,129,0,31,0),
	(151,138,0,31,0),
	(152,93,0,32,6),
	(153,97,0,32,1),
	(154,99,0,32,4),
	(155,129,0,32,0),
	(156,138,0,32,0),
	(157,93,0,33,7),
	(158,97,0,33,1),
	(159,99,0,33,4),
	(160,129,0,33,0),
	(161,138,0,33,0),
	(162,93,0,34,7),
	(163,97,0,34,1),
	(164,99,0,34,4),
	(165,129,0,34,0),
	(166,138,0,34,0),
	(167,93,0,35,6),
	(168,97,0,35,1),
	(169,99,0,35,4),
	(170,129,0,35,0),
	(171,138,0,35,0),
	(172,93,0,36,6),
	(173,97,0,36,1),
	(174,99,0,36,4),
	(175,129,0,36,0),
	(176,138,0,36,0),
	(177,97,0,37,1),
	(178,99,0,37,4),
	(179,129,0,37,0),
	(180,138,0,37,0),
	(181,93,0,38,7),
	(182,97,0,38,1),
	(183,99,0,38,4),
	(184,129,0,38,0),
	(185,138,0,38,0),
	(186,93,0,39,6),
	(187,97,0,39,1),
	(188,99,0,39,4),
	(189,129,0,39,0),
	(190,138,0,39,0),
	(191,93,0,40,8),
	(192,97,0,40,1),
	(193,99,0,40,4),
	(194,129,0,40,0),
	(195,138,0,40,0),
	(196,93,0,41,5),
	(197,97,0,41,1),
	(198,99,0,41,4),
	(199,129,0,41,0),
	(200,138,0,41,0),
	(201,97,0,42,1),
	(202,99,0,42,4),
	(203,129,0,42,0),
	(204,138,0,42,0),
	(205,97,0,43,1),
	(206,99,0,43,4),
	(207,129,0,43,0),
	(208,138,0,43,0),
	(214,93,0,45,7),
	(215,97,0,45,1),
	(216,99,0,45,4),
	(217,129,0,45,0),
	(218,138,0,45,0),
	(219,93,0,43,5),
	(220,93,0,46,8),
	(221,97,0,46,1),
	(222,99,0,46,4),
	(223,129,0,46,0),
	(224,138,0,46,0),
	(225,97,0,47,1),
	(226,99,0,47,4),
	(227,129,0,47,0),
	(228,138,0,47,0),
	(229,93,0,48,8),
	(230,97,0,48,1),
	(231,99,0,48,4),
	(232,129,0,48,0),
	(233,138,0,48,0),
	(234,93,0,49,5),
	(235,97,0,49,1),
	(236,99,0,49,4),
	(237,129,0,49,0),
	(238,138,0,49,0),
	(239,93,0,50,8),
	(240,97,0,50,1),
	(241,99,0,50,4),
	(242,129,0,50,0),
	(243,138,0,50,0),
	(244,97,0,51,1),
	(245,99,0,51,4),
	(246,129,0,51,0),
	(247,138,0,51,0),
	(248,93,0,52,7),
	(249,97,0,52,1),
	(250,99,0,52,4),
	(251,129,0,52,0),
	(252,138,0,52,0),
	(253,93,0,53,7),
	(254,97,0,53,1),
	(255,99,0,53,4),
	(256,129,0,53,0),
	(257,138,0,53,0),
	(258,93,0,54,7),
	(259,97,0,54,1),
	(260,99,0,54,4),
	(261,129,0,54,0),
	(262,138,0,54,0),
	(263,93,0,55,5),
	(264,97,0,55,1),
	(265,99,0,55,4),
	(266,129,0,55,0),
	(267,138,0,55,0),
	(268,93,0,56,8),
	(269,97,0,56,1),
	(270,99,0,56,4),
	(271,129,0,56,0),
	(272,138,0,56,0),
	(273,93,0,57,5),
	(274,97,0,57,1),
	(275,99,0,57,4),
	(276,129,0,57,0),
	(277,138,0,57,0),
	(278,93,0,58,8),
	(279,97,0,58,1),
	(280,99,0,58,4),
	(281,129,0,58,0),
	(282,138,0,58,0),
	(283,93,0,59,6),
	(284,97,0,59,1),
	(285,99,0,59,4),
	(286,129,0,59,0),
	(287,138,0,59,0),
	(288,93,0,60,7),
	(289,97,0,60,1),
	(290,99,0,60,4),
	(291,129,0,60,0),
	(292,138,0,60,0),
	(293,93,0,61,6),
	(294,97,0,61,1),
	(295,99,0,61,4),
	(296,129,0,61,0),
	(297,138,0,61,0),
	(298,93,0,62,8),
	(299,97,0,62,1),
	(300,99,0,62,4),
	(301,129,0,62,0),
	(302,138,0,62,0),
	(303,93,0,63,6),
	(304,97,0,63,1),
	(305,99,0,63,4),
	(306,129,0,63,0),
	(307,138,0,63,0),
	(308,93,0,64,8),
	(309,97,0,64,1),
	(310,99,0,64,4),
	(311,129,0,64,0),
	(312,138,0,64,0),
	(313,93,0,65,7),
	(314,97,0,65,1),
	(315,99,0,65,4),
	(316,129,0,65,0),
	(317,138,0,65,0),
	(318,93,0,66,7),
	(319,97,0,66,1),
	(320,99,0,66,4),
	(321,129,0,66,0),
	(322,138,0,66,0),
	(323,93,0,67,7),
	(324,97,0,67,1),
	(325,99,0,67,4),
	(326,129,0,67,0),
	(327,138,0,67,0),
	(328,97,0,68,1),
	(329,99,0,68,4),
	(330,129,0,68,0),
	(331,138,0,68,0),
	(332,93,0,69,7),
	(333,97,0,69,1),
	(334,99,0,69,4),
	(335,129,0,69,0),
	(336,138,0,69,0),
	(337,93,0,70,6),
	(338,97,0,70,1),
	(339,99,0,70,4),
	(340,129,0,70,0),
	(341,138,0,70,0),
	(342,93,0,71,5),
	(343,97,0,71,1),
	(344,99,0,71,4),
	(345,129,0,71,0),
	(346,138,0,71,0),
	(347,93,0,72,5),
	(348,97,0,72,1),
	(349,99,0,72,4),
	(350,129,0,72,0),
	(351,138,0,72,0),
	(352,93,0,73,4),
	(353,97,0,73,1),
	(354,99,0,73,4),
	(355,129,0,73,0),
	(356,138,0,73,0),
	(357,93,0,74,7),
	(358,97,0,74,1),
	(359,99,0,74,4),
	(360,129,0,74,0),
	(361,138,0,74,0),
	(362,93,0,75,5),
	(363,97,0,75,1),
	(364,99,0,75,4),
	(365,129,0,75,0),
	(366,138,0,75,0),
	(367,93,0,76,5),
	(368,97,0,76,1),
	(369,99,0,76,4),
	(370,129,0,76,0),
	(371,138,0,76,0),
	(377,93,0,78,6),
	(378,97,0,78,1),
	(379,99,0,78,4),
	(380,129,0,78,0),
	(381,138,0,78,0),
	(382,93,0,79,5),
	(383,97,0,79,1),
	(384,99,0,79,4),
	(385,129,0,79,0),
	(386,138,0,79,0),
	(387,134,0,2,0),
	(388,135,0,2,1),
	(389,134,0,3,0),
	(390,135,0,3,1),
	(391,134,0,12,0),
	(392,135,0,12,1),
	(393,134,0,16,0),
	(394,135,0,16,1),
	(395,134,0,17,0),
	(396,135,0,17,1),
	(397,134,0,19,0),
	(398,135,0,19,1),
	(399,134,0,20,0),
	(400,135,0,20,1),
	(413,134,0,21,0),
	(414,135,0,21,0),
	(415,134,0,22,0),
	(416,135,0,22,0),
	(417,134,0,28,0),
	(418,135,0,28,1),
	(419,134,0,29,0),
	(420,135,0,29,0),
	(421,134,0,36,0),
	(422,135,0,36,0),
	(423,134,0,49,0),
	(424,135,0,49,0),
	(425,134,0,50,0),
	(426,135,0,50,0),
	(427,134,0,43,0),
	(428,135,0,43,0),
	(429,134,0,51,0),
	(430,135,0,51,0),
	(431,134,0,52,0),
	(432,135,0,52,0),
	(433,134,0,53,0),
	(434,135,0,53,0),
	(435,134,0,54,0),
	(436,135,0,54,0),
	(437,134,0,55,0),
	(438,135,0,55,0),
	(439,134,0,56,0),
	(440,135,0,56,0),
	(441,134,0,79,0),
	(442,135,0,79,0);

/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

LOCK TABLES `catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `value`, `media_type`, `disabled`)
VALUES
	(1,90,'/n/h/nhk004-8.jpg','image',0),
	(2,90,'/n/h/nhk004-4.jpg','image',0),
	(25,90,'/b/l/blue.png','image',0),
	(28,90,'/p/i/pink2.png','image',0),
	(29,90,'/p/i/pink3.png','image',0),
	(33,90,'/n/h/nhk004-5.jpg','image',0),
	(34,90,'/n/h/nhk004-6.jpg','image',0),
	(35,90,'/n/h/nhk004-1_4.jpg','image',0),
	(37,90,'/i/m/img_5077_1.jpg','image',0),
	(38,90,'/p/i/pink2_1.png','image',0),
	(39,90,'/p/i/pink3_1.png','image',0),
	(40,90,'/n/h/nhk004-7.jpg','image',0),
	(41,90,'/4/_/4.jpg','image',0),
	(42,90,'/3/_/3.jpg','image',0),
	(43,90,'/6/_/6.jpg','image',0),
	(44,90,'/4/_/4_1.jpg','image',0),
	(45,90,'/3/_/3_1.jpg','image',0),
	(46,90,'/6/_/6_1.jpg','image',0),
	(47,90,'/1/_/1.jpg','image',0),
	(56,90,'/1/2/12_1.jpg','image',0),
	(57,90,'/1/3/13.jpg','image',0),
	(58,90,'/1/4/14_1.jpg','image',0),
	(59,90,'/1/5/15.jpg','image',0),
	(69,90,'/i/m/img_e6706.jpg','image',0),
	(70,90,'/b/l/blue2.png','image',0),
	(71,90,'/i/m/img_e6684.jpg','image',0),
	(72,90,'/n/h/nhk004-2.jpg','image',0),
	(73,90,'/n/h/nhk004-3.jpg','image',0),
	(75,90,'/n/h/nhk007.jpg','image',0),
	(76,90,'/b/l/blue_whale.jpg','image',0),
	(78,90,'/n/h/nhk002-5.jpg','image',0),
	(79,90,'/n/h/nhk002-4.jpg','image',0),
	(80,90,'/b/l/blue1.png','image',0),
	(81,90,'/g/r/green1.png','image',0),
	(82,90,'/n/h/nhk005-1.jpg','image',0),
	(83,90,'/c/o/coral_crab1.jpg','image',0),
	(84,90,'/c/o/coral_crab_2.jpg','image',0),
	(85,90,'/c/o/coral_crab3.jpg','image',0),
	(90,90,'/r/u/rukzaki.nohoo_15_11_2017_14_50_13_61.jpg','image',0),
	(91,90,'/i/m/img_e6792.jpg','image',0),
	(92,90,'/i/m/img_e6602.jpg','image',0),
	(93,90,'/n/h/nh022-1_1100px.jpg','image',0),
	(94,90,'/n/h/nh022-2_1100px.jpg','image',0),
	(95,90,'/_/3/_3.png','image',0),
	(96,90,'/n/h/nh022-3.jpg','image',0),
	(97,90,'/r/a/rabbit_2.jpg','image',0),
	(98,90,'/3/_/3_2.jpg','image',0),
	(99,90,'/_/_/__06.jpg','image',0),
	(100,90,'/n/h/nh030-2.jpg','image',0),
	(101,90,'/i/m/img_e6704.jpg','image',0),
	(102,90,'/a/n/angels.jpg','image',0),
	(103,90,'/n/h/nh030-1.jpg','image',0),
	(104,90,'/a/n/angels_1.jpg','image',0),
	(105,90,'/i/m/img_e6492.jpg','image',0),
	(106,90,'/i/m/img_e6821.jpg','image',0),
	(107,90,'/i/m/img_e6840_1.jpg','image',0),
	(108,90,'/1/_/1_1_.jpg','image',0),
	(109,90,'/7/_/7_1_.jpg','image',0),
	(110,90,'/n/h/nh034.jpg','image',0),
	(111,90,'/3/_/3.png','image',0),
	(112,90,'/2/_/2.png','image',0),
	(113,90,'/1/_/1.png','image',0),
	(114,90,'/b/u/butterfly1.jpg','image',0),
	(115,90,'/i/m/img_e6996.jpg','image',0),
	(116,90,'/i/m/img_e6997.jpg','image',0),
	(117,90,'/i/m/img_e6993.jpg','image',0),
	(118,90,'/b/u/butterfly4.jpg','image',0),
	(119,90,'/b/u/butterfly_3.jpg','image',0),
	(120,90,'/p/r/princess2.jpg','image',0),
	(121,90,'/i/m/img_e6766.jpg','image',0),
	(122,90,'/i/m/img_e6770.jpg','image',0),
	(123,90,'/p/r/princess1.jpg','image',0),
	(127,90,'/4/_/4_2.jpg','image',0),
	(128,90,'/b/a/baby_elephant.jpg','image',0),
	(129,90,'/i/m/img_e6547.jpg','image',0),
	(130,90,'/i/m/img_e6788.jpg','image',0),
	(131,90,'/4/_/4_3.jpg','image',0),
	(132,90,'/b/a/baby_elephant_1.jpg','image',0),
	(133,90,'/n/h/nh023-1.jpg','image',0),
	(134,90,'/n/h/nh023-2.jpg','image',0),
	(135,90,'/n/h/nh023-3.jpg','image',0),
	(136,90,'/i/m/img_e6912.jpg','image',0),
	(137,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_44_623.jpg','image',0),
	(138,90,'/f/i/fiery1.jpg','image',0),
	(139,90,'/i/m/img_e6511_1.jpg','image',0),
	(140,90,'/i/m/img_e6512.jpg','image',0),
	(141,90,'/i/m/img_e6507.jpg','image',0),
	(142,90,'/6/_/6_2.jpg','image',0),
	(143,90,'/7/_/7_2_.jpg','image',0),
	(144,90,'/5/_/5.jpg','image',0),
	(145,90,'/9/_/9.jpg','image',0),
	(148,90,'/i/m/img_e6922.jpg','image',0),
	(149,90,'/i/m/img_e6935.jpg','image',0),
	(152,90,'/i/m/img_7122_1.jpg','image',0),
	(154,90,'/n/h/nh029-4-1-800x800.jpg','image',0),
	(155,90,'/i/m/img_7111_2.jpg','image',0),
	(156,90,'/i/m/img_7110.jpg','image',0),
	(160,90,'/i/m/img_7033_1.jpg','image',0),
	(162,90,'/1/b/1blue.png','image',0),
	(163,90,'/i/m/img_5020.jpg','image',0),
	(165,90,'/i/m/img_4985.jpg','image',0),
	(166,90,'/r/u/rukzaki.nohoo_15_11_2017_14_47_38_835.jpg','image',0),
	(168,90,'/i/m/img_e6729.jpg','image',0),
	(169,90,'/i/m/img_e6743.jpg','image',0),
	(175,90,'/n/h/nh018__1.jpg','image',0),
	(176,90,'/d/u/dustproof_cartoon_kindergarten_book_bags_eco_friendly_school_bag_1.jpg','image',0),
	(177,90,'/n/h/nh018__1_1.jpg','image',0),
	(178,90,'/n/h/nh018__1_2.jpg','image',0),
	(179,90,'/n/h/nh015_.jpg','image',0),
	(180,90,'/n/h/nh015__1.jpg','image',0),
	(181,90,'/n/h/nh015__2.jpg','image',0),
	(182,90,'/i/m/img_5027.jpg','image',0),
	(183,90,'/i/m/img_5023.jpg','image',0),
	(186,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_53_145_2_.jpg','image',0),
	(187,90,'/n/h/nh012-1.jpg','image',0),
	(188,90,'/i/m/img_e6966.jpg','image',0),
	(189,90,'/i/m/img_e6964.jpg','image',0),
	(190,90,'/n/h/nh012-2.jpg','image',0),
	(191,90,'/_/_/__06_1_.jpg','image',0),
	(192,90,'/n/h/nh012-3.jpg','image',0),
	(193,90,'/i/m/img_e6960_1.jpg','image',0),
	(194,90,'/i/m/img_e6957.jpg','image',0),
	(195,90,'/i/m/img_e6950.jpg','image',0),
	(196,90,'/n/h/nh025.jpg','image',0),
	(197,90,'/i/m/img_e6562_1_.jpg','image',0),
	(198,90,'/n/h/nh033.jpg','image',0),
	(199,90,'/n/h/nh024-1.jpg','image',0),
	(200,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_32_359.jpg','image',0),
	(201,90,'/n/h/nh016_.jpg','image',0),
	(202,90,'/i/m/img_e6517.jpg','image',0),
	(203,90,'/i/m/img_e6547_1.jpg','image',0),
	(204,90,'/n/h/nh016__1.jpg','image',0),
	(205,90,'/n/h/nh027-2.jpg','image',0),
	(206,90,'/r/u/rukzaki.nohoo_15_11_2017_14_47_45_771.jpg','image',0),
	(207,90,'/_/_/__10.jpg','image',0),
	(208,90,'/c/r/crab_pink.jpg','image',0),
	(209,90,'/n/h/nh027-1.jpg','image',0),
	(210,90,'/n/h/nh027-5.jpg','image',0),
	(211,90,'/i/m/img_7104.jpg','image',0),
	(212,90,'/n/h/nh011-1_1_.jpg','image',0),
	(213,90,'/i/m/img_7080_1.jpg','image',0),
	(214,90,'/i/m/img_7037_1.jpg','image',0),
	(215,90,'/n/h/nh011-2.jpg','image',0),
	(216,90,'/i/m/img_7055.jpg','image',0),
	(217,90,'/i/m/img_7037_1_1.jpg','image',0),
	(218,90,'/n/h/nh011-3.jpg','image',0),
	(219,90,'/i/m/img_7069.jpg','image',0),
	(220,90,'/i/m/img_7037_1_2.jpg','image',0),
	(221,90,'/n/h/nh009-2_1_.jpg','image',0),
	(222,90,'/n/h/nh009-3_1.jpg','image',0),
	(223,90,'/n/h/nh009-3_1_1.jpg','image',0),
	(225,90,'/i/m/img_5054_1.jpg','image',0),
	(229,90,'/b/u/butterfly3.jpg','image',0),
	(230,90,'/r/a/rabbit_1.jpg','image',0),
	(231,90,'/f/i/fiery1_2.jpg','image',0),
	(232,90,'/d/i/dino.jpg','image',0),
	(233,90,'/n/h/nhk005-1_2.jpg','image',0),
	(234,90,'/c/r/crab_pink_3.jpg','image',0),
	(235,90,'/3/_/3_4.jpg','image',0),
	(236,90,'/0/2/029e.jpg','image',0),
	(237,90,'/0/2/029a.jpg','image',0),
	(238,90,'/0/2/029b.jpg','image',0),
	(239,90,'/3/_/3_2.png','image',0),
	(240,90,'/1/_/1_2.png','image',0),
	(241,90,'/2/_/2_2.png','image',0),
	(242,90,'/3/_/3_2_2.jpg','image',0),
	(244,90,'/m/e/mermaid1_1.png','image',0),
	(246,90,'/_/1/_1.jpg','image',0),
	(247,90,'/_/2/_2.jpg','image',0),
	(248,90,'/_/3/_3.jpg','image',0),
	(249,90,'/_/4/_4.jpg','image',0),
	(250,90,'/_/5/_5.jpg','image',0),
	(251,90,'/y/e/yellow1.jpg','image',0),
	(252,90,'/_/_/__06_1__1.jpg','image',0),
	(253,90,'/_/_/__06_1__1_1.jpg','image',0),
	(254,90,'/_/_/__10.jpg','image',0),
	(255,90,'/_/3/_3.png','image',0),
	(256,90,'/1/_/1.jpg','image',0),
	(257,90,'/1/_/1.png','image',0),
	(258,90,'/1/_/1_1_.jpg','image',0),
	(259,90,'/1/b/1blue.png','image',0),
	(260,90,'/2/_/2.png','image',0),
	(261,90,'/3/_/3.jpg','image',0),
	(262,90,'/3/_/3.png','image',0),
	(263,90,'/3/_/3_1.jpg','image',0),
	(264,90,'/3/_/3_2.jpg','image',0),
	(265,90,'/4/_/4.jpg','image',0),
	(266,90,'/4/_/4_1.jpg','image',0),
	(267,90,'/4/_/4_2.jpg','image',0),
	(268,90,'/4/_/4_3.jpg','image',0),
	(269,90,'/5/_/5.jpg','image',0),
	(270,90,'/6/_/6.jpg','image',0),
	(271,90,'/6/_/6_1.jpg','image',0),
	(272,90,'/6/_/6_2.jpg','image',0),
	(273,90,'/7/_/7_1_.jpg','image',0),
	(274,90,'/7/_/7_2_.jpg','image',0),
	(275,90,'/9/_/9.jpg','image',0),
	(276,90,'/1/2/12_1.jpg','image',0),
	(277,90,'/1/3/13.jpg','image',0),
	(278,90,'/1/4/14_1.jpg','image',0),
	(279,90,'/1/5/15.jpg','image',0),
	(280,90,'/a/n/angels.jpg','image',0),
	(281,90,'/a/n/angels_1.jpg','image',0),
	(282,90,'/b/a/baby_elephant.jpg','image',0),
	(283,90,'/b/a/baby_elephant_1.jpg','image',0),
	(284,90,'/b/l/blue1.png','image',0),
	(285,90,'/b/l/blue2.png','image',0),
	(286,90,'/b/u/butterfly_3.jpg','image',0),
	(287,90,'/b/u/butterfly1.jpg','image',0),
	(288,90,'/b/u/butterfly4.jpg','image',0),
	(289,90,'/c/r/crab_pink.jpg','image',0),
	(290,90,'/f/i/fiery1.jpg','image',0),
	(291,90,'/g/r/green1.png','image',0),
	(292,90,'/_/_/__06_1__1_2.jpg','image',0),
	(293,90,'/_/_/__06_1__1_1_1.jpg','image',0),
	(294,90,'/_/_/__10_1.jpg','image',0),
	(295,90,'/_/3/_3_1.png','image',0),
	(296,90,'/1/_/1_1.jpg','image',0),
	(297,90,'/1/_/1_1.png','image',0),
	(298,90,'/1/_/1_1__1.jpg','image',0),
	(299,90,'/1/b/1blue_1.png','image',0),
	(300,90,'/2/_/2_1.png','image',0),
	(301,90,'/3/_/3_3.jpg','image',0),
	(302,90,'/3/_/3_1.png','image',0),
	(303,90,'/3/_/3_1_1.jpg','image',0),
	(304,90,'/3/_/3_2_1.jpg','image',0),
	(305,90,'/4/_/4_4.jpg','image',0),
	(306,90,'/4/_/4_1_1.jpg','image',0),
	(307,90,'/4/_/4_2_1.jpg','image',0),
	(308,90,'/4/_/4_3_1.jpg','image',0),
	(309,90,'/5/_/5_1.jpg','image',0),
	(310,90,'/6/_/6_3.jpg','image',0),
	(311,90,'/6/_/6_1_1.jpg','image',0),
	(312,90,'/6/_/6_2_1.jpg','image',0),
	(313,90,'/7/_/7_1__1.jpg','image',0),
	(314,90,'/7/_/7_2__1.jpg','image',0),
	(315,90,'/9/_/9_1.jpg','image',0),
	(316,90,'/1/2/12_1_1.jpg','image',0),
	(317,90,'/1/3/13_1.jpg','image',0),
	(318,90,'/1/4/14_1_1.jpg','image',0),
	(319,90,'/1/5/15_1.jpg','image',0),
	(320,90,'/a/n/angels_2.jpg','image',0),
	(321,90,'/a/n/angels_1_1.jpg','image',0),
	(322,90,'/b/a/baby_elephant_2.jpg','image',0),
	(323,90,'/b/a/baby_elephant_1_1.jpg','image',0),
	(324,90,'/b/l/blue1_1.png','image',0),
	(325,90,'/b/l/blue2_1.png','image',0),
	(326,90,'/b/u/butterfly_3_1.jpg','image',0),
	(327,90,'/b/u/butterfly1_1.jpg','image',0),
	(328,90,'/b/u/butterfly4_1.jpg','image',0),
	(329,90,'/c/r/crab_pink_1.jpg','image',0),
	(330,90,'/f/i/fiery1_1.jpg','image',0),
	(331,90,'/g/r/green1_1.png','image',0),
	(332,90,'/i/m/img_e6997_1.jpg','image',0),
	(333,90,'/i/m/img_4985_1.jpg','image',0),
	(334,90,'/i/m/img_5020_1.jpg','image',0),
	(335,90,'/i/m/img_5023_1.jpg','image',0),
	(336,90,'/i/m/img_5027_1.jpg','image',0),
	(337,90,'/i/m/img_5054_1_1.jpg','image',0),
	(338,90,'/i/m/img_5077_1_1.jpg','image',0),
	(339,90,'/i/m/img_7033_1_1.jpg','image',0),
	(340,90,'/i/m/img_7037_1_3.jpg','image',0),
	(341,90,'/i/m/img_7037_1_1_1.jpg','image',0),
	(342,90,'/i/m/img_7037_1_2_1.jpg','image',0),
	(343,90,'/i/m/img_7055_1.jpg','image',0),
	(344,90,'/i/m/img_7069_1.jpg','image',0),
	(345,90,'/i/m/img_7080_1_1.jpg','image',0),
	(346,90,'/i/m/img_7104_1.jpg','image',0),
	(347,90,'/i/m/img_7110_1.jpg','image',0),
	(348,90,'/i/m/img_7111_2_1.jpg','image',0),
	(349,90,'/i/m/img_7122_1_1.jpg','image',0),
	(350,90,'/i/m/img_e6492_1.jpg','image',0),
	(351,90,'/i/m/img_e6507_1.jpg','image',0),
	(352,90,'/i/m/img_e6511_1_1.jpg','image',0),
	(353,90,'/i/m/img_e6512_1.jpg','image',0),
	(354,90,'/i/m/img_e6517_1.jpg','image',0),
	(355,90,'/i/m/img_e6547_2.jpg','image',0),
	(356,90,'/i/m/img_e6547_1_1.jpg','image',0),
	(357,90,'/i/m/img_e6562_1_1.jpg','image',0),
	(358,90,'/i/m/img_e6602_1.jpg','image',0),
	(359,90,'/i/m/img_e6684_1.jpg','image',0),
	(360,90,'/i/m/img_e6704_1.jpg','image',0),
	(361,90,'/i/m/img_e6729_1.jpg','image',0),
	(362,90,'/i/m/img_e6743_1.jpg','image',0),
	(363,90,'/i/m/img_e6766_1.jpg','image',0),
	(364,90,'/i/m/img_e6770_1.jpg','image',0),
	(365,90,'/i/m/img_e6788_1.jpg','image',0),
	(366,90,'/i/m/img_e6792_1.jpg','image',0),
	(367,90,'/i/m/img_e6821_1.jpg','image',0),
	(368,90,'/i/m/img_e6840_1_1.jpg','image',0),
	(369,90,'/i/m/img_e6912_1.jpg','image',0),
	(370,90,'/i/m/img_e6922_1.jpg','image',0),
	(371,90,'/i/m/img_e6935_1.jpg','image',0),
	(372,90,'/i/m/img_e6950_1.jpg','image',0),
	(373,90,'/i/m/img_e6957_1.jpg','image',0),
	(374,90,'/i/m/img_e6960_1_1.jpg','image',0),
	(375,90,'/i/m/img_e6964_1.jpg','image',0),
	(376,90,'/i/m/img_e6966_1.jpg','image',0),
	(377,90,'/i/m/img_e6993_1.jpg','image',0),
	(378,90,'/i/m/img_e6996_1.jpg','image',0),
	(379,90,'/n/h/nh009-2_1_.jpg','image',0),
	(380,90,'/n/h/nh009-3_1.jpg','image',0),
	(381,90,'/n/h/nh009-3_1_1.jpg','image',0),
	(382,90,'/n/h/nh011-1_1_.jpg','image',0),
	(383,90,'/n/h/nh011-2.jpg','image',0),
	(384,90,'/n/h/nh011-3.jpg','image',0),
	(385,90,'/n/h/nh012-1.jpg','image',0),
	(386,90,'/n/h/nh012-2.jpg','image',0),
	(387,90,'/n/h/nh012-3.jpg','image',0),
	(388,90,'/n/h/nh015_.jpg','image',0),
	(389,90,'/n/h/nh015__1.jpg','image',0),
	(390,90,'/n/h/nh015__2.jpg','image',0),
	(391,90,'/n/h/nh016_.jpg','image',0),
	(392,90,'/n/h/nh016__1.jpg','image',0),
	(393,90,'/n/h/nh018__1.jpg','image',0),
	(394,90,'/n/h/nh018__1_1.jpg','image',0),
	(395,90,'/n/h/nh018__1_2.jpg','image',0),
	(396,90,'/n/h/nh022-1_1100px.jpg','image',0),
	(397,90,'/n/h/nh022-2_1100px.jpg','image',0),
	(398,90,'/n/h/nh022-3.jpg','image',0),
	(399,90,'/n/h/nh023-1.jpg','image',0),
	(400,90,'/n/h/nh023-2.jpg','image',0),
	(401,90,'/n/h/nh023-3.jpg','image',0),
	(402,90,'/n/h/nh024-1.jpg','image',0),
	(403,90,'/n/h/nh025.jpg','image',0),
	(404,90,'/n/h/nh027-1.jpg','image',0),
	(405,90,'/n/h/nh027-2.jpg','image',0),
	(406,90,'/n/h/nh027-5.jpg','image',0),
	(407,90,'/n/h/nh029-4-1-800x800.jpg','image',0),
	(408,90,'/n/h/nh030-1.jpg','image',0),
	(409,90,'/n/h/nh030-2.jpg','image',0),
	(410,90,'/n/h/nh033.jpg','image',0),
	(411,90,'/n/h/nh034.jpg','image',0),
	(412,90,'/n/h/nhk002-4.jpg','image',0),
	(413,90,'/n/h/nhk002-5.jpg','image',0),
	(414,90,'/n/h/nhk004-1_4.jpg','image',0),
	(415,90,'/n/h/nhk004-2.jpg','image',0),
	(416,90,'/n/h/nhk004-3.jpg','image',0),
	(417,90,'/n/h/nhk004-4.jpg','image',0),
	(418,90,'/n/h/nhk004-5.jpg','image',0),
	(419,90,'/n/h/nhk004-6.jpg','image',0),
	(420,90,'/n/h/nhk004-8.jpg','image',0),
	(421,90,'/n/h/nhk005-1.jpg','image',0),
	(422,90,'/n/h/nhk007.jpg','image',0),
	(423,90,'/p/i/pink2.png','image',0),
	(424,90,'/p/i/pink2_1.png','image',0),
	(425,90,'/p/i/pink3.png','image',0),
	(426,90,'/p/i/pink3_1.png','image',0),
	(427,90,'/p/r/princess1.jpg','image',0),
	(428,90,'/p/r/princess2.jpg','image',0),
	(429,90,'/r/a/rabbit_2.jpg','image',0),
	(430,90,'/r/u/rukzaki.nohoo_15_11_2017_14_47_38_835.jpg','image',0),
	(431,90,'/r/u/rukzaki.nohoo_15_11_2017_14_47_45_771.jpg','image',0),
	(432,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_32_359.jpg','image',0),
	(433,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_44_623.jpg','image',0),
	(434,90,'/r/u/rukzaki.nohoo_15_11_2017_14_48_53_145_2_.jpg','image',0),
	(435,90,'/r/u/rukzaki.nohoo_15_11_2017_14_50_13_61.jpg','image',0);

/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_media_gallery_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record Id',
  PRIMARY KEY (`record_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_VAL_ID_STORE_ID` (`entity_id`,`value_id`,`store_id`),
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

LOCK TABLES `catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `entity_id`, `label`, `position`, `disabled`, `record_id`)
VALUES
	(78,0,24,NULL,1,0,152),
	(79,0,24,NULL,3,0,153),
	(80,0,25,NULL,1,0,154),
	(75,0,23,NULL,1,0,201),
	(76,0,23,NULL,2,0,202),
	(92,0,23,NULL,4,0,203),
	(81,0,26,NULL,1,0,214),
	(100,0,34,NULL,1,0,233),
	(101,0,34,NULL,2,0,234),
	(102,0,34,NULL,3,0,235),
	(103,0,35,NULL,1,0,236),
	(104,0,35,NULL,2,0,237),
	(96,0,32,NULL,1,0,238),
	(105,0,32,NULL,2,0,239),
	(97,0,33,NULL,1,0,245),
	(98,0,33,NULL,2,0,246),
	(99,0,33,NULL,3,0,247),
	(106,0,33,NULL,4,0,248),
	(107,0,33,NULL,5,0,249),
	(111,0,38,NULL,1,0,253),
	(112,0,38,NULL,2,0,254),
	(113,0,38,NULL,3,0,255),
	(114,0,39,NULL,1,0,256),
	(115,0,39,NULL,2,0,257),
	(116,0,39,NULL,3,0,258),
	(117,0,39,NULL,4,0,259),
	(118,0,40,NULL,1,0,260),
	(119,0,40,NULL,2,0,261),
	(120,0,41,NULL,1,0,262),
	(121,0,41,NULL,2,0,263),
	(122,0,41,NULL,3,0,264),
	(123,0,42,NULL,1,0,265),
	(110,0,37,NULL,1,0,275),
	(130,0,37,NULL,4,0,276),
	(131,0,45,NULL,1,0,279),
	(132,0,45,NULL,2,0,280),
	(133,0,46,NULL,1,0,285),
	(134,0,46,NULL,2,0,286),
	(135,0,46,NULL,3,0,287),
	(93,0,30,NULL,1,0,288),
	(95,0,30,NULL,2,0,289),
	(136,0,30,NULL,3,0,290),
	(94,0,31,NULL,1,0,291),
	(137,0,31,NULL,2,0,292),
	(138,0,47,NULL,2,0,293),
	(139,0,47,NULL,3,0,294),
	(140,0,47,NULL,4,0,295),
	(141,0,47,NULL,5,0,296),
	(142,0,48,NULL,1,0,305),
	(143,0,48,NULL,2,0,306),
	(144,0,48,NULL,3,0,307),
	(145,0,48,NULL,4,0,308),
	(175,0,57,NULL,1,0,338),
	(176,0,57,NULL,2,0,339),
	(177,0,58,NULL,1,0,340),
	(178,0,59,NULL,1,0,341),
	(179,0,60,NULL,1,0,342),
	(180,0,61,NULL,1,0,343),
	(181,0,62,NULL,1,0,344),
	(182,0,62,NULL,2,0,345),
	(183,0,62,NULL,3,0,346),
	(187,0,63,NULL,1,0,350),
	(188,0,63,NULL,2,0,351),
	(189,0,63,NULL,3,0,352),
	(190,0,64,NULL,1,0,354),
	(191,0,64,NULL,2,0,355),
	(192,0,65,NULL,2,0,356),
	(193,0,65,NULL,3,0,357),
	(194,0,65,NULL,4,0,358),
	(195,0,65,NULL,5,0,359),
	(196,0,66,NULL,1,0,360),
	(197,0,66,NULL,2,0,361),
	(198,0,67,NULL,1,0,362),
	(199,0,68,NULL,1,0,363),
	(200,0,68,NULL,2,0,364),
	(201,0,70,NULL,1,0,365),
	(202,0,70,NULL,2,0,366),
	(203,0,70,NULL,3,0,367),
	(204,0,69,NULL,1,0,368),
	(205,0,71,NULL,1,0,369),
	(206,0,71,NULL,3,0,370),
	(207,0,71,NULL,4,0,371),
	(212,0,73,NULL,1,0,376),
	(213,0,73,NULL,3,0,377),
	(214,0,73,NULL,6,0,378),
	(215,0,74,NULL,1,0,379),
	(216,0,74,NULL,2,0,380),
	(217,0,74,NULL,3,0,381),
	(218,0,75,NULL,1,0,382),
	(219,0,75,NULL,2,0,383),
	(220,0,75,NULL,3,0,384),
	(221,0,76,NULL,1,0,386),
	(223,0,78,NULL,1,0,388),
	(208,0,72,NULL,1,0,390),
	(209,0,72,NULL,2,0,391),
	(210,0,72,NULL,3,0,392),
	(211,0,72,NULL,5,0,393),
	(235,0,3,NULL,1,0,412),
	(236,0,3,NULL,2,0,413),
	(237,0,3,NULL,3,0,414),
	(238,0,12,NULL,1,0,417),
	(239,0,12,NULL,2,0,418),
	(232,0,2,NULL,1,0,420),
	(240,0,2,NULL,0,0,421),
	(241,0,16,NULL,0,0,422),
	(242,0,16,NULL,1,0,423),
	(244,0,16,NULL,3,0,425),
	(38,0,17,NULL,1,0,426),
	(39,0,17,NULL,2,0,427),
	(40,0,17,NULL,3,0,428),
	(44,0,19,NULL,1,0,429),
	(45,0,19,NULL,2,0,430),
	(46,0,19,NULL,3,0,431),
	(47,0,19,NULL,4,0,432),
	(229,0,16,NULL,1,0,560),
	(56,0,20,NULL,5,0,561),
	(57,0,20,NULL,6,0,562),
	(58,0,20,NULL,7,0,563),
	(59,0,20,NULL,8,0,564),
	(225,0,20,NULL,6,0,565),
	(91,0,21,NULL,5,0,566),
	(230,0,21,NULL,4,0,567),
	(231,0,22,NULL,5,0,570),
	(232,0,22,NULL,6,0,571),
	(90,0,28,NULL,4,0,572),
	(233,0,28,NULL,1,0,573),
	(234,0,29,NULL,1,0,574),
	(108,0,36,NULL,1,0,575),
	(109,0,36,NULL,0,0,576),
	(148,0,49,NULL,3,0,577),
	(149,0,49,NULL,4,0,578),
	(235,0,49,NULL,2,0,579),
	(152,0,50,NULL,6,0,580),
	(236,0,50,NULL,0,0,581),
	(237,0,50,NULL,4,0,582),
	(238,0,50,NULL,5,0,583),
	(129,0,43,NULL,6,0,584),
	(239,0,43,NULL,3,0,585),
	(240,0,43,NULL,4,0,586),
	(241,0,43,NULL,5,0,587),
	(154,0,51,NULL,2,0,588),
	(155,0,51,NULL,5,0,589),
	(156,0,51,NULL,6,0,590),
	(160,0,52,NULL,4,0,591),
	(242,0,52,NULL,3,0,592),
	(162,0,53,NULL,2,0,593),
	(163,0,53,NULL,3,0,594),
	(165,0,54,NULL,4,0,603),
	(166,0,54,NULL,5,0,604),
	(246,0,54,NULL,1,0,605),
	(247,0,54,NULL,2,0,606),
	(248,0,54,NULL,3,0,607),
	(186,0,56,NULL,3,0,608),
	(249,0,56,NULL,1,0,609),
	(250,0,56,NULL,2,0,610),
	(251,0,79,NULL,4,0,611),
	(168,0,55,NULL,2,0,612),
	(169,0,55,NULL,3,0,613),
	(244,0,55,NULL,1,0,614);

/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_media_gallery_value_to_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_to_entity`;

CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Product Entity ID',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`),
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

LOCK TABLES `catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` (`value_id`, `entity_id`)
VALUES
	(232,2),
	(240,2),
	(235,3),
	(236,3),
	(237,3),
	(238,12),
	(239,12),
	(229,16),
	(241,16),
	(242,16),
	(244,16),
	(38,17),
	(39,17),
	(40,17),
	(44,19),
	(45,19),
	(46,19),
	(47,19),
	(56,20),
	(57,20),
	(58,20),
	(59,20),
	(225,20),
	(91,21),
	(230,21),
	(231,22),
	(232,22),
	(75,23),
	(76,23),
	(92,23),
	(78,24),
	(79,24),
	(80,25),
	(81,26),
	(90,28),
	(233,28),
	(234,29),
	(93,30),
	(95,30),
	(136,30),
	(94,31),
	(137,31),
	(96,32),
	(105,32),
	(97,33),
	(98,33),
	(99,33),
	(106,33),
	(107,33),
	(100,34),
	(101,34),
	(102,34),
	(103,35),
	(104,35),
	(108,36),
	(109,36),
	(110,37),
	(130,37),
	(111,38),
	(112,38),
	(113,38),
	(114,39),
	(115,39),
	(116,39),
	(117,39),
	(118,40),
	(119,40),
	(120,41),
	(121,41),
	(122,41),
	(123,42),
	(129,43),
	(239,43),
	(240,43),
	(241,43),
	(131,45),
	(132,45),
	(133,46),
	(134,46),
	(135,46),
	(138,47),
	(139,47),
	(140,47),
	(141,47),
	(142,48),
	(143,48),
	(144,48),
	(145,48),
	(148,49),
	(149,49),
	(235,49),
	(152,50),
	(236,50),
	(237,50),
	(238,50),
	(154,51),
	(155,51),
	(156,51),
	(160,52),
	(242,52),
	(162,53),
	(163,53),
	(165,54),
	(166,54),
	(246,54),
	(247,54),
	(248,54),
	(168,55),
	(169,55),
	(244,55),
	(186,56),
	(249,56),
	(250,56),
	(175,57),
	(176,57),
	(177,58),
	(178,59),
	(179,60),
	(180,61),
	(181,62),
	(182,62),
	(183,62),
	(187,63),
	(188,63),
	(189,63),
	(190,64),
	(191,64),
	(192,65),
	(193,65),
	(194,65),
	(195,65),
	(196,66),
	(197,66),
	(198,67),
	(199,68),
	(200,68),
	(204,69),
	(201,70),
	(202,70),
	(203,70),
	(205,71),
	(206,71),
	(207,71),
	(208,72),
	(209,72),
	(210,72),
	(211,72),
	(212,73),
	(213,73),
	(214,73),
	(215,74),
	(216,74),
	(217,74),
	(218,75),
	(219,75),
	(220,75),
	(221,76),
	(223,78),
	(251,79);

/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_media_gallery_value_video
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_video`;

CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';



# Dump of table catalog_product_entity_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_text`;

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

LOCK TABLES `catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(2,85,0,2,'Kids Messenger Bag-Butterfly Style'),
	(3,85,0,3,'Kids Messenger Shoulder Bag-Butterfly Style'),
	(12,85,0,12,'Kids Messenger Bag-Penguin Style'),
	(16,85,0,16,'Butterfly Style Messenger Bag'),
	(17,85,0,17,'Pink Penguin Style Messenger Bag'),
	(19,85,0,19,'Black Penguin Style Messenger Bag'),
	(20,85,0,20,'Green Magical Mermaid Style Bag'),
	(21,85,0,21,'Cute Rabbit Kids Waterproof Sling Bag'),
	(22,85,0,22,'Dinosaur Kids Sling Bag'),
	(23,85,0,23,'Blue Whale Kids Messenger Shoulder Bag'),
	(24,85,0,24,'Yellow Baby Elephant Kids Messenger Shoulder Bag'),
	(25,85,0,25,'Blue Baby Elephant Kids Messenger Shoulder Bag '),
	(26,85,0,26,'Green Baby Elephant Shoulder Bag'),
	(28,85,0,28,'Coral Crab Kids Messenger Shoulder Bag'),
	(29,85,0,29,'Crab Kids Waist Bag'),
	(30,85,0,30,'Euoplocephalus Style Kids Backpack'),
	(31,85,0,31,'Orange Euoplocephalus Style Kids Backpack'),
	(32,85,0,32,'Yellow Dinosaur Euoplocephalus Style Kids Backpack'),
	(33,85,0,33,'Cute Rabbit Kids Backpack'),
	(34,85,0,34,'Blue Angel Wings Kids Backpack'),
	(35,85,0,35,'Yellow Angel Wings Kids Backpack'),
	(36,85,0,36,'Buzzing Bee Kids Backpack'),
	(37,85,0,37,'Cute Cow Kids Backpack'),
	(38,85,0,38,'Blue Rabbit Kids Backpack'),
	(39,85,0,39,'Yellow Butterfly Kids Backpack'),
	(40,85,0,40,'Green Butterfly Kids Backpack'),
	(41,85,0,41,'Pink Pumpkin Car Kids Backpack'),
	(42,85,0,42,'Blue Pumpkin Car Kids Backpack'),
	(43,85,0,43,'Nemo Kids Backpack'),
	(45,85,0,45,'Blue Cute Baby Elephant Kids Backpack'),
	(46,85,0,46,'Amazing Dinosaur Kids Backpack'),
	(47,85,0,47,'Stegosaurus Kids Backpack'),
	(48,85,0,48,'Green Hippo Kids Backpack'),
	(49,85,0,49,'Orange Hippo Kids Backpack'),
	(50,85,0,50,'Baby Green T-Rex Kids Backpack'),
	(51,85,0,51,'Baby Orange T-Rex Kids Backpack'),
	(52,85,0,52,'Blue Happy Rabbit Kids Backpack'),
	(53,85,0,53,'Blue Baby Penguin Kids Backpack'),
	(54,85,0,54,'Purple Magical Mermaid Kids Backpack'),
	(55,85,0,55,'Blue Magical Mermaid Kids Backpack'),
	(56,85,0,56,'Green Magical Mermaid Backpack'),
	(57,85,0,57,'Red Tiger Kids Backpack'),
	(58,85,0,58,'Green Tiger Kids Backpack'),
	(59,85,0,59,'Yellow Tiger Kids Backpack'),
	(60,85,0,60,'Small Blue Elephant Kids Backpack'),
	(61,85,0,61,'Small Yellow Elephant Kids Backpack'),
	(62,85,0,62,'Small Purple Elephant Kids Backpack'),
	(63,85,0,63,'Yellow Elephant Kids Backpack'),
	(64,85,0,64,'Green Elephant Kids Backpack'),
	(65,85,0,65,'Blue Elephant Kids Backpack'),
	(66,85,0,66,'Blue Whale Kids Backpack'),
	(67,85,0,67,'Shark Kids Backpack'),
	(68,85,0,68,'Crazy Shark Kids Backpack'),
	(69,85,0,69,'Blue Clown Fish Kids Backpack'),
	(70,85,0,70,'Yellow Clown Fish Kids Backpack'),
	(71,85,0,71,'Coral Miss Crab Kids Backpack'),
	(72,85,0,72,'Pink Miss Crab Backpack'),
	(73,85,0,73,'Black Penguin Kids Backpack'),
	(74,85,0,74,'Blue Penguin Kids Backpack'),
	(75,85,0,75,'Pink Penguin Kids Backpack'),
	(76,85,0,76,'Orange Dancing Dolphin Kids Backpack'),
	(78,85,0,78,'Yellow Dancing Dolphin Kids Backpack'),
	(79,85,0,79,'Orange Happy Rabbit Kids Backpack');

/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_entity_tier_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `percentage_value` decimal(5,2) DEFAULT NULL COMMENT 'Percentage value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';



# Dump of table catalog_product_entity_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

LOCK TABLES `catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`)
VALUES
	(9,73,0,2,'Green Butterfly Kids Messenger Shoulder Bag'),
	(10,84,0,2,'Kids Messenger Bag-Butterfly Style'),
	(11,86,0,2,'Kids Messenger Bag-Butterfly Style '),
	(12,87,0,2,'/n/h/nhk004-8.jpg'),
	(13,88,0,2,'/n/h/nhk004-8.jpg'),
	(14,89,0,2,'/n/h/nhk004-8.jpg'),
	(15,106,0,2,'container2'),
	(16,118,0,2,'0'),
	(17,121,0,2,'kids-messenger-bag-butterfly-style'),
	(18,127,0,2,'2'),
	(19,128,0,2,'/n/h/nhk004-8.jpg'),
	(28,73,0,3,'Yellow Butterfly Kids Messenger Shoulder Bag'),
	(29,84,0,3,'Kids Messenger Shoulder Bag-Butterfly Style'),
	(30,86,0,3,'Kids Messenger Shoulder Bag-Butterfly Style '),
	(31,87,0,3,'/n/h/nhk004-4.jpg'),
	(32,88,0,3,'/n/h/nhk004-4.jpg'),
	(33,89,0,3,'/n/h/nhk004-4.jpg'),
	(34,106,0,3,'container2'),
	(35,118,0,3,'0'),
	(36,121,0,3,'kids-messenger-shoulder-bag-butterfly-style'),
	(37,127,0,3,'2'),
	(38,128,0,3,'/n/h/nhk004-4.jpg'),
	(171,73,0,12,'Blue Penguin Kids Messenger Shoulder Bag'),
	(172,84,0,12,'Kids Messenger Bag-Penguin Style'),
	(173,86,0,12,'Kids Messenger Bag-Penguin Style '),
	(174,106,0,12,'container2'),
	(175,118,0,12,'0'),
	(176,121,0,12,'kids-messenger-bag-penguin-style'),
	(177,127,0,12,'2'),
	(178,87,0,12,'/b/l/blue2.png'),
	(179,88,0,12,'/b/l/blue2.png'),
	(180,89,0,12,'/b/l/blue2.png'),
	(181,128,0,12,'/b/l/blue.png'),
	(267,73,0,16,'Pink Butterfly Kids Messenger Shoulder Bag'),
	(268,84,0,16,'Butterfly Style Messenger Bag'),
	(269,86,0,16,'Butterfly Style Messenger Bag '),
	(270,87,0,16,'/b/u/butterfly3.jpg'),
	(271,88,0,16,'/b/u/butterfly3.jpg'),
	(272,89,0,16,'/b/u/butterfly3.jpg'),
	(273,106,0,16,'container2'),
	(274,118,0,16,'0'),
	(275,121,0,16,'butterfly-style-messenger-bag'),
	(276,127,0,16,'2'),
	(277,128,0,16,'/n/h/nhk004-1_4.jpg'),
	(286,73,0,17,'Pink Penguin Kids Messenger Shoulder Bag'),
	(287,84,0,17,'Pink Penguin Style Messenger Bag'),
	(288,86,0,17,'Pink Penguin Style Messenger Bag '),
	(289,87,0,17,'/p/i/pink2_1.png'),
	(290,88,0,17,'/p/i/pink2_1.png'),
	(291,89,0,17,'/p/i/pink2_1.png'),
	(292,106,0,17,'container2'),
	(293,118,0,17,'0'),
	(294,121,0,17,'pink-penguin-style-messenger-bag'),
	(295,127,0,17,'2'),
	(296,128,0,17,'/p/i/pink2_1.png'),
	(336,73,0,19,'Black Penguin Kids Messenger Shoulder Bag'),
	(337,84,0,19,'Black Penguin Style Messenger Bag'),
	(338,86,0,19,'Black Penguin Style Messenger Bag '),
	(339,87,0,19,'/4/_/4_1.jpg'),
	(340,88,0,19,'/4/_/4_1.jpg'),
	(341,89,0,19,'/4/_/4_1.jpg'),
	(342,106,0,19,'container2'),
	(343,118,0,19,'0'),
	(344,121,0,19,'black-penguin-style-messenger-bag'),
	(345,127,0,19,'2'),
	(346,128,0,19,'/4/_/4_1.jpg'),
	(359,73,0,20,'Green Magical Mermaid Style Kids Shoulder Bag'),
	(360,84,0,20,'Green Magical Mermaid Style Bag'),
	(361,86,0,20,'Green Magical Mermaid Style Bag '),
	(362,87,0,20,'/1/2/12_1.jpg'),
	(363,88,0,20,'/1/2/12_1.jpg'),
	(364,89,0,20,'/1/2/12_1.jpg'),
	(365,106,0,20,'container2'),
	(366,118,0,20,'0'),
	(367,121,0,20,'green-magical-mermaid-style-bag'),
	(368,127,0,20,'2'),
	(369,128,0,20,'/1/2/12_1.jpg'),
	(394,73,0,21,'Cute Rabbit Kids Waterproof Sling Bag'),
	(395,84,0,21,'Cute Rabbit Kids Waterproof Sling Bag'),
	(396,86,0,21,'Cute Rabbit Kids Waterproof Sling Bag '),
	(397,87,0,21,'/r/a/rabbit_1.jpg'),
	(398,88,0,21,'/r/a/rabbit_1.jpg'),
	(399,89,0,21,'/r/a/rabbit_1.jpg'),
	(400,106,0,21,'container2'),
	(401,118,0,21,'0'),
	(402,121,0,21,'cute-rabbit-kids-waterproof-sling-bag'),
	(403,127,0,21,'2'),
	(404,128,0,21,'/l/i/lightweight_cute_rabbit_kids_sling_bag_waterproof_small_shoulder_bag.jpg'),
	(409,73,0,22,'Dinosaur Style Kids Waterproof Sling Bag'),
	(410,84,0,22,'Dinosaur Kids Sling Bag'),
	(411,86,0,22,'Dinosaur Kids Sling Bag '),
	(412,87,0,22,'/f/i/fiery1_2.jpg'),
	(413,88,0,22,'/f/i/fiery1_2.jpg'),
	(414,89,0,22,'/f/i/fiery1_2.jpg'),
	(415,106,0,22,'container2'),
	(416,118,0,22,'0'),
	(417,121,0,22,'dinosaur-kids-sling-bag'),
	(418,127,0,22,'2'),
	(419,128,0,22,'/d/i/dino3.jpg'),
	(444,73,0,23,'Blue Whale Kids Messenger Shoulder Bag'),
	(445,84,0,23,'Blue Whale Kids Messenger Shoulder Bag'),
	(446,86,0,23,'Blue Whale Kids Messenger Shoulder Bag '),
	(447,87,0,23,'/n/h/nhk007.jpg'),
	(448,88,0,23,'/n/h/nhk007.jpg'),
	(449,89,0,23,'/n/h/nhk007.jpg'),
	(450,106,0,23,'container2'),
	(451,118,0,23,'0'),
	(452,121,0,23,'blue-whale-kids-messenger-shoulder-bag'),
	(453,127,0,23,'2'),
	(454,128,0,23,'/n/h/nhk007.jpg'),
	(459,73,0,24,'Yellow Baby Elephant Kids Messenger Shoulder Bag'),
	(460,84,0,24,'Yellow Baby Elephant Kids Messenger Shoulder Bag'),
	(461,86,0,24,'Yellow Baby Elephant Kids Messenger Shoulder Bag '),
	(462,87,0,24,'/n/h/nhk002-5.jpg'),
	(463,88,0,24,'/n/h/nhk002-5.jpg'),
	(464,89,0,24,'/n/h/nhk002-5.jpg'),
	(465,106,0,24,'container2'),
	(466,118,0,24,'0'),
	(467,121,0,24,'yellow-baby-elephant-kids-messenger-shoulder-bag'),
	(468,127,0,24,'2'),
	(469,128,0,24,'/n/h/nhk002-5.jpg'),
	(482,73,0,25,'Blue Baby Elephant Kids Messenger Shoulder Bag '),
	(483,84,0,25,'Blue Baby Elephant Kids Messenger Shoulder Bag '),
	(484,86,0,25,'Blue Baby Elephant Kids Messenger Shoulder Bag  '),
	(485,87,0,25,'/b/l/blue1.png'),
	(486,88,0,25,'/b/l/blue1.png'),
	(487,89,0,25,'/b/l/blue1.png'),
	(488,106,0,25,'container2'),
	(489,118,0,25,'0'),
	(490,121,0,25,'blue-baby-elephant-kids-messenger-shoulder-bag'),
	(491,127,0,25,'2'),
	(492,128,0,25,'/b/l/blue1.png'),
	(497,73,0,26,'Green Baby Elephant Kids Messenger Shoulder Bag'),
	(498,84,0,26,'Green Baby Elephant Shoulder Bag'),
	(499,86,0,26,'Green Baby Elephant Shoulder Bag '),
	(500,87,0,26,'/g/r/green1.png'),
	(501,88,0,26,'/g/r/green1.png'),
	(502,89,0,26,'/g/r/green1.png'),
	(503,106,0,26,'container2'),
	(504,118,0,26,'0'),
	(505,121,0,26,'green-baby-elephant-shoulder-bag'),
	(506,127,0,26,'2'),
	(507,128,0,26,'/g/r/green1.png'),
	(527,73,0,28,'Red Coral Crab Style Kids Messenger Shoulder Bag'),
	(528,84,0,28,'Coral Crab Kids Messenger Shoulder Bag'),
	(529,86,0,28,'Coral Crab Kids Messenger Shoulder Bag '),
	(530,87,0,28,'/n/h/nhk005-1_2.jpg'),
	(531,88,0,28,'/n/h/nhk005-1_2.jpg'),
	(532,89,0,28,'/n/h/nhk005-1_2.jpg'),
	(533,106,0,28,'container2'),
	(534,118,0,28,'0'),
	(535,121,0,28,'coral-crab-kids-messenger-shoulder-bag'),
	(536,127,0,28,'2'),
	(537,128,0,28,'/c/o/coral_crab3_1.jpg'),
	(542,73,0,29,'Crab Style Kids Waist Bag'),
	(543,84,0,29,'Crab Kids Waist Bag'),
	(544,86,0,29,'Crab Kids Waist Bag '),
	(545,87,0,29,'/c/r/crab_pink_3.jpg'),
	(546,88,0,29,'/c/r/crab_pink_3.jpg'),
	(547,89,0,29,'/c/r/crab_pink_3.jpg'),
	(548,106,0,29,'container2'),
	(549,118,0,29,'0'),
	(550,121,0,29,'crab-kids-waist-bag'),
	(551,127,0,29,'2'),
	(552,128,0,29,'/n/o/nohoo-waterproof-font-b-fanny-b-font-font-b-pack-b-font-animals-crab-waist-font.jpg'),
	(625,73,0,30,'Green Dinosaur Euoplocephalus Style Kids Backpack'),
	(626,84,0,30,'Euoplocephalus Style Kids Backpack'),
	(627,86,0,30,'Euoplocephalus Style Kids Backpack '),
	(628,87,0,30,'/n/h/nh022-1_1100px.jpg'),
	(629,88,0,30,'/n/h/nh022-1_1100px.jpg'),
	(630,89,0,30,'/n/h/nh022-1_1100px.jpg'),
	(631,106,0,30,'container2'),
	(632,118,0,30,'0'),
	(633,121,0,30,'euoplocephalus-style-kids-backpack'),
	(634,127,0,30,'2'),
	(635,128,0,30,'/n/h/nh022-1_1100px.jpg'),
	(644,73,0,31,'Orange Dinosaur Euoplocephalus Style Kids Backpack'),
	(645,84,0,31,'Orange Euoplocephalus Style Kids Backpack'),
	(646,86,0,31,'Orange Euoplocephalus Style Kids Backpack '),
	(647,87,0,31,'/n/h/nh022-2_1100px.jpg'),
	(648,88,0,31,'/n/h/nh022-2_1100px.jpg'),
	(649,89,0,31,'/n/h/nh022-2_1100px.jpg'),
	(650,106,0,31,'container2'),
	(651,118,0,31,'0'),
	(652,121,0,31,'orange-euoplocephalus-style-kids-backpack'),
	(653,127,0,31,'2'),
	(654,128,0,31,'/n/h/nh022-2_1100px.jpg'),
	(663,73,0,32,'Yellow Dinosaur Euoplocephalus Style Kids Backpack'),
	(664,84,0,32,'Yellow Dinosaur Euoplocephalus Style Kids Backpack'),
	(665,86,0,32,'Yellow Dinosaur Euoplocephalus Style Kids Backpack '),
	(666,87,0,32,'/n/h/nh022-3.jpg'),
	(667,88,0,32,'/n/h/nh022-3.jpg'),
	(668,89,0,32,'/n/h/nh022-3.jpg'),
	(669,106,0,32,'container2'),
	(670,118,0,32,'0'),
	(671,121,0,32,'yellow-dinosaur-euoplocephalus-style-kids-backpack'),
	(672,127,0,32,'2'),
	(673,128,0,32,'/n/h/nh022-3.jpg'),
	(690,73,0,33,'Cute Rabbit Kids Backpack'),
	(691,84,0,33,'Cute Rabbit Kids Backpack'),
	(692,86,0,33,'Cute Rabbit Kids Backpack '),
	(693,87,0,33,'/r/a/rabbit_2.jpg'),
	(694,88,0,33,'/r/a/rabbit_2.jpg'),
	(695,89,0,33,'/r/a/rabbit_2.jpg'),
	(696,106,0,33,'container2'),
	(697,118,0,33,'0'),
	(698,121,0,33,'cute-rabbit-kids-backpack'),
	(699,127,0,33,'2'),
	(700,128,0,33,'/r/a/rabbit_2.jpg'),
	(705,73,0,34,'Blue Angel Wings Kids Backpack'),
	(706,84,0,34,'Blue Angel Wings Kids Backpack'),
	(707,86,0,34,'Blue Angel Wings Kids Backpack '),
	(708,87,0,34,'/n/h/nh030-2.jpg'),
	(709,88,0,34,'/n/h/nh030-2.jpg'),
	(710,89,0,34,'/n/h/nh030-2.jpg'),
	(711,106,0,34,'container2'),
	(712,118,0,34,'0'),
	(713,121,0,34,'blue-angel-wings-kids-backpack'),
	(714,127,0,34,'2'),
	(715,128,0,34,'/n/h/nh030-2.jpg'),
	(720,73,0,35,'Yellow Angel Wings Kids Backpack'),
	(721,84,0,35,'Yellow Angel Wings Kids Backpack'),
	(722,86,0,35,'Yellow Angel Wings Kids Backpack '),
	(723,87,0,35,'/n/h/nh030-1.jpg'),
	(724,88,0,35,'/n/h/nh030-1.jpg'),
	(725,89,0,35,'/n/h/nh030-1.jpg'),
	(726,106,0,35,'container2'),
	(727,118,0,35,'0'),
	(728,121,0,35,'yellow-angel-wings-kids-backpack'),
	(729,127,0,35,'2'),
	(730,128,0,35,'/n/h/nh030-1.jpg'),
	(747,73,0,36,'Buzzing Bee Kids Backpack'),
	(748,84,0,36,'Buzzing Bee Kids Backpack'),
	(749,86,0,36,'Buzzing Bee Kids Backpack '),
	(750,87,0,36,'/7/_/7_1_.jpg'),
	(751,88,0,36,'/7/_/7_1_.jpg'),
	(752,89,0,36,'/7/_/7_1_.jpg'),
	(753,106,0,36,'container2'),
	(754,118,0,36,'0'),
	(755,121,0,36,'buzzing-bee-kids-backpack'),
	(756,127,0,36,'2'),
	(757,128,0,36,'/1/_/1_1_.jpg'),
	(762,73,0,37,'Cute Cow Kids Backpack'),
	(763,84,0,37,'Cute Cow Kids Backpack'),
	(764,86,0,37,'Cute Cow Kids Backpack '),
	(765,87,0,37,'/n/h/nh034.jpg'),
	(766,88,0,37,'/n/h/nh034.jpg'),
	(767,89,0,37,'/n/h/nh034.jpg'),
	(768,106,0,37,'container2'),
	(769,118,0,37,'0'),
	(770,121,0,37,'cute-cow-kids-backpack'),
	(771,127,0,37,'2'),
	(772,128,0,37,'/n/h/nh034.jpg'),
	(777,73,0,38,'Blue Rabbit Kids Backpack'),
	(778,84,0,38,'Blue Rabbit Kids Backpack'),
	(779,86,0,38,'Blue Rabbit Kids Backpack '),
	(780,87,0,38,'/3/_/3.png'),
	(781,88,0,38,'/3/_/3.png'),
	(782,89,0,38,'/3/_/3.png'),
	(783,106,0,38,'container2'),
	(784,118,0,38,'0'),
	(785,121,0,38,'blue-rabbit-kids-backpack'),
	(786,127,0,38,'2'),
	(787,128,0,38,'/3/_/3.png'),
	(792,73,0,39,'Yellow Butterfly Kids Backpack'),
	(793,84,0,39,'Yellow Butterfly Kids Backpack'),
	(794,86,0,39,'Yellow Butterfly Kids Backpack '),
	(795,87,0,39,'/b/u/butterfly1.jpg'),
	(796,88,0,39,'/b/u/butterfly1.jpg'),
	(797,89,0,39,'/b/u/butterfly1.jpg'),
	(798,106,0,39,'container2'),
	(799,118,0,39,'0'),
	(800,121,0,39,'yellow-butterfly-kids-backpack'),
	(801,127,0,39,'2'),
	(802,128,0,39,'/b/u/butterfly1.jpg'),
	(807,73,0,40,'Green Butterfly Kids Backpack'),
	(808,84,0,40,'Green Butterfly Kids Backpack'),
	(809,86,0,40,'Green Butterfly Kids Backpack '),
	(810,87,0,40,'/b/u/butterfly4.jpg'),
	(811,88,0,40,'/b/u/butterfly4.jpg'),
	(812,89,0,40,'/b/u/butterfly4.jpg'),
	(813,106,0,40,'container2'),
	(814,118,0,40,'0'),
	(815,121,0,40,'green-butterfly-kids-backpack'),
	(816,127,0,40,'2'),
	(817,128,0,40,'/b/u/butterfly4.jpg'),
	(822,73,0,41,'Pink Pumpkin Car Kids Backpack'),
	(823,84,0,41,'Pink Pumpkin Car Kids Backpack'),
	(824,86,0,41,'Pink Pumpkin Car Kids Backpack '),
	(825,87,0,41,'/p/r/princess2.jpg'),
	(826,88,0,41,'/p/r/princess2.jpg'),
	(827,89,0,41,'/p/r/princess2.jpg'),
	(828,106,0,41,'container2'),
	(829,118,0,41,'0'),
	(830,121,0,41,'pink-pumpkin-car-kids-backpack'),
	(831,127,0,41,'2'),
	(832,128,0,41,'/p/r/princess2.jpg'),
	(837,73,0,42,'Blue Pumpkin Car Kids Backpack'),
	(838,84,0,42,'Blue Pumpkin Car Kids Backpack'),
	(839,86,0,42,'Blue Pumpkin Car Kids Backpack '),
	(840,87,0,42,'/p/r/princess1.jpg'),
	(841,88,0,42,'/p/r/princess1.jpg'),
	(842,89,0,42,'/p/r/princess1.jpg'),
	(843,106,0,42,'container2'),
	(844,118,0,42,'0'),
	(845,121,0,42,'blue-pumpkin-car-kids-backpack'),
	(846,127,0,42,'2'),
	(847,128,0,42,'/p/r/princess1.jpg'),
	(852,73,0,43,'Nemo Kids Backpack'),
	(853,84,0,43,'Nemo Kids Backpack'),
	(854,86,0,43,'Nemo Kids Backpack '),
	(855,87,0,43,'/3/_/3_2.png'),
	(856,88,0,43,'/3/_/3_2.png'),
	(857,89,0,43,'/3/_/3_2.png'),
	(858,106,0,43,'container2'),
	(859,118,0,43,'0'),
	(860,121,0,43,'nemo-kids-backpack'),
	(861,127,0,43,'2'),
	(862,128,0,43,'/n/e/nemo.jpg'),
	(894,73,0,45,'Blue Cute Baby Elephant Kids Backpack'),
	(895,84,0,45,'Blue Cute Baby Elephant Kids Backpack'),
	(896,86,0,45,'Blue Cute Baby Elephant Kids Backpack '),
	(897,87,0,45,'/4/_/4_3.jpg'),
	(898,88,0,45,'/4/_/4_3.jpg'),
	(899,89,0,45,'/4/_/4_3.jpg'),
	(900,106,0,45,'container2'),
	(901,118,0,45,'0'),
	(902,121,0,45,'blue-cute-baby-elephant-kids-backpack'),
	(903,127,0,45,'2'),
	(904,128,0,45,'/4/_/4_3.jpg'),
	(913,73,0,46,'Amazing Dinosaur Kids Backpack'),
	(914,84,0,46,'Amazing Dinosaur Kids Backpack'),
	(915,86,0,46,'Amazing Dinosaur Kids Backpack '),
	(916,87,0,46,'/n/h/nh023-1.jpg'),
	(917,88,0,46,'/n/h/nh023-1.jpg'),
	(918,89,0,46,'/n/h/nh023-1.jpg'),
	(919,106,0,46,'container2'),
	(920,118,0,46,'0'),
	(921,121,0,46,'amazing-dinosaur-kids-backpack'),
	(922,127,0,46,'2'),
	(923,128,0,46,'/n/h/nh023-1.jpg'),
	(936,73,0,47,'Stegosaurus Kids Backpack'),
	(937,84,0,47,'Stegosaurus Kids Backpack'),
	(938,86,0,47,'Stegosaurus Kids Backpack '),
	(939,87,0,47,'/f/i/fiery1.jpg'),
	(940,88,0,47,'/f/i/fiery1.jpg'),
	(941,89,0,47,'/f/i/fiery1.jpg'),
	(942,106,0,47,'container2'),
	(943,118,0,47,'0'),
	(944,121,0,47,'stegosaurus-kids-backpack'),
	(945,127,0,47,'2'),
	(946,128,0,47,'/f/i/fiery1.jpg'),
	(951,73,0,48,'Green Hippo Kids Backpack'),
	(952,84,0,48,'Green Hippo Kids Backpack'),
	(953,86,0,48,'Green Hippo Kids Backpack '),
	(954,87,0,48,'/6/_/6_2.jpg'),
	(955,88,0,48,'/6/_/6_2.jpg'),
	(956,89,0,48,'/6/_/6_2.jpg'),
	(957,106,0,48,'container2'),
	(958,118,0,48,'0'),
	(959,121,0,48,'green-hippo-kids-backpack'),
	(960,127,0,48,'2'),
	(961,128,0,48,'/6/_/6_2.jpg'),
	(966,73,0,49,'Orange Hippo Kids Backpack'),
	(967,84,0,49,'Orange Hippo Kids Backpack'),
	(968,86,0,49,'Orange Hippo Kids Backpack '),
	(969,87,0,49,'/3/_/3_4.jpg'),
	(970,88,0,49,'/3/_/3_4.jpg'),
	(971,89,0,49,'/3/_/3_4.jpg'),
	(972,106,0,49,'container2'),
	(973,118,0,49,'0'),
	(974,121,0,49,'orange-hippo-kids-backpack'),
	(975,127,0,49,'2'),
	(976,128,0,49,'/o/r/orange_hippo.jpg'),
	(985,73,0,50,'Baby Green T-Rex Kids Backpack'),
	(986,84,0,50,'Baby Green T-Rex Kids Backpack'),
	(987,86,0,50,'Baby Green T-Rex Kids Backpack '),
	(988,87,0,50,'/0/2/029e.jpg'),
	(989,88,0,50,'/0/2/029e.jpg'),
	(990,89,0,50,'/0/2/029e.jpg'),
	(991,106,0,50,'container2'),
	(992,118,0,50,'0'),
	(993,121,0,50,'baby-green-t-rex-kids-backpack'),
	(994,127,0,50,'2'),
	(995,128,0,50,'/n/o/nohoo-orange-green-dragon-kids-baby-cartoon-waterproof-school-bags-3d-animals-backpack-for-girls-boys-school-bags-for-teenager.jpg'),
	(1000,73,0,51,'Baby Orange T-Rex Kids Backpack'),
	(1001,84,0,51,'Baby Orange T-Rex Kids Backpack'),
	(1002,86,0,51,'Baby Orange T-Rex Kids Backpack '),
	(1003,87,0,51,'/n/h/nh029-4-1-800x800.jpg'),
	(1004,88,0,51,'/n/h/nh029-4-1-800x800.jpg'),
	(1005,89,0,51,'/n/h/nh029-4-1-800x800.jpg'),
	(1006,106,0,51,'container2'),
	(1007,118,0,51,'0'),
	(1008,121,0,51,'baby-orange-t-rex-kids-backpack'),
	(1009,127,0,51,'2'),
	(1010,128,0,51,'/n/o/nohoo-orange-trex-kid-backpack.jpg'),
	(1015,73,0,52,'Blue Happy Rabbit Kids Backpack'),
	(1016,84,0,52,'Blue Happy Rabbit Kids Backpack'),
	(1017,86,0,52,'Blue Happy Rabbit Kids Backpack '),
	(1018,87,0,52,'/3/_/3_2_2.jpg'),
	(1019,88,0,52,'/3/_/3_2_2.jpg'),
	(1020,89,0,52,'/3/_/3_2_2.jpg'),
	(1021,106,0,52,'container2'),
	(1022,118,0,52,'0'),
	(1023,121,0,52,'blue-happy-rabbit-kids-backpack'),
	(1024,127,0,52,'2'),
	(1025,128,0,52,'/1/5/1542350564-nohoo-rabbit-nh044-backpack-s-blue1.jpg'),
	(1030,73,0,53,'Blue Baby Penguin Kids Backpack'),
	(1031,84,0,53,'Blue Baby Penguin Kids Backpack'),
	(1032,86,0,53,'Blue Baby Penguin Kids Backpack '),
	(1033,87,0,53,'/1/b/1blue.png'),
	(1034,88,0,53,'/1/b/1blue.png'),
	(1035,89,0,53,'/1/b/1blue.png'),
	(1036,106,0,53,'container2'),
	(1037,118,0,53,'0'),
	(1038,121,0,53,'blue-baby-penguin-kids-backpack'),
	(1039,127,0,53,'2'),
	(1040,128,0,53,'/p/e/penguin.png'),
	(1045,73,0,54,'Purple Magical Mermaid Kids Backpack'),
	(1046,84,0,54,'Purple Magical Mermaid Kids Backpack'),
	(1047,86,0,54,'Purple Magical Mermaid Kids Backpack '),
	(1048,87,0,54,'/_/1/_1.jpg'),
	(1049,88,0,54,'/_/1/_1.jpg'),
	(1050,89,0,54,'/_/1/_1.jpg'),
	(1051,106,0,54,'container2'),
	(1052,118,0,54,'0'),
	(1053,121,0,54,'purple-magical-mermaid-kids-backpack'),
	(1054,127,0,54,'2'),
	(1055,128,0,54,'/_/1/_1_1_.jpg'),
	(1060,73,0,55,'Blue Magical Mermaid Kids Backpack'),
	(1061,84,0,55,'Blue Magical Mermaid Kids Backpack'),
	(1062,86,0,55,'Blue Magical Mermaid Kids Backpack '),
	(1063,87,0,55,'/m/e/mermaid1_1.png'),
	(1064,88,0,55,'/m/e/mermaid1_1.png'),
	(1065,89,0,55,'/m/e/mermaid1_1.png'),
	(1066,106,0,55,'container2'),
	(1067,118,0,55,'0'),
	(1068,121,0,55,'blue-magical-mermaid-kids-backpack'),
	(1069,127,0,55,'2'),
	(1070,128,0,55,'/_/9/_9_1_.jpg'),
	(1075,73,0,56,'Green Magical Mermaid Kids Backpack'),
	(1076,84,0,56,'Green Magical Mermaid Backpack'),
	(1077,86,0,56,'Green Magical Mermaid Backpack '),
	(1078,87,0,56,'/_/4/_4.jpg'),
	(1079,88,0,56,'/_/4/_4.jpg'),
	(1080,89,0,56,'/_/4/_4.jpg'),
	(1081,106,0,56,'container2'),
	(1082,118,0,56,'0'),
	(1083,121,0,56,'green-magical-mermaid-backpack'),
	(1084,127,0,56,'2'),
	(1085,128,0,56,'/_/5/_5_1_.jpg'),
	(1098,73,0,57,'Red Tiger Kids Backpack'),
	(1099,84,0,57,'Red Tiger Kids Backpack'),
	(1100,86,0,57,'Red Tiger Kids Backpack '),
	(1101,87,0,57,'/n/h/nh018__1.jpg'),
	(1102,88,0,57,'/n/h/nh018__1.jpg'),
	(1103,89,0,57,'/n/h/nh018__1.jpg'),
	(1104,106,0,57,'container2'),
	(1105,118,0,57,'0'),
	(1106,121,0,57,'red-tiger-kids-backpack'),
	(1107,127,0,57,'2'),
	(1108,128,0,57,'/n/h/nh018__1.jpg'),
	(1121,73,0,58,'Green Tiger Kids Backpack'),
	(1122,84,0,58,'Green Tiger Kids Backpack'),
	(1123,86,0,58,'Green Tiger Kids Backpack '),
	(1124,87,0,58,'/n/h/nh018__1_1.jpg'),
	(1125,88,0,58,'/n/h/nh018__1_1.jpg'),
	(1126,89,0,58,'/n/h/nh018__1_1.jpg'),
	(1127,106,0,58,'container2'),
	(1128,118,0,58,'0'),
	(1129,121,0,58,'green-tiger-kids-backpack'),
	(1130,127,0,58,'2'),
	(1131,128,0,58,'/n/h/nh018__1_1.jpg'),
	(1136,73,0,59,'Yellow Tiger Kids Backpack'),
	(1137,84,0,59,'Yellow Tiger Kids Backpack'),
	(1138,86,0,59,'Yellow Tiger Kids Backpack '),
	(1139,87,0,59,'/n/h/nh018__1_2.jpg'),
	(1140,88,0,59,'/n/h/nh018__1_2.jpg'),
	(1141,89,0,59,'/n/h/nh018__1_2.jpg'),
	(1142,106,0,59,'container2'),
	(1143,118,0,59,'0'),
	(1144,121,0,59,'yellow-tiger-kids-backpack'),
	(1145,127,0,59,'2'),
	(1146,128,0,59,'/n/h/nh018__1_2.jpg'),
	(1151,73,0,60,'Small Blue Elephant Kids Backpack'),
	(1152,84,0,60,'Small Blue Elephant Kids Backpack'),
	(1153,86,0,60,'Small Blue Elephant Kids Backpack '),
	(1154,87,0,60,'/n/h/nh015_.jpg'),
	(1155,88,0,60,'/n/h/nh015_.jpg'),
	(1156,89,0,60,'/n/h/nh015_.jpg'),
	(1157,106,0,60,'container2'),
	(1158,118,0,60,'0'),
	(1159,121,0,60,'small-blue-elephant-kids-backpack'),
	(1160,127,0,60,'2'),
	(1161,128,0,60,'/n/h/nh015_.jpg'),
	(1166,73,0,61,'Small Yellow Elephant Kids Backpack'),
	(1167,84,0,61,'Small Yellow Elephant Kids Backpack'),
	(1168,86,0,61,'Small Yellow Elephant Kids Backpack '),
	(1169,87,0,61,'/n/h/nh015__1.jpg'),
	(1170,88,0,61,'/n/h/nh015__1.jpg'),
	(1171,89,0,61,'/n/h/nh015__1.jpg'),
	(1172,106,0,61,'container2'),
	(1173,118,0,61,'0'),
	(1174,121,0,61,'small-yellow-elephant-kids-backpack'),
	(1175,127,0,61,'2'),
	(1176,128,0,61,'/n/h/nh015__1.jpg'),
	(1181,73,0,62,'Small Purple Elephant Kids Backpack'),
	(1182,84,0,62,'Small Purple Elephant Kids Backpack'),
	(1183,86,0,62,'Small Purple Elephant Kids Backpack '),
	(1184,87,0,62,'/n/h/nh015__2.jpg'),
	(1185,88,0,62,'/n/h/nh015__2.jpg'),
	(1186,89,0,62,'/n/h/nh015__2.jpg'),
	(1187,106,0,62,'container2'),
	(1188,118,0,62,'0'),
	(1189,121,0,62,'small-purple-elephant-kids-backpack'),
	(1190,127,0,62,'2'),
	(1191,128,0,62,'/n/h/nh015__2.jpg'),
	(1204,73,0,63,'Yellow Elephant Kids Backpack'),
	(1205,84,0,63,'Yellow Elephant Kids Backpack'),
	(1206,86,0,63,'Yellow Elephant Kids Backpack '),
	(1207,106,0,63,'container2'),
	(1208,118,0,63,'0'),
	(1209,121,0,63,'yellow-elephant-kids-backpack'),
	(1210,127,0,63,'2'),
	(1211,87,0,63,'/n/h/nh012-1.jpg'),
	(1212,88,0,63,'/n/h/nh012-1.jpg'),
	(1213,89,0,63,'/n/h/nh012-1.jpg'),
	(1214,128,0,63,'/n/h/nh012-1.jpg'),
	(1219,73,0,64,'Green Elephant Kids Backpack'),
	(1220,84,0,64,'Green Elephant Kids Backpack'),
	(1221,86,0,64,'Green Elephant Kids Backpack '),
	(1222,87,0,64,'/n/h/nh012-2.jpg'),
	(1223,88,0,64,'/n/h/nh012-2.jpg'),
	(1224,89,0,64,'/n/h/nh012-2.jpg'),
	(1225,106,0,64,'container2'),
	(1226,118,0,64,'0'),
	(1227,121,0,64,'green-elephant-kids-backpack'),
	(1228,127,0,64,'2'),
	(1229,128,0,64,'/n/h/nh012-2.jpg'),
	(1238,73,0,65,'Blue Elephant Kids Backpack'),
	(1239,84,0,65,'Blue Elephant Kids Backpack'),
	(1240,86,0,65,'Blue Elephant Kids Backpack '),
	(1241,87,0,65,'/n/h/nh012-3.jpg'),
	(1242,88,0,65,'/n/h/nh012-3.jpg'),
	(1243,89,0,65,'/n/h/nh012-3.jpg'),
	(1244,106,0,65,'container2'),
	(1245,118,0,65,'0'),
	(1246,121,0,65,'blue-elephant-kids-backpack'),
	(1247,127,0,65,'2'),
	(1248,128,0,65,'/n/h/nh012-3.jpg'),
	(1253,73,0,66,'Blue Whale Kids Backpack'),
	(1254,84,0,66,'Blue Whale Kids Backpack'),
	(1255,86,0,66,'Blue Whale Kids Backpack '),
	(1256,87,0,66,'/n/h/nh025.jpg'),
	(1257,88,0,66,'/n/h/nh025.jpg'),
	(1258,89,0,66,'/n/h/nh025.jpg'),
	(1259,106,0,66,'container2'),
	(1260,118,0,66,'0'),
	(1261,121,0,66,'blue-whale-kids-backpack'),
	(1262,127,0,66,'2'),
	(1263,128,0,66,'/n/h/nh025.jpg'),
	(1268,73,0,67,'Shark Kids Backpack'),
	(1269,84,0,67,'Shark Kids Backpack'),
	(1270,86,0,67,'Shark Kids Backpack '),
	(1271,87,0,67,'/n/h/nh033.jpg'),
	(1272,88,0,67,'/n/h/nh033.jpg'),
	(1273,89,0,67,'/n/h/nh033.jpg'),
	(1274,106,0,67,'container2'),
	(1275,118,0,67,'0'),
	(1276,121,0,67,'shark-kids-backpack'),
	(1277,127,0,67,'2'),
	(1278,128,0,67,'/n/h/nh033.jpg'),
	(1283,73,0,68,'Crazy Shark Kids Backpack'),
	(1284,84,0,68,'Crazy Shark Kids Backpack'),
	(1285,86,0,68,'Crazy Shark Kids Backpack '),
	(1286,87,0,68,'/n/h/nh024-1.jpg'),
	(1287,88,0,68,'/n/h/nh024-1.jpg'),
	(1288,89,0,68,'/n/h/nh024-1.jpg'),
	(1289,106,0,68,'container2'),
	(1290,118,0,68,'0'),
	(1291,121,0,68,'crazy-shark-kids-backpack'),
	(1292,127,0,68,'2'),
	(1293,128,0,68,'/n/h/nh024-1.jpg'),
	(1298,73,0,69,'Blue Clown Fish Kids Backpack'),
	(1299,84,0,69,'Blue Clown Fish Kids Backpack'),
	(1300,86,0,69,'Blue Clown Fish Kids Backpack '),
	(1301,106,0,69,'container2'),
	(1302,118,0,69,'0'),
	(1303,121,0,69,'blue-clown-fish-kids-backpack'),
	(1304,127,0,69,'2'),
	(1305,73,0,70,'Yellow Clown Fish Kids Backpack'),
	(1306,84,0,70,'Yellow Clown Fish Kids Backpack'),
	(1307,86,0,70,'Yellow Clown Fish Kids Backpack '),
	(1308,87,0,70,'/n/h/nh016_.jpg'),
	(1309,88,0,70,'/n/h/nh016_.jpg'),
	(1310,89,0,70,'/n/h/nh016_.jpg'),
	(1311,106,0,70,'container2'),
	(1312,118,0,70,'0'),
	(1313,121,0,70,'yellow-clown-fish-kids-backpack'),
	(1314,127,0,70,'2'),
	(1315,128,0,70,'/n/h/nh016_.jpg'),
	(1320,87,0,69,'/n/h/nh016__1.jpg'),
	(1321,88,0,69,'/n/h/nh016__1.jpg'),
	(1322,89,0,69,'/n/h/nh016__1.jpg'),
	(1323,128,0,69,'/n/h/nh016__1.jpg'),
	(1328,73,0,71,'Coral Miss Crab Kids Backpack'),
	(1329,84,0,71,'Coral Miss Crab Kids Backpack'),
	(1330,86,0,71,'Coral Miss Crab Kids Backpack '),
	(1331,87,0,71,'/n/h/nh027-2.jpg'),
	(1332,88,0,71,'/n/h/nh027-2.jpg'),
	(1333,89,0,71,'/n/h/nh027-2.jpg'),
	(1334,106,0,71,'container2'),
	(1335,118,0,71,'0'),
	(1336,121,0,71,'coral-miss-crab-kids-backpack'),
	(1337,127,0,71,'2'),
	(1338,128,0,71,'/n/h/nh027-2.jpg'),
	(1343,73,0,72,'Pink Miss Crab Kids Backpack'),
	(1344,84,0,72,'Pink Miss Crab Backpack'),
	(1345,86,0,72,'Pink Miss Crab Backpack '),
	(1346,87,0,72,'/c/r/crab_pink.jpg'),
	(1347,88,0,72,'/c/r/crab_pink.jpg'),
	(1348,89,0,72,'/c/r/crab_pink.jpg'),
	(1349,106,0,72,'container2'),
	(1350,118,0,72,'0'),
	(1351,121,0,72,'pink-miss-crab-backpack'),
	(1352,127,0,72,'2'),
	(1353,128,0,72,'/c/r/crab_pink.jpg'),
	(1358,73,0,73,'Black Penguin Kids Backpack'),
	(1359,84,0,73,'Black Penguin Kids Backpack'),
	(1360,86,0,73,'Black Penguin Kids Backpack '),
	(1361,87,0,73,'/n/h/nh011-1_1_.jpg'),
	(1362,88,0,73,'/n/h/nh011-1_1_.jpg'),
	(1363,89,0,73,'/n/h/nh011-1_1_.jpg'),
	(1364,106,0,73,'container2'),
	(1365,118,0,73,'0'),
	(1366,121,0,73,'black-penguin-kids-backpack'),
	(1367,127,0,73,'2'),
	(1368,128,0,73,'/n/h/nh011-1_1_.jpg'),
	(1373,73,0,74,'Blue Penguin Kids Backpack'),
	(1374,84,0,74,'Blue Penguin Kids Backpack'),
	(1375,86,0,74,'Blue Penguin Kids Backpack '),
	(1376,87,0,74,'/n/h/nh011-2.jpg'),
	(1377,88,0,74,'/n/h/nh011-2.jpg'),
	(1378,89,0,74,'/n/h/nh011-2.jpg'),
	(1379,106,0,74,'container2'),
	(1380,118,0,74,'0'),
	(1381,121,0,74,'blue-penguin-kids-backpack'),
	(1382,127,0,74,'2'),
	(1383,128,0,74,'/n/h/nh011-2.jpg'),
	(1388,73,0,75,'Pink Penguin Kids Backpack'),
	(1389,84,0,75,'Pink Penguin Kids Backpack'),
	(1390,86,0,75,'Pink Penguin Kids Backpack '),
	(1391,87,0,75,'/n/h/nh011-3.jpg'),
	(1392,88,0,75,'/n/h/nh011-3.jpg'),
	(1393,89,0,75,'/n/h/nh011-3.jpg'),
	(1394,106,0,75,'container2'),
	(1395,118,0,75,'0'),
	(1396,121,0,75,'pink-penguin-kids-backpack'),
	(1397,127,0,75,'2'),
	(1398,128,0,75,'/n/h/nh011-3.jpg'),
	(1403,73,0,76,'Orange Dancing Dolphin Kids Backpack'),
	(1404,84,0,76,'Orange Dancing Dolphin Kids Backpack'),
	(1405,86,0,76,'Orange Dancing Dolphin Kids Backpack '),
	(1406,87,0,76,'/n/h/nh009-2_1_.jpg'),
	(1407,88,0,76,'/n/h/nh009-2_1_.jpg'),
	(1408,89,0,76,'/n/h/nh009-2_1_.jpg'),
	(1409,106,0,76,'container2'),
	(1410,118,0,76,'0'),
	(1411,121,0,76,'orange-dancing-dolphin-kids-backpack'),
	(1412,127,0,76,'2'),
	(1413,128,0,76,'/n/h/nh009-2_1_.jpg'),
	(1437,73,0,78,'Yellow Dancing Dolphin Kids Backpack'),
	(1438,84,0,78,'Yellow Dancing Dolphin Kids Backpack'),
	(1439,86,0,78,'Yellow Dancing Dolphin Kids Backpack '),
	(1440,87,0,78,'/n/h/nh009-3_1_1.jpg'),
	(1441,88,0,78,'/n/h/nh009-3_1_1.jpg'),
	(1442,89,0,78,'/n/h/nh009-3_1_1.jpg'),
	(1443,106,0,78,'container2'),
	(1444,118,0,78,'0'),
	(1445,121,0,78,'yellow-dancing-dolphin-kids-backpack'),
	(1446,127,0,78,'2'),
	(1447,128,0,78,'/n/h/nh009-3_1_1.jpg'),
	(1452,73,0,79,'Orange Happy Rabbit Kids Backpack'),
	(1453,84,0,79,'Orange Happy Rabbit Kids Backpack'),
	(1454,86,0,79,'Orange Happy Rabbit Kids Backpack '),
	(1455,87,0,79,'/y/e/yellow1.jpg'),
	(1456,88,0,79,'/y/e/yellow1.jpg'),
	(1457,89,0,79,'/y/e/yellow1.jpg'),
	(1458,106,0,79,'container2'),
	(1459,118,0,79,'0'),
	(1460,121,0,79,'orange-happy-rabbit-kids-backpack'),
	(1461,127,0,79,'2'),
	(1462,128,0,79,'/o/r/or_rb.png');

/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_frontend_action
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_frontend_action`;

CREATE TABLE `catalog_product_frontend_action` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Action Id',
  `type_id` varchar(64) NOT NULL COMMENT 'Type of product action',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `added_at` bigint(20) NOT NULL COMMENT 'Added At',
  PRIMARY KEY (`action_id`),
  UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_VISITOR_ID_PRODUCT_ID_TYPE_ID` (`visitor_id`,`product_id`,`type_id`),
  UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_CUSTOMER_ID_PRODUCT_ID_TYPE_ID` (`customer_id`,`product_id`,`type_id`),
  KEY `CAT_PRD_FRONTEND_ACTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  CONSTRAINT `CAT_PRD_FRONTEND_ACTION_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_FRONTEND_ACTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Frontend Action Table';



# Dump of table catalog_product_index_eav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav`;

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

LOCK TABLES `catalog_product_index_eav` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_eav` DISABLE KEYS */;

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`, `source_id`)
VALUES
	(1,93,1,5,1),
	(2,93,1,8,2),
	(3,93,1,6,3),
	(12,93,1,7,12),
	(14,93,1,6,14),
	(16,93,1,5,16),
	(17,93,1,5,17),
	(18,93,1,4,18),
	(19,93,1,4,19),
	(20,93,1,8,20),
	(21,93,1,7,21),
	(22,93,1,8,22),
	(23,93,1,7,23),
	(24,93,1,6,24),
	(25,93,1,7,25),
	(27,93,1,5,27),
	(28,93,1,5,28),
	(29,93,1,5,29),
	(30,93,1,8,30),
	(31,93,1,6,31),
	(32,93,1,6,32),
	(33,93,1,7,33),
	(34,93,1,7,34),
	(35,93,1,6,35),
	(36,93,1,6,36),
	(38,93,1,7,38),
	(39,93,1,6,39),
	(40,93,1,8,40),
	(41,93,1,5,41),
	(43,93,1,5,43),
	(44,93,1,7,44),
	(45,93,1,7,45),
	(46,93,1,8,46),
	(48,93,1,8,48),
	(49,93,1,5,49),
	(50,93,1,8,50),
	(52,93,1,7,52),
	(53,93,1,7,53),
	(54,93,1,7,54),
	(55,93,1,5,55),
	(56,93,1,8,56),
	(57,93,1,5,57),
	(58,93,1,8,58),
	(59,93,1,6,59),
	(60,93,1,7,60),
	(61,93,1,6,61),
	(62,93,1,8,62),
	(63,93,1,6,63),
	(64,93,1,8,64),
	(65,93,1,7,65),
	(66,93,1,7,66),
	(67,93,1,7,67),
	(69,93,1,7,69),
	(70,93,1,6,70),
	(71,93,1,5,71),
	(72,93,1,5,72),
	(73,93,1,4,73),
	(74,93,1,7,74),
	(75,93,1,5,75),
	(76,93,1,5,76),
	(77,93,1,6,77),
	(78,93,1,6,78),
	(79,93,1,5,79),
	(1,99,1,4,1),
	(2,99,1,4,2),
	(3,99,1,4,3),
	(12,99,1,4,12),
	(14,99,1,4,14),
	(16,99,1,4,16),
	(17,99,1,4,17),
	(18,99,1,4,18),
	(19,99,1,4,19),
	(20,99,1,4,20),
	(21,99,1,4,21),
	(22,99,1,4,22),
	(23,99,1,4,23),
	(24,99,1,4,24),
	(25,99,1,4,25),
	(26,99,1,4,26),
	(27,99,1,4,27),
	(28,99,1,4,28),
	(29,99,1,4,29),
	(30,99,1,4,30),
	(31,99,1,4,31),
	(32,99,1,4,32),
	(33,99,1,4,33),
	(34,99,1,4,34),
	(35,99,1,4,35),
	(36,99,1,4,36),
	(37,99,1,4,37),
	(38,99,1,4,38),
	(39,99,1,4,39),
	(40,99,1,4,40),
	(41,99,1,4,41),
	(42,99,1,4,42),
	(43,99,1,4,43),
	(44,99,1,4,44),
	(45,99,1,4,45),
	(46,99,1,4,46),
	(47,99,1,4,47),
	(48,99,1,4,48),
	(49,99,1,4,49),
	(50,99,1,4,50),
	(51,99,1,4,51),
	(52,99,1,4,52),
	(53,99,1,4,53),
	(54,99,1,4,54),
	(55,99,1,4,55),
	(56,99,1,4,56),
	(57,99,1,4,57),
	(58,99,1,4,58),
	(59,99,1,4,59),
	(60,99,1,4,60),
	(61,99,1,4,61),
	(62,99,1,4,62),
	(63,99,1,4,63),
	(64,99,1,4,64),
	(65,99,1,4,65),
	(66,99,1,4,66),
	(67,99,1,4,67),
	(68,99,1,4,68),
	(69,99,1,4,69),
	(70,99,1,4,70),
	(71,99,1,4,71),
	(72,99,1,4,72),
	(73,99,1,4,73),
	(74,99,1,4,74),
	(75,99,1,4,75),
	(76,99,1,4,76),
	(77,99,1,4,77),
	(78,99,1,4,78),
	(79,99,1,4,79),
	(80,99,1,4,80),
	(82,99,1,4,82),
	(83,99,1,4,83);

/*!40000 ALTER TABLE `catalog_product_index_eav` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_index_eav_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';



# Dump of table catalog_product_index_eav_decimal_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';



# Dump of table catalog_product_index_eav_decimal_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_replica`;

CREATE TABLE `catalog_product_index_eav_decimal_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';



# Dump of table catalog_product_index_eav_decimal_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';



# Dump of table catalog_product_index_eav_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';



# Dump of table catalog_product_index_eav_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_replica`;

CREATE TABLE `catalog_product_index_eav_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';



# Dump of table catalog_product_index_eav_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';



# Dump of table catalog_product_index_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price`;

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

LOCK TABLES `catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`)
VALUES
	(2,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(2,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(2,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(2,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(3,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(3,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(3,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(3,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(12,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(12,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(12,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(12,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(16,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(16,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(16,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(16,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(17,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(17,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(17,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(17,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(19,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(19,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(19,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(19,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(20,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(20,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(20,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(20,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(21,0,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(21,1,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(21,2,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(21,3,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(22,0,1,0,20.000000,20.000000,20.000000,20.000000,NULL),
	(22,1,1,0,20.000000,20.000000,20.000000,20.000000,NULL),
	(22,2,1,0,20.000000,20.000000,20.000000,20.000000,NULL),
	(22,3,1,0,20.000000,20.000000,20.000000,20.000000,NULL),
	(23,0,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(23,1,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(23,2,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(23,3,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(24,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(24,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(24,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(24,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(25,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(25,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(25,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(25,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(26,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(26,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(26,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(26,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(28,0,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(28,1,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(28,2,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(28,3,1,0,24.000000,24.000000,24.000000,24.000000,NULL),
	(29,0,1,0,16.800000,16.800000,16.800000,16.800000,NULL),
	(29,1,1,0,16.800000,16.800000,16.800000,16.800000,NULL),
	(29,2,1,0,16.800000,16.800000,16.800000,16.800000,NULL),
	(29,3,1,0,16.800000,16.800000,16.800000,16.800000,NULL),
	(30,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(30,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(30,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(30,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(31,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(31,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(31,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(31,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(32,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(32,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(32,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(32,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(33,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(33,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(33,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(33,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(34,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(34,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(34,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(34,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(35,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(35,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(35,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(35,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(36,0,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(36,1,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(36,2,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(36,3,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(37,0,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(37,1,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(37,2,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(37,3,1,0,28.000000,28.000000,28.000000,28.000000,NULL),
	(38,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(38,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(38,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(38,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(39,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(39,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(39,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(39,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(40,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(40,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(40,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(40,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(41,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(41,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(41,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(41,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(42,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(42,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(42,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(42,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(43,0,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(43,1,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(43,2,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(43,3,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(45,0,1,0,30.400000,30.400000,30.400000,30.400000,NULL),
	(45,1,1,0,30.400000,30.400000,30.400000,30.400000,NULL),
	(45,2,1,0,30.400000,30.400000,30.400000,30.400000,NULL),
	(45,3,1,0,30.400000,30.400000,30.400000,30.400000,NULL),
	(46,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(46,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(46,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(46,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(47,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(47,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(47,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(47,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(48,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(48,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(48,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(48,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(49,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(49,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(49,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(49,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(50,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(50,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(50,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(50,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(51,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(51,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(51,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(51,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(52,0,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(52,1,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(52,2,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(52,3,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(53,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(53,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(53,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(53,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(54,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(54,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(54,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(54,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(55,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(55,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(55,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(55,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(56,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(56,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(56,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(56,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(57,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(57,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(57,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(57,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(58,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(58,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(58,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(58,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(59,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(59,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(59,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(59,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(60,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(60,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(60,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(60,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(61,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(61,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(61,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(61,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(62,0,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(62,1,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(62,2,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(62,3,1,0,36.000000,36.000000,36.000000,36.000000,NULL),
	(63,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(63,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(63,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(63,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(64,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(64,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(64,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(64,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(65,0,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(65,1,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(65,2,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(65,3,1,0,44.000000,44.000000,44.000000,44.000000,NULL),
	(66,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(66,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(66,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(66,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(67,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(67,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(67,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(67,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(68,0,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(68,1,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(68,2,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(68,3,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(69,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(69,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(69,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(69,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(70,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(70,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(70,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(70,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(71,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(71,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(71,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(71,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(72,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(72,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(72,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(72,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(73,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(73,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(73,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(73,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(74,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(74,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(74,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(74,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(75,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(75,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(75,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(75,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(76,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(76,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(76,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(76,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(78,0,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(78,1,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(78,2,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(78,3,1,0,40.000000,40.000000,40.000000,40.000000,NULL),
	(79,0,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(79,1,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(79,2,1,0,33.600000,33.600000,33.600000,33.600000,NULL),
	(79,3,1,0,33.600000,33.600000,33.600000,33.600000,NULL);

/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_index_price_bundle_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';



# Dump of table catalog_product_index_price_bundle_opt_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';



# Dump of table catalog_product_index_price_bundle_opt_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';



# Dump of table catalog_product_index_price_bundle_sel_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';



# Dump of table catalog_product_index_price_bundle_sel_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';



# Dump of table catalog_product_index_price_bundle_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(20,6) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(20,6) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';



# Dump of table catalog_product_index_price_cfg_opt_agr_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';



# Dump of table catalog_product_index_price_cfg_opt_agr_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';



# Dump of table catalog_product_index_price_cfg_opt_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';



# Dump of table catalog_product_index_price_cfg_opt_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';



# Dump of table catalog_product_index_price_downlod_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';



# Dump of table catalog_product_index_price_downlod_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Minimum price',
  `max_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';



# Dump of table catalog_product_index_price_final_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';



# Dump of table catalog_product_index_price_final_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(20,6) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(20,6) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';



# Dump of table catalog_product_index_price_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';



# Dump of table catalog_product_index_price_opt_agr_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';



# Dump of table catalog_product_index_price_opt_agr_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';



# Dump of table catalog_product_index_price_opt_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';



# Dump of table catalog_product_index_price_opt_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';



# Dump of table catalog_product_index_price_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_replica`;

CREATE TABLE `catalog_product_index_price_replica` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';



# Dump of table catalog_product_index_price_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(20,6) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(20,6) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(20,6) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(20,6) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';



# Dump of table catalog_product_index_tier_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(20,6) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';



# Dump of table catalog_product_index_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_index_website`;

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `default_store_id` smallint(5) unsigned NOT NULL COMMENT 'Default store id for website',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`),
  CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

LOCK TABLES `catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;

INSERT INTO `catalog_product_index_website` (`website_id`, `default_store_id`, `website_date`, `rate`)
VALUES
	(1,1,'2019-09-14',1);

/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link`;

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';



# Dump of table catalog_product_link_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link_attribute`;

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

LOCK TABLES `catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`)
VALUES
	(1,1,'position','int'),
	(2,4,'position','int'),
	(3,5,'position','int'),
	(4,3,'position','int'),
	(5,3,'qty','decimal');

/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_link_attribute_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`),
  CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';



# Dump of table catalog_product_link_attribute_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`),
  CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';



# Dump of table catalog_product_link_attribute_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`),
  CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';



# Dump of table catalog_product_link_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_link_type`;

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

LOCK TABLES `catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`)
VALUES
	(1,'relation'),
	(3,'super'),
	(4,'up_sell'),
	(5,'cross_sell');

/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_product_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option`;

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';



# Dump of table catalog_product_option_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option_price`;

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';



# Dump of table catalog_product_option_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option_title`;

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';



# Dump of table catalog_product_option_type_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option_type_price`;

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';



# Dump of table catalog_product_option_type_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option_type_title`;

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';



# Dump of table catalog_product_option_type_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_option_type_value`;

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`),
  CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';



# Dump of table catalog_product_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_relation`;

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`),
  CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';



# Dump of table catalog_product_super_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_super_attribute`;

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';



# Dump of table catalog_product_super_attribute_label
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';



# Dump of table catalog_product_super_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_super_link`;

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';



# Dump of table catalog_product_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_product_website`;

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

LOCK TABLES `catalog_product_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;

INSERT INTO `catalog_product_website` (`product_id`, `website_id`)
VALUES
	(2,1),
	(3,1),
	(12,1),
	(16,1),
	(17,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(78,1),
	(79,1);

/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalog_url_rewrite_product_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalog_url_rewrite_product_category`;

CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category_id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`),
  KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

LOCK TABLES `catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` DISABLE KEYS */;

INSERT INTO `catalog_url_rewrite_product_category` (`url_rewrite_id`, `category_id`, `product_id`)
VALUES
	(11,3,2),
	(13,3,3),
	(31,3,12),
	(39,3,16),
	(41,3,17),
	(45,3,19),
	(47,3,20),
	(49,3,21),
	(51,3,22),
	(53,3,23),
	(55,3,24),
	(57,3,25),
	(59,3,26),
	(63,3,28),
	(65,3,29),
	(67,4,30),
	(69,4,31),
	(71,4,32),
	(73,4,33),
	(75,4,34),
	(77,4,35),
	(79,4,36),
	(81,4,37),
	(83,4,38),
	(85,4,39),
	(87,4,40),
	(89,4,41),
	(91,4,42),
	(93,4,43),
	(96,4,45),
	(98,4,46),
	(100,4,47),
	(102,4,48),
	(104,4,49),
	(106,4,50),
	(108,4,51),
	(110,4,52),
	(112,4,53),
	(114,4,54),
	(116,4,55),
	(118,4,56),
	(120,4,57),
	(122,4,58),
	(124,4,59),
	(126,4,60),
	(128,4,61),
	(130,4,62),
	(132,4,63),
	(134,4,64),
	(136,4,65),
	(138,4,66),
	(140,4,67),
	(142,4,68),
	(144,4,69),
	(146,4,70),
	(148,4,71),
	(150,4,72),
	(152,4,73),
	(154,4,74),
	(156,4,75),
	(158,4,76),
	(162,4,78),
	(164,4,79);

/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cataloginventory_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock`;

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

LOCK TABLES `cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;

INSERT INTO `cataloginventory_stock` (`stock_id`, `website_id`, `stock_name`)
VALUES
	(1,0,'Default');

/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cataloginventory_stock_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock_item`;

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`),
  CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

LOCK TABLES `cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`, `website_id`)
VALUES
	(2,2,1,5.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(3,3,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(12,12,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(16,16,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(17,17,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(19,19,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(20,20,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(21,21,1,8.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(22,22,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(23,23,1,8.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(24,24,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(25,25,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(26,26,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(28,28,1,8.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(29,29,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(30,30,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(31,31,1,7.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(32,32,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(33,33,1,9.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(34,34,1,7.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(35,35,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(36,36,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(37,37,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(38,38,1,5.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(39,39,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(40,40,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(41,41,1,5.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(42,42,1,6.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(43,43,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(45,45,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(46,46,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(47,47,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(48,48,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(49,49,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(50,50,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(51,51,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(52,52,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(53,53,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(54,54,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(55,55,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(56,56,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(57,57,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(58,58,1,3.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(59,59,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(60,60,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(61,61,1,5.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(62,62,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(63,63,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(64,64,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(65,65,1,2.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(66,66,1,7.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(67,67,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(68,68,1,8.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(69,69,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(70,70,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(71,71,1,5.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(72,72,1,4.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(73,73,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(74,74,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(75,75,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(76,76,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(78,78,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0),
	(79,79,1,1.0000,0.0000,1,0,0,1,1.0000,1,10000.0000,1,1,NULL,1.0000,1,1,1,0,1,1.0000,1,0,0,0);

/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cataloginventory_stock_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock_status`;

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

LOCK TABLES `cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`)
VALUES
	(1,0,1,6.0000,1),
	(2,0,1,5.0000,1),
	(3,0,1,2.0000,1),
	(12,0,1,2.0000,1),
	(14,0,1,4.0000,0),
	(16,0,1,2.0000,1),
	(17,0,1,4.0000,1),
	(18,0,1,2.0000,0),
	(19,0,1,2.0000,1),
	(20,0,1,2.0000,1),
	(21,0,1,8.0000,1),
	(22,0,1,1.0000,1),
	(23,0,1,8.0000,1),
	(24,0,1,2.0000,1),
	(25,0,1,3.0000,1),
	(26,0,1,3.0000,1),
	(27,0,1,8.0000,0),
	(28,0,1,8.0000,1),
	(29,0,1,1.0000,1),
	(30,0,1,2.0000,1),
	(31,0,1,7.0000,1),
	(32,0,1,3.0000,1),
	(33,0,1,9.0000,1),
	(34,0,1,7.0000,1),
	(35,0,1,4.0000,1),
	(36,0,1,2.0000,1),
	(37,0,1,1.0000,1),
	(38,0,1,5.0000,1),
	(39,0,1,2.0000,1),
	(40,0,1,2.0000,1),
	(41,0,1,5.0000,1),
	(42,0,1,6.0000,1),
	(43,0,1,1.0000,1),
	(44,0,1,1.0000,1),
	(45,0,1,1.0000,1),
	(46,0,1,4.0000,1),
	(47,0,1,2.0000,1),
	(48,0,1,3.0000,1),
	(49,0,1,3.0000,1),
	(50,0,1,1.0000,1),
	(51,0,1,1.0000,1),
	(52,0,1,3.0000,1),
	(53,0,1,1.0000,1),
	(54,0,1,1.0000,1),
	(55,0,1,1.0000,1),
	(56,0,1,4.0000,1),
	(57,0,1,3.0000,1),
	(58,0,1,3.0000,1),
	(59,0,1,2.0000,1),
	(60,0,1,4.0000,1),
	(61,0,1,5.0000,1),
	(62,0,1,4.0000,1),
	(63,0,1,1.0000,1),
	(64,0,1,4.0000,1),
	(65,0,1,2.0000,1),
	(66,0,1,7.0000,1),
	(67,0,1,4.0000,1),
	(68,0,1,8.0000,1),
	(69,0,1,1.0000,1),
	(70,0,1,1.0000,1),
	(71,0,1,5.0000,1),
	(72,0,1,4.0000,1),
	(73,0,1,1.0000,1),
	(74,0,1,1.0000,1),
	(75,0,1,1.0000,1),
	(76,0,1,1.0000,1),
	(77,0,1,1.0000,0),
	(78,0,1,1.0000,1),
	(79,0,1,1.0000,1),
	(80,0,1,0.0000,0),
	(81,0,1,0.0000,0),
	(82,0,1,0.0000,0),
	(83,0,1,0.0000,0);

/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cataloginventory_stock_status_idx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';



# Dump of table cataloginventory_stock_status_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock_status_replica`;

CREATE TABLE `cataloginventory_stock_status_replica` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';



# Dump of table cataloginventory_stock_status_tmp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';



# Dump of table catalogrule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule`;

CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';



# Dump of table catalogrule_customer_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_customer_group`;

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';



# Dump of table catalogrule_group_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_group_website`;

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';



# Dump of table catalogrule_group_website_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_group_website_replica`;

CREATE TABLE `catalogrule_group_website_replica` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';



# Dump of table catalogrule_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_product`;

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';



# Dump of table catalogrule_product_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_product_price`;

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';



# Dump of table catalogrule_product_price_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_product_price_replica`;

CREATE TABLE `catalogrule_product_price_replica` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';



# Dump of table catalogrule_product_replica
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_product_replica`;

CREATE TABLE `catalogrule_product_replica` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `UNQ_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';



# Dump of table catalogrule_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogrule_website`;

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';



# Dump of table catalogsearch_fulltext_scope1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope1`;

CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

LOCK TABLES `catalogsearch_fulltext_scope1` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` DISABLE KEYS */;

INSERT INTO `catalogsearch_fulltext_scope1` (`entity_id`, `attribute_id`, `data_index`)
VALUES
	(2,73,'Green Butterfly Kids Messenger Shoulder Bag'),
	(2,74,'NHK004G'),
	(2,97,'Enabled'),
	(2,134,'None'),
	(3,73,'Yellow Butterfly Kids Messenger Shoulder Bag'),
	(3,74,'NHK004Y'),
	(3,97,'Enabled'),
	(3,134,'None'),
	(12,73,'Blue Penguin Kids Messenger Shoulder Bag'),
	(12,74,'NHK001B'),
	(12,97,'Enabled'),
	(12,134,'None'),
	(16,73,'Pink Butterfly Kids Messenger Shoulder Bag'),
	(16,74,'NHK004P'),
	(16,97,'Enabled'),
	(16,134,'None'),
	(17,73,'Pink Penguin Kids Messenger Shoulder Bag'),
	(17,74,'NHK001P'),
	(17,97,'Enabled'),
	(17,134,'None'),
	(19,73,'Black Penguin Kids Messenger Shoulder Bag'),
	(19,74,'NHK001BLACK'),
	(19,97,'Enabled'),
	(19,134,'None'),
	(20,73,'Green Magical Mermaid Style Kids Shoulder Bag'),
	(20,74,'GY266G'),
	(20,97,'Enabled'),
	(20,134,'None'),
	(21,73,'Cute Rabbit Kids Waterproof Sling Bag'),
	(21,74,'NHK006'),
	(21,97,'Enabled'),
	(21,134,'None'),
	(22,73,'Dinosaur Style Kids Waterproof Sling Bag'),
	(22,74,'NHX003'),
	(22,97,'Enabled'),
	(22,134,'None'),
	(23,73,'Blue Whale Kids Messenger Shoulder Bag'),
	(23,74,'NHK007'),
	(23,93,'Blue'),
	(23,97,'Enabled'),
	(23,129,'None'),
	(24,73,'Yellow Baby Elephant Kids Messenger Shoulder Bag'),
	(24,74,'NHK002Y'),
	(24,93,'Yellow'),
	(24,97,'Enabled'),
	(24,129,'None'),
	(25,73,'Blue Baby Elephant Kids Messenger Shoulder Bag'),
	(25,74,'NHK002B'),
	(25,93,'Blue'),
	(25,97,'Enabled'),
	(25,129,'None'),
	(26,73,'Green Baby Elephant Kids Messenger Shoulder Bag'),
	(26,74,'NHK002G'),
	(26,97,'Enabled'),
	(26,129,'None'),
	(28,73,'Red Coral Crab Style Kids Messenger Shoulder Bag'),
	(28,74,'NHK006RED'),
	(28,97,'Enabled'),
	(28,134,'None'),
	(29,73,'Crab Style Kids Waist Bag'),
	(29,74,'NHY001'),
	(29,97,'Enabled'),
	(29,134,'None'),
	(30,73,'Green Dinosaur Euoplocephalus Style Kids Backpack'),
	(30,74,'NH022G'),
	(30,93,'Green'),
	(30,97,'Enabled'),
	(30,129,'None'),
	(31,73,'Orange Dinosaur Euoplocephalus Style Kids Backpack'),
	(31,74,'NH022O'),
	(31,93,'Yellow'),
	(31,97,'Enabled'),
	(31,129,'None'),
	(32,73,'Yellow Dinosaur Euoplocephalus Style Kids Backpack'),
	(32,74,'NH022Y'),
	(32,93,'Yellow'),
	(32,97,'Enabled'),
	(32,129,'None'),
	(33,73,'Cute Rabbit Kids Backpack'),
	(33,74,'NH031'),
	(33,93,'Blue'),
	(33,97,'Enabled'),
	(33,129,'None'),
	(34,73,'Blue Angel Wings Kids Backpack'),
	(34,74,'NH030B'),
	(34,93,'Blue'),
	(34,97,'Enabled'),
	(34,129,'None'),
	(35,73,'Yellow Angel Wings Kids Backpack'),
	(35,74,'NH030Y'),
	(35,93,'Yellow'),
	(35,97,'Enabled'),
	(35,129,'None'),
	(36,73,'Buzzing Bee Kids Backpack'),
	(36,74,'NH048'),
	(36,97,'Enabled'),
	(36,134,'None'),
	(37,73,'Cute Cow Kids Backpack'),
	(37,74,'NH034'),
	(37,97,'Enabled'),
	(37,129,'None'),
	(38,73,'Blue Rabbit Kids Backpack'),
	(38,74,'NHQ008'),
	(38,93,'Blue'),
	(38,97,'Enabled'),
	(38,129,'None'),
	(39,73,'Yellow Butterfly Kids Backpack'),
	(39,74,'NH014Y'),
	(39,93,'Yellow'),
	(39,97,'Enabled'),
	(39,129,'None'),
	(40,73,'Green Butterfly Kids Backpack'),
	(40,74,'NH014G'),
	(40,93,'Green'),
	(40,97,'Enabled'),
	(40,129,'None'),
	(41,73,'Pink Pumpkin Car Kids Backpack'),
	(41,74,'NH032P'),
	(41,93,'Red'),
	(41,97,'Enabled'),
	(41,129,'None'),
	(42,73,'Blue Pumpkin Car Kids Backpack'),
	(42,74,'NH032B'),
	(42,97,'Enabled'),
	(42,129,'None'),
	(43,73,'Nemo Kids Backpack'),
	(43,74,'GY293'),
	(43,97,'Enabled'),
	(43,134,'None'),
	(45,73,'Blue Cute Baby Elephant Kids Backpack'),
	(45,74,'NH058'),
	(45,93,'Blue'),
	(45,97,'Enabled'),
	(45,129,'None'),
	(46,73,'Amazing Dinosaur Kids Backpack'),
	(46,74,'NH023'),
	(46,93,'Green'),
	(46,97,'Enabled'),
	(46,129,'None'),
	(47,73,'Stegosaurus Kids Backpack'),
	(47,74,'NH026'),
	(47,97,'Enabled'),
	(47,129,'None'),
	(48,73,'Green Hippo Kids Backpack'),
	(48,74,'NH028G'),
	(48,93,'Green'),
	(48,97,'Enabled'),
	(48,129,'None'),
	(49,73,'Orange Hippo Kids Backpack'),
	(49,74,'NH028O'),
	(49,97,'Enabled'),
	(49,134,'None'),
	(50,73,'Baby Green T-Rex Kids Backpack'),
	(50,74,'NH029SG'),
	(50,97,'Enabled'),
	(50,134,'None'),
	(51,73,'Baby Orange T-Rex Kids Backpack'),
	(51,74,'NH029LO'),
	(51,97,'Enabled'),
	(51,134,'None'),
	(52,73,'Blue Happy Rabbit Kids Backpack'),
	(52,74,'NH044'),
	(52,97,'Enabled'),
	(52,134,'None'),
	(53,73,'Blue Baby Penguin Kids Backpack'),
	(53,74,'NH066B'),
	(53,97,'Enabled'),
	(53,134,'None'),
	(54,73,'Purple Magical Mermaid Kids Backpack'),
	(54,74,'NH046P'),
	(54,97,'Enabled'),
	(54,134,'None'),
	(55,73,'Blue Magical Mermaid Kids Backpack'),
	(55,74,'NH046B'),
	(55,97,'Enabled'),
	(55,134,'None'),
	(56,73,'Green Magical Mermaid Kids Backpack'),
	(56,74,'NH046G'),
	(56,97,'Enabled'),
	(56,134,'None'),
	(57,73,'Red Tiger Kids Backpack'),
	(57,74,'NH018R'),
	(57,93,'Red'),
	(57,97,'Enabled'),
	(57,129,'None'),
	(58,73,'Green Tiger Kids Backpack'),
	(58,74,'NH018G'),
	(58,93,'Green'),
	(58,97,'Enabled'),
	(58,129,'None'),
	(59,73,'Yellow Tiger Kids Backpack'),
	(59,74,'NH018Y'),
	(59,93,'Yellow'),
	(59,97,'Enabled'),
	(59,129,'None'),
	(60,73,'Small Blue Elephant Kids Backpack'),
	(60,74,'NH015B'),
	(60,93,'Blue'),
	(60,97,'Enabled'),
	(60,129,'None'),
	(61,73,'Small Yellow Elephant Kids Backpack'),
	(61,74,'NH015Y'),
	(61,93,'Yellow'),
	(61,97,'Enabled'),
	(61,129,'None'),
	(62,73,'Small Purple Elephant Kids Backpack'),
	(62,74,'NH015P'),
	(62,93,'Green'),
	(62,97,'Enabled'),
	(62,129,'None'),
	(63,73,'Yellow Elephant Kids Backpack'),
	(63,74,'NH012Y'),
	(63,93,'Yellow'),
	(63,97,'Enabled'),
	(63,129,'None'),
	(64,73,'Green Elephant Kids Backpack'),
	(64,74,'NH012G'),
	(64,93,'Green'),
	(64,97,'Enabled'),
	(64,129,'None'),
	(65,73,'Blue Elephant Kids Backpack'),
	(65,74,'NH012B'),
	(65,93,'Blue'),
	(65,97,'Enabled'),
	(65,129,'None'),
	(66,73,'Blue Whale Kids Backpack'),
	(66,74,'NH025'),
	(66,93,'Blue'),
	(66,97,'Enabled'),
	(66,129,'None'),
	(67,73,'Shark Kids Backpack'),
	(67,74,'NH033'),
	(67,93,'Blue'),
	(67,97,'Enabled'),
	(67,129,'None'),
	(68,73,'Crazy Shark Kids Backpack'),
	(68,74,'NH024'),
	(68,97,'Enabled'),
	(68,129,'None'),
	(69,73,'Blue Clown Fish Kids Backpack'),
	(69,74,'NH016B'),
	(69,93,'Blue'),
	(69,97,'Enabled'),
	(69,129,'None'),
	(70,73,'Yellow Clown Fish Kids Backpack'),
	(70,74,'NH016Y'),
	(70,93,'Yellow'),
	(70,97,'Enabled'),
	(70,129,'None'),
	(71,73,'Coral Miss Crab Kids Backpack'),
	(71,74,'NH027R'),
	(71,93,'Red'),
	(71,97,'Enabled'),
	(71,129,'None'),
	(72,73,'Pink Miss Crab Kids Backpack'),
	(72,74,'NH027P'),
	(72,93,'Red'),
	(72,97,'Enabled'),
	(72,129,'None'),
	(73,73,'Black Penguin Kids Backpack'),
	(73,74,'NH011B'),
	(73,93,'Black'),
	(73,97,'Enabled'),
	(73,129,'None'),
	(74,73,'Blue Penguin Kids Backpack'),
	(74,74,'NH011BLUE'),
	(74,93,'Blue'),
	(74,97,'Enabled'),
	(74,129,'None'),
	(75,73,'Pink Penguin Kids Backpack'),
	(75,74,'NH011P'),
	(75,93,'Red'),
	(75,97,'Enabled'),
	(75,129,'None'),
	(76,73,'Orange Dancing Dolphin Kids Backpack'),
	(76,74,'NH009O'),
	(76,93,'Red'),
	(76,97,'Enabled'),
	(76,129,'None'),
	(78,73,'Yellow Dancing Dolphin Kids Backpack'),
	(78,74,'NH009YELLOW'),
	(78,93,'Yellow'),
	(78,97,'Enabled'),
	(78,129,'None'),
	(79,73,'Orange Happy Rabbit Kids Backpack'),
	(79,74,'NH05O'),
	(79,97,'Enabled'),
	(79,134,'None');

/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table catalogsearch_recommendations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `catalogsearch_recommendations`;

CREATE TABLE `catalogsearch_recommendations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `query_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Query Id',
  `relation_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Relation Id',
  PRIMARY KEY (`id`),
  KEY `CATALOGSEARCH_RECOMMENDATIONS_QUERY_ID_SEARCH_QUERY_QUERY_ID` (`query_id`),
  KEY `CATALOGSEARCH_RECOMMENDATIONS_RELATION_ID_SEARCH_QUERY_QUERY_ID` (`relation_id`),
  CONSTRAINT `CATALOGSEARCH_RECOMMENDATIONS_QUERY_ID_SEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `search_query` (`query_id`) ON DELETE CASCADE,
  CONSTRAINT `CATALOGSEARCH_RECOMMENDATIONS_RELATION_ID_SEARCH_QUERY_QUERY_ID` FOREIGN KEY (`relation_id`) REFERENCES `search_query` (`query_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Advanced Search Recommendations';



# Dump of table checkout_agreement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `checkout_agreement`;

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';



# Dump of table checkout_agreement_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `checkout_agreement_store`;

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';



# Dump of table cms_block
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_block`;

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

LOCK TABLES `cms_block` WRITE;
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`)
VALUES
	(1,'Homepage Slider','homepage_slider','<div class=\"main-slider homepage-slider\">\r\n<div class=\"owl-carousel homepage-carousel\">\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider1.png\'}}\" alt=\"main-banner1\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider2.png\'}}\" alt=\"main-banner2\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider3.png\'}}\" alt=\"main-banner3\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider4.png\'}}\" alt=\"main-banner4\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider5.png\'}}\" alt=\"main-banner5\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider6.png\'}}\" alt=\"main-banner6\"></div>\r\n<div class=\"item\">\r\n<div class=\"ab-box\">\r\n<div class=\"slider-title\">Latest &amp; Trendy</div>\r\n<div class=\"slider-sub-title\">20% off</div>\r\n<button class=\"slider-shop-btn\" onclick=\"location.href=\'/catalog/category/view/s/kids-backpack/id/4/\'\">SHOP NOW</button></div>\r\n<img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/slider7.png\'}}\" alt=\"main-banner7\"></div>\r\n</div>\r\n</div>','2019-08-23 00:07:37','2019-09-16 02:31:06',1),
	(2,'Homepage SubBanner','homepage_subbanner','<div id=\"custom-bannerblock\">\r\n<div class=\"container-width\">\r\n<div class=\"row\">\r\n<div class=\"subbannercms-inner\">\r\n<div class=\"subbanner-common subbanner-right\">\r\n<div class=\"subbanner-inner right-inner\">\r\n<div class=\"right-top\">\r\n<div class=\"right-top-inner subbanner-inner\"><a class=\"flex-dis\" href=\"#\"> <img class=\"sb-left leftbanner\" src=\"{{view url=\'images/banners/sb1.jpg\'}}\" alt=\"sub-banner\"></a>\r\n<div class=\"sb-right\">\r\n<div class=\"sb-title1\">Backpack</div>\r\n<div class=\"sb-content\">Take the magic with you with our range of backpack bags for boys and girls</div>\r\n<div class=\"sb-label\">20</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"right-bottom\">\r\n<div class=\"right-bottom-inner subbanner-inner\">\r\n<div class=\"sb-left\">\r\n<div class=\"sb-title1\">Shoulder Bags</div>\r\n<div class=\"sb-content\">Creating wonderful childhood for children.</div>\r\n<div class=\"sb-label\">35</div>\r\n</div>\r\n<a class=\"flex-dis\" href=\"#\"><img class=\"sb-right leftbanner\" src=\"{{view url=\'images/banners/sb2.jpg\'}}\" alt=\"sub-banner\"> </a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"subbanner-common subbanner-left\"><img class=\"sb-right leftbanner\" src=\"{{view url=\'images/banners/sb3.jpg\'}}\" alt=\"sub-banner\">\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:08:25','2019-09-16 03:38:04',1),
	(3,'Footer Middle Section3','footer_middle_section4_delete','<div class=\"footer-common collapsible mobile-collapsible\">\r\n<div class=\"footer-static\">\r\n<h5>Services</h5>\r\n<ul class=\"clearfix footer-content\">\r\n<li><a href=\"#\">Your Orders</a></li>\r\n<li><a href=\"#\">Your Wishlist</a></li>\r\n<li><a href=\"#\">Payment Methods</a></li>\r\n<li><a href=\"#\">Delivery</a></li>\r\n<li><a href=\"#\">Privacy Policy</a></li>\r\n<li><a href=\"#\">Portfolio</a></li>\r\n</ul>\r\n</div>\r\n</div>','2019-08-23 00:09:03','2019-09-14 06:43:29',0),
	(4,'Homepage Brand','homepage_brand','<div class=\"common-slider-outer\">\r\n<div class=\"brand-outer common-slider  container-width\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12  col-md-12  col-sm-12  col-xs-12\">\r\n<div class=\"brand-carousel owl-carousel\">\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand1.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand2.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand3.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand4.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand5.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand6.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand7.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand8.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand9.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand10.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand11.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand12.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"image\"><a title=\"Bramdlogo \" href=\"#\"><img class=\"img-responsive\" src=\"{{view url=\'images/brand/brand13.jpg\'}}\" alt=\"Bramdlogo \"></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:09:38','2019-09-14 06:41:39',1),
	(5,'Footer company','footer_middle_section1','<div class=\"footer-common collapsible mobile-collapsible\">\r\n<div class=\"footer-static\">\r\n<h5>MyHappyKid</h5>\r\n<ul class=\"clearfix footer-content address-footer\">\r\n<li class=\"item\">{{widget type=\"Magento\\Cms\\Block\\Widget\\Page\\Link\" anchor_text=\"About Us\" template=\"widget/link/link_block.phtml\" page_id=\"5\"}}</li>\r\n<li class=\"item\">{{widget type=\"Magento\\Cms\\Block\\Widget\\Page\\Link\" anchor_text=\"Delivery Information\" template=\"widget/link/link_block.phtml\" page_id=\"6\"}}</li>\r\n<li class=\"item\">{{widget type=\"Magento\\Cms\\Block\\Widget\\Page\\Link\" template=\"widget/link/link_block.phtml\" block_id=\"\" anchor_text=\"Return Policy\" page_id=\"7\"}}</li>\r\n<li class=\"item\"><img class=\"img-leftbanner\" src=\"{{view url=\'images/footer-logo.png\'}}\" alt=\"main-banner1\"></li>\r\n</ul>\r\n</div>\r\n</div>','2019-08-23 00:10:15','2019-09-16 02:50:48',1),
	(6,'Footer Middle Section2','footer_middle_section2','<div class=\"footer-common collapsible mobile-collapsible\">\r\n<div class=\"footer-static\">\r\n<h5>Products</h5>\r\n<ul class=\"clearfix footer-content\">\r\n<li class=\"item\"><a href=\"#\">Delivery Information</a></li>\r\n<li class=\"item\"><a href=\"#\">Privacy Policy</a></li>\r\n<li class=\"item\"><a href=\"#\">Terms & Conditions</a></li>\r\n<li class=\"item\"><a href=\"#\">Contact Us</a></li>\r\n<li class=\"item\"><a href=\"#\">Site Map</a></li>\r\n</ul>\r\n</div>\r\n</div>','2019-08-23 00:10:56','2019-09-14 14:23:35',0),
	(7,'Footer Middle Section3','footer_middle_section3','<div class=\"footer-common collapsible mobile-collapsible\">\r\n<div class=\"footer-static\">\r\n<h5 class=\"toggle-active\">Our Company</h5>\r\n<ul class=\"clearfix footer-content\">\r\n<li class=\"item\"><a href=\"#\">Secure Payment</a></li>\r\n<li class=\"item\"><a href=\"#\">Free Shipping</a></li>\r\n<li class=\"item\"><a href=\"#\">New Products</a></li>\r\n<li class=\"item\"><a href=\"#\">Our Lookbook</a></li>\r\n<li class=\"item\"><a href=\"#\">About Us</a></li>\r\n<li class=\"item\"><a href=\"#\">Careers</a></li>\r\n</ul>\r\n</div>\r\n</div>','2019-08-23 00:11:31','2019-09-14 14:23:42',0),
	(8,'Footer socialicon','footer_socialicon','<ul class=\"social-icon\">\r\n<li><a class=\"facebook\" title=\"Facebook\" href=\"#\">  </a></li>\r\n<li><a class=\"twitter\" title=\"Twitter\" href=\"#\">  </a></li>\r\n<li><a class=\"linkedin\" title=\"Linkedin\" href=\"#\">  </a></li>\r\n<li><a class=\"rss\" title=\"RSS\" href=\"#\">  </a></li>\r\n<li><a class=\"pinterest\" title=\"Pinterest\" href=\"#\">  </a></li>\r\n</ul>','2019-08-23 00:12:04','2019-09-14 14:26:32',0),
	(9,'Footer Payment','footer_payment','<div class=\"payment\">\r\n<ul class=\"payment_icon\">\r\n<li class=\"discover\"><a href=\"#\"><img class=\"img-payment\" src=\"{{view url=\'images/payment1.png\'}}\" alt=\"Payment\"></a></li>\r\n<li class=\"visa\"><a href=\"#\"><img class=\"img-payment\" src=\"{{view url=\'images/payment2.png\'}}\" alt=\"Payment\"></a></li>\r\n<li class=\"mastro\"><a href=\"#\"><img class=\"img-payment\" src=\"{{view url=\'images/payment3.png\'}}\" alt=\"Payment\"></a></li>\r\n<li class=\"paypal\"><a href=\"#\"><img class=\"img-payment\" src=\"{{view url=\'images/payment4.png\'}}\" alt=\"Payment\"></a></li>\r\n</ul>\r\n</div>','2019-08-23 00:35:19','2019-08-23 00:35:19',1),
	(10,'Footer Middle Section5','footer_middle_section5','<p>{{block class=\"Magento\\Newsletter\\Block\\Subscribe\" template=\"subscribe_footer.phtml\"}}</p>','2019-08-23 00:36:12','2019-08-23 00:36:12',1),
	(11,'Newsletter Popup','newsletter_popup','<div class=\"popup-inner\">\r\n<div class=\"popup-background-inner\">{{block class=\"Magento\\Newsletter\\Block\\Subscribe\" template=\"subscribe_popup.phtml\"}}</div>\r\n</div>','2019-08-23 00:36:52','2019-09-14 14:27:33',0),
	(12,'Newsletter Text Popup','newsletter_text_popup','<div class=\"popup-text\">\r\n<div class=\"popup-image\"><img class=\"img\" src=\"{{view url=\'images/email.png\'}}\" alt=\"sub-banner\" /></div>\r\n<div class=\"popup-title\">subscribe Emails</div>\r\n<div>Get Latest News & Update</div>\r\n<div class=\"popup-desc\">also the leap into electronic typesetting, remaining essentially</div>\r\n</div>','2019-08-23 00:37:24','2019-09-14 14:27:57',0),
	(13,'Left Banner Block','left_banner_common','<p><a href=\"#\"> <img class=\"left-banner\" src=\"{{view url=\'images/left-banner.jpg\'}}\" alt=\"left-banner\" /> </a></p>','2019-08-23 00:37:47','2019-09-14 14:31:34',0),
	(14,'Product Custom Block','product_custom_block','<div class=\"product product-custom-block\">\r\n<div class=\"home-tab-container\">\r\n<ul class=\"home-tab home-tab-main\">\r\n<li class=\"active\"><a href=\"#tab1\" data-toggle=\"tab\">Delivery</a></li>\r\n<li><a href=\"#tab2\" data-toggle=\"tab\">Shipping</a></li>\r\n<li><a href=\"#tab3\" data-toggle=\"tab\">Size Guide</a></li>\r\n</ul>\r\n<div class=\"tab-content\">\r\n<div id=\"tab1\" class=\"tab-pane fade in active\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a typespecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</div>\r\n<div id=\"tab2\" class=\"tab-pane fade\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text ll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary making this the first true generator on the Internet.</div>\r\n<div id=\"tab3\" class=\"tab-pane fade\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a typespecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:38:12','2019-08-23 00:38:12',1),
	(15,'Product Tab Block','product_custom_tab','<div class=\"custom-tab\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>','2019-08-23 00:38:38','2019-08-23 00:38:38',1),
	(16,'Homepage Shipping','homepage_shipping','<div class=\"shipping-outer\">\r\n<div class=\"container\">\r\n<div class=\"shipping-inner\">\r\n<div class=\"subtitle-part subtitle-part1\">\r\n<div class=\"subbanner-part-maininnner1\">\r\n<div class=\"subicon subicon1\"><span class=\"hide\">icon</span></div>\r\n<div class=\"shipping-desc\">\r\n<div class=\"subtitile subtitile1\">Free shipping</div>\r\n<div class=\"subtitile subtitile2\">Shipping in world for orders over $99</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"subtitle-part subtitle-part2\">\r\n<div class=\"subbanner-part-maininnner2\">\r\n<div class=\"subicon subicon2\"><span class=\"hide\">icon</span></div>\r\n<div class=\"shipping-desc\">\r\n<div class=\"subtitile subtitile1\">Special Gift</div>\r\n<div class=\"subtitile subtitile2\">Special Gift for new member</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"subtitle-part subtitle-part3\">\r\n<div class=\"subbanner-part-maininnner3\">\r\n<div class=\"subicon subicon3\"><span class=\"hide\">icon</span></div>\r\n<div class=\"shipping-desc\">\r\n<div class=\"subtitile subtitile1\">Support online 24/7</div>\r\n<div class=\"subtitile subtitile2\">Call : (123) 456 789 911</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"subtitle-part subtitle-part4\">\r\n<div class=\"subbanner-part-maininnner4\">\r\n<div class=\"subicon subicon4\"><span class=\"hide\">icon</span></div>\r\n<div class=\"shipping-desc\">\r\n<div class=\"subtitile subtitile1\">Security Payment</div>\r\n<div class=\"subtitile subtitile2\">Embarrassing hidden middle</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:39:09','2019-08-23 00:39:09',1),
	(17,'Homepage Testimonial','homepage_testimonial','<div class=\"testimonial-inner \">\r\n<div class=\"testimonial-outer container-width\">\r\n<div class=\"owl-carousel testimonial-carousel\">\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img1_old.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\">My Happy Kid offering high-quality, orthopedic and ah just beautiful kids backpacks. :-)\r\nThank you for your support.</div>\r\n<div class=\"testmonial-author\">Varvara Kuraeva</div>\r\n</div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img2_old.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\">Thank you for the wonderful present.. we just love it.</div>\r\n<div class=\"testmonial-author\">Mrz Mamun</div>\r\n</div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img3_old.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\">Seeing my child happy is one of the best feelings in the world.,</div>\r\n<div class=\"testmonial-author\">Karanjit Chass</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:39:45','2019-09-16 01:30:52',1),
	(18,'Homepage Parallax','homepage_parallax','<div class=\"parallaxblock-outer\" data-source-url=\"{{view url=\'images/parallax.jpg\'}}\">\r\n<div class=\"parallaxblock-inner container\">\r\n<div class=\"parallax-block\">\r\n<div class=\"parallax-inner container-width\">\r\n<div class=\"parallax-text1\">Sale</div>\r\n<div class=\"parallax-text2\">up to 20% off</div>\r\n<div class=\"parallax-text3\">Free shipping on orders of $100</div>\r\n<div class=\"parallax-text4\"><a href=\"#\">Shop Now</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:40:16','2019-09-16 01:36:50',1),
	(19,'Advancemenu bottom block 68','advancemenu_bottom_block_68','<div class=\"menu-banner-image\"><img src=\"{{view url=\'images/menu-banner.jpg\'}}\" alt=\"\"></div>','2019-08-23 00:41:16','2019-08-23 00:41:16',1),
	(20,'Homepage Parallax','homepage_parallax_old','<div class=\"parallaxblock-outer\" data-source-url=\"{{view url=\'images/parallax.jpg\'}}\">\r\n<div class=\"parallaxblock-inner container\">\r\n<div class=\"parallax-block\">\r\n<div class=\"parallax-inner container-width\">\r\n<div class=\"parallax-text1\">Sale</div>\r\n<div class=\"parallax-text2\">up to 50% off</div>\r\n<div class=\"parallax-text3\">Free shipping on orders of $100</div>\r\n<div class=\"parallax-text4\"><a href=\"#\">Shop Now</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:40:16','2019-08-23 17:07:12',1),
	(21,'Homepage Testimonia_old','homepage_testimonial_old','<div class=\"testimonial-inner \">\r\n<div class=\"testimonial-outer container-width\">\r\n<div class=\"owl-carousel testimonial-carousel\">\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img1.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\"><strong>For son</strong><br> Send him a backpack before he ask and tell him you will be with his growth.</div>\r\n<div class=\"testmonial-author\">Wed Censtoriya</div>\r\n</div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img2.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\"><strong>For Daughter</strong><br> A backpack for your daughter will make she happy everyday and give her considerate care.</div>\r\n<div class=\"testmonial-author\">Wed Censtoriya</div>\r\n</div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"testminial-data\">\r\n<div class=\"test_imag\">\r\n<div class=\"test_img_innar\"><img class=\"img-testimonial\" src=\"{{view url=\'images/testimonial_img3.jpg\'}}\" alt=\"main-banner1\"></div>\r\n</div>\r\n<div class=\"testimonial-desc\"><strong>For friends</strong><br> The sincere friendship starts with a wonderful backpack !</div>\r\n<div class=\"testmonial-author\">Wed Censtoriya</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:39:45','2019-08-23 17:20:46',1),
	(22,'Homepage SubBanner_old','homepage_subbanner_old','<div id=\"custom-bannerblock\">\r\n<div class=\"container-width\">\r\n<div class=\"row\">\r\n<div class=\"subbannercms-inner\">\r\n<div class=\"subbanner-common subbanner-right\">\r\n<div class=\"subbanner-inner right-inner\">\r\n<div class=\"right-top\">\r\n<div class=\"right-top-inner subbanner-inner\"><a href=\"#\"> <img class=\"leftbanner\" src=\"{{view url=\'images/banners/sub-banner1.jpg\'}}\" alt=\"sub-banner\"> </a></div>\r\n</div>\r\n<div class=\"right-bottom\">\r\n<div class=\"right-bottom-inner subbanner-inner\"><a href=\"#\"> <img class=\"leftbanner\" src=\"{{view url=\'images/banners/sub-banner2.jpg\'}}\" alt=\"sub-banner\"> </a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"subbanner-common subbanner-left\">\r\n<div class=\"subbanner-inner left-inner\"><a href=\"#\"> <img class=\"leftbanner\" src=\"{{view url=\'images/banners/sub-banner3.jpg\'}}\" alt=\"sub-banner\"> </a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2019-08-23 00:08:25','2019-08-23 19:52:15',1),
	(23,'Homepage Slider_old','homepage_slider_old','<div class=\"main-slider homepage-slider\">\r\n<div class=\"owl-carousel homepage-carousel\">\r\n<div class=\"item\"><img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/main-banner1.jpg\'}}\" alt=\"main-banner1\"></div>\r\n<div class=\"item\"><img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/main-banner2.jpg\'}}\" alt=\"main-banner2\"></div>\r\n<div class=\"item\"><img class=\"img-leftbanner\" src=\"{{view url=\'images/banners/main-banner3.jpg\'}}\" alt=\"main-banner3\"></div>\r\n</div>\r\n</div>','2019-08-23 00:07:37','2019-08-24 18:04:25',1);

/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_block_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_block_store`;

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

LOCK TABLES `cms_block_store` WRITE;
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;

INSERT INTO `cms_block_store` (`block_id`, `store_id`)
VALUES
	(1,0),
	(2,0),
	(3,0),
	(4,0),
	(5,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(11,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0),
	(16,0),
	(17,0),
	(18,0),
	(19,0),
	(20,0),
	(21,0),
	(22,0),
	(23,0);

/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_page`;

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;

INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`)
VALUES
	(1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2019-08-22 21:24:26','2019-08-22 21:24:26',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'Home page','1column','','','home','Home Page','<div>{{block class=\"Magento\\Cms\\Block\\Block\" block_id=\"homepage_slider\"}}</div>\r\n<div>{{block class=\"Magento\\Cms\\Block\\Block\" block_id=\"homepage_subbanner\"}}</div>\r\n<div>{{block class=\"Ortho\\Featuredproduct\\Block\\Listhome\" name=\"featured_product\" template=\"Ortho_Featuredproduct::list_home.phtml\"}}</div>\r\n<div>{{block class=\"Magento\\Cms\\Block\\Block\" block_id=\"homepage_parallax\"}}</div>\r\n<div>{{block class=\"Ortho\\Newproduct\\Block\\Listhome\" name=\"new_product\" template=\"Ortho_Newproduct::list_home.phtml\"}}</div>\r\n<div>{{block class=\"Magento\\Cms\\Block\\Block\" block_id=\"homepage_testimonial\"}}</div>\r\n<div>{{block class=\"Magento\\Cms\\Block\\Block\" block_id=\"homepage_brand\"}}</div>','2019-08-22 21:24:26','2019-09-16 00:10:30',1,0,'<!--\r\n    <referenceContainer name=\"right\">\r\n        <referenceBlock name=\"catalog.compare.sidebar\" remove=\"true\" />\r\n    </referenceContainer>-->','','',NULL,NULL,NULL,''),
	(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2019-08-22 21:24:26','2019-08-22 21:24:26',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2019-08-22 21:24:26','2019-08-22 21:24:26',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'Welcome','1column','','','welcome','Welcome to MayHappyKid','<p class=\"Normal tm6\"><span class=\"tm7\">Welcome to MyHappyKid.com.au!</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">Hello! And welcome to MyHappyKid. MyHappyKid was created </span><em><span class=\"tm10\">by</span></em><span class=\"tm9\"> parents, </span><em><span class=\"tm10\">for</span></em><span class=\"tm9\"> parents; helping boys and girls unleash their creativity and send their imagination soaring!</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">Once upon a time, I worked for a global corporation. Knowing that there was something bigger waiting for me in the world outside, I quit my 9-5 to start my own business. But: I didn’t want to create just </span><em><span class=\"tm10\">any</span></em><span class=\"tm9\"> business. I wanted to start something that could make a difference for parents and kids everywhere. That’s why I created</span><strong><span class=\"tm11\"> MyHappyKid<a id=\"aGoBack\"></a></span></strong><span class=\"tm9\">; home to high-quality Neoprene kids’ bags. P.S I’ve got a ton of parenting tips to share. I can’t keep them in much longer, so stick around!</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">I want to introduce to you bags that kids can wear all day long, without worrying about spinal issues. These orthopedic designs are made from hypoallergenic materials that are water-resistant and have passed all relevant tests – included ROHS, REACH and CPSIA.</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">These bags are lightweight and soft, with padded mash for extra comfort and ventilation. Kids love them, and you will too – seeing as they also teach kids to be independent and carry their own things around. The fact that you’ll be able to spot your kids from a mile away is a bonus!</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">Help your kids to stand up, shine bright, and BE THEMSELVES!</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">&nbsp;</span></p>\r\n<p class=\"Heading tm8\"><span class=\"tm9\">The MyHappyKid brand offers kid-friendly bag designs suitable for kids 2+. Teach them the value of personal ownership through funky colours and an ergonomic design that keeps their posture (and smiles) in check!</span></p>\r\n<p class=\"Normal tm12\"><span class=\"tm13\">&nbsp;</span></p>\r\n<p class=\"Normal\">&nbsp;</p>','2019-09-16 01:25:26','2019-09-16 01:25:26',1,0,'','','',NULL,NULL,NULL,''),
	(6,'Delivery','1column','','','delivery','Delivery Information','<p class=\"Normal tm5\"><strong><span class=\"tm6\">Delivery Information<a id=\"aGoBack\"></a></span></strong></p>\r\n<p class=\"Normal tm5\"><strong><span class=\"tm6\">Products Sold by MyHappyKid.com.au</span></strong></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">MyHappyKid.com.au</span><span class=\"tm7\"> is famous for fast delivery. At </span><span class=\"tm7\">MyHappyKid.com.au</span><span class=\"tm7\"> we always aim to get orders out&nbsp;within 24 hours of being placed, and your order is always on its way within 1-2 days. If you order in the morning, your order may be&nbsp;shipping&nbsp;out the same day. Once your order&nbsp;is sent...</span></p>\r\n<p class=\"Normal tm5\"><strong><span class=\"tm6\">Delivery Times</span></strong></p>\r\n<table class=\"tm8 tm9\" border=\"0\" rules=\"all\">\r\n<thead>\r\n<tr>\r\n<td class=\"tm11 tm12 tm13\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">&nbsp;</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm14\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Metro areas</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm14\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Regional</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm15\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Rural &amp; Remote</span></p>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody class=\"tm10\">\r\n<tr>\r\n<td class=\"tm11 tm12 tm13\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Standard Shipping</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm14\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">2-5 business days</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm14\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">2-7 business days</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm15\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">3-10 business days</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal tm5\"><strong><span class=\"tm6\">Costs</span></strong></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">The cost of&nbsp;shipping&nbsp;depends on the weight of the products in your order.</span></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">As a guide, for orders with lighter or smaller products, the&nbsp;shipping&nbsp;costs are:</span></p>\r\n<table class=\"tm8 tm9\" border=\"0\" rules=\"all\">\r\n<thead>\r\n<tr>\r\n<td class=\"tm11 tm12 tm16\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">&nbsp;</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm17\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Metro areas</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm18\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Regional</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm19\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Rural &amp; Remote</span></p>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody class=\"tm10\">\r\n<tr>\r\n<td class=\"tm11 tm12 tm16\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">Standard</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm17\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">5.9</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm18\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">6.9</span></p>\r\n</td>\r\n<td class=\"tm11 tm12 tm19\">\r\n<p class=\"Normal tm5\"><span class=\"tm7\">+8</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">If your order includes heavier&nbsp;items, or if you add more products to your order, the&nbsp;shipping&nbsp;cost may vary.</span></p>\r\n<p class=\"Normal tm5\">&nbsp;</p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\"><br></span><strong><span class=\"tm6\">Tracking your Order</span></strong></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">You can easily track your order by viewing&nbsp;your order history in your account&nbsp;in Sendle or Australia Post website.&nbsp;You will also receive email and texts with tracking information and updates on your delivery.</span></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">&nbsp;</span></p>\r\n<p class=\"Normal\">&nbsp;</p>','2019-09-16 01:26:20','2019-09-16 01:26:20',1,0,'','','',NULL,NULL,NULL,''),
	(7,'Warranty','1column','','','warranty','12 Month Warranty Terms and Conditions','<p class=\"Normal tm5\"><strong><span class=\"tm6\">12 Month Warranty Terms and Conditions<a id=\"aGoBack\"></a></span></strong></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">When you purchase from us, above all else, we value you, our customer, and want to make your experience with our website the best online shopping experience possible. If something goes wrong with your product, you should always contact us and we will do whatever we can to help. Please read the terms and conditions below that fully outline your warranty rights, and remember, we love your feedback. If you are not happy, tell us so we can improve our services for you.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">1. This warranty is given by MyHappyKid (\"online ecommerce platform for kids from ADAK CONSULTANCY SERVICES PTY LTD\") and applies&nbsp;</span><strong><span class=\"tm6\">only</span></strong><span class=\"tm7\">&nbsp;to products where the MyHappyKid 12 month warranty against defects is expressly given in the product listing on the respective website.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">2. The Australian Consumer Law provides certain guarantees to consumers when they purchase goods and these guarantees cannot be excluded, restricted or modified. These consumer guarantees are different to, and separate from, this warranty, which is given voluntarily by the Warrantor. The time limit of consumer guarantees varies depending on the price and quality of the goods and may extend beyond this warranty or any applicable warranty provided by the manufacturer of the goods.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">3. Our goods come with guarantees that cannot be excluded under the Australian Consumer Law. You are entitled to a replacement or refund for a major failure and compensation for any other reasonably foreseeable loss or damage. You are also entitled to have the goods repaired or replaced if the goods fail to be of acceptable quality and the failure does not amount to a major failure.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">4. This warranty applies in addition to other rights and remedies you may have under the Australian Consumer Law or any other law.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">5. Your goods may contain warranty documents on or inside the product packaging provided by the manufacturer of the goods. Any such warranty documents are not given by the Warrantor, and are separate from this warranty. Some warranty documents provided by manufacturers of imported goods may not apply in Australia. You should contact the manufacturer identified on the warranty document to determine whether or not the warranty applies to the goods in Australia and, if so, how you should go about making a claim under such a warranty.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">6. Subject to the terms and conditions of this warranty, where your goods are defective within 12 months of your purchase, the Warrantor agrees to repair the goods, provide you with a replacement or provide you with store credit or a refund for the full amount of the purchase price (in the event that it is not possible to repair the goods or a replacement is unavailable).</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">7. The applicable warranty period (12 months) commences on the date that the product is delivered to your nominated delivery address. Where no proof of delivery is available, the applicable warranty period will commence 3 days from the date the goods are despatched to you.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">8. We sell, among other things, clearance goods. Clearance goods are new, but of limited quantity. This means that we will often sell all available stock and may not have the ability to repair or replace items that may be defective. We will make all reasonable endeavours to repair or replace your product under the terms of this warranty, but where this is not possible, we will refund you the full purchase price.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">9. In the event you need to contact us, please use our Help Centre. Instructions for returning goods are provided through our Help Centre.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">10. All warranty claims must be directed through the Help Centre of the website from which you made your order. In order to make a claim, you must provide the Help Centre with:</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">1. details of the defect or damage in relation to which you are making a claim under the warranty;</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">2. photographic evidence of the defect or damage, where applicable;</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">3. your invoice (including order number) and any other proof of purchase; and</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">4. any other details we may need to process your claim.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">11. If you are entitled to make a claim under this warranty, our Help Centre will provide you with instructions as to how the goods may be returned to us at our expense (either you will be reimbursed for standard postage or, for larger items, we will organise a courier to retrieve the items). Unless otherwise provided by law, you will bear any other costs incurred in making a claim under this warranty.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">12. Where goods are damaged or defective upon delivery, you must provide photographic evidence of the damage before receiving a repair, replacement or refund.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">13. We reserve the right to determine which repair centre is the appropriate service location in each case.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">14. You must comply with all return instructions provided to you via your registered email address when making a claim under this warranty.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">15. We cannot accept returns that have not been authorised through the process outlined in these terms and conditions.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">16. If any returned goods are found to be in good working order, we may seek reimbursement, at our discretion, for any costs incurred by us in relation to such goods. In such cases, you agree that we may hold your goods until such payment is received.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">17. Except as required by law (including the Australian Consumer Law), this warranty shall not apply in respect of goods:</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">1. where the goods have not been installed, maintained, operated or used in accordance with the manufacturer’s instructions or any other specifications provided with the goods;</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">2. where damage or defects are caused by deliberate or negligent misuse or abuse, physical alteration, fire, liquid spillage, use of incorrect voltage, power surges or dips, thunderstorm activity, force majeure, voltage supply problems, tampering or unauthorised repairs by any persons, use of defective or incompatible accessories, computer viruses, corrosive conditions or introduction by an insect, pest or other foreign body;</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">3. where damage results from any third party software or hardware not provided by us;</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">4. where items are lost or stolen; and</span></p>\r\n<p class=\"Normal tm9\"><span class=\"tm7\">5. in relation to repairs of batteries, where the batteries have not been used in accordance with specifications or they expire by normal use.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">18. Except as required by law (including the Australian Consumer Law), our liability under this warranty shall not exceed the amount of the purchase price of the goods or the replacement of the goods with the same or a similar product.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">19. In the event that storage media ordered from us becomes faulty, fails or otherwise detrimentally affects software or data stored on it, except as required by law (including the Australian Consumer Law), we will not be liable for any loss or damage to the software or data, however arising.</span></p>\r\n<p class=\"Normal tm8\"><span class=\"tm7\">20. You should maintain a backup of all software and data stored on your devices. If you return media (such as a hard disc drive), whether separately or as a part of a larger electronic or computing product, to us for any reason, including for replacement or repair, we will not be responsible for any software or data stored on the media. We make no representation that we will be able to repair or replace any product without risk to or loss of the software or data.</span></p>\r\n<p class=\"Normal tm5\"><span class=\"tm7\">&nbsp;</span></p>\r\n<p class=\"Normal\">&nbsp;</p>','2019-09-16 01:27:06','2019-09-16 01:27:06',1,0,'','','',NULL,NULL,NULL,'');

/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_page_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_page_store`;

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

LOCK TABLES `cms_page_store` WRITE;
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;

INSERT INTO `cms_page_store` (`page_id`, `store_id`)
VALUES
	(1,0),
	(2,0),
	(3,0),
	(4,0),
	(5,0),
	(6,0),
	(7,0);

/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_config_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_config_data`;

CREATE TABLE `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

LOCK TABLES `core_config_data` WRITE;
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`)
VALUES
	(1,'default',0,'web/seo/use_rewrites','1'),
	(2,'default',0,'web/unsecure/base_url','http://myhappykid.com.au'),
	(3,'default',0,'web/secure/base_url','https://myhappykid.com.au'),
	(4,'default',0,'general/locale/code','en_US'),
	(5,'default',0,'web/secure/use_in_frontend',NULL),
	(6,'default',0,'web/secure/use_in_adminhtml',NULL),
	(7,'default',0,'general/locale/timezone','UTC'),
	(8,'default',0,'currency/options/base','USD'),
	(9,'default',0,'currency/options/default','USD'),
	(10,'default',0,'currency/options/allow','USD'),
	(11,'default',0,'general/region/display_all','1'),
	(12,'default',0,'general/region/state_required','AU,BR,CA,CH,EE,ES,HR,IN,LT,LV,MX,RO,US'),
	(13,'default',0,'catalog/category/root_id','2'),
	(14,'default',0,'analytics/subscription/enabled','1'),
	(15,'default',0,'crontab/default/jobs/analytics_subscribe/schedule/cron_expr','0 * * * *'),
	(16,'default',0,'payment/authorizenet_acceptjs/cctypes','AE,VI,MC,DI,JCB,DN'),
	(17,'default',0,'payment/authorizenet_acceptjs/order_status','processing'),
	(18,'default',0,'payment/authorizenet_acceptjs/payment_action','authorize'),
	(19,'default',0,'payment/authorizenet_acceptjs/currency','USD'),
	(20,'websites',1,'payment/authorizenet_acceptjs/cctypes','AE,VI,MC,DI,JCB,DN'),
	(21,'websites',1,'payment/authorizenet_acceptjs/order_status','processing'),
	(22,'websites',1,'payment/authorizenet_acceptjs/payment_action','authorize'),
	(23,'websites',1,'payment/authorizenet_acceptjs/currency','USD'),
	(24,'default',0,'admin/security/use_case_sensitive_login','0'),
	(26,'default',0,'admin/security/session_lifetime','9000'),
	(27,'stores',1,'design/theme/theme_id','4'),
	(28,'stores',1,'design/pagination/pagination_frame_skip',NULL),
	(29,'stores',1,'design/pagination/anchor_text_for_previous',NULL),
	(30,'stores',1,'design/pagination/anchor_text_for_next',NULL),
	(31,'stores',1,'design/head/shortcut_icon','stores/1/logo_my_happy.png'),
	(32,'stores',1,'design/head/default_title','My Happy Kid'),
	(33,'stores',1,'design/head/title_prefix',NULL),
	(34,'stores',1,'design/head/title_suffix',NULL),
	(35,'stores',1,'design/head/default_description','Accessories for kid shop'),
	(36,'stores',1,'design/head/default_keywords','kid, bag'),
	(37,'stores',1,'design/head/includes','<link href=\"https://fonts.googleapis.com/css?family=Prompt&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Baloo&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Raleway&display=swap\" rel=\"stylesheet\">'),
	(38,'stores',1,'design/header/logo_src','stores/1/logo_my_happy_2_1.png'),
	(39,'stores',1,'design/header/logo_width',NULL),
	(40,'stores',1,'design/header/logo_height',NULL),
	(41,'stores',1,'design/header/logo_alt','MY HAPPY KID'),
	(42,'stores',1,'design/header/welcome','Welcome to our store!'),
	(43,'stores',1,'design/footer/copyright','Copyright © 2019-present MyHappyKid, Inc. All rights reserved.'),
	(44,'stores',1,'design/footer/absolute_footer',NULL),
	(45,'stores',1,'design/search_engine_robots/custom_instructions',NULL),
	(46,'stores',1,'design/watermark/image_size',NULL),
	(47,'stores',1,'design/watermark/image_imageOpacity',NULL),
	(48,'stores',1,'design/watermark/small_image_size',NULL),
	(49,'stores',1,'design/watermark/small_image_imageOpacity',NULL),
	(50,'stores',1,'design/watermark/thumbnail_size',NULL),
	(51,'stores',1,'design/watermark/thumbnail_imageOpacity',NULL),
	(52,'stores',1,'design/email/logo_alt',NULL),
	(53,'stores',1,'design/email/logo_width',NULL),
	(54,'stores',1,'design/email/logo_height',NULL),
	(55,'stores',1,'design/watermark/swatch_image_size',NULL),
	(56,'stores',1,'design/watermark/swatch_image_imageOpacity',NULL),
	(57,'default',0,'ortho_settings/newsletter/isenable','0'),
	(58,'default',0,'ortho_settings/advancemenu/isenable','1'),
	(59,'default',0,'ortho_settings/advancemenu/ishomelinkenable','1'),
	(60,'default',0,'ortho_settings/advancemenu/staticblockbefore','0'),
	(61,'default',0,'ortho_settings/advancemenu/staticblockafter','0'),
	(62,'default',0,'ortho_settings/advancemenu/iscustomenable','0'),
	(63,'default',0,'ortho_settings/leftcolumn/isenable','0'),
	(64,'default',0,'ortho_settings/leftcolumn/leftbannerenable','0'),
	(65,'default',0,'ortho_settings/leftcolumn/leftcategoryenable','0'),
	(66,'default',0,'ortho_settings/productpage/isenable','0'),
	(67,'default',0,'ortho_settings/productpage/customtabenable','0'),
	(68,'default',0,'mfblog/general/enabled','0'),
	(69,'default',0,'mfblog/index_page/title','Blog'),
	(70,'default',0,'mfblog/index_page/display_mode','0'),
	(71,'default',0,'mfblog/index_page/posts_sort_by','0'),
	(72,'default',0,'mfblog/index_page/meta_keywords',NULL),
	(73,'default',0,'mfblog/index_page/meta_description',NULL),
	(74,'default',0,'mfblog/post_view/related_posts/enabled','1'),
	(75,'default',0,'mfblog/post_view/related_posts/number_of_posts','5'),
	(76,'default',0,'mfblog/post_view/related_products/enabled','1'),
	(77,'default',0,'mfblog/post_view/related_products/number_of_products','5'),
	(78,'default',0,'mfblog/post_view/comments/type','facebook'),
	(79,'default',0,'mfblog/post_view/comments/number_of_comments','5'),
	(80,'default',0,'mfblog/post_view/comments/fb_app_id',NULL),
	(81,'default',0,'mfblog/post_view/comments/display_privacy_policy_checkbox','0'),
	(82,'default',0,'mfblog/post_view/nextprev/enabled','1'),
	(83,'default',0,'mfblog/post_list/shortcotent_length','1000'),
	(84,'default',0,'mfblog/post_list/posts_per_page','10'),
	(85,'default',0,'mfblog/post_list/lazyload_enabled','0'),
	(86,'default',0,'mfblog/author/enabled','1'),
	(87,'default',0,'mfblog/author/page_enabled','1'),
	(88,'default',0,'mfblog/author/robots','NOINDEX,FOLLOW'),
	(89,'default',0,'mfblog/tag/robots','INDEX,FOLLOW'),
	(90,'default',0,'mfblog/search/robots','NOINDEX,FOLLOW'),
	(91,'default',0,'mfblog/sidebar/search/enabled','1'),
	(92,'default',0,'mfblog/sidebar/search/sort_order','10'),
	(93,'default',0,'mfblog/sidebar/categories/enabled','1'),
	(94,'default',0,'mfblog/sidebar/categories/show_posts_count','1'),
	(95,'default',0,'mfblog/sidebar/categories/max_depth','2'),
	(96,'default',0,'mfblog/sidebar/categories/sort_order','20'),
	(97,'default',0,'mfblog/sidebar/recent_posts/enabled','1'),
	(98,'default',0,'mfblog/sidebar/recent_posts/posts_per_page','5'),
	(99,'default',0,'mfblog/sidebar/recent_posts/sort_order','30'),
	(100,'default',0,'mfblog/sidebar/featured_posts/enabled','0'),
	(101,'default',0,'mfblog/sidebar/featured_posts/posts_ids',NULL),
	(102,'default',0,'mfblog/sidebar/featured_posts/sort_order','35'),
	(103,'default',0,'mfblog/sidebar/archive/enabled','1'),
	(104,'default',0,'mfblog/sidebar/archive/sort_order','40'),
	(105,'default',0,'mfblog/sidebar/tag_claud/enabled','1'),
	(106,'default',0,'mfblog/sidebar/tag_claud/sort_order','45'),
	(107,'default',0,'mfblog/sidebar/custom/enabled','0'),
	(108,'default',0,'mfblog/sidebar/custom/sort_order',NULL),
	(109,'default',0,'mfblog/sidebar/custom/html',NULL),
	(110,'default',0,'mfblog/sidebar/custom2/enabled','0'),
	(111,'default',0,'mfblog/sidebar/custom2/sort_order',NULL),
	(112,'default',0,'mfblog/sidebar/custom2/html',NULL),
	(113,'default',0,'mfblog/sidebar/rss_feed/enabled','0'),
	(114,'default',0,'mfblog/sidebar/rss_feed/sort_order','50'),
	(115,'default',0,'mfblog/sidebar/rss_feed/title','Blog Rss'),
	(116,'default',0,'mfblog/sidebar/rss_feed/description',NULL),
	(117,'default',0,'mfblog/product_page/related_posts_enabled','1'),
	(118,'default',0,'mfblog/product_page/number_of_related_posts','5'),
	(119,'default',0,'mfblog/permalink/route','blog'),
	(120,'default',0,'mfblog/permalink/redirect_to_no_slash','1'),
	(121,'default',0,'mfblog/permalink/type','default'),
	(122,'default',0,'mfblog/permalink/post_route','post'),
	(123,'default',0,'mfblog/permalink/post_sufix',NULL),
	(124,'default',0,'mfblog/permalink/post_use_categories','0'),
	(125,'default',0,'mfblog/permalink/category_route','category'),
	(126,'default',0,'mfblog/permalink/category_sufix',NULL),
	(127,'default',0,'mfblog/permalink/category_use_categories','0'),
	(128,'default',0,'mfblog/permalink/archive_route','archive'),
	(129,'default',0,'mfblog/permalink/tag_route','tag'),
	(130,'default',0,'mfblog/permalink/tag_sufix',NULL),
	(131,'default',0,'mfblog/permalink/author_route','author'),
	(132,'default',0,'mfblog/permalink/author_sufix',NULL),
	(133,'default',0,'mfblog/permalink/search_route','search'),
	(134,'default',0,'mfblog/seo/use_canonical_meta_tag_for','all'),
	(135,'default',0,'mfblog/social/add_this_enabled','1'),
	(136,'default',0,'mfblog/social/add_this_pubid','ra-4def63cd3cf37569'),
	(137,'default',0,'mfblog/social/add_this_language','en'),
	(138,'default',0,'mfblog/top_menu/show_item','1'),
	(139,'default',0,'mfblog/top_menu/item_text','Blog'),
	(140,'default',0,'mfblog/top_menu/include_categories','1'),
	(141,'default',0,'mfblog/top_menu/max_depth','0');

/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cron_schedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cron_schedule`;

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';



# Dump of table customer_address_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity`;

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`),
  CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';



# Dump of table customer_address_entity_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity_datetime`;

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';



# Dump of table customer_address_entity_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity_decimal`;

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';



# Dump of table customer_address_entity_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity_int`;

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';



# Dump of table customer_address_entity_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity_text`;

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';



# Dump of table customer_address_entity_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address_entity_varchar`;

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';



# Dump of table customer_eav_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_eav_attribute`;

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  PRIMARY KEY (`attribute_id`),
  CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

LOCK TABLES `customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `is_searchable_in_grid`)
VALUES
	(1,1,NULL,0,NULL,1,10,NULL,1,1,1,0),
	(2,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(3,1,NULL,0,NULL,1,20,NULL,1,1,0,1),
	(4,0,NULL,0,NULL,0,30,NULL,0,0,0,0),
	(5,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,40,NULL,0,0,0,0),
	(6,0,'trim',0,NULL,0,50,NULL,0,0,0,0),
	(7,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,60,NULL,0,0,0,0),
	(8,0,NULL,0,NULL,0,70,NULL,0,0,0,0),
	(9,1,NULL,0,'{\"input_validation\":\"email\"}',1,80,NULL,1,1,1,1),
	(10,1,NULL,0,NULL,1,25,NULL,1,1,1,0),
	(11,0,'date',0,'{\"input_validation\":\"date\"}',0,90,NULL,1,1,1,0),
	(12,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(13,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(14,0,NULL,0,'{\"input_validation\":\"date\"}',1,0,NULL,0,0,0,0),
	(15,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(16,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(17,0,NULL,0,'{\"max_text_length\":255}',0,100,NULL,1,1,0,1),
	(18,0,NULL,0,NULL,1,0,NULL,1,1,1,0),
	(19,0,NULL,0,NULL,0,0,NULL,1,1,1,0),
	(20,0,NULL,0,'[]',0,110,NULL,1,1,1,0),
	(21,1,NULL,0,NULL,1,28,NULL,0,0,0,0),
	(22,0,NULL,0,NULL,0,10,NULL,0,0,0,0),
	(23,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,20,NULL,1,0,0,1),
	(24,0,'trim',0,NULL,0,30,NULL,0,0,0,0),
	(25,1,'trim',0,'{\"max_text_length\":255,\"min_text_length\":1}',1,40,NULL,1,0,0,1),
	(26,0,NULL,0,NULL,0,50,NULL,0,0,0,0),
	(27,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,60,NULL,1,0,0,1),
	(28,1,NULL,2,'{\"max_text_length\":255,\"min_text_length\":1}',1,70,NULL,1,0,0,1),
	(29,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,80,NULL,1,0,0,1),
	(30,1,NULL,0,NULL,1,90,NULL,1,1,1,0),
	(31,1,NULL,0,NULL,1,100,NULL,1,1,0,1),
	(32,1,NULL,0,NULL,1,100,NULL,0,0,0,0),
	(33,1,NULL,0,'[]',1,110,'Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1),
	(34,1,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',1,120,NULL,1,1,1,1),
	(35,0,NULL,0,'{\"max_text_length\":255,\"min_text_length\":1}',0,130,NULL,1,0,0,1),
	(36,1,NULL,0,NULL,1,140,NULL,0,0,0,0),
	(37,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(38,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(39,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(40,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(41,0,NULL,0,NULL,0,0,NULL,0,0,0,0),
	(42,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(43,0,NULL,0,NULL,1,0,NULL,0,0,0,0),
	(44,0,NULL,0,NULL,1,0,NULL,0,0,0,0);

/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_eav_attribute_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_eav_attribute_website`;

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

LOCK TABLES `customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;

INSERT INTO `customer_eav_attribute_website` (`attribute_id`, `website_id`, `is_visible`, `is_required`, `default_value`, `multiline_count`)
VALUES
	(1,1,NULL,NULL,NULL,NULL),
	(3,1,NULL,NULL,NULL,NULL),
	(5,1,NULL,NULL,NULL,NULL),
	(6,1,NULL,NULL,NULL,NULL),
	(7,1,NULL,NULL,NULL,NULL),
	(9,1,NULL,NULL,NULL,NULL),
	(10,1,NULL,NULL,NULL,NULL),
	(11,1,NULL,NULL,NULL,NULL),
	(17,1,NULL,NULL,NULL,NULL),
	(18,1,NULL,NULL,NULL,NULL),
	(19,1,NULL,NULL,NULL,NULL),
	(20,1,NULL,NULL,NULL,NULL),
	(21,1,NULL,NULL,NULL,NULL),
	(23,1,NULL,NULL,NULL,NULL),
	(24,1,NULL,NULL,NULL,NULL),
	(25,1,NULL,NULL,NULL,NULL),
	(27,1,NULL,NULL,NULL,NULL),
	(28,1,NULL,NULL,NULL,NULL),
	(29,1,NULL,NULL,NULL,NULL),
	(30,1,NULL,NULL,NULL,NULL),
	(31,1,NULL,NULL,NULL,NULL),
	(32,1,NULL,NULL,NULL,NULL),
	(33,1,NULL,NULL,NULL,NULL),
	(34,1,NULL,NULL,NULL,NULL),
	(35,1,NULL,NULL,NULL,NULL),
	(36,1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity`;

CREATE TABLE `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website ID',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`),
  CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';



# Dump of table customer_entity_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity_datetime`;

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';



# Dump of table customer_entity_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity_decimal`;

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';



# Dump of table customer_entity_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity_int`;

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';



# Dump of table customer_entity_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity_text`;

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';



# Dump of table customer_entity_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_entity_varchar`;

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';



# Dump of table customer_form_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_form_attribute`;

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

LOCK TABLES `customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`)
VALUES
	('adminhtml_customer',1),
	('adminhtml_customer',3),
	('adminhtml_customer',4),
	('customer_account_create',4),
	('customer_account_edit',4),
	('adminhtml_customer',5),
	('customer_account_create',5),
	('customer_account_edit',5),
	('adminhtml_customer',6),
	('customer_account_create',6),
	('customer_account_edit',6),
	('adminhtml_customer',7),
	('customer_account_create',7),
	('customer_account_edit',7),
	('adminhtml_customer',8),
	('customer_account_create',8),
	('customer_account_edit',8),
	('adminhtml_checkout',9),
	('adminhtml_customer',9),
	('customer_account_create',9),
	('customer_account_edit',9),
	('adminhtml_checkout',10),
	('adminhtml_customer',10),
	('adminhtml_checkout',11),
	('adminhtml_customer',11),
	('customer_account_create',11),
	('customer_account_edit',11),
	('adminhtml_checkout',17),
	('adminhtml_customer',17),
	('customer_account_create',17),
	('customer_account_edit',17),
	('adminhtml_customer',19),
	('customer_account_create',19),
	('customer_account_edit',19),
	('adminhtml_checkout',20),
	('adminhtml_customer',20),
	('customer_account_create',20),
	('customer_account_edit',20),
	('adminhtml_customer',21),
	('adminhtml_customer_address',22),
	('customer_address_edit',22),
	('customer_register_address',22),
	('adminhtml_customer_address',23),
	('customer_address_edit',23),
	('customer_register_address',23),
	('adminhtml_customer_address',24),
	('customer_address_edit',24),
	('customer_register_address',24),
	('adminhtml_customer_address',25),
	('customer_address_edit',25),
	('customer_register_address',25),
	('adminhtml_customer_address',26),
	('customer_address_edit',26),
	('customer_register_address',26),
	('adminhtml_customer_address',27),
	('customer_address_edit',27),
	('customer_register_address',27),
	('adminhtml_customer_address',28),
	('customer_address_edit',28),
	('customer_register_address',28),
	('adminhtml_customer_address',29),
	('customer_address_edit',29),
	('customer_register_address',29),
	('adminhtml_customer_address',30),
	('customer_address_edit',30),
	('customer_register_address',30),
	('adminhtml_customer_address',31),
	('customer_address_edit',31),
	('customer_register_address',31),
	('adminhtml_customer_address',32),
	('customer_address_edit',32),
	('customer_register_address',32),
	('adminhtml_customer_address',33),
	('customer_address_edit',33),
	('customer_register_address',33),
	('adminhtml_customer_address',34),
	('customer_address_edit',34),
	('customer_register_address',34),
	('adminhtml_customer_address',35),
	('customer_address_edit',35),
	('customer_register_address',35),
	('adminhtml_customer_address',36),
	('customer_address_edit',36),
	('customer_register_address',36);

/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_grid_flat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_grid_flat`;

CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';



# Dump of table customer_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_group`;

CREATE TABLE `customer_group` (
  `customer_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`)
VALUES
	(0,'NOT LOGGED IN',3),
	(1,'General',3),
	(2,'Wholesale',3),
	(3,'Retailer',3);

/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_log`;

CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';



# Dump of table customer_visitor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_visitor`;

CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

LOCK TABLES `customer_visitor` WRITE;
/*!40000 ALTER TABLE `customer_visitor` DISABLE KEYS */;

INSERT INTO `customer_visitor` (`visitor_id`, `customer_id`, `session_id`, `last_visit_at`)
VALUES
	(1,NULL,'tq4n228cuh6b831sfudt7b5c5o','2019-08-22 21:24:45'),
	(2,NULL,'i9gi16lojp358blh7n2dimpe0k','2019-08-22 23:33:06'),
	(3,NULL,'0ukjg8mac232n93c202fm23cpf','2019-08-23 00:41:36'),
	(4,NULL,'7kf260gd8d06hfd0i0m3crg2gv','2019-08-23 01:37:18'),
	(5,NULL,'3bqa9gl0vecs6ojpg57gddeiid','2019-08-23 01:38:54'),
	(6,NULL,'fi53aqbh3n5snp33augcki0rfa','2019-08-23 01:40:02'),
	(7,NULL,'47qjkkeuip9da387fg0io22gpc','2019-08-23 06:10:32'),
	(8,NULL,'sfe47ven5k29473f0o4qti9evn','2019-08-23 06:13:54'),
	(9,NULL,'ncul0jtr2ggaf6aou8gfv3i3af','2019-08-23 07:02:42'),
	(10,NULL,'sf1vho7uhqr2uv32b970rqrd69','2019-08-23 12:49:00'),
	(11,NULL,'1sbsdht79t23o8fjeguae98bgh','2019-08-23 16:45:03'),
	(12,NULL,'ddcssto94ukpem1hmjg09b6c1s','2019-08-23 16:55:33'),
	(13,NULL,'ddcssto94ukpem1hmjg09b6c1s','2019-08-23 17:39:27'),
	(14,NULL,'uufsu4if5eiu97kh24197uv848','2019-08-23 22:04:54'),
	(15,NULL,'5eipteqg6tk6bjmpqfnvv0kiim','2019-08-23 22:14:23'),
	(16,NULL,'bhgf5ihfufo297fcme1988js9a','2019-08-23 22:41:40'),
	(17,NULL,'jas143npth46g1hthiactdffh3','2019-08-24 12:48:34'),
	(18,NULL,'h4kd5ee1k3v35nhqcpc30m5hbn','2019-08-24 14:05:07'),
	(19,NULL,'jas143npth46g1hthiactdffh3','2019-08-24 14:17:02'),
	(20,NULL,'i1f9u4tkion26opn26td3n6kuo','2019-08-24 14:24:02'),
	(21,NULL,'j0rteg45tq0orchap5dg1a0epb','2019-08-24 14:33:30'),
	(22,NULL,'6vrqb348qmc6ima45g8hqtie50','2019-08-24 14:42:58'),
	(23,NULL,'m6r5muba34aniu9serlekqf991','2019-08-24 14:46:31'),
	(24,NULL,'5nup5ud1t1mgfr7utnp5obndvr','2019-08-24 14:46:32'),
	(25,NULL,'nn2n6saeu140nvoj7fh6t665l2','2019-08-24 14:46:34'),
	(26,NULL,'71bs2de1krk372tdjv1pidk9v4','2019-08-24 14:46:35'),
	(27,NULL,'1ikcunpe6plsnreptcasmpvc30','2019-08-24 14:46:36'),
	(28,NULL,'o54fr9fuf5iidccofv2tfel48u','2019-08-24 14:46:37'),
	(29,NULL,'jjk5p0o7nhmh0aa8b7p6gjdk4d','2019-08-24 14:49:11'),
	(30,NULL,'l1e3pf6p8hrk8ppsqe6cj1f9ru','2019-08-24 14:52:25'),
	(31,NULL,'4vea282nfrqsp6rrek0dorhag3','2019-08-24 15:02:01'),
	(32,NULL,'1rtaugil4k2gp1m4eu2fan4umi','2019-08-24 15:11:22'),
	(33,NULL,'uaba3bu1nrgmm52vam74hsn269','2019-08-24 15:20:50'),
	(34,NULL,'jalogtka03adt0njhu9h1m2654','2019-08-24 15:29:14'),
	(35,NULL,'evh7qmti76j7rnnbvnqfch21qd','2019-08-24 15:29:15'),
	(36,NULL,'9cp30k4kvukngp8ognj9l8ai6d','2019-08-24 15:30:13'),
	(37,NULL,'9i6g1nsgg4r2qcbf5u1teobd38','2019-08-24 15:30:18'),
	(38,NULL,'vjjbiub34d7rotkitc06kaetkg','2019-08-24 15:39:45'),
	(39,NULL,'cavskqsiisptp0702ghn041uoq','2019-08-24 15:49:05'),
	(40,NULL,'gsoc4qnc2149np1uvrebs2hjl0','2019-08-24 15:49:14'),
	(41,NULL,'5qpm3st11emuj6dqdckp40m8qp','2019-08-24 15:58:41'),
	(42,NULL,'tdcivcp0pmugn00ea3791svhjh','2019-08-24 16:02:23'),
	(43,NULL,'p2b63m0c9ieaqmj4rmf2dm7q08','2019-08-24 16:02:24'),
	(44,NULL,'iajsp0cvqotb6887icrk1t173q','2019-08-24 16:02:27'),
	(45,NULL,'22h3o5aghb1o8108ugd7p0j1rp','2019-08-24 16:02:28'),
	(46,NULL,'msmdrv8h2ke7lg5a8slfbpl8e4','2019-08-24 16:02:29'),
	(47,NULL,'mfc96ngofrbbsgcs4k793co1na','2019-08-24 16:02:30'),
	(48,NULL,'ng2u1h797a19pb3i75ejr5efes','2019-08-24 16:02:32'),
	(49,NULL,'raubb9jo916ruh3cap4agcj5ke','2019-08-24 16:02:34'),
	(50,NULL,'dula4a0m492p867vu831mspnr1','2019-08-24 16:02:37'),
	(51,NULL,'c0ng691tj43iukdfvkos2edd0a','2019-08-24 16:08:10'),
	(52,NULL,'bahmngvtg3j9japrv836sahcho','2019-08-24 16:17:38'),
	(53,NULL,'ce1ah90ta1c12hr7746sekit3i','2019-08-24 16:27:08'),
	(54,NULL,'eg8vkmp178jll5qtuv4nud907o','2019-08-24 16:36:57'),
	(55,NULL,'dglkmon588q2v4p55ac1rf76cv','2019-08-24 16:37:26'),
	(56,NULL,'n0ie340qqi3or2c8tn72pbfqss','2019-08-24 16:46:03'),
	(57,NULL,'rpo0lbrkrtus1605gnaj8imnqn','2019-08-24 16:55:31'),
	(58,NULL,'bhdm3nfrfvcr2s42r9cnula2k6','2019-08-24 17:04:58'),
	(59,NULL,'tan1lr5nf0jdt4ac9i98s7rduv','2019-08-24 17:10:51'),
	(60,NULL,'q477abi1o9lqq2e5obni964i84','2019-08-24 17:14:25'),
	(61,NULL,'5ikbcc4agf7i1rir6hkogjk7s7','2019-08-24 17:23:53'),
	(62,NULL,'22jf25nidlb97hk6otou6op4un','2019-08-24 17:28:28'),
	(63,NULL,'nhfg6njs5v6enoea0vs0hm32n7','2019-08-24 17:33:22'),
	(64,NULL,'jjk5p0o7nhmh0aa8b7p6gjdk4d','2019-08-24 17:40:38'),
	(65,NULL,'fnijfu8c9jj1v1d3q2nmu5s457','2019-08-24 17:42:50'),
	(66,NULL,'q9vc50nvgio4vj82v0phhmfrk1','2019-08-24 17:45:29'),
	(67,NULL,'aone10afgrq3kjrk1diddjqv1m','2019-08-24 17:52:18'),
	(68,NULL,'kmd6uifk47340bpaljihamug7q','2019-08-24 18:01:58'),
	(69,NULL,'1nv1u04ge4pcsje0mgdu1i3mh4','2019-08-24 18:11:15'),
	(70,NULL,'qt8b7mcjc0ehla088dgpgd5hli','2019-08-24 18:20:42'),
	(71,NULL,'dh0ac3ef9k97ftqhstgnokkr1g','2019-08-24 18:30:10'),
	(72,NULL,'jariee0fp6deig9bkfvraoua10','2019-08-24 18:39:38'),
	(73,NULL,'oqbmgasd8ineo3tg73dgib53jn','2019-08-24 18:49:06'),
	(74,NULL,'rsmf4vhd2mojdq4j5pivvlu7q7','2019-08-24 18:58:35'),
	(75,NULL,'ctc0lo4rs30r86ilm41uut63ib','2019-08-24 19:08:01'),
	(76,NULL,'srdsslmsq64e6h107g0erdc0pq','2019-08-24 19:17:30'),
	(77,NULL,'0aqflntmuvqhqlhtmrrcm6p4qd','2019-08-24 19:26:58'),
	(78,NULL,'6jv4hjn8lmjl8ovkkv1dr2qcdm','2019-08-24 19:36:50'),
	(79,NULL,'i2js0svgd5t6q8745r333dsk8k','2019-08-24 19:44:31'),
	(80,NULL,'8fl70s6po162ntbpaop9je7l81','2019-08-24 19:45:55'),
	(81,NULL,'sg6r2l9cqpmg3srg57nffhrr3e','2019-08-24 19:55:22'),
	(82,NULL,'0ua3dtu71bluhgoa4tilpdb6sv','2019-08-24 20:04:42'),
	(83,NULL,'95f6kmt87rcecr1b4bsmdfdch9','2019-08-24 20:04:49'),
	(84,NULL,'rtanndq96vqegr713r4jbr1vvs','2019-08-24 20:06:15'),
	(85,NULL,'tikoch9rh7bsk35q3i12jep0k4','2019-08-24 20:07:04'),
	(86,NULL,'10084i1sf54bb3vhu8f8aulubc','2019-08-24 20:13:09'),
	(87,NULL,'mkmci8vhbnd2kju89js067kkff','2019-08-24 20:13:10'),
	(88,NULL,'pinfmfc0kfkli3i3bip9npbcrb','2019-08-24 20:13:11'),
	(89,NULL,'c3bj4m14ke68flmm1ad6oh0kjc','2019-08-24 20:13:12'),
	(90,NULL,'sejith948k26cpc7evl2ta2v0a','2019-08-24 20:13:13'),
	(91,NULL,'2lhqc63hbcv15v9inmudbj79gu','2019-08-24 20:13:13'),
	(92,NULL,'vfi17rclkhuqbrpbsj3dvc7foj','2019-08-24 20:13:14'),
	(93,NULL,'8b6eml2mm6dhqtqjkg3nadvkdo','2019-08-24 20:14:18'),
	(94,NULL,'cbfs9cmv6spq7c51521cdj4meu','2019-08-24 20:17:45'),
	(95,NULL,'8lol945opp6mbu1ga3jqtbns4d','2019-08-24 20:23:52'),
	(96,NULL,'f6pte4mfbe2o8b0r4epjdv8n1p','2019-09-14 03:15:43'),
	(97,NULL,'3bvto2tg5j4e7favpptumd41k1','2019-09-14 03:19:18'),
	(98,NULL,'jr9jh99ofd99ki47j9v1j6pkun','2019-09-14 05:22:09'),
	(99,NULL,'e4ugma8at3ajh83t4dro6cahc2','2019-09-14 05:23:12'),
	(100,NULL,'eptjbjclk1salhn1pfa6f1t5cp','2019-09-14 05:31:21'),
	(101,NULL,'bffn4e85gfh9lukkv4re9i4i31','2019-09-14 05:50:15'),
	(102,NULL,'n6u38hafosc69u1g1ivhvl7nog','2019-09-14 06:28:16'),
	(103,NULL,'keg6t5josgh184egtrefro0kj5','2019-09-14 07:24:15'),
	(104,NULL,'2dkpnsnjmms651cdjl5af6tiip','2019-09-14 07:25:35'),
	(105,NULL,'us2ml34bnbhcd1pfnsn0ia0blf','2019-09-14 07:25:36'),
	(106,NULL,'k7i8oujlj5biiifj570edluuhd','2019-09-14 07:59:28'),
	(107,NULL,'5cp1ap86rtfvg93nkab4at138u','2019-09-14 08:18:30'),
	(108,NULL,'2oasg1vtaf7i2p9qhasm26ofls','2019-09-14 09:13:42'),
	(109,NULL,'aoejipa94e7r4nnebhr2iq3mv1','2019-09-14 09:16:39'),
	(110,NULL,'6fklk11ukvqcfk34rjfc064150','2019-09-14 09:25:01'),
	(111,NULL,'vtegfse41vcnfq23hteuta7a8t','2019-09-14 09:45:24'),
	(112,NULL,'ivr0v84ouhkjgavspefui63dqe','2019-09-14 09:47:32'),
	(113,NULL,'i4ql8s61rboigra4p2n8cvun0j','2019-09-14 10:15:45'),
	(114,NULL,'fn8aq25k60u6i9r2nuua2lttui','2019-09-14 10:46:42'),
	(115,NULL,'jgijdhj6itq3leopgjfc8q0a93','2019-09-14 10:54:36'),
	(116,NULL,'5bancirs9303313bdo6iu08575','2019-09-14 11:06:33'),
	(117,NULL,'cno0g62hruda39kjnnr4nppaqt','2019-09-14 11:55:33'),
	(118,NULL,'oa7cdkeuc9jfs257cl5b7aoaq3','2019-09-14 12:28:03'),
	(119,NULL,'lmqkaegs2hh4nlupeqk0514cid','2019-09-14 13:24:26'),
	(120,NULL,'socggn07vach6qfqjms7fuk0lm','2019-09-14 14:09:33'),
	(121,NULL,'v67fuu1mhnmu41nb3k9qnst84u','2019-09-14 14:23:11'),
	(122,NULL,'sba4kogdpiggk40ppq1di7jo24','2019-09-14 14:24:42'),
	(123,NULL,'h2ugu7t34m5a21rfc5gi9jebuk','2019-09-14 14:27:27'),
	(124,NULL,'vne4cqaqajua09d5uvsm24pv8m','2019-09-14 14:27:40'),
	(125,NULL,'e2n4o54bn01mc7qognavfcqvu9','2019-09-14 15:19:07'),
	(126,NULL,'daqf17st3du8lv0b0ljgoec7tl','2019-09-14 15:39:31'),
	(127,NULL,'be2v4t1kks9qu5sdvh94loh82g','2019-09-14 15:49:09'),
	(128,NULL,'ub3ninq0gh2du2mgfmpcmo927j','2019-09-14 15:49:33'),
	(129,NULL,'svb2ktm4djt1lt9phn086af9m4','2019-09-14 15:49:48'),
	(130,NULL,'fckmu0ks9jlmieji74ac5mc8l0','2019-09-14 15:50:08'),
	(131,NULL,'b5p8l87gqbe0npp2405m6llpep','2019-09-14 15:50:25'),
	(132,NULL,'nccubupl2orge37svtp13fg8p3','2019-09-14 15:50:40'),
	(133,NULL,'0rgr151tuu01o22rejd13occ65','2019-09-14 15:50:57'),
	(134,NULL,'jec1neq1t3h4l3lvgnc5kpckfb','2019-09-14 15:51:15'),
	(135,NULL,'nts4n9shpammov13e7hgv8m2gc','2019-09-14 15:51:32'),
	(136,NULL,'qvlm7vap41fqdk35q9oi4l31b4','2019-09-14 15:51:51'),
	(137,NULL,'2ntqr837gdu6aluq0gcab3k0j9','2019-09-14 15:52:06'),
	(138,NULL,'7b2psr9c69ucnh2ntr6749n1m2','2019-09-14 15:52:24'),
	(139,NULL,'d5mhc79c4rjg3prvtjvp0arnjk','2019-09-14 15:52:40'),
	(140,NULL,'9am3lkits9bvojqcvm9df0c2s9','2019-09-14 15:52:59'),
	(141,NULL,'ljkhu2o2aveipl432qo2luc24k','2019-09-14 15:53:17'),
	(142,NULL,'lvodpd6sltmgchhrvdcdure87s','2019-09-14 15:53:32'),
	(143,NULL,'djct84vrie0sefm5oh80ie4cbr','2019-09-14 15:53:51'),
	(144,NULL,'hdds271rm48fmeohkjig4ebnmr','2019-09-14 15:54:09'),
	(145,NULL,'olojob9938tpj1tvbga319e5v3','2019-09-14 16:13:45'),
	(146,NULL,'i0ohh90lvvm507v0cqvfsct9s9','2019-09-14 18:42:08'),
	(147,NULL,'2mict9bmj91am48o7gjpvv7cfv','2019-09-14 18:49:59'),
	(148,NULL,'1dio95ig5d7knkr9sj1556jl07','2019-09-14 19:20:06'),
	(149,NULL,'88n1m7adlmnrcenn4ve5dp78dd','2019-09-14 19:46:03'),
	(150,NULL,'m42rqteai1jlnqli3sprigqod6','2019-09-14 19:59:18'),
	(151,NULL,'pl4u6b5kpa9kff8gvelo6vmpv1','2019-09-14 21:32:33'),
	(152,NULL,'hkfif41n4l1g6ep2pvj5iu78sv','2019-09-14 21:48:10'),
	(153,NULL,'e91lm02qhhb2a8l0arg2dokm5l','2019-09-14 22:53:00'),
	(154,NULL,'p15hsqu6p1igja977jov71h18m','2019-09-15 00:29:59'),
	(155,NULL,'hdoiensrk0540q5eo6mceh265o','2019-09-15 01:01:50'),
	(156,NULL,'6d4t45lp9ask91n41j4g4qiiv7','2019-09-15 01:23:18'),
	(157,NULL,'0l2299pk79jce4u4q2i40km81d','2019-09-15 02:06:57'),
	(158,NULL,'54l7q8mb20b7nmjkhqi255kefd','2019-09-15 03:10:35'),
	(159,NULL,'kstuo9o9kojsadkvr0djcd877o','2019-09-15 03:27:20'),
	(160,NULL,'ds5aen29rkm5b8pfhqu0genq57','2019-09-15 03:30:15'),
	(161,NULL,'0om7mq9a7joub7o71gc6h9g8o8','2019-09-15 03:31:42'),
	(162,NULL,'arovr8363k4rql9e4ju1btdsr5','2019-09-15 03:33:10'),
	(163,NULL,'on0hqfmo8ii4pq19m8ld1jb37t','2019-09-15 03:37:56'),
	(164,NULL,'vin9pkm96abg4sj8j4h55ul1sa','2019-09-15 03:50:21'),
	(165,NULL,'nrejqt38dtc2q94iior8u2cvu6','2019-09-15 04:02:14'),
	(166,NULL,'tu532ec097n5eucn399beifh29','2019-09-15 05:04:26'),
	(167,NULL,'kmkaji0moickvpdb0h236mdgdq','2019-09-15 05:30:29'),
	(168,NULL,'la9cs77o3f4aiu4vgco4mdm507','2019-09-15 06:28:31'),
	(169,NULL,'fkkqr6ivp1vnki7ovsf9i75gjo','2019-09-15 06:36:34'),
	(170,NULL,'1invbqqntq7l0254a63ikki8q7','2019-09-15 06:45:08'),
	(171,NULL,'uaodabqunr3c68u8v9bien5bt0','2019-09-15 06:45:36'),
	(172,NULL,'16nup84tnckk7g2otfa3obriv9','2019-09-15 06:46:55'),
	(173,NULL,'mu59drvkbb71rj673hm118nk7j','2019-09-15 06:47:12'),
	(174,NULL,'c5sied677l5r78vt2cvqj8hab6','2019-09-15 06:47:58'),
	(175,NULL,'h7ahnhi6ep9qdo75qfj0pm6mem','2019-09-15 06:48:43'),
	(176,NULL,'7utjrtaqrhh3r3hh5ngp3gbtrv','2019-09-15 06:48:43'),
	(177,NULL,'t663apq13d5ps7v5mrgdj03cvt','2019-09-15 06:49:20'),
	(178,NULL,'nof0u60j04hskk53j6i5ehnii3','2019-09-15 06:50:19'),
	(179,NULL,'cigqp5v7e8ol1idibho5jh5oj7','2019-09-15 06:51:00'),
	(180,NULL,'cd3em0psanrdh8ncknqrqbmbvj','2019-09-15 06:51:24'),
	(181,NULL,'4e8b8pg2589ebn2fp6njcj3klb','2019-09-15 06:52:52'),
	(182,NULL,'h47ddcqnpojk3b7j5d8ljlbkpi','2019-09-15 06:53:22'),
	(183,NULL,'ckoiu39i272102l8hlk9ev4dji','2019-09-15 06:55:35'),
	(184,NULL,'1rcrbglm6gelpmap0uad9botpo','2019-09-15 06:57:25'),
	(185,NULL,'o890rn0grvkv49r8u4tsk4he52','2019-09-15 06:59:08'),
	(186,NULL,'u9els9aqokue264u85v1boeb9u','2019-09-15 06:59:43'),
	(187,NULL,'9ghuub6qehh6m7cdk691hg8mc9','2019-09-15 07:00:33'),
	(188,NULL,'8q6odrghsfg642g7n4f4trvjea','2019-09-15 07:01:31'),
	(189,NULL,'5j3bt68n0llr68s7r0j02ku87s','2019-09-15 07:01:50'),
	(190,NULL,'1tg1s96s1ql46aie9r72njq0ir','2019-09-15 07:02:08'),
	(191,NULL,'f6d4rcs550jnlqo0p0euun4jsq','2019-09-15 07:02:52'),
	(192,NULL,'9j1nhnfekrog1rd4n408ub0ncp','2019-09-15 07:03:19'),
	(193,NULL,'2d8qakij2v6jlc57m357kr0n2t','2019-09-15 07:03:50'),
	(194,NULL,'9fac14hdlvc79c5rmbnnfe9jj8','2019-09-15 07:04:20'),
	(195,NULL,'i8uubk7s2401pk69gp1btc0vvq','2019-09-15 07:06:35'),
	(196,NULL,'lhaoisuufl7pl3mdlscg0fdcp0','2019-09-15 07:46:21'),
	(197,NULL,'ghvh6c6dc1kqjtrmjgm406ebm4','2019-09-15 07:48:30'),
	(198,NULL,'hu3j4bnqqlvju37q46vue8e72j','2019-09-15 08:13:29'),
	(199,NULL,'c2g5leapuq5sstdjrdkg0bqsbg','2019-09-15 09:20:46'),
	(200,NULL,'uef93h27i6tvpc6c0tuiej2dn1','2019-09-15 10:19:15'),
	(201,NULL,'56582cc0q4p2h73bhoopa8c7ig','2019-09-15 10:28:56'),
	(202,NULL,'6k8olrl6r1nmsv312ucjmcv2vo','2019-09-15 11:30:19'),
	(203,NULL,'0he6ehf7tse8ncmd12tdgqo0ds','2019-09-15 11:30:22'),
	(204,NULL,'iok5f11pjoin79stsnqopdp51k','2019-09-15 11:33:54'),
	(205,NULL,'uvmpmsma6gg1oq54s30gfvea6l','2019-09-15 11:36:24'),
	(206,NULL,'vif84pj4t5bqej5hio1n3phk54','2019-09-15 12:05:27'),
	(207,NULL,'luk1ri9i60bgqkthhks6625muk','2019-09-15 12:20:39'),
	(208,NULL,'1kr2q28frirslff1up1nnodhn3','2019-09-15 12:35:10'),
	(209,NULL,'isb8egi8ldvj0vai3vtga4sg8g','2019-09-15 13:03:45'),
	(210,NULL,'vjjcpuvlsso0a411dr7lhqnjjg','2019-09-15 13:23:24'),
	(211,NULL,'h4e0jpbqfqq2vnd1r92fpprqnu','2019-09-15 13:39:05'),
	(212,NULL,'0jm4gbsisjf519qa873doo3dk0','2019-09-15 14:10:40'),
	(213,NULL,'lmj088nprk1f802vjhge0rp2pi','2019-09-15 14:40:56'),
	(214,NULL,'m1n9gn6126kfvm8f6n70ppboj8','2019-09-15 15:15:35'),
	(215,NULL,'8q6p059f6fsfcrrgireiuk19j3','2019-09-15 15:16:43'),
	(216,NULL,'9ivuhuc2jk27k4u7tdcsv2c3pm','2019-09-15 15:26:49'),
	(217,NULL,'sms51mvqih0otu6fniluft08t3','2019-09-15 15:35:36'),
	(218,NULL,'m59b7u847iojvdjsfb3tbpukpi','2019-09-15 15:36:08'),
	(219,NULL,'rnb9mli6dta3i927ddei57cdt1','2019-09-15 15:57:45'),
	(220,NULL,'l4mfn6lcdjiaju5lca2ma62c56','2019-09-15 16:46:31'),
	(221,NULL,'3s6kmhnoc8s5qstvu5ub8ia17s','2019-09-15 17:01:44'),
	(222,NULL,'6l8o6b9e68c8lt0q2uc8p5h6cn','2019-09-15 17:21:42'),
	(223,NULL,'qm5sf3g1r9jbkk1vp1vit0kgmu','2019-09-15 17:26:15'),
	(224,NULL,'poiefbe746de8tmch632vokaeu','2019-09-15 18:00:43'),
	(225,NULL,'tdqucgjfko2t1ko8kdqg0fgvgo','2019-09-15 18:10:59'),
	(226,NULL,'rvtv511sbfbc5ke55gr7h75dv0','2019-09-15 18:54:37'),
	(227,NULL,'nd6e9lv06122klcnpk1n5rubkp','2019-09-15 20:07:33'),
	(228,NULL,'bk8956bndir00ct3b6l4njijcd','2019-09-15 20:07:39'),
	(229,NULL,'pelkgl3u7ad8u72j6lqof7n4cm','2019-09-15 20:07:48'),
	(230,NULL,'09rkg32q8l7trraoeks5c0631m','2019-09-15 20:07:54'),
	(231,NULL,'ml0n2uqvovvmtin5qsoevrkn1p','2019-09-15 20:07:56'),
	(232,NULL,'ccdg3q5jgem0l1mhr4km7glgvs','2019-09-15 20:08:02'),
	(233,NULL,'b5vrt3rsrrirta0nk3n2f397bk','2019-09-15 20:08:14'),
	(234,NULL,'1d1ophngj6orebl0kr4rl30fjk','2019-09-15 20:08:17'),
	(235,NULL,'gfcdopsvd85a0tdsfl1aj6hil6','2019-09-15 20:08:20'),
	(236,NULL,'3dmrugth2qcf76c39qk34lsski','2019-09-15 20:08:23'),
	(237,NULL,'c0p43ff90dm98ncg0q4b13jnag','2019-09-15 20:08:30'),
	(238,NULL,'se3eblf0ludt7j4dt8mr7h3h56','2019-09-15 20:08:34'),
	(239,NULL,'6jkm8g8fvao3m21e7383jhj42t','2019-09-15 20:08:44'),
	(240,NULL,'snsbffr798sfl3ha40au1anldr','2019-09-15 20:08:47'),
	(241,NULL,'drhfs41jun59ubkk5r6v746h1d','2019-09-15 20:08:52'),
	(242,NULL,'981g05kjv277kltop8obssas0p','2019-09-15 20:09:04'),
	(243,NULL,'3rn7lpid07i441to1f4re1a8fv','2019-09-15 20:09:11'),
	(244,NULL,'ged74kali9o9sgce5cflpoe286','2019-09-15 20:09:26'),
	(245,NULL,'190rknq7073c4t7eb6fl7cn43g','2019-09-15 20:09:30'),
	(246,NULL,'tjudud3043kujq17pmqrp52ffo','2019-09-15 20:09:43'),
	(247,NULL,'d8bl7b3pntluvkhmi00p9fo1rm','2019-09-15 20:09:49'),
	(248,NULL,'lv15t9f8c48btdq1tevl1e0svn','2019-09-15 20:09:56'),
	(249,NULL,'a21okejnurgnast9l96citn02i','2019-09-15 20:10:05'),
	(250,NULL,'uomvh6kc9pg4lforto0c7klhgd','2019-09-15 20:10:10'),
	(251,NULL,'uvn8pkmiq3qfjrdinbmt2c1n05','2019-09-15 20:10:21'),
	(252,NULL,'a1vj3lfv9h7723ep32351a61a8','2019-09-15 20:10:27'),
	(253,NULL,'n12b8erotifnbg4uh59iaj9d50','2019-09-15 20:10:35'),
	(254,NULL,'3va8ih8neuof016i44j8q8l2ee','2019-09-15 20:10:42'),
	(255,NULL,'5li1b7rbei5n0nkinuv7nr0t7p','2019-09-15 20:10:47'),
	(256,NULL,'4cnn65qkc7sn4o9lheegn0258i','2019-09-15 20:10:55'),
	(257,NULL,'h7v0httmf22ijk9mjs5jgomea5','2019-09-15 20:10:59'),
	(258,NULL,'c4mm0jtgtcu8miri8rb12e97k4','2019-09-15 20:11:14'),
	(259,NULL,'kn6g2rvk8frunr59bfrgdo4rbt','2019-09-15 20:11:18'),
	(260,NULL,'s3sr2ib92klq4vh3u0j3idkmof','2019-09-15 20:11:26'),
	(261,NULL,'ih7l7iekogbe4ijj3uiqp50ob5','2019-09-15 20:11:34'),
	(262,NULL,'a2ns5j56tugogb7ut9am42s987','2019-09-15 20:11:39'),
	(263,NULL,'julruf56uqmel6ckl053s37ems','2019-09-15 20:11:46'),
	(264,NULL,'aog54a8oubcnfq5clgn8b90rah','2019-09-15 20:11:54'),
	(265,NULL,'mjs2vadgfp5j8j1ahqa4iebe1d','2019-09-15 20:11:59'),
	(266,NULL,'2et0q6nvlrq4k7ul4udej20oqh','2019-09-15 20:12:10'),
	(267,NULL,'g55skkvtl99260as5b6gkdivvn','2019-09-15 20:12:14'),
	(268,NULL,'2a1ism2lfsc28gh7v5a00oqak7','2019-09-15 20:12:26'),
	(269,NULL,'0kfupefn2jh9rdbjmom609rg0k','2019-09-15 20:12:31'),
	(270,NULL,'26nrkguqtcg3n71e91q4ht0it4','2019-09-15 20:12:38'),
	(271,NULL,'d9n008q6vg4pm17576gek5bp4v','2019-09-15 20:12:47'),
	(272,NULL,'3q95mioqvf380pl9blkmd1sca3','2019-09-15 20:12:50'),
	(273,NULL,'5c88c883sdjdbivquet3o709cg','2019-09-15 20:12:54'),
	(274,NULL,'3997qunegtjdvls496r3jpq71r','2019-09-15 20:13:05'),
	(275,NULL,'kh3snpt4t531l9vefi0uqbuck2','2019-09-15 20:13:09'),
	(276,NULL,'2oh1nuvbu9qgkpe6d010pcrc2a','2019-09-15 20:13:15'),
	(277,NULL,'d05fq4n8onoq4cd8chklad71us','2019-09-15 20:13:20'),
	(278,NULL,'p9k1bun1pnfm5lhdp4nc9rhrgn','2019-09-15 20:13:27'),
	(279,NULL,'6sf6b86ir7glcg0k35r3a7ad5p','2019-09-15 20:13:32'),
	(280,NULL,'mvqkgrj3o2remvf3jdpa8ijfms','2019-09-15 20:13:35'),
	(281,NULL,'o9hnheo8dh738ff2brbtt75mr2','2019-09-15 20:13:39'),
	(282,NULL,'f7mjbgk1cqnd72td7dfrl1grcn','2019-09-15 20:13:44'),
	(283,NULL,'59fcojase680dp7g4h6vpp41tm','2019-09-15 20:13:49'),
	(284,NULL,'tvfjfl452t0i7cdrigoget6cd6','2019-09-15 20:13:55'),
	(285,NULL,'agunce2eu4ut4k0nb0oa47htri','2019-09-15 20:13:59'),
	(286,NULL,'np38rd7dsvtf3j056ba1in88dc','2019-09-15 20:14:07'),
	(287,NULL,'5ev9a22qqohru9ttevoaknilml','2019-09-15 20:14:11'),
	(288,NULL,'nj63hgaiohvb3qmqo7f9lr6uj3','2019-09-15 20:14:17'),
	(289,NULL,'es7jnrvnjepvdq8u6lkql185tb','2019-09-15 20:14:26'),
	(290,NULL,'ifrdjin7nlv28e2cu4i3kgidb7','2019-09-15 20:14:36'),
	(291,NULL,'jkujlqrd9hlk2hhk5uso285r4j','2019-09-15 20:14:40'),
	(292,NULL,'jl8epdr3imj8oc8d3fkfoivqi1','2019-09-15 20:14:46'),
	(293,NULL,'6v68rniirs9bfte0urtqungo4e','2019-09-15 20:14:51'),
	(294,NULL,'i2aphfh2nh5foruvuusjgt23p2','2019-09-15 20:14:56'),
	(295,NULL,'97vl1t70gro01r33ibq5gp8tv7','2019-09-15 20:15:02'),
	(296,NULL,'97vfgobo8e4s6bhlsfkhflv19p','2019-09-15 20:15:07'),
	(297,NULL,'jhss3pii46chamt0hjitidgk65','2019-09-15 20:15:27'),
	(298,NULL,'qiq8vjc7jtfsderanvhfovjopo','2019-09-15 20:15:47'),
	(299,NULL,'pn8lka2ic3ike8bshth82khmsg','2019-09-15 20:15:51'),
	(300,NULL,'4qjaucea2ik78g5hl9g0a0opoj','2019-09-15 20:16:04'),
	(301,NULL,'qlbauar7avd46cbh3d90ajpju0','2019-09-15 20:16:08'),
	(302,NULL,'i3has2umr9a8qfocsp8bommg33','2019-09-15 20:16:15'),
	(303,NULL,'1t5jgkenrse1nntf6idfa6bp1h','2019-09-15 20:16:22'),
	(304,NULL,'ba7aetbj7ur41bo0cugtd0ua6m','2019-09-15 20:16:27'),
	(305,NULL,'jrc2f4tvqppmohj1nhv2trjcek','2019-09-15 20:16:37'),
	(306,NULL,'akeb534c1gseq7qq1bu92tp3ih','2019-09-15 20:16:45'),
	(307,NULL,'avc007ao06e5dbup3i8g7ac5fg','2019-09-15 20:16:51'),
	(308,NULL,'6hd3q5les7mubcr09207l516ng','2019-09-15 21:24:01'),
	(309,NULL,'qpaa5p358k3ft047sh3kiu5bug','2019-09-15 23:54:53'),
	(310,NULL,'dmalqlq9qqnpnf8loqoap5s7ji','2019-09-16 00:11:28'),
	(311,NULL,'nlvh7v1vcob8i3rns631o0or74','2019-09-16 00:39:22'),
	(312,NULL,'c20s5aobr6vhch1t3u54q070tp','2019-09-16 00:40:49'),
	(313,NULL,'52rmsq56jpdohp6a0df6mcd73s','2019-09-16 01:01:59'),
	(314,NULL,'r6r21gced6k573guhiks2fvo92','2019-09-16 01:31:05'),
	(315,NULL,'n4n2q8h285i8nfs1fg5knj9p18','2019-09-16 01:56:26'),
	(316,NULL,'lu8kcgo2883elad9st0jqc2407','2019-09-16 02:16:21'),
	(317,NULL,'1ufcbb45th6j3umathus2kq89b','2019-09-16 02:25:59'),
	(318,NULL,'7c4vffg08ct2i7njso8hmn9ln8','2019-09-16 02:56:55'),
	(319,NULL,'u6igv53u8qonerhsumnsn25hvr','2019-09-16 03:41:04'),
	(320,NULL,'qdrre2vr33eqrtn0fhh8q0u3rj','2019-09-16 03:50:18'),
	(321,NULL,'8qpeq8m6bgap7h5anvd0qml44e','2019-09-16 04:01:16');

/*!40000 ALTER TABLE `customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table design_change
# ------------------------------------------------------------

DROP TABLE IF EXISTS `design_change`;

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `DESIGN_CHANGE_STORE_ID` (`store_id`),
  CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';



# Dump of table design_config_grid_flat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `design_config_grid_flat`;

CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

LOCK TABLES `design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `design_config_grid_flat` DISABLE KEYS */;

INSERT INTO `design_config_grid_flat` (`entity_id`, `store_website_id`, `store_group_id`, `store_id`, `theme_theme_id`)
VALUES
	(0,NULL,NULL,NULL,''),
	(1,1,NULL,NULL,''),
	(2,1,1,1,'4');

/*!40000 ALTER TABLE `design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directory_country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_country`;

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

LOCK TABLES `directory_country` WRITE;
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`)
VALUES
	('AD','AD','AND'),
	('AE','AE','ARE'),
	('AF','AF','AFG'),
	('AG','AG','ATG'),
	('AI','AI','AIA'),
	('AL','AL','ALB'),
	('AM','AM','ARM'),
	('AN','AN','ANT'),
	('AO','AO','AGO'),
	('AQ','AQ','ATA'),
	('AR','AR','ARG'),
	('AS','AS','ASM'),
	('AT','AT','AUT'),
	('AU','AU','AUS'),
	('AW','AW','ABW'),
	('AX','AX','ALA'),
	('AZ','AZ','AZE'),
	('BA','BA','BIH'),
	('BB','BB','BRB'),
	('BD','BD','BGD'),
	('BE','BE','BEL'),
	('BF','BF','BFA'),
	('BG','BG','BGR'),
	('BH','BH','BHR'),
	('BI','BI','BDI'),
	('BJ','BJ','BEN'),
	('BL','BL','BLM'),
	('BM','BM','BMU'),
	('BN','BN','BRN'),
	('BO','BO','BOL'),
	('BR','BR','BRA'),
	('BS','BS','BHS'),
	('BT','BT','BTN'),
	('BV','BV','BVT'),
	('BW','BW','BWA'),
	('BY','BY','BLR'),
	('BZ','BZ','BLZ'),
	('CA','CA','CAN'),
	('CC','CC','CCK'),
	('CD','CD','COD'),
	('CF','CF','CAF'),
	('CG','CG','COG'),
	('CH','CH','CHE'),
	('CI','CI','CIV'),
	('CK','CK','COK'),
	('CL','CL','CHL'),
	('CM','CM','CMR'),
	('CN','CN','CHN'),
	('CO','CO','COL'),
	('CR','CR','CRI'),
	('CU','CU','CUB'),
	('CV','CV','CPV'),
	('CX','CX','CXR'),
	('CY','CY','CYP'),
	('CZ','CZ','CZE'),
	('DE','DE','DEU'),
	('DJ','DJ','DJI'),
	('DK','DK','DNK'),
	('DM','DM','DMA'),
	('DO','DO','DOM'),
	('DZ','DZ','DZA'),
	('EC','EC','ECU'),
	('EE','EE','EST'),
	('EG','EG','EGY'),
	('EH','EH','ESH'),
	('ER','ER','ERI'),
	('ES','ES','ESP'),
	('ET','ET','ETH'),
	('FI','FI','FIN'),
	('FJ','FJ','FJI'),
	('FK','FK','FLK'),
	('FM','FM','FSM'),
	('FO','FO','FRO'),
	('FR','FR','FRA'),
	('GA','GA','GAB'),
	('GB','GB','GBR'),
	('GD','GD','GRD'),
	('GE','GE','GEO'),
	('GF','GF','GUF'),
	('GG','GG','GGY'),
	('GH','GH','GHA'),
	('GI','GI','GIB'),
	('GL','GL','GRL'),
	('GM','GM','GMB'),
	('GN','GN','GIN'),
	('GP','GP','GLP'),
	('GQ','GQ','GNQ'),
	('GR','GR','GRC'),
	('GS','GS','SGS'),
	('GT','GT','GTM'),
	('GU','GU','GUM'),
	('GW','GW','GNB'),
	('GY','GY','GUY'),
	('HK','HK','HKG'),
	('HM','HM','HMD'),
	('HN','HN','HND'),
	('HR','HR','HRV'),
	('HT','HT','HTI'),
	('HU','HU','HUN'),
	('ID','ID','IDN'),
	('IE','IE','IRL'),
	('IL','IL','ISR'),
	('IM','IM','IMN'),
	('IN','IN','IND'),
	('IO','IO','IOT'),
	('IQ','IQ','IRQ'),
	('IR','IR','IRN'),
	('IS','IS','ISL'),
	('IT','IT','ITA'),
	('JE','JE','JEY'),
	('JM','JM','JAM'),
	('JO','JO','JOR'),
	('JP','JP','JPN'),
	('KE','KE','KEN'),
	('KG','KG','KGZ'),
	('KH','KH','KHM'),
	('KI','KI','KIR'),
	('KM','KM','COM'),
	('KN','KN','KNA'),
	('KP','KP','PRK'),
	('KR','KR','KOR'),
	('KW','KW','KWT'),
	('KY','KY','CYM'),
	('KZ','KZ','KAZ'),
	('LA','LA','LAO'),
	('LB','LB','LBN'),
	('LC','LC','LCA'),
	('LI','LI','LIE'),
	('LK','LK','LKA'),
	('LR','LR','LBR'),
	('LS','LS','LSO'),
	('LT','LT','LTU'),
	('LU','LU','LUX'),
	('LV','LV','LVA'),
	('LY','LY','LBY'),
	('MA','MA','MAR'),
	('MC','MC','MCO'),
	('MD','MD','MDA'),
	('ME','ME','MNE'),
	('MF','MF','MAF'),
	('MG','MG','MDG'),
	('MH','MH','MHL'),
	('MK','MK','MKD'),
	('ML','ML','MLI'),
	('MM','MM','MMR'),
	('MN','MN','MNG'),
	('MO','MO','MAC'),
	('MP','MP','MNP'),
	('MQ','MQ','MTQ'),
	('MR','MR','MRT'),
	('MS','MS','MSR'),
	('MT','MT','MLT'),
	('MU','MU','MUS'),
	('MV','MV','MDV'),
	('MW','MW','MWI'),
	('MX','MX','MEX'),
	('MY','MY','MYS'),
	('MZ','MZ','MOZ'),
	('NA','NA','NAM'),
	('NC','NC','NCL'),
	('NE','NE','NER'),
	('NF','NF','NFK'),
	('NG','NG','NGA'),
	('NI','NI','NIC'),
	('NL','NL','NLD'),
	('NO','NO','NOR'),
	('NP','NP','NPL'),
	('NR','NR','NRU'),
	('NU','NU','NIU'),
	('NZ','NZ','NZL'),
	('OM','OM','OMN'),
	('PA','PA','PAN'),
	('PE','PE','PER'),
	('PF','PF','PYF'),
	('PG','PG','PNG'),
	('PH','PH','PHL'),
	('PK','PK','PAK'),
	('PL','PL','POL'),
	('PM','PM','SPM'),
	('PN','PN','PCN'),
	('PS','PS','PSE'),
	('PT','PT','PRT'),
	('PW','PW','PLW'),
	('PY','PY','PRY'),
	('QA','QA','QAT'),
	('RE','RE','REU'),
	('RO','RO','ROU'),
	('RS','RS','SRB'),
	('RU','RU','RUS'),
	('RW','RW','RWA'),
	('SA','SA','SAU'),
	('SB','SB','SLB'),
	('SC','SC','SYC'),
	('SD','SD','SDN'),
	('SE','SE','SWE'),
	('SG','SG','SGP'),
	('SH','SH','SHN'),
	('SI','SI','SVN'),
	('SJ','SJ','SJM'),
	('SK','SK','SVK'),
	('SL','SL','SLE'),
	('SM','SM','SMR'),
	('SN','SN','SEN'),
	('SO','SO','SOM'),
	('SR','SR','SUR'),
	('ST','ST','STP'),
	('SV','SV','SLV'),
	('SY','SY','SYR'),
	('SZ','SZ','SWZ'),
	('TC','TC','TCA'),
	('TD','TD','TCD'),
	('TF','TF','ATF'),
	('TG','TG','TGO'),
	('TH','TH','THA'),
	('TJ','TJ','TJK'),
	('TK','TK','TKL'),
	('TL','TL','TLS'),
	('TM','TM','TKM'),
	('TN','TN','TUN'),
	('TO','TO','TON'),
	('TR','TR','TUR'),
	('TT','TT','TTO'),
	('TV','TV','TUV'),
	('TW','TW','TWN'),
	('TZ','TZ','TZA'),
	('UA','UA','UKR'),
	('UG','UG','UGA'),
	('UM','UM','UMI'),
	('US','US','USA'),
	('UY','UY','URY'),
	('UZ','UZ','UZB'),
	('VA','VA','VAT'),
	('VC','VC','VCT'),
	('VE','VE','VEN'),
	('VG','VG','VGB'),
	('VI','VI','VIR'),
	('VN','VN','VNM'),
	('VU','VU','VUT'),
	('WF','WF','WLF'),
	('WS','WS','WSM'),
	('YE','YE','YEM'),
	('YT','YT','MYT'),
	('ZA','ZA','ZAF'),
	('ZM','ZM','ZMB'),
	('ZW','ZW','ZWE');

/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directory_country_format
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_country_format`;

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';



# Dump of table directory_country_region
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_country_region`;

CREATE TABLE `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

LOCK TABLES `directory_country_region` WRITE;
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`)
VALUES
	(1,'US','AL','Alabama'),
	(2,'US','AK','Alaska'),
	(3,'US','AS','American Samoa'),
	(4,'US','AZ','Arizona'),
	(5,'US','AR','Arkansas'),
	(6,'US','AE','Armed Forces Africa'),
	(7,'US','AA','Armed Forces Americas'),
	(8,'US','AE','Armed Forces Canada'),
	(9,'US','AE','Armed Forces Europe'),
	(10,'US','AE','Armed Forces Middle East'),
	(11,'US','AP','Armed Forces Pacific'),
	(12,'US','CA','California'),
	(13,'US','CO','Colorado'),
	(14,'US','CT','Connecticut'),
	(15,'US','DE','Delaware'),
	(16,'US','DC','District of Columbia'),
	(17,'US','FM','Federated States Of Micronesia'),
	(18,'US','FL','Florida'),
	(19,'US','GA','Georgia'),
	(20,'US','GU','Guam'),
	(21,'US','HI','Hawaii'),
	(22,'US','ID','Idaho'),
	(23,'US','IL','Illinois'),
	(24,'US','IN','Indiana'),
	(25,'US','IA','Iowa'),
	(26,'US','KS','Kansas'),
	(27,'US','KY','Kentucky'),
	(28,'US','LA','Louisiana'),
	(29,'US','ME','Maine'),
	(30,'US','MH','Marshall Islands'),
	(31,'US','MD','Maryland'),
	(32,'US','MA','Massachusetts'),
	(33,'US','MI','Michigan'),
	(34,'US','MN','Minnesota'),
	(35,'US','MS','Mississippi'),
	(36,'US','MO','Missouri'),
	(37,'US','MT','Montana'),
	(38,'US','NE','Nebraska'),
	(39,'US','NV','Nevada'),
	(40,'US','NH','New Hampshire'),
	(41,'US','NJ','New Jersey'),
	(42,'US','NM','New Mexico'),
	(43,'US','NY','New York'),
	(44,'US','NC','North Carolina'),
	(45,'US','ND','North Dakota'),
	(46,'US','MP','Northern Mariana Islands'),
	(47,'US','OH','Ohio'),
	(48,'US','OK','Oklahoma'),
	(49,'US','OR','Oregon'),
	(50,'US','PW','Palau'),
	(51,'US','PA','Pennsylvania'),
	(52,'US','PR','Puerto Rico'),
	(53,'US','RI','Rhode Island'),
	(54,'US','SC','South Carolina'),
	(55,'US','SD','South Dakota'),
	(56,'US','TN','Tennessee'),
	(57,'US','TX','Texas'),
	(58,'US','UT','Utah'),
	(59,'US','VT','Vermont'),
	(60,'US','VI','Virgin Islands'),
	(61,'US','VA','Virginia'),
	(62,'US','WA','Washington'),
	(63,'US','WV','West Virginia'),
	(64,'US','WI','Wisconsin'),
	(65,'US','WY','Wyoming'),
	(66,'CA','AB','Alberta'),
	(67,'CA','BC','British Columbia'),
	(68,'CA','MB','Manitoba'),
	(69,'CA','NL','Newfoundland and Labrador'),
	(70,'CA','NB','New Brunswick'),
	(71,'CA','NS','Nova Scotia'),
	(72,'CA','NT','Northwest Territories'),
	(73,'CA','NU','Nunavut'),
	(74,'CA','ON','Ontario'),
	(75,'CA','PE','Prince Edward Island'),
	(76,'CA','QC','Quebec'),
	(77,'CA','SK','Saskatchewan'),
	(78,'CA','YT','Yukon Territory'),
	(79,'DE','NDS','Niedersachsen'),
	(80,'DE','BAW','Baden-Württemberg'),
	(81,'DE','BAY','Bayern'),
	(82,'DE','BER','Berlin'),
	(83,'DE','BRG','Brandenburg'),
	(84,'DE','BRE','Bremen'),
	(85,'DE','HAM','Hamburg'),
	(86,'DE','HES','Hessen'),
	(87,'DE','MEC','Mecklenburg-Vorpommern'),
	(88,'DE','NRW','Nordrhein-Westfalen'),
	(89,'DE','RHE','Rheinland-Pfalz'),
	(90,'DE','SAR','Saarland'),
	(91,'DE','SAS','Sachsen'),
	(92,'DE','SAC','Sachsen-Anhalt'),
	(93,'DE','SCN','Schleswig-Holstein'),
	(94,'DE','THE','Thüringen'),
	(95,'AT','WI','Wien'),
	(96,'AT','NO','Niederösterreich'),
	(97,'AT','OO','Oberösterreich'),
	(98,'AT','SB','Salzburg'),
	(99,'AT','KN','Kärnten'),
	(100,'AT','ST','Steiermark'),
	(101,'AT','TI','Tirol'),
	(102,'AT','BL','Burgenland'),
	(103,'AT','VB','Vorarlberg'),
	(104,'CH','AG','Aargau'),
	(105,'CH','AI','Appenzell Innerrhoden'),
	(106,'CH','AR','Appenzell Ausserrhoden'),
	(107,'CH','BE','Bern'),
	(108,'CH','BL','Basel-Landschaft'),
	(109,'CH','BS','Basel-Stadt'),
	(110,'CH','FR','Freiburg'),
	(111,'CH','GE','Genf'),
	(112,'CH','GL','Glarus'),
	(113,'CH','GR','Graubünden'),
	(114,'CH','JU','Jura'),
	(115,'CH','LU','Luzern'),
	(116,'CH','NE','Neuenburg'),
	(117,'CH','NW','Nidwalden'),
	(118,'CH','OW','Obwalden'),
	(119,'CH','SG','St. Gallen'),
	(120,'CH','SH','Schaffhausen'),
	(121,'CH','SO','Solothurn'),
	(122,'CH','SZ','Schwyz'),
	(123,'CH','TG','Thurgau'),
	(124,'CH','TI','Tessin'),
	(125,'CH','UR','Uri'),
	(126,'CH','VD','Waadt'),
	(127,'CH','VS','Wallis'),
	(128,'CH','ZG','Zug'),
	(129,'CH','ZH','Zürich'),
	(130,'ES','A Coruсa','A Coruña'),
	(131,'ES','Alava','Alava'),
	(132,'ES','Albacete','Albacete'),
	(133,'ES','Alicante','Alicante'),
	(134,'ES','Almeria','Almeria'),
	(135,'ES','Asturias','Asturias'),
	(136,'ES','Avila','Avila'),
	(137,'ES','Badajoz','Badajoz'),
	(138,'ES','Baleares','Baleares'),
	(139,'ES','Barcelona','Barcelona'),
	(140,'ES','Burgos','Burgos'),
	(141,'ES','Caceres','Caceres'),
	(142,'ES','Cadiz','Cadiz'),
	(143,'ES','Cantabria','Cantabria'),
	(144,'ES','Castellon','Castellon'),
	(145,'ES','Ceuta','Ceuta'),
	(146,'ES','Ciudad Real','Ciudad Real'),
	(147,'ES','Cordoba','Cordoba'),
	(148,'ES','Cuenca','Cuenca'),
	(149,'ES','Girona','Girona'),
	(150,'ES','Granada','Granada'),
	(151,'ES','Guadalajara','Guadalajara'),
	(152,'ES','Guipuzcoa','Guipuzcoa'),
	(153,'ES','Huelva','Huelva'),
	(154,'ES','Huesca','Huesca'),
	(155,'ES','Jaen','Jaen'),
	(156,'ES','La Rioja','La Rioja'),
	(157,'ES','Las Palmas','Las Palmas'),
	(158,'ES','Leon','Leon'),
	(159,'ES','Lleida','Lleida'),
	(160,'ES','Lugo','Lugo'),
	(161,'ES','Madrid','Madrid'),
	(162,'ES','Malaga','Malaga'),
	(163,'ES','Melilla','Melilla'),
	(164,'ES','Murcia','Murcia'),
	(165,'ES','Navarra','Navarra'),
	(166,'ES','Ourense','Ourense'),
	(167,'ES','Palencia','Palencia'),
	(168,'ES','Pontevedra','Pontevedra'),
	(169,'ES','Salamanca','Salamanca'),
	(170,'ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),
	(171,'ES','Segovia','Segovia'),
	(172,'ES','Sevilla','Sevilla'),
	(173,'ES','Soria','Soria'),
	(174,'ES','Tarragona','Tarragona'),
	(175,'ES','Teruel','Teruel'),
	(176,'ES','Toledo','Toledo'),
	(177,'ES','Valencia','Valencia'),
	(178,'ES','Valladolid','Valladolid'),
	(179,'ES','Vizcaya','Vizcaya'),
	(180,'ES','Zamora','Zamora'),
	(181,'ES','Zaragoza','Zaragoza'),
	(182,'FR','1','Ain'),
	(183,'FR','2','Aisne'),
	(184,'FR','3','Allier'),
	(185,'FR','4','Alpes-de-Haute-Provence'),
	(186,'FR','5','Hautes-Alpes'),
	(187,'FR','6','Alpes-Maritimes'),
	(188,'FR','7','Ardèche'),
	(189,'FR','8','Ardennes'),
	(190,'FR','9','Ariège'),
	(191,'FR','10','Aube'),
	(192,'FR','11','Aude'),
	(193,'FR','12','Aveyron'),
	(194,'FR','13','Bouches-du-Rhône'),
	(195,'FR','14','Calvados'),
	(196,'FR','15','Cantal'),
	(197,'FR','16','Charente'),
	(198,'FR','17','Charente-Maritime'),
	(199,'FR','18','Cher'),
	(200,'FR','19','Corrèze'),
	(201,'FR','2A','Corse-du-Sud'),
	(202,'FR','2B','Haute-Corse'),
	(203,'FR','21','Côte-d\'Or'),
	(204,'FR','22','Côtes-d\'Armor'),
	(205,'FR','23','Creuse'),
	(206,'FR','24','Dordogne'),
	(207,'FR','25','Doubs'),
	(208,'FR','26','Drôme'),
	(209,'FR','27','Eure'),
	(210,'FR','28','Eure-et-Loir'),
	(211,'FR','29','Finistère'),
	(212,'FR','30','Gard'),
	(213,'FR','31','Haute-Garonne'),
	(214,'FR','32','Gers'),
	(215,'FR','33','Gironde'),
	(216,'FR','34','Hérault'),
	(217,'FR','35','Ille-et-Vilaine'),
	(218,'FR','36','Indre'),
	(219,'FR','37','Indre-et-Loire'),
	(220,'FR','38','Isère'),
	(221,'FR','39','Jura'),
	(222,'FR','40','Landes'),
	(223,'FR','41','Loir-et-Cher'),
	(224,'FR','42','Loire'),
	(225,'FR','43','Haute-Loire'),
	(226,'FR','44','Loire-Atlantique'),
	(227,'FR','45','Loiret'),
	(228,'FR','46','Lot'),
	(229,'FR','47','Lot-et-Garonne'),
	(230,'FR','48','Lozère'),
	(231,'FR','49','Maine-et-Loire'),
	(232,'FR','50','Manche'),
	(233,'FR','51','Marne'),
	(234,'FR','52','Haute-Marne'),
	(235,'FR','53','Mayenne'),
	(236,'FR','54','Meurthe-et-Moselle'),
	(237,'FR','55','Meuse'),
	(238,'FR','56','Morbihan'),
	(239,'FR','57','Moselle'),
	(240,'FR','58','Nièvre'),
	(241,'FR','59','Nord'),
	(242,'FR','60','Oise'),
	(243,'FR','61','Orne'),
	(244,'FR','62','Pas-de-Calais'),
	(245,'FR','63','Puy-de-Dôme'),
	(246,'FR','64','Pyrénées-Atlantiques'),
	(247,'FR','65','Hautes-Pyrénées'),
	(248,'FR','66','Pyrénées-Orientales'),
	(249,'FR','67','Bas-Rhin'),
	(250,'FR','68','Haut-Rhin'),
	(251,'FR','69','Rhône'),
	(252,'FR','70','Haute-Saône'),
	(253,'FR','71','Saône-et-Loire'),
	(254,'FR','72','Sarthe'),
	(255,'FR','73','Savoie'),
	(256,'FR','74','Haute-Savoie'),
	(257,'FR','75','Paris'),
	(258,'FR','76','Seine-Maritime'),
	(259,'FR','77','Seine-et-Marne'),
	(260,'FR','78','Yvelines'),
	(261,'FR','79','Deux-Sèvres'),
	(262,'FR','80','Somme'),
	(263,'FR','81','Tarn'),
	(264,'FR','82','Tarn-et-Garonne'),
	(265,'FR','83','Var'),
	(266,'FR','84','Vaucluse'),
	(267,'FR','85','Vendée'),
	(268,'FR','86','Vienne'),
	(269,'FR','87','Haute-Vienne'),
	(270,'FR','88','Vosges'),
	(271,'FR','89','Yonne'),
	(272,'FR','90','Territoire-de-Belfort'),
	(273,'FR','91','Essonne'),
	(274,'FR','92','Hauts-de-Seine'),
	(275,'FR','93','Seine-Saint-Denis'),
	(276,'FR','94','Val-de-Marne'),
	(277,'FR','95','Val-d\'Oise'),
	(278,'RO','AB','Alba'),
	(279,'RO','AR','Arad'),
	(280,'RO','AG','Argeş'),
	(281,'RO','BC','Bacău'),
	(282,'RO','BH','Bihor'),
	(283,'RO','BN','Bistriţa-Năsăud'),
	(284,'RO','BT','Botoşani'),
	(285,'RO','BV','Braşov'),
	(286,'RO','BR','Brăila'),
	(287,'RO','B','Bucureşti'),
	(288,'RO','BZ','Buzău'),
	(289,'RO','CS','Caraş-Severin'),
	(290,'RO','CL','Călăraşi'),
	(291,'RO','CJ','Cluj'),
	(292,'RO','CT','Constanţa'),
	(293,'RO','CV','Covasna'),
	(294,'RO','DB','Dâmboviţa'),
	(295,'RO','DJ','Dolj'),
	(296,'RO','GL','Galaţi'),
	(297,'RO','GR','Giurgiu'),
	(298,'RO','GJ','Gorj'),
	(299,'RO','HR','Harghita'),
	(300,'RO','HD','Hunedoara'),
	(301,'RO','IL','Ialomiţa'),
	(302,'RO','IS','Iaşi'),
	(303,'RO','IF','Ilfov'),
	(304,'RO','MM','Maramureş'),
	(305,'RO','MH','Mehedinţi'),
	(306,'RO','MS','Mureş'),
	(307,'RO','NT','Neamţ'),
	(308,'RO','OT','Olt'),
	(309,'RO','PH','Prahova'),
	(310,'RO','SM','Satu-Mare'),
	(311,'RO','SJ','Sălaj'),
	(312,'RO','SB','Sibiu'),
	(313,'RO','SV','Suceava'),
	(314,'RO','TR','Teleorman'),
	(315,'RO','TM','Timiş'),
	(316,'RO','TL','Tulcea'),
	(317,'RO','VS','Vaslui'),
	(318,'RO','VL','Vâlcea'),
	(319,'RO','VN','Vrancea'),
	(320,'FI','Lappi','Lappi'),
	(321,'FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),
	(322,'FI','Kainuu','Kainuu'),
	(323,'FI','Pohjois-Karjala','Pohjois-Karjala'),
	(324,'FI','Pohjois-Savo','Pohjois-Savo'),
	(325,'FI','Etelä-Savo','Etelä-Savo'),
	(326,'FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),
	(327,'FI','Pohjanmaa','Pohjanmaa'),
	(328,'FI','Pirkanmaa','Pirkanmaa'),
	(329,'FI','Satakunta','Satakunta'),
	(330,'FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),
	(331,'FI','Keski-Suomi','Keski-Suomi'),
	(332,'FI','Varsinais-Suomi','Varsinais-Suomi'),
	(333,'FI','Etelä-Karjala','Etelä-Karjala'),
	(334,'FI','Päijät-Häme','Päijät-Häme'),
	(335,'FI','Kanta-Häme','Kanta-Häme'),
	(336,'FI','Uusimaa','Uusimaa'),
	(337,'FI','Itä-Uusimaa','Itä-Uusimaa'),
	(338,'FI','Kymenlaakso','Kymenlaakso'),
	(339,'FI','Ahvenanmaa','Ahvenanmaa'),
	(340,'EE','EE-37','Harjumaa'),
	(341,'EE','EE-39','Hiiumaa'),
	(342,'EE','EE-44','Ida-Virumaa'),
	(343,'EE','EE-49','Jõgevamaa'),
	(344,'EE','EE-51','Järvamaa'),
	(345,'EE','EE-57','Läänemaa'),
	(346,'EE','EE-59','Lääne-Virumaa'),
	(347,'EE','EE-65','Põlvamaa'),
	(348,'EE','EE-67','Pärnumaa'),
	(349,'EE','EE-70','Raplamaa'),
	(350,'EE','EE-74','Saaremaa'),
	(351,'EE','EE-78','Tartumaa'),
	(352,'EE','EE-82','Valgamaa'),
	(353,'EE','EE-84','Viljandimaa'),
	(354,'EE','EE-86','Võrumaa'),
	(355,'LV','LV-DGV','Daugavpils'),
	(356,'LV','LV-JEL','Jelgava'),
	(357,'LV','Jēkabpils','Jēkabpils'),
	(358,'LV','LV-JUR','Jūrmala'),
	(359,'LV','LV-LPX','Liepāja'),
	(360,'LV','LV-LE','Liepājas novads'),
	(361,'LV','LV-REZ','Rēzekne'),
	(362,'LV','LV-RIX','Rīga'),
	(363,'LV','LV-RI','Rīgas novads'),
	(364,'LV','Valmiera','Valmiera'),
	(365,'LV','LV-VEN','Ventspils'),
	(366,'LV','Aglonas novads','Aglonas novads'),
	(367,'LV','LV-AI','Aizkraukles novads'),
	(368,'LV','Aizputes novads','Aizputes novads'),
	(369,'LV','Aknīstes novads','Aknīstes novads'),
	(370,'LV','Alojas novads','Alojas novads'),
	(371,'LV','Alsungas novads','Alsungas novads'),
	(372,'LV','LV-AL','Alūksnes novads'),
	(373,'LV','Amatas novads','Amatas novads'),
	(374,'LV','Apes novads','Apes novads'),
	(375,'LV','Auces novads','Auces novads'),
	(376,'LV','Babītes novads','Babītes novads'),
	(377,'LV','Baldones novads','Baldones novads'),
	(378,'LV','Baltinavas novads','Baltinavas novads'),
	(379,'LV','LV-BL','Balvu novads'),
	(380,'LV','LV-BU','Bauskas novads'),
	(381,'LV','Beverīnas novads','Beverīnas novads'),
	(382,'LV','Brocēnu novads','Brocēnu novads'),
	(383,'LV','Burtnieku novads','Burtnieku novads'),
	(384,'LV','Carnikavas novads','Carnikavas novads'),
	(385,'LV','Cesvaines novads','Cesvaines novads'),
	(386,'LV','Ciblas novads','Ciblas novads'),
	(387,'LV','LV-CE','Cēsu novads'),
	(388,'LV','Dagdas novads','Dagdas novads'),
	(389,'LV','LV-DA','Daugavpils novads'),
	(390,'LV','LV-DO','Dobeles novads'),
	(391,'LV','Dundagas novads','Dundagas novads'),
	(392,'LV','Durbes novads','Durbes novads'),
	(393,'LV','Engures novads','Engures novads'),
	(394,'LV','Garkalnes novads','Garkalnes novads'),
	(395,'LV','Grobiņas novads','Grobiņas novads'),
	(396,'LV','LV-GU','Gulbenes novads'),
	(397,'LV','Iecavas novads','Iecavas novads'),
	(398,'LV','Ikšķiles novads','Ikšķiles novads'),
	(399,'LV','Ilūkstes novads','Ilūkstes novads'),
	(400,'LV','Inčukalna novads','Inčukalna novads'),
	(401,'LV','Jaunjelgavas novads','Jaunjelgavas novads'),
	(402,'LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),
	(403,'LV','Jaunpils novads','Jaunpils novads'),
	(404,'LV','LV-JL','Jelgavas novads'),
	(405,'LV','LV-JK','Jēkabpils novads'),
	(406,'LV','Kandavas novads','Kandavas novads'),
	(407,'LV','Kokneses novads','Kokneses novads'),
	(408,'LV','Krimuldas novads','Krimuldas novads'),
	(409,'LV','Krustpils novads','Krustpils novads'),
	(410,'LV','LV-KR','Krāslavas novads'),
	(411,'LV','LV-KU','Kuldīgas novads'),
	(412,'LV','Kārsavas novads','Kārsavas novads'),
	(413,'LV','Lielvārdes novads','Lielvārdes novads'),
	(414,'LV','LV-LM','Limbažu novads'),
	(415,'LV','Lubānas novads','Lubānas novads'),
	(416,'LV','LV-LU','Ludzas novads'),
	(417,'LV','Līgatnes novads','Līgatnes novads'),
	(418,'LV','Līvānu novads','Līvānu novads'),
	(419,'LV','LV-MA','Madonas novads'),
	(420,'LV','Mazsalacas novads','Mazsalacas novads'),
	(421,'LV','Mālpils novads','Mālpils novads'),
	(422,'LV','Mārupes novads','Mārupes novads'),
	(423,'LV','Naukšēnu novads','Naukšēnu novads'),
	(424,'LV','Neretas novads','Neretas novads'),
	(425,'LV','Nīcas novads','Nīcas novads'),
	(426,'LV','LV-OG','Ogres novads'),
	(427,'LV','Olaines novads','Olaines novads'),
	(428,'LV','Ozolnieku novads','Ozolnieku novads'),
	(429,'LV','LV-PR','Preiļu novads'),
	(430,'LV','Priekules novads','Priekules novads'),
	(431,'LV','Priekuļu novads','Priekuļu novads'),
	(432,'LV','Pārgaujas novads','Pārgaujas novads'),
	(433,'LV','Pāvilostas novads','Pāvilostas novads'),
	(434,'LV','Pļaviņu novads','Pļaviņu novads'),
	(435,'LV','Raunas novads','Raunas novads'),
	(436,'LV','Riebiņu novads','Riebiņu novads'),
	(437,'LV','Rojas novads','Rojas novads'),
	(438,'LV','Ropažu novads','Ropažu novads'),
	(439,'LV','Rucavas novads','Rucavas novads'),
	(440,'LV','Rugāju novads','Rugāju novads'),
	(441,'LV','Rundāles novads','Rundāles novads'),
	(442,'LV','LV-RE','Rēzeknes novads'),
	(443,'LV','Rūjienas novads','Rūjienas novads'),
	(444,'LV','Salacgrīvas novads','Salacgrīvas novads'),
	(445,'LV','Salas novads','Salas novads'),
	(446,'LV','Salaspils novads','Salaspils novads'),
	(447,'LV','LV-SA','Saldus novads'),
	(448,'LV','Saulkrastu novads','Saulkrastu novads'),
	(449,'LV','Siguldas novads','Siguldas novads'),
	(450,'LV','Skrundas novads','Skrundas novads'),
	(451,'LV','Skrīveru novads','Skrīveru novads'),
	(452,'LV','Smiltenes novads','Smiltenes novads'),
	(453,'LV','Stopiņu novads','Stopiņu novads'),
	(454,'LV','Strenču novads','Strenču novads'),
	(455,'LV','Sējas novads','Sējas novads'),
	(456,'LV','LV-TA','Talsu novads'),
	(457,'LV','LV-TU','Tukuma novads'),
	(458,'LV','Tērvetes novads','Tērvetes novads'),
	(459,'LV','Vaiņodes novads','Vaiņodes novads'),
	(460,'LV','LV-VK','Valkas novads'),
	(461,'LV','LV-VM','Valmieras novads'),
	(462,'LV','Varakļānu novads','Varakļānu novads'),
	(463,'LV','Vecpiebalgas novads','Vecpiebalgas novads'),
	(464,'LV','Vecumnieku novads','Vecumnieku novads'),
	(465,'LV','LV-VE','Ventspils novads'),
	(466,'LV','Viesītes novads','Viesītes novads'),
	(467,'LV','Viļakas novads','Viļakas novads'),
	(468,'LV','Viļānu novads','Viļānu novads'),
	(469,'LV','Vārkavas novads','Vārkavas novads'),
	(470,'LV','Zilupes novads','Zilupes novads'),
	(471,'LV','Ādažu novads','Ādažu novads'),
	(472,'LV','Ērgļu novads','Ērgļu novads'),
	(473,'LV','Ķeguma novads','Ķeguma novads'),
	(474,'LV','Ķekavas novads','Ķekavas novads'),
	(475,'LT','LT-AL','Alytaus Apskritis'),
	(476,'LT','LT-KU','Kauno Apskritis'),
	(477,'LT','LT-KL','Klaipėdos Apskritis'),
	(478,'LT','LT-MR','Marijampolės Apskritis'),
	(479,'LT','LT-PN','Panevėžio Apskritis'),
	(480,'LT','LT-SA','Šiaulių Apskritis'),
	(481,'LT','LT-TA','Tauragės Apskritis'),
	(482,'LT','LT-TE','Telšių Apskritis'),
	(483,'LT','LT-UT','Utenos Apskritis'),
	(484,'LT','LT-VL','Vilniaus Apskritis'),
	(485,'BR','AC','Acre'),
	(486,'BR','AL','Alagoas'),
	(487,'BR','AP','Amapá'),
	(488,'BR','AM','Amazonas'),
	(489,'BR','BA','Bahia'),
	(490,'BR','CE','Ceará'),
	(491,'BR','ES','Espírito Santo'),
	(492,'BR','GO','Goiás'),
	(493,'BR','MA','Maranhão'),
	(494,'BR','MT','Mato Grosso'),
	(495,'BR','MS','Mato Grosso do Sul'),
	(496,'BR','MG','Minas Gerais'),
	(497,'BR','PA','Pará'),
	(498,'BR','PB','Paraíba'),
	(499,'BR','PR','Paraná'),
	(500,'BR','PE','Pernambuco'),
	(501,'BR','PI','Piauí'),
	(502,'BR','RJ','Rio de Janeiro'),
	(503,'BR','RN','Rio Grande do Norte'),
	(504,'BR','RS','Rio Grande do Sul'),
	(505,'BR','RO','Rondônia'),
	(506,'BR','RR','Roraima'),
	(507,'BR','SC','Santa Catarina'),
	(508,'BR','SP','São Paulo'),
	(509,'BR','SE','Sergipe'),
	(510,'BR','TO','Tocantins'),
	(511,'BR','DF','Distrito Federal'),
	(512,'HR','HR-01','Zagrebačka županija'),
	(513,'HR','HR-02','Krapinsko-zagorska županija'),
	(514,'HR','HR-03','Sisačko-moslavačka županija'),
	(515,'HR','HR-04','Karlovačka županija'),
	(516,'HR','HR-05','Varaždinska županija'),
	(517,'HR','HR-06','Koprivničko-križevačka županija'),
	(518,'HR','HR-07','Bjelovarsko-bilogorska županija'),
	(519,'HR','HR-08','Primorsko-goranska županija'),
	(520,'HR','HR-09','Ličko-senjska županija'),
	(521,'HR','HR-10','Virovitičko-podravska županija'),
	(522,'HR','HR-11','Požeško-slavonska županija'),
	(523,'HR','HR-12','Brodsko-posavska županija'),
	(524,'HR','HR-13','Zadarska županija'),
	(525,'HR','HR-14','Osječko-baranjska županija'),
	(526,'HR','HR-15','Šibensko-kninska županija'),
	(527,'HR','HR-16','Vukovarsko-srijemska županija'),
	(528,'HR','HR-17','Splitsko-dalmatinska županija'),
	(529,'HR','HR-18','Istarska županija'),
	(530,'HR','HR-19','Dubrovačko-neretvanska županija'),
	(531,'HR','HR-20','Međimurska županija'),
	(532,'HR','HR-21','Grad Zagreb'),
	(533,'IN','AN','Andaman and Nicobar Islands'),
	(534,'IN','AP','Andhra Pradesh'),
	(535,'IN','AR','Arunachal Pradesh'),
	(536,'IN','AS','Assam'),
	(537,'IN','BR','Bihar'),
	(538,'IN','CH','Chandigarh'),
	(539,'IN','CT','Chhattisgarh'),
	(540,'IN','DN','Dadra and Nagar Haveli'),
	(541,'IN','DD','Daman and Diu'),
	(542,'IN','DL','Delhi'),
	(543,'IN','GA','Goa'),
	(544,'IN','GJ','Gujarat'),
	(545,'IN','HR','Haryana'),
	(546,'IN','HP','Himachal Pradesh'),
	(547,'IN','JK','Jammu and Kashmir'),
	(548,'IN','JH','Jharkhand'),
	(549,'IN','KA','Karnataka'),
	(550,'IN','KL','Kerala'),
	(551,'IN','LD','Lakshadweep'),
	(552,'IN','MP','Madhya Pradesh'),
	(553,'IN','MH','Maharashtra'),
	(554,'IN','MN','Manipur'),
	(555,'IN','ML','Meghalaya'),
	(556,'IN','MZ','Mizoram'),
	(557,'IN','NL','Nagaland'),
	(558,'IN','OR','Odisha'),
	(559,'IN','PY','Puducherry'),
	(560,'IN','PB','Punjab'),
	(561,'IN','RJ','Rajasthan'),
	(562,'IN','SK','Sikkim'),
	(563,'IN','TN','Tamil Nadu'),
	(564,'IN','TG','Telangana'),
	(565,'IN','TR','Tripura'),
	(566,'IN','UP','Uttar Pradesh'),
	(567,'IN','UT','Uttarakhand'),
	(568,'IN','WB','West Bengal'),
	(569,'AU','ACT','Australian Capital Territory'),
	(570,'AU','NSW','New South Wales'),
	(571,'AU','VIC','Victoria'),
	(572,'AU','QLD','Queensland'),
	(573,'AU','SA','South Australia'),
	(574,'AU','TAS','Tasmania'),
	(575,'AU','WA','Western Australia'),
	(576,'AU','NT','Northern Territory'),
	(577,'MX','AGU','Aguascalientes'),
	(578,'MX','BCN','Baja California'),
	(579,'MX','BCS','Baja California Sur'),
	(580,'MX','CAM','Campeche'),
	(581,'MX','CHP','Chiapas'),
	(582,'MX','CHH','Chihuahua'),
	(583,'MX','CMX','Ciudad de México'),
	(584,'MX','COA','Coahuila'),
	(585,'MX','COL','Colima'),
	(586,'MX','DUR','Durango'),
	(587,'MX','MEX','Estado de México'),
	(588,'MX','GUA','Guanajuato'),
	(589,'MX','GRO','Guerrero'),
	(590,'MX','HID','Hidalgo'),
	(591,'MX','JAL','Jalisco'),
	(592,'MX','MIC','Michoacán'),
	(593,'MX','MOR','Morelos'),
	(594,'MX','NAY','Nayarit'),
	(595,'MX','NLE','Nuevo León'),
	(596,'MX','OAX','Oaxaca'),
	(597,'MX','PUE','Puebla'),
	(598,'MX','QUE','Querétaro'),
	(599,'MX','ROO','Quintana Roo'),
	(600,'MX','SLP','San Luis Potosí'),
	(601,'MX','SIN','Sinaloa'),
	(602,'MX','SON','Sonora'),
	(603,'MX','TAB','Tabasco'),
	(604,'MX','TAM','Tamaulipas'),
	(605,'MX','TLA','Tlaxcala'),
	(606,'MX','VER','Veracruz'),
	(607,'MX','YUC','Yucatán'),
	(608,'MX','ZAC','Zacatecas');

/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directory_country_region_name
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_country_region_name`;

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`),
  CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

LOCK TABLES `directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`)
VALUES
	('en_US',1,'Alabama'),
	('en_US',2,'Alaska'),
	('en_US',3,'American Samoa'),
	('en_US',4,'Arizona'),
	('en_US',5,'Arkansas'),
	('en_US',6,'Armed Forces Africa'),
	('en_US',7,'Armed Forces Americas'),
	('en_US',8,'Armed Forces Canada'),
	('en_US',9,'Armed Forces Europe'),
	('en_US',10,'Armed Forces Middle East'),
	('en_US',11,'Armed Forces Pacific'),
	('en_US',12,'California'),
	('en_US',13,'Colorado'),
	('en_US',14,'Connecticut'),
	('en_US',15,'Delaware'),
	('en_US',16,'District of Columbia'),
	('en_US',17,'Federated States Of Micronesia'),
	('en_US',18,'Florida'),
	('en_US',19,'Georgia'),
	('en_US',20,'Guam'),
	('en_US',21,'Hawaii'),
	('en_US',22,'Idaho'),
	('en_US',23,'Illinois'),
	('en_US',24,'Indiana'),
	('en_US',25,'Iowa'),
	('en_US',26,'Kansas'),
	('en_US',27,'Kentucky'),
	('en_US',28,'Louisiana'),
	('en_US',29,'Maine'),
	('en_US',30,'Marshall Islands'),
	('en_US',31,'Maryland'),
	('en_US',32,'Massachusetts'),
	('en_US',33,'Michigan'),
	('en_US',34,'Minnesota'),
	('en_US',35,'Mississippi'),
	('en_US',36,'Missouri'),
	('en_US',37,'Montana'),
	('en_US',38,'Nebraska'),
	('en_US',39,'Nevada'),
	('en_US',40,'New Hampshire'),
	('en_US',41,'New Jersey'),
	('en_US',42,'New Mexico'),
	('en_US',43,'New York'),
	('en_US',44,'North Carolina'),
	('en_US',45,'North Dakota'),
	('en_US',46,'Northern Mariana Islands'),
	('en_US',47,'Ohio'),
	('en_US',48,'Oklahoma'),
	('en_US',49,'Oregon'),
	('en_US',50,'Palau'),
	('en_US',51,'Pennsylvania'),
	('en_US',52,'Puerto Rico'),
	('en_US',53,'Rhode Island'),
	('en_US',54,'South Carolina'),
	('en_US',55,'South Dakota'),
	('en_US',56,'Tennessee'),
	('en_US',57,'Texas'),
	('en_US',58,'Utah'),
	('en_US',59,'Vermont'),
	('en_US',60,'Virgin Islands'),
	('en_US',61,'Virginia'),
	('en_US',62,'Washington'),
	('en_US',63,'West Virginia'),
	('en_US',64,'Wisconsin'),
	('en_US',65,'Wyoming'),
	('en_US',66,'Alberta'),
	('en_US',67,'British Columbia'),
	('en_US',68,'Manitoba'),
	('en_US',69,'Newfoundland and Labrador'),
	('en_US',70,'New Brunswick'),
	('en_US',71,'Nova Scotia'),
	('en_US',72,'Northwest Territories'),
	('en_US',73,'Nunavut'),
	('en_US',74,'Ontario'),
	('en_US',75,'Prince Edward Island'),
	('en_US',76,'Quebec'),
	('en_US',77,'Saskatchewan'),
	('en_US',78,'Yukon Territory'),
	('en_US',79,'Niedersachsen'),
	('en_US',80,'Baden-Württemberg'),
	('en_US',81,'Bayern'),
	('en_US',82,'Berlin'),
	('en_US',83,'Brandenburg'),
	('en_US',84,'Bremen'),
	('en_US',85,'Hamburg'),
	('en_US',86,'Hessen'),
	('en_US',87,'Mecklenburg-Vorpommern'),
	('en_US',88,'Nordrhein-Westfalen'),
	('en_US',89,'Rheinland-Pfalz'),
	('en_US',90,'Saarland'),
	('en_US',91,'Sachsen'),
	('en_US',92,'Sachsen-Anhalt'),
	('en_US',93,'Schleswig-Holstein'),
	('en_US',94,'Thüringen'),
	('en_US',95,'Wien'),
	('en_US',96,'Niederösterreich'),
	('en_US',97,'Oberösterreich'),
	('en_US',98,'Salzburg'),
	('en_US',99,'Kärnten'),
	('en_US',100,'Steiermark'),
	('en_US',101,'Tirol'),
	('en_US',102,'Burgenland'),
	('en_US',103,'Vorarlberg'),
	('en_US',104,'Aargau'),
	('en_US',105,'Appenzell Innerrhoden'),
	('en_US',106,'Appenzell Ausserrhoden'),
	('en_US',107,'Bern'),
	('en_US',108,'Basel-Landschaft'),
	('en_US',109,'Basel-Stadt'),
	('en_US',110,'Freiburg'),
	('en_US',111,'Genf'),
	('en_US',112,'Glarus'),
	('en_US',113,'Graubünden'),
	('en_US',114,'Jura'),
	('en_US',115,'Luzern'),
	('en_US',116,'Neuenburg'),
	('en_US',117,'Nidwalden'),
	('en_US',118,'Obwalden'),
	('en_US',119,'St. Gallen'),
	('en_US',120,'Schaffhausen'),
	('en_US',121,'Solothurn'),
	('en_US',122,'Schwyz'),
	('en_US',123,'Thurgau'),
	('en_US',124,'Tessin'),
	('en_US',125,'Uri'),
	('en_US',126,'Waadt'),
	('en_US',127,'Wallis'),
	('en_US',128,'Zug'),
	('en_US',129,'Zürich'),
	('en_US',130,'A Coruña'),
	('en_US',131,'Alava'),
	('en_US',132,'Albacete'),
	('en_US',133,'Alicante'),
	('en_US',134,'Almeria'),
	('en_US',135,'Asturias'),
	('en_US',136,'Avila'),
	('en_US',137,'Badajoz'),
	('en_US',138,'Baleares'),
	('en_US',139,'Barcelona'),
	('en_US',140,'Burgos'),
	('en_US',141,'Caceres'),
	('en_US',142,'Cadiz'),
	('en_US',143,'Cantabria'),
	('en_US',144,'Castellon'),
	('en_US',145,'Ceuta'),
	('en_US',146,'Ciudad Real'),
	('en_US',147,'Cordoba'),
	('en_US',148,'Cuenca'),
	('en_US',149,'Girona'),
	('en_US',150,'Granada'),
	('en_US',151,'Guadalajara'),
	('en_US',152,'Guipuzcoa'),
	('en_US',153,'Huelva'),
	('en_US',154,'Huesca'),
	('en_US',155,'Jaen'),
	('en_US',156,'La Rioja'),
	('en_US',157,'Las Palmas'),
	('en_US',158,'Leon'),
	('en_US',159,'Lleida'),
	('en_US',160,'Lugo'),
	('en_US',161,'Madrid'),
	('en_US',162,'Malaga'),
	('en_US',163,'Melilla'),
	('en_US',164,'Murcia'),
	('en_US',165,'Navarra'),
	('en_US',166,'Ourense'),
	('en_US',167,'Palencia'),
	('en_US',168,'Pontevedra'),
	('en_US',169,'Salamanca'),
	('en_US',170,'Santa Cruz de Tenerife'),
	('en_US',171,'Segovia'),
	('en_US',172,'Sevilla'),
	('en_US',173,'Soria'),
	('en_US',174,'Tarragona'),
	('en_US',175,'Teruel'),
	('en_US',176,'Toledo'),
	('en_US',177,'Valencia'),
	('en_US',178,'Valladolid'),
	('en_US',179,'Vizcaya'),
	('en_US',180,'Zamora'),
	('en_US',181,'Zaragoza'),
	('en_US',182,'Ain'),
	('en_US',183,'Aisne'),
	('en_US',184,'Allier'),
	('en_US',185,'Alpes-de-Haute-Provence'),
	('en_US',186,'Hautes-Alpes'),
	('en_US',187,'Alpes-Maritimes'),
	('en_US',188,'Ardèche'),
	('en_US',189,'Ardennes'),
	('en_US',190,'Ariège'),
	('en_US',191,'Aube'),
	('en_US',192,'Aude'),
	('en_US',193,'Aveyron'),
	('en_US',194,'Bouches-du-Rhône'),
	('en_US',195,'Calvados'),
	('en_US',196,'Cantal'),
	('en_US',197,'Charente'),
	('en_US',198,'Charente-Maritime'),
	('en_US',199,'Cher'),
	('en_US',200,'Corrèze'),
	('en_US',201,'Corse-du-Sud'),
	('en_US',202,'Haute-Corse'),
	('en_US',203,'Côte-d\'Or'),
	('en_US',204,'Côtes-d\'Armor'),
	('en_US',205,'Creuse'),
	('en_US',206,'Dordogne'),
	('en_US',207,'Doubs'),
	('en_US',208,'Drôme'),
	('en_US',209,'Eure'),
	('en_US',210,'Eure-et-Loir'),
	('en_US',211,'Finistère'),
	('en_US',212,'Gard'),
	('en_US',213,'Haute-Garonne'),
	('en_US',214,'Gers'),
	('en_US',215,'Gironde'),
	('en_US',216,'Hérault'),
	('en_US',217,'Ille-et-Vilaine'),
	('en_US',218,'Indre'),
	('en_US',219,'Indre-et-Loire'),
	('en_US',220,'Isère'),
	('en_US',221,'Jura'),
	('en_US',222,'Landes'),
	('en_US',223,'Loir-et-Cher'),
	('en_US',224,'Loire'),
	('en_US',225,'Haute-Loire'),
	('en_US',226,'Loire-Atlantique'),
	('en_US',227,'Loiret'),
	('en_US',228,'Lot'),
	('en_US',229,'Lot-et-Garonne'),
	('en_US',230,'Lozère'),
	('en_US',231,'Maine-et-Loire'),
	('en_US',232,'Manche'),
	('en_US',233,'Marne'),
	('en_US',234,'Haute-Marne'),
	('en_US',235,'Mayenne'),
	('en_US',236,'Meurthe-et-Moselle'),
	('en_US',237,'Meuse'),
	('en_US',238,'Morbihan'),
	('en_US',239,'Moselle'),
	('en_US',240,'Nièvre'),
	('en_US',241,'Nord'),
	('en_US',242,'Oise'),
	('en_US',243,'Orne'),
	('en_US',244,'Pas-de-Calais'),
	('en_US',245,'Puy-de-Dôme'),
	('en_US',246,'Pyrénées-Atlantiques'),
	('en_US',247,'Hautes-Pyrénées'),
	('en_US',248,'Pyrénées-Orientales'),
	('en_US',249,'Bas-Rhin'),
	('en_US',250,'Haut-Rhin'),
	('en_US',251,'Rhône'),
	('en_US',252,'Haute-Saône'),
	('en_US',253,'Saône-et-Loire'),
	('en_US',254,'Sarthe'),
	('en_US',255,'Savoie'),
	('en_US',256,'Haute-Savoie'),
	('en_US',257,'Paris'),
	('en_US',258,'Seine-Maritime'),
	('en_US',259,'Seine-et-Marne'),
	('en_US',260,'Yvelines'),
	('en_US',261,'Deux-Sèvres'),
	('en_US',262,'Somme'),
	('en_US',263,'Tarn'),
	('en_US',264,'Tarn-et-Garonne'),
	('en_US',265,'Var'),
	('en_US',266,'Vaucluse'),
	('en_US',267,'Vendée'),
	('en_US',268,'Vienne'),
	('en_US',269,'Haute-Vienne'),
	('en_US',270,'Vosges'),
	('en_US',271,'Yonne'),
	('en_US',272,'Territoire-de-Belfort'),
	('en_US',273,'Essonne'),
	('en_US',274,'Hauts-de-Seine'),
	('en_US',275,'Seine-Saint-Denis'),
	('en_US',276,'Val-de-Marne'),
	('en_US',277,'Val-d\'Oise'),
	('en_US',278,'Alba'),
	('en_US',279,'Arad'),
	('en_US',280,'Argeş'),
	('en_US',281,'Bacău'),
	('en_US',282,'Bihor'),
	('en_US',283,'Bistriţa-Năsăud'),
	('en_US',284,'Botoşani'),
	('en_US',285,'Braşov'),
	('en_US',286,'Brăila'),
	('en_US',287,'Bucureşti'),
	('en_US',288,'Buzău'),
	('en_US',289,'Caraş-Severin'),
	('en_US',290,'Călăraşi'),
	('en_US',291,'Cluj'),
	('en_US',292,'Constanţa'),
	('en_US',293,'Covasna'),
	('en_US',294,'Dâmboviţa'),
	('en_US',295,'Dolj'),
	('en_US',296,'Galaţi'),
	('en_US',297,'Giurgiu'),
	('en_US',298,'Gorj'),
	('en_US',299,'Harghita'),
	('en_US',300,'Hunedoara'),
	('en_US',301,'Ialomiţa'),
	('en_US',302,'Iaşi'),
	('en_US',303,'Ilfov'),
	('en_US',304,'Maramureş'),
	('en_US',305,'Mehedinţi'),
	('en_US',306,'Mureş'),
	('en_US',307,'Neamţ'),
	('en_US',308,'Olt'),
	('en_US',309,'Prahova'),
	('en_US',310,'Satu-Mare'),
	('en_US',311,'Sălaj'),
	('en_US',312,'Sibiu'),
	('en_US',313,'Suceava'),
	('en_US',314,'Teleorman'),
	('en_US',315,'Timiş'),
	('en_US',316,'Tulcea'),
	('en_US',317,'Vaslui'),
	('en_US',318,'Vâlcea'),
	('en_US',319,'Vrancea'),
	('en_US',320,'Lappi'),
	('en_US',321,'Pohjois-Pohjanmaa'),
	('en_US',322,'Kainuu'),
	('en_US',323,'Pohjois-Karjala'),
	('en_US',324,'Pohjois-Savo'),
	('en_US',325,'Etelä-Savo'),
	('en_US',326,'Etelä-Pohjanmaa'),
	('en_US',327,'Pohjanmaa'),
	('en_US',328,'Pirkanmaa'),
	('en_US',329,'Satakunta'),
	('en_US',330,'Keski-Pohjanmaa'),
	('en_US',331,'Keski-Suomi'),
	('en_US',332,'Varsinais-Suomi'),
	('en_US',333,'Etelä-Karjala'),
	('en_US',334,'Päijät-Häme'),
	('en_US',335,'Kanta-Häme'),
	('en_US',336,'Uusimaa'),
	('en_US',337,'Itä-Uusimaa'),
	('en_US',338,'Kymenlaakso'),
	('en_US',339,'Ahvenanmaa'),
	('en_US',340,'Harjumaa'),
	('en_US',341,'Hiiumaa'),
	('en_US',342,'Ida-Virumaa'),
	('en_US',343,'Jõgevamaa'),
	('en_US',344,'Järvamaa'),
	('en_US',345,'Läänemaa'),
	('en_US',346,'Lääne-Virumaa'),
	('en_US',347,'Põlvamaa'),
	('en_US',348,'Pärnumaa'),
	('en_US',349,'Raplamaa'),
	('en_US',350,'Saaremaa'),
	('en_US',351,'Tartumaa'),
	('en_US',352,'Valgamaa'),
	('en_US',353,'Viljandimaa'),
	('en_US',354,'Võrumaa'),
	('en_US',355,'Daugavpils'),
	('en_US',356,'Jelgava'),
	('en_US',357,'Jēkabpils'),
	('en_US',358,'Jūrmala'),
	('en_US',359,'Liepāja'),
	('en_US',360,'Liepājas novads'),
	('en_US',361,'Rēzekne'),
	('en_US',362,'Rīga'),
	('en_US',363,'Rīgas novads'),
	('en_US',364,'Valmiera'),
	('en_US',365,'Ventspils'),
	('en_US',366,'Aglonas novads'),
	('en_US',367,'Aizkraukles novads'),
	('en_US',368,'Aizputes novads'),
	('en_US',369,'Aknīstes novads'),
	('en_US',370,'Alojas novads'),
	('en_US',371,'Alsungas novads'),
	('en_US',372,'Alūksnes novads'),
	('en_US',373,'Amatas novads'),
	('en_US',374,'Apes novads'),
	('en_US',375,'Auces novads'),
	('en_US',376,'Babītes novads'),
	('en_US',377,'Baldones novads'),
	('en_US',378,'Baltinavas novads'),
	('en_US',379,'Balvu novads'),
	('en_US',380,'Bauskas novads'),
	('en_US',381,'Beverīnas novads'),
	('en_US',382,'Brocēnu novads'),
	('en_US',383,'Burtnieku novads'),
	('en_US',384,'Carnikavas novads'),
	('en_US',385,'Cesvaines novads'),
	('en_US',386,'Ciblas novads'),
	('en_US',387,'Cēsu novads'),
	('en_US',388,'Dagdas novads'),
	('en_US',389,'Daugavpils novads'),
	('en_US',390,'Dobeles novads'),
	('en_US',391,'Dundagas novads'),
	('en_US',392,'Durbes novads'),
	('en_US',393,'Engures novads'),
	('en_US',394,'Garkalnes novads'),
	('en_US',395,'Grobiņas novads'),
	('en_US',396,'Gulbenes novads'),
	('en_US',397,'Iecavas novads'),
	('en_US',398,'Ikšķiles novads'),
	('en_US',399,'Ilūkstes novads'),
	('en_US',400,'Inčukalna novads'),
	('en_US',401,'Jaunjelgavas novads'),
	('en_US',402,'Jaunpiebalgas novads'),
	('en_US',403,'Jaunpils novads'),
	('en_US',404,'Jelgavas novads'),
	('en_US',405,'Jēkabpils novads'),
	('en_US',406,'Kandavas novads'),
	('en_US',407,'Kokneses novads'),
	('en_US',408,'Krimuldas novads'),
	('en_US',409,'Krustpils novads'),
	('en_US',410,'Krāslavas novads'),
	('en_US',411,'Kuldīgas novads'),
	('en_US',412,'Kārsavas novads'),
	('en_US',413,'Lielvārdes novads'),
	('en_US',414,'Limbažu novads'),
	('en_US',415,'Lubānas novads'),
	('en_US',416,'Ludzas novads'),
	('en_US',417,'Līgatnes novads'),
	('en_US',418,'Līvānu novads'),
	('en_US',419,'Madonas novads'),
	('en_US',420,'Mazsalacas novads'),
	('en_US',421,'Mālpils novads'),
	('en_US',422,'Mārupes novads'),
	('en_US',423,'Naukšēnu novads'),
	('en_US',424,'Neretas novads'),
	('en_US',425,'Nīcas novads'),
	('en_US',426,'Ogres novads'),
	('en_US',427,'Olaines novads'),
	('en_US',428,'Ozolnieku novads'),
	('en_US',429,'Preiļu novads'),
	('en_US',430,'Priekules novads'),
	('en_US',431,'Priekuļu novads'),
	('en_US',432,'Pārgaujas novads'),
	('en_US',433,'Pāvilostas novads'),
	('en_US',434,'Pļaviņu novads'),
	('en_US',435,'Raunas novads'),
	('en_US',436,'Riebiņu novads'),
	('en_US',437,'Rojas novads'),
	('en_US',438,'Ropažu novads'),
	('en_US',439,'Rucavas novads'),
	('en_US',440,'Rugāju novads'),
	('en_US',441,'Rundāles novads'),
	('en_US',442,'Rēzeknes novads'),
	('en_US',443,'Rūjienas novads'),
	('en_US',444,'Salacgrīvas novads'),
	('en_US',445,'Salas novads'),
	('en_US',446,'Salaspils novads'),
	('en_US',447,'Saldus novads'),
	('en_US',448,'Saulkrastu novads'),
	('en_US',449,'Siguldas novads'),
	('en_US',450,'Skrundas novads'),
	('en_US',451,'Skrīveru novads'),
	('en_US',452,'Smiltenes novads'),
	('en_US',453,'Stopiņu novads'),
	('en_US',454,'Strenču novads'),
	('en_US',455,'Sējas novads'),
	('en_US',456,'Talsu novads'),
	('en_US',457,'Tukuma novads'),
	('en_US',458,'Tērvetes novads'),
	('en_US',459,'Vaiņodes novads'),
	('en_US',460,'Valkas novads'),
	('en_US',461,'Valmieras novads'),
	('en_US',462,'Varakļānu novads'),
	('en_US',463,'Vecpiebalgas novads'),
	('en_US',464,'Vecumnieku novads'),
	('en_US',465,'Ventspils novads'),
	('en_US',466,'Viesītes novads'),
	('en_US',467,'Viļakas novads'),
	('en_US',468,'Viļānu novads'),
	('en_US',469,'Vārkavas novads'),
	('en_US',470,'Zilupes novads'),
	('en_US',471,'Ādažu novads'),
	('en_US',472,'Ērgļu novads'),
	('en_US',473,'Ķeguma novads'),
	('en_US',474,'Ķekavas novads'),
	('en_US',475,'Alytaus Apskritis'),
	('en_US',476,'Kauno Apskritis'),
	('en_US',477,'Klaipėdos Apskritis'),
	('en_US',478,'Marijampolės Apskritis'),
	('en_US',479,'Panevėžio Apskritis'),
	('en_US',480,'Šiaulių Apskritis'),
	('en_US',481,'Tauragės Apskritis'),
	('en_US',482,'Telšių Apskritis'),
	('en_US',483,'Utenos Apskritis'),
	('en_US',484,'Vilniaus Apskritis'),
	('en_US',485,'Acre'),
	('en_US',486,'Alagoas'),
	('en_US',487,'Amapá'),
	('en_US',488,'Amazonas'),
	('en_US',489,'Bahia'),
	('en_US',490,'Ceará'),
	('en_US',491,'Espírito Santo'),
	('en_US',492,'Goiás'),
	('en_US',493,'Maranhão'),
	('en_US',494,'Mato Grosso'),
	('en_US',495,'Mato Grosso do Sul'),
	('en_US',496,'Minas Gerais'),
	('en_US',497,'Pará'),
	('en_US',498,'Paraíba'),
	('en_US',499,'Paraná'),
	('en_US',500,'Pernambuco'),
	('en_US',501,'Piauí'),
	('en_US',502,'Rio de Janeiro'),
	('en_US',503,'Rio Grande do Norte'),
	('en_US',504,'Rio Grande do Sul'),
	('en_US',505,'Rondônia'),
	('en_US',506,'Roraima'),
	('en_US',507,'Santa Catarina'),
	('en_US',508,'São Paulo'),
	('en_US',509,'Sergipe'),
	('en_US',510,'Tocantins'),
	('en_US',511,'Distrito Federal'),
	('en_US',512,'Zagrebačka županija'),
	('en_US',513,'Krapinsko-zagorska županija'),
	('en_US',514,'Sisačko-moslavačka županija'),
	('en_US',515,'Karlovačka županija'),
	('en_US',516,'Varaždinska županija'),
	('en_US',517,'Koprivničko-križevačka županija'),
	('en_US',518,'Bjelovarsko-bilogorska županija'),
	('en_US',519,'Primorsko-goranska županija'),
	('en_US',520,'Ličko-senjska županija'),
	('en_US',521,'Virovitičko-podravska županija'),
	('en_US',522,'Požeško-slavonska županija'),
	('en_US',523,'Brodsko-posavska županija'),
	('en_US',524,'Zadarska županija'),
	('en_US',525,'Osječko-baranjska županija'),
	('en_US',526,'Šibensko-kninska županija'),
	('en_US',527,'Vukovarsko-srijemska županija'),
	('en_US',528,'Splitsko-dalmatinska županija'),
	('en_US',529,'Istarska županija'),
	('en_US',530,'Dubrovačko-neretvanska županija'),
	('en_US',531,'Međimurska županija'),
	('en_US',532,'Grad Zagreb'),
	('en_US',533,'Andaman and Nicobar Islands'),
	('en_US',534,'Andhra Pradesh'),
	('en_US',535,'Arunachal Pradesh'),
	('en_US',536,'Assam'),
	('en_US',537,'Bihar'),
	('en_US',538,'Chandigarh'),
	('en_US',539,'Chhattisgarh'),
	('en_US',540,'Dadra and Nagar Haveli'),
	('en_US',541,'Daman and Diu'),
	('en_US',542,'Delhi'),
	('en_US',543,'Goa'),
	('en_US',544,'Gujarat'),
	('en_US',545,'Haryana'),
	('en_US',546,'Himachal Pradesh'),
	('en_US',547,'Jammu and Kashmir'),
	('en_US',548,'Jharkhand'),
	('en_US',549,'Karnataka'),
	('en_US',550,'Kerala'),
	('en_US',551,'Lakshadweep'),
	('en_US',552,'Madhya Pradesh'),
	('en_US',553,'Maharashtra'),
	('en_US',554,'Manipur'),
	('en_US',555,'Meghalaya'),
	('en_US',556,'Mizoram'),
	('en_US',557,'Nagaland'),
	('en_US',558,'Odisha'),
	('en_US',559,'Puducherry'),
	('en_US',560,'Punjab'),
	('en_US',561,'Rajasthan'),
	('en_US',562,'Sikkim'),
	('en_US',563,'Tamil Nadu'),
	('en_US',564,'Telangana'),
	('en_US',565,'Tripura'),
	('en_US',566,'Uttar Pradesh'),
	('en_US',567,'Uttarakhand'),
	('en_US',568,'West Bengal'),
	('en_US',569,'Australian Capital Territory'),
	('en_US',570,'New South Wales'),
	('en_US',571,'Victoria'),
	('en_US',572,'Queensland'),
	('en_US',573,'South Australia'),
	('en_US',574,'Tasmania'),
	('en_US',575,'Western Australia'),
	('en_US',576,'Northern Territory'),
	('en_US',577,'Aguascalientes'),
	('en_US',578,'Baja California'),
	('en_US',579,'Baja California Sur'),
	('en_US',580,'Campeche'),
	('en_US',581,'Chiapas'),
	('en_US',582,'Chihuahua'),
	('en_US',583,'Ciudad de México'),
	('en_US',584,'Coahuila'),
	('en_US',585,'Colima'),
	('en_US',586,'Durango'),
	('en_US',587,'Estado de México'),
	('en_US',588,'Guanajuato'),
	('en_US',589,'Guerrero'),
	('en_US',590,'Hidalgo'),
	('en_US',591,'Jalisco'),
	('en_US',592,'Michoacán'),
	('en_US',593,'Morelos'),
	('en_US',594,'Nayarit'),
	('en_US',595,'Nuevo León'),
	('en_US',596,'Oaxaca'),
	('en_US',597,'Puebla'),
	('en_US',598,'Querétaro'),
	('en_US',599,'Quintana Roo'),
	('en_US',600,'San Luis Potosí'),
	('en_US',601,'Sinaloa'),
	('en_US',602,'Sonora'),
	('en_US',603,'Tabasco'),
	('en_US',604,'Tamaulipas'),
	('en_US',605,'Tlaxcala'),
	('en_US',606,'Veracruz'),
	('en_US',607,'Yucatán'),
	('en_US',608,'Zacatecas');

/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directory_currency_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directory_currency_rate`;

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

LOCK TABLES `directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`)
VALUES
	('EUR','EUR',1.000000000000),
	('EUR','USD',1.415000000000),
	('USD','EUR',0.706700000000),
	('USD','USD',1.000000000000);

/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table downloadable_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_link`;

CREATE TABLE `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`),
  CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';



# Dump of table downloadable_link_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_link_price`;

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';



# Dump of table downloadable_link_purchased
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_link_purchased`;

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';



# Dump of table downloadable_link_purchased_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`),
  CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';



# Dump of table downloadable_link_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_link_title`;

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';



# Dump of table downloadable_sample
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_sample`;

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';



# Dump of table downloadable_sample_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloadable_sample_title`;

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';



# Dump of table eav_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute`;

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) NOT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`)
VALUES
	(1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),
	(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),
	(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),
	(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),
	(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),
	(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),
	(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),
	(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),
	(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),
	(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),
	(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),
	(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),
	(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),
	(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),
	(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),
	(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),
	(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),
	(21,1,'disable_auto_group_change',NULL,'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,NULL,0,NULL),
	(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Name Prefix',NULL,NULL,0,0,NULL,0,NULL),
	(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),
	(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),
	(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),
	(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Name Suffix',NULL,NULL,0,0,NULL,0,NULL),
	(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),
	(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),
	(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),
	(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),
	(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),
	(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),
	(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),
	(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),
	(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),
	(36,2,'vat_id',NULL,NULL,'static',NULL,NULL,'text','VAT Number',NULL,NULL,0,0,NULL,0,NULL),
	(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),
	(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),
	(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),
	(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),
	(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),
	(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),
	(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),
	(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),
	(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),
	(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),
	(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),
	(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),
	(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),
	(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),
	(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),
	(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),
	(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),
	(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),
	(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),
	(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),
	(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),
	(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),
	(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),
	(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),
	(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),
	(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),
	(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),
	(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),
	(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),
	(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),
	(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),
	(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),
	(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),
	(73,4,'name',NULL,NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),
	(74,4,'sku',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU','validate-length maximum-length-64',NULL,1,0,NULL,1,NULL),
	(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),
	(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),
	(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),
	(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),
	(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),
	(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),
	(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),
	(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,NULL,0,NULL),
	(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),
	(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),
	(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),
	(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),
	(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),
	(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),
	(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),
	(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),
	(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),
	(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,NULL,0,NULL),
	(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),
	(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),
	(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),
	(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),
	(98,4,'minimal_price',NULL,NULL,'decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),
	(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),
	(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),
	(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),
	(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),
	(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),
	(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),
	(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),
	(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),
	(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),
	(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),
	(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),
	(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),
	(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),
	(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),
	(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),
	(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),
	(117,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Manufacturer\'s Suggested Retail Price',NULL,NULL,0,0,NULL,0,NULL),
	(118,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),
	(119,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),
	(120,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(121,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),
	(122,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),
	(123,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),
	(124,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),
	(125,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),
	(126,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL),
	(127,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),
	(128,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),
	(129,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),
	(130,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),
	(131,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),
	(132,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),
	(133,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),
	(134,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL),
	(135,4,'ortho_featuredproduct',NULL,NULL,'int',NULL,NULL,'boolean','Featured product',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,1,'0',0,NULL);

/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_attribute_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_group`;

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_CODE` (`attribute_set_id`,`attribute_group_code`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`, `attribute_group_code`, `tab_group_code`)
VALUES
	(1,1,'General',1,1,'general',NULL),
	(2,2,'General',1,1,'general',NULL),
	(3,3,'General',10,1,'general',NULL),
	(4,3,'General Information',2,0,'general-information',NULL),
	(5,3,'Display Settings',20,0,'display-settings',NULL),
	(6,3,'Custom Design',30,0,'custom-design',NULL),
	(7,4,'General',10,1,'product-details','basic'),
	(8,4,'Advanced Pricing',40,0,'advanced-pricing','advanced'),
	(9,4,'Search Engine Optimization',30,0,'search-engine-optimization','basic'),
	(10,4,'Images',20,0,'image-management','basic'),
	(11,4,'Design',50,0,'design','advanced'),
	(12,4,'Autosettings',60,0,'autosettings','advanced'),
	(13,4,'Content',15,0,'content','basic'),
	(14,4,'Schedule Design Update',55,0,'schedule-design-update','advanced'),
	(15,5,'General',1,1,'general',NULL),
	(16,6,'General',1,1,'general',NULL),
	(17,7,'General',1,1,'general',NULL),
	(18,8,'General',1,1,'general',NULL),
	(19,4,'Gift Options',61,0,'gift-options',NULL),
	(20,4,'Bundle Items',16,0,'bundle-items',NULL);

/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_attribute_label
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_label`;

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`),
  CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';



# Dump of table eav_attribute_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_option`;

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`)
VALUES
	(1,20,0),
	(2,20,1),
	(3,20,3);

/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_attribute_option_swatch
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_option_swatch`;

CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint(5) unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';



# Dump of table eav_attribute_option_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_option_value`;

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

LOCK TABLES `eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`)
VALUES
	(1,1,0,'Male'),
	(2,2,0,'Female'),
	(3,3,0,'Not Specified');

/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_attribute_set
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_attribute_set`;

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`),
  CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

LOCK TABLES `eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`)
VALUES
	(1,1,'Default',2),
	(2,2,'Default',2),
	(3,3,'Default',1),
	(4,4,'Default',1),
	(5,5,'Default',1),
	(6,6,'Default',1),
	(7,7,'Default',1),
	(8,8,'Default',1);

/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity`;

CREATE TABLE `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';



# Dump of table eav_entity_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_attribute`;

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`)
VALUES
	(1,1,1,1,1,10),
	(2,1,1,1,2,20),
	(3,1,1,1,3,20),
	(4,1,1,1,4,30),
	(5,1,1,1,5,40),
	(6,1,1,1,6,50),
	(7,1,1,1,7,60),
	(8,1,1,1,8,70),
	(9,1,1,1,9,80),
	(10,1,1,1,10,25),
	(11,1,1,1,11,90),
	(12,1,1,1,12,81),
	(13,1,1,1,13,115),
	(14,1,1,1,14,120),
	(15,1,1,1,15,82),
	(16,1,1,1,16,83),
	(17,1,1,1,17,100),
	(18,1,1,1,18,0),
	(19,1,1,1,19,0),
	(20,1,1,1,20,110),
	(21,1,1,1,21,28),
	(22,2,2,2,22,10),
	(23,2,2,2,23,20),
	(24,2,2,2,24,30),
	(25,2,2,2,25,40),
	(26,2,2,2,26,50),
	(27,2,2,2,27,60),
	(28,2,2,2,28,70),
	(29,2,2,2,29,80),
	(30,2,2,2,30,90),
	(31,2,2,2,31,100),
	(32,2,2,2,32,100),
	(33,2,2,2,33,110),
	(34,2,2,2,34,120),
	(35,2,2,2,35,130),
	(36,2,2,2,36,140),
	(37,2,2,2,37,132),
	(38,2,2,2,38,133),
	(39,2,2,2,39,134),
	(40,2,2,2,40,135),
	(41,1,1,1,41,87),
	(42,1,1,1,42,100),
	(43,1,1,1,43,110),
	(44,1,1,1,44,120),
	(45,3,3,4,45,1),
	(46,3,3,4,46,2),
	(47,3,3,4,47,4),
	(48,3,3,4,48,5),
	(49,3,3,4,49,6),
	(50,3,3,4,50,7),
	(51,3,3,4,51,8),
	(52,3,3,5,52,10),
	(53,3,3,5,53,20),
	(54,3,3,5,54,30),
	(55,3,3,4,55,12),
	(56,3,3,4,56,13),
	(57,3,3,4,57,14),
	(58,3,3,4,58,15),
	(59,3,3,4,59,16),
	(60,3,3,6,60,10),
	(61,3,3,6,61,30),
	(62,3,3,6,62,40),
	(63,3,3,6,63,50),
	(64,3,3,6,64,60),
	(65,3,3,4,65,24),
	(66,3,3,4,66,25),
	(67,3,3,5,67,40),
	(68,3,3,5,68,50),
	(69,3,3,4,69,10),
	(70,3,3,6,70,5),
	(71,3,3,6,71,6),
	(72,3,3,5,72,51),
	(73,4,4,7,73,10),
	(74,4,4,7,74,20),
	(75,4,4,13,75,90),
	(76,4,4,13,76,100),
	(77,4,4,7,77,30),
	(78,4,4,8,78,3),
	(79,4,4,8,79,4),
	(80,4,4,8,80,5),
	(81,4,4,8,81,6),
	(82,4,4,7,82,70),
	(83,4,4,9,84,20),
	(84,4,4,9,85,30),
	(85,4,4,9,86,40),
	(86,4,4,10,87,1),
	(87,4,4,10,88,2),
	(88,4,4,10,89,3),
	(89,4,4,10,90,4),
	(90,4,4,7,91,6),
	(91,4,4,8,92,7),
	(92,4,4,7,94,90),
	(93,4,4,7,95,100),
	(94,4,4,10,96,5),
	(95,4,4,7,97,5),
	(96,4,4,8,98,8),
	(97,4,4,7,99,80),
	(98,4,4,14,100,40),
	(99,4,4,14,101,20),
	(100,4,4,14,102,30),
	(101,4,4,11,103,10),
	(102,4,4,11,104,5),
	(103,4,4,7,105,80),
	(104,4,4,11,106,6),
	(105,4,4,7,107,14),
	(106,4,4,7,108,15),
	(107,4,4,7,109,16),
	(108,4,4,7,110,17),
	(109,4,4,7,111,18),
	(110,4,4,7,112,19),
	(111,4,4,7,113,20),
	(112,4,4,7,114,110),
	(113,4,4,7,115,60),
	(114,4,4,14,116,50),
	(115,4,4,8,117,9),
	(116,4,4,8,118,10),
	(117,3,3,4,119,3),
	(118,3,3,4,120,17),
	(119,4,4,9,121,10),
	(120,4,4,7,122,11),
	(121,4,4,7,123,111),
	(122,4,4,7,124,112),
	(123,4,4,7,125,113),
	(124,4,4,7,126,114),
	(125,4,4,19,127,10),
	(126,4,4,7,128,31),
	(127,4,4,7,129,21),
	(128,4,4,7,130,71),
	(129,4,4,8,131,11),
	(130,4,4,20,132,1),
	(131,4,4,10,133,3),
	(132,4,4,7,134,40),
	(133,4,4,7,135,115);

/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_entity_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_datetime`;

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';



# Dump of table eav_entity_decimal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_decimal`;

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';



# Dump of table eav_entity_int
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_int`;

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';



# Dump of table eav_entity_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_store`;

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';



# Dump of table eav_entity_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_text`;

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';



# Dump of table eav_entity_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_type`;

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity ID Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`)
VALUES
	(1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),
	(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),
	(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),
	(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),
	(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),
	(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order\\Invoice',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),
	(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),
	(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);

/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_entity_varchar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_entity_varchar`;

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';



# Dump of table eav_form_element
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_form_element`;

CREATE TABLE `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

LOCK TABLES `eav_form_element` WRITE;
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`)
VALUES
	(1,1,NULL,23,0),
	(2,1,NULL,25,1),
	(3,1,NULL,27,2),
	(4,1,NULL,9,3),
	(5,1,NULL,28,4),
	(6,1,NULL,29,5),
	(7,1,NULL,31,6),
	(8,1,NULL,33,7),
	(9,1,NULL,30,8),
	(10,1,NULL,34,9),
	(11,1,NULL,35,10),
	(12,2,NULL,23,0),
	(13,2,NULL,25,1),
	(14,2,NULL,27,2),
	(15,2,NULL,9,3),
	(16,2,NULL,28,4),
	(17,2,NULL,29,5),
	(18,2,NULL,31,6),
	(19,2,NULL,33,7),
	(20,2,NULL,30,8),
	(21,2,NULL,34,9),
	(22,2,NULL,35,10),
	(23,3,NULL,23,0),
	(24,3,NULL,25,1),
	(25,3,NULL,27,2),
	(26,3,NULL,28,3),
	(27,3,NULL,29,4),
	(28,3,NULL,31,5),
	(29,3,NULL,33,6),
	(30,3,NULL,30,7),
	(31,3,NULL,34,8),
	(32,3,NULL,35,9),
	(33,4,NULL,23,0),
	(34,4,NULL,25,1),
	(35,4,NULL,27,2),
	(36,4,NULL,28,3),
	(37,4,NULL,29,4),
	(38,4,NULL,31,5),
	(39,4,NULL,33,6),
	(40,4,NULL,30,7),
	(41,4,NULL,34,8),
	(42,4,NULL,35,9);

/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_form_fieldset
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_form_fieldset`;

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';



# Dump of table eav_form_fieldset_label
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_form_fieldset_label`;

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';



# Dump of table eav_form_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_form_type`;

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`),
  CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

LOCK TABLES `eav_form_type` WRITE;
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`)
VALUES
	(1,'checkout_onepage_register','checkout_onepage_register',1,'',0),
	(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),
	(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),
	(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);

/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table eav_form_type_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `eav_form_type_entity`;

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

LOCK TABLES `eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`)
VALUES
	(1,1),
	(2,1),
	(1,2),
	(2,2),
	(3,2),
	(4,2);

/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table email_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';



# Dump of table flag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flag`;

CREATE TABLE `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` mediumtext COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

LOCK TABLES `flag` WRITE;
/*!40000 ALTER TABLE `flag` DISABLE KEYS */;

INSERT INTO `flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`)
VALUES
	(1,'analytics_link_attempts_reverse_counter',0,'24','2019-08-22 21:24:29');

/*!40000 ALTER TABLE `flag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gift_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gift_message`;

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';



# Dump of table googleoptimizer_code
# ------------------------------------------------------------

DROP TABLE IF EXISTS `googleoptimizer_code`;

CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`),
  CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';



# Dump of table import_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `import_history`;

CREATE TABLE `import_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';



# Dump of table importexport_importdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `importexport_importdata`;

CREATE TABLE `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';



# Dump of table indexer_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `indexer_state`;

CREATE TABLE `indexer_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer State';

LOCK TABLES `indexer_state` WRITE;
/*!40000 ALTER TABLE `indexer_state` DISABLE KEYS */;

INSERT INTO `indexer_state` (`state_id`, `indexer_id`, `status`, `updated`, `hash_config`)
VALUES
	(1,'design_config_grid','valid','2019-09-14 03:55:44','b2bc6ddb306d2e4dc9288fb5ad5f0bfd'),
	(2,'customer_grid','valid','2019-09-14 03:55:45','855cf59cdc52e371b6722bbc778871b0'),
	(3,'catalog_category_product','invalid','2019-09-14 03:55:41','1bc13a1b9717b33f8b1a5375953e4cd7'),
	(4,'catalog_product_category','invalid','2019-09-14 03:55:41','e3147f2407bb9dfb94e036fca7f794ee'),
	(5,'catalogrule_rule','invalid','2019-09-14 03:55:41','823efcf73fc96daffe35f6c2d45d4178'),
	(6,'catalog_product_attribute','invalid','2019-09-14 03:55:41','0addb3f75465a0921a61c2f6a5ad3af6'),
	(7,'cataloginventory_stock','invalid','2019-09-14 03:55:41','d5b86646fa8fab011aaaa41a5378e070'),
	(8,'catalog_product_price','invalid','2019-09-14 03:55:41','598b14a992cdf121665d3459c5ac2338'),
	(9,'catalogrule_product','invalid','2019-09-14 03:55:41','145ed7bbb5950315137272f626f99077'),
	(10,'catalogsearch_fulltext','invalid','2019-09-14 03:55:41','b3952d7f304b3a773f40dbc46bd3895c');

/*!40000 ALTER TABLE `indexer_state` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table integration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `integration`;

CREATE TABLE `integration` (
  `integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `INTEGRATION_NAME` (`name`),
  UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`),
  CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';



# Dump of table layout_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `layout_link`;

CREATE TABLE `layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`),
  KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';



# Dump of table layout_update
# ------------------------------------------------------------

DROP TABLE IF EXISTS `layout_update`;

CREATE TABLE `layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';



# Dump of table magefan_blog_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_category`;

CREATE TABLE `magefan_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Category ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Category Title',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Category Meta Title',
  `meta_keywords` text COMMENT 'Category Meta Keywords',
  `meta_description` text COMMENT 'Category Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Category String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Category Content Heading',
  `content` mediumtext COMMENT 'Category Content',
  `path` varchar(255) DEFAULT NULL COMMENT 'Category Path',
  `position` smallint(6) NOT NULL COMMENT 'Category Position',
  `posts_sort_by` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Post Sort By',
  `include_in_menu` smallint(6) DEFAULT NULL COMMENT 'Category In Menu',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Category Active',
  `display_mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Display Mode',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Post Layout',
  `layout_update_xml` text COMMENT 'Post Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Post Custom Theme',
  `custom_layout` varchar(255) DEFAULT NULL COMMENT 'Post Custom Template',
  `custom_layout_update_xml` text COMMENT 'Post Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Post Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Post Custom Theme Active To Date',
  PRIMARY KEY (`category_id`),
  KEY `MAGEFAN_BLOG_CATEGORY_IDENTIFIER` (`identifier`),
  KEY `MAGEFAN_BLOG_CATEGORY_INCLUDE_IN_MENU` (`include_in_menu`),
  FULLTEXT KEY `FTI_B76AD11A0A06CC3327BA3A86A016134F` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Category Table';



# Dump of table magefan_blog_category_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_category_store`;

CREATE TABLE `magefan_blog_category_store` (
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `MAGEFAN_BLOG_CATEGORY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `MAGEFAN_BLOG_CATEGORY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_CTGR_STORE_CTGR_ID_MAGEFAN_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `magefan_blog_category` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Category To Store Linkage Table';



# Dump of table magefan_blog_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_comment`;

CREATE TABLE `magefan_blog_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Comment ID',
  `parent_id` int(11) NOT NULL COMMENT 'Parent Comment ID',
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer ID',
  `admin_id` int(11) DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(6) NOT NULL COMMENT 'Comment status',
  `author_type` smallint(6) NOT NULL COMMENT 'Author Type',
  `author_nickname` varchar(255) NOT NULL COMMENT 'Comment Author Nickname',
  `author_email` varchar(255) DEFAULT NULL COMMENT 'Comment Author Email',
  `text` mediumtext COMMENT 'Text',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Comment Creation Time',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Comment Update Time',
  PRIMARY KEY (`comment_id`),
  KEY `MAGEFAN_BLOG_COMMENT_PARENT_ID` (`parent_id`),
  KEY `MAGEFAN_BLOG_COMMENT_POST_ID` (`post_id`),
  KEY `MAGEFAN_BLOG_COMMENT_CUSTOMER_ID` (`customer_id`),
  KEY `MAGEFAN_BLOG_COMMENT_ADMIN_ID` (`admin_id`),
  KEY `MAGEFAN_BLOG_COMMENT_STATUS` (`status`),
  CONSTRAINT `MAGEFAN_BLOG_COMMENT_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='magefan_blog_comment';



# Dump of table magefan_blog_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post`;

CREATE TABLE `magefan_blog_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Post ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Post Title',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Post Meta Title',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_description` text COMMENT 'Post Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Post String Identifier',
  `og_title` varchar(255) DEFAULT NULL COMMENT 'Post OG Title',
  `og_description` varchar(255) DEFAULT NULL COMMENT 'Post OG Description',
  `og_img` varchar(255) DEFAULT NULL COMMENT 'Post OG Img',
  `og_type` varchar(255) DEFAULT NULL COMMENT 'Post OG Type',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Post Content Heading',
  `content` mediumtext COMMENT 'Post Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Post Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Post Modification Time',
  `publish_time` timestamp NULL DEFAULT NULL COMMENT 'Post Publish Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Post Active',
  `include_in_recent` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Include in Recent Posts',
  `position` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Position',
  `featured_img` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `author_id` int(11) DEFAULT NULL COMMENT 'Author ID',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Post Layout',
  `layout_update_xml` text COMMENT 'Post Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Post Custom Theme',
  `custom_layout` varchar(255) DEFAULT NULL COMMENT 'Post Custom Template',
  `custom_layout_update_xml` text COMMENT 'Post Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Post Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Post Custom Theme Active To Date',
  `media_gallery` mediumtext COMMENT 'Media Gallery',
  `secret` varchar(32) DEFAULT NULL COMMENT 'Post Secret',
  `views_count` int(11) DEFAULT NULL COMMENT 'Post Views Count',
  `is_recent_posts_skip` smallint(6) DEFAULT NULL COMMENT 'Is Post Skipped From Recent Posts',
  `short_content` mediumtext COMMENT 'Post Short Content',
  PRIMARY KEY (`post_id`),
  KEY `MAGEFAN_BLOG_POST_IDENTIFIER` (`identifier`),
  KEY `MAGEFAN_BLOG_POST_AUTHOR_ID` (`author_id`),
  KEY `MAGEFAN_BLOG_POST_VIEWS_COUNT` (`views_count`),
  KEY `MAGEFAN_BLOG_POST_IS_RECENT_POSTS_SKIP` (`is_recent_posts_skip`),
  FULLTEXT KEY `FTI_A5DB7871E89B230F74EDFBECEB4659FA` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post Table';

LOCK TABLES `magefan_blog_post` WRITE;
/*!40000 ALTER TABLE `magefan_blog_post` DISABLE KEYS */;

INSERT INTO `magefan_blog_post` (`post_id`, `title`, `meta_title`, `meta_keywords`, `meta_description`, `identifier`, `og_title`, `og_description`, `og_img`, `og_type`, `content_heading`, `content`, `creation_time`, `update_time`, `publish_time`, `is_active`, `include_in_recent`, `position`, `featured_img`, `author_id`, `page_layout`, `layout_update_xml`, `custom_theme`, `custom_layout`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `media_gallery`, `secret`, `views_count`, `is_recent_posts_skip`, `short_content`)
VALUES
	(1,'Hello world!',NULL,'magento 2 blog','Magento 2 blog default post.','hello-world',NULL,NULL,NULL,NULL,'Hello world!','<p>Welcome to <a title=\"Magento 2 Blog extension\" href=\"https://magefan.com/magento2-blog-extension\" target=\"_blank\">Magento 2 Blog extension</a> by <a title=\"Magento 2 Extensions\" href=\"https://magefan.com/magento2-extensions\" target=\"_blank\">Magefan</a>. This is your first post. Edit or delete it, then start blogging!</p>\n<p><!-- pagebreak --></p>\n<p>Please also read&nbsp;<a title=\"Magento 2 Blog online documentation\" href=\"https://magefan.com/blog/magento-2-blog-extension-documentation/\" target=\"_blank\">Online documentation</a>&nbsp;and&nbsp;<a href=\"https://magefan.com/blog/add-read-more-tag-to-blog-post-content/\" target=\"_blank\">How to add \"read more\" tag to post content</a></p>\n<p>Follow Magefan on:</p>\n<p><a title=\"Blog Extension for Magento 2 code\" href=\"https://github.com/magefan/module-blog\" target=\"_blank\">GitHub</a>&nbsp;|&nbsp;<a href=\"https://twitter.com/magento2fan\" target=\"_blank\">Twitter</a>&nbsp;|&nbsp;<a href=\"https://www.facebook.com/magefan/\" target=\"_blank\">Facebook</a>&nbsp;|&nbsp;<a href=\"https://plus.google.com/+Magefan_Magento_2/posts/\" target=\"_blank\">Google +</a></p>','2019-08-22 21:24:29','2019-08-22 21:24:29','2019-08-22 21:24:29',1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `magefan_blog_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magefan_blog_post_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post_category`;

CREATE TABLE `magefan_blog_post_category` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  PRIMARY KEY (`post_id`,`category_id`),
  KEY `MAGEFAN_BLOG_POST_CATEGORY_CATEGORY_ID` (`category_id`),
  CONSTRAINT `MAGEFAN_BLOG_POST_CATEGORY_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_POST_CTGR_CTGR_ID_MAGEFAN_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `magefan_blog_category` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Category Linkage Table';



# Dump of table magefan_blog_post_relatedpost
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post_relatedpost`;

CREATE TABLE `magefan_blog_post_relatedpost` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(11) NOT NULL COMMENT 'Related Post ID',
  `position` int(11) NOT NULL COMMENT 'Position',
  PRIMARY KEY (`post_id`,`related_id`),
  KEY `MAGEFAN_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`),
  CONSTRAINT `FK_9F26E983FE1D7D7063B61D3F3C8D1104` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD1_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Post Linkage Table';



# Dump of table magefan_blog_post_relatedproduct
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post_relatedproduct`;

CREATE TABLE `magefan_blog_post_relatedproduct` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(10) unsigned NOT NULL COMMENT 'Related Product ID',
  `position` int(11) NOT NULL COMMENT 'Position',
  PRIMARY KEY (`post_id`,`related_id`),
  KEY `MAGEFAN_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`),
  CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD_RELATED_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`related_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Product Linkage Table';



# Dump of table magefan_blog_post_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post_store`;

CREATE TABLE `magefan_blog_post_store` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`post_id`,`store_id`),
  KEY `MAGEFAN_BLOG_POST_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `MAGEFAN_BLOG_POST_STORE_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_POST_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Store Linkage Table';

LOCK TABLES `magefan_blog_post_store` WRITE;
/*!40000 ALTER TABLE `magefan_blog_post_store` DISABLE KEYS */;

INSERT INTO `magefan_blog_post_store` (`post_id`, `store_id`)
VALUES
	(1,0);

/*!40000 ALTER TABLE `magefan_blog_post_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table magefan_blog_post_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_post_tag`;

CREATE TABLE `magefan_blog_post_tag` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID',
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `MAGEFAN_BLOG_POST_TAG_TAG_ID` (`tag_id`),
  CONSTRAINT `MAGEFAN_BLOG_POST_TAG_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `MAGEFAN_BLOG_POST_TAG_TAG_ID_MAGEFAN_BLOG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `magefan_blog_tag` (`tag_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Category Linkage Table';



# Dump of table magefan_blog_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magefan_blog_tag`;

CREATE TABLE `magefan_blog_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tag ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Tag Title',
  `meta_robots` varchar(255) DEFAULT NULL COMMENT 'Tag Degault Robots',
  `meta_description` varchar(255) DEFAULT NULL COMMENT 'Tag Meta Description',
  `meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Tag Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Tag Meta Title',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Tag String Identifier',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Tag Layout',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Tag Active',
  `content` mediumtext COMMENT 'Tag Content',
  `layout_update_xml` text COMMENT 'Tag Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Tag Custom Theme',
  `custom_layout` varchar(255) DEFAULT NULL COMMENT 'Tag Custom Template',
  `custom_layout_update_xml` text COMMENT 'Tag Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Tag Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Tag Custom Theme Active To Date',
  PRIMARY KEY (`tag_id`),
  KEY `MAGEFAN_BLOG_TAG_IDENTIFIER` (`identifier`),
  KEY `MAGEFAN_BLOG_TAG_IS_ACTIVE` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Tag Table';



# Dump of table magento_acknowledged_bulk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magento_acknowledged_bulk`;

CREATE TABLE `magento_acknowledged_bulk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Internal ID',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID` (`bulk_uuid`),
  CONSTRAINT `MAGENTO_ACKNOWLEDGED_BULK_BULK_UUID_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `magento_bulk` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bulk that was viewed by user from notification area';



# Dump of table magento_bulk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magento_bulk`;

CREATE TABLE `magento_bulk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bulk Internal ID (must not be exposed)',
  `uuid` varbinary(39) DEFAULT NULL COMMENT 'Bulk UUID (can be exposed to reference bulk entity)',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'ID of the WebAPI user that performed an action',
  `user_type` int(11) DEFAULT NULL COMMENT 'Which type of user',
  `description` varchar(255) DEFAULT NULL COMMENT 'Bulk Description',
  `operation_count` int(10) unsigned NOT NULL COMMENT 'Total number of operations scheduled within this bulk',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bulk start time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MAGENTO_BULK_UUID` (`uuid`),
  KEY `MAGENTO_BULK_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bulk entity that represents set of related asynchronous operations';



# Dump of table magento_operation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `magento_operation`;

CREATE TABLE `magento_operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Operation ID',
  `bulk_uuid` varbinary(39) DEFAULT NULL COMMENT 'Related Bulk UUID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Name of the related message queue topic',
  `serialized_data` blob COMMENT 'Data (serialized) required to perform an operation',
  `result_serialized_data` blob COMMENT 'Result data (serialized) after perform an operation',
  `status` smallint(6) DEFAULT '0' COMMENT 'Operation status (OPEN | COMPLETE | RETRIABLY_FAILED | NOT_RETRIABLY_FAILED)',
  `error_code` smallint(6) DEFAULT NULL COMMENT 'Code of the error that appeared during operation execution (used to aggregate related failed operations)',
  `result_message` varchar(255) DEFAULT NULL COMMENT 'Operation result message',
  PRIMARY KEY (`id`),
  KEY `MAGENTO_OPERATION_BULK_UUID_ERROR_CODE` (`bulk_uuid`,`error_code`),
  CONSTRAINT `MAGENTO_OPERATION_BULK_UUID_MAGENTO_BULK_UUID` FOREIGN KEY (`bulk_uuid`) REFERENCES `magento_bulk` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Operation entity';



# Dump of table mview_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mview_state`;

CREATE TABLE `mview_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) unsigned DEFAULT NULL COMMENT 'View Version Id',
  PRIMARY KEY (`state_id`),
  KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';



# Dump of table newsletter_problem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_problem`;

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`),
  CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';



# Dump of table newsletter_queue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_queue`;

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`),
  CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';



# Dump of table newsletter_queue_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_queue_link`;

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`),
  CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';



# Dump of table newsletter_queue_store_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_queue_store_link`;

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`),
  CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';



# Dump of table newsletter_subscriber
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_subscriber`;

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  KEY `NEWSLETTER_SUBSCRIBER_SUBSCRIBER_EMAIL` (`subscriber_email`),
  CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';



# Dump of table newsletter_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsletter_template`;

CREATE TABLE `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';



# Dump of table oauth_consumer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_consumer`;

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';



# Dump of table oauth_nonce
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_nonce`;

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`),
  KEY `OAUTH_NONCE_TIMESTAMP` (`timestamp`),
  CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';



# Dump of table oauth_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_token`;

CREATE TABLE `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';



# Dump of table oauth_token_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_token_request_log`;

CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';



# Dump of table password_reset_request_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_request_event`;

CREATE TABLE `password_reset_request_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint(5) unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';



# Dump of table patch_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `patch_list`;

CREATE TABLE `patch_list` (
  `patch_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Patch Auto Increment',
  `patch_name` varchar(1024) NOT NULL COMMENT 'Patch Class Name',
  PRIMARY KEY (`patch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of data/schema patches';

LOCK TABLES `patch_list` WRITE;
/*!40000 ALTER TABLE `patch_list` DISABLE KEYS */;

INSERT INTO `patch_list` (`patch_id`, `patch_name`)
VALUES
	(1,'Magento\\Store\\Setup\\Patch\\Schema\\InitializeStoresAndWebsites'),
	(2,'Magento\\Catalog\\Setup\\Patch\\Schema\\ChangeTmpTablesEngine'),
	(3,'Magento\\Catalog\\Setup\\Patch\\Schema\\EnableSegmentation'),
	(4,'Magento\\CatalogInventory\\Setup\\Patch\\Schema\\ChangeTmpTablesEngine'),
	(5,'Magento\\Downloadable\\Setup\\Patch\\Schema\\ChangeTmpTablesEngine'),
	(6,'Magento\\Bundle\\Setup\\Patch\\Schema\\ChangeTmpTablesEngine'),
	(7,'Magento\\Bundle\\Setup\\Patch\\Schema\\UpdateBundleRelatedSchema'),
	(8,'Magento\\Wishlist\\Setup\\Patch\\Schema\\AddProductIdConstraint'),
	(9,'Magento\\Store\\Setup\\Patch\\Data\\UpdateStoreGroupCodes'),
	(10,'Magento\\Directory\\Setup\\Patch\\Data\\InitializeDirectoryData'),
	(11,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForCroatia'),
	(12,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForIndia'),
	(13,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForAustralia'),
	(14,'Magento\\Directory\\Setup\\Patch\\Data\\AddDataForMexico'),
	(15,'Magento\\Config\\Setup\\Patch\\Data\\UpdateClassAliases'),
	(16,'Magento\\Theme\\Setup\\Patch\\Data\\RegisterThemes'),
	(17,'Magento\\Theme\\Setup\\Patch\\Data\\ConvertSerializedData'),
	(18,'Magento\\Eav\\Setup\\Patch\\Data\\InitializeAttributeModels'),
	(19,'Magento\\Customer\\Setup\\Patch\\Data\\DefaultCustomerGroupsAndAttributes'),
	(20,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributesMetadata'),
	(21,'Magento\\Customer\\Setup\\Patch\\Data\\AddNonSpecifiedGenderAttributeOption'),
	(22,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateIdentifierCustomerAttributesVisibility'),
	(23,'Magento\\Customer\\Setup\\Patch\\Data\\AddCustomerUpdatedAtAttribute'),
	(24,'Magento\\Customer\\Setup\\Patch\\Data\\UpgradePasswordHashAndAddress'),
	(25,'Magento\\Customer\\Setup\\Patch\\Data\\RemoveCheckoutRegisterAndUpdateAttributes'),
	(26,'Magento\\Customer\\Setup\\Patch\\Data\\AddSecurityTrackingAttributes'),
	(27,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateAutocompleteOnStorefrontConfigPath'),
	(28,'Magento\\Customer\\Setup\\Patch\\Data\\MigrateStoresAllowedCountriesToWebsite'),
	(29,'Magento\\Customer\\Setup\\Patch\\Data\\ConvertValidationRulesFromSerializedToJson'),
	(30,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateVATNumber'),
	(31,'Magento\\Customer\\Setup\\Patch\\Data\\UpdateCustomerAttributeInputFilters'),
	(32,'Magento\\Indexer\\Setup\\Patch\\Data\\InitializeIndexerState'),
	(33,'Magento\\Authorization\\Setup\\Patch\\Data\\InitializeAuthRoles'),
	(34,'Magento\\Cms\\Setup\\Patch\\Data\\CreateDefaultPages'),
	(35,'Magento\\Cms\\Setup\\Patch\\Data\\UpdatePrivacyPolicyPage'),
	(36,'Magento\\Cms\\Setup\\Patch\\Data\\ConvertWidgetConditionsToJson'),
	(37,'Magento\\Catalog\\Setup\\Patch\\Data\\InstallDefaultCategories'),
	(38,'Magento\\Catalog\\Setup\\Patch\\Data\\SetNewResourceModelsPaths'),
	(39,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateDefaultAttributeValue'),
	(40,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateMediaAttributesBackendTypes'),
	(41,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductAttributes'),
	(42,'Magento\\Catalog\\Setup\\Patch\\Data\\UpdateProductMetaDescription'),
	(43,'Magento\\Catalog\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),
	(44,'Magento\\Catalog\\Setup\\Patch\\Data\\DisallowUsingHtmlForProductName'),
	(45,'Magento\\Catalog\\Setup\\Patch\\Data\\EnableDirectiveParsing'),
	(46,'Magento\\Catalog\\Setup\\Patch\\Data\\EnableSegmentation'),
	(47,'Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWidgetData'),
	(48,'Magento\\Catalog\\Setup\\Patch\\Data\\UpgradeWebsiteAttributes'),
	(49,'Magento\\Quote\\Setup\\Patch\\Data\\InstallEntityTypes'),
	(50,'Magento\\Quote\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(51,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\CreateDefaultStock'),
	(52,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\UpdateStockItemsWebsite'),
	(53,'Magento\\CatalogInventory\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(54,'Magento\\CatalogRule\\Setup\\Patch\\Data\\UpdateClassAliasesForCatalogRules'),
	(55,'Magento\\CatalogRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(56,'Magento\\Msrp\\Setup\\Patch\\Data\\InitializeMsrpAttributes'),
	(57,'Magento\\Msrp\\Setup\\Patch\\Data\\ChangePriceAttributeDefaultScope'),
	(58,'Magento\\CatalogSearch\\Setup\\Patch\\Data\\MySQLSearchDeprecationNotification'),
	(59,'Magento\\CatalogSearch\\Setup\\Patch\\Data\\SetInitialSearchWeightForAttributes'),
	(60,'Magento\\CatalogUrlRewrite\\Setup\\Patch\\Data\\CreateUrlAttributes'),
	(61,'Magento\\Widget\\Setup\\Patch\\Data\\UpgradeModelInstanceClassAliases'),
	(62,'Magento\\Widget\\Setup\\Patch\\Data\\ConvertSerializedData'),
	(63,'Magento\\Sales\\Setup\\Patch\\Data\\InstallOrderStatusesAndInitialSalesConfig'),
	(64,'Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypes'),
	(65,'Magento\\Sales\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(66,'Magento\\Sales\\Setup\\Patch\\Data\\FillQuoteAddressIdInSalesOrderAddress'),
	(67,'Magento\\Sales\\Setup\\Patch\\Data\\UpdateEntityTypeModelForInvoice'),
	(68,'Magento\\User\\Setup\\Patch\\Data\\UpgradePasswordHashes'),
	(69,'Magento\\User\\Setup\\Patch\\Data\\UpgradeSerializedFields'),
	(70,'Magento\\Checkout\\Setup\\Patch\\Data\\PrepareInitialCheckoutConfiguration'),
	(71,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\InstallInitialConfigurableAttributes'),
	(72,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateManufacturerAttribute'),
	(73,'Magento\\ConfigurableProduct\\Setup\\Patch\\Data\\UpdateTierPriceAttribute'),
	(74,'Magento\\CurrencySymbol\\Setup\\Patch\\Data\\ConvertSerializedCustomCurrencySymbolToJson'),
	(75,'Magento\\Integration\\Setup\\Patch\\Data\\RemoveInactiveTokens'),
	(76,'Magento\\Dhl\\Setup\\Patch\\Data\\PrepareShipmentDays'),
	(77,'Magento\\Downloadable\\Setup\\Patch\\Data\\InstallDownloadableAttributes'),
	(78,'Magento\\Downloadable\\Setup\\Patch\\Data\\UpdateLinksExistDefaultAttributeValue'),
	(79,'Magento\\EncryptionKey\\Setup\\Patch\\Data\\SodiumChachaPatch'),
	(80,'Magento\\Fedex\\Setup\\Patch\\Data\\ConfigureFedexDefaults'),
	(81,'Magento\\GiftMessage\\Setup\\Patch\\Data\\AddGiftMessageAttributes'),
	(82,'Magento\\GiftMessage\\Setup\\Patch\\Data\\MoveGiftMessageToGiftOptionsGroup'),
	(83,'Magento\\GiftMessage\\Setup\\Patch\\Data\\UpdateGiftMessageAttribute'),
	(84,'Magento\\GroupedProduct\\Setup\\Patch\\Data\\InitializeGroupedProductLinks'),
	(85,'Magento\\GroupedProduct\\Setup\\Patch\\Data\\UpdateProductRelations'),
	(86,'Magento\\Bundle\\Setup\\Patch\\Data\\ApplyAttributesUpdate'),
	(87,'Magento\\Bundle\\Setup\\Patch\\Data\\UpdateBundleRelatedEntityTypes'),
	(88,'Magento\\Analytics\\Setup\\Patch\\Data\\PrepareInitialConfig'),
	(89,'Magento\\SalesRule\\Setup\\Patch\\Data\\PrepareRuleModelSerializedData'),
	(90,'Magento\\SalesRule\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(91,'Magento\\SalesRule\\Setup\\Patch\\Data\\FillSalesRuleProductAttributeTable'),
	(92,'Magento\\Vault\\Setup\\Patch\\Data\\SetCreditCardAsDefaultTokenType'),
	(93,'Magento\\Paypal\\Setup\\Patch\\Data\\AddPaypalOrderStatuses'),
	(94,'Magento\\Paypal\\Setup\\Patch\\Data\\UpdatePaypalCreditOption'),
	(95,'Magento\\AuthorizenetAcceptjs\\Setup\\Patch\\Data\\CopyCurrentConfig'),
	(96,'Magento\\Reports\\Setup\\Patch\\Data\\InitializeReportEntityTypesAndPages'),
	(97,'Magento\\Review\\Setup\\Patch\\Data\\InitReviewStatusesAndData'),
	(98,'Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateQuoteShippingAddresses'),
	(99,'Magento\\OfflineShipping\\Setup\\Patch\\Data\\UpdateShippingTablerate'),
	(100,'Magento\\Braintree\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(101,'Magento\\UrlRewrite\\Setup\\Patch\\Data\\ConvertSerializedDataToJson'),
	(102,'Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageAttribute'),
	(103,'Magento\\Swatches\\Setup\\Patch\\Data\\AddSwatchImageToDefaultAttribtueSet'),
	(104,'Magento\\Swatches\\Setup\\Patch\\Data\\UpdateAdminTextSwatchValues'),
	(105,'Magento\\Swatches\\Setup\\Patch\\Data\\ConvertAdditionalDataToJson'),
	(106,'Magento\\Tax\\Setup\\Patch\\Data\\AddTaxAttributeAndTaxClasses'),
	(107,'Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxClassAttributeVisibility'),
	(108,'Magento\\Tax\\Setup\\Patch\\Data\\UpdateTaxRegionId'),
	(109,'Magento\\SampleData\\Setup\\Patch\\Data\\ClearSampleDataState'),
	(110,'Magento\\Usps\\Setup\\Patch\\Data\\UpdateAllowedMethods'),
	(111,'Magento\\Weee\\Setup\\Patch\\Data\\InitQuoteAndOrderAttributes'),
	(112,'Magento\\Wishlist\\Setup\\Patch\\Data\\ConvertSerializedData');

/*!40000 ALTER TABLE `patch_list` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table paypal_billing_agreement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_billing_agreement`;

CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`),
  CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';



# Dump of table paypal_billing_agreement_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_billing_agreement_order`;

CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';



# Dump of table paypal_cert
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_cert`;

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`),
  CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';



# Dump of table paypal_payment_transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_payment_transaction`;

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';



# Dump of table paypal_settlement_report
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_settlement_report`;

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` date DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';



# Dump of table paypal_settlement_report_row
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal_settlement_report_row`;

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`),
  CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';



# Dump of table persistent_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persistent_session`;

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`),
  KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';



# Dump of table product_alert_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_alert_price`;

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `PRODUCT_ALERT_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';



# Dump of table product_alert_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_alert_stock`;

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`),
  KEY `PRODUCT_ALERT_STOCK_STORE_ID` (`store_id`),
  CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_STOCK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';



# Dump of table queue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queue`;

CREATE TABLE `queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Queue name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table storing unique queues';

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;

INSERT INTO `queue` (`id`, `name`)
VALUES
	(4,'codegenerator'),
	(3,'export'),
	(1,'product_action_attribute.update'),
	(2,'product_action_attribute.website.update');

/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table queue_lock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queue_lock`;

CREATE TABLE `queue_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `message_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'Message Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_LOCK_MESSAGE_CODE` (`message_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages that were processed are inserted here to be locked.';



# Dump of table queue_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queue_message`;

CREATE TABLE `queue_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message ID',
  `topic_name` varchar(255) DEFAULT NULL COMMENT 'Message topic',
  `body` longtext COMMENT 'Message body',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Queue messages';



# Dump of table queue_message_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queue_message_status`;

CREATE TABLE `queue_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Relation ID',
  `queue_id` int(10) unsigned NOT NULL COMMENT 'Queue ID',
  `message_id` bigint(20) unsigned NOT NULL COMMENT 'Message ID',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Message status in particular queue',
  `number_of_trials` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of trials to processed failed message processing',
  PRIMARY KEY (`id`),
  UNIQUE KEY `QUEUE_MESSAGE_STATUS_QUEUE_ID_MESSAGE_ID` (`queue_id`,`message_id`),
  KEY `QUEUE_MESSAGE_STATUS_MESSAGE_ID_QUEUE_MESSAGE_ID` (`message_id`),
  KEY `QUEUE_MESSAGE_STATUS_STATUS_UPDATED_AT` (`status`,`updated_at`),
  CONSTRAINT `QUEUE_MESSAGE_STATUS_MESSAGE_ID_QUEUE_MESSAGE_ID` FOREIGN KEY (`message_id`) REFERENCES `queue_message` (`id`) ON DELETE CASCADE,
  CONSTRAINT `QUEUE_MESSAGE_STATUS_QUEUE_ID_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `queue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relation table to keep associations between queues and messages';



# Dump of table queue_poison_pill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queue_poison_pill`;

CREATE TABLE `queue_poison_pill` (
  `version` varchar(255) NOT NULL COMMENT 'Poison Pill version.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sequence table for poison pill versions';

LOCK TABLES `queue_poison_pill` WRITE;
/*!40000 ALTER TABLE `queue_poison_pill` DISABLE KEYS */;

INSERT INTO `queue_poison_pill` (`version`)
VALUES
	('version-5d7c64bf58111');

/*!40000 ALTER TABLE `queue_poison_pill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quote
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote`;

CREATE TABLE `quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `QUOTE_STORE_ID` (`store_id`),
  CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';



# Dump of table quote_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_address`;

CREATE TABLE `quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(120) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `validated_country_code` text COMMENT 'Validated Country Code',
  `validated_vat_number` text COMMENT 'Validated Vat Number',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  PRIMARY KEY (`address_id`),
  KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`),
  CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';



# Dump of table quote_address_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_address_item`;

CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  PRIMARY KEY (`address_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';



# Dump of table quote_id_mask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_id_mask`;

CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `quote_id` int(10) unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`),
  CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';



# Dump of table quote_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_item`;

CREATE TABLE `quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';



# Dump of table quote_item_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_item_option`;

CREATE TABLE `quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`),
  CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';



# Dump of table quote_payment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_payment`;

CREATE TABLE `quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`),
  CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';



# Dump of table quote_shipping_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote_shipping_rate`;

CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`),
  CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';



# Dump of table rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating ID',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  KEY `RATING_ENTITY_ID` (`entity_id`),
  CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`, `is_active`)
VALUES
	(1,1,'Quality',0,1),
	(2,1,'Value',0,1),
	(3,1,'Price',0,1);

/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rating_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_entity`;

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

LOCK TABLES `rating_entity` WRITE;
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;

INSERT INTO `rating_entity` (`entity_id`, `entity_code`)
VALUES
	(1,'product'),
	(2,'product_review'),
	(3,'review');

/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rating_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_option`;

CREATE TABLE `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `RATING_OPTION_RATING_ID` (`rating_id`),
  CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

LOCK TABLES `rating_option` WRITE;
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`)
VALUES
	(1,1,'1',1,1),
	(2,1,'2',2,2),
	(3,1,'3',3,3),
	(4,1,'4',4,4),
	(5,1,'5',5,5),
	(6,2,'1',1,1),
	(7,2,'2',2,2),
	(8,2,'3',3,3),
	(9,2,'4',4,4),
	(10,2,'5',5,5),
	(11,3,'1',1,1),
	(12,3,'2',2,2),
	(13,3,'3',3,3),
	(14,3,'4',4,4),
	(15,3,'5',5,5);

/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rating_option_vote
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_option_vote`;

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`),
  KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';



# Dump of table rating_option_vote_aggregated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';



# Dump of table rating_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_store`;

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';



# Dump of table rating_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_title`;

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';



# Dump of table release_notification_viewer_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `release_notification_viewer_log`;

CREATE TABLE `release_notification_viewer_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `viewer_id` int(10) unsigned NOT NULL COMMENT 'Viewer admin user ID',
  `last_view_version` varchar(16) NOT NULL COMMENT 'Viewer last view on product version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID` (`viewer_id`),
  CONSTRAINT `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`viewer_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Release Notification Viewer Log Table';



# Dump of table report_compared_product_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_compared_product_index`;

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';



# Dump of table report_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_event`;

CREATE TABLE `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `REPORT_EVENT_STORE_ID` (`store_id`),
  CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

LOCK TABLES `report_event` WRITE;
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`)
VALUES
	(1,'2019-08-23 07:02:43',1,1,9,1,1),
	(2,'2019-09-14 07:59:28',1,3,106,1,1),
	(3,'2019-09-14 15:49:48',1,3,129,1,1),
	(4,'2019-09-14 15:50:25',1,2,131,1,1),
	(5,'2019-09-14 15:50:57',1,16,133,1,1),
	(6,'2019-09-14 15:51:15',1,17,134,1,1),
	(7,'2019-09-14 15:51:32',1,19,135,1,1),
	(8,'2019-09-14 15:51:51',1,16,136,1,1),
	(9,'2019-09-14 15:52:06',1,20,137,1,1),
	(10,'2019-09-14 15:52:24',1,12,138,1,1),
	(11,'2019-09-14 15:52:40',1,28,139,1,1),
	(12,'2019-09-14 15:53:17',1,17,141,1,1),
	(13,'2019-09-14 15:53:52',1,12,143,1,1),
	(14,'2019-09-14 15:54:09',1,28,144,1,1),
	(15,'2019-09-15 03:30:15',1,2,160,1,1),
	(16,'2019-09-15 06:47:12',1,20,173,1,1),
	(17,'2019-09-15 06:47:58',1,19,174,1,1),
	(18,'2019-09-15 09:20:46',1,23,199,1,1),
	(19,'2019-09-15 10:19:15',1,29,200,1,1),
	(20,'2019-09-15 11:33:54',1,75,204,1,1),
	(21,'2019-09-15 13:03:45',1,26,209,1,1),
	(22,'2019-09-15 14:10:40',1,73,212,1,1),
	(23,'2019-09-15 15:35:36',1,74,217,1,1),
	(24,'2019-09-15 15:57:45',1,3,219,1,1),
	(25,'2019-09-15 16:46:31',1,79,220,1,1),
	(26,'2019-09-15 20:07:48',1,17,229,1,1),
	(27,'2019-09-15 20:07:54',1,16,230,1,1),
	(28,'2019-09-15 20:07:56',1,19,231,1,1),
	(29,'2019-09-15 20:08:02',1,2,232,1,1),
	(30,'2019-09-15 20:08:14',1,28,233,1,1),
	(31,'2019-09-15 20:08:24',1,17,236,1,1),
	(32,'2019-09-15 20:08:30',1,20,237,1,1),
	(33,'2019-09-15 20:08:35',1,12,238,1,1),
	(34,'2019-09-15 20:08:52',1,12,241,1,1),
	(35,'2019-09-15 20:09:04',1,16,242,1,1),
	(36,'2019-09-15 20:09:11',1,28,243,1,1),
	(37,'2019-09-15 20:09:50',1,75,247,1,1),
	(38,'2019-09-15 20:09:56',1,76,248,1,1),
	(39,'2019-09-15 20:10:05',1,73,249,1,1),
	(40,'2019-09-15 20:10:27',1,79,252,1,1),
	(41,'2019-09-15 20:10:47',1,70,255,1,1),
	(42,'2019-09-15 20:10:55',1,71,256,1,1),
	(43,'2019-09-15 20:10:59',1,72,257,1,1),
	(44,'2019-09-15 20:11:14',1,71,258,1,1),
	(45,'2019-09-15 20:11:26',1,74,260,1,1),
	(46,'2019-09-15 20:11:34',1,76,261,1,1),
	(47,'2019-09-15 20:11:40',1,72,262,1,1),
	(48,'2019-09-15 20:11:46',1,78,263,1,1),
	(49,'2019-09-15 20:11:59',1,78,265,1,1),
	(50,'2019-09-15 20:12:10',1,70,266,1,1),
	(51,'2019-09-15 20:14:51',1,20,293,1,1),
	(52,'2019-09-15 20:14:56',1,24,294,1,1),
	(53,'2019-09-15 20:15:02',1,21,295,1,1),
	(54,'2019-09-15 20:15:07',1,24,296,1,1),
	(55,'2019-09-15 20:15:27',1,28,297,1,1),
	(56,'2019-09-15 20:15:48',1,25,298,1,1),
	(57,'2019-09-15 20:15:51',1,23,299,1,1),
	(58,'2019-09-15 20:16:04',1,26,300,1,1),
	(59,'2019-09-15 20:16:08',1,22,301,1,1),
	(60,'2019-09-15 20:16:15',1,21,302,1,1),
	(61,'2019-09-15 20:16:22',1,29,303,1,1),
	(62,'2019-09-15 20:16:27',1,22,304,1,1),
	(63,'2019-09-15 20:16:37',1,25,305,1,1),
	(64,'2019-09-16 02:24:20',1,2,316,1,1),
	(65,'2019-09-16 04:01:16',1,69,321,1,1);

/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table report_event_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_event_types`;

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

LOCK TABLES `report_event_types` WRITE;
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`)
VALUES
	(1,'catalog_product_view',0),
	(2,'sendfriend_product',0),
	(3,'catalog_product_compare_add_product',0),
	(4,'checkout_cart_add_product',0),
	(5,'wishlist_add_product',0),
	(6,'wishlist_share',0);

/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table report_viewed_product_aggregated_daily
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';



# Dump of table report_viewed_product_aggregated_monthly
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';



# Dump of table report_viewed_product_aggregated_yearly
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';



# Dump of table report_viewed_product_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_viewed_product_index`;

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

LOCK TABLES `report_viewed_product_index` WRITE;
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`)
VALUES
	(1,9,NULL,1,1,'2019-08-23 07:02:43'),
	(2,106,NULL,3,1,'2019-09-14 07:59:28'),
	(3,129,NULL,3,1,'2019-09-14 15:49:48'),
	(4,131,NULL,2,1,'2019-09-14 15:50:25'),
	(5,133,NULL,16,1,'2019-09-14 15:50:57'),
	(6,134,NULL,17,1,'2019-09-14 15:51:15'),
	(7,135,NULL,19,1,'2019-09-14 15:51:32'),
	(8,136,NULL,16,1,'2019-09-14 15:51:51'),
	(9,137,NULL,20,1,'2019-09-14 15:52:06'),
	(10,138,NULL,12,1,'2019-09-14 15:52:24'),
	(11,139,NULL,28,1,'2019-09-14 15:52:40'),
	(12,141,NULL,17,1,'2019-09-14 15:53:17'),
	(13,143,NULL,12,1,'2019-09-14 15:53:52'),
	(14,144,NULL,28,1,'2019-09-14 15:54:09'),
	(15,160,NULL,2,1,'2019-09-15 03:30:15'),
	(16,173,NULL,20,1,'2019-09-15 06:47:12'),
	(17,174,NULL,19,1,'2019-09-15 06:47:58'),
	(18,199,NULL,23,1,'2019-09-15 09:20:46'),
	(19,200,NULL,29,1,'2019-09-15 10:19:15'),
	(20,204,NULL,75,1,'2019-09-15 11:33:54'),
	(21,209,NULL,26,1,'2019-09-15 13:03:45'),
	(22,212,NULL,73,1,'2019-09-15 14:10:40'),
	(23,217,NULL,74,1,'2019-09-15 15:35:36'),
	(24,219,NULL,3,1,'2019-09-15 15:57:45'),
	(25,220,NULL,79,1,'2019-09-15 16:46:31'),
	(26,229,NULL,17,1,'2019-09-15 20:07:48'),
	(27,230,NULL,16,1,'2019-09-15 20:07:54'),
	(28,231,NULL,19,1,'2019-09-15 20:07:56'),
	(29,232,NULL,2,1,'2019-09-15 20:08:02'),
	(30,233,NULL,28,1,'2019-09-15 20:08:14'),
	(31,236,NULL,17,1,'2019-09-15 20:08:24'),
	(32,237,NULL,20,1,'2019-09-15 20:08:30'),
	(33,238,NULL,12,1,'2019-09-15 20:08:35'),
	(34,241,NULL,12,1,'2019-09-15 20:08:52'),
	(35,242,NULL,16,1,'2019-09-15 20:09:04'),
	(36,243,NULL,28,1,'2019-09-15 20:09:11'),
	(37,247,NULL,75,1,'2019-09-15 20:09:50'),
	(38,248,NULL,76,1,'2019-09-15 20:09:56'),
	(39,249,NULL,73,1,'2019-09-15 20:10:05'),
	(40,252,NULL,79,1,'2019-09-15 20:10:27'),
	(41,255,NULL,70,1,'2019-09-15 20:10:47'),
	(42,256,NULL,71,1,'2019-09-15 20:10:55'),
	(43,257,NULL,72,1,'2019-09-15 20:10:59'),
	(44,258,NULL,71,1,'2019-09-15 20:11:14'),
	(45,260,NULL,74,1,'2019-09-15 20:11:26'),
	(46,261,NULL,76,1,'2019-09-15 20:11:34'),
	(47,262,NULL,72,1,'2019-09-15 20:11:40'),
	(48,263,NULL,78,1,'2019-09-15 20:11:46'),
	(49,265,NULL,78,1,'2019-09-15 20:11:59'),
	(50,266,NULL,70,1,'2019-09-15 20:12:10'),
	(51,293,NULL,20,1,'2019-09-15 20:14:51'),
	(52,294,NULL,24,1,'2019-09-15 20:14:56'),
	(53,295,NULL,21,1,'2019-09-15 20:15:02'),
	(54,296,NULL,24,1,'2019-09-15 20:15:07'),
	(55,297,NULL,28,1,'2019-09-15 20:15:27'),
	(56,298,NULL,25,1,'2019-09-15 20:15:48'),
	(57,299,NULL,23,1,'2019-09-15 20:15:51'),
	(58,300,NULL,26,1,'2019-09-15 20:16:04'),
	(59,301,NULL,22,1,'2019-09-15 20:16:08'),
	(60,302,NULL,21,1,'2019-09-15 20:16:15'),
	(61,303,NULL,29,1,'2019-09-15 20:16:22'),
	(62,304,NULL,22,1,'2019-09-15 20:16:27'),
	(63,305,NULL,25,1,'2019-09-15 20:16:37'),
	(64,316,NULL,2,1,'2019-09-16 02:24:20'),
	(65,321,NULL,69,1,'2019-09-16 04:01:16');

/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reporting_counts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reporting_counts`;

CREATE TABLE `reporting_counts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';



# Dump of table reporting_module_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reporting_module_status`;

CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';



# Dump of table reporting_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reporting_orders`;

CREATE TABLE `reporting_orders` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `total` decimal(20,4) unsigned DEFAULT NULL,
  `total_base` decimal(20,4) unsigned DEFAULT NULL,
  `item_count` int(10) unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';



# Dump of table reporting_system_updates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reporting_system_updates`;

CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';



# Dump of table reporting_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reporting_users`;

CREATE TABLE `reporting_users` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';



# Dump of table review
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `REVIEW_ENTITY_ID` (`entity_id`),
  KEY `REVIEW_STATUS_ID` (`status_id`),
  KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`),
  CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';



# Dump of table review_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_detail`;

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';



# Dump of table review_entity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_entity`;

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

LOCK TABLES `review_entity` WRITE;
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;

INSERT INTO `review_entity` (`entity_id`, `entity_code`)
VALUES
	(1,'product'),
	(2,'customer'),
	(3,'category');

/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table review_entity_summary
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_entity_summary`;

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  PRIMARY KEY (`primary_id`),
  KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`),
  CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';



# Dump of table review_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_status`;

CREATE TABLE `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

LOCK TABLES `review_status` WRITE;
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;

INSERT INTO `review_status` (`status_id`, `status_code`)
VALUES
	(1,'Approved'),
	(2,'Pending'),
	(3,'Not Approved');

/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table review_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_store`;

CREATE TABLE `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `REVIEW_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';



# Dump of table sales_bestsellers_aggregated_daily
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';



# Dump of table sales_bestsellers_aggregated_monthly
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';



# Dump of table sales_bestsellers_aggregated_yearly
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';



# Dump of table sales_creditmemo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_creditmemo`;

CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `SALES_CREDITMEMO_STATE` (`state`),
  KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';



# Dump of table sales_creditmemo_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_creditmemo_comment`;

CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';



# Dump of table sales_creditmemo_grid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_creditmemo_grid`;

CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';



# Dump of table sales_creditmemo_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_creditmemo_item`;

CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';



# Dump of table sales_invoice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoice`;

CREATE TABLE `sales_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(20,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_STATE` (`state`),
  KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';



# Dump of table sales_invoice_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoice_comment`;

CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';



# Dump of table sales_invoice_grid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoice_grid`;

CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_GRID_STATE` (`state`),
  KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';



# Dump of table sales_invoice_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoice_item`;

CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';



# Dump of table sales_invoiced_aggregated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;

CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';



# Dump of table sales_invoiced_aggregated_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;

CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';



# Dump of table sales_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order`;

CREATE TABLE `sales_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(20,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` int(11) DEFAULT NULL,
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(20,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(20,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(20,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(45) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(120) DEFAULT NULL,
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_STATUS` (`status`),
  KEY `SALES_ORDER_STATE` (`state`),
  KEY `SALES_ORDER_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';



# Dump of table sales_order_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_address`;

CREATE TABLE `sales_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';



# Dump of table sales_order_aggregated_created
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_aggregated_created`;

CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';



# Dump of table sales_order_aggregated_updated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_aggregated_updated`;

CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';



# Dump of table sales_order_grid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_grid`;

CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(20,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(20,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(20,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(20,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Total Refunded',
  `signifyd_guarantee_status` varchar(32) DEFAULT NULL COMMENT 'Signifyd Guarantee Disposition Status',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_GRID_STATUS` (`status`),
  KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';



# Dump of table sales_order_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_item`;

CREATE TABLE `sales_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(20,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(20,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';



# Dump of table sales_order_payment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_payment`;

CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(20,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(20,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(20,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(128) DEFAULT NULL,
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';



# Dump of table sales_order_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_status`;

CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

LOCK TABLES `sales_order_status` WRITE;
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;

INSERT INTO `sales_order_status` (`status`, `label`)
VALUES
	('canceled','Canceled'),
	('closed','Closed'),
	('complete','Complete'),
	('fraud','Suspected Fraud'),
	('holded','On Hold'),
	('payment_review','Payment Review'),
	('paypal_canceled_reversal','PayPal Canceled Reversal'),
	('paypal_reversed','PayPal Reversed'),
	('pending','Pending'),
	('pending_payment','Pending Payment'),
	('pending_paypal','Pending PayPal'),
	('processing','Processing');

/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales_order_status_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_status_history`;

CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`),
  CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';



# Dump of table sales_order_status_label
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_status_label`;

CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';



# Dump of table sales_order_status_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_status_state`;

CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`),
  CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

LOCK TABLES `sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`, `visible_on_front`)
VALUES
	('canceled','canceled',1,1),
	('closed','closed',1,1),
	('complete','complete',1,1),
	('fraud','payment_review',0,1),
	('fraud','processing',0,1),
	('holded','holded',1,1),
	('payment_review','payment_review',1,1),
	('pending','new',1,1),
	('pending_payment','pending_payment',1,0),
	('processing','processing',1,1);

/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales_order_tax
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_tax`;

CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(20,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';



# Dump of table sales_order_tax_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_order_tax_item`;

CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(20,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(20,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(20,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(20,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';



# Dump of table sales_payment_transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_payment_transaction`;

CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`),
  CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';



# Dump of table sales_refunded_aggregated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_refunded_aggregated`;

CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';



# Dump of table sales_refunded_aggregated_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;

CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(20,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(20,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';



# Dump of table sales_sequence_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_sequence_meta`;

CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(64) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

LOCK TABLES `sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `sales_sequence_meta` DISABLE KEYS */;

INSERT INTO `sales_sequence_meta` (`meta_id`, `entity_type`, `store_id`, `sequence_table`)
VALUES
	(1,'order',0,'sequence_order_0'),
	(2,'invoice',0,'sequence_invoice_0'),
	(3,'creditmemo',0,'sequence_creditmemo_0'),
	(4,'shipment',0,'sequence_shipment_0'),
	(5,'order',1,'sequence_order_1'),
	(6,'invoice',1,'sequence_invoice_1'),
	(7,'creditmemo',1,'sequence_creditmemo_1'),
	(8,'shipment',1,'sequence_shipment_1');

/*!40000 ALTER TABLE `sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales_sequence_profile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_sequence_profile`;

CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `meta_id` int(10) unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`),
  CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

LOCK TABLES `sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `sales_sequence_profile` DISABLE KEYS */;

INSERT INTO `sales_sequence_profile` (`profile_id`, `meta_id`, `prefix`, `suffix`, `start_value`, `step`, `max_value`, `warning_value`, `is_active`)
VALUES
	(1,1,NULL,NULL,1,1,4294967295,4294966295,1),
	(2,2,NULL,NULL,1,1,4294967295,4294966295,1),
	(3,3,NULL,NULL,1,1,4294967295,4294966295,1),
	(4,4,NULL,NULL,1,1,4294967295,4294966295,1),
	(5,5,NULL,NULL,1,1,4294967295,4294966295,1),
	(6,6,NULL,NULL,1,1,4294967295,4294966295,1),
	(7,7,NULL,NULL,1,1,4294967295,4294966295,1),
	(8,8,NULL,NULL,1,1,4294967295,4294966295,1);

/*!40000 ALTER TABLE `sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales_shipment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipment`;

CREATE TABLE `sales_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`),
  CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';



# Dump of table sales_shipment_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipment_comment`;

CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';



# Dump of table sales_shipment_grid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipment_grid`;

CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';



# Dump of table sales_shipment_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipment_item`;

CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(20,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(20,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';



# Dump of table sales_shipment_track
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipment_track`;

CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`),
  CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';



# Dump of table sales_shipping_aggregated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipping_aggregated`;

CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';



# Dump of table sales_shipping_aggregated_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;

CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(20,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';



# Dump of table salesrule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule`;

CREATE TABLE `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  PRIMARY KEY (`rule_id`),
  KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';



# Dump of table salesrule_coupon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_coupon`;

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` datetime DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`),
  CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';



# Dump of table salesrule_coupon_aggregated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_coupon_aggregated`;

CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';



# Dump of table salesrule_coupon_aggregated_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_order`;

CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`),
  CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';



# Dump of table salesrule_coupon_aggregated_updated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_updated`;

CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';



# Dump of table salesrule_coupon_usage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_coupon_usage`;

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';



# Dump of table salesrule_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_customer`;

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`),
  CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';



# Dump of table salesrule_customer_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_customer_group`;

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';



# Dump of table salesrule_label
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_label`;

CREATE TABLE `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `SALESRULE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';



# Dump of table salesrule_product_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_product_attribute`;

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';



# Dump of table salesrule_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesrule_website`;

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';



# Dump of table search_query
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_query`;

CREATE TABLE `search_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`),
  CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';



# Dump of table search_synonyms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_synonyms`;

CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`),
  CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';



# Dump of table sendfriend_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sendfriend_log`;

CREATE TABLE `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `SENDFRIEND_LOG_IP` (`ip`),
  KEY `SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';



# Dump of table sequence_creditmemo_0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_creditmemo_0`;

CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_creditmemo_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_creditmemo_1`;

CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_invoice_0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_invoice_0`;

CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_invoice_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_invoice_1`;

CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_order_0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_order_0`;

CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_order_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_order_1`;

CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_shipment_0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_shipment_0`;

CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sequence_shipment_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequence_shipment_1`;

CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';



# Dump of table setup_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `setup_module`;

CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

LOCK TABLES `setup_module` WRITE;
/*!40000 ALTER TABLE `setup_module` DISABLE KEYS */;

INSERT INTO `setup_module` (`module`, `schema_version`, `data_version`)
VALUES
	('Magefan_Blog','2.8.9','2.8.9'),
	('Magefan_Community','2.0.4','2.0.4'),
	('Magento_AuthorizenetAcceptjs','1.0.0','1.0.0'),
	('Ortho_Bestsellerproduct','2.1.3','2.1.3'),
	('Ortho_Featuredproduct','2.1.3','2.1.3'),
	('Ortho_Newproduct','2.1.3','2.1.3'),
	('Ortho_Specialproduct','2.1.4','2.1.4'),
	('Ortho_Theme','2.1.9','2.1.9');

/*!40000 ALTER TABLE `setup_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shipping_tablerate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shipping_tablerate`;

CREATE TABLE `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(30) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';



# Dump of table signifyd_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `signifyd_case`;

CREATE TABLE `signifyd_case` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity_id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT 'Order_id',
  `case_id` int(10) unsigned DEFAULT NULL COMMENT 'Case_id',
  `guarantee_eligible` tinyint(1) DEFAULT NULL COMMENT 'Guarantee_eligible',
  `guarantee_disposition` varchar(32) DEFAULT 'PENDING' COMMENT 'Guarantee_disposition',
  `status` varchar(32) DEFAULT 'PENDING' COMMENT 'Status',
  `score` int(10) unsigned DEFAULT NULL COMMENT 'Score',
  `associated_team` text COMMENT 'Associated_team',
  `review_disposition` varchar(32) DEFAULT NULL COMMENT 'Review_disposition',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SIGNIFYD_CASE_ORDER_ID` (`order_id`),
  UNIQUE KEY `SIGNIFYD_CASE_CASE_ID` (`case_id`),
  CONSTRAINT `SIGNIFYD_CASE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='signifyd_case';



# Dump of table sitemap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sitemap`;

CREATE TABLE `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `SITEMAP_STORE_ID` (`store_id`),
  CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';



# Dump of table store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `STORE_CODE` (`code`),
  KEY `STORE_WEBSITE_ID` (`website_id`),
  KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `STORE_GROUP_ID` (`group_id`),
  CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores';

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;

INSERT INTO `store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`)
VALUES
	(0,'admin',0,0,'Admin',0,1),
	(1,'default',1,1,'Default Store View',0,1);

/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_group`;

CREATE TABLE `store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Store group unique code',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `STORE_GROUP_CODE` (`code`),
  KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`),
  CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store Groups';

LOCK TABLES `store_group` WRITE;
/*!40000 ALTER TABLE `store_group` DISABLE KEYS */;

INSERT INTO `store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`, `code`)
VALUES
	(0,0,'Default',0,0,'default'),
	(1,1,'Main Website Store',2,1,'main_website_store');

/*!40000 ALTER TABLE `store_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_website`;

CREATE TABLE `store_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Websites';

LOCK TABLES `store_website` WRITE;
/*!40000 ALTER TABLE `store_website` DISABLE KEYS */;

INSERT INTO `store_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`)
VALUES
	(0,'admin','Admin',0,0,0),
	(1,'base','Main Website',0,1,1);

/*!40000 ALTER TABLE `store_website` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tax_calculation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_calculation`;

CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`),
  CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';



# Dump of table tax_calculation_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_calculation_rate`;

CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

LOCK TABLES `tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`)
VALUES
	(1,'US',12,'*','US-CA-*-Rate 1',8.2500,NULL,NULL,NULL),
	(2,'US',43,'*','US-NY-*-Rate 1',8.3750,NULL,NULL,NULL);

/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tax_calculation_rate_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_calculation_rate_title`;

CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';



# Dump of table tax_calculation_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_calculation_rule`;

CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';



# Dump of table tax_class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_class`;

CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Class';

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`)
VALUES
	(2,'Taxable Goods','PRODUCT'),
	(3,'Retail Customer','CUSTOMER');

/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tax_order_aggregated_created
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_order_aggregated_created`;

CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';



# Dump of table tax_order_aggregated_updated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tax_order_aggregated_updated`;

CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';



# Dump of table theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `theme`;

CREATE TABLE `theme` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme';

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;

INSERT INTO `theme` (`theme_id`, `parent_id`, `theme_path`, `theme_title`, `preview_image`, `is_featured`, `area`, `type`, `code`)
VALUES
	(1,NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),
	(2,NULL,'Magento/blank','Magento Blank','preview_image_5d5f08091955c.jpeg',0,'frontend',0,'Magento/blank'),
	(3,2,'Magento/luma','Magento Luma','preview_image_5d5f08092961a.jpeg',0,'frontend',0,'Magento/luma'),
	(4,3,'Ortho/classykid','Template trend Classykid','preview_image_5d5f080937864.jpeg',0,'frontend',0,'Ortho/classykid');

/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table theme_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `theme_file`;

CREATE TABLE `theme_file` (
  `theme_files_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`),
  CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';



# Dump of table translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translation`;

CREATE TABLE `translation` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';



# Dump of table ui_bookmark
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ui_bookmark`;

CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int(10) unsigned NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`),
  CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bookmark';

LOCK TABLES `ui_bookmark` WRITE;
/*!40000 ALTER TABLE `ui_bookmark` DISABLE KEYS */;

INSERT INTO `ui_bookmark` (`bookmark_id`, `user_id`, `namespace`, `identifier`, `current`, `title`, `config`, `created_at`, `updated_at`)
VALUES
	(1,1,'design_config_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}}}','2019-08-22 21:26:10','2019-08-22 21:26:10'),
	(2,1,'design_config_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}},\"value\":\"Default View\"}}}','2019-08-22 21:26:14','2019-08-22 21:26:14'),
	(3,1,'product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"desc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":50,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":50},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"msrp\":31,\"url_key\":32,\"gift_message_available\":33,\"tax_class_id\":34,\"actions\":35}}}','2019-08-22 23:22:31','2019-09-14 05:52:50'),
	(4,1,'product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"msrp\":31,\"url_key\":32,\"gift_message_available\":33,\"tax_class_id\":34,\"actions\":35}},\"value\":\"Default View\"}}}','2019-08-22 23:22:32','2019-08-22 23:22:32'),
	(5,1,'cms_page_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"actions\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','2019-08-22 23:56:25','2019-08-22 23:56:25'),
	(6,1,'cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"actions\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','2019-08-22 23:56:27','2019-08-22 23:56:27'),
	(7,1,'cms_block_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"search\":{\"value\":\"\"},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}}}','2019-08-23 00:06:42','2019-08-23 06:07:53'),
	(8,1,'cms_block_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"search\":{\"value\":\"\"},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}},\"value\":\"Default View\"}}}','2019-08-23 00:06:42','2019-08-23 00:06:42'),
	(9,1,'design_theme_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"theme_id\":{\"visible\":false,\"sorting\":\"asc\"},\"theme_title\":{\"visible\":true,\"sorting\":false},\"parent_theme_title\":{\"visible\":true,\"sorting\":false},\"theme_path\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"theme_id\":0,\"theme_title\":1,\"parent_theme_title\":2,\"theme_path\":3,\"actions\":4}},\"value\":\"Default View\"}}}','2019-08-23 01:35:34','2019-08-23 01:35:34'),
	(10,1,'design_theme_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"theme_id\":{\"visible\":false,\"sorting\":\"asc\"},\"theme_title\":{\"visible\":true,\"sorting\":false},\"parent_theme_title\":{\"visible\":true,\"sorting\":false},\"theme_path\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"theme_id\":0,\"theme_title\":1,\"parent_theme_title\":2,\"theme_path\":3,\"actions\":4}}}','2019-08-23 01:35:35','2019-08-23 01:35:35'),
	(11,1,'product_attributes_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}','2019-08-23 13:28:05','2019-08-23 13:28:05'),
	(12,1,'product_attributes_grid','current',0,NULL,'{\"current\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}','2019-08-23 13:28:07','2019-08-23 13:28:07'),
	(13,2,'cms_block_listing','current',0,NULL,'{\"current\":{\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}}}','2019-09-16 00:08:46','2019-09-16 00:09:40'),
	(14,2,'cms_block_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}},\"value\":\"Default View\"}}}','2019-09-16 00:08:49','2019-09-16 00:08:49'),
	(15,2,'cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','2019-09-16 00:10:03','2019-09-16 00:10:03'),
	(16,2,'cms_page_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','2019-09-16 00:10:04','2019-09-16 00:10:04');

/*!40000 ALTER TABLE `ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table url_rewrite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `url_rewrite`;

CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

LOCK TABLES `url_rewrite` WRITE;
/*!40000 ALTER TABLE `url_rewrite` DISABLE KEYS */;

INSERT INTO `url_rewrite` (`url_rewrite_id`, `entity_type`, `entity_id`, `request_path`, `target_path`, `redirect_type`, `store_id`, `description`, `is_autogenerated`, `metadata`)
VALUES
	(1,'cms-page',1,'no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),
	(2,'cms-page',2,'home','cms/page/view/page_id/2',0,1,NULL,1,NULL),
	(3,'cms-page',3,'enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),
	(4,'cms-page',4,'privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL),
	(5,'category',3,'shoulder.html','catalog/category/view/id/3',0,1,NULL,1,NULL),
	(6,'product',1,'messenger test url key.html','catalog/product/view/id/1',0,1,NULL,1,NULL),
	(7,'product',1,'shoulder/messenger test url key.html','catalog/product/view/id/1/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),
	(8,'product',2,'yellow-butterfly-kids-messenger-shoulder-bag.html','catalog/product/view/id/2',0,1,NULL,1,NULL),
	(9,'product',2,'shoulder/yellow-butterfly-kids-messenger-shoulder-bag.html','catalog/product/view/id/2/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),
	(10,'product',3,'blue-penguin-kids-messenger-shoulder-bag.html','catalog/product/view/id/3',0,1,NULL,1,NULL),
	(11,'product',3,'shoulder/blue-penguin-kids-messenger-shoulder-bag.html','catalog/product/view/id/3/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),
	(12,'product',4,'pink-butterfly-kids-messenger-shoulder-bag.html','catalog/product/view/id/4',0,1,NULL,1,NULL),
	(13,'product',4,'shoulder/pink-butterfly-kids-messenger-shoulder-bag.html','catalog/product/view/id/4/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),
	(14,'product',5,'green-magical-mermaid-style-kids-shoulder-bag.html','catalog/product/view/id/5',0,1,NULL,1,NULL),
	(15,'product',5,'shoulder/green-magical-mermaid-style-kids-shoulder-bag.html','catalog/product/view/id/5/category/3',0,1,NULL,1,'{\"category_id\":\"3\"}'),
	(20,'cms-page',5,'welcome','cms/page/view/page_id/5',0,1,NULL,1,NULL),
	(21,'cms-page',6,'delivery','cms/page/view/page_id/6',0,1,NULL,1,NULL),
	(22,'cms-page',7,'warranty','cms/page/view/page_id/7',0,1,NULL,1,NULL);

/*!40000 ALTER TABLE `url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table variable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `variable`;

CREATE TABLE `variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';



# Dump of table variable_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `variable_value`;

CREATE TABLE `variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `VARIABLE_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';



# Dump of table vault_payment_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vault_payment_token`;

CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_PAYMENT_METHOD_CODE_CSTR_ID_GATEWAY_TOKEN` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';



# Dump of table vault_payment_token_order_payment_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vault_payment_token_order_payment_link`;

CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) unsigned NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) unsigned NOT NULL COMMENT 'Payment token Id',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`),
  CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';



# Dump of table weee_tax
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weee_tax`;

CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`value_id`),
  KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `WEEE_TAX_COUNTRY` (`country`),
  KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';



# Dump of table widget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widget`;

CREATE TABLE `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';



# Dump of table widget_instance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widget_instance`;

CREATE TABLE `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`),
  CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';



# Dump of table widget_instance_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widget_instance_page`;

CREATE TABLE `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`),
  CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';



# Dump of table widget_instance_page_layout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widget_instance_page_layout`;

CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';



# Dump of table wishlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wishlist`;

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `WISHLIST_SHARED` (`shared`),
  CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';



# Dump of table wishlist_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wishlist_item`;

CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `WISHLIST_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';



# Dump of table wishlist_item_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wishlist_item_option`;

CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_OPTION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` (`product_id`),
  CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

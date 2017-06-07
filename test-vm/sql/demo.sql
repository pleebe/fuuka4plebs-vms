LOCK TABLES `ff_boards` WRITE;
REPLACE INTO `ff_boards` VALUES (1,'a','Anime & Manga',1,1,0,0,NULL,0,0),(2,'c','Anime/Cute',1,1,0,0,NULL,0,0),(3,'jp','Otaku Culture',1,1,0,0,NULL,0,0),(4,'test','Internal Board',0,1,0,0,NULL,0,0);
UNLOCK TABLES;
LOCK TABLES `ff_boards_preferences` WRITE;
REPLACE INTO `ff_boards_preferences` VALUES (1,1,'anonymous_default_name','Anonymous'),(2,1,'archive_full_images','1'),(3,1,'board_url','//boards.4chan.org/a/'),(4,1,'captcha_comment_link_limit','3'),(5,1,'cooldown_new_comment','10'),(6,1,'cooldown_new_thread','300'),(7,1,'disable_ghost','0'),(8,1,'display_exif','0'),(9,1,'enable_animated_gif_thumbs','0'),(10,1,'enable_flags','0'),(11,1,'enable_poster_hash','0'),(12,1,'is_nsfw','0'),(13,1,'max_comment_characters_allowed','4096'),(14,1,'max_comment_lines_allowed','20'),(15,1,'max_image_size_height','5000'),(16,1,'max_image_size_kilobytes','3072'),(17,1,'max_image_size_width','5000'),(18,1,'max_images_count','250'),(19,1,'max_posts_count','400'),(20,1,'min_image_repost_time','0'),(21,1,'op_image_upload_necessity','always'),(22,1,'plugin_quests','0'),(23,1,'plugin_transparency','0'),(24,1,'thread_lifetime','432000'),(25,1,'threads_per_page','10'),(26,1,'thumbnail_op_height','250'),(27,1,'thumbnail_op_width','250'),(28,1,'thumbnail_reply_height','125'),(29,1,'thumbnail_reply_width','125'),(30,1,'transparent_spoiler','0'),(31,2,'anonymous_default_name','Anonymous'),(32,2,'archive_full_images','1'),(33,2,'board_url','//boards.4chan.org/c/'),(34,2,'captcha_comment_link_limit','3'),(35,2,'cooldown_new_comment','10'),(36,2,'cooldown_new_thread','300'),(37,2,'disable_ghost','0'),(38,2,'display_exif','0'),(39,2,'enable_animated_gif_thumbs','0'),(40,2,'enable_flags','0'),(41,2,'enable_poster_hash','0'),(42,2,'is_nsfw','0'),(43,2,'max_comment_characters_allowed','4096'),(44,2,'max_comment_lines_allowed','20'),(45,2,'max_image_size_height','5000'),(46,2,'max_image_size_kilobytes','3072'),(47,2,'max_image_size_width','5000'),(48,2,'max_images_count','250'),(49,2,'max_posts_count','400'),(50,2,'min_image_repost_time','0'),(51,2,'op_image_upload_necessity','always'),(52,2,'plugin_quests','0'),(53,2,'plugin_transparency','0'),(54,2,'thread_lifetime','432000'),(55,2,'threads_per_page','10'),(56,2,'thumbnail_op_height','250'),(57,2,'thumbnail_op_width','250'),(58,2,'thumbnail_reply_height','125'),(59,2,'thumbnail_reply_width','125'),(60,2,'transparent_spoiler','0'),(61,3,'anonymous_default_name','Anonymous'),(62,3,'archive_full_images','1'),(63,3,'board_url','//boards.4chan.org/jp/'),(64,3,'captcha_comment_link_limit','3'),(65,3,'cooldown_new_comment','10'),(66,3,'cooldown_new_thread','300'),(67,3,'disable_ghost','0'),(68,3,'display_exif','0'),(69,3,'enable_animated_gif_thumbs','0'),(70,3,'enable_flags','0'),(71,3,'enable_poster_hash','0'),(72,3,'is_nsfw','0'),(73,3,'max_comment_characters_allowed','4096'),(74,3,'max_comment_lines_allowed','20'),(75,3,'max_image_size_height','5000'),(76,3,'max_image_size_kilobytes','3072'),(77,3,'max_image_size_width','5000'),(78,3,'max_images_count','250'),(79,3,'max_posts_count','400'),(80,3,'min_image_repost_time','0'),(81,3,'op_image_upload_necessity','always'),(82,3,'plugin_quests','0'),(83,3,'plugin_transparency','0'),(84,3,'thread_lifetime','432000'),(85,3,'threads_per_page','10'),(86,3,'thumbnail_op_height','250'),(87,3,'thumbnail_op_width','250'),(88,3,'thumbnail_reply_height','125'),(89,3,'thumbnail_reply_width','125'),(90,3,'transparent_spoiler','0'),(91,4,'anonymous_default_name','Anonymous'),(92,4,'archive_full_images','0'),(93,4,'captcha_comment_link_limit','3'),(94,4,'cooldown_new_comment','10'),(95,4,'cooldown_new_thread','300'),(96,4,'disable_ghost','0'),(97,4,'display_exif','0'),(98,4,'enable_animated_gif_thumbs','0'),(99,4,'enable_flags','0'),(100,4,'enable_poster_hash','0'),(101,4,'is_nsfw','0'),(102,4,'max_comment_characters_allowed','4096'),(103,4,'max_comment_lines_allowed','20'),(104,4,'max_image_size_height','5000'),(105,4,'max_image_size_kilobytes','3072'),(106,4,'max_image_size_width','5000'),(107,4,'max_images_count','250'),(108,4,'max_posts_count','400'),(109,4,'min_image_repost_time','0'),(110,4,'op_image_upload_necessity','always'),(111,4,'plugin_quests','0'),(112,4,'plugin_transparency','0'),(113,4,'thread_lifetime','432000'),(114,4,'threads_per_page','10'),(115,4,'thumbnail_op_height','250'),(116,4,'thumbnail_op_width','250'),(117,4,'thumbnail_reply_height','125'),(118,4,'thumbnail_reply_width','125'),(119,4,'transparent_spoiler','0');
UNLOCK TABLES;
LOCK TABLES `ff_plugin_ff_articles` WRITE;
REPLACE INTO `ff_plugin_ff_articles` VALUES (1,'test','Test Environment','','#Test\r\n\r\nThis is the virtual testing environment for Fuuka4plebs.\r\n\r\nTo configure this site see the [admin page](http://127.0.0.1:8080/admin/).\r\n\r\nDefault username: ```root```, password:  ```toor```\r\n\r\nHave fun!',0,1,1,1496857856);
UNLOCK TABLES;
LOCK TABLES `ff_preferences` WRITE;
REPLACE INTO `ff_preferences` VALUES ('foolfuuka.sphinx.dir','/var/lib/sphinxsearch'),('foolfuuka.sphinx.global','1'),('foolfuuka.sphinx.listen','127.0.0.1:9306'),('foolfuuka.sphinx.listen_mysql','127.0.0.1:3306'),('foolfuuka.sphinx.max_matches','5000'),('foolfuuka.sphinx.mem_limit','2047'),('foolfuuka.sphinx.min_word_len','3'),('foolfuuka.sphinx.throttling_enabled','0');
UNLOCK TABLES;
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poster_ip` decimal(39,0) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `thread_num` int(10) unsigned NOT NULL DEFAULT '0',
  `op` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `timestamp_expired` int(10) unsigned NOT NULL,
  `preview_orig` varchar(20) DEFAULT NULL,
  `preview_w` smallint(5) unsigned NOT NULL DEFAULT '0',
  `preview_h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_filename` text,
  `media_w` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_size` int(10) unsigned NOT NULL DEFAULT '0',
  `media_hash` varchar(25) DEFAULT NULL,
  `media_orig` varchar(20) DEFAULT NULL,
  `spoiler` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `capcode` varchar(1) NOT NULL DEFAULT 'N',
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `trip` varchar(25) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `comment` text,
  `delpass` tinytext,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `poster_hash` varchar(8) DEFAULT NULL,
  `poster_country` varchar(2) DEFAULT NULL,
  `exif` text,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `num_subnum_index` (`num`,`subnum`),
  KEY `thread_num_subnum_index` (`thread_num`,`num`,`subnum`),
  KEY `subnum_index` (`subnum`),
  KEY `op_index` (`op`),
  KEY `media_id_index` (`media_id`),
  KEY `media_hash_index` (`media_hash`),
  KEY `media_orig_index` (`media_orig`),
  KEY `name_trip_index` (`name`,`trip`),
  KEY `trip_index` (`trip`),
  KEY `email_index` (`email`),
  KEY `poster_ip_index` (`poster_ip`),
  KEY `timestamp_index` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `test_daily`;
CREATE TABLE `test_daily` (
  `day` int(10) unsigned NOT NULL,
  `posts` int(10) unsigned NOT NULL,
  `images` int(10) unsigned NOT NULL,
  `sage` int(10) unsigned NOT NULL,
  `anons` int(10) unsigned NOT NULL,
  `trips` int(10) unsigned NOT NULL,
  `names` int(10) unsigned NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `test_deleted`;
CREATE TABLE `test_deleted` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poster_ip` decimal(39,0) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `thread_num` int(10) unsigned NOT NULL DEFAULT '0',
  `op` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `timestamp_expired` int(10) unsigned NOT NULL,
  `preview_orig` varchar(20) DEFAULT NULL,
  `preview_w` smallint(5) unsigned NOT NULL DEFAULT '0',
  `preview_h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_filename` text,
  `media_w` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_size` int(10) unsigned NOT NULL DEFAULT '0',
  `media_hash` varchar(25) DEFAULT NULL,
  `media_orig` varchar(20) DEFAULT NULL,
  `spoiler` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `capcode` varchar(1) NOT NULL DEFAULT 'N',
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `trip` varchar(25) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `comment` text,
  `delpass` tinytext,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `poster_hash` varchar(8) DEFAULT NULL,
  `poster_country` varchar(2) DEFAULT NULL,
  `exif` text,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `num_subnum_index` (`num`,`subnum`),
  KEY `thread_num_subnum_index` (`thread_num`,`num`,`subnum`),
  KEY `subnum_index` (`subnum`),
  KEY `op_index` (`op`),
  KEY `media_id_index` (`media_id`),
  KEY `media_hash_index` (`media_hash`),
  KEY `media_orig_index` (`media_orig`),
  KEY `name_trip_index` (`name`,`trip`),
  KEY `trip_index` (`trip`),
  KEY `email_index` (`email`),
  KEY `poster_ip_index` (`poster_ip`),
  KEY `timestamp_index` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `test_images`;
CREATE TABLE `test_images` (
  `media_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_hash` varchar(25) NOT NULL,
  `media` varchar(20) DEFAULT NULL,
  `preview_op` varchar(20) DEFAULT NULL,
  `preview_reply` varchar(20) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `media_hash_index` (`media_hash`),
  KEY `total_index` (`total`),
  KEY `banned_index` (`banned`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `test_threads`;
CREATE TABLE `test_threads` (
  `thread_num` int(10) unsigned NOT NULL,
  `time_op` int(10) unsigned NOT NULL,
  `time_last` int(10) unsigned NOT NULL,
  `time_bump` int(10) unsigned NOT NULL,
  `time_ghost` int(10) unsigned DEFAULT NULL,
  `time_ghost_bump` int(10) unsigned DEFAULT NULL,
  `time_last_modified` int(10) unsigned NOT NULL,
  `nreplies` int(10) unsigned NOT NULL DEFAULT '0',
  `nimages` int(10) unsigned NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thread_num`),
  KEY `time_op_index` (`time_op`),
  KEY `time_bump_index` (`time_bump`),
  KEY `time_ghost_bump_index` (`time_ghost_bump`),
  KEY `time_last_modified_index` (`time_last_modified`),
  KEY `sticky_index` (`sticky`),
  KEY `locked_index` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `test_users`;
CREATE TABLE `test_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `trip` varchar(25) NOT NULL DEFAULT '',
  `firstseen` int(11) NOT NULL,
  `postcount` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name_trip_index` (`name`,`trip`),
  KEY `firstseen_index` (`firstseen`),
  KEY `postcount_index` (`postcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `index_counters`;
CREATE TABLE `index_counters` (
  `id` varchar(50) NOT NULL,
  `val` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

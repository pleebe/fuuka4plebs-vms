CREATE TABLE `ff_audit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_banned_md5` (
  `md5` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ff_banned_posters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` decimal(39,0) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` int(10) unsigned NOT NULL DEFAULT '0',
  `length` int(10) unsigned NOT NULL DEFAULT '0',
  `board_id` int(10) unsigned NOT NULL DEFAULT '0',
  `creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `appeal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appeal_status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip_index` (`ip`),
  KEY `creator_id_index` (`creator_id`),
  KEY `appeal_status_index` (`appeal_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_boards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sphinx` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hide_thumbnails` smallint(5) unsigned NOT NULL DEFAULT '0',
  `directory` text COLLATE utf8mb4_unicode_ci,
  `max_indexed_id` int(10) unsigned NOT NULL DEFAULT '0',
  `max_ancient_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortname_index` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_boards_preferences` (
  `board_preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`board_preference_id`),
  KEY `board_id_name_index` (`board_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `revision` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ff_preferences` (
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(10) unsigned NOT NULL,
  `doc_id` int(10) unsigned DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_reporter` decimal(39,0) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `board_id_doc_id_index` (`board_id`,`doc_id`),
  KEY `board_id_media_id_index` (`board_id`,`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_user_autologin` (
  `login_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `login_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  `last_ip` decimal(39,0) NOT NULL,
  `user_agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` int(10) unsigned NOT NULL,
  PRIMARY KEY (`login_hash`),
  UNIQUE KEY `user_id_login_id_login_hash_index` (`user_id`,`login_id`,`login_hash`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ff_user_login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ip` decimal(39,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username_time_index` (`username`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ff_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(10) unsigned DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email_key` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email_time` int(10) unsigned DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `activation_key` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_password_key` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_password_time` int(10) unsigned DEFAULT NULL,
  `deletion_key` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletion_time` int(10) unsigned DEFAULT NULL,
  `profile_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_email_index` (`username`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_plugin_ff_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `top` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bottom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ff_plugin_ff_articles_slug_index` (`slug`),
  KEY `ff_plugin_ff_articles_title_index` (`title`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ff_plugin_fu_board_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ff_plugin_fu_board_statistics_board_id_name_index` (`board_id`,`name`),
  KEY `ff_plugin_fu_board_statistics_timestamp_index` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ff_preferences` (
  `name`,
  `value`
) VALUES (
  'foolframe.gen.index_title',
  'Fuuka4plebs'
),(
  'foolframe.gen.website_title',
  'Fuuka4plebs'
),(
  'foolfuuka.boards.directory',
  '/var/www/fuuka4plebs/boards/'
),(
  'foolfuuka.boards.media_balancers',
  'http://127.0.0.1:8080/boards'
),(
  'foolfuuka.boards.media_balancers_https',
  'http://127.0.0.1:8080/boards'
),(
  'foolfuuka.boards.url',
  'http://127.0.0.1:8080/boards'
);

INSERT INTO `ff_users` (
  `username`,
  `password`,
  `group_id`,
  `email`,
  `activated`
) VALUES (
  'root',
  '$2y$10$NNvC0e/Z.gCh0wapWsMcSOL7f790notjaqGWn3YmqZmzx0kBUbTwW',
  '100',
  'email@example.com',
  '1'
);


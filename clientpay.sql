-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 14 2015 г., 19:53
-- Версия сервера: 5.6.26
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clientpay`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2015-10-09 23:53:58', '2015-10-09 20:53:58', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/clientpay.tk', 'yes'),
(2, 'home', 'http://localhost/clientpay.tk', 'yes'),
(3, 'blogname', 'clientpay', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@clientpay.tk', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '3', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', '_tk', 'yes'),
(42, 'stylesheet', 'clientpay', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'ru_RU', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1444841760;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444856039;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444856122;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1444887504;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"admin@clientpay.tk";s:7:"version";s:5:"4.2.5";s:9:"timestamp";i:1444424078;}', 'yes'),
(112, '_transient_random_seed', '4453d4b17db7a080e57fa630ee6aa039', 'yes'),
(113, '_site_transient_timeout_browser_f17158549169c0110ce3122bf897ae75', '1445028922', 'yes'),
(114, '_site_transient_browser_f17158549169c0110ce3122bf897ae75', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"41.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(131, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1444467330', 'no'),
(132, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/09/wordpress-4-3-1/''>WordPress 4.3.1 Security and Maintenance Release</a> <span class="rss-date">15.09.2015</span><div class="rssSummary">WordPress 4.3.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation. WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://poststatus.com/responsive-images-for-wordpress-and-mobile-pages-with-amp-draft-podcast/''>Post Status: Responsive images for WordPress and mobile pages with AMP — Draft podcast</a></li><li><a class=''rsswidget'' href=''http://ma.tt/2015/10/lists-of-lists/''>Matt: Lists of Lists</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/the-first-half-of-the-rest-api-is-officially-added-to-wordpress-core''>WPTavern: The First Half of the REST API Is Officially Added to WordPress Core</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Популярный плагин:</span> <a href=''https://wordpress.org/plugins/updraftplus/'' class=''dashboard-news-plugin-link''>UpdraftPlus Backup and Restoration</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=updraftplus&amp;_wpnonce=ec319687b4&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''UpdraftPlus Backup and Restoration''>Установить</a>)</span></li></ul></div>', 'no'),
(133, '_site_transient_timeout_wporg_theme_feature_list', '1444435048', 'yes'),
(134, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(135, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1444424238;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'ClienPay', 'yes'),
(137, 'theme_mods__tk', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1444424989;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(140, 'widget_post-comment-tag-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(151, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444839402;s:7:"checked";a:2:{s:3:"_tk";s:5:"1.1.9";s:9:"clientpay";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(153, 'theme_mods_clientpay', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:12:"header_image";s:69:"http://localhost/clientpay.tk/wp-content/uploads/topClientPayLogo.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:28;s:3:"url";s:69:"http://localhost/clientpay.tk/wp-content/uploads/topClientPayLogo.png";s:13:"thumbnail_url";s:69:"http://localhost/clientpay.tk/wp-content/uploads/topClientPayLogo.png";s:6:"height";i:35;s:5:"width";i:170;}s:12:"phone_number";s:13:"+380936838500";}', 'yes'),
(154, 'theme_switched_via_customizer', '', 'yes'),
(155, 'finished_splitting_shared_terms', '1', 'yes'),
(156, 'db_upgraded', '', 'yes'),
(158, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.3.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.3.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1444839388;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(159, 'can_compress_scripts', '1', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(177, 'site_icon', '27', 'yes'),
(178, '_site_transient_timeout_available_translations', '1444471859', 'yes'),
(179, '_site_transient_available_translations', 'a:65:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-09 17:20:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.1/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-22 14:16:17";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-17 10:33:13";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-07 03:25:59";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-02 05:19:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 07:31:54";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.3.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 07:30:55";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 17:27:29";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 19:20:19";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-09 18:30:04";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-26 22:31:40";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-25 13:32:40";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-15 15:41:04";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 08:15:10";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-03 20:07:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-01 20:42:02";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-05 22:01:59";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-08 17:47:38";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-06 06:16:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 16:23:05";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-06 14:21:08";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 10:30:52";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-02 08:35:41";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-07 14:52:14";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 13:29:00";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-28 11:00:22";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 09:34:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-21 11:18:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(214, 'category_children', 'a:0:{}', 'yes'),
(233, '_transient_timeout_plugin_slugs', '1444674058', 'no'),
(234, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(257, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1444710039', 'no'),
(258, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(260, '_site_transient_timeout_browser_1278066432121fcf13fbcf78cd3fab6c', '1445284079', 'yes'),
(261, '_site_transient_browser_1278066432121fcf13fbcf78cd3fab6c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"41.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(305, 'benefits_children', 'a:0:{}', 'yes'),
(306, '_transient_is_multi_author', '0', 'yes'),
(308, 'rewrite_rules', 'a:85:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:49:"benefits/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?benefits=$matches[1]&feed=$matches[2]";s:44:"benefits/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?benefits=$matches[1]&feed=$matches[2]";s:37:"benefits/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?benefits=$matches[1]&paged=$matches[2]";s:19:"benefits/([^/]+)/?$";s:30:"index.php?benefits=$matches[1]";s:38:"help_types/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"help_types/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"help_types/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"help_types/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"help_types/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"help_types/([^/]+)/trackback/?$";s:37:"index.php?help_types=$matches[1]&tb=1";s:39:"help_types/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?help_types=$matches[1]&paged=$matches[2]";s:46:"help_types/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?help_types=$matches[1]&cpage=$matches[2]";s:31:"help_types/([^/]+)(/[0-9]+)?/?$";s:49:"index.php?help_types=$matches[1]&page=$matches[2]";s:27:"help_types/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"help_types/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"help_types/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"help_types/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"help_types/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(309, '_transient_all_the_cool_cats', '1', 'yes'),
(320, '_site_transient_timeout_theme_roots', '1444841192', 'yes'),
(321, '_site_transient_theme_roots', 'a:2:{s:3:"_tk";s:7:"/themes";s:9:"clientpay";s:7:"/themes";}', 'yes'),
(324, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444839402;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.5.zip";s:14:"upgrade_notice";s:78:"Version 3.1.5 contains security fixes and is highly recommended for all users.";s:10:"autoupdate";b:1;}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1444456934'),
(21, 8, '_edit_last', '1'),
(22, 8, '_edit_lock', '1444456843:1'),
(23, 10, '_edit_last', '1'),
(24, 10, '_edit_lock', '1444456856:1'),
(25, 12, '_edit_last', '1'),
(26, 12, '_edit_lock', '1444456886:1'),
(27, 14, '_edit_last', '1'),
(28, 14, '_edit_lock', '1444456902:1'),
(29, 16, '_edit_last', '1'),
(30, 16, '_edit_lock', '1444456917:1'),
(31, 18, '_edit_last', '1'),
(32, 18, '_edit_lock', '1444456949:1'),
(33, 20, '_menu_item_type', 'post_type'),
(34, 20, '_menu_item_menu_item_parent', '0'),
(35, 20, '_menu_item_object_id', '18'),
(36, 20, '_menu_item_object', 'page'),
(37, 20, '_menu_item_target', ''),
(38, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 20, '_menu_item_xfn', ''),
(40, 20, '_menu_item_url', ''),
(42, 21, '_menu_item_type', 'post_type'),
(43, 21, '_menu_item_menu_item_parent', '0'),
(44, 21, '_menu_item_object_id', '16'),
(45, 21, '_menu_item_object', 'page'),
(46, 21, '_menu_item_target', ''),
(47, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 21, '_menu_item_xfn', ''),
(49, 21, '_menu_item_url', ''),
(51, 22, '_menu_item_type', 'post_type'),
(52, 22, '_menu_item_menu_item_parent', '0'),
(53, 22, '_menu_item_object_id', '14'),
(54, 22, '_menu_item_object', 'page'),
(55, 22, '_menu_item_target', ''),
(56, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 22, '_menu_item_xfn', ''),
(58, 22, '_menu_item_url', ''),
(60, 23, '_menu_item_type', 'post_type'),
(61, 23, '_menu_item_menu_item_parent', '0'),
(62, 23, '_menu_item_object_id', '12'),
(63, 23, '_menu_item_object', 'page'),
(64, 23, '_menu_item_target', ''),
(65, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 23, '_menu_item_xfn', ''),
(67, 23, '_menu_item_url', ''),
(69, 24, '_menu_item_type', 'post_type'),
(70, 24, '_menu_item_menu_item_parent', '0'),
(71, 24, '_menu_item_object_id', '10'),
(72, 24, '_menu_item_object', 'page'),
(73, 24, '_menu_item_target', ''),
(74, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 24, '_menu_item_xfn', ''),
(76, 24, '_menu_item_url', ''),
(78, 25, '_menu_item_type', 'post_type'),
(79, 25, '_menu_item_menu_item_parent', '0'),
(80, 25, '_menu_item_object_id', '8'),
(81, 25, '_menu_item_object', 'page'),
(82, 25, '_menu_item_target', ''),
(83, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 25, '_menu_item_xfn', ''),
(85, 25, '_menu_item_url', ''),
(87, 26, '_wp_attached_file', '2015/10/topClientPayLogo-e1444460861906.png'),
(88, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:146;s:6:"height";i:30;s:4:"file";s:43:"2015/10/topClientPayLogo-e1444460861906.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"topClientPayLogo-150x62.png";s:5:"width";i:150;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"topClientPayLogo-300x62.png";s:5:"width";i:300;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(89, 27, '_wp_attached_file', '2015/10/cropped-topClientPayLogo.png'),
(90, 27, '_wp_attachment_context', 'site-icon'),
(91, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:36:"2015/10/cropped-topClientPayLogo.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"cropped-topClientPayLogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:36:"cropped-topClientPayLogo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:36:"cropped-topClientPayLogo-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:36:"cropped-topClientPayLogo-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:36:"cropped-topClientPayLogo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:34:"cropped-topClientPayLogo-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(92, 26, '_wp_attachment_custom_header_last_used_clientpay', '1444460796'),
(93, 26, '_wp_attachment_is_custom_header', 'clientpay'),
(94, 26, '_edit_lock', '1444460785:1'),
(95, 26, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:301;s:6:"height";i:62;s:4:"file";s:20:"topClientPayLogo.png";}s:18:"full-1444460744217";a:3:{s:5:"width";i:194;s:6:"height";i:40;s:4:"file";s:35:"topClientPayLogo-e1444460736140.png";}s:18:"full-1444460753496";a:3:{s:5:"width";i:146;s:6:"height";i:30;s:4:"file";s:35:"topClientPayLogo-e1444460744217.png";}s:18:"full-1444460764129";a:3:{s:5:"width";i:146;s:6:"height";i:30;s:4:"file";s:35:"topClientPayLogo-e1444460753496.png";}s:18:"full-1444460861906";a:3:{s:5:"width";i:146;s:6:"height";i:30;s:4:"file";s:35:"topClientPayLogo-e1444460764129.png";}}'),
(96, 26, '_edit_last', '1'),
(97, 28, '_wp_attached_file', 'topClientPayLogo.png'),
(98, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:35;s:4:"file";s:20:"topClientPayLogo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"topClientPayLogo-150x35.png";s:5:"width";i:150;s:6:"height";i:35;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(99, 28, '_wp_attachment_custom_header_last_used_clientpay', '1444461152'),
(100, 28, '_wp_attachment_is_custom_header', 'clientpay'),
(101, 29, '_edit_last', '1'),
(102, 29, '_edit_lock', '1444587758:1'),
(103, 36, '_edit_last', '1'),
(104, 36, '_edit_lock', '1444689118:1'),
(105, 37, '_wp_attached_file', 'LowerProcessing.png'),
(106, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:19:"LowerProcessing.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(107, 36, '_thumbnail_id', '37'),
(108, 36, 'description', 'Reduce processing fees by 10-40%, automatically submit required transaction data & qualify for the lowest rates'),
(109, 1, '_edit_lock', '1444679249:1'),
(110, 39, '_edit_last', '1'),
(111, 39, '_edit_lock', '1444689010:1'),
(112, 40, '_wp_attached_file', 'SeparateFees.png'),
(113, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:86;s:6:"height";i:86;s:4:"file";s:16:"SeparateFees.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(114, 39, '_thumbnail_id', '40'),
(115, 39, 'description', 'Easily deposit into correct operating or trust accounts & avoid comminglling funds'),
(116, 42, '_edit_last', '1'),
(117, 42, '_edit_lock', '1444688979:1'),
(118, 43, '_wp_attached_file', 'CashFlow.png'),
(119, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:12:"CashFlow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(120, 42, '_thumbnail_id', '43'),
(121, 42, 'description', 'Reduce payment cycles by several days'),
(122, 45, '_edit_last', '1'),
(123, 45, '_edit_lock', '1444688969:1'),
(124, 46, '_wp_attached_file', 'Efficiency.png'),
(125, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:14:"Efficiency.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(126, 45, '_thumbnail_id', '46'),
(127, 45, 'description', 'Improve A/R performance through integration, automation & real-time processing'),
(128, 48, '_edit_last', '1'),
(129, 48, '_edit_lock', '1444688957:1'),
(130, 49, '_wp_attached_file', 'Enhance.png'),
(131, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:11:"Enhance.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(132, 48, '_thumbnail_id', '49'),
(133, 48, 'description', 'Strengthen relationships, reduce write-offs & attract new clients '),
(134, 51, '_edit_last', '1'),
(135, 51, '_edit_lock', '1444744843:1'),
(136, 52, '_wp_attached_file', 'Security.png'),
(137, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:12:"Security.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(138, 51, '_thumbnail_id', '52'),
(139, 51, 'description', 'PCI compliance and state-of-the-industry security features protect cardholder data'),
(140, 54, '_edit_last', '1'),
(141, 54, '_edit_lock', '1444688943:1'),
(142, 54, '_wp_trash_meta_status', 'publish'),
(143, 54, '_wp_trash_meta_time', '1444689092');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-09 23:53:58', '2015-10-09 20:53:58', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2015-10-09 23:53:58', '2015-10-09 20:53:58', '', 0, 'http://localhost/clientpay.tk/?p=1', 0, 'post', '', 1),
(2, 1, '2015-10-09 23:53:58', '2015-10-09 20:53:58', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/clientpay.tk/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-10-10 09:02:14', '2015-10-10 06:02:14', '', 0, 'http://localhost/clientpay.tk/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-10-09 23:55:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-10-09 23:55:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?p=3', 0, 'post', '', 0),
(6, 1, '2015-10-10 08:38:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-10 08:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-10-10 09:02:14', '2015-10-10 06:02:14', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/clientpay.tk/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-10-10 09:02:14', '2015-10-10 06:02:14', '', 2, 'http://localhost/clientpay.tk/2015/10/10/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-10-10 09:03:04', '2015-10-10 06:03:04', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-10-10 09:03:04', '2015-10-10 06:03:04', '', 0, 'http://localhost/clientpay.tk/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-10-10 09:03:04', '2015-10-10 06:03:04', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-10-10 09:03:04', '2015-10-10 06:03:04', '', 8, 'http://localhost/clientpay.tk/2015/10/10/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2015-10-10 09:03:18', '2015-10-10 06:03:18', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2015-10-10 09:03:18', '2015-10-10 06:03:18', '', 0, 'http://localhost/clientpay.tk/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-10-10 09:03:18', '2015-10-10 06:03:18', '', 'News', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-10 09:03:18', '2015-10-10 06:03:18', '', 10, 'http://localhost/clientpay.tk/2015/10/10/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2015-10-10 09:03:33', '2015-10-10 06:03:33', '', 'Demo', '', 'publish', 'closed', 'closed', '', 'demo', '', '', '2015-10-10 09:03:33', '2015-10-10 06:03:33', '', 0, 'http://localhost/clientpay.tk/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-10-10 09:03:33', '2015-10-10 06:03:33', '', 'Demo', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-10 09:03:33', '2015-10-10 06:03:33', '', 12, 'http://localhost/clientpay.tk/2015/10/10/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-10-10 09:03:59', '2015-10-10 06:03:59', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2015-10-10 09:03:59', '2015-10-10 06:03:59', '', 0, 'http://localhost/clientpay.tk/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-10-10 09:03:59', '2015-10-10 06:03:59', '', 'Features', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-10-10 09:03:59', '2015-10-10 06:03:59', '', 14, 'http://localhost/clientpay.tk/2015/10/10/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-10-10 09:04:16', '2015-10-10 06:04:16', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2015-10-10 09:04:16', '2015-10-10 06:04:16', '', 0, 'http://localhost/clientpay.tk/?page_id=16', 0, 'page', '', 0),
(17, 1, '2015-10-10 09:04:16', '2015-10-10 06:04:16', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-10-10 09:04:16', '2015-10-10 06:04:16', '', 16, 'http://localhost/clientpay.tk/2015/10/10/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-10-10 09:04:25', '2015-10-10 06:04:25', '', 'Benefits', '', 'publish', 'closed', 'closed', '', 'benefits', '', '', '2015-10-10 09:04:25', '2015-10-10 06:04:25', '', 0, 'http://localhost/clientpay.tk/?page_id=18', 0, 'page', '', 0),
(19, 1, '2015-10-10 09:04:25', '2015-10-10 06:04:25', '', 'Benefits', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-10-10 09:04:25', '2015-10-10 06:04:25', '', 18, 'http://localhost/clientpay.tk/2015/10/10/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-10-10 09:09:21', '2015-10-10 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2015-10-10 09:09:21', '2015-10-10 06:09:21', '', 0, 'http://localhost/clientpay.tk/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2015-10-10 09:09:21', '2015-10-10 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-10-10 09:09:21', '2015-10-10 06:09:21', '', 0, 'http://localhost/clientpay.tk/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2015-10-10 09:09:21', '2015-10-10 06:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2015-10-10 09:09:21', '2015-10-10 06:09:21', '', 0, 'http://localhost/clientpay.tk/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2015-10-10 09:09:22', '2015-10-10 06:09:22', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2015-10-10 09:09:22', '2015-10-10 06:09:22', '', 0, 'http://localhost/clientpay.tk/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2015-10-10 09:09:22', '2015-10-10 06:09:22', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2015-10-10 09:09:22', '2015-10-10 06:09:22', '', 0, 'http://localhost/clientpay.tk/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2015-10-10 09:09:22', '2015-10-10 06:09:22', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2015-10-10 09:09:22', '2015-10-10 06:09:22', '', 0, 'http://localhost/clientpay.tk/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2015-10-10 09:42:05', '2015-10-10 06:42:05', '', 'topClientPayLogo', '', 'inherit', 'open', 'closed', '', 'topclientpaylogo', '', '', '2015-10-10 10:07:46', '2015-10-10 07:07:46', '', 0, 'http://localhost/clientpay.tk/wp-content/uploads/2015/10/topClientPayLogo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2015-10-10 09:42:29', '2015-10-10 06:42:29', 'http://localhost/clientpay.tk/wp-content/uploads/2015/10/cropped-topClientPayLogo.png', 'cropped-topClientPayLogo.png', '', 'inherit', 'open', 'closed', '', 'cropped-topclientpaylogo-png', '', '', '2015-10-10 09:42:29', '2015-10-10 06:42:29', '', 0, 'http://localhost/clientpay.tk/wp-content/uploads/2015/10/cropped-topClientPayLogo.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2015-10-10 10:11:27', '2015-10-10 07:11:27', '', 'topClientPayLogo', '', 'inherit', 'open', 'closed', '', 'topclientpaylogo-2', '', '', '2015-10-10 10:11:27', '2015-10-10 07:11:27', '', 0, 'http://localhost/clientpay.tk/wp-content/uploads/topClientPayLogo.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2015-10-11 17:54:56', '0000-00-00 00:00:00', '', 'Lower processing fees', '', 'draft', 'closed', 'closed', '', 'lower-processing-fees', '', '', '2015-10-11 17:54:56', '2015-10-11 14:54:56', '', 0, 'http://localhost/clientpay.tk/?post_type=helps&#038;p=29', 0, 'helps', '', 0),
(30, 1, '2015-10-11 23:18:05', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-11 23:18:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=30', 0, 'help_types', '', 0),
(31, 1, '2015-10-11 23:51:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-11 23:51:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=31', 0, 'help_types', '', 0),
(32, 1, '2015-10-12 00:01:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-12 00:01:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=32', 0, 'help_types', '', 0),
(33, 1, '2015-10-12 00:04:57', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-12 00:04:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=33', 0, 'help_types', '', 0),
(34, 1, '2015-10-12 00:08:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-12 00:08:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=34', 0, 'help_types', '', 0),
(35, 1, '2015-10-12 00:24:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-12 00:24:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&p=35', 0, 'help_types', '', 0),
(36, 1, '2015-10-12 00:35:21', '2015-10-11 21:35:21', '', 'Lower processing fees', '', 'publish', 'closed', 'closed', '', 'lower-processing-fees', '', '', '2015-10-13 01:32:41', '2015-10-12 22:32:41', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=36', 0, 'help_types', '', 0),
(37, 1, '2015-10-12 00:34:08', '2015-10-11 21:34:08', '', 'LowerProcessing', '', 'inherit', 'open', 'closed', '', 'lowerprocessing', '', '', '2015-10-12 00:34:08', '2015-10-11 21:34:08', '', 36, 'http://localhost/clientpay.tk/wp-content/uploads/LowerProcessing.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2015-10-12 00:35:21', '2015-10-11 21:35:21', '', 'Lower processing fees', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2015-10-12 00:35:21', '2015-10-11 21:35:21', '', 36, 'http://localhost/clientpay.tk/2015/10/12/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-10-13 00:34:04', '2015-10-12 21:34:04', '', 'Separate earned & unearned fees', '', 'publish', 'closed', 'closed', '', 'separate-earned-unearned-fees', '', '', '2015-10-13 01:32:22', '2015-10-12 22:32:22', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=39', 0, 'help_types', '', 0),
(40, 1, '2015-10-13 00:33:48', '2015-10-12 21:33:48', '', 'SeparateFees', '', 'inherit', 'open', 'closed', '', 'separatefees', '', '', '2015-10-13 00:33:48', '2015-10-12 21:33:48', '', 39, 'http://localhost/clientpay.tk/wp-content/uploads/SeparateFees.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2015-10-13 00:34:04', '2015-10-12 21:34:04', '', 'Separate earned & unearned fees', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2015-10-13 00:34:04', '2015-10-12 21:34:04', '', 39, 'http://localhost/clientpay.tk/2015/10/13/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-10-13 00:36:06', '2015-10-12 21:36:06', '', 'Accelerate cash flow', '', 'publish', 'closed', 'closed', '', 'accelerate-cash-flow', '', '', '2015-10-13 01:32:00', '2015-10-12 22:32:00', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=42', 0, 'help_types', '', 0),
(43, 1, '2015-10-13 00:36:03', '2015-10-12 21:36:03', '', 'CashFlow', '', 'inherit', 'open', 'closed', '', 'cashflow', '', '', '2015-10-13 00:36:03', '2015-10-12 21:36:03', '', 42, 'http://localhost/clientpay.tk/wp-content/uploads/CashFlow.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2015-10-13 00:36:06', '2015-10-12 21:36:06', '', 'Accelerate cash flow', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2015-10-13 00:36:06', '2015-10-12 21:36:06', '', 42, 'http://localhost/clientpay.tk/2015/10/13/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-10-13 00:38:27', '2015-10-12 21:38:27', '', 'Efficiency & accuracy', '', 'publish', 'closed', 'closed', '', 'efficiency-accuracy', '', '', '2015-10-13 01:31:48', '2015-10-12 22:31:48', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=45', 0, 'help_types', '', 0),
(46, 1, '2015-10-13 00:38:24', '2015-10-12 21:38:24', '', 'Efficiency', '', 'inherit', 'open', 'closed', '', 'efficiency', '', '', '2015-10-13 00:38:24', '2015-10-12 21:38:24', '', 45, 'http://localhost/clientpay.tk/wp-content/uploads/Efficiency.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2015-10-13 00:38:27', '2015-10-12 21:38:27', '', 'Efficiency & accuracy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-10-13 00:38:27', '2015-10-12 21:38:27', '', 45, 'http://localhost/clientpay.tk/2015/10/13/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-10-13 00:54:59', '2015-10-12 21:54:59', '', 'Enhance client satisfaction', '', 'publish', 'closed', 'closed', '', 'enhance-client-satisfaction', '', '', '2015-10-13 01:31:39', '2015-10-12 22:31:39', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=48', 0, 'help_types', '', 0),
(49, 1, '2015-10-13 00:54:50', '2015-10-12 21:54:50', '', 'Enhance', '', 'inherit', 'open', 'closed', '', 'enhance', '', '', '2015-10-13 00:54:50', '2015-10-12 21:54:50', '', 48, 'http://localhost/clientpay.tk/wp-content/uploads/Enhance.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2015-10-13 00:54:59', '2015-10-12 21:54:59', '', 'Enhance client satisfaction', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2015-10-13 00:54:59', '2015-10-12 21:54:59', '', 48, 'http://localhost/clientpay.tk/2015/10/13/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-10-13 00:58:09', '2015-10-12 21:58:09', 'ывкпеыкупавыравпрр', 'Strengthen security', '', 'publish', 'closed', 'closed', '', 'strengthen-security', '', '', '2015-10-13 16:51:45', '2015-10-13 13:51:45', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=51', 0, 'help_types', '', 0),
(52, 1, '2015-10-13 00:58:00', '2015-10-12 21:58:00', '', 'Security', '', 'inherit', 'open', 'closed', '', 'security', '', '', '2015-10-13 00:58:00', '2015-10-12 21:58:00', '', 51, 'http://localhost/clientpay.tk/wp-content/uploads/Security.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2015-10-13 00:58:09', '2015-10-12 21:58:09', '', 'Strengthen security', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2015-10-13 00:58:09', '2015-10-12 21:58:09', '', 51, 'http://localhost/clientpay.tk/2015/10/13/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-10-13 01:31:25', '2015-10-12 22:31:25', '', '', '', 'trash', 'closed', 'closed', '', '54', '', '', '2015-10-13 01:31:32', '2015-10-12 22:31:32', '', 0, 'http://localhost/clientpay.tk/?post_type=help_types&#038;p=54', 0, 'help_types', '', 0),
(55, 1, '2015-10-13 01:31:25', '2015-10-12 22:31:25', '', '', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2015-10-13 01:31:25', '2015-10-12 22:31:25', '', 54, 'http://localhost/clientpay.tk/2015/10/13/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-10-13 16:51:45', '2015-10-13 13:51:45', 'ывкпеыкупавыравпрр', 'Strengthen security', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2015-10-13 16:51:45', '2015-10-13 13:51:45', '', 51, 'http://localhost/clientpay.tk/2015/10/13/51-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'TopMenu', 'topmenu', 0),
(3, 'Clientpay helps law firms', 'benefits', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(36, 3, 0),
(39, 3, 0),
(42, 3, 0),
(45, 3, 0),
(48, 3, 0),
(51, 3, 0),
(54, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'benefits', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"84f669287bfc4157eca81fc00a5fd554359367abe5593e5c36ffbc73f4bbc35e";a:4:{s:10:"expiration";i:1445633721;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444424121;}s:64:"6d201fd539128c858a0e40313ffdb1512bc34eca8901b6a8f98a6ff2066c9c61";a:4:{s:10:"expiration";i:1444839632;s:2:"ip";s:3:"::1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444666832;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1444461149'),
(21, 1, 'meta-box-order_help_types', 'a:3:{s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:27:"helps_type_meta_box,slugdiv";s:8:"advanced";s:0:"";}'),
(22, 1, 'screen_layout_help_types', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByFnWxKcOKLcpPNcSHZIfmxUkhIJjM/', 'admin', 'admin@clientpay.tk', '', '2015-10-09 20:53:57', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=325;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

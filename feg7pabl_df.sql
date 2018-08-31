-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-08-2018 a las 13:43:38
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `feg7pabl_df`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_commentmeta`
--

CREATE TABLE `df_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_comments`
--

CREATE TABLE `df_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_comments`
--

INSERT INTO `df_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-22 15:27:10', '2018-08-22 15:27:10', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 5, 'verdpz', 'pablocesarbravosilva@gmail.com', '', '152.231.105.29', '2018-08-22 18:13:46', '2018-08-22 18:13:46', 'comenatrio estandar para aunmentar elcontenido de una pagina', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_links`
--

CREATE TABLE `df_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_options`
--

CREATE TABLE `df_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_options`
--

INSERT INTO `df_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://186.64.118.50/~feg7pablo', 'yes'),
(2, 'home', 'http://186.64.118.50/~feg7pablo', 'yes'),
(3, 'blogname', 'Working Holiday', 'yes'),
(4, 'blogdescription', 'viaja - estudia - trabaja - vive', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pablocesarbravosilva@gmail.com', 'yes'),
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
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3.5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp_boilerplate-master', 'yes'),
(41, 'stylesheet', 'wp_boilerplate-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'df_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'es_CL', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"contact-widget\";a:0:{}s:14:\"sidebar-widget\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1535736433;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535738673;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535772433;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535815643;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534951706;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(297, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535733783;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(298, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535733785;s:7:\"checked\";a:1:{s:21:\"wp_boilerplate-master\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(299, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535733785;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(316, '_site_transient_timeout_theme_roots', '1535735584', 'no'),
(317, '_site_transient_theme_roots', 'a:1:{s:21:\"wp_boilerplate-master\";s:7:\"/themes\";}', 'no'),
(148, 'theme_mods_twentysixteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534951709;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(147, 'current_theme', 'Desafío Latam', 'yes'),
(149, 'theme_switched', '', 'yes'),
(138, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"pablocesarbravosilva@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1534951657;}', 'no'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:5;}}', 'yes'),
(169, 'recently_activated', 'a:2:{s:27:\"gallery-portfolio/index.php\";i:1535143649;s:23:\"gutenberg/gutenberg.php\";i:1534984250;}', 'yes'),
(152, 'page_navigation', 'a:6:{s:10:\"first_text\";s:14:\"&laquo; Inicio\";s:9:\"last_text\";s:11:\"Fin &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:5:\"style\";s:7:\"default\";s:5:\"align\";s:4:\"left\";}', 'yes'),
(151, 'theme_mods_wp_boilerplate-master', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:5;s:11:\"footer-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(230, 'acf_version', '4.4.12', 'yes'),
(239, 'category_children', 'a:0:{}', 'yes'),
(257, 'widget_total_soft_portfolio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'new_admin_email', 'pablocesarbravosilva@gmail.com', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_postmeta`
--

CREATE TABLE `df_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_postmeta`
--

INSERT INTO `df_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 9, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1534961994:1'),
(6, 5, 'latitud', '-33.4262079'),
(7, 5, 'longitud', '-70.609833'),
(8, 6, '_wp_attached_file', '2018/08/Monte-Fuji-1024x660.jpg'),
(9, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:660;s:4:\"file\";s:31:\"2018/08/Monte-Fuji-1024x660.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Monte-Fuji-1024x660-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Monte-Fuji-1024x660-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Monte-Fuji-1024x660-768x495.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Monte-Fuji-1024x660-1024x660.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:660;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:31:\"Monte-Fuji-1024x660-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:31:\"Monte-Fuji-1024x660-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 6, '_wp_attachment_image_alt', 'vista urbana del monte fuji'),
(11, 5, '_thumbnail_id', '6'),
(13, 9, '_edit_lock', '1534984142:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1535101770:1'),
(16, 12, '_wp_attached_file', '2018/08/6c177fdb8b7751afefba341379c0a0e9.jpg'),
(17, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/6c177fdb8b7751afefba341379c0a0e9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"6c177fdb8b7751afefba341379c0a0e9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"6c177fdb8b7751afefba341379c0a0e9-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"6c177fdb8b7751afefba341379c0a0e9-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"6c177fdb8b7751afefba341379c0a0e9-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 13, '_wp_attached_file', '2018/08/8d886b0fe5b2e6d941830247e5137d7a.jpg'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:705;s:4:\"file\";s:44:\"2018/08/8d886b0fe5b2e6d941830247e5137d7a.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8d886b0fe5b2e6d941830247e5137d7a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"8d886b0fe5b2e6d941830247e5137d7a-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"8d886b0fe5b2e6d941830247e5137d7a-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"8d886b0fe5b2e6d941830247e5137d7a-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 14, '_wp_attached_file', '2018/08/8de7832899aa38e377a13b730d6553d2.jpg'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:181;s:6:\"height\";i:278;s:4:\"file\";s:44:\"2018/08/8de7832899aa38e377a13b730d6553d2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8de7832899aa38e377a13b730d6553d2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 15, '_wp_attached_file', '2018/08/09ac17f87e9d9f6b425c9add554fcb0d.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:429;s:6:\"height\";i:548;s:4:\"file\";s:44:\"2018/08/09ac17f87e9d9f6b425c9add554fcb0d.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"09ac17f87e9d9f6b425c9add554fcb0d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"09ac17f87e9d9f6b425c9add554fcb0d-235x300.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_wp_attached_file', '2018/08/12e794f91d6d44cf00fcc9636f2fcf5c.jpg'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:552;s:6:\"height\";i:671;s:4:\"file\";s:44:\"2018/08/12e794f91d6d44cf00fcc9636f2fcf5c.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"12e794f91d6d44cf00fcc9636f2fcf5c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"12e794f91d6d44cf00fcc9636f2fcf5c-247x300.jpg\";s:5:\"width\";i:247;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"12e794f91d6d44cf00fcc9636f2fcf5c-552x600.jpg\";s:5:\"width\";i:552;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"12e794f91d6d44cf00fcc9636f2fcf5c-552x600.jpg\";s:5:\"width\";i:552;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_wp_attached_file', '2018/08/28e820a5bab81c9e58d380792f40581e.jpg'),
(27, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:752;s:4:\"file\";s:44:\"2018/08/28e820a5bab81c9e58d380792f40581e.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"28e820a5bab81c9e58d380792f40581e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"28e820a5bab81c9e58d380792f40581e-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"28e820a5bab81c9e58d380792f40581e-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"28e820a5bab81c9e58d380792f40581e-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 18, '_wp_attached_file', '2018/08/30d048a869d3669865b7443ac190f2d0.jpg'),
(29, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/30d048a869d3669865b7443ac190f2d0.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"30d048a869d3669865b7443ac190f2d0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"30d048a869d3669865b7443ac190f2d0-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"30d048a869d3669865b7443ac190f2d0-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"30d048a869d3669865b7443ac190f2d0-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 19, '_wp_attached_file', '2018/08/37a63a7df7c8bd38e5df45071f191a35.jpg'),
(31, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:705;s:4:\"file\";s:44:\"2018/08/37a63a7df7c8bd38e5df45071f191a35.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"37a63a7df7c8bd38e5df45071f191a35-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"37a63a7df7c8bd38e5df45071f191a35-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"37a63a7df7c8bd38e5df45071f191a35-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"37a63a7df7c8bd38e5df45071f191a35-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 20, '_wp_attached_file', '2018/08/44babc8f75e8728ba4b41f6dc2d8072b.jpg'),
(33, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/44babc8f75e8728ba4b41f6dc2d8072b.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"44babc8f75e8728ba4b41f6dc2d8072b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"44babc8f75e8728ba4b41f6dc2d8072b-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"44babc8f75e8728ba4b41f6dc2d8072b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"44babc8f75e8728ba4b41f6dc2d8072b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 21, '_wp_attached_file', '2018/08/067d06bb27e4a0f734648781745f927a.jpg'),
(35, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:591;s:4:\"file\";s:44:\"2018/08/067d06bb27e4a0f734648781745f927a.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"067d06bb27e4a0f734648781745f927a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"067d06bb27e4a0f734648781745f927a-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 22, '_wp_attached_file', '2018/08/75aafeb712eeeaf455dbff4d35802c51.jpg'),
(37, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:790;s:4:\"file\";s:44:\"2018/08/75aafeb712eeeaf455dbff4d35802c51.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"75aafeb712eeeaf455dbff4d35802c51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"75aafeb712eeeaf455dbff4d35802c51-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"75aafeb712eeeaf455dbff4d35802c51-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"75aafeb712eeeaf455dbff4d35802c51-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 23, '_wp_attached_file', '2018/08/75c4faf807ffa25461e9accd4c706ad8.jpg'),
(39, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:501;s:6:\"height\";i:750;s:4:\"file\";s:44:\"2018/08/75c4faf807ffa25461e9accd4c706ad8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"75c4faf807ffa25461e9accd4c706ad8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"75c4faf807ffa25461e9accd4c706ad8-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"75c4faf807ffa25461e9accd4c706ad8-501x600.jpg\";s:5:\"width\";i:501;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"75c4faf807ffa25461e9accd4c706ad8-501x600.jpg\";s:5:\"width\";i:501;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 24, '_wp_attached_file', '2018/08/84eade67fceb7d0c732e49bcaaf9cabc.jpg'),
(41, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/84eade67fceb7d0c732e49bcaaf9cabc.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"84eade67fceb7d0c732e49bcaaf9cabc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"84eade67fceb7d0c732e49bcaaf9cabc-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"84eade67fceb7d0c732e49bcaaf9cabc-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"84eade67fceb7d0c732e49bcaaf9cabc-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 25, '_wp_attached_file', '2018/08/158da1b90c35096788a356b914806a28.jpg'),
(43, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:822;s:4:\"file\";s:44:\"2018/08/158da1b90c35096788a356b914806a28.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"158da1b90c35096788a356b914806a28-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"158da1b90c35096788a356b914806a28-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"158da1b90c35096788a356b914806a28-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"158da1b90c35096788a356b914806a28-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 26, '_wp_attached_file', '2018/08/493f6f5dabb226896e1ec5b310176ec7.jpg'),
(45, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:798;s:4:\"file\";s:44:\"2018/08/493f6f5dabb226896e1ec5b310176ec7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"493f6f5dabb226896e1ec5b310176ec7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"493f6f5dabb226896e1ec5b310176ec7-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"493f6f5dabb226896e1ec5b310176ec7-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"493f6f5dabb226896e1ec5b310176ec7-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 27, '_wp_attached_file', '2018/08/2849e8681fc0ce2b735ccef0f73ab46c.jpg'),
(47, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2018/08/2849e8681fc0ce2b735ccef0f73ab46c.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"2849e8681fc0ce2b735ccef0f73ab46c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"2849e8681fc0ce2b735ccef0f73ab46c-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"2849e8681fc0ce2b735ccef0f73ab46c-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"2849e8681fc0ce2b735ccef0f73ab46c-720x600.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"2849e8681fc0ce2b735ccef0f73ab46c-720x600.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 28, '_wp_attached_file', '2018/08/8918edf7f5f89875bb5cd761a3a5bad9.jpg'),
(49, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:825;s:4:\"file\";s:44:\"2018/08/8918edf7f5f89875bb5cd761a3a5bad9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8918edf7f5f89875bb5cd761a3a5bad9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"8918edf7f5f89875bb5cd761a3a5bad9-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"8918edf7f5f89875bb5cd761a3a5bad9-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"8918edf7f5f89875bb5cd761a3a5bad9-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 29, '_wp_attached_file', '2018/08/1553298f391a8a2e870284dc90adb328.jpg'),
(51, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:730;s:4:\"file\";s:44:\"2018/08/1553298f391a8a2e870284dc90adb328.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"1553298f391a8a2e870284dc90adb328-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"1553298f391a8a2e870284dc90adb328-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"1553298f391a8a2e870284dc90adb328-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"1553298f391a8a2e870284dc90adb328-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 30, '_wp_attached_file', '2018/08/843401591cf81efdcc074e9269008339.jpg'),
(53, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:826;s:4:\"file\";s:44:\"2018/08/843401591cf81efdcc074e9269008339.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"843401591cf81efdcc074e9269008339-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"843401591cf81efdcc074e9269008339-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"843401591cf81efdcc074e9269008339-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"843401591cf81efdcc074e9269008339-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 31, '_wp_attached_file', '2018/08/97773670688ea84ab31651bc6c0f1150.jpg'),
(55, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:773;s:4:\"file\";s:44:\"2018/08/97773670688ea84ab31651bc6c0f1150.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"97773670688ea84ab31651bc6c0f1150-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"97773670688ea84ab31651bc6c0f1150-219x300.jpg\";s:5:\"width\";i:219;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"97773670688ea84ab31651bc6c0f1150-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"97773670688ea84ab31651bc6c0f1150-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 32, '_wp_attached_file', '2018/08/8502310083919cb41e98aa3d151c8df0.jpg'),
(57, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:714;s:4:\"file\";s:44:\"2018/08/8502310083919cb41e98aa3d151c8df0.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8502310083919cb41e98aa3d151c8df0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"8502310083919cb41e98aa3d151c8df0-237x300.jpg\";s:5:\"width\";i:237;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"8502310083919cb41e98aa3d151c8df0-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"8502310083919cb41e98aa3d151c8df0-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 33, '_wp_attached_file', '2018/08/a56f9b3590f9bff74807999935ff4b7b.jpg'),
(59, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:734;s:4:\"file\";s:44:\"2018/08/a56f9b3590f9bff74807999935ff4b7b.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a56f9b3590f9bff74807999935ff4b7b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a56f9b3590f9bff74807999935ff4b7b-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"a56f9b3590f9bff74807999935ff4b7b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"a56f9b3590f9bff74807999935ff4b7b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 34, '_wp_attached_file', '2018/08/a312579ba01dfb1a23f01b300d61495d.jpg'),
(61, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/a312579ba01dfb1a23f01b300d61495d.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a312579ba01dfb1a23f01b300d61495d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a312579ba01dfb1a23f01b300d61495d-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"a312579ba01dfb1a23f01b300d61495d-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"a312579ba01dfb1a23f01b300d61495d-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 35, '_wp_attached_file', '2018/08/a407222b0e5b99b9c2a44ff88eee2de2.jpg'),
(63, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:705;s:4:\"file\";s:44:\"2018/08/a407222b0e5b99b9c2a44ff88eee2de2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a407222b0e5b99b9c2a44ff88eee2de2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a407222b0e5b99b9c2a44ff88eee2de2-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"a407222b0e5b99b9c2a44ff88eee2de2-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"a407222b0e5b99b9c2a44ff88eee2de2-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 36, '_wp_attached_file', '2018/08/b418fa22c8fe588d786f60da0dee485e.jpg'),
(65, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:585;s:4:\"file\";s:44:\"2018/08/b418fa22c8fe588d786f60da0dee485e.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"b418fa22c8fe588d786f60da0dee485e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"b418fa22c8fe588d786f60da0dee485e-246x300.jpg\";s:5:\"width\";i:246;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 37, '_wp_attached_file', '2018/08/ba41b73822626824ae061f803ea10e8a.jpg'),
(67, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:423;s:4:\"file\";s:44:\"2018/08/ba41b73822626824ae061f803ea10e8a.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ba41b73822626824ae061f803ea10e8a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ba41b73822626824ae061f803ea10e8a-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 38, '_wp_attached_file', '2018/08/bf85cbc1d9d2bb014b8839ac83305427.jpg'),
(69, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:396;s:4:\"file\";s:44:\"2018/08/bf85cbc1d9d2bb014b8839ac83305427.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"bf85cbc1d9d2bb014b8839ac83305427-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"bf85cbc1d9d2bb014b8839ac83305427-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 39, '_wp_attached_file', '2018/08/c7a227b5b56f27391281f5894c65400e.jpg'),
(71, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:750;s:4:\"file\";s:44:\"2018/08/c7a227b5b56f27391281f5894c65400e.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"c7a227b5b56f27391281f5894c65400e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"c7a227b5b56f27391281f5894c65400e-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"c7a227b5b56f27391281f5894c65400e-500x600.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"c7a227b5b56f27391281f5894c65400e-500x600.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 40, '_wp_attached_file', '2018/08/c405ded38d19eeaee640e52befc2ae04.jpg'),
(73, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:693;s:4:\"file\";s:44:\"2018/08/c405ded38d19eeaee640e52befc2ae04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"c405ded38d19eeaee640e52befc2ae04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"c405ded38d19eeaee640e52befc2ae04-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"c405ded38d19eeaee640e52befc2ae04-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"c405ded38d19eeaee640e52befc2ae04-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 41, '_wp_attached_file', '2018/08/eb2d2674cfb895bf9a757b7c67d1e848.jpg'),
(75, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:479;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/08/eb2d2674cfb895bf9a757b7c67d1e848.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"eb2d2674cfb895bf9a757b7c67d1e848-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"eb2d2674cfb895bf9a757b7c67d1e848-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"eb2d2674cfb895bf9a757b7c67d1e848-479x600.jpg\";s:5:\"width\";i:479;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"eb2d2674cfb895bf9a757b7c67d1e848-479x600.jpg\";s:5:\"width\";i:479;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 42, '_wp_attached_file', '2018/08/eb4e1f14f44492c1f5c2471187d02761.jpg'),
(77, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:824;s:4:\"file\";s:44:\"2018/08/eb4e1f14f44492c1f5c2471187d02761.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"eb4e1f14f44492c1f5c2471187d02761-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"eb4e1f14f44492c1f5c2471187d02761-205x300.jpg\";s:5:\"width\";i:205;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"eb4e1f14f44492c1f5c2471187d02761-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"eb4e1f14f44492c1f5c2471187d02761-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 43, '_wp_attached_file', '2018/08/ec189c11beced5567f354e1eee0d7b5b.jpg'),
(79, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:705;s:4:\"file\";s:44:\"2018/08/ec189c11beced5567f354e1eee0d7b5b.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ec189c11beced5567f354e1eee0d7b5b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ec189c11beced5567f354e1eee0d7b5b-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"ec189c11beced5567f354e1eee0d7b5b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"ec189c11beced5567f354e1eee0d7b5b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 44, '_wp_attached_file', '2018/08/edc64118e161d5bdf76b8eb2164acf54.jpg'),
(81, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:563;s:6:\"height\";i:320;s:4:\"file\";s:44:\"2018/08/edc64118e161d5bdf76b8eb2164acf54.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"edc64118e161d5bdf76b8eb2164acf54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"edc64118e161d5bdf76b8eb2164acf54-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 45, '_wp_attached_file', '2018/08/f5ba317fe5c7f865beaef33b83c69fd6.jpg'),
(83, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:809;s:4:\"file\";s:44:\"2018/08/f5ba317fe5c7f865beaef33b83c69fd6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"f5ba317fe5c7f865beaef33b83c69fd6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"f5ba317fe5c7f865beaef33b83c69fd6-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"f5ba317fe5c7f865beaef33b83c69fd6-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"f5ba317fe5c7f865beaef33b83c69fd6-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 46, '_wp_attached_file', '2018/08/f5317338d4cf578cad48de9f36d24dfd.jpg'),
(85, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:503;s:6:\"height\";i:543;s:4:\"file\";s:44:\"2018/08/f5317338d4cf578cad48de9f36d24dfd.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"f5317338d4cf578cad48de9f36d24dfd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"f5317338d4cf578cad48de9f36d24dfd-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 47, '_wp_attached_file', '2018/08/fa1760edc95aafb1bcd6917f869b295b.jpg'),
(87, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:1512;s:4:\"file\";s:44:\"2018/08/fa1760edc95aafb1bcd6917f869b295b.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"fa1760edc95aafb1bcd6917f869b295b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"fa1760edc95aafb1bcd6917f869b295b-112x300.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"fa1760edc95aafb1bcd6917f869b295b-382x1024.jpg\";s:5:\"width\";i:382;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"fa1760edc95aafb1bcd6917f869b295b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"fa1760edc95aafb1bcd6917f869b295b-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 48, '_wp_attached_file', '2018/08/fc3e01b524d1404b750e2253a2af5c72.jpg'),
(89, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:846;s:4:\"file\";s:44:\"2018/08/fc3e01b524d1404b750e2253a2af5c72.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"fc3e01b524d1404b750e2253a2af5c72-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"fc3e01b524d1404b750e2253a2af5c72-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"fc3e01b524d1404b750e2253a2af5c72-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"fc3e01b524d1404b750e2253a2af5c72-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 49, '_wp_attached_file', '2018/08/feefe77b136643e90c23efee3d1b6174.jpg'),
(91, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:1002;s:4:\"file\";s:44:\"2018/08/feefe77b136643e90c23efee3d1b6174.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"feefe77b136643e90c23efee3d1b6174-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"feefe77b136643e90c23efee3d1b6174-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:44:\"feefe77b136643e90c23efee3d1b6174-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:44:\"feefe77b136643e90c23efee3d1b6174-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 10, '_thumbnail_id', '49'),
(93, 51, '_menu_item_type', 'post_type'),
(94, 51, '_menu_item_menu_item_parent', '0'),
(95, 51, '_menu_item_object_id', '10'),
(96, 51, '_menu_item_object', 'page'),
(97, 51, '_menu_item_target', ''),
(98, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 51, '_menu_item_xfn', ''),
(100, 51, '_menu_item_url', ''),
(102, 52, '_wp_trash_meta_status', 'publish'),
(103, 52, '_wp_trash_meta_time', '1535102294'),
(104, 54, '_edit_last', '1'),
(105, 54, '_edit_lock', '1535147812:1'),
(193, 82, '_edit_last', '1'),
(194, 82, '_edit_lock', '1535148552:1'),
(176, 74, '_edit_lock', '1535149704:1'),
(183, 77, '_edit_lock', '1535149089:1'),
(190, 79, '_thumbnail_id', '62'),
(188, 79, '_edit_last', '1'),
(189, 79, '_edit_lock', '1535148164:1'),
(173, 74, 'position', 'side'),
(174, 74, 'layout', 'default'),
(175, 74, 'hide_on_screen', ''),
(181, 74, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"paises_type\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(113, 54, 'longitud', 'a:3:{s:7:\"address\";s:13:\"Tokio, Japón\";s:3:\"lat\";s:10:\"35.6894875\";s:3:\"lng\";s:18:\"139.69170639999993\";}'),
(114, 54, '_longitud', 'field_5b7fd996642cc');
INSERT INTO `df_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(171, 74, 'field_5b806d89595ba', 'a:14:{s:3:\"key\";s:19:\"field_5b806d89595ba\";s:5:\"label\";s:7:\"latitud\";s:4:\"name\";s:7:\"latitud\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:7:\"latitud\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:7:\"latitud\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(118, 57, '_edit_last', '1'),
(119, 57, '_edit_lock', '1535116777:1'),
(120, 58, '_wp_attached_file', '2018/08/passport.jpg'),
(121, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2018/08/passport.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"passport-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"passport-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 57, '_thumbnail_id', '58'),
(123, 59, '_menu_item_type', 'post_type'),
(124, 59, '_menu_item_menu_item_parent', '0'),
(125, 59, '_menu_item_object_id', '57'),
(126, 59, '_menu_item_object', 'page'),
(127, 59, '_menu_item_target', ''),
(128, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 59, '_menu_item_xfn', ''),
(130, 59, '_menu_item_url', ''),
(131, 62, '_wp_attached_file', '2018/08/alemania.jpg'),
(132, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:20:\"2018/08/alemania.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"alemania-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"alemania-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:20:\"alemania-650x600.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:20:\"alemania-650x600.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 63, '_wp_attached_file', '2018/08/australia.jpeg'),
(134, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2018/08/australia.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"australia-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"australia-300x168.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 64, '_wp_attached_file', '2018/08/ireland.jpg'),
(136, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:360;s:4:\"file\";s:19:\"2018/08/ireland.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ireland-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ireland-197x300.jpg\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 65, '_wp_attached_file', '2018/08/japon.jpg'),
(138, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:450;s:4:\"file\";s:17:\"2018/08/japon.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"japon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"japon-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 66, '_wp_attached_file', '2018/08/korea.jpg'),
(140, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:17:\"2018/08/korea.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"korea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"korea-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"korea-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:17:\"korea-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:17:\"korea-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 67, '_wp_attached_file', '2018/08/new-zeland.jpg'),
(142, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:22:\"2018/08/new-zeland.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"new-zeland-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"new-zeland-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"new-zeland-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:22:\"new-zeland-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:22:\"new-zeland-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 54, '_thumbnail_id', '65'),
(144, 69, '_edit_last', '1'),
(145, 69, '_edit_lock', '1535148203:1'),
(146, 69, '_thumbnail_id', '63'),
(147, 69, 'longitud', 'a:3:{s:7:\"address\";s:29:\"Melbourne Victoria, Australia\";s:3:\"lat\";s:18:\"-37.81361100000001\";s:3:\"lng\";s:18:\"144.96305600000005\";}'),
(148, 69, '_longitud', 'field_5b7fd996642cc'),
(149, 70, '_edit_last', '1'),
(150, 70, '_edit_lock', '1535148014:1'),
(151, 70, '_thumbnail_id', '62'),
(152, 70, 'longitud', 'a:3:{s:7:\"address\";s:17:\"Berlín, Alemania\";s:3:\"lat\";s:17:\"52.52000659999999\";s:3:\"lng\";s:18:\"13.404953999999975\";}'),
(153, 70, '_longitud', 'field_5b7fd996642cc'),
(154, 71, '_edit_last', '1'),
(155, 71, '_edit_lock', '1535374975:1'),
(157, 72, '_wp_attached_file', '2018/08/canada.jpg'),
(158, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:376;s:4:\"file\";s:18:\"2018/08/canada.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"canada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"canada-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 71, '_thumbnail_id', '72'),
(160, 71, 'longitud', 'a:3:{s:7:\"address\";s:6:\"canada\";s:3:\"lat\";s:9:\"56.130366\";s:3:\"lng\";s:19:\"-106.34677099999999\";}'),
(161, 71, '_longitud', 'field_5b7fd996642cc'),
(182, 77, '_edit_last', '1'),
(169, 74, '_edit_last', '1'),
(170, 74, 'field_5b806d79595b9', 'a:14:{s:3:\"key\";s:19:\"field_5b806d79595b9\";s:5:\"label\";s:8:\"longitud\";s:4:\"name\";s:8:\"longitud\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:8:\"longitud\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:8:\"longitud\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(199, 82, '_thumbnail_id', '63'),
(203, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151109_0991-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151109_0991-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151109_0991-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447080596\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:4:\"2500\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:5:\"Kyoto\";i:2;s:6:\"NatGeo\";}}}'),
(202, 84, '_wp_attached_file', '2018/08/Stoen_151109_0991-4.jpg'),
(204, 86, '_wp_attached_file', '2018/08/Stoen_151110_0016-2.jpg'),
(205, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151110_0016-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151110_0016-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151110_0016-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:20:\"Canon EOS 7D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447145209\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:5:\"Kyoto\";i:2;s:6:\"NatGeo\";}}}'),
(206, 87, '_wp_attached_file', '2018/08/Stoen_151110_0416-2-2.jpg'),
(207, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:33:\"2018/08/Stoen_151110_0416-2-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Stoen_151110_0416-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Stoen_151110_0416-2-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447162954\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:5:\"Kyoto\";i:2;s:6:\"NatGeo\";}}}'),
(208, 88, '_wp_attached_file', '2018/08/Stoen_151111_0587-2.jpg'),
(209, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151111_0587-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151111_0587-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151111_0587-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447257670\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:5:\"Japan\";i:1;s:6:\"NatGeo\";}}}'),
(210, 89, '_wp_attached_file', '2018/08/Stoen_151113_0362-2.jpg'),
(211, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151113_0362-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151113_0362-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151113_0362-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447421273\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"33\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:10:\"Iya Valley\";i:1;s:5:\"Japan\";i:2;s:6:\"NatGeo\";}}}'),
(212, 90, '_wp_attached_file', '2018/08/Stoen_151113_0797-2.jpg'),
(213, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151113_0797-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151113_0797-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151113_0797-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:20:\"Canon EOS 7D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447424927\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:10:\"Iya Valley\";i:1;s:5:\"Japan\";i:2;s:6:\"NatGeo\";}}}'),
(214, 91, '_wp_attached_file', '2018/08/Stoen_151114_0375.jpg'),
(215, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2018/08/Stoen_151114_0375.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Stoen_151114_0375-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Stoen_151114_0375-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447511753\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"19\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:6:\"NatGeo\";i:2;s:9:\"Tokushima\";}}}'),
(216, 92, '_wp_attached_file', '2018/08/Stoen_151115_0231-2.jpg'),
(217, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151115_0231-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151115_0231-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151115_0231-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447570871\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:8:\"Naoshima\";i:2;s:6:\"NatGeo\";}}}'),
(218, 93, '_wp_attached_file', '2018/08/Stoen_151116_0105-2.jpg'),
(219, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:750;s:4:\"file\";s:31:\"2018/08/Stoen_151116_0105-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151116_0105-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151116_0105-2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"slideshow\";a:4:{s:4:\"file\";s:31:\"Stoen_151116_0105-2-500x600.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom_logo\";a:4:{s:4:\"file\";s:31:\"Stoen_151116_0105-2-500x600.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447680696\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:2:\"30\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:5:\"Japan\";i:1;s:8:\"Miyajima\";i:2;s:6:\"NatGeo\";}}}'),
(220, 94, '_wp_attached_file', '2018/08/Stoen_151117_0033-2.jpg'),
(221, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2018/08/Stoen_151117_0033-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Stoen_151117_0033-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Stoen_151117_0033-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:10:\"Eric Stoen\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447755768\";s:9:\"copyright\";s:13:\"© Eric Stoen\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:3:{i:0;s:9:\"Hiroshima\";i:1;s:5:\"Japan\";i:2;s:6:\"NatGeo\";}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_posts`
--

CREATE TABLE `df_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_posts`
--

INSERT INTO `df_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-22 15:27:10', '2018-08-22 15:27:10', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-08-22 15:27:10', '2018-08-22 15:27:10', '', 0, 'http://186.64.118.50/~feg7pablo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-22 15:27:10', '2018-08-22 15:27:10', 'Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://186.64.118.50/~feg7pablo/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-de-ejemplo', '', '', '2018-08-22 15:27:10', '2018-08-22 15:27:10', '', 0, 'http://186.64.118.50/~feg7pablo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-22 15:27:10', '2018-08-22 15:27:10', '<h2>Who we are</h2><p>Our website address is: http://186.64.118.50/~feg7pablo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-22 15:27:10', '2018-08-22 15:27:10', '', 0, 'http://186.64.118.50/~feg7pablo/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-08-22 18:12:04', '2018-08-22 18:12:04', 'lugar donde podrás realizar tramites de extranjeria', 'Japón en Chile', '', 'publish', 'open', 'closed', '', 'japon-en-chile', '', '', '2018-08-22 18:12:31', '2018-08-22 18:12:31', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=post_type&#038;p=5', 0, 'post_type', '', 1),
(6, 1, '2018-08-22 18:11:10', '2018-08-22 18:11:10', 'vista urbana del monte fuji', 'Monte-Fuji', 'monte fuji japon', 'inherit', 'open', 'closed', '', 'monte-fuji-1024x660', '', '', '2018-08-22 18:11:44', '2018-08-22 18:11:44', '', 5, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Monte-Fuji-1024x660.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-08-23 00:31:23', '2018-08-23 00:31:23', 'texto de japon', 'japon', '', 'publish', 'open', 'closed', '', 'japon', '', '', '2018-08-23 00:31:23', '2018-08-23 00:31:23', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=post_type&#038;p=9', 0, 'post_type', '', 0),
(10, 1, '2018-08-24 05:41:51', '2018-08-24 09:11:51', 'Trataremos de responder a todas tus consultas en el más breve de los tiempos. Antes de escribirnos por favor revisa con atención los post y comentarios. Si la respuesta a tu consulta se encuentra en los posteos o ya fue respondida a través de un comentario, probablemente tardaremos mucho en…responderte.\r\n\r\n<strong>1) Puedo hacer el trámite de postulación a WH a través de una empresa o asesor?</strong>\r\n\r\nLa postulación es un trámite personal. Los documentos que se requiere presentar también los tendrás que conseguir personalmente. ¿Quién mejor que Ud. podría completar un formulario con su propia información personal? Basta con que lea y <strong>entienda</strong> lo que lea.\r\n\r\n&nbsp;\r\n\r\n<strong>2) A quién debo presentar mis documentos para postular?</strong>\r\n\r\nA las respectivas embajadas o servicios de inmigración mediante los procesos o mecanismos que cada país establezca.\r\n\r\n&nbsp;\r\n\r\n<strong>3) www.workingholiday.cl consigue trabajos en el extranjero?</strong>\r\n\r\nNo. www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios working holiday que Chile mantiene con terceros países.\r\n\r\n&nbsp;\r\n\r\n<strong>4) www.workingholiday.cl vende programas de working holiday?</strong>\r\n\r\nNo. www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios working holiday que Chile mantiene con terceros países. Los convenios working holiday permiten postular a visas, no son programas turísticos ni de trabajos.\r\n\r\n&nbsp;\r\n\r\n<strong>5) Los programas working holiday aseguran trabajo, estadía y cursos de idioma?</strong>\r\n\r\nNo. Los convenios working holiday permiten postular a una <strong>visa de trabajo</strong> por determinado tiempo y con ciertas restricciones particulares para cada país de destino. Pasarlo bien, aprender un idioma, encontrar trabajo, comida y techo corren por cuenta de cada persona. Los convenios working holiday <strong>no son una beca</strong>, es simplemente una visa.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<strong>DISCLAIMER</strong>: www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios <em>working holiday</em> que Chile mantiene con terceros países. <strong>No representamos a ninguna organización pública ni privada</strong>. La información oficial de cada convenio <em>working holiday</em> se encuentra publicada en los sitios webs de cada embajada o servicio de inmigración respectivo.', 'Preguntas Frecuentes', '', 'publish', 'closed', 'closed', '', 'preguntas-frecuentes', '', '', '2018-08-24 05:41:51', '2018-08-24 09:11:51', '', 0, 'http://186.64.118.50/~feg7pablo/?page_id=10', 0, 'page', '', 0),
(12, 1, '2018-08-24 05:40:44', '2018-08-24 09:10:44', '', '6c177fdb8b7751afefba341379c0a0e9', '', 'inherit', 'open', 'closed', '', '6c177fdb8b7751afefba341379c0a0e9', '', '', '2018-08-24 05:40:44', '2018-08-24 09:10:44', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/6c177fdb8b7751afefba341379c0a0e9.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-08-24 05:40:45', '2018-08-24 09:10:45', '', '8d886b0fe5b2e6d941830247e5137d7a', '', 'inherit', 'open', 'closed', '', '8d886b0fe5b2e6d941830247e5137d7a', '', '', '2018-08-24 05:40:45', '2018-08-24 09:10:45', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/8d886b0fe5b2e6d941830247e5137d7a.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-08-24 05:40:46', '2018-08-24 09:10:46', '', '8de7832899aa38e377a13b730d6553d2', '', 'inherit', 'open', 'closed', '', '8de7832899aa38e377a13b730d6553d2', '', '', '2018-08-24 05:40:46', '2018-08-24 09:10:46', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/8de7832899aa38e377a13b730d6553d2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-08-24 05:40:47', '2018-08-24 09:10:47', '', '09ac17f87e9d9f6b425c9add554fcb0d', '', 'inherit', 'open', 'closed', '', '09ac17f87e9d9f6b425c9add554fcb0d', '', '', '2018-08-24 05:40:47', '2018-08-24 09:10:47', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/09ac17f87e9d9f6b425c9add554fcb0d.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-08-24 05:40:48', '2018-08-24 09:10:48', '', '12e794f91d6d44cf00fcc9636f2fcf5c', '', 'inherit', 'open', 'closed', '', '12e794f91d6d44cf00fcc9636f2fcf5c', '', '', '2018-08-24 05:40:48', '2018-08-24 09:10:48', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/12e794f91d6d44cf00fcc9636f2fcf5c.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-08-24 05:40:49', '2018-08-24 09:10:49', '', '28e820a5bab81c9e58d380792f40581e', '', 'inherit', 'open', 'closed', '', '28e820a5bab81c9e58d380792f40581e', '', '', '2018-08-24 05:40:49', '2018-08-24 09:10:49', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/28e820a5bab81c9e58d380792f40581e.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-08-24 05:40:50', '2018-08-24 09:10:50', '', '30d048a869d3669865b7443ac190f2d0', '', 'inherit', 'open', 'closed', '', '30d048a869d3669865b7443ac190f2d0', '', '', '2018-08-24 05:40:50', '2018-08-24 09:10:50', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/30d048a869d3669865b7443ac190f2d0.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-08-24 05:40:51', '2018-08-24 09:10:51', '', '37a63a7df7c8bd38e5df45071f191a35', '', 'inherit', 'open', 'closed', '', '37a63a7df7c8bd38e5df45071f191a35', '', '', '2018-08-24 05:40:51', '2018-08-24 09:10:51', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/37a63a7df7c8bd38e5df45071f191a35.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-08-24 05:40:52', '2018-08-24 09:10:52', '', '44babc8f75e8728ba4b41f6dc2d8072b', '', 'inherit', 'open', 'closed', '', '44babc8f75e8728ba4b41f6dc2d8072b', '', '', '2018-08-24 05:40:52', '2018-08-24 09:10:52', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/44babc8f75e8728ba4b41f6dc2d8072b.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-08-24 05:40:53', '2018-08-24 09:10:53', '', '067d06bb27e4a0f734648781745f927a', '', 'inherit', 'open', 'closed', '', '067d06bb27e4a0f734648781745f927a', '', '', '2018-08-24 05:40:53', '2018-08-24 09:10:53', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/067d06bb27e4a0f734648781745f927a.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-08-24 05:40:54', '2018-08-24 09:10:54', '', '75aafeb712eeeaf455dbff4d35802c51', '', 'inherit', 'open', 'closed', '', '75aafeb712eeeaf455dbff4d35802c51', '', '', '2018-08-24 05:40:54', '2018-08-24 09:10:54', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/75aafeb712eeeaf455dbff4d35802c51.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-08-24 05:40:55', '2018-08-24 09:10:55', '', '75c4faf807ffa25461e9accd4c706ad8', '', 'inherit', 'open', 'closed', '', '75c4faf807ffa25461e9accd4c706ad8', '', '', '2018-08-24 05:40:55', '2018-08-24 09:10:55', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/75c4faf807ffa25461e9accd4c706ad8.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-08-24 05:40:56', '2018-08-24 09:10:56', '', '84eade67fceb7d0c732e49bcaaf9cabc', '', 'inherit', 'open', 'closed', '', '84eade67fceb7d0c732e49bcaaf9cabc', '', '', '2018-08-24 05:40:56', '2018-08-24 09:10:56', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/84eade67fceb7d0c732e49bcaaf9cabc.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-08-24 05:40:58', '2018-08-24 09:10:58', '', '158da1b90c35096788a356b914806a28', '', 'inherit', 'open', 'closed', '', '158da1b90c35096788a356b914806a28', '', '', '2018-08-24 05:40:58', '2018-08-24 09:10:58', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/158da1b90c35096788a356b914806a28.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-08-24 05:41:00', '2018-08-24 09:11:00', '', '493f6f5dabb226896e1ec5b310176ec7', '', 'inherit', 'open', 'closed', '', '493f6f5dabb226896e1ec5b310176ec7', '', '', '2018-08-24 05:41:00', '2018-08-24 09:11:00', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/493f6f5dabb226896e1ec5b310176ec7.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-08-24 05:41:01', '2018-08-24 09:11:01', '', '2849e8681fc0ce2b735ccef0f73ab46c', '', 'inherit', 'open', 'closed', '', '2849e8681fc0ce2b735ccef0f73ab46c', '', '', '2018-08-24 05:41:01', '2018-08-24 09:11:01', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/2849e8681fc0ce2b735ccef0f73ab46c.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-08-24 05:41:02', '2018-08-24 09:11:02', '', '8918edf7f5f89875bb5cd761a3a5bad9', '', 'inherit', 'open', 'closed', '', '8918edf7f5f89875bb5cd761a3a5bad9', '', '', '2018-08-24 05:41:02', '2018-08-24 09:11:02', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/8918edf7f5f89875bb5cd761a3a5bad9.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-08-24 05:41:04', '2018-08-24 09:11:04', '', '1553298f391a8a2e870284dc90adb328', '', 'inherit', 'open', 'closed', '', '1553298f391a8a2e870284dc90adb328', '', '', '2018-08-24 05:41:04', '2018-08-24 09:11:04', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/1553298f391a8a2e870284dc90adb328.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-08-24 05:41:06', '2018-08-24 09:11:06', '', '843401591cf81efdcc074e9269008339', '', 'inherit', 'open', 'closed', '', '843401591cf81efdcc074e9269008339', '', '', '2018-08-24 05:41:06', '2018-08-24 09:11:06', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/843401591cf81efdcc074e9269008339.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-24 05:41:07', '2018-08-24 09:11:07', '', '97773670688ea84ab31651bc6c0f1150', '', 'inherit', 'open', 'closed', '', '97773670688ea84ab31651bc6c0f1150', '', '', '2018-08-24 05:41:07', '2018-08-24 09:11:07', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/97773670688ea84ab31651bc6c0f1150.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-08-24 05:41:08', '2018-08-24 09:11:08', '', '8502310083919cb41e98aa3d151c8df0', '', 'inherit', 'open', 'closed', '', '8502310083919cb41e98aa3d151c8df0', '', '', '2018-08-24 05:41:08', '2018-08-24 09:11:08', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/8502310083919cb41e98aa3d151c8df0.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-08-24 05:41:09', '2018-08-24 09:11:09', '', 'a56f9b3590f9bff74807999935ff4b7b', '', 'inherit', 'open', 'closed', '', 'a56f9b3590f9bff74807999935ff4b7b', '', '', '2018-08-24 05:41:09', '2018-08-24 09:11:09', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/a56f9b3590f9bff74807999935ff4b7b.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-08-24 05:41:10', '2018-08-24 09:11:10', '', 'a312579ba01dfb1a23f01b300d61495d', '', 'inherit', 'open', 'closed', '', 'a312579ba01dfb1a23f01b300d61495d', '', '', '2018-08-24 05:41:10', '2018-08-24 09:11:10', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/a312579ba01dfb1a23f01b300d61495d.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-08-24 05:41:11', '2018-08-24 09:11:11', '', 'a407222b0e5b99b9c2a44ff88eee2de2', '', 'inherit', 'open', 'closed', '', 'a407222b0e5b99b9c2a44ff88eee2de2', '', '', '2018-08-24 05:41:11', '2018-08-24 09:11:11', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/a407222b0e5b99b9c2a44ff88eee2de2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-08-24 05:41:12', '2018-08-24 09:11:12', '', 'b418fa22c8fe588d786f60da0dee485e', '', 'inherit', 'open', 'closed', '', 'b418fa22c8fe588d786f60da0dee485e', '', '', '2018-08-24 05:41:12', '2018-08-24 09:11:12', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/b418fa22c8fe588d786f60da0dee485e.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-08-24 05:41:13', '2018-08-24 09:11:13', '', 'ba41b73822626824ae061f803ea10e8a', '', 'inherit', 'open', 'closed', '', 'ba41b73822626824ae061f803ea10e8a', '', '', '2018-08-24 05:41:13', '2018-08-24 09:11:13', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/ba41b73822626824ae061f803ea10e8a.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-08-24 05:41:14', '2018-08-24 09:11:14', '', 'bf85cbc1d9d2bb014b8839ac83305427', '', 'inherit', 'open', 'closed', '', 'bf85cbc1d9d2bb014b8839ac83305427', '', '', '2018-08-24 05:41:14', '2018-08-24 09:11:14', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/bf85cbc1d9d2bb014b8839ac83305427.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-08-24 05:41:15', '2018-08-24 09:11:15', '', 'c7a227b5b56f27391281f5894c65400e', '', 'inherit', 'open', 'closed', '', 'c7a227b5b56f27391281f5894c65400e', '', '', '2018-08-24 05:41:15', '2018-08-24 09:11:15', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/c7a227b5b56f27391281f5894c65400e.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-08-24 05:41:16', '2018-08-24 09:11:16', '', 'c405ded38d19eeaee640e52befc2ae04', '', 'inherit', 'open', 'closed', '', 'c405ded38d19eeaee640e52befc2ae04', '', '', '2018-08-24 05:41:16', '2018-08-24 09:11:16', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/c405ded38d19eeaee640e52befc2ae04.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-08-24 05:41:17', '2018-08-24 09:11:17', '', 'eb2d2674cfb895bf9a757b7c67d1e848', '', 'inherit', 'open', 'closed', '', 'eb2d2674cfb895bf9a757b7c67d1e848', '', '', '2018-08-24 05:41:17', '2018-08-24 09:11:17', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/eb2d2674cfb895bf9a757b7c67d1e848.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-08-24 05:41:18', '2018-08-24 09:11:18', '', 'eb4e1f14f44492c1f5c2471187d02761', '', 'inherit', 'open', 'closed', '', 'eb4e1f14f44492c1f5c2471187d02761', '', '', '2018-08-24 05:41:18', '2018-08-24 09:11:18', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/eb4e1f14f44492c1f5c2471187d02761.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-08-24 05:41:19', '2018-08-24 09:11:19', '', 'ec189c11beced5567f354e1eee0d7b5b', '', 'inherit', 'open', 'closed', '', 'ec189c11beced5567f354e1eee0d7b5b', '', '', '2018-08-24 05:41:19', '2018-08-24 09:11:19', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/ec189c11beced5567f354e1eee0d7b5b.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-08-24 05:41:21', '2018-08-24 09:11:21', '', 'edc64118e161d5bdf76b8eb2164acf54', '', 'inherit', 'open', 'closed', '', 'edc64118e161d5bdf76b8eb2164acf54', '', '', '2018-08-24 05:41:21', '2018-08-24 09:11:21', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/edc64118e161d5bdf76b8eb2164acf54.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-08-24 05:41:22', '2018-08-24 09:11:22', '', 'f5ba317fe5c7f865beaef33b83c69fd6', '', 'inherit', 'open', 'closed', '', 'f5ba317fe5c7f865beaef33b83c69fd6', '', '', '2018-08-24 05:41:22', '2018-08-24 09:11:22', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/f5ba317fe5c7f865beaef33b83c69fd6.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-08-24 05:41:23', '2018-08-24 09:11:23', '', 'f5317338d4cf578cad48de9f36d24dfd', '', 'inherit', 'open', 'closed', '', 'f5317338d4cf578cad48de9f36d24dfd', '', '', '2018-08-24 05:41:23', '2018-08-24 09:11:23', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/f5317338d4cf578cad48de9f36d24dfd.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-08-24 05:41:24', '2018-08-24 09:11:24', '', 'fa1760edc95aafb1bcd6917f869b295b', '', 'inherit', 'open', 'closed', '', 'fa1760edc95aafb1bcd6917f869b295b', '', '', '2018-08-24 05:41:24', '2018-08-24 09:11:24', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/fa1760edc95aafb1bcd6917f869b295b.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-08-24 05:41:25', '2018-08-24 09:11:25', '', 'fc3e01b524d1404b750e2253a2af5c72', '', 'inherit', 'open', 'closed', '', 'fc3e01b524d1404b750e2253a2af5c72', '', '', '2018-08-24 05:41:25', '2018-08-24 09:11:25', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/fc3e01b524d1404b750e2253a2af5c72.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-08-24 05:41:25', '2018-08-24 09:11:25', '', 'feefe77b136643e90c23efee3d1b6174', '', 'inherit', 'open', 'closed', '', 'feefe77b136643e90c23efee3d1b6174', '', '', '2018-08-24 05:41:25', '2018-08-24 09:11:25', '', 0, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/feefe77b136643e90c23efee3d1b6174.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-08-24 05:41:51', '2018-08-24 09:11:51', 'Trataremos de responder a todas tus consultas en el más breve de los tiempos. Antes de escribirnos por favor revisa con atención los post y comentarios. Si la respuesta a tu consulta se encuentra en los posteos o ya fue respondida a través de un comentario, probablemente tardaremos mucho en…responderte.\r\n\r\n<strong>1) Puedo hacer el trámite de postulación a WH a través de una empresa o asesor?</strong>\r\n\r\nLa postulación es un trámite personal. Los documentos que se requiere presentar también los tendrás que conseguir personalmente. ¿Quién mejor que Ud. podría completar un formulario con su propia información personal? Basta con que lea y <strong>entienda</strong> lo que lea.\r\n\r\n&nbsp;\r\n\r\n<strong>2) A quién debo presentar mis documentos para postular?</strong>\r\n\r\nA las respectivas embajadas o servicios de inmigración mediante los procesos o mecanismos que cada país establezca.\r\n\r\n&nbsp;\r\n\r\n<strong>3) www.workingholiday.cl consigue trabajos en el extranjero?</strong>\r\n\r\nNo. www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios working holiday que Chile mantiene con terceros países.\r\n\r\n&nbsp;\r\n\r\n<strong>4) www.workingholiday.cl vende programas de working holiday?</strong>\r\n\r\nNo. www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios working holiday que Chile mantiene con terceros países. Los convenios working holiday permiten postular a visas, no son programas turísticos ni de trabajos.\r\n\r\n&nbsp;\r\n\r\n<strong>5) Los programas working holiday aseguran trabajo, estadía y cursos de idioma?</strong>\r\n\r\nNo. Los convenios working holiday permiten postular a una <strong>visa de trabajo</strong> por determinado tiempo y con ciertas restricciones particulares para cada país de destino. Pasarlo bien, aprender un idioma, encontrar trabajo, comida y techo corren por cuenta de cada persona. Los convenios working holiday <strong>no son una beca</strong>, es simplemente una visa.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<strong>DISCLAIMER</strong>: www.workingholiday.cl solamente es un blog que publica información relacionada con los distintos convenios <em>working holiday</em> que Chile mantiene con terceros países. <strong>No representamos a ninguna organización pública ni privada</strong>. La información oficial de cada convenio <em>working holiday</em> se encuentra publicada en los sitios webs de cada embajada o servicio de inmigración respectivo.', 'Preguntas Frecuentes', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-24 05:41:51', '2018-08-24 09:11:51', '', 10, 'http://186.64.118.50/~feg7pablo/2018/08/24/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-08-24 05:46:57', '2018-08-24 09:16:57', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-08-24 05:46:57', '2018-08-24 09:16:57', '', 0, 'http://186.64.118.50/~feg7pablo/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-08-24 05:48:13', '2018-08-24 09:18:13', '{\n    \"wp_boilerplate-master::nav_menu_locations[header-menu]\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-24 09:18:13\"\n    },\n    \"wp_boilerplate-master::nav_menu_locations[footer-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-24 09:18:13\"\n    },\n    \"nav_menu[5]\": {\n        \"value\": {\n            \"name\": \"principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-24 09:18:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fa1cbbb4-d727-45fb-9021-55922b96d0a0', '', '', '2018-08-24 05:48:13', '2018-08-24 09:18:13', '', 0, 'http://186.64.118.50/~feg7pablo/2018/08/24/fa1cbbb4-d727-45fb-9021-55922b96d0a0/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-08-24 06:37:35', '2018-08-24 10:07:35', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\r\n\r\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\r\n\r\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\r\n\r\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\r\n\r\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\r\n\r\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\r\n\r\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\r\n\r\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\r\n\r\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\r\n\r\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\r\n\r\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>', 'Japón', '', 'publish', 'closed', 'closed', '', 'japon', '', '', '2018-08-24 10:16:26', '2018-08-24 13:46:26', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&#038;p=54', 0, 'paises_type', '', 0),
(73, 1, '2018-08-24 17:09:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-24 17:09:44', '0000-00-00 00:00:00', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=acf&p=73', 0, 'acf', '', 0),
(57, 1, '2018-08-24 09:47:46', '2018-08-24 13:17:46', 'Conoce las fechas postulación working holiday visa.\r\n<h4>Plazos de postulación y requisitos según país:</h4>\r\n<ul>\r\n 	<li><strong>Alemania</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/2015-requisitos-working-holiday-alemania\" target=\"_self\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Australia</strong>, <a href=\"https://www.workingholiday.cl/australia-whv-listado-de-documentos-para-postular\" target=\"_blank\" rel=\"noopener noreferrer\">2.000 visas/año</a>, disponibles hasta agotar stock, renovables cada 01/Jul. Ciclo 2017/2018, cerrado. Ciclo 2018/2019 recibe postulaciones a contar del 01/Jul/2018.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Austria:</strong> <a href=\"https://www.workingholiday.cl/austria-requisitos-postulacion/\" target=\"_blank\" rel=\"noopener\">24/Dic/2017</a>, aparentemente cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Canadá</strong>, <strong>ciclo 2018</strong>: 03/Nov/2017, inicio de <a href=\"https://www.workingholiday.cl/2018-pool-inscripcion-international-experience-canada/\" target=\"_blank\" rel=\"noopener noreferrer\">inscripción en el pool</a> de eventuales postulantes. Ciclo abierto hasta hasta agotar stock visas/año, renovables, usualmente, durante el último trimestre.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Corea del Sur</strong>, <a href=\"https://www.workingholiday.cl/inicio-acuerdo-working-holiday-chile-corea/\" target=\"_blank\" rel=\"noopener noreferrer\">100 visas/año</a>. Se desconoce fecha de renovación de cupos.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Dinamarca</strong>, <a href=\"https://www.workingholiday.cl/dinamarca-working-holiday-chile\" target=\"_blank\" rel=\"noopener noreferrer\">sin límite de cupos</a>.</li>\r\n</ul>\r\n<div>\r\n<ul>\r\n 	<li><strong>Francia</strong>, <a href=\"http://bit.ly/1NUDJ1y\" target=\"_blank\" rel=\"noopener noreferrer\">300 visas/año</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Hungría</strong>, <a href=\"https://www.workingholiday.cl/hungria-requisitos-visa-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas/año</a>, a contar del 11/Ago/2017.</li>\r\n</ul>\r\n<blockquote>Revisa: <a href=\"https://www.workingholiday.cl/puedo-postular-mas-una-wh-visa-simultaneamente/\" target=\"_blank\" rel=\"noopener\">¿A cuántos convenios puedo postular al mismo tiempo?</a></blockquote>\r\n<div>\r\n<ul>\r\n 	<li><strong>Irlanda</strong>, 14/Febrero/2018, características y requisitos del nuevo proceso <a href=\"https://www.workingholiday.cl/2018-irlanda-working-holiday/\" target=\"_blank\" rel=\"noopener\">aún por confirmar</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Japón</strong>, 23/Feb 2018, <a href=\"https://www.workingholiday.cl/requisitos-japon-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas para el 2018</a>. Actualización 11/Jun/2018: El consulado informa que aún quedan cupos. Por el momento, no se conoce fecha de renovación de cuota.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>New Zealand</strong>, Oct/2018, 940 visas . <a href=\"https://www.workingholiday.cl/new-zealand-working-holiday-proximo-ciclo-postulacion/\" target=\"_blank\" rel=\"noopener noreferrer\">Hay sólo un proceso de postulación por año</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Polonia</strong>, 200 visas/año, <a href=\"https://www.workingholiday.cl/polonia-requisitos/\" target=\"_blank\" rel=\"noopener\">recibiendo postulaciones</a> desde el 20/Nov/2017.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Portugal</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/portugal-requisitos/\" target=\"_blank\" rel=\"noopener\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>República Checa</strong>: <a href=\"https://www.workingholiday.cl/2016-working-holiday-republica-checa-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">200 visas/año</a> a partir de 01/Nov/2016.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suecia</strong>, <a href=\"https://www.workingholiday.cl/2016-working-holiday-suecia-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">convenio vigente</a>, cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Colombia, México, Perú</strong>: <a href=\"https://www.workingholiday.cl/vacaciones-y-trabajo-de-alianza-del-pacifico\" target=\"_blank\" rel=\"noopener noreferrer\">Alianza del Pacífico</a></li>\r\n</ul>\r\n<ul>\r\n 	<li><a href=\"https://www.workingholiday.cl/otros-convenios-wh-firmados\" target=\"_blank\" rel=\"noopener noreferrer\">Otros convenios informados en prensa</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suiza</strong>: <a href=\"https://www.workingholiday.cl/suiza-chile-trainee-exchange-agreement\" target=\"_blank\" rel=\"noopener noreferrer\">Trainee Exchange Agreement</a></li>\r\n</ul>\r\n<div>OBS: Este post fue modificado el día 31/Ene/2018. Se <strong>sugiere expresamente</strong> que Ud. corroborela información con las respectivas fuentes oficiales (sitios webs de los servicios de inmigración o embajadas en cuestión) ya que es altamente probable que algunas fechas y/o procesos de postulación pudieran ser modificados.</div>', 'Fechas y Visas', '', 'publish', 'closed', 'closed', '', 'fechas-postulacion-working-holiday-visa', '', '', '2018-08-24 09:51:32', '2018-08-24 13:21:32', '', 0, 'http://186.64.118.50/~feg7pablo/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-08-24 09:47:26', '2018-08-24 13:17:26', '', 'passport', '', 'inherit', 'open', 'closed', '', 'passport', '', '', '2018-08-24 09:47:26', '2018-08-24 13:17:26', '', 57, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/passport.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-08-24 09:47:46', '2018-08-24 13:17:46', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-08-24 09:47:46', '2018-08-24 13:17:46', '', 0, 'http://186.64.118.50/~feg7pablo/2018/08/24/59/', 2, 'nav_menu_item', '', 0),
(60, 1, '2018-08-24 09:47:46', '2018-08-24 13:17:46', 'Conoce las fechas postulación working holiday visa.\r\n<h4>Plazos de postulación y requisitos según país:</h4>\r\n<ul>\r\n 	<li><strong>Alemania</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/2015-requisitos-working-holiday-alemania\" target=\"_self\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Australia</strong>, <a href=\"https://www.workingholiday.cl/australia-whv-listado-de-documentos-para-postular\" target=\"_blank\" rel=\"noopener noreferrer\">2.000 visas/año</a>, disponibles hasta agotar stock, renovables cada 01/Jul. Ciclo 2017/2018, cerrado. Ciclo 2018/2019 recibe postulaciones a contar del 01/Jul/2018.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Austria:</strong> <a href=\"https://www.workingholiday.cl/austria-requisitos-postulacion/\" target=\"_blank\" rel=\"noopener\">24/Dic/2017</a>, aparentemente cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Canadá</strong>, <strong>ciclo 2018</strong>: 03/Nov/2017, inicio de <a href=\"https://www.workingholiday.cl/2018-pool-inscripcion-international-experience-canada/\" target=\"_blank\" rel=\"noopener noreferrer\">inscripción en el pool</a> de eventuales postulantes. Ciclo abierto hasta hasta agotar stock visas/año, renovables, usualmente, durante el último trimestre.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Corea del Sur</strong>, <a href=\"https://www.workingholiday.cl/inicio-acuerdo-working-holiday-chile-corea/\" target=\"_blank\" rel=\"noopener noreferrer\">100 visas/año</a>. Se desconoce fecha de renovación de cupos.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Dinamarca</strong>, <a href=\"https://www.workingholiday.cl/dinamarca-working-holiday-chile\" target=\"_blank\" rel=\"noopener noreferrer\">sin límite de cupos</a>.</li>\r\n</ul>\r\n<div>\r\n<ul>\r\n 	<li><strong>Francia</strong>, <a href=\"http://bit.ly/1NUDJ1y\" target=\"_blank\" rel=\"noopener noreferrer\">300 visas/año</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Hungría</strong>, <a href=\"https://www.workingholiday.cl/hungria-requisitos-visa-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas/año</a>, a contar del 11/Ago/2017.</li>\r\n</ul>\r\n<blockquote>Revisa: <a href=\"https://www.workingholiday.cl/puedo-postular-mas-una-wh-visa-simultaneamente/\" target=\"_blank\" rel=\"noopener\">¿A cuántos convenios puedo postular al mismo tiempo?</a></blockquote>\r\n<div>\r\n<ul>\r\n 	<li><strong>Irlanda</strong>, 14/Febrero/2018, características y requisitos del nuevo proceso <a href=\"https://www.workingholiday.cl/2018-irlanda-working-holiday/\" target=\"_blank\" rel=\"noopener\">aún por confirmar</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Japón</strong>, 23/Feb 2018, <a href=\"https://www.workingholiday.cl/requisitos-japon-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas para el 2018</a>. Actualización 11/Jun/2018: El consulado informa que aún quedan cupos. Por el momento, no se conoce fecha de renovación de cuota.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>New Zealand</strong>, Oct/2018, 940 visas . <a href=\"https://www.workingholiday.cl/new-zealand-working-holiday-proximo-ciclo-postulacion/\" target=\"_blank\" rel=\"noopener noreferrer\">Hay sólo un proceso de postulación por año</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Polonia</strong>, 200 visas/año, <a href=\"https://www.workingholiday.cl/polonia-requisitos/\" target=\"_blank\" rel=\"noopener\">recibiendo postulaciones</a> desde el 20/Nov/2017.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Portugal</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/portugal-requisitos/\" target=\"_blank\" rel=\"noopener\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>República Checa</strong>: <a href=\"https://www.workingholiday.cl/2016-working-holiday-republica-checa-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">200 visas/año</a> a partir de 01/Nov/2016.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suecia</strong>, <a href=\"https://www.workingholiday.cl/2016-working-holiday-suecia-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">convenio vigente</a>, cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Colombia, México, Perú</strong>: <a href=\"https://www.workingholiday.cl/vacaciones-y-trabajo-de-alianza-del-pacifico\" target=\"_blank\" rel=\"noopener noreferrer\">Alianza del Pacífico</a></li>\r\n</ul>\r\n<ul>\r\n 	<li><a href=\"https://www.workingholiday.cl/otros-convenios-wh-firmados\" target=\"_blank\" rel=\"noopener noreferrer\">Otros convenios informados en prensa</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suiza</strong>: <a href=\"https://www.workingholiday.cl/suiza-chile-trainee-exchange-agreement\" target=\"_blank\" rel=\"noopener noreferrer\">Trainee Exchange Agreement</a></li>\r\n</ul>\r\n<div>OBS: Este post fue modificado el día 31/Ene/2018. Se <strong>sugiere expresamente</strong> que Ud. corroborela información con las respectivas fuentes oficiales (sitios webs de los servicios de inmigración o embajadas en cuestión) ya que es altamente probable que algunas fechas y/o procesos de postulación pudieran ser modificados.</div>', 'Fechas Postulación Working Holiday Visa', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-08-24 09:47:46', '2018-08-24 13:17:46', '', 57, 'http://186.64.118.50/~feg7pablo/2018/08/24/57-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-24 09:51:32', '2018-08-24 13:21:32', 'Conoce las fechas postulación working holiday visa.\r\n<h4>Plazos de postulación y requisitos según país:</h4>\r\n<ul>\r\n 	<li><strong>Alemania</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/2015-requisitos-working-holiday-alemania\" target=\"_self\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Australia</strong>, <a href=\"https://www.workingholiday.cl/australia-whv-listado-de-documentos-para-postular\" target=\"_blank\" rel=\"noopener noreferrer\">2.000 visas/año</a>, disponibles hasta agotar stock, renovables cada 01/Jul. Ciclo 2017/2018, cerrado. Ciclo 2018/2019 recibe postulaciones a contar del 01/Jul/2018.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Austria:</strong> <a href=\"https://www.workingholiday.cl/austria-requisitos-postulacion/\" target=\"_blank\" rel=\"noopener\">24/Dic/2017</a>, aparentemente cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Canadá</strong>, <strong>ciclo 2018</strong>: 03/Nov/2017, inicio de <a href=\"https://www.workingholiday.cl/2018-pool-inscripcion-international-experience-canada/\" target=\"_blank\" rel=\"noopener noreferrer\">inscripción en el pool</a> de eventuales postulantes. Ciclo abierto hasta hasta agotar stock visas/año, renovables, usualmente, durante el último trimestre.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Corea del Sur</strong>, <a href=\"https://www.workingholiday.cl/inicio-acuerdo-working-holiday-chile-corea/\" target=\"_blank\" rel=\"noopener noreferrer\">100 visas/año</a>. Se desconoce fecha de renovación de cupos.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Dinamarca</strong>, <a href=\"https://www.workingholiday.cl/dinamarca-working-holiday-chile\" target=\"_blank\" rel=\"noopener noreferrer\">sin límite de cupos</a>.</li>\r\n</ul>\r\n<div>\r\n<ul>\r\n 	<li><strong>Francia</strong>, <a href=\"http://bit.ly/1NUDJ1y\" target=\"_blank\" rel=\"noopener noreferrer\">300 visas/año</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Hungría</strong>, <a href=\"https://www.workingholiday.cl/hungria-requisitos-visa-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas/año</a>, a contar del 11/Ago/2017.</li>\r\n</ul>\r\n<blockquote>Revisa: <a href=\"https://www.workingholiday.cl/puedo-postular-mas-una-wh-visa-simultaneamente/\" target=\"_blank\" rel=\"noopener\">¿A cuántos convenios puedo postular al mismo tiempo?</a></blockquote>\r\n<div>\r\n<ul>\r\n 	<li><strong>Irlanda</strong>, 14/Febrero/2018, características y requisitos del nuevo proceso <a href=\"https://www.workingholiday.cl/2018-irlanda-working-holiday/\" target=\"_blank\" rel=\"noopener\">aún por confirmar</a>.</li>\r\n</ul>\r\n</div>\r\n<ul>\r\n 	<li><strong>Japón</strong>, 23/Feb 2018, <a href=\"https://www.workingholiday.cl/requisitos-japon-working-holiday/\" target=\"_blank\" rel=\"noopener\">200 visas para el 2018</a>. Actualización 11/Jun/2018: El consulado informa que aún quedan cupos. Por el momento, no se conoce fecha de renovación de cuota.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>New Zealand</strong>, Oct/2018, 940 visas . <a href=\"https://www.workingholiday.cl/new-zealand-working-holiday-proximo-ciclo-postulacion/\" target=\"_blank\" rel=\"noopener noreferrer\">Hay sólo un proceso de postulación por año</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Polonia</strong>, 200 visas/año, <a href=\"https://www.workingholiday.cl/polonia-requisitos/\" target=\"_blank\" rel=\"noopener\">recibiendo postulaciones</a> desde el 20/Nov/2017.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Portugal</strong>, sin límite de cupos, se <a href=\"https://www.workingholiday.cl/portugal-requisitos/\" target=\"_blank\" rel=\"noopener\">puede postular</a> en cualquier momento.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>República Checa</strong>: <a href=\"https://www.workingholiday.cl/2016-working-holiday-republica-checa-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">200 visas/año</a> a partir de 01/Nov/2016.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suecia</strong>, <a href=\"https://www.workingholiday.cl/2016-working-holiday-suecia-chile/\" target=\"_blank\" rel=\"noopener noreferrer\">convenio vigente</a>, cupos ilimitados.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Colombia, México, Perú</strong>: <a href=\"https://www.workingholiday.cl/vacaciones-y-trabajo-de-alianza-del-pacifico\" target=\"_blank\" rel=\"noopener noreferrer\">Alianza del Pacífico</a></li>\r\n</ul>\r\n<ul>\r\n 	<li><a href=\"https://www.workingholiday.cl/otros-convenios-wh-firmados\" target=\"_blank\" rel=\"noopener noreferrer\">Otros convenios informados en prensa</a>.</li>\r\n</ul>\r\n<ul>\r\n 	<li><strong>Suiza</strong>: <a href=\"https://www.workingholiday.cl/suiza-chile-trainee-exchange-agreement\" target=\"_blank\" rel=\"noopener noreferrer\">Trainee Exchange Agreement</a></li>\r\n</ul>\r\n<div>OBS: Este post fue modificado el día 31/Ene/2018. Se <strong>sugiere expresamente</strong> que Ud. corroborela información con las respectivas fuentes oficiales (sitios webs de los servicios de inmigración o embajadas en cuestión) ya que es altamente probable que algunas fechas y/o procesos de postulación pudieran ser modificados.</div>', 'Fechas y Visas', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-08-24 09:51:32', '2018-08-24 13:21:32', '', 57, 'http://186.64.118.50/~feg7pablo/2018/08/24/57-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-24 09:52:47', '2018-08-24 13:22:47', '', 'alemania', '', 'inherit', 'open', 'closed', '', 'alemania', '', '', '2018-08-24 09:52:47', '2018-08-24 13:22:47', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/alemania.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-08-24 09:52:48', '2018-08-24 13:22:48', '', 'australia', '', 'inherit', 'open', 'closed', '', 'australia', '', '', '2018-08-24 09:52:48', '2018-08-24 13:22:48', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/australia.jpeg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-08-24 09:52:48', '2018-08-24 13:22:48', '', 'ireland', '', 'inherit', 'open', 'closed', '', 'ireland', '', '', '2018-08-24 09:52:48', '2018-08-24 13:22:48', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/ireland.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-08-24 09:52:49', '2018-08-24 13:22:49', '', 'japon', '', 'inherit', 'open', 'closed', '', 'japon-2', '', '', '2018-08-24 09:52:49', '2018-08-24 13:22:49', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/japon.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-08-24 09:52:50', '2018-08-24 13:22:50', '', 'korea', '', 'inherit', 'open', 'closed', '', 'korea', '', '', '2018-08-24 09:52:50', '2018-08-24 13:22:50', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/korea.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-08-24 09:52:52', '2018-08-24 13:22:52', '', 'new-zeland', '', 'inherit', 'open', 'closed', '', 'new-zeland', '', '', '2018-08-24 09:52:52', '2018-08-24 13:22:52', '', 54, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/new-zeland.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `df_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2018-08-24 09:55:09', '2018-08-24 13:25:09', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\n\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\n\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\n\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\n\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\n\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\n\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\n\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\n\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\n\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\n\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>', 'Japón', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2018-08-24 09:55:09', '2018-08-24 13:25:09', '', 54, 'http://186.64.118.50/~feg7pablo/2018/08/24/54-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2018-08-24 10:03:47', '2018-08-24 13:33:47', 'A contar del ciclo de postulación que se inicia el 01/Jul/2018, la forma de pago del arancel de postulación se realiza a través del sitio web de Immigration. Primer paso: crear un <a href=\"http://bit.ly/2Hqm19U\" target=\"_blank\" rel=\"nofollow noopener\">Immiaccount</a>. Segundo paso: pagar arancel de postulación WH 462. Tercer paso: Imprimir comprobante y adjuntar con los documentos físicos para la postulación.\r\n\r\n<code><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FAusEmbCL%2Fposts%2F2268964126463355%3A0&amp;width=500\" width=\"500\" height=\"675\" frameborder=\"0\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe></code>\r\n<h5></h5>\r\n<h4><strong>2.000 visas visas/año para postulantes con </strong><strong>pasaporte Chileno disponibles hasta agotar stock. </strong><strong>Ciclo 2017-2018, cerrado. Ciclo 2018-2019 recibirá postulaciones a partir del </strong><strong>01/Jul/2018.</strong></h4>\r\n<img class=\"size-full wp-image-2399 aligncenter\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=740%2C200&amp;ssl=1\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?w=740&amp;ssl=1 740w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=300%2C81&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=204%2C55&amp;ssl=1 204w\" alt=\"\" width=\"631\" height=\"171\" />\r\n\r\n<strong>Requisito de edad</strong>: Mientras no haya información de fuente oficial, todo sigue como se conoce: <strong>18 años ≤ edad*&lt; 31 años</strong>. Fuentes oficiales para el <strong>proceso de postulación</strong>: <em>website</em> de la Embajada de Australia en Chile o <em>website</em> del <em>Department of Immigration</em> (información al 29/Abr/2018). (*): edad del postulante al momento de recepción de documentación.\r\n<h2>Requisitos Australia WHV ciclo 2018/2019</h2>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2012%2F07%2F2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2012/07/2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf\">Descargar (PDF, 389KB)</a></p>\r\n\r\n<h2>¿Cuál es el checklist de documentos que se debe presentar a la Embajada para la postulación?</h2>\r\n<ul>\r\n 	<li><strong>Listado de documentos</strong>, según fuente oficial al 02/May/2018: <a href=\"http://bit.ly/2rhncy8\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/checklistworkandholiday.html </a></li>\r\n 	<li>Traducidos según el criterio indicado, al 02/May/2018, en:  <a href=\"http://bit.ly/2u2p8xs\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/WH-FAQ.html</a></li>\r\n 	<li>Más información referente a la traducción realizada por el Min. RR.EE.: <a href=\"http://bit.ly/2JMAF89\" target=\"_blank\" rel=\"nofollow noopener\">www.chileatiende.gob.cl/fichas/2356-traduccion-de-documentos</a></li>\r\n</ul>\r\n<strong>¿Cómo postulo?</strong> La solicitud debe ser enviada <strong>únicamente</strong> por correo/courier a la siguiente dirección:\r\n\r\n<em>Embajada de Australia</em>\r\n<strong>Sección de Visas</strong>\r\nIsidora Goyenechea 3621\r\nTorre B – Piso 12\r\nLas Condes\r\nSantiago, Chile\r\n\r\n<strong>Si usted es ciudadano chileno y se encuentra en otro país que no sea Australia</strong>, debe enviar su solicitud a la Sección de Visas de la Embajada de Australia en Santiago, Chile.\r\n\r\n<strong>¿Dónde debo estar al momento de postular?</strong>\r\n<ul>\r\n 	<li>Primera visa Work and Holiday 462: <strong>Debe estar fuera de Australia.</strong></li>\r\n 	<li>Segunda visa Work and Holiday 462: Si postula en Australia, debe estar en Australia en el momento que la visa es otorgada. Si postula fuera de Australia, debe estar fuera de Australia en el momento que la visa es otorgada.</li>\r\n</ul>\r\n<strong>¿Cuantos cupos hay disponibles?</strong>\r\n\r\nCupo anual de visas Work and Holiday para postulantes con pasaporte Chileno: 2,000 visas/año a partir del 01/Jul/2018, disponibles hasta agotar stock, renovables cada 01/Jul\r\n\r\nNinguna solicitud será aprobada una vez que se alcance el límite de cupos disponibles y deberá esperar hasta el año siguiente para presentar una solicitud.\r\n\r\nNo hay límite de cupos para la <a href=\"https://www.workingholiday.cl/australia-segunda-visa-work-and-holiday/\" target=\"_blank\" rel=\"noopener noreferrer\">segunda visa</a> Work and Holiday.\r\n\r\n<strong>¿Cuáles son los requisitos de salud?</strong> Como ciudadano chileno, normalmente no es necesario que se realice un examen médico, a menos que haya pasado más de 3 meses consecutivos en otro país en los últimos 5 años o si “<em>special significance</em> (especial importancia)” aplica en su caso. Por favor verifique <a href=\"http://bit.ly/1Cibl58\" target=\"_blank\" rel=\"noopener noreferrer\">aquí</a> (información sólo disponible en inglés). En caso que usted requiera examen médico, se solicitará una vez que su solicitud haya sido pre-evaluada.\r\n\r\n<a href=\"http://bit.ly/OEkEo2\"><img class=\"alignnone size-full wp-image-1640\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=728%2C90&amp;ssl=1\" sizes=\"(max-width: 728px) 100vw, 728px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?w=728&amp;ssl=1 728w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=300%2C37&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=445%2C55&amp;ssl=1 445w\" alt=\"Seguro working holiday\" width=\"631\" height=\"78\" /></a>\r\n\r\nFuente: <a href=\"http://bit.ly/2se4aXP\" target=\"_blank\" rel=\"noopener\">www.chile.embassy.gov.au</a>\r\n\r\nMás info: <a href=\"http://www.border.gov.au/\" target=\"_blank\" rel=\"noopener noreferrer\">www.border.gov.au</a>', 'Australia', '', 'publish', 'closed', 'closed', '', 'australia', '', '', '2018-08-24 10:16:48', '2018-08-24 13:46:48', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&#038;p=69', 0, 'paises_type', '', 0),
(70, 1, '2018-08-24 10:16:06', '2018-08-24 13:46:06', '<img class=\"alignnone\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/02/200x120_bandera_Alemania.png?resize=50%2C30\" alt=\"working holiday alemania 200x120_bandera_Alemania\" width=\"50\" height=\"30\" />Requisitos para postular a una visa working holiday en Alemania.\r\n<h2>Working Holiday Alemania</h2>\r\n<h4><strong>Actualizado el 04/Ago/2018</strong></h4>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2015%2F03%2F2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2015/03/2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf\">Descargar (PDF, 163KB)</a></p>\r\nFuente: <a title=\"Requisitos Alemania Working Holiday Pasaporte de Chile\" href=\"http://bit.ly/2M34upx\" target=\"_blank\" rel=\"nofollow noopener\">https://santiago.diplo.de/cl-es/</a>\r\n\r\nLa postulación a esta visa puede realizarse en cualquier embajada o consulado de Alemania. Se sugiere revisar los respectivos sitios webs para conocer sobre el sistema de citas para presentar solicitud.', 'Alemania', '', 'publish', 'closed', 'closed', '', 'alemania', '', '', '2018-08-24 10:16:06', '2018-08-24 13:46:06', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&#038;p=70', 0, 'paises_type', '', 0),
(71, 1, '2018-08-24 16:58:11', '2018-08-24 20:28:11', '2018 International Experience Canada: Con fecha 03/Nov/2017 el servicio de inmigración informó sobre el proceso de postulación para el ciclo <strong>2018</strong> del programa <em>International Experience Canada</em>.\r\n\r\nThe International Experience Canada (IEC) online application process involves various stages. The graphic “IEC 2018 Online Application Process for Applicants” illustrates all the stages involved in the process from start to finish. It features an illustration of a male applicant with a pathway ahead of him, that demonstrates and explains the different stages and the steps applicants must take to complete the application process.\r\n<blockquote><a title=\"IECanada – Cuánto tarda el proceso?\" href=\"https://www.workingholiday.cl/iecanada-cuanto-tarda-el-proceso/\" target=\"_blank\" rel=\"noopener\">Conoce cuánto podría tardar el proceso de postulación</a></blockquote>\r\nThe first section of the process is “IEC Eligibility Criteria”. The path starts with a young man and the first instructions he receives are “Complete the <a href=\"http://www.cic.gc.ca/ctc-vac/cometocanada.asp\" target=\"_blank\" rel=\"noopener\"><em>Come to Canada</em></a> questionnaire, and get your personal reference code”.\r\n\r\nThis is followed by a box “Use your personal reference code to <strong>create <a href=\"http://www.cic.gc.ca/english/e-services/account.asp\" target=\"_blank\" rel=\"noopener\">your account</a></strong>”, and then “Complete the remaining fields in the IEC profile builder”.\r\n\r\nWe now move further down the path into the “Profile submission to IEC Pool” section. The next step is to “Submit your profile and choose the IEC pools you want to be in”.\r\n\r\n<a href=\"http://bit.ly/OEkEo2\"><img class=\"alignnone wp-image-1640 size-full\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=728%2C90&amp;ssl=1\" sizes=\"(max-width: 728px) 100vw, 728px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?w=728&amp;ssl=1 728w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=300%2C37&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=445%2C55&amp;ssl=1 445w\" alt=\"2018 International Experience Canada Seguro working holiday\" width=\"631\" height=\"78\" /></a>\r\n\r\nOn the top right corner, three groups of people are gathered. The question “What is a pool?” appears on top of them and the answer underneath is “A group of pre-registered eligible candidates who have created and submitted their profile to one or more category under IEC”.\r\n<h4>Diagrama del proceso de postulación – 2018 International Experience Canada</h4>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2017%2F11%2F2018-online-application-IEC-Canada.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2017/11/2018-online-application-IEC-Canada.pdf\">Descargar (PDF, 314KB)</a></p>\r\nOnce this has been completed, the path is blocked by a stop sign and an envelope beside it which has a warning sign on top of it. It signifies that, at that stage, applicants have to wait to receive an Invitation to Apply for a work permit via their account.\r\n\r\nThe box after the stop sign and envelop indicates that “If you receive an invitation to apply via your account, you will have 10 days to start your application or to decline the invitation. If you accept, click the “Start Application” button in your account to start the work permit application process”. The bubble immediately after that contains a note indicating that “After you press the button ‘Start Application’ in your account, you have 20 days from that day, regardless of whether you accept on day 1 or 10, to complete, pay and submit the work permit application”.\r\n\r\nWe now move further down the path into the “Work Permit Application” section. The first stage in this section contains an illustration of an older man representing an employer. He is looking at some paperwork on a desk and beside him is a box which is an important note that states “Young Pro and Coop categories: <strong>Before</strong> your 20 days expire, your employer needs to pay the C$230 Employer Compliance Fee through the <a href=\"http://www.cic.gc.ca/english/e-services/employer-portal.asp\" target=\"_blank\" rel=\"noopener\">Employer Portal</a>”.\r\n\r\nThen the path moves forward to the “Payment &amp; Required Documents” section. The first box is an important note with a warning sign on it. It states “Ask your employer to send you the offer of employment number they will get after they have paid their fees. You need this number to apply for your work permit”. The instruction provided in the next bubble is “Upload all supporting documents, including police and medical exam certificates, if applicable” and is followed by another important note with a warning sign on it that states “If you do not have the supporting documents, you can upload proof that you have applied to undertake a medical exam and that a police certificate request has been sent”. The last box in this section informs applicants to “Pay your participation fee of C$150 with a credit card through the online payment system in your account. <strong>Working Holiday category</strong>: pay your open work permit holder fee of C$100 at this time as well”.\r\n\r\nThe Payment &amp; Required Document section has now been completed and we progress down the path to the section entitled “IEC and Work Permit Assessment”. In that section, the first box with the title “Temporary Work Permit Application Assessment” is positioned under the illustration of a young woman representing a processing officer. Included in this box is a clock symbol with the text “Day 1” next to it. “Day 1” indicates that this is the first day, out of an 8 weeks process, that IEC begins to process your application. Continuing the path down the IEC and Work Permit Assessment section, the next box advises the applicant that “IRCC may ask you to provide additional documents”, followed by another box with the advice warning applicants that “This is your last chance to withdraw from IEC and obtain refunds (participation fee, open work permit holder fee, employer compliance fee)”.\r\n\r\nThe last section on the path is entitled “Welcome to Canada!” and contains only one box with an envelope which states “An IRCC letter of introduction (LOI) will be sent to your account. The official name of the document is <em>Port of Entry (POE) Introduction Letter</em>”. Also included in this box is a clock symbol with the text “Day 56” next to it. “Day 56” indicates that this is the last day, out of an 8 weeks process.\r\n\r\nWe recommend referring to this guide throughout the application process in order to better understand what stage you are at and what stages you still have to complete.\r\n\r\n<strong>Fuente</strong>: <a href=\"http://www.cic.gc.ca/english/work/iec/process-overview.asp\" target=\"_blank\" rel=\"noopener\">www.cic.gc.ca/english/work/iec/process-overview.asp</a>\r\n\r\n<strong>PS</strong>: Se ha publicado copia fiel del original. No se traduce con el objeto de que<strong> cada lector sea responsable de lo que comprenda del texto</strong>. Información también disponible en <a href=\"http://www.cic.gc.ca/francais/travailler/eic/apercu-procedure.asp\" target=\"_blank\" rel=\"noopener\">Francés</a>.', 'Canada', '', 'publish', 'closed', 'closed', '', 'canada', '', '', '2018-08-24 16:58:11', '2018-08-24 20:28:11', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&#038;p=71', 0, 'paises_type', '', 0),
(72, 1, '2018-08-24 16:57:08', '2018-08-24 20:27:08', '', 'canada', '', 'inherit', 'open', 'closed', '', 'canada', '', '', '2018-08-24 16:57:08', '2018-08-24 20:27:08', '', 71, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/canada.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-08-24 17:12:26', '2018-08-24 20:42:26', '', 'Paises', '', 'publish', 'closed', 'closed', '', 'acf_paises', '', '', '2018-08-24 17:16:15', '2018-08-24 20:46:15', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=acf&#038;p=74', 0, 'acf', '', 0),
(75, 1, '2018-08-24 17:14:40', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-24 17:14:40', '0000-00-00 00:00:00', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&p=75', 0, 'paises_type', '', 0),
(76, 1, '2018-08-24 17:15:05', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-24 17:15:05', '0000-00-00 00:00:00', '', 0, 'http://186.64.118.50/~feg7pablo/?post_type=paises_type&p=76', 0, 'paises_type', '', 0),
(77, 1, '2018-08-24 18:29:28', '2018-08-24 21:59:28', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\r\n\r\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\r\n\r\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\r\n\r\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\r\n\r\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\r\n\r\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\r\n\r\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\r\n\r\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\r\n\r\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\r\n\r\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\r\n\r\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery ids=\"84,86,87,88,89,90,91,92,93,94\" orderby=\"rand\"]', 'Japon', '', 'publish', 'open', 'open', '', 'japon', '', '', '2018-08-24 18:44:32', '2018-08-24 22:14:32', '', 0, 'http://186.64.118.50/~feg7pablo/?p=77', 0, 'post', '', 0),
(78, 1, '2018-08-24 18:29:28', '2018-08-24 21:59:28', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\r\n\r\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\r\n\r\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\r\n\r\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\r\n\r\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\r\n\r\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\r\n\r\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\r\n\r\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\r\n\r\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\r\n\r\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\r\n\r\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>', 'Japon', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-08-24 18:29:28', '2018-08-24 21:59:28', '', 77, 'http://186.64.118.50/~feg7pablo/2018/08/24/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-08-24 18:32:59', '2018-08-24 22:02:59', '<img class=\"alignnone\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/02/200x120_bandera_Alemania.png?resize=50%2C30\" alt=\"working holiday alemania 200x120_bandera_Alemania\" width=\"50\" height=\"30\" />Requisitos para postular a una visa working holiday en Alemania.\r\n<h2>Working Holiday Alemania</h2>\r\n<h4><strong>Actualizado el 04/Ago/2018</strong></h4>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2015%2F03%2F2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2015/03/2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf\">Descargar (PDF, 163KB)</a></p>\r\nFuente: <a title=\"Requisitos Alemania Working Holiday Pasaporte de Chile\" href=\"http://bit.ly/2M34upx\" target=\"_blank\" rel=\"nofollow noopener\">https://santiago.diplo.de/cl-es/</a>\r\n\r\nLa postulación a esta visa puede realizarse en cualquier embajada o consulado de Alemania. Se sugiere revisar los respectivos sitios webs para conocer sobre el sistema de citas para presentar solicitud.', 'Alemania', '', 'publish', 'open', 'open', '', 'alemania', '', '', '2018-08-24 18:32:59', '2018-08-24 22:02:59', '', 0, 'http://186.64.118.50/~feg7pablo/?p=79', 0, 'post', '', 0),
(80, 1, '2018-08-24 18:32:59', '2018-08-24 22:02:59', '<img class=\"alignnone\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/02/200x120_bandera_Alemania.png?resize=50%2C30\" alt=\"working holiday alemania 200x120_bandera_Alemania\" width=\"50\" height=\"30\" />Requisitos para postular a una visa working holiday en Alemania.\r\n<h2>Working Holiday Alemania</h2>\r\n<h4><strong>Actualizado el 04/Ago/2018</strong></h4>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2015%2F03%2F2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2015/03/2018-Requisitos-Visa-Working-Holiday-Alemania-Chile.pdf\">Descargar (PDF, 163KB)</a></p>\r\nFuente: <a title=\"Requisitos Alemania Working Holiday Pasaporte de Chile\" href=\"http://bit.ly/2M34upx\" target=\"_blank\" rel=\"nofollow noopener\">https://santiago.diplo.de/cl-es/</a>\r\n\r\nLa postulación a esta visa puede realizarse en cualquier embajada o consulado de Alemania. Se sugiere revisar los respectivos sitios webs para conocer sobre el sistema de citas para presentar solicitud.', 'Alemania', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-08-24 18:32:59', '2018-08-24 22:02:59', '', 79, 'http://186.64.118.50/~feg7pablo/2018/08/24/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-08-24 18:35:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-24 18:35:21', '0000-00-00 00:00:00', '', 0, 'http://186.64.118.50/~feg7pablo/?p=81', 0, 'post', '', 0),
(82, 1, '2018-08-24 18:39:21', '2018-08-24 22:09:21', 'A contar del ciclo de postulación que se inicia el 01/Jul/2018, la forma de pago del arancel de postulación se realiza a través del sitio web de Immigration. Primer paso: crear un <a href=\"http://bit.ly/2Hqm19U\" target=\"_blank\" rel=\"nofollow noopener\">Immiaccount</a>. Segundo paso: pagar arancel de postulación WH 462. Tercer paso: Imprimir comprobante y adjuntar con los documentos físicos para la postulación.\r\n\r\n<code><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FAusEmbCL%2Fposts%2F2268964126463355%3A0&amp;width=500\" width=\"500\" height=\"675\" frameborder=\"0\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe></code>\r\n<h5></h5>\r\n<h4><strong>2.000 visas visas/año para postulantes con </strong><strong>pasaporte Chileno disponibles hasta agotar stock. </strong><strong>Ciclo 2017-2018, cerrado. Ciclo 2018-2019 recibirá postulaciones a partir del </strong><strong>01/Jul/2018.</strong></h4>\r\n<img class=\"size-full wp-image-2399 aligncenter\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=740%2C200&amp;ssl=1\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?w=740&amp;ssl=1 740w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=300%2C81&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=204%2C55&amp;ssl=1 204w\" alt=\"\" width=\"631\" height=\"171\" />\r\n\r\n<strong>Requisito de edad</strong>: Mientras no haya información de fuente oficial, todo sigue como se conoce: <strong>18 años ≤ edad*&lt; 31 años</strong>. Fuentes oficiales para el <strong>proceso de postulación</strong>: <em>website</em> de la Embajada de Australia en Chile o <em>website</em> del <em>Department of Immigration</em> (información al 29/Abr/2018). (*): edad del postulante al momento de recepción de documentación.\r\n<h2>Requisitos Australia WHV ciclo 2018/2019</h2>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2012%2F07%2F2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2012/07/2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf\">Descargar (PDF, 389KB)</a></p>\r\n\r\n<h2>¿Cuál es el checklist de documentos que se debe presentar a la Embajada para la postulación?</h2>\r\n<ul>\r\n 	<li><strong>Listado de documentos</strong>, según fuente oficial al 02/May/2018: <a href=\"http://bit.ly/2rhncy8\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/checklistworkandholiday.html </a></li>\r\n 	<li>Traducidos según el criterio indicado, al 02/May/2018, en:  <a href=\"http://bit.ly/2u2p8xs\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/WH-FAQ.html</a></li>\r\n 	<li>Más información referente a la traducción realizada por el Min. RR.EE.: <a href=\"http://bit.ly/2JMAF89\" target=\"_blank\" rel=\"nofollow noopener\">www.chileatiende.gob.cl/fichas/2356-traduccion-de-documentos</a></li>\r\n</ul>\r\n<strong>¿Cómo postulo?</strong> La solicitud debe ser enviada <strong>únicamente</strong> por correo/courier a la siguiente dirección:\r\n\r\n<em>Embajada de Australia</em>\r\n<strong>Sección de Visas</strong>\r\nIsidora Goyenechea 3621\r\nTorre B – Piso 12\r\nLas Condes\r\nSantiago, Chile\r\n\r\n<strong>Si usted es ciudadano chileno y se encuentra en otro país que no sea Australia</strong>, debe enviar su solicitud a la Sección de Visas de la Embajada de Australia en Santiago, Chile.\r\n\r\n<strong>¿Dónde debo estar al momento de postular?</strong>\r\n<ul>\r\n 	<li>Primera visa Work and Holiday 462: <strong>Debe estar fuera de Australia.</strong></li>\r\n 	<li>Segunda visa Work and Holiday 462: Si postula en Australia, debe estar en Australia en el momento que la visa es otorgada. Si postula fuera de Australia, debe estar fuera de Australia en el momento que la visa es otorgada.</li>\r\n</ul>\r\n<strong>¿Cuantos cupos hay disponibles?</strong>\r\n\r\nCupo anual de visas Work and Holiday para postulantes con pasaporte Chileno: 2,000 visas/año a partir del 01/Jul/2018, disponibles hasta agotar stock, renovables cada 01/Jul\r\n\r\nNinguna solicitud será aprobada una vez que se alcance el límite de cupos disponibles y deberá esperar hasta el año siguiente para presentar una solicitud.\r\n\r\nNo hay límite de cupos para la <a href=\"https://www.workingholiday.cl/australia-segunda-visa-work-and-holiday/\" target=\"_blank\" rel=\"noopener noreferrer\">segunda visa</a> Work and Holiday.\r\n\r\n<strong>¿Cuáles son los requisitos de salud?</strong> Como ciudadano chileno, normalmente no es necesario que se realice un examen médico, a menos que haya pasado más de 3 meses consecutivos en otro país en los últimos 5 años o si “<em>special significance</em> (especial importancia)” aplica en su caso. Por favor verifique <a href=\"http://bit.ly/1Cibl58\" target=\"_blank\" rel=\"noopener noreferrer\">aquí</a> (información sólo disponible en inglés). En caso que usted requiera examen médico, se solicitará una vez que su solicitud haya sido pre-evaluada.\r\n\r\n<a href=\"http://bit.ly/OEkEo2\"><img class=\"alignnone size-full wp-image-1640\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=728%2C90&amp;ssl=1\" sizes=\"(max-width: 728px) 100vw, 728px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?w=728&amp;ssl=1 728w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=300%2C37&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=445%2C55&amp;ssl=1 445w\" alt=\"Seguro working holiday\" width=\"631\" height=\"78\" /></a>\r\n\r\nFuente: <a href=\"http://bit.ly/2se4aXP\" target=\"_blank\" rel=\"noopener\">www.chile.embassy.gov.au</a>\r\n\r\nMás info: <a href=\"http://www.border.gov.au/\" target=\"_blank\" rel=\"noopener noreferrer\">www.border.gov.au</a>', 'Australia', '', 'publish', 'open', 'open', '', 'australia', '', '', '2018-08-24 18:41:32', '2018-08-24 22:11:32', '', 0, 'http://186.64.118.50/~feg7pablo/?p=82', 0, 'post', '', 0),
(83, 1, '2018-08-24 18:39:21', '2018-08-24 22:09:21', 'A contar del ciclo de postulación que se inicia el 01/Jul/2018, la forma de pago del arancel de postulación se realiza a través del sitio web de Immigration. Primer paso: crear un <a href=\"http://bit.ly/2Hqm19U\" target=\"_blank\" rel=\"nofollow noopener\">Immiaccount</a>. Segundo paso: pagar arancel de postulación WH 462. Tercer paso: Imprimir comprobante y adjuntar con los documentos físicos para la postulación.\r\n\r\n<code><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FAusEmbCL%2Fposts%2F2268964126463355%3A0&amp;width=500\" width=\"500\" height=\"675\" frameborder=\"0\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe></code>\r\n<h5></h5>\r\n<h4><strong>2.000 visas visas/año para postulantes con </strong><strong>pasaporte Chileno disponibles hasta agotar stock. </strong><strong>Ciclo 2017-2018, cerrado. Ciclo 2018-2019 recibirá postulaciones a partir del </strong><strong>01/Jul/2018.</strong></h4>\r\n<img class=\"size-full wp-image-2399 aligncenter\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=740%2C200&amp;ssl=1\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?w=740&amp;ssl=1 740w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=300%2C81&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2012/07/2018-EDAD-work-holiday-Australia-Chile.png?resize=204%2C55&amp;ssl=1 204w\" alt=\"\" width=\"631\" height=\"171\" />\r\n\r\n<strong>Requisito de edad</strong>: Mientras no haya información de fuente oficial, todo sigue como se conoce: <strong>18 años ≤ edad*&lt; 31 años</strong>. Fuentes oficiales para el <strong>proceso de postulación</strong>: <em>website</em> de la Embajada de Australia en Chile o <em>website</em> del <em>Department of Immigration</em> (información al 29/Abr/2018). (*): edad del postulante al momento de recepción de documentación.\r\n<h2>Requisitos Australia WHV ciclo 2018/2019</h2>\r\n<iframe class=\"gde-frame\" src=\"https://docs.google.com/viewer?url=https%3A%2F%2Fwww.workingholiday.cl%2Fwp-content%2Fuploads%2F2012%2F07%2F2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf&amp;hl=es&amp;embedded=true\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n<p class=\"gde-text\"><a class=\"gde-link\" href=\"https://www.workingholiday.cl/wp-content/uploads/2012/07/2018-04-Requisitos-Visa-de-trabajo-y-vacaciones-Working-Holiday-Australia-Chile.pdf\">Descargar (PDF, 389KB)</a></p>\r\n\r\n<h2>¿Cuál es el checklist de documentos que se debe presentar a la Embajada para la postulación?</h2>\r\n<ul>\r\n 	<li><strong>Listado de documentos</strong>, según fuente oficial al 02/May/2018: <a href=\"http://bit.ly/2rhncy8\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/checklistworkandholiday.html </a></li>\r\n 	<li>Traducidos según el criterio indicado, al 02/May/2018, en:  <a href=\"http://bit.ly/2u2p8xs\" target=\"_blank\" rel=\"nofollow noopener\">http://chile.embassy.gov.au/sclecastellano/WH-FAQ.html</a></li>\r\n 	<li>Más información referente a la traducción realizada por el Min. RR.EE.: <a href=\"http://bit.ly/2JMAF89\" target=\"_blank\" rel=\"nofollow noopener\">www.chileatiende.gob.cl/fichas/2356-traduccion-de-documentos</a></li>\r\n</ul>\r\n<strong>¿Cómo postulo?</strong> La solicitud debe ser enviada <strong>únicamente</strong> por correo/courier a la siguiente dirección:\r\n\r\n<em>Embajada de Australia</em>\r\n<strong>Sección de Visas</strong>\r\nIsidora Goyenechea 3621\r\nTorre B – Piso 12\r\nLas Condes\r\nSantiago, Chile\r\n\r\n<strong>Si usted es ciudadano chileno y se encuentra en otro país que no sea Australia</strong>, debe enviar su solicitud a la Sección de Visas de la Embajada de Australia en Santiago, Chile.\r\n\r\n<strong>¿Dónde debo estar al momento de postular?</strong>\r\n<ul>\r\n 	<li>Primera visa Work and Holiday 462: <strong>Debe estar fuera de Australia.</strong></li>\r\n 	<li>Segunda visa Work and Holiday 462: Si postula en Australia, debe estar en Australia en el momento que la visa es otorgada. Si postula fuera de Australia, debe estar fuera de Australia en el momento que la visa es otorgada.</li>\r\n</ul>\r\n<strong>¿Cuantos cupos hay disponibles?</strong>\r\n\r\nCupo anual de visas Work and Holiday para postulantes con pasaporte Chileno: 2,000 visas/año a partir del 01/Jul/2018, disponibles hasta agotar stock, renovables cada 01/Jul\r\n\r\nNinguna solicitud será aprobada una vez que se alcance el límite de cupos disponibles y deberá esperar hasta el año siguiente para presentar una solicitud.\r\n\r\nNo hay límite de cupos para la <a href=\"https://www.workingholiday.cl/australia-segunda-visa-work-and-holiday/\" target=\"_blank\" rel=\"noopener noreferrer\">segunda visa</a> Work and Holiday.\r\n\r\n<strong>¿Cuáles son los requisitos de salud?</strong> Como ciudadano chileno, normalmente no es necesario que se realice un examen médico, a menos que haya pasado más de 3 meses consecutivos en otro país en los últimos 5 años o si “<em>special significance</em> (especial importancia)” aplica en su caso. Por favor verifique <a href=\"http://bit.ly/1Cibl58\" target=\"_blank\" rel=\"noopener noreferrer\">aquí</a> (información sólo disponible en inglés). En caso que usted requiera examen médico, se solicitará una vez que su solicitud haya sido pre-evaluada.\r\n\r\n<a href=\"http://bit.ly/OEkEo2\"><img class=\"alignnone size-full wp-image-1640\" src=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=728%2C90&amp;ssl=1\" sizes=\"(max-width: 728px) 100vw, 728px\" srcset=\"https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?w=728&amp;ssl=1 728w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=300%2C37&amp;ssl=1 300w, https://i2.wp.com/www.workingholiday.cl/wp-content/uploads/2014/11/seguro-viaje-asistencia-working-holiday.jpg?resize=445%2C55&amp;ssl=1 445w\" alt=\"Seguro working holiday\" width=\"631\" height=\"78\" /></a>\r\n\r\nFuente: <a href=\"http://bit.ly/2se4aXP\" target=\"_blank\" rel=\"noopener\">www.chile.embassy.gov.au</a>\r\n\r\nMás info: <a href=\"http://www.border.gov.au/\" target=\"_blank\" rel=\"noopener noreferrer\">www.border.gov.au</a>', 'Australia', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-08-24 18:39:21', '2018-08-24 22:09:21', '', 82, 'http://186.64.118.50/~feg7pablo/2018/08/24/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-08-24 18:42:44', '2018-08-24 22:12:44', '', 'Stoen_151109_0991-4', '', 'inherit', 'open', 'closed', '', 'stoen_151109_0991-4', '', '', '2018-08-24 18:42:44', '2018-08-24 22:12:44', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151109_0991-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-08-24 18:42:45', '2018-08-24 22:12:45', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\n\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\n\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\n\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\n\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\n\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\n\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\n\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\n\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\n\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\n\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;', 'Japon', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2018-08-24 18:42:45', '2018-08-24 22:12:45', '', 77, 'http://186.64.118.50/~feg7pablo/2018/08/24/77-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2018-08-24 18:42:46', '2018-08-24 22:12:46', '', 'Stoen_151110_0016-2', '', 'inherit', 'open', 'closed', '', 'stoen_151110_0016-2', '', '', '2018-08-24 18:42:46', '2018-08-24 22:12:46', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151110_0016-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-08-24 18:42:47', '2018-08-24 22:12:47', '', 'Stoen_151110_0416-2-2', '', 'inherit', 'open', 'closed', '', 'stoen_151110_0416-2-2', '', '', '2018-08-24 18:42:47', '2018-08-24 22:12:47', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151110_0416-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-08-24 18:42:48', '2018-08-24 22:12:48', '', 'Stoen_151111_0587-2', '', 'inherit', 'open', 'closed', '', 'stoen_151111_0587-2', '', '', '2018-08-24 18:42:48', '2018-08-24 22:12:48', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151111_0587-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-08-24 18:42:48', '2018-08-24 22:12:48', '', 'Stoen_151113_0362-2', '', 'inherit', 'open', 'closed', '', 'stoen_151113_0362-2', '', '', '2018-08-24 18:42:48', '2018-08-24 22:12:48', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151113_0362-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-08-24 18:42:50', '2018-08-24 22:12:50', '', 'Stoen_151113_0797-2', '', 'inherit', 'open', 'closed', '', 'stoen_151113_0797-2', '', '', '2018-08-24 18:42:50', '2018-08-24 22:12:50', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151113_0797-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-08-24 18:42:50', '2018-08-24 22:12:50', '', 'Stoen_151114_0375', '', 'inherit', 'open', 'closed', '', 'stoen_151114_0375', '', '', '2018-08-24 18:42:50', '2018-08-24 22:12:50', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151114_0375.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-08-24 18:42:51', '2018-08-24 22:12:51', '', 'Stoen_151115_0231-2', '', 'inherit', 'open', 'closed', '', 'stoen_151115_0231-2', '', '', '2018-08-24 18:42:51', '2018-08-24 22:12:51', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151115_0231-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-08-24 18:42:52', '2018-08-24 22:12:52', '', 'Stoen_151116_0105-2', '', 'inherit', 'open', 'closed', '', 'stoen_151116_0105-2', '', '', '2018-08-24 18:42:52', '2018-08-24 22:12:52', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151116_0105-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-08-24 18:42:53', '2018-08-24 22:12:53', '', 'Stoen_151117_0033-2', '', 'inherit', 'open', 'closed', '', 'stoen_151117_0033-2', '', '', '2018-08-24 18:42:53', '2018-08-24 22:12:53', '', 77, 'http://186.64.118.50/~feg7pablo/wp-content/uploads/2018/08/Stoen_151117_0033-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `df_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2018-08-24 18:44:01', '2018-08-24 22:14:01', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\r\n\r\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\r\n\r\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\r\n\r\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\r\n\r\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\r\n\r\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\r\n\r\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\r\n\r\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\r\n\r\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\r\n\r\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\r\n\r\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" ids=\"84,86,87,88,89,90,91,92,93,94\" orderby=\"rand\"]', 'Japon', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-08-24 18:44:01', '2018-08-24 22:14:01', '', 77, 'http://186.64.118.50/~feg7pablo/2018/08/24/77-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-08-24 18:44:32', '2018-08-24 22:14:32', 'La documentación debe ser presentada <strong>presencialmente</strong> por el interesado, o a través de un tercero con poder simple, en la Embajada en Santiago de Chile a contar del 23/Feb/2018. El formulario de postulación se solicita en la Embajada. <strong>El formulario de postulación deben ser completado y firmado por el interesado</strong> (no por el tercero con poder simple que eventualmente presentase la solicitud). <strong>Se debe presentar el pasaporte</strong> físico para estampar visado en caso que la solicitud sea aprobada.\r\n\r\nEl <strong>tiempo de procesamiento</strong> de la solicitud de visa es de una semana, aproximadamente, pudiendose requerir al solicitante la presentación de documentación adicional durante dicho período.\r\n\r\nLa documentación se presenta físicamente en el <span class=\"il\">consulado</span> y puede ser llevada por una <strong>tercera persona</strong> con un poder simple, pero lo ideal es que trámite sea realizado por el interesado.\r\n\r\nLa visa tiene una vigencia de <strong>doce meses</strong> y, principalmente, el objetivo es realizar <strong>trabajos esporádicos</strong>. Porque de lo contrario, si sólo se pretende estudiar, se aconseja solicitar y gestionar una visa de estudios.\r\n\r\nActualización 05/Mar/2018: Se debe contratar un <strong>seguro de viaje / salud</strong> internacional (con repatriación sanitaria), <strong>una vez que</strong> desde el Consulado se le informe al postulante que <strong>su visa ha sido aprobada</strong>. Por otra parte, la suscripción al Seguro de Salud Nacional de Japón también <strong>es obligatoria</strong> una vez en destino.\r\n\r\nActualización 25/Mar/2018: Se puede <strong>demostrar los fondos</strong> mínimos <strong>a través de un tercero</strong>, idealmente uno de los padres del postulante. Se sugiere adjuntar carta de apoyo.\r\n\r\nFuente: <a href=\"http://bit.ly/2DSCDoI\" target=\"_blank\" rel=\"noopener\">www.cl.emb-japan.go.jp/itpr_es/WorkingHolidayChileJapon.html</a>\r\n\r\nPresentación de documentos y consultas: Lunes a viernes: 9:00 am a 12:30 pm y luego desde las 15:00 pm a 17:30 pm.\r\n\r\nDirección: Embajada del Japón en Chile, <a href=\"http://bit.ly/2oj8552\" target=\"_blank\" rel=\"nofollow noopener\">Avenida Ricardo Lyon 520, Providencia</a>  (Sección Consular).\r\n\r\n<strong>Tal vez te interese</strong>: <a href=\"https://www.workingholiday.cl/fechas-postulacion-working-holiday-visa/\">Calendario de Postulación – Convenios Working Holiday vigentes</a>\r\n\r\n<strong>Tal vez te interese</strong>: <a title=\"Clic para cotizar tickets aéreos\" href=\"http://bit.ly/2GVXJRq\" target=\"_blank\" rel=\"noopener\">Pasajes baratos a Tokyo – Japón</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery ids=\"84,86,87,88,89,90,91,92,93,94\" orderby=\"rand\"]', 'Japon', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-08-24 18:44:32', '2018-08-24 22:14:32', '', 77, 'http://186.64.118.50/~feg7pablo/2018/08/24/77-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_termmeta`
--

CREATE TABLE `df_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_terms`
--

CREATE TABLE `df_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_terms`
--

INSERT INTO `df_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'embajada', 'embajada', 0),
(3, 'consulado', 'consulado', 0),
(4, 'working asia', 'working-asia', 0),
(5, 'principal', 'principal', 0),
(6, 'Japón', 'japon', 0),
(7, 'Australia', 'australia', 0),
(8, 'Alemania', 'alemania', 0),
(9, 'Canada', 'canada', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_term_relationships`
--

CREATE TABLE `df_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_term_relationships`
--

INSERT INTO `df_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(5, 3, 0),
(9, 4, 0),
(51, 5, 0),
(59, 5, 0),
(69, 7, 0),
(70, 8, 0),
(54, 6, 0),
(71, 9, 0),
(77, 1, 0),
(79, 1, 0),
(82, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_term_taxonomy`
--

CREATE TABLE `df_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_term_taxonomy`
--

INSERT INTO `df_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'post_tag', '', 0, 1),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_fonts`
--

CREATE TABLE `df_totalsoft_fonts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Font` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `df_totalsoft_fonts`
--

INSERT INTO `df_totalsoft_fonts` (`id`, `Font`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun'),
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_albums`
--

CREATE TABLE `df_totalsoft_portfolio_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_ATitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Portfolio_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_check`
--

CREATE TABLE `df_totalsoft_portfolio_check` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkpg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `df_totalsoft_portfolio_check`
--

INSERT INTO `df_totalsoft_portfolio_check` (`id`, `checkpg`) VALUES
(1, 'full');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_dbt`
--

CREATE TABLE `df_totalsoft_portfolio_dbt` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `df_totalsoft_portfolio_dbt`
--

INSERT INTO `df_totalsoft_portfolio_dbt` (`id`, `TotalSoftPortfolio_SetName`, `TotalSoftPortfolio_SetType`) VALUES
(1, 'Portfolio 1', 'Total Soft Portfolio'),
(2, 'Portfolio 2', 'Total Soft Portfolio'),
(3, 'Portfolio 3', 'Elastic Grid'),
(4, 'Portfolio 4', 'Elastic Grid'),
(5, 'Portfolio 5', 'Filterable Grid'),
(6, 'Portfolio 6', 'Filterable Grid'),
(7, 'Portfolio 7', 'Gallery Portfolio/Content Popup'),
(8, 'Portfolio 8', 'Gallery Portfolio/Content Popup'),
(9, 'Portfolio 9', 'Slider Portfolio'),
(10, 'Portfolio 10', 'Slider Portfolio'),
(11, 'Portfolio 11', 'Gallery Album Animation'),
(12, 'Portfolio 12', 'Gallery Album Animation'),
(13, 'Portfolio 13', 'Portfolio / Hover Effects'),
(14, 'Portfolio 14', 'Portfolio / Hover Effects'),
(15, 'Portfolio 15', 'Lightbox Gallery'),
(16, 'Portfolio 16', 'Lightbox Gallery');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_dbt_1`
--

CREATE TABLE `df_totalsoft_portfolio_dbt_1` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_1_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `df_totalsoft_portfolio_dbt_1`
--

INSERT INTO `df_totalsoft_portfolio_dbt_1` (`id`, `TotalSoftPortfolio_SetID`, `TotalSoftPortfolio_SetName`, `TotalSoftPortfolio_SetType`, `TotalSoft_PG_1_01`, `TotalSoft_PG_1_02`, `TotalSoft_PG_1_03`, `TotalSoft_PG_1_04`, `TotalSoft_PG_1_05`, `TotalSoft_PG_1_06`, `TotalSoft_PG_1_07`, `TotalSoft_PG_1_08`, `TotalSoft_PG_1_09`, `TotalSoft_PG_1_10`, `TotalSoft_PG_1_11`, `TotalSoft_PG_1_12`, `TotalSoft_PG_1_13`, `TotalSoft_PG_1_14`, `TotalSoft_PG_1_15`, `TotalSoft_PG_1_16`, `TotalSoft_PG_1_17`, `TotalSoft_PG_1_18`, `TotalSoft_PG_1_19`, `TotalSoft_PG_1_20`, `TotalSoft_PG_1_21`, `TotalSoft_PG_1_22`, `TotalSoft_PG_1_23`, `TotalSoft_PG_1_24`, `TotalSoft_PG_1_25`, `TotalSoft_PG_1_26`, `TotalSoft_PG_1_27`, `TotalSoft_PG_1_28`, `TotalSoft_PG_1_29`, `TotalSoft_PG_1_30`, `TotalSoft_PG_1_31`, `TotalSoft_PG_1_32`, `TotalSoft_PG_1_33`, `TotalSoft_PG_1_34`, `TotalSoft_PG_1_35`, `TotalSoft_PG_1_36`, `TotalSoft_PG_1_37`, `TotalSoft_PG_1_38`, `TotalSoft_PG_1_39`) VALUES
(1, '1', 'Portfolio 1', 'Total Soft Portfolio', '745', '', '1200', '606', '0', 'solid', '#ffffff', '0', '7', '6', '#ffffff', '#dd3333', '#dddddd', '11', '#dd3333', '24', 'totalsoft totalsoft-long-arrow-up', 'totalsoft totalsoft-long-arrow-left', 'totalsoft totalsoft-long-arrow-down', 'totalsoft totalsoft-long-arrow-right', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '2', 'Portfolio 2', 'Total Soft Portfolio', '745', 'bg_1.png', '1200', '606', '0', 'solid', '#ffffff', '0', '7', '6', '#ffffff', '#dbdbdb', '#000000', '3', '#ffffff', '24', 'totalsoft totalsoft-arrow-circle-up', 'totalsoft totalsoft-arrow-circle-left', 'totalsoft totalsoft-arrow-circle-down', 'totalsoft totalsoft-arrow-circle-right', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '3', 'Portfolio 3', 'Elastic Grid', 'All', 'true', 'helix', 'true', '0', 'false', '1000', '300', '#ffffff', 'rgba(0,148,145,0.8)', '#ffffff', 'rgba(0,98,107,0.8)', '#ffffff', '22', 'Gabriola', 'rgba(255,255,255,0.8)', '#009491', '2', 'solid', 'rgba(0,148,145,0.8)', '240', '160', '0', '#c1c1c1', 'rgba(255,255,255,0.59)', '#009491', '24', 'Gabriola', '1', 'dashed', 'rgba(0,148,145,0.8)', 'rgba(0,148,145,0.8)', '#ffffff', '23', 'Gabriola', 'rgba(0,148,145,0.8)', '#ffffff', '9', 'Arial'),
(4, '4', 'Portfolio 4', 'Elastic Grid', 'All', 'true', 'fly', 'true', '0', 'false', '1000', '300', '#009491', '#ffffff', '#009491', '#009491', '#ffffff', '23', 'Gabriola', '#ffffff', '#009491', '0', 'solid', '#001cbc', '250', '160', '0', '#ffffff', 'rgba(0,148,145,0.38)', '#ffffff', '20', 'Arial', '1', 'solid', '#ffffff', '#009491', '#ffffff', '20', 'Arial', '#489392', '#ffffff', '15', 'Arial'),
(5, '5', 'Portfolio 5', 'Filterable Grid', 'All', '0', '#ffffff', '8', 'true', '#000000', '#212121', '#dd3333', '#000000', '#ffffff', '23', 'Gabriola', '#212121', '#dd0000', '#ffffff', '24', 'Gabriola', 'false', 'Effect 6', '#000000', '1', '#000000', '#ffffff', '#dd3333', 'rgba(0,0,0,0.3)', 'hoverDivPort2', '3', '#000000', '2', 'HovLine1_4', '4', '#ffffff', '2', '3', 'HovLine2_4', '4', '#ffffff', 'hovRound1', '4'),
(6, '6', 'Portfolio 6', 'Filterable Grid', 'All', '2', '#ffffff', '8', 'true', '#ffffff', '#dd3333', '#ffffff', '#ffffff', '#dd3333', '23', 'Gabriola', '#dd3333', '#ffffff', '#ffffff', '22', 'Gabriola', 'false', 'Effect 2', '#dd3333', '0', '#dd3333', '#dd3333', '#ffffff', 'rgba(0,0,0,0.2)', 'hoverDivPort1', '4', '#d6d6d6', '1', 'HovLine1_10', '2', '#d6d6d6', '1', '8', 'HovLine2_10', '2', '#424242', 'hovRound6', '6'),
(7, '7', 'Portfolio 7', 'Gallery Portfolio/Content Popup', '210', '10', '20', '#000000', '5', 'solid', '#ffffff', '0', 'TotPortImgHov5', '4', 'rgba(30,115,190,0.28)', 'TotPortImgOv1', '4', '#ffffff', '23', '#000000', 'TotPortHovTit1', '4', 'Gabriola', '1', 'solid', '#ffffff', 'TotPortHovLine4', '3', '15', '#ffffff', '#ffffff', '0', 'solid', 'View More', 'TotPortHovLink4', '3', 'Arial', '#ffffff', '0', 'solid', '#ffffff', '14', 'true'),
(8, '8', 'Portfolio 8', 'Gallery Portfolio/Content Popup', '210', '10', '15', '#757575', '5', 'solid', '#ffffff', '0', 'TotPortImgHov2', '4', '#000000', 'TotPortImgOv1', '4', '#ffffff', '24', '#000000', 'TotPortHovTit3', '4', 'Gabriola', '1', 'solid', '#ffffff', 'TotPortHovLine5', '3', '18', '#ffffff', '#ffffff', '1', 'solid', 'View More', 'TotPortHovLink9', '3', 'Gabriola', '#ffffff', '0', 'solid', '#ffffff', '14', 'true'),
(9, '9', 'Portfolio 9', 'Slider Portfolio', 'true', '10', '80', '500', 'center', '0', 'solid', '#ffffff', 'true', 'random', 'random', '6', '6', '3', 'true', '24', 'Vijaya', '#ffffff', '#000000', '#000000', '#ffffff', '#ffffff', '#000000', 'true', 'false', '#000000', '#ffffff', '23', 'Vijaya', '75', '75', '125', '125', 'bottom', 'square', '#ffffff', '#ffffff', '#000000', 'true'),
(10, '10', 'Portfolio 10', 'Slider Portfolio', 'true', '10', '90', '600', 'center', '0', 'solid', '#ffffff', 'true', 'random', 'random', '7', '7', '3', 'true', '24', 'Vijaya', '#000000', '#ffffff', '#ffffff', '#000000', '#000000', '#ffffff', 'true', 'true', '#000000', '#ffffff', '23', 'Vijaya', '75', '75', '100', '100', 'bottom', 'image', '#ffffff', '#ffffff', '#000000', 'true'),
(11, '11', 'Portfolio 11', 'Gallery Album Animation', 'Effect 1', 'Position 1', 'false', 'rgba(0,0,0,0.22)', '300', '200', '#ffffff', 'false', '0', '#ffffff', '17', 'Abadi MT Condensed Light', 'true', 'false', '#939393', 'Type 3', '#00aded', 'rgba(0,224,232,0.55)', 'f030', '#ffffff', 'Size 4', 'rgba(0,173,237,0.5)', 'true', 'rgba(0,173,237,0.85)', '#ffffff', 'rgba(0,0,0,0.9)', 'long-arrow', '#ffffff', 'Size 3', 'rgba(0,173,237,0.7)', 'true', '#00aded', '#ffffff', 'f00d', '#ffffff', 'Size 2', 'rgba(0,173,237,0.7)', 'true', '#00aded'),
(12, '12', 'Portfolio 12', 'Gallery Album Animation', 'Effect 5', 'Position 1', 'true', 'rgba(255,255,255,0.2)', '300', '200', '#ffffff', 'false', '0', '#dd8500', '18', 'Aldhabi', 'true', 'true', '#c4c4c4', 'Type 1', '#4e1c6d', '#ffffff', 'f06e', '#dd8500', 'Size 2', 'rgba(255,255,255,0.74)', 'true', '#ffffff', '#dd8500', '#000000', 'caret', '#dd8500', 'Size 3', '#000000', 'true', '#424242', '#dd8500', 'f015', '#dd8500', 'Size 2', '#000000', 'true', '#424242'),
(13, '13', 'Portfolio 13', 'Portfolio / Hover Effects', 'All', 'true', 'Size1', '#d81c4e', '#d81c4e', '#ffffff', '18', 'Arial', 'effect04', 'rgba(196,0,52,0.7)', '#ffffff', 'shadow07', '#878787', '3', 'false', '269', 'effect06', 'rgba(0,0,0,0.33)', 'rgba(216,28,78,0.79)', '#ffffff', '18', 'Abadi MT Condensed Light', 'external-link-square', 'rgba(0,0,0,0.3)', '#d81c4e', 'rgba(0,0,0,0.3)', '#d81c4e', 'camera-retro', 'rgba(0,0,0,0.33)', '#d81c4e', 'rgba(0,0,0,0.33)', '#d81c4e', 'true', '#000000', 'center', '19', 'Abadi MT Condensed Light', '#ffffff', '#d81c4e'),
(14, '14', 'Portfolio 14', 'Portfolio / Hover Effects', 'All', 'true', 'Size1', '#ffffff', '#ffffff', '#000000', '18', 'Arial', 'effect17', '#dd9933', '#000000', 'shadow02', '#878787', '3', 'false', '269', 'effect08', 'rgba(0,0,0,0.19)', '#ffffff', '#ffffff', '18', 'Abadi MT Condensed Light', 'external-link-square', 'rgba(0,0,0,0.3)', '#ffffff', 'rgba(0,0,0,0.3)', '#ffffff', 'camera-retro', 'rgba(0,0,0,0.3)', '#ffffff', 'rgba(0,0,0,0.3)', '#ffffff', 'true', '#000000', 'center', '19', 'Abadi MT Condensed Light', '#ffffff', '#000000'),
(15, '15', 'Portfolio 15', 'Lightbox Gallery', 'All', 'true', '#ffffff', '6', '#000000', '#ffffff', '24', 'Vijaya', 'effect01', '#707070', '#ffffff', 'shadow02', '#d8d8d8', '3', 'ratio02', 'effect02', 'rgba(0,0,0,0.04)', 'rgba(0,0,0,0.5)', 'picture-o', '21', 'rgba(0,0,0,0.3)', '#ffffff', 'rgba(0,0,0,0.3)', '#ffffff', '31', 'Arial', '#ffffff', 'rgba(0,0,0,0.58)', 'times-circle', '23', '#ffffff', '#ededed', '25', 'Vijaya', '#ffffff', 'rgba(255,255,255,0)', 'View More', 'external-link', 'after'),
(16, '16', 'Portfolio 16', 'Lightbox Gallery', 'All', 'true', '#ffffff', '6', '#dd0000', '#ffffff', '24', 'Vijaya', 'effect11', '#c60000', '#ffffff', 'shadow08', '#e8e8e8', '3', 'ratio02', 'effect03', 'rgba(221,51,51,0.25)', 'rgba(255,255,255,0.5)', 'picture-o', '21', 'rgba(0,0,0,0.3)', '#ffffff', 'rgba(0,0,0,0.3)', '#ffffff', '31', 'Arial', '#ffffff', 'rgba(0,0,0,0.58)', 'times-circle', '23', '#ffffff', '#ededed', '25', 'Vijaya', '#ffffff', 'rgba(255,255,255,0)', 'View More', 'external-link-square', 'after');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_dbt_2`
--

CREATE TABLE `df_totalsoft_portfolio_dbt_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_PG_2_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `df_totalsoft_portfolio_dbt_2`
--

INSERT INTO `df_totalsoft_portfolio_dbt_2` (`id`, `TotalSoftPortfolio_SetID`, `TotalSoftPortfolio_SetName`, `TotalSoftPortfolio_SetType`, `TotalSoft_PG_2_01`, `TotalSoft_PG_2_02`, `TotalSoft_PG_2_03`, `TotalSoft_PG_2_04`, `TotalSoft_PG_2_05`, `TotalSoft_PG_2_06`, `TotalSoft_PG_2_07`, `TotalSoft_PG_2_08`, `TotalSoft_PG_2_09`, `TotalSoft_PG_2_10`, `TotalSoft_PG_2_11`, `TotalSoft_PG_2_12`, `TotalSoft_PG_2_13`, `TotalSoft_PG_2_14`, `TotalSoft_PG_2_15`, `TotalSoft_PG_2_16`, `TotalSoft_PG_2_17`, `TotalSoft_PG_2_18`, `TotalSoft_PG_2_19`, `TotalSoft_PG_2_20`, `TotalSoft_PG_2_21`, `TotalSoft_PG_2_22`, `TotalSoft_PG_2_23`, `TotalSoft_PG_2_24`, `TotalSoft_PG_2_25`, `TotalSoft_PG_2_26`, `TotalSoft_PG_2_27`, `TotalSoft_PG_2_28`, `TotalSoft_PG_2_29`, `TotalSoft_PG_2_30`, `TotalSoft_PG_2_31`, `TotalSoft_PG_2_32`, `TotalSoft_PG_2_33`, `TotalSoft_PG_2_34`, `TotalSoft_PG_2_35`, `TotalSoft_PG_2_36`, `TotalSoft_PG_2_37`, `TotalSoft_PG_2_38`, `TotalSoft_PG_2_39`) VALUES
(1, '1', 'Portfolio 1', 'Total Soft Portfolio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '2', 'Portfolio 2', 'Total Soft Portfolio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '3', 'Portfolio 3', 'Elastic Grid', '1', 'solid', 'rgba(255,255,255,0.8)', '0', 'rgba(255,255,255,0.8)', '#009491', '2', 'solid', 'rgba(85,147,146,0.8)', 'rgba(255,255,255,0.8)', '#009491', '65', '2', 'solid', '#009491', '0', '#ffffff', '1', '', '', '28', '#000000', '1', '', '28', '#000000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '4', 'Portfolio 4', 'Elastic Grid', '0', 'dashed', '#000000', '0', '#009491', '#ffffff', '1', 'solid', '#ffffff', '#ffffff', '#000000', '100', '0', 'solid', '#ff0000', '0', '#000000', '1', '', '', '28', '#000000', '1', '', '28', '#000000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '5', 'Portfolio 5', 'Filterable Grid', '#dd3333', '40', '#ffffff', '#ffffff', '3', 'IconForPopup5', '4', '#dd3333', 'IconForLink5', '4', 'rgba(0,0,0,0.9)', '6', '5', 'easeOutSine', 'translateLeft', '700', '0', '60', '5', '#ffffff', '4', '#ffffff', '30', '3', '25', '#ffffff', '1', '#000000', '#ffffff', '30', '3', '26', 'Gabriola', '#ffffff', '#000000', '', '', '', ''),
(6, '6', 'Portfolio 6', 'Filterable Grid', '#dd3333', '30', '#d6d6d6', '#ffffff', '0', 'IconForPopup8', '3', '#ffffff', 'IconForLink8', '3', '#000000', '4', '4', 'snap', 'flipY', '700', '0', '66', '0', '#ffffff', '6', '#ffffff', '30', '3', '30', '#dd3333', '1', '#ffffff', '#ffffff', '30', '3', '24', 'Gabriola', '#ffffff', 'rgba(221,51,51,0.8)', '', '', '', ''),
(7, '7', 'Portfolio 7', 'Gallery Portfolio/Content Popup', 'center', '25', 'Gabriola', '#dd3333', 'play-circle-o', '18', '#ffffff', 'times-circle', '18', '#000000', 'Close', 'Arial', 'arrow-circle', '18', '#000000', '19', '#000000', 'true', 'All', '#000000', '#ffffff', '#000000', '#000000', '#ffffff', '25', 'Gabriola', '#ffffff', '#000000', '', '', '', '', '', '', '', '', '', '', ''),
(8, '8', 'Portfolio 8', 'Gallery Portfolio/Content Popup', 'center', '25', 'Gabriola', '#dd3333', 'play-circle-o', '22', '#000000', 'times-circle', '22', '#000000', 'Close', 'Arial', 'arrow-circle', '22', '#000000', '19', '#000000', 'true', 'All', '#ffffff', '#ffffff', '#000000', '#000000', '#ffffff', '25', 'Calisto MT', '#ffffff', '#000000', '', '', '', '', '', '', '', '', '', '', ''),
(9, '9', 'Portfolio 9', 'Slider Portfolio', 'true', '#000000', '#000000', '#000000', '#000000', 'caret', '#000000', 'true', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '10', 'Portfolio 10', 'Slider Portfolio', 'true', '#ffffff', '#ffffff', '#ffffff', '#ffffff', 'caret', '#ffffff', 'false', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '11', 'Portfolio 11', 'Gallery Album Animation', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '12', 'Portfolio 12', 'Gallery Album Animation', '#dd8500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '13', 'Portfolio 13', 'Portfolio / Hover Effects', 'long-arrow', 'rgba(0,0,0,0.4)', '#ffffff', 'rgba(0,0,0,0.4)', '#ffffff', '25', 'Size3', 'rgba(0,0,0,0.66)', '#ffffff', 'rgba(0,0,0,0.66)', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '14', 'Portfolio 14', 'Portfolio / Hover Effects', 'caret', 'rgba(0,0,0,0.4)', '#ffffff', 'rgba(0,0,0,0.4)', '#ffffff', '34', 'Size3', 'rgba(0,0,0,0.66)', '#ffffff', 'rgba(0,0,0,0.66)', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '15', 'Portfolio 15', 'Lightbox Gallery', 'style01', 'rgba(0,0,0,0.02)', '#ffffff', 'before', 'center', '18', 'Arial', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '16', 'Portfolio 16', 'Lightbox Gallery', 'style06', '#000000', '#ffffff', 'before', 'center', '18', 'Arial', '#ffffff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_id`
--

CREATE TABLE `df_totalsoft_portfolio_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `Portfolio_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_images`
--

CREATE TABLE `df_totalsoft_portfolio_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_IT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_IA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_IURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_IDesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_ILink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_IONT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Portfolio_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_totalsoft_portfolio_manager`
--

CREATE TABLE `df_totalsoft_portfolio_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftPortfolio_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_Option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftPortfolio_AlbumCount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_usermeta`
--

CREATE TABLE `df_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_usermeta`
--

INSERT INTO `df_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'verdpz'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'df_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'df_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"51be6071905670a92a542df0e6dff331f96526953a2982e21d57d25d62078e63\";a:4:{s:10:\"expiration\";i:1536161242;s:2:\"ip\";s:14:\"152.231.105.29\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534951642;}s:64:\"1daf54bc80c79345423be60b3d85c6027ca4ae3248a79457847a3569a86610bb\";a:4:{s:10:\"expiration\";i:1536193744;s:2:\"ip\";s:12:\"186.9.22.249\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534984144;}}'),
(17, 1, 'df_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"190.160.113.0\";}'),
(19, 1, 'df_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&hidetb=1'),
(20, 1, 'df_user-settings-time', '1535116662'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:23:\"add-post-type-post_type\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '5'),
(24, 1, 'closedpostboxes_paises_type', 'a:0:{}'),
(25, 1, 'metaboxhidden_paises_type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'meta-box-order_paises_type', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:58:\"categorydiv,tagsdiv-post_tag,postimagediv,acf_74,submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_paises_type', '2'),
(28, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:43:\"submitdiv,postimagediv,pageparentdiv,acf_55\";s:6:\"normal\";s:45:\"postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `df_users`
--

CREATE TABLE `df_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `df_users`
--

INSERT INTO `df_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'verdpz', '$P$B1NycQZ5XKvB9tq4yvWKBKbD11l7JR1', 'verdpz', 'pablocesarbravosilva@gmail.com', '', '2018-08-22 15:27:10', '', 0, 'verdpz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `df_commentmeta`
--
ALTER TABLE `df_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `df_comments`
--
ALTER TABLE `df_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `df_links`
--
ALTER TABLE `df_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `df_options`
--
ALTER TABLE `df_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `df_postmeta`
--
ALTER TABLE `df_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `df_posts`
--
ALTER TABLE `df_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `df_termmeta`
--
ALTER TABLE `df_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `df_terms`
--
ALTER TABLE `df_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `df_term_relationships`
--
ALTER TABLE `df_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `df_term_taxonomy`
--
ALTER TABLE `df_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `df_totalsoft_fonts`
--
ALTER TABLE `df_totalsoft_fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_albums`
--
ALTER TABLE `df_totalsoft_portfolio_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_check`
--
ALTER TABLE `df_totalsoft_portfolio_check`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_dbt`
--
ALTER TABLE `df_totalsoft_portfolio_dbt`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_dbt_1`
--
ALTER TABLE `df_totalsoft_portfolio_dbt_1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_dbt_2`
--
ALTER TABLE `df_totalsoft_portfolio_dbt_2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_id`
--
ALTER TABLE `df_totalsoft_portfolio_id`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_images`
--
ALTER TABLE `df_totalsoft_portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_totalsoft_portfolio_manager`
--
ALTER TABLE `df_totalsoft_portfolio_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `df_usermeta`
--
ALTER TABLE `df_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `df_users`
--
ALTER TABLE `df_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `df_commentmeta`
--
ALTER TABLE `df_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_comments`
--
ALTER TABLE `df_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `df_links`
--
ALTER TABLE `df_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_options`
--
ALTER TABLE `df_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `df_postmeta`
--
ALTER TABLE `df_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `df_posts`
--
ALTER TABLE `df_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `df_termmeta`
--
ALTER TABLE `df_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_terms`
--
ALTER TABLE `df_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `df_term_taxonomy`
--
ALTER TABLE `df_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_fonts`
--
ALTER TABLE `df_totalsoft_fonts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_albums`
--
ALTER TABLE `df_totalsoft_portfolio_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_check`
--
ALTER TABLE `df_totalsoft_portfolio_check`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_dbt`
--
ALTER TABLE `df_totalsoft_portfolio_dbt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_dbt_1`
--
ALTER TABLE `df_totalsoft_portfolio_dbt_1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_dbt_2`
--
ALTER TABLE `df_totalsoft_portfolio_dbt_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_id`
--
ALTER TABLE `df_totalsoft_portfolio_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_images`
--
ALTER TABLE `df_totalsoft_portfolio_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_totalsoft_portfolio_manager`
--
ALTER TABLE `df_totalsoft_portfolio_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `df_usermeta`
--
ALTER TABLE `df_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `df_users`
--
ALTER TABLE `df_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

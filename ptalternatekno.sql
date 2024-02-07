-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 05:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptalternatekno`
--

-- --------------------------------------------------------

--
-- Table structure for table `alterna_alternatekno_job`
--

CREATE TABLE `alterna_alternatekno_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `descpekerjaan` text DEFAULT NULL,
  `syarat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alterna_alternatekno_job`
--

INSERT INTO `alterna_alternatekno_job` (`id`, `pekerjaan`, `descpekerjaan`, `syarat`) VALUES
(2, 'Mobile developer', 'Merancang dan mengembangkan aplikasi dengan platform android / iOS. Melakukan pengujian, memperbaiki bug serta meningkatkan kinerja aplikasi', '<p>Minimum pengalaman bekerja 1 Tahun<br>Pengalaman dengan Android SDK<br>Pengalaman dengan REST API dan JSON </p>'),
(3, 'Front-End Developer', 'Merancang desain dan membuat halaman Web.', '<p>Pengalaman dengan HTML5, CSS dan Javascript<br>Pernah menggunakan framework seperti Jquery, Bootstrap dan Tailwind CSS<br>Pernah menggunakan framework seperti Laravel, Codeigniter, NestJs, Express JS, GraphQl dan GoLang<br>Terbiasa menggunaka Tool desain seperti Adobe Photoshop, Corel Draw Dll </p>'),
(4, 'Fullstack Developer', 'Membuat aplikasi yang bekerja di linkup Front-End dan Back-End developer', '<p>Minimum pengalaman bekerja 1 Tahun<br>Pengalaman dengan Bahasa pemograman PHP, Java, NodeJs, HTML5, CSS dan Javascript<br>Pernah menggunakan framework seperti Laravel, Codeigniter, NestJs, Express JS, GraphQl dan GoLang<br>Menguasai konsep pemograman berorientasi objeck (OOP) </p>'),
(5, 'Back-End Developer', 'Membuat aplikasi yang bekerja di lingkup Back End Developer.', '<p>Pengalaman dengan Bahasa pemograman PHP, C#, Java, Go Lang dan NodeJs<br>Pernah menggunakan framework seperti Laravel, Codeigniter, NestJs, Express JS dan GraphQL<br>Menguasai konsep pemograman berorientasi objeck (OOP)<br>Pengalaman dengan REST API dan JSON </p>');

-- --------------------------------------------------------

--
-- Table structure for table `alterna_alternatekno_portofolio`
--

CREATE TABLE `alterna_alternatekno_portofolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaporto` text NOT NULL,
  `perusahaan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alterna_alternatekno_portofolio`
--

INSERT INTO `alterna_alternatekno_portofolio` (`id`, `namaporto`, `perusahaan`) VALUES
(1, 'Pemeliharan aplikasi E-Suket', 'SDPPI Kominfo'),
(2, 'Pemeliharan aplikasi SIRANI', 'SDPPI Kominfo'),
(3, 'Pengembangan aplikasi Pemeriksaan Stasiun Radio Digital', 'SDPPI Kominfo'),
(4, 'Aplikasi analisa jabatan', 'Kementrian PUPR'),
(5, 'Pemeliharaan aplikasi INV-J', 'Kementrian PUPR'),
(6, 'Penyiapan modul Integritas', 'Kementrian PUPR'),
(7, 'Pembuatan modul survey integritas', 'Kementrian PUPR'),
(8, 'Pembuatan aplikasi integritas jembatan', 'kementrian PUPR'),
(9, 'Pengembangan aplikasi WISPU', 'Kementrian PUPR'),
(10, 'Aplikasi pelaporan keuangan', 'Kementrian pendidikan'),
(11, 'Pembuatan aplikasi SITALAS', 'Jamkrida JABAR');

-- --------------------------------------------------------

--
-- Table structure for table `alterna_alternatekno_produk`
--

CREATE TABLE `alterna_alternatekno_produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaproduk` varchar(255) NOT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `persist_code` varchar(255) DEFAULT NULL,
  `reset_password_code` varchar(255) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_password_expired` tinyint(1) NOT NULL DEFAULT 0,
  `password_changed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `is_superuser`, `activated_at`, `last_login`, `deleted_at`, `role_id`, `created_at`, `updated_at`, `is_password_expired`, `password_changed_at`) VALUES
(1, 'admin', 'admin', 'admin', 'alterna.kreatifindo@gmail.com', '$2y$10$td0gLEA9S302nJfBfBmya.dFKDvERCmJ.s2gmjvS1ztbEg4TwQPA6', NULL, '$2y$10$sH6KfrhRQRUnqVLfa5Ap6OXPr1PQEwf70rU/Dqc8Kj3UyQEnS7qC6', NULL, '', 1, 1, NULL, '2024-02-06 19:40:40', NULL, 1, '2024-02-05 20:29:41', '2024-02-06 19:40:40', 0, '2024-02-06 19:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `code`, `description`, `is_new_user_default`, `created_at`, `updated_at`) VALUES
(1, 'Owners', 'owners', 'Default group for website owners.', 0, '2024-02-05 20:16:09', '2024-02-05 20:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `group` varchar(50) NOT NULL,
  `item` varchar(150) NOT NULL,
  `value` text DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL,
  `site_root_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`, `site_id`, `site_root_id`) VALUES
(1, 1, 'cms', 'theme', 'edit', '\"alternatekno\"', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `color_background` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `color_background`, `description`, `permissions`, `is_system`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'developer', '#3498db', 'Site administrator with access to developer tools.', '', 1, 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 'Publisher', 'publisher', '#1abc9c', 'Site editor with access to publishing tools.', '', 1, 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `old_template` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `old_content` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) NOT NULL,
  `master_field` varchar(255) NOT NULL,
  `slave_type` varchar(255) NOT NULL,
  `slave_id` int(11) NOT NULL,
  `pivot_data` mediumtext DEFAULT NULL,
  `session_key` varchar(255) NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` text NOT NULL,
  `exception` longtext DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slides`
--

CREATE TABLE `flosch_slideshow_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slideshow_id` int(10) UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `published_at` datetime DEFAULT NULL,
  `unpublished_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slides`
--

INSERT INTO `flosch_slideshow_slides` (`id`, `name`, `description`, `link`, `sort_order`, `created_at`, `updated_at`, `slideshow_id`, `is_published`, `published_at`, `unpublished_at`) VALUES
(1, '0', 'Slide N°0', 'http://example.com/', 1, '2024-02-05 20:18:02', '2024-02-05 20:18:02', 1, 0, NULL, NULL),
(2, '1', 'Slide N°1', 'http://example.com/', 2, '2024-02-05 20:18:02', '2024-02-05 20:18:02', 1, 0, NULL, NULL),
(3, '2', 'Slide N°2', 'http://example.com/', 3, '2024-02-05 20:18:02', '2024-02-05 20:18:02', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slideshows`
--

CREATE TABLE `flosch_slideshow_slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slideshows`
--

INSERT INTO `flosch_slideshow_slideshows` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Example', '2024-02-05 20:18:02', '2024-02-05 20:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `ginopane_blogtaxonomy_post_types`
--

CREATE TABLE `ginopane_blogtaxonomy_post_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type_attributes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ginopane_blogtaxonomy_post_types`
--

INSERT INTO `ginopane_blogtaxonomy_post_types` (`id`, `name`, `slug`, `description`, `type_attributes`, `created_at`, `updated_at`) VALUES
(1, 'Game Review', 'game-review', NULL, '[{\"name\":\"Release Date\",\"code\":\"release-date\",\"type\":\"datepicker\",\"datepicker_mode\":\"date\"},{\"name\":\"Publisher\",\"code\":\"publisher\",\"type\":\"text\"},{\"name\":\"Editor\",\"code\":\"editor\",\"type\":\"text\"},{\"name\":\"Rating\",\"code\":\"rating\",\"type\":\"dropdown\",\"dropdown_options\":\"1,2,3,4,5,6,7,8,9,10\"},{\"name\":\"Pros\",\"code\":\"pros\",\"type\":\"textarea\"},{\"name\":\"Cons\",\"code\":\"cons\",\"type\":\"textarea\"}]', '2024-02-05 20:21:35', '2024-02-05 20:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `ginopane_blogtaxonomy_related_series`
--

CREATE TABLE `ginopane_blogtaxonomy_related_series` (
  `series_id` int(10) UNSIGNED NOT NULL,
  `related_series_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ginopane_blogtaxonomy_series`
--

CREATE TABLE `ginopane_blogtaxonomy_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ginopane_blogtaxonomy_taggables`
--

CREATE TABLE `ginopane_blogtaxonomy_taggables` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `ginopane_blogtaxonomy_taggable_id` int(10) UNSIGNED DEFAULT NULL,
  `ginopane_blogtaxonomy_taggable_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ginopane_blogtaxonomy_tags`
--

CREATE TABLE `ginopane_blogtaxonomy_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(8, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(9, '2014_10_01_000010_Db_Jobs', 1),
(10, '2014_10_01_000011_Db_System_Event_Logs', 1),
(11, '2014_10_01_000012_Db_System_Request_Logs', 1),
(12, '2014_10_01_000013_Db_System_Sessions', 1),
(13, '2015_10_01_000016_Db_Cache', 1),
(14, '2015_10_01_000017_Db_System_Revisions', 1),
(15, '2015_10_01_000018_Db_FailedJobs', 1),
(16, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(17, '2021_10_01_000025_Db_Add_Pivot_Data_To_Deferred_Bindings', 1),
(18, '2022_10_01_000026_Db_System_Site_Definitions', 1),
(19, '2023_10_01_000027_Db_Add_Site_To_Settings', 1),
(20, '2023_10_01_000028_Db_Add_Restrict_Roles_To_Sites', 1),
(21, '2023_10_01_000029_Db_System_Site_Groups', 1),
(22, '2023_10_01_000030_Db_Add_Group_To_Sites', 1),
(23, '2013_10_01_000001_Db_Backend_Users', 2),
(24, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(25, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(26, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(27, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(28, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(29, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(30, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(31, '2022_10_01_000012_Db_Backend_User_Roles_Sortable', 2),
(32, '2023_10_01_000013_Db_Add_Site_To_Preferences', 2),
(33, '2023_10_01_000014_Db_Add_User_Expired_Password', 2),
(34, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(35, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(36, '2018_11_01_000001_Db_Cms_Theme_Templates', 3),
(37, '2021_05_01_000001_Db_Tailor_Globals', 4),
(38, '2021_05_01_000002_Db_Tailor_Content', 4),
(39, '2021_06_01_000003_Db_Tailor_PreviewToken', 4),
(40, '2023_10_01_000004_Db_Tailor_Content_Joins', 4);

-- --------------------------------------------------------

--
-- Table structure for table `offline_sitesearch_query_logs`
--

CREATE TABLE `offline_sitesearch_query_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `query` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2024-02-05 20:18:04', '2024-02-05 20:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `content_html` longtext DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `ginopane_blogtaxonomy_series_id` int(10) UNSIGNED DEFAULT NULL,
  `ginopane_blogtaxonomy_post_types_id` int(10) UNSIGNED DEFAULT NULL,
  `ginopane_blogtaxonomy_post_types_attributes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `ginopane_blogtaxonomy_series_id`, `ginopane_blogtaxonomy_post_types_id`, `ginopane_blogtaxonomy_post_types_attributes`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2024-02-05 20:18:03', 1, '2024-02-05 20:18:04', '2024-02-05 20:18:04', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rebel59_isogallery_categories`
--

CREATE TABLE `rebel59_isogallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rebel59_isogallery_galleries`
--

CREATE TABLE `rebel59_isogallery_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rebel59_isogallery_gally_cats`
--

CREATE TABLE `rebel59_isogallery_gally_cats` (
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Symfony\\Component\\Yaml\\Exception\\ParseException: A syntax error was detected in C:/Users/abelk/PtAlternatekno/plugins/ginopane/blogtaxonomy/updates/version.yaml. The string \"!!! Migrated to polymorphic tag relation. Make sure to backup and proceed with caution\" could not be parsed as it uses an unsupported built-in tag at line 74 (near \"!!! Migrated to polymorphic tag relation. Make sure to backup and proceed with caution\") at line 43 (near \"C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php\"). in C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php:43\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): October\\Rain\\Parse\\Yaml->parseFile(\'C:/Users/abelk/...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(358): Illuminate\\Support\\Facades\\Facade::__callStatic(\'parseFile\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(317): System\\Classes\\VersionManager->getFileVersions(\'GinoPane.BlogTa...\')\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(84): System\\Classes\\VersionManager->getLatestFileVersion(\'GinoPane.BlogTa...\')\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(113): System\\Classes\\VersionManager->updatePlugin(Object(GinoPane\\BlogTaxonomy\\Plugin))\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(94): System\\Classes\\UpdateManager->migratePlugin(\'GinoPane.BlogTa...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\UpdateManager.php(122): System\\Classes\\UpdateManager->migratePlugins()\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\console\\OctoberMigrate.php(47): System\\Classes\\UpdateManager->update()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): System\\Console\\OctoberMigrate->handle()\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberMigrate), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\Users\\abelk\\PtAlternatekno\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 {main}', '[]', '2024-02-05 20:18:05', '2024-02-05 20:18:05'),
(2, 'error', 'Symfony\\Component\\Yaml\\Exception\\ParseException: A syntax error was detected in C:/Users/abelk/PtAlternatekno/plugins/ginopane/blogtaxonomy/updates/version.yaml. The string \"!!! Migrated to polymorphic tag relation. Make sure to backup and proceed with caution\" could not be parsed as it uses an unsupported built-in tag at line 74 (near \"!!! Migrated to polymorphic tag relation. Make sure to backup and proceed with caution\") at line 43 (near \"C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php\"). in C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php:43\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): October\\Rain\\Parse\\Yaml->parseFile(\'C:/Users/abelk/...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(358): Illuminate\\Support\\Facades\\Facade::__callStatic(\'parseFile\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(317): System\\Classes\\VersionManager->getFileVersions(\'GinoPane.BlogTa...\')\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(84): System\\Classes\\VersionManager->getLatestFileVersion(\'GinoPane.BlogTa...\')\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(113): System\\Classes\\VersionManager->updatePlugin(Object(GinoPane\\BlogTaxonomy\\Plugin))\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(94): System\\Classes\\UpdateManager->migratePlugin(\'GinoPane.BlogTa...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\UpdateManager.php(122): System\\Classes\\UpdateManager->migratePlugins()\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\console\\OctoberMigrate.php(47): System\\Classes\\UpdateManager->update()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): System\\Console\\OctoberMigrate->handle()\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberMigrate), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\Users\\abelk\\PtAlternatekno\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 {main}', '[]', '2024-02-05 20:19:32', '2024-02-05 20:19:32'),
(3, 'error', 'Symfony\\Component\\Yaml\\Exception\\ParseException: A syntax error was detected in C:/Users/abelk/PtAlternatekno/plugins/ginopane/blogtaxonomy/updates/version.yaml. The string \"!!! Internal directory structure was slightly changed\" could not be parsed as it uses an unsupported built-in tag at line 113 (near \"!!! Internal directory structure was slightly changed\") at line 43 (near \"C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php\"). in C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php:43\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): October\\Rain\\Parse\\Yaml->parseFile(\'C:/Users/abelk/...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(358): Illuminate\\Support\\Facades\\Facade::__callStatic(\'parseFile\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(317): System\\Classes\\VersionManager->getFileVersions(\'GinoPane.BlogTa...\')\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(84): System\\Classes\\VersionManager->getLatestFileVersion(\'GinoPane.BlogTa...\')\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(113): System\\Classes\\VersionManager->updatePlugin(Object(GinoPane\\BlogTaxonomy\\Plugin))\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(94): System\\Classes\\UpdateManager->migratePlugin(\'GinoPane.BlogTa...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\UpdateManager.php(122): System\\Classes\\UpdateManager->migratePlugins()\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\console\\OctoberMigrate.php(47): System\\Classes\\UpdateManager->update()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): System\\Console\\OctoberMigrate->handle()\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberMigrate), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\Users\\abelk\\PtAlternatekno\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 {main}', '[]', '2024-02-05 20:20:21', '2024-02-05 20:20:21'),
(4, 'error', 'Symfony\\Component\\Yaml\\Exception\\ParseException: A syntax error was detected in C:/Users/abelk/PtAlternatekno/plugins/ginopane/blogtaxonomy/updates/version.yaml. The string \"!!! Some properties of TagList component were either renamed or set to private, please check the changelog\" could not be parsed as it uses an unsupported built-in tag at line 118 (near \"!!! Some properties of TagList component were either renamed or set to private, please check the changelog\") at line 43 (near \"C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php\"). in C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Parse\\Yaml.php:43\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): October\\Rain\\Parse\\Yaml->parseFile(\'C:/Users/abelk/...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(358): Illuminate\\Support\\Facades\\Facade::__callStatic(\'parseFile\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(317): System\\Classes\\VersionManager->getFileVersions(\'GinoPane.BlogTa...\')\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\VersionManager.php(84): System\\Classes\\VersionManager->getLatestFileVersion(\'GinoPane.BlogTa...\')\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(113): System\\Classes\\VersionManager->updatePlugin(Object(GinoPane\\BlogTaxonomy\\Plugin))\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\updatemanager\\ManagesPlugins.php(94): System\\Classes\\UpdateManager->migratePlugin(\'GinoPane.BlogTa...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\UpdateManager.php(122): System\\Classes\\UpdateManager->migratePlugins()\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\console\\OctoberMigrate.php(47): System\\Classes\\UpdateManager->update()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): System\\Console\\OctoberMigrate->handle()\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberMigrate), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\Users\\abelk\\PtAlternatekno\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 {main}', '[]', '2024-02-05 20:20:55', '2024-02-05 20:20:55'),
(5, 'error', 'Cms\\Classes\\CmsException: The partial \'services\' is not found. in C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'services\', Array, true)\n#1 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\3a\\3a08cc5421f9abc400292b82f5c7de0f2e5b97f7c32d33cf5cee8e192fef08f9.php(44): Cms\\Twig\\Extension->partialFunction(\'services\', Array, true)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_1d3e3162f563ff05f3bdb2f2adf352a0de9ab322a9816bde61f45b4bc06b5fe0->doDisplay(Array, Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'services\' is not found.\") in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/pages/home.htm\" at line 3. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php:408\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#39 {main}', '[]', '2024-02-05 21:56:16', '2024-02-05 21:56:16');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(6, 'error', 'Cms\\Classes\\CmsException: The partial \'services\' is not found. in C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'services\', Array, true)\n#1 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\3a\\3a08cc5421f9abc400292b82f5c7de0f2e5b97f7c32d33cf5cee8e192fef08f9.php(44): Cms\\Twig\\Extension->partialFunction(\'services\', Array, true)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_1d3e3162f563ff05f3bdb2f2adf352a0de9ab322a9816bde61f45b4bc06b5fe0->doDisplay(Array, Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'services\' is not found.\") in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/pages/home.htm\" at line 3. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php:408\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#39 {main}', '[]', '2024-02-05 21:56:17', '2024-02-05 21:56:17'),
(7, 'error', 'Cms\\Classes\\CmsException: The partial \'navbar\' is not found. in C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'navbar\', Array, true)\n#1 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\a9\\a9508ae7557923e04161541e9320d9907ecd6890367caa3cbd95d169c32451f0.php(64): Cms\\Twig\\Extension->partialFunction(\'navbar\', Array, true)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_affdaaf0a5cc84c62c35e4c0de51d9ebf40afec507069ed21dfc240bb12e6ea7->doDisplay(Array, Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'navbar\' is not found.\") in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/layouts/default.htm\" at line 14. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php:408\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#39 {main}', '[]', '2024-02-05 21:56:35', '2024-02-05 21:56:35'),
(8, 'error', 'Cms\\Classes\\CmsException: The partial \'navbar\' is not found. in C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'navbar\', Array, true)\n#1 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\a9\\a9508ae7557923e04161541e9320d9907ecd6890367caa3cbd95d169c32451f0.php(64): Cms\\Twig\\Extension->partialFunction(\'navbar\', Array, true)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_affdaaf0a5cc84c62c35e4c0de51d9ebf40afec507069ed21dfc240bb12e6ea7->doDisplay(Array, Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'navbar\' is not found.\") in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/layouts/default.htm\" at line 14. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php:408\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#39 {main}', '[]', '2024-02-05 21:58:14', '2024-02-05 21:58:14');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(9, 'error', 'RuntimeException: The source file \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/assets/css/output.css\" does not exist. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Assetic\\Asset\\FileAsset.php:74\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Assetic\\Asset\\AssetCache.php(150): October\\Rain\\Assetic\\Asset\\FileAsset->getLastModified()\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Assetic\\Factory\\AssetFactory.php(261): October\\Rain\\Assetic\\Asset\\AssetCache->getLastModified()\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Assetic\\Traits\\HasDeepHasher.php(20): October\\Rain\\Assetic\\Factory\\AssetFactory->getLastModified(Object(October\\Rain\\Assetic\\Asset\\AssetCollection))\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\CombineAssets.php(346): October\\Rain\\Assetic\\Combiner->getDeepHashLastModified(Object(October\\Rain\\Assetic\\Asset\\AssetCollection))\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\classes\\CombineAssets.php(159): System\\Classes\\CombineAssets->prepareRequest(Array, \'C:\\\\Users\\\\abelk\\\\...\')\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasThemeAssetMaker.php(31): System\\Classes\\CombineAssets::combine(Array, \'C:\\\\Users\\\\abelk\\\\...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(727): Cms\\Classes\\Controller->combineAssets(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(325): Cms\\Classes\\Controller->themeUrl(Array)\n#8 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\a9\\a9508ae7557923e04161541e9320d9907ecd6890367caa3cbd95d169c32451f0.php(44): Cms\\Twig\\Extension->themeFilter(Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_affdaaf0a5cc84c62c35e4c0de51d9ebf40afec507069ed21dfc240bb12e6ea7->doDisplay(Array, Array)\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#13 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The source file \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/assets/css/output.css\" does not exist.\") in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/layouts/default.htm\" at line 6. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php:408\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#3 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#39 {main}', '[]', '2024-02-05 22:12:23', '2024-02-05 22:12:23'),
(10, 'error', 'PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ptalternatekno.alterna_alternatekno_job\' doesn\'t exist in C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:414\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(414): PDO->prepare(\'select count(*)...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(753): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select count(*)...\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'select count(*)...\', Array, Object(Closure))\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(422): Illuminate\\Database\\Connection->run(\'select count(*)...\', Array, Object(Closure))\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2706): Illuminate\\Database\\Connection->select(\'select count(*)...\', Array, true)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2694): Illuminate\\Database\\Query\\Builder->runSelect()\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3230): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2695): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(90): Illuminate\\Database\\Query\\Builder->get(Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2844): October\\Rain\\Database\\QueryBuilder->get()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2803): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery(Array)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Builder.php(170): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Concerns\\HasNicerPagination.php(17): October\\Rain\\Database\\Builder->paginate(20, Array, \'page\', 1)\n#13 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(599): October\\Rain\\Database\\Builder->paginateAtPage(20, 1)\n#14 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(238): Backend\\Widgets\\Lists->getRecords()\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(226): Backend\\Widgets\\Lists->prepareVars()\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.php(10): Backend\\Widgets\\Lists->render()\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\ControllerBehavior.php(134): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#19 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(98): Backend\\Classes\\ControllerBehavior->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#20 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(446): Backend\\Classes\\ControllerBehavior->makePartial(\'_container\', Array)\n#21 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(433): Backend\\Behaviors\\ListController->listMakePartial(\'container\', Array)\n#22 [internal function]: Backend\\Behaviors\\ListController->listRender()\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(504): call_user_func_array(Array, Array)\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\Extendable.php(55): October\\Rain\\Extension\\Extendable->extendableCall(\'listRender\', Array)\n#25 C:\\Users\\abelk\\PtAlternatekno\\plugins\\alterna\\alternatekno\\controllers\\pekerjaan\\index.php(1): October\\Rain\\Extension\\Extendable->__call(\'listRender\', Array)\n#26 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#27 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(112): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\')\n#28 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(401): Backend\\Classes\\Controller->makeView(\'index\')\n#29 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(269): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#30 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\BackendController.php(118): Backend\\Classes\\Controller->run(\'index\', Array)\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run(\'alterna/alterna...\')\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#51 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#52 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#53 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#63 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ptalternatekno.alterna_alternatekno_job\' doesn\'t exist (SQL: select count(*) as aggregate from `alterna_alternatekno_job`) in C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:760\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'select count(*)...\', Array, Object(Closure))\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(422): Illuminate\\Database\\Connection->run(\'select count(*)...\', Array, Object(Closure))\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2706): Illuminate\\Database\\Connection->select(\'select count(*)...\', Array, true)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2694): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3230): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2695): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(90): Illuminate\\Database\\Query\\Builder->get(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2844): October\\Rain\\Database\\QueryBuilder->get()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2803): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery(Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Builder.php(170): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Concerns\\HasNicerPagination.php(17): October\\Rain\\Database\\Builder->paginate(20, Array, \'page\', 1)\n#11 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(599): October\\Rain\\Database\\Builder->paginateAtPage(20, 1)\n#12 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(238): Backend\\Widgets\\Lists->getRecords()\n#13 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(226): Backend\\Widgets\\Lists->prepareVars()\n#14 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.php(10): Backend\\Widgets\\Lists->render()\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\ControllerBehavior.php(134): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(98): Backend\\Classes\\ControllerBehavior->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(446): Backend\\Classes\\ControllerBehavior->makePartial(\'_container\', Array)\n#19 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(433): Backend\\Behaviors\\ListController->listMakePartial(\'container\', Array)\n#20 [internal function]: Backend\\Behaviors\\ListController->listRender()\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(504): call_user_func_array(Array, Array)\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\Extendable.php(55): October\\Rain\\Extension\\Extendable->extendableCall(\'listRender\', Array)\n#23 C:\\Users\\abelk\\PtAlternatekno\\plugins\\alterna\\alternatekno\\controllers\\pekerjaan\\index.php(1): October\\Rain\\Extension\\Extendable->__call(\'listRender\', Array)\n#24 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#25 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(112): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\')\n#26 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(401): Backend\\Classes\\Controller->makeView(\'index\')\n#27 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(269): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#28 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\BackendController.php(118): Backend\\Classes\\Controller->run(\'index\', Array)\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run(\'alterna/alterna...\')\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#58 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#60 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#61 {main}', '[]', '2024-02-06 19:37:41', '2024-02-06 19:37:41');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(11, 'error', 'PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ptalternatekno.alterna_alternatekno_job\' doesn\'t exist in C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:414\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(414): PDO->prepare(\'select count(*)...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(753): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select count(*)...\', Array)\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'select count(*)...\', Array, Object(Closure))\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(422): Illuminate\\Database\\Connection->run(\'select count(*)...\', Array, Object(Closure))\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2706): Illuminate\\Database\\Connection->select(\'select count(*)...\', Array, true)\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2694): Illuminate\\Database\\Query\\Builder->runSelect()\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3230): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2695): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(90): Illuminate\\Database\\Query\\Builder->get(Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2844): October\\Rain\\Database\\QueryBuilder->get()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2803): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery(Array)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Builder.php(170): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Concerns\\HasNicerPagination.php(17): October\\Rain\\Database\\Builder->paginate(20, Array, \'page\', 1)\n#13 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(599): October\\Rain\\Database\\Builder->paginateAtPage(20, 1)\n#14 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(238): Backend\\Widgets\\Lists->getRecords()\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(226): Backend\\Widgets\\Lists->prepareVars()\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.php(10): Backend\\Widgets\\Lists->render()\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\ControllerBehavior.php(134): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#19 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(98): Backend\\Classes\\ControllerBehavior->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#20 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(446): Backend\\Classes\\ControllerBehavior->makePartial(\'_container\', Array)\n#21 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(433): Backend\\Behaviors\\ListController->listMakePartial(\'container\', Array)\n#22 [internal function]: Backend\\Behaviors\\ListController->listRender()\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(504): call_user_func_array(Array, Array)\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\Extendable.php(55): October\\Rain\\Extension\\Extendable->extendableCall(\'listRender\', Array)\n#25 C:\\Users\\abelk\\PtAlternatekno\\plugins\\alterna\\alternatekno\\controllers\\pekerjaan\\index.php(1): October\\Rain\\Extension\\Extendable->__call(\'listRender\', Array)\n#26 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#27 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(112): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\')\n#28 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(401): Backend\\Classes\\Controller->makeView(\'index\')\n#29 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(269): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#30 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\BackendController.php(118): Backend\\Classes\\Controller->run(\'index\', Array)\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run(\'alterna/alterna...\')\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#51 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#52 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#53 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#63 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ptalternatekno.alterna_alternatekno_job\' doesn\'t exist (SQL: select count(*) as aggregate from `alterna_alternatekno_job`) in C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:760\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'select count(*)...\', Array, Object(Closure))\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(422): Illuminate\\Database\\Connection->run(\'select count(*)...\', Array, Object(Closure))\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2706): Illuminate\\Database\\Connection->select(\'select count(*)...\', Array, true)\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2694): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3230): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2695): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(90): Illuminate\\Database\\Query\\Builder->get(Array)\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2844): October\\Rain\\Database\\QueryBuilder->get()\n#8 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2803): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery(Array)\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Builder.php(170): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Database\\Concerns\\HasNicerPagination.php(17): October\\Rain\\Database\\Builder->paginate(20, Array, \'page\', 1)\n#11 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(599): October\\Rain\\Database\\Builder->paginateAtPage(20, 1)\n#12 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(238): Backend\\Widgets\\Lists->getRecords()\n#13 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\widgets\\Lists.php(226): Backend\\Widgets\\Lists->prepareVars()\n#14 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.php(10): Backend\\Widgets\\Lists->render()\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\ControllerBehavior.php(134): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(98): Backend\\Classes\\ControllerBehavior->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\', Array)\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(446): Backend\\Classes\\ControllerBehavior->makePartial(\'_container\', Array)\n#19 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\behaviors\\ListController.php(433): Backend\\Behaviors\\ListController->listMakePartial(\'container\', Array)\n#20 [internal function]: Backend\\Behaviors\\ListController->listRender()\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(504): call_user_func_array(Array, Array)\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Extension\\Extendable.php(55): October\\Rain\\Extension\\Extendable->extendableCall(\'listRender\', Array)\n#23 C:\\Users\\abelk\\PtAlternatekno\\plugins\\alterna\\alternatekno\\controllers\\pekerjaan\\index.php(1): October\\Rain\\Extension\\Extendable->__call(\'listRender\', Array)\n#24 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(267): include(\'C:\\\\Users\\\\abelk\\\\...\')\n#25 C:\\Users\\abelk\\PtAlternatekno\\modules\\system\\traits\\ViewMaker.php(112): Backend\\Classes\\Controller->makeFileContents(\'C:\\\\Users\\\\abelk\\\\...\')\n#26 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(401): Backend\\Classes\\Controller->makeView(\'index\')\n#27 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\Controller.php(269): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#28 C:\\Users\\abelk\\PtAlternatekno\\modules\\backend\\classes\\BackendController.php(118): Backend\\Classes\\Controller->run(\'index\', Array)\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run(\'alterna/alterna...\')\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#58 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#59 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#60 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#61 {main}', '[]', '2024-02-06 19:37:42', '2024-02-06 19:37:42'),
(12, 'error', 'Symfony\\Component\\Console\\Exception\\CommandNotFoundException: Command \"october:mmigrate\" is not defined.\n\nDid you mean one of these?\n    october:about\n    october:down\n    october:fresh\n    october:migrate\n    october:mirror\n    october:optimize\n    october:passwd\n    october:up\n    october:update\n    october:util\n    tailor:migrate in C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php:694\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(259): Symfony\\Component\\Console\\Application->find(\'october:mmigrat...\')\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#4 C:\\Users\\abelk\\PtAlternatekno\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#5 {main}', '[]', '2024-02-06 19:38:08', '2024-02-06 19:38:08'),
(13, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"punctuation\" of value \":\" in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/partials/jobs.htm\" at line 4. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php:287\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php(177): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php(72): Twig\\ExpressionParser->getPrimary()\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php(127): Twig\\ExpressionParser->parseExpression()\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php(83): Twig\\Parser->subparse(NULL, false)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(490): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(518): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(350): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(312): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\Users\\\\abelk\\\\...\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(241): Twig\\Environment->load(\'C:\\\\Users\\\\abelk\\\\...\')\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'jobs\', Array, true)\n#10 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\e1\\e1a65d6a88d7088a71f093d1083bbec620e33cbaa794043ae572074fab9e92d5.php(38): Cms\\Twig\\Extension->partialFunction(\'jobs\', Array, true)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_f70aae60e4b6d2dbfdc61b195ccecafe65c43e5d7f32912866eb88e1276d4e35->doDisplay(Array, Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'karir\')\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'karir\')\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#51 {main}', '[]', '2024-02-06 19:44:03', '2024-02-06 19:44:03'),
(14, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"punctuation\" of value \":\" in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/partials/jobs.htm\" at line 4. in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php:287\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php(177): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\ExpressionParser.php(72): Twig\\ExpressionParser->getPrimary()\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php(127): Twig\\ExpressionParser->parseExpression()\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php(83): Twig\\Parser->subparse(NULL, false)\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(490): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(518): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(350): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(312): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\Users\\\\abelk\\\\...\')\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(241): Twig\\Environment->load(\'C:\\\\Users\\\\abelk\\\\...\')\n#9 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\twig\\Extension.php(154): Cms\\Classes\\Controller->renderPartial(\'jobs\', Array, true)\n#10 C:\\Users\\abelk\\PtAlternatekno\\storage\\cms\\twig\\e1\\e1a65d6a88d7088a71f093d1083bbec620e33cbaa794043ae572074fab9e92d5.php(38): Cms\\Twig\\Extension->partialFunction(\'jobs\', Array, true)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(394): __TwigTemplate_f70aae60e4b6d2dbfdc61b195ccecafe65c43e5d7f32912866eb88e1276d4e35->doDisplay(Array, Array)\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(367): Twig\\Template->displayWithErrorHandling(Array, Array)\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Template.php(379): Twig\\Template->display(Array)\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\TemplateWrapper.php(38): Twig\\Template->render(Array)\n#15 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(83): Twig\\TemplateWrapper->render(Array)\n#16 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(414): Cms\\Classes\\Controller->renderPageContents()\n#17 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'karir\')\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'karir\')\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#51 {main}', '[]', '2024-02-06 19:48:52', '2024-02-06 19:48:52');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(15, 'error', 'Twig\\Error\\SyntaxError: Unknown \"pages\" tag. Did you mean \"page\" in \"C:\\Users\\abelk\\PtAlternatekno\\themes/alternatekno/layouts/default.htm\" at line 21? in C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php:160\nStack trace:\n#0 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Parser.php(83): Twig\\Parser->subparse(NULL, false)\n#1 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(490): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(518): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(350): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 C:\\Users\\abelk\\PtAlternatekno\\vendor\\twig\\twig\\src\\Environment.php(312): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\Users\\\\abelk\\\\...\')\n#5 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\controller\\HasRenderers.php(69): Twig\\Environment->load(\'C:\\\\Users\\\\abelk\\\\...\')\n#6 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(418): Cms\\Classes\\Controller->renderLayoutContents()\n#7 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\Controller.php(219): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\Users\\abelk\\PtAlternatekno\\modules\\cms\\classes\\CmsController.php(71): Cms\\Classes\\Controller->run(\'/\')\n#9 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#10 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#13 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#14 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#21 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#29 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#30 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#31 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#32 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\Users\\abelk\\PtAlternatekno\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#39 C:\\Users\\abelk\\PtAlternatekno\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#40 C:\\Users\\abelk\\PtAlternatekno\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\Users\\\\abelk\\\\...\')\n#41 {main}', '[]', '2024-02-06 20:15:08', '2024-02-06 20:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, '65c2f2520632f849330987.png', 'sdppikominfo.png', 18097, 'image/png', NULL, NULL, 'Icon', 1, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 2, '2024-02-06 20:00:34', '2024-02-06 20:00:36'),
(3, '65c2f282c94fe777526523.png', 'sdppikominfo.png', 18097, 'image/png', NULL, NULL, 'Icon', 2, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 3, '2024-02-06 20:01:22', '2024-02-06 20:01:58'),
(4, '65c2f2c991212517801436.png', 'sdppikominfo.png', 18097, 'image/png', NULL, NULL, 'Icon', 3, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 4, '2024-02-06 20:02:33', '2024-02-06 20:02:38'),
(5, '65c2f2e8260df761515820.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 4, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 5, '2024-02-06 20:03:04', '2024-02-06 20:03:06'),
(6, '65c2f314ba946351237878.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 5, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 6, '2024-02-06 20:03:48', '2024-02-06 20:03:51'),
(7, '65c2f34144db3102377717.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 6, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 7, '2024-02-06 20:04:33', '2024-02-06 20:04:34'),
(8, '65c2f35bed5fe705009000.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 7, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 8, '2024-02-06 20:04:59', '2024-02-06 20:05:02'),
(9, '65c2f373732ae797158293.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 8, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 9, '2024-02-06 20:05:23', '2024-02-06 20:05:26'),
(10, '65c2f389615f3998941849.png', 'pupr.png', 5121, 'image/png', NULL, NULL, 'Icon', 9, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 10, '2024-02-06 20:05:45', '2024-02-06 20:05:46'),
(11, '65c2f3d456033335236455.png', 'diknas.png', 12671, 'image/png', NULL, NULL, 'Icon', 10, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 11, '2024-02-06 20:07:00', '2024-02-06 20:07:01'),
(12, '65c2f3f357fd3116500297.png', 'jamkrida.png', 12304, 'image/png', NULL, NULL, 'Icon', 11, 'Alterna\\Alternatekno\\Models\\Portofolio', 1, 12, '2024-02-06 20:07:31', '2024-02-06 20:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `content_css` text DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2024-02-05 20:16:06', '2024-02-05 20:16:06'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2024-02-05 20:16:06', '2024-02-05 20:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `group` varchar(50) NOT NULL,
  `item` varchar(150) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '1'),
(2, 'system', 'core', 'build', '\"15\"'),
(3, 'system', 'update', 'retry', '1707363178'),
(4, 'system', 'project', 'key', '\"0AQN2ZmtgZwtlAwZ0YJWyAzAxMwSwA2RkAGWzMQOyZmN3AwEvMQR4ZGMxATVm\"'),
(5, 'system', 'update', 'versions', '{\"count\":1,\"core\":null,\"plugins\":{\"OFFLINE.SiteSearch\":\"1.7.17\"}}'),
(6, 'system', 'project', 'id', '282634'),
(7, 'system', 'project', 'name', '\"PT Alterna Teknologi Kreatifindo\"'),
(8, 'system', 'project', 'owner', '\"Alterna Kreatifindo\"'),
(9, 'system', 'project', 'is_active', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `version` varchar(50) NOT NULL,
  `detail` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2024-02-05 20:16:06'),
(2, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slideshows_table.php', '2024-02-05 20:18:02'),
(3, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slides_table.php', '2024-02-05 20:18:02'),
(4, 'Flosch.Slideshow', 'script', '1.0.1', 'seeder.php', '2024-02-05 20:18:02'),
(5, 'Flosch.Slideshow', 'comment', '1.0.1', 'First version of Slideshow', '2024-02-05 20:18:02'),
(6, 'Flosch.Slideshow', 'script', '1.0.2', 'table_update_flosch_slideshow_slides.php', '2024-02-05 20:18:02'),
(7, 'Flosch.Slideshow', 'comment', '1.0.2', 'Added is_published state and publication dates', '2024-02-05 20:18:02'),
(8, 'Flosch.Slideshow', 'comment', '1.0.3', 'Update documentation for Twitter Bootstrap sources', '2024-02-05 20:18:02'),
(9, 'Flosch.Slideshow', 'comment', '1.0.4', 'Update slides published query-scope (correct dates comparison)', '2024-02-05 20:18:03'),
(10, 'Flosch.Slideshow', 'comment', '1.0.5', 'Fix permission settings', '2024-02-05 20:18:03'),
(11, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add persian translation (thanks to @cracki)', '2024-02-05 20:18:03'),
(12, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add french translation', '2024-02-05 20:18:03'),
(13, 'Flosch.Slideshow', 'comment', '1.0.7', 'Add german translation (thanks to @danielbruni)', '2024-02-05 20:18:03'),
(14, 'Flosch.Slideshow', 'comment', '1.0.8', 'Correct columns definition (thanks to @Jeime)', '2024-02-05 20:18:03'),
(15, 'OFFLINE.SiteSearch', 'comment', '1.0.1', 'First version of SiteSearch', '2024-02-05 20:18:03'),
(16, 'OFFLINE.SiteSearch', 'comment', '1.0.2', 'Added experimental CMS pages results provider', '2024-02-05 20:18:03'),
(17, 'OFFLINE.SiteSearch', 'comment', '1.0.3', 'Added missing component', '2024-02-05 20:18:03'),
(18, 'OFFLINE.SiteSearch', 'comment', '1.0.4', 'Added support for RadiantWeb.ProBlog', '2024-02-05 20:18:03'),
(19, 'OFFLINE.SiteSearch', 'comment', '1.0.5', 'Moved configuration to the backend', '2024-02-05 20:18:03'),
(20, 'OFFLINE.SiteSearch', 'comment', '1.0.6', 'Fixed hardcoded url in pagination', '2024-02-05 20:18:03'),
(21, 'OFFLINE.SiteSearch', 'comment', '1.0.7', 'Add function for getting last page number (Thanks to vojtasvoboda)', '2024-02-05 20:18:03'),
(22, 'OFFLINE.SiteSearch', 'comment', '1.0.8', 'Add cs_CZ locale (Thanks to vojtasvoboda)', '2024-02-05 20:18:03'),
(23, 'OFFLINE.SiteSearch', 'comment', '1.0.9', 'Added support for ArrizalAmin.Portfolio plugin', '2024-02-05 20:18:03'),
(24, 'OFFLINE.SiteSearch', 'comment', '1.0.10', 'Removed unused component', '2024-02-05 20:18:03'),
(25, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Added support for translated contents in RainLab.Pages, ArrizalAmin.Portfolio and RadiantWeb.ProBlog', '2024-02-05 20:18:03'),
(26, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Fixed bug where RainLab.Pages results were displayed twice', '2024-02-05 20:18:03'),
(27, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Honor disabled plugins setting', '2024-02-05 20:18:03'),
(28, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Generate absolute URLs in search results by default', '2024-02-05 20:18:03'),
(29, 'OFFLINE.SiteSearch', 'comment', '1.1.1', 'Added optimized siteSearchInclude component for cms pages search', '2024-02-05 20:18:03'),
(30, 'OFFLINE.SiteSearch', 'comment', '1.1.2', 'Fixed backend permissions', '2024-02-05 20:18:03'),
(31, 'OFFLINE.SiteSearch', 'comment', '1.1.3', 'Added ru_RU locale (Thanks to mokeev1995)', '2024-02-05 20:18:03'),
(32, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Added support for Feegleweb.Octoshop (Thanks to billyzduke)', '2024-02-05 20:18:03'),
(33, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Refactored search providers and results page', '2024-02-05 20:18:03'),
(34, 'OFFLINE.SiteSearch', 'comment', '1.2.2', 'Minor bugfix in Feegleweb.Octoshop settings page translation', '2024-02-05 20:18:03'),
(35, 'OFFLINE.SiteSearch', 'comment', '1.2.3', 'Fixed bug where the search results sometimes broke the page layout', '2024-02-05 20:18:03'),
(36, 'OFFLINE.SiteSearch', 'comment', '1.2.4', 'Fixed bug where unavailable thumbnails lead to an error', '2024-02-05 20:18:03'),
(37, 'OFFLINE.SiteSearch', 'comment', '1.2.5', 'Fixed bug where the provider badge is not displayed for custom search providers', '2024-02-05 20:18:03'),
(38, 'OFFLINE.SiteSearch', 'comment', '1.2.6', 'Added support for Responsiv.Showcase (Thanks to MichiReich)', '2024-02-05 20:18:03'),
(39, 'OFFLINE.SiteSearch', 'comment', '1.2.7', 'Fixed bug where custom url settings were ignored in search results for some providers', '2024-02-05 20:18:03'),
(40, 'OFFLINE.SiteSearch', 'comment', '1.2.8', 'Added support for viewBag properties in RainLab.Pages', '2024-02-05 20:18:03'),
(41, 'OFFLINE.SiteSearch', 'comment', '1.2.9', 'Added support for static page component hosts', '2024-02-05 20:18:03'),
(42, 'OFFLINE.SiteSearch', 'comment', '1.2.10', 'Added support for multiple variables in Rainlab.Blog urls (Thanks to graker)', '2024-02-05 20:18:03'),
(43, 'OFFLINE.SiteSearch', 'comment', '1.2.11', 'Optimized handling of multibyte strings', '2024-02-05 20:18:03'),
(44, 'OFFLINE.SiteSearch', 'comment', '1.2.12', 'Added support for Jiri.Jkshop', '2024-02-05 20:18:03'),
(45, 'OFFLINE.SiteSearch', 'comment', '1.2.13', 'Minor bugfixes for marked queries in search results and Rainlab.Blog provider (Thanks to graker)', '2024-02-05 20:18:03'),
(46, 'OFFLINE.SiteSearch', 'comment', '1.2.14', 'Fixed bug in Jiri.JKShop provider', '2024-02-05 20:18:03'),
(47, 'OFFLINE.SiteSearch', 'comment', '1.2.15', 'Added a new meta property for search results (thanks to cracki)', '2024-02-05 20:18:03'),
(48, 'OFFLINE.SiteSearch', 'comment', '1.2.16', 'Added Persian (Farsi) translations (thanks to cracki)', '2024-02-05 20:18:03'),
(49, 'OFFLINE.SiteSearch', 'comment', '1.2.17', 'Added support for Indikator.News (thanks to gergo85)', '2024-02-05 20:18:03'),
(50, 'OFFLINE.SiteSearch', 'comment', '1.2.18', 'Fixed bug where titles of static pages where not searched (thanks to beenen445)', '2024-02-05 20:18:03'),
(51, 'OFFLINE.SiteSearch', 'comment', '1.2.19', 'Added support for OFFLINE.SnipcartShop', '2024-02-05 20:18:03'),
(52, 'OFFLINE.SiteSearch', 'comment', '1.2.20', 'Added support for VojtaSvoboda.Brands (thanks to vojtasvoboda)', '2024-02-05 20:18:03'),
(53, 'OFFLINE.SiteSearch', 'comment', '1.2.21', 'Added Portuguese translations (thanks to ribsousa)', '2024-02-05 20:18:03'),
(54, 'OFFLINE.SiteSearch', 'comment', '1.2.22', 'Fixed Portuguese translations', '2024-02-05 20:18:03'),
(55, 'OFFLINE.SiteSearch', 'comment', '1.2.23', 'Fixed support for translated Rainlab.Blog contents', '2024-02-05 20:18:03'),
(56, 'OFFLINE.SiteSearch', 'comment', '1.2.24', 'Added composer.json to allow loading plugin as dependency (thanks to adduc)', '2024-02-05 20:18:03'),
(57, 'OFFLINE.SiteSearch', 'comment', '1.2.25', 'Fixed bug that sometimes lead to broken html in search results (thanks to graker)', '2024-02-05 20:18:03'),
(58, 'OFFLINE.SiteSearch', 'comment', '1.2.26', 'Exclude hidden static pages from search results (thanks to plyusninva)', '2024-02-05 20:18:03'),
(59, 'OFFLINE.SiteSearch', 'comment', '1.2.27', 'Added support for Graker.PhotoAlbums (thanks to graker)', '2024-02-05 20:18:03'),
(60, 'OFFLINE.SiteSearch', 'comment', '1.2.28', 'Added new result.identifier property', '2024-02-05 20:18:03'),
(61, 'OFFLINE.SiteSearch', 'comment', '1.2.29', 'Optimized thumbnail generation for Graker.PhotoAlbums results (thanks to graker)', '2024-02-05 20:18:03'),
(62, 'OFFLINE.SiteSearch', 'comment', '1.2.30', 'The searchResults component\'s resultsCollection is now publically accessible', '2024-02-05 20:18:03'),
(63, 'OFFLINE.SiteSearch', 'comment', '1.2.31', 'Added model property for each search result to retreive the original model the result was generated from', '2024-02-05 20:18:03'),
(64, 'OFFLINE.SiteSearch', 'comment', '1.2.32', 'Added support for custom ResultsProvider classes', '2024-02-05 20:18:03'),
(65, 'OFFLINE.SiteSearch', 'comment', '1.2.33', 'Fix the use of multiple custom ResultsProvider for a plugin', '2024-02-05 20:18:03'),
(66, 'OFFLINE.SiteSearch', 'comment', '1.3.1', 'Added new searchInput component with search-as-you-type feature', '2024-02-05 20:18:03'),
(67, 'OFFLINE.SiteSearch', 'comment', '1.3.2', 'Fixed bug in AutoCompleteComponent', '2024-02-05 20:18:03'),
(68, 'OFFLINE.SiteSearch', 'comment', '1.3.3', '!!! All results are now returned with a relative URL to prevent problems with translated contents. Make sure to pass your result.url throught the \"app\" filter if you are using your own search result partials', '2024-02-05 20:18:03'),
(69, 'OFFLINE.SiteSearch', 'comment', '1.3.4', 'Fixed undefined index error when a static page doesn\'t have a title set', '2024-02-05 20:18:03'),
(70, 'OFFLINE.SiteSearch', 'comment', '1.3.5', 'Added ability to edit the user\'s query before searching', '2024-02-05 20:18:03'),
(71, 'OFFLINE.SiteSearch', 'comment', '1.3.6', '!!! Using RadiantWeb.ProBlog\'s internal settings to get the correct parent page for a blog post result. This enables support for multiple blogs on the same website. If your blog search results have wrong URLs after this update make sure to configure your default page for rendering blog posts via the ProBlog backend settings.', '2024-02-05 20:18:03'),
(72, 'OFFLINE.SiteSearch', 'comment', '1.3.7', 'Added the ability to add age penalties to search results. This can be used to show newer results higher up in your search results.', '2024-02-05 20:18:03'),
(73, 'OFFLINE.SiteSearch', 'comment', '1.3.8', 'Optimized support for multiple SearchInput components on a single page.', '2024-02-05 20:18:03'),
(74, 'OFFLINE.SiteSearch', 'comment', '1.3.9', 'Added Chinese language support (thanks to Ckend)', '2024-02-05 20:18:03'),
(75, 'OFFLINE.SiteSearch', 'comment', '1.3.10', 'Fixed link to search result in default results partial (thanks to wizzard94)', '2024-02-05 20:18:03'),
(76, 'OFFLINE.SiteSearch', 'comment', '1.3.11', 'Trim query before searching', '2024-02-05 20:18:03'),
(77, 'OFFLINE.SiteSearch', 'comment', '1.3.12', 'Stability improvements', '2024-02-05 20:18:03'),
(78, 'OFFLINE.SiteSearch', 'comment', '1.3.13', 'Pre-populate search query in searchInput field', '2024-02-05 20:18:03'),
(79, 'OFFLINE.SiteSearch', 'comment', '1.3.14', 'Include placeholders on Rainlab.Pages pages in search results', '2024-02-05 20:18:03'),
(80, 'OFFLINE.SiteSearch', 'comment', '1.3.15', 'Catch invalid markup errors when searching RainLab.Pages', '2024-02-05 20:18:03'),
(81, 'OFFLINE.SiteSearch', 'comment', '1.3.16', 'Only search RainLab.Blog contents of current locale', '2024-02-05 20:18:03'),
(82, 'OFFLINE.SiteSearch', 'comment', '1.3.17', 'Fixed pagination links when using RainLab.Translate', '2024-02-05 20:18:03'),
(83, 'OFFLINE.SiteSearch', 'comment', '1.3.18', 'Updated persian translations (thanks to @sajjad-ser)', '2024-02-05 20:18:03'),
(84, 'OFFLINE.SiteSearch', 'comment', '1.3.19', 'Added finnish translations (thank to @mediaclinic)', '2024-02-05 20:18:03'),
(85, 'OFFLINE.SiteSearch', 'comment', '1.3.20', 'Added bulgarian translations (thank to @NGavanozov)', '2024-02-05 20:18:03'),
(86, 'OFFLINE.SiteSearch', 'comment', '1.3.21', 'Fixed RainLab.Blog published_at date handling', '2024-02-05 20:18:03'),
(87, 'OFFLINE.SiteSearch', 'comment', '1.3.22', 'Fixed problem with queries that contain only spaces', '2024-02-05 20:18:03'),
(88, 'OFFLINE.SiteSearch', 'comment', '1.4.0', 'SiteSearch can now log all search queries. Enable via backend settings.', '2024-02-05 20:18:03'),
(89, 'OFFLINE.SiteSearch', 'script', '1.4.1', 'create_offline_sitesearch_query_logs.php', '2024-02-05 20:18:03'),
(90, 'OFFLINE.SiteSearch', 'comment', '1.4.1', 'Minor bugfixes', '2024-02-05 20:18:03'),
(91, 'OFFLINE.SiteSearch', 'comment', '1.4.2', 'Added User-Agent to list view', '2024-02-05 20:18:03'),
(92, 'OFFLINE.SiteSearch', 'comment', '1.4.3', 'Fixed bug where empty queries resulted in an Exception', '2024-02-05 20:18:03'),
(93, 'OFFLINE.SiteSearch', 'comment', '1.4.4', 'Optimized support for cms pages search: Your Twig markup is now completely rendered and searched!', '2024-02-05 20:18:03'),
(94, 'OFFLINE.SiteSearch', 'comment', '1.4.5', 'Use meta_title for RainLab.Pages results if available', '2024-02-05 20:18:03'),
(95, 'OFFLINE.SiteSearch', 'comment', '1.4.6', 'Made getAgePenalty method static so it can be re-used in simple Event providers', '2024-02-05 20:18:03'),
(96, 'OFFLINE.SiteSearch', 'comment', '1.4.7', 'Optimized searchResults component so it can be used in partials and static pages', '2024-02-05 20:18:03'),
(97, 'OFFLINE.SiteSearch', 'comment', '1.4.8', 'Allow custom penalty parameters in ResultsProvider::agePenaltyForDays method', '2024-02-05 20:18:03'),
(98, 'OFFLINE.SiteSearch', 'comment', '1.4.9', 'Moved query log link from main navbar to backend settings', '2024-02-05 20:18:03'),
(99, 'OFFLINE.SiteSearch', 'comment', '1.4.10', 'Improved Czech translations', '2024-02-05 20:18:03'),
(100, 'OFFLINE.SiteSearch', 'comment', '1.5.0', 'Added `offline.sitesearch.results` event to allow customization (filter, sort) of the results collection before it is displayed', '2024-02-05 20:18:03'),
(101, 'OFFLINE.SiteSearch', 'comment', '1.5.1', 'Fixed typo in the newly added event name', '2024-02-05 20:18:03'),
(102, 'OFFLINE.SiteSearch', 'comment', '1.5.2', 'Made Result::markQuery method public for easier extension', '2024-02-05 20:18:03'),
(103, 'OFFLINE.SiteSearch', 'comment', '1.5.3', 'Fixed result order in searchInput component', '2024-02-05 20:18:03'),
(104, 'OFFLINE.SiteSearch', 'comment', '1.5.4', 'Fixed handling of invalid page url parameter', '2024-02-05 20:18:03'),
(105, 'OFFLINE.SiteSearch', 'comment', '1.5.5', 'Fixed handling of invalid offline.sitesearch.results event returns', '2024-02-05 20:18:03'),
(106, 'OFFLINE.SiteSearch', 'comment', '1.5.6', 'Updated russian translations (thanks to @Web-VPF)', '2024-02-05 20:18:03'),
(107, 'OFFLINE.SiteSearch', 'comment', '1.6.0', 'Updated October 3 compatibility', '2024-02-05 20:18:03'),
(108, 'OFFLINE.SiteSearch', 'comment', '1.6.1', 'Optimized RainLab pages search (thanks to @damsfx)', '2024-02-05 20:18:03'),
(109, 'OFFLINE.SiteSearch', 'comment', '1.6.2', 'Updated chinese translations (thanks to @ZhiweiWu0425)', '2024-02-05 20:18:03'),
(110, 'OFFLINE.SiteSearch', 'comment', '1.6.3', 'Added query and controller parameters to offline.sitesearch.extend event (thanks to @rvschuilenburg)', '2024-02-05 20:18:03'),
(111, 'OFFLINE.SiteSearch', 'comment', '1.6.4', 'Fixed static pages search when using multiple syntax fields (thanks to @damsfx)', '2024-02-05 20:18:03'),
(112, 'OFFLINE.SiteSearch', 'comment', '1.6.5', 'Only show search providers of installed plugins in the backend settings (thanks to @damsfx)', '2024-02-05 20:18:03'),
(113, 'OFFLINE.SiteSearch', 'comment', '1.6.6', 'Fixed bug in backend settings form (thanks to @igor-tv)', '2024-02-05 20:18:03'),
(114, 'OFFLINE.SiteSearch', 'comment', '1.7.0', 'Added native support for Tailor content', '2024-02-05 20:18:03'),
(115, 'OFFLINE.SiteSearch', 'comment', '1.7.1', 'Fixed version check for Tailor support', '2024-02-05 20:18:03'),
(116, 'OFFLINE.SiteSearch', 'comment', '1.7.2', 'Added support to search in \"groups\" fields in Tailor', '2024-02-05 20:18:03'),
(117, 'OFFLINE.SiteSearch', 'comment', '1.7.3', 'Fixed bug where only first matching Tailor blueprint returned results', '2024-02-05 20:18:03'),
(118, 'OFFLINE.SiteSearch', 'comment', '1.7.4', 'Added Tailor models to search results', '2024-02-05 20:18:03'),
(119, 'OFFLINE.SiteSearch', 'comment', '1.7.5', 'Fixed visibility class on searchInput component', '2024-02-05 20:18:03'),
(120, 'OFFLINE.SiteSearch', 'comment', '1.7.6', 'Leave additional setting fields that are added by the user to the backend settings from untouched', '2024-02-05 20:18:03'),
(121, 'OFFLINE.SiteSearch', 'comment', '1.7.8', 'Fixed locale prefix in search results', '2024-02-05 20:18:03'),
(122, 'OFFLINE.SiteSearch', 'comment', '1.7.9', 'Added minQueryLength parameter to searchResults component', '2024-02-05 20:18:03'),
(123, 'OFFLINE.SiteSearch', 'comment', '1.7.10', 'Always prefer forced query in searchResults component', '2024-02-05 20:18:03'),
(124, 'OFFLINE.SiteSearch', 'comment', '1.7.11', 'Fixed search call', '2024-02-05 20:18:03'),
(125, 'OFFLINE.SiteSearch', 'comment', '1.7.12', 'Added thumbFrom field to Tailor search results', '2024-02-05 20:18:03'),
(126, 'OFFLINE.SiteSearch', 'comment', '1.7.13', 'Updated RU translations (thanks to @point111)', '2024-02-05 20:18:03'),
(127, 'OFFLINE.SiteSearch', 'comment', '1.7.14', 'Fixed compatibility issue with RainLab.Translate 2.0 (thanks to @aarondiel)', '2024-02-05 20:18:03'),
(128, 'OFFLINE.SiteSearch', 'comment', '1.7.15', 'Fixed bug in cms results provider (thanks to @PubliAlex)', '2024-02-05 20:18:03'),
(129, 'OFFLINE.SiteSearch', 'comment', '1.7.16', 'Fixed URL generation when using Multisite', '2024-02-05 20:18:03'),
(130, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2024-02-05 20:18:03'),
(131, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2024-02-05 20:18:03'),
(132, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2024-02-05 20:18:04'),
(133, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2024-02-05 20:18:04'),
(134, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2024-02-05 20:18:04'),
(135, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2024-02-05 20:18:04'),
(136, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2024-02-05 20:18:04'),
(137, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2024-02-05 20:18:04'),
(138, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2024-02-05 20:18:04'),
(139, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2024-02-05 20:18:04'),
(140, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2024-02-05 20:18:04'),
(141, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2024-02-05 20:18:04'),
(142, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2024-02-05 20:18:04'),
(143, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2024-02-05 20:18:04'),
(144, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2024-02-05 20:18:04'),
(145, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2024-02-05 20:18:04'),
(146, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2024-02-05 20:18:04'),
(147, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2024-02-05 20:18:04'),
(148, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2024-02-05 20:18:04'),
(149, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2024-02-05 20:18:04'),
(150, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2024-02-05 20:18:04'),
(151, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2024-02-05 20:18:04'),
(152, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2024-02-05 20:18:04'),
(153, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2024-02-05 20:18:04'),
(154, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2024-02-05 20:18:04'),
(155, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2024-02-05 20:18:04'),
(156, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2024-02-05 20:18:04'),
(157, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2024-02-05 20:18:04'),
(158, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2024-02-05 20:18:04'),
(159, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2024-02-05 20:18:04'),
(160, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2024-02-05 20:18:04'),
(161, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2024-02-05 20:18:04'),
(162, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2024-02-05 20:18:04'),
(163, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2024-02-05 20:18:04'),
(164, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2024-02-05 20:18:04'),
(165, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2024-02-05 20:18:04'),
(166, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2024-02-05 20:18:04'),
(167, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2024-02-05 20:18:04'),
(168, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2024-02-05 20:18:04'),
(169, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2024-02-05 20:18:04'),
(170, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2024-02-05 20:18:04'),
(171, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2024-02-05 20:18:04'),
(172, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2024-02-05 20:18:04'),
(173, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2024-02-05 20:18:04'),
(174, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2024-02-05 20:18:04'),
(175, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2024-02-05 20:18:04'),
(176, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2024-02-05 20:18:04'),
(177, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2024-02-05 20:18:04'),
(178, 'RainLab.Blog', 'comment', '1.3.4', 'Allow post author to be specified. Improved translations.', '2024-02-05 20:18:04'),
(179, 'RainLab.Blog', 'comment', '1.3.5', 'Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.', '2024-02-05 20:18:04'),
(180, 'RainLab.Blog', 'comment', '1.3.6', 'Improved French translations.', '2024-02-05 20:18:04'),
(181, 'RainLab.Blog', 'comment', '1.4.0', 'Stability improvements. Rollback custom slug names for components', '2024-02-05 20:18:04'),
(182, 'RainLab.Blog', 'comment', '1.4.1', 'Fixes potential security issue with unsafe Markdown. Allow blog bylines to be translated.', '2024-02-05 20:18:04'),
(183, 'RainLab.Blog', 'comment', '1.4.2', 'Fix 404 redirects for missing blog posts. Assign current category to the listed posts when using the Posts component on a page with the category parameter available.', '2024-02-05 20:18:04'),
(184, 'RainLab.Blog', 'comment', '1.4.3', 'Fixes incompatibility with locale switching when plugin is used in conjunction with the Translate plugin. Fixes undefined category error.', '2024-02-05 20:18:04'),
(185, 'RainLab.Blog', 'comment', '1.4.4', 'Rollback translated bylines, please move or override the default component markup instead.', '2024-02-05 20:18:04'),
(186, 'RainLab.Blog', 'comment', '1.5.0', 'Implement support for October CMS v2.0', '2024-02-05 20:18:04'),
(187, 'RainLab.Blog', 'comment', '1.5.1', 'Fixes interaction with Translate plugin', '2024-02-05 20:18:04'),
(188, 'RainLab.Blog', 'comment', '1.5.2', 'Minor styling improvements', '2024-02-05 20:18:04'),
(189, 'RainLab.Blog', 'comment', '1.5.3', 'Adds setting to use legacy markdown editor', '2024-02-05 20:18:04'),
(190, 'RainLab.Blog', 'comment', '1.5.4', 'Compatibility with October CMS v2.2', '2024-02-05 20:18:04'),
(191, 'RainLab.Blog', 'comment', '1.5.6', 'Compatibility with October CMS v3.0', '2024-02-05 20:18:04'),
(192, 'RainLab.Blog', 'comment', '1.6.0', 'Adds preview CMS page to settings and preview button to posts page', '2024-02-05 20:18:04'),
(193, 'RainLab.Blog', 'comment', '1.6.1', 'Fixes JS error when uploading images in newer versions', '2024-02-05 20:18:04'),
(194, 'RainLab.Blog', 'comment', '1.6.2', 'Fixes content_html attribute compatibility with Translate', '2024-02-05 20:18:04'),
(195, 'RainLab.Blog', 'comment', '1.6.3', 'Adds page finder support for October v3.2', '2024-02-05 20:18:04'),
(196, 'RainLab.Blog', 'comment', '1.7.0', 'Adds setting for editing posts with rich editor', '2024-02-05 20:18:04'),
(197, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2024-02-05 20:18:04'),
(198, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2024-02-05 20:18:04'),
(199, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2024-02-05 20:18:04'),
(200, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2024-02-05 20:18:04'),
(201, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2024-02-05 20:18:04'),
(202, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2024-02-05 20:18:04'),
(203, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2024-02-05 20:18:04'),
(204, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2024-02-05 20:18:04'),
(205, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2024-02-05 20:18:04'),
(206, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2024-02-05 20:18:04'),
(207, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2024-02-05 20:18:04'),
(208, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2024-02-05 20:18:04'),
(209, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2024-02-05 20:18:04'),
(210, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2024-02-05 20:18:04'),
(211, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2024-02-05 20:18:04'),
(212, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2024-02-05 20:18:04'),
(213, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2024-02-05 20:18:04'),
(214, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2024-02-05 20:18:04'),
(215, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2024-02-05 20:18:04'),
(216, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2024-02-05 20:18:04'),
(217, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2024-02-05 20:18:04'),
(218, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2024-02-05 20:18:04'),
(219, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2024-02-05 20:18:04'),
(220, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2024-02-05 20:18:04'),
(221, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2024-02-05 20:18:04'),
(222, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2024-02-05 20:18:04'),
(223, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2024-02-05 20:18:04'),
(224, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2024-02-05 20:18:04'),
(225, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2024-02-05 20:18:04'),
(226, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2024-02-05 20:18:04'),
(227, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2024-02-05 20:18:04'),
(228, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2024-02-05 20:18:04'),
(229, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2024-02-05 20:18:04'),
(230, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2024-02-05 20:18:04'),
(231, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2024-02-05 20:18:04'),
(232, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2024-02-05 20:18:04'),
(233, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2024-02-05 20:18:04'),
(234, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2024-02-05 20:18:04'),
(235, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2024-02-05 20:18:04'),
(236, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2024-02-05 20:18:04'),
(237, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2024-02-05 20:18:04'),
(238, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2024-02-05 20:18:04'),
(239, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2024-02-05 20:18:04'),
(240, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2024-02-05 20:18:04'),
(241, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2024-02-05 20:18:04'),
(242, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2024-02-05 20:18:04'),
(243, 'RainLab.Pages', 'comment', '1.3.0', 'Added support for using Database-driven Themes when enabled in the CMS configuration.', '2024-02-05 20:18:04'),
(244, 'RainLab.Pages', 'comment', '1.3.1', 'Added ChildPages Component, prevent hidden pages from being returned via menu item resolver.', '2024-02-05 20:18:04'),
(245, 'RainLab.Pages', 'comment', '1.3.2', 'Fixes error when creating a subpage whose parent has no layout set.', '2024-02-05 20:18:04'),
(246, 'RainLab.Pages', 'comment', '1.3.3', 'Improves user experience for users with only partial access through permissions', '2024-02-05 20:18:04'),
(247, 'RainLab.Pages', 'comment', '1.3.4', 'Fix error where large menus were being truncated due to the PHP \"max_input_vars\" configuration value. Improved Slovenian translation.', '2024-02-05 20:18:04'),
(248, 'RainLab.Pages', 'comment', '1.3.5', 'Minor fix to bust the browser cache for JS assets. Prevent duplicate property fields in snippet inspector.', '2024-02-05 20:18:04'),
(249, 'RainLab.Pages', 'comment', '1.3.6', 'ChildPages component now displays localized page titles from Translate plugin.', '2024-02-05 20:18:04'),
(250, 'RainLab.Pages', 'comment', '1.3.7', 'Adds MenuPicker formwidget. Adds future support for v2.0 of October CMS.', '2024-02-05 20:18:04'),
(251, 'RainLab.Pages', 'comment', '1.4.0', 'Fixes bug when adding menu items in October CMS v2.0.', '2024-02-05 20:18:04'),
(252, 'RainLab.Pages', 'comment', '1.4.1', 'Fixes support for configuration values.', '2024-02-05 20:18:04'),
(253, 'RainLab.Pages', 'comment', '1.4.3', 'Fixes page deletion is newer platform builds.', '2024-02-05 20:18:04'),
(254, 'RainLab.Pages', 'comment', '1.4.4', 'Disable touch device detection', '2024-02-05 20:18:04'),
(255, 'RainLab.Pages', 'comment', '1.4.5', 'Minor styling improvements', '2024-02-05 20:18:04'),
(256, 'RainLab.Pages', 'comment', '1.4.6', 'Minor styling improvements', '2024-02-05 20:18:04'),
(257, 'RainLab.Pages', 'comment', '1.4.7', 'Minor layout fix in the Page editor', '2024-02-05 20:18:04'),
(258, 'RainLab.Pages', 'comment', '1.4.8', 'Fixes rich editor usage inside repeaters. Adds getProcessedMarkup event.', '2024-02-05 20:18:04'),
(259, 'RainLab.Pages', 'comment', '1.4.9', 'Fixes a lifecycle issue when switching the page layout.', '2024-02-05 20:18:04'),
(260, 'RainLab.Pages', 'comment', '1.4.10', 'Fixes maintenance mode when using static pages.', '2024-02-05 20:18:04'),
(261, 'RainLab.Pages', 'comment', '1.4.11', 'Adds type hidden to content placeholders.', '2024-02-05 20:18:04'),
(262, 'RainLab.Pages', 'comment', '1.4.12', 'Improve support with October v2.2', '2024-02-05 20:18:04'),
(263, 'RainLab.Pages', 'comment', '1.5.0', 'Improve support with October v3.0', '2024-02-05 20:18:04'),
(264, 'RainLab.Pages', 'comment', '1.5.4', 'Compatibility updates', '2024-02-05 20:18:04'),
(265, 'RainLab.Pages', 'comment', '1.5.5', 'Fixes media finder added to menu in October v2', '2024-02-05 20:18:04'),
(266, 'RainLab.Pages', 'comment', '1.5.6', 'Fixes concurrency save form in October v3', '2024-02-05 20:18:04'),
(267, 'RainLab.Pages', 'comment', '1.5.7', 'Adds page finder support for October v3.2', '2024-02-05 20:18:04'),
(268, 'RainLab.Pages', 'comment', '1.5.8', 'Fixes resolving links used in static pages', '2024-02-05 20:18:04'),
(269, 'RainLab.Pages', 'comment', '1.5.9', 'Fixes fancy layout with nested forms', '2024-02-05 20:18:04'),
(270, 'RainLab.Pages', 'comment', '1.5.10', 'Adds forward compatibility with October CMS v3.4', '2024-02-05 20:18:04'),
(271, 'RainLab.Pages', 'comment', '1.5.12', 'Fixes more areas of forward compatibility', '2024-02-05 20:18:04'),
(272, 'RainLab.Pages', 'comment', '2.0.1', 'Compatibility with core snippets', '2024-02-05 20:18:04'),
(273, 'RainLab.Pages', 'comment', '2.0.2', 'Fixes bug opening menu with tailor list menu items', '2024-02-05 20:18:04'),
(274, 'RainLab.Pages', 'comment', '2.0.3', 'Fixes bug showing wrong placeholder code', '2024-02-05 20:18:04'),
(275, 'RainLab.Pages', 'comment', '2.0.4', 'Fixes sidebar delete button in October v3.5', '2024-02-05 20:18:04'),
(276, 'Rebel59.Isogallery', 'script', '1.0.1', 'create_galleries_table.php', '2024-02-05 20:18:04'),
(277, 'Rebel59.Isogallery', 'script', '1.0.1', 'create_categories_table.php', '2024-02-05 20:18:04'),
(278, 'Rebel59.Isogallery', 'comment', '1.0.1', 'First version of IsoGallery', '2024-02-05 20:18:04'),
(279, 'Rebel59.Isogallery', 'comment', '1.0.2', 'Hotfix for October Core bug', '2024-02-05 20:18:04'),
(280, 'Rebel59.Isogallery', 'comment', '1.1.0', 'Added Dutch as Back-end Language & Added Permissions', '2024-02-05 20:18:04'),
(281, 'Rebel59.Isogallery', 'comment', '1.1.1', 'Fixed permissions bug', '2024-02-05 20:18:04'),
(282, 'Zen.Cleaner', 'comment', '1.0.1', 'Initialize plugin.', '2024-02-05 20:18:04'),
(283, 'Zen.Cleaner', 'comment', '1.0.2', 'Continue iteration if model class does not exist', '2024-02-05 20:18:04'),
(284, 'Zen.Cleaner', 'comment', '1.0.3', 'Fix version.yaml file', '2024-02-05 20:18:04'),
(285, 'Zen.Cleaner', 'comment', '1.0.4', 'The ignoring re-pressing during work', '2024-02-05 20:18:04'),
(286, 'GinoPane.BlogTaxonomy', 'script', '1.0.0', 'create_taxonomies_tables.php', '2024-02-05 20:21:34'),
(287, 'GinoPane.BlogTaxonomy', 'comment', '1.0.0', 'The initial release of Blog Taxonomy', '2024-02-05 20:21:34'),
(288, 'GinoPane.BlogTaxonomy', 'comment', '1.1.0', 'Degraded from PHP7.1 to PHP7.0 to support the minimal required version for October CMS', '2024-02-05 20:21:34'),
(289, 'GinoPane.BlogTaxonomy', 'comment', '1.1.1', 'Skip extending Post form fields for a nested form case', '2024-02-05 20:21:34'),
(290, 'GinoPane.BlogTaxonomy', 'comment', '1.2.0', 'Update tag name validation rules', '2024-02-05 20:21:34'),
(291, 'GinoPane.BlogTaxonomy', 'comment', '1.3.0', 'Use another style to list required plugins', '2024-02-05 20:21:34'),
(292, 'GinoPane.BlogTaxonomy', 'comment', '1.3.1', 'Added missing slug generation for tags', '2024-02-05 20:21:34'),
(293, 'GinoPane.BlogTaxonomy', 'comment', '1.3.1', 'Minor enhancements', '2024-02-05 20:21:34'),
(294, 'GinoPane.BlogTaxonomy', 'comment', '1.4.0', 'Added featured images for series', '2024-02-05 20:21:34'),
(295, 'GinoPane.BlogTaxonomy', 'comment', '1.4.0', 'Series edit page enhanced', '2024-02-05 20:21:34'),
(296, 'GinoPane.BlogTaxonomy', 'comment', '1.4.0', 'Several minor tweaks for tags and series lists', '2024-02-05 20:21:34'),
(297, 'GinoPane.BlogTaxonomy', 'script', '1.5.0', 'change_description_field.php', '2024-02-05 20:21:34'),
(298, 'GinoPane.BlogTaxonomy', 'comment', '1.5.0', 'Added Translate plugin support', '2024-02-05 20:21:34'),
(299, 'GinoPane.BlogTaxonomy', 'comment', '1.5.0', 'Added localization support for different strings', '2024-02-05 20:21:34'),
(300, 'GinoPane.BlogTaxonomy', 'comment', '1.5.0', 'Changed series description column type', '2024-02-05 20:21:34'),
(301, 'GinoPane.BlogTaxonomy', 'comment', '1.5.0', 'Loosen series title validation to allow punctuation', '2024-02-05 20:21:34'),
(302, 'GinoPane.BlogTaxonomy', 'comment', '1.5.0', 'Multiple internal enhancements', '2024-02-05 20:21:34'),
(303, 'GinoPane.BlogTaxonomy', 'comment', '1.5.1', 'Fixed relation count condition for non-SQLite installations', '2024-02-05 20:21:34'),
(304, 'GinoPane.BlogTaxonomy', 'comment', '1.5.1', 'Fixed sorting options for post-related components', '2024-02-05 20:21:34'),
(305, 'GinoPane.BlogTaxonomy', 'comment', '1.5.2', 'Make translatable implementation truly optional', '2024-02-05 20:21:34'),
(306, 'GinoPane.BlogTaxonomy', 'comment', '1.5.2', 'Allow any valid character in validation for titles, names, etc.', '2024-02-05 20:21:34'),
(307, 'GinoPane.BlogTaxonomy', 'comment', '1.5.3', 'Improved partials references so the backend expander could work correctly', '2024-02-05 20:21:34'),
(308, 'GinoPane.BlogTaxonomy', 'comment', '1.5.4', 'Improved missing partials references so the backend expander could work correctly', '2024-02-05 20:21:34'),
(309, 'GinoPane.BlogTaxonomy', 'comment', '1.6.0', 'Stop using default slug value for TagList (to allow valid empty slug)', '2024-02-05 20:21:34'),
(310, 'GinoPane.BlogTaxonomy', 'comment', '1.6.0', 'Simplify internal query for posts relation', '2024-02-05 20:21:34'),
(311, 'GinoPane.BlogTaxonomy', 'comment', '1.7.0', 'Fixed a method to get real URL parameter names', '2024-02-05 20:21:34'),
(312, 'GinoPane.BlogTaxonomy', 'comment', '1.8.0', 'Some properties of TagList component were either renamed or set to private, please check the changelog', '2024-02-05 20:21:34'),
(313, 'GinoPane.BlogTaxonomy', 'comment', '1.8.0', 'Exposed total tag count over the limit', '2024-02-05 20:21:34'),
(314, 'GinoPane.BlogTaxonomy', 'comment', '1.8.0', 'Implemented client tag filter for tag list', '2024-02-05 20:21:34'),
(315, 'GinoPane.BlogTaxonomy', 'comment', '1.8.0', 'Micro refactorings and optimizations', '2024-02-05 20:21:34'),
(316, 'GinoPane.BlogTaxonomy', 'comment', '1.9.0', 'Internal directory structure was slightly changed', '2024-02-05 20:21:34'),
(317, 'GinoPane.BlogTaxonomy', 'comment', '1.9.0', 'Count only published blog posts in series list', '2024-02-05 20:21:34'),
(318, 'GinoPane.BlogTaxonomy', 'comment', '1.9.0', 'Allow fetching of all related posts for tags and series lists via a new option', '2024-02-05 20:21:34'),
(319, 'GinoPane.BlogTaxonomy', 'comment', '1.10.0', 'Fixed default templates for posts with tags and series to show correct empty message on wrong pagination', '2024-02-05 20:21:34'),
(320, 'GinoPane.BlogTaxonomy', 'comment', '1.10.0', 'Updated mark.js', '2024-02-05 20:21:34'),
(321, 'GinoPane.BlogTaxonomy', 'comment', '1.11.0', 'Implemented related series', '2024-02-05 20:21:34'),
(322, 'GinoPane.BlogTaxonomy', 'comment', '1.11.0', 'Implemented exclusions by post/category for post lists', '2024-02-05 20:21:34'),
(323, 'GinoPane.BlogTaxonomy', 'script', '1.11.1', 'create_related_series_table.php', '2024-02-05 20:21:34'),
(324, 'GinoPane.BlogTaxonomy', 'comment', '1.11.1', 'Fixed migration to prevent a ghost bug on update', '2024-02-05 20:21:34'),
(325, 'GinoPane.BlogTaxonomy', 'comment', '1.12.0', 'Added functionality of migration from other plugins', '2024-02-05 20:21:34'),
(326, 'GinoPane.BlogTaxonomy', 'comment', '1.13.0', 'Implemented exclusions by post/category for tag and series lists', '2024-02-05 20:21:34'),
(327, 'GinoPane.BlogTaxonomy', 'comment', '1.13.1', 'Fixed related posts component', '2024-02-05 20:21:34'),
(328, 'GinoPane.BlogTaxonomy', 'comment', '1.13.2', 'Added missing exclusions handling for series and tags', '2024-02-05 20:21:34'),
(329, 'GinoPane.BlogTaxonomy', 'comment', '1.14.0', 'Expose page parameter name for simple pagination', '2024-02-05 20:21:34'),
(330, 'GinoPane.BlogTaxonomy', 'comment', '1.14.1', 'Fixed auto generated index being too long', '2024-02-05 20:21:34'),
(331, 'GinoPane.BlogTaxonomy', 'comment', '1.14.2', 'Added missing count of posts in the related series component', '2024-02-05 20:21:34'),
(332, 'GinoPane.BlogTaxonomy', 'script', '2.0.0', 'create_polymorphic_tag_table.php', '2024-02-05 20:21:34'),
(333, 'GinoPane.BlogTaxonomy', 'comment', '2.0.0', 'Migrated to polymorphic tag relation. Make sure to backup and proceed with caution', '2024-02-05 20:21:34'),
(334, 'GinoPane.BlogTaxonomy', 'comment', '2.0.0', 'Implemented tags for series', '2024-02-05 20:21:34'),
(335, 'GinoPane.BlogTaxonomy', 'comment', '2.0.0', 'New options for existing components', '2024-02-05 20:21:35'),
(336, 'GinoPane.BlogTaxonomy', 'comment', '2.0.1', 'Set index name explicitly to prevent the generation of too long name', '2024-02-05 20:21:35'),
(337, 'GinoPane.BlogTaxonomy', 'comment', '2.0.2', 'Fix incorrect query being used for series model', '2024-02-05 20:21:35'),
(338, 'GinoPane.BlogTaxonomy', 'comment', '2.0.2', 'Remove accidental return operators from update files which prevented clean plugin installation', '2024-02-05 20:21:35'),
(339, 'GinoPane.BlogTaxonomy', 'comment', '2.0.3', 'Non-ajax version of pagination is now a default', '2024-02-05 20:21:35'),
(340, 'GinoPane.BlogTaxonomy', 'comment', '2.0.3', 'Do not include the existing routing parameters when generating new links', '2024-02-05 20:21:35'),
(341, 'GinoPane.BlogTaxonomy', 'comment', '2.1.0', 'Add filter by categories (included) for post lists (with tags/series)', '2024-02-05 20:21:35'),
(342, 'GinoPane.BlogTaxonomy', 'comment', '2.1.0', 'Rename \'Exceptions\' section to \'Filters\' in component settings', '2024-02-05 20:21:35'),
(343, 'GinoPane.BlogTaxonomy', 'comment', '2.1.1', 'Fix trait name', '2024-02-05 20:21:35'),
(344, 'GinoPane.BlogTaxonomy', 'comment', '2.2.0', 'Added support of special characters for tag name', '2024-02-05 20:21:35'),
(345, 'GinoPane.BlogTaxonomy', 'comment', '2.2.1', 'Added missing `include categories` filter for Tags list and Series list', '2024-02-05 20:21:35'),
(346, 'GinoPane.BlogTaxonomy', 'script', '2.3.0', 'add_series_status_column.php', '2024-02-05 20:21:35'),
(347, 'GinoPane.BlogTaxonomy', 'comment', '2.3.0', 'Added status support for series', '2024-02-05 20:21:35'),
(348, 'GinoPane.BlogTaxonomy', 'comment', '2.3.0', 'Added possibility to delete series from the series list page', '2024-02-05 20:21:35'),
(349, 'GinoPane.BlogTaxonomy', 'comment', '2.3.1', 'Fixed post URLs broken by Rainlab Blog 1.4.3', '2024-02-05 20:21:35'),
(350, 'GinoPane.BlogTaxonomy', 'comment', '2.4.0', 'Added ability to pass series slug into post URLs via the posts-in-series component', '2024-02-05 20:21:35'),
(351, 'GinoPane.BlogTaxonomy', 'comment', '2.5.0', 'Related posts can now be additionally filtered by post and/or category', '2024-02-05 20:21:35'),
(352, 'GinoPane.BlogTaxonomy', 'comment', '2.6.0', 'Added \'include tagged posts\' option for the posts-in-series component', '2024-02-05 20:21:35'),
(353, 'GinoPane.BlogTaxonomy', 'comment', '2.6.1', 'Removed usage of \'void\' return type to support old PHP versions', '2024-02-05 20:21:35'),
(354, 'GinoPane.BlogTaxonomy', 'script', '3.0.0', 'create_post_type_table.php', '2024-02-05 20:21:35'),
(355, 'GinoPane.BlogTaxonomy', 'script', '3.0.0', 'drop_deprecated_post_tag_table.php', '2024-02-05 20:21:35'),
(356, 'GinoPane.BlogTaxonomy', 'comment', '3.0.0', 'Added post types functionality', '2024-02-05 20:21:35'),
(357, 'GinoPane.BlogTaxonomy', 'comment', '3.0.0', 'Added cover and featured images for categories, series, tags', '2024-02-05 20:21:35'),
(358, 'GinoPane.BlogTaxonomy', 'comment', '3.0.0', 'Removed deprecated table', '2024-02-05 20:21:35'),
(359, 'GinoPane.BlogTaxonomy', 'comment', '3.0.1', 'Fixed a bug with undefined constant left after removal of deprecated code', '2024-02-05 20:21:35'),
(360, 'GinoPane.BlogTaxonomy', 'comment', '3.0.2', 'Try to fix an issue with unsupported json data type on old DB servers', '2024-02-05 20:21:35'),
(361, 'GinoPane.BlogTaxonomy', 'comment', '3.0.3', 'Fixed a group by clause when sorting by a particular field on ModelAbstract', '2024-02-05 20:21:35'),
(362, 'GinoPane.BlogTaxonomy', 'comment', '3.0.4', 'Changed name in composer because October suddenly started to complain about it', '2024-02-05 20:21:35'),
(363, 'GinoPane.BlogTaxonomy', 'comment', '3.0.5', 'Make group-by query conditional for the abstract model', '2024-02-05 20:21:35'),
(364, 'GinoPane.BlogTaxonomy', 'comment', '3.1.0', 'Extend allowed characters for model names and titles', '2024-02-05 20:21:35'),
(365, 'GinoPane.BlogTaxonomy', 'comment', '3.1.1', 'Fix validation rule for an old October CMS version', '2024-02-05 20:21:35'),
(366, 'Alterna.Alternatekno', 'comment', '1.0.1', 'Initialize plugin', '2024-02-06 19:38:24'),
(367, 'Alterna.Alternatekno', 'script', '1.0.2', 'builder_table_create_alterna_alternatekno_job.php', '2024-02-06 19:38:24'),
(368, 'Alterna.Alternatekno', 'comment', '1.0.2', 'Created table alterna_alternatekno_job', '2024-02-06 19:38:24'),
(369, 'Alterna.Alternatekno', 'script', '1.0.3', 'builder_table_update_alterna_alternatekno_job.php', '2024-02-06 19:38:26'),
(370, 'Alterna.Alternatekno', 'comment', '1.0.3', 'Updated table alterna_alternatekno_job', '2024-02-06 19:38:26'),
(371, 'Alterna.Alternatekno', 'script', '1.0.4', 'builder_table_create_alterna_alternatekno_portofolio.php', '2024-02-06 19:38:26'),
(372, 'Alterna.Alternatekno', 'comment', '1.0.4', 'Created table alterna_alternatekno_portofolio', '2024-02-06 19:38:26'),
(373, 'Alterna.Alternatekno', 'script', '1.0.5', 'builder_table_create_alterna_alternatekno_produk.php', '2024-02-06 19:38:27'),
(374, 'Alterna.Alternatekno', 'comment', '1.0.5', 'Created table alterna_alternatekno_produk', '2024-02-06 19:38:27'),
(375, 'alterna.Contact', 'comment', '1.0.1', 'Initialize plugin', '2024-02-06 19:38:27'),
(376, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2024-02-06 19:48:12'),
(377, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2024-02-06 19:48:12'),
(378, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2024-02-06 19:48:12'),
(379, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2024-02-06 19:48:12'),
(380, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2024-02-06 19:48:12'),
(381, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2024-02-06 19:48:12'),
(382, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2024-02-06 19:48:12'),
(383, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2024-02-06 19:48:12'),
(384, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2024-02-06 19:48:12'),
(385, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2024-02-06 19:48:12'),
(386, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2024-02-06 19:48:12'),
(387, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2024-02-06 19:48:12'),
(388, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2024-02-06 19:48:12'),
(389, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2024-02-06 19:48:12'),
(390, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2024-02-06 19:48:12'),
(391, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2024-02-06 19:48:12'),
(392, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2024-02-06 19:48:12');
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(393, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2024-02-06 19:48:12'),
(394, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2024-02-06 19:48:12'),
(395, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2024-02-06 19:48:12'),
(396, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2024-02-06 19:48:12'),
(397, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2024-02-06 19:48:12'),
(398, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2024-02-06 19:48:12'),
(399, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2024-02-06 19:48:12'),
(400, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2024-02-06 19:48:12'),
(401, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2024-02-06 19:48:12'),
(402, 'RainLab.Builder', 'comment', '1.0.27', 'Added ability to use \'scope\' in a form relation field, added ability to change the sort order of versions and added additional properties for repeater widget in form builder. Added Polish translation.', '2024-02-06 19:48:12'),
(403, 'RainLab.Builder', 'comment', '1.0.28', 'Fixes support for PHP 8', '2024-02-06 19:48:12'),
(404, 'RainLab.Builder', 'comment', '1.0.29', 'Disable touch device detection', '2024-02-06 19:48:12'),
(405, 'RainLab.Builder', 'comment', '1.0.30', 'Minor styling improvements', '2024-02-06 19:48:12'),
(406, 'RainLab.Builder', 'comment', '1.0.31', 'Added support for more rich editor and file upload properties', '2024-02-06 19:48:12'),
(407, 'RainLab.Builder', 'comment', '1.0.32', 'Minor styling improvements', '2024-02-06 19:48:12'),
(408, 'RainLab.Builder', 'comment', '1.1.0', 'Adds feature for adding database fields to a form definition.', '2024-02-06 19:48:12'),
(409, 'RainLab.Builder', 'comment', '1.1.1', 'Adds DBAL timestamp column type. Adds database prefix support. Fixes various bugs.', '2024-02-06 19:48:12'),
(410, 'RainLab.Builder', 'comment', '1.1.2', 'Compatibility with October CMS v2.2', '2024-02-06 19:48:12'),
(411, 'RainLab.Builder', 'comment', '1.1.3', 'Adds comment support to database tables.', '2024-02-06 19:48:12'),
(412, 'RainLab.Builder', 'comment', '1.1.4', 'Fixes duplication bug saving backend menu permissions.', '2024-02-06 19:48:12'),
(413, 'RainLab.Builder', 'comment', '1.2.0', 'Improve support with October v3.0', '2024-02-06 19:48:12'),
(414, 'RainLab.Builder', 'comment', '1.2.2', 'Compatibility updates.', '2024-02-06 19:48:12'),
(415, 'RainLab.Builder', 'comment', '1.2.3', 'Fixes issue when removing items from permissions and menus.', '2024-02-06 19:48:12'),
(416, 'RainLab.Builder', 'comment', '1.2.5', 'Fixes validator conflict with other plugins.', '2024-02-06 19:48:12'),
(417, 'RainLab.Builder', 'comment', '1.2.6', 'Compatibility with October v3.1', '2024-02-06 19:48:12'),
(418, 'RainLab.Builder', 'comment', '2.0.1', 'Adds Tailor blueprint importer and code editor.', '2024-02-06 19:48:12'),
(419, 'RainLab.Builder', 'comment', '2.0.2', 'Fixes visual bug when tab fields overflow.', '2024-02-06 19:48:12'),
(420, 'RainLab.Builder', 'comment', '2.0.3', 'Fixes missing import in CMS components.', '2024-02-06 19:48:12'),
(421, 'RainLab.Builder', 'comment', '2.0.4', 'Fixes bad method name in controller model.', '2024-02-06 19:48:12'),
(422, 'RainLab.Builder', 'comment', '2.0.5', 'Fixes bug adding data table controls.', '2024-02-06 19:48:12'),
(423, 'RainLab.Builder', 'comment', '2.0.6', 'Fixes importing Tailor multisite globals.', '2024-02-06 19:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `version` varchar(50) NOT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `is_frozen`, `is_disabled`, `created_at`) VALUES
(1, 'October.Demo', '1.0.1', 0, 0, '2024-02-05 20:16:06'),
(2, 'Flosch.Slideshow', '1.0.8', 0, 0, '2024-02-05 20:18:03'),
(3, 'OFFLINE.SiteSearch', '1.7.16', 0, 0, '2024-02-05 20:18:03'),
(4, 'RainLab.Blog', '1.7.0', 0, 0, '2024-02-05 20:18:04'),
(5, 'RainLab.Pages', '2.0.4', 0, 0, '2024-02-05 20:18:04'),
(6, 'Rebel59.Isogallery', '1.1.1', 0, 0, '2024-02-05 20:18:04'),
(7, 'Zen.Cleaner', '1.0.4', 0, 0, '2024-02-05 20:18:04'),
(8, 'GinoPane.BlogTaxonomy', '3.1.1', 0, 0, '2024-02-05 20:21:35'),
(9, 'Alterna.Alternatekno', '1.0.5', 0, 0, '2024-02-06 19:38:27'),
(10, 'alterna.Contact', '1.0.1', 0, 0, '2024-02-06 19:38:27'),
(11, 'RainLab.Builder', '2.0.6', 0, 0, '2024-02-06 19:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL,
  `site_root_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_site_definitions`
--

CREATE TABLE `system_site_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_custom_url` tinyint(1) NOT NULL DEFAULT 0,
  `app_url` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `is_host_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `allow_hosts` mediumtext DEFAULT NULL,
  `is_prefixed` tinyint(1) NOT NULL DEFAULT 0,
  `route_prefix` varchar(255) DEFAULT NULL,
  `is_styled` tinyint(1) NOT NULL DEFAULT 0,
  `color_foreground` varchar(255) DEFAULT NULL,
  `color_background` varchar(255) DEFAULT NULL,
  `is_role_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `allow_roles` mediumtext DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled_edit` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_site_definitions`
--

INSERT INTO `system_site_definitions` (`id`, `name`, `code`, `sort_order`, `is_custom_url`, `app_url`, `theme`, `locale`, `timezone`, `is_host_restricted`, `allow_hosts`, `is_prefixed`, `route_prefix`, `is_styled`, `color_foreground`, `color_background`, `is_role_restricted`, `allow_roles`, `is_primary`, `is_enabled`, `is_enabled_edit`, `created_at`, `updated_at`, `group_id`) VALUES
(1, 'Primary Site', 'primary', 1, 0, NULL, 'alternatekno', NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, 1, 1, 1, '2024-02-05 20:16:04', '2024-02-05 20:16:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_site_groups`
--

CREATE TABLE `system_site_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_content_joins`
--

CREATE TABLE `tailor_content_joins` (
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_content_schema`
--

CREATE TABLE `tailor_content_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  `fields` mediumtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tailor_content_schema`
--

INSERT INTO `tailor_content_schema` (`id`, `table_name`, `meta`, `fields`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'xc_6947ff28b66047d7924024ca6d58aeaec', '{\"blueprint_uuid\":\"6947ff28-b660-47d7-9240-24ca6d58aeae\",\"blueprint_type\":\"entry\",\"multisite_sync\":false}', '{\"active\":{\"avatar\":{\"type\":\"mediumText\",\"name\":\"avatar\",\"nullable\":true},\"role\":{\"type\":\"text\",\"name\":\"role\",\"nullable\":true},\"about\":{\"type\":\"mediumText\",\"name\":\"about\",\"nullable\":true}},\"dropped\":[]}', NULL, '2024-02-05 20:16:06', '2024-02-05 20:16:06'),
(2, 'xc_b022a74b15e64c6b9eb917efc5103543c', '{\"blueprint_uuid\":\"b022a74b-15e6-4c6b-9eb9-17efc5103543\",\"blueprint_type\":\"structure\",\"multisite_sync\":false}', '{\"active\":{\"description\":{\"type\":\"text\",\"name\":\"description\",\"nullable\":true}},\"dropped\":[]}', NULL, '2024-02-05 20:16:06', '2024-02-05 20:16:07'),
(3, 'xc_edcd102e05254e4db07e633ae6c18db6c', '{\"blueprint_uuid\":\"edcd102e-0525-4e4d-b07e-633ae6c18db6\",\"blueprint_type\":\"stream\",\"multisite_sync\":false}', '{\"active\":{\"content\":{\"type\":\"mediumText\",\"name\":\"content\",\"nullable\":true},\"author_id\":{\"type\":\"integer\",\"name\":\"author_id\",\"autoIncrement\":false,\"unsigned\":true,\"nullable\":true},\"featured_text\":{\"type\":\"mediumText\",\"name\":\"featured_text\",\"nullable\":true},\"gallery_media\":{\"type\":\"mediumText\",\"name\":\"gallery_media\",\"nullable\":true}},\"dropped\":[]}', NULL, '2024-02-05 20:16:07', '2024-02-05 20:16:07'),
(4, 'xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c', '{\"blueprint_uuid\":\"a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1\",\"blueprint_type\":\"single\",\"multisite_sync\":false}', '{\"active\":[],\"dropped\":[]}', NULL, '2024-02-05 20:16:07', '2024-02-05 20:16:07'),
(5, 'xc_339b11b769ad43c49be16953e7738827c', '{\"blueprint_uuid\":\"339b11b7-69ad-43c4-9be1-6953e7738827\",\"blueprint_type\":\"structure\",\"multisite_sync\":false}', '{\"active\":{\"content\":{\"type\":\"mediumText\",\"name\":\"content\",\"nullable\":true},\"show_in_toc\":{\"type\":\"boolean\",\"name\":\"show_in_toc\",\"nullable\":true},\"summary_text\":{\"type\":\"mediumText\",\"name\":\"summary_text\",\"nullable\":true}},\"dropped\":[]}', NULL, '2024-02-05 20:16:07', '2024-02-05 20:16:07'),
(6, 'xc_6743a1c33e574cfaa886e0c0a277fd71c', '{\"blueprint_uuid\":\"6743a1c3-3e57-4cfa-a886-e0c0a277fd71\",\"blueprint_type\":\"structure\",\"multisite_sync\":false}', '{\"active\":{\"reference\":{\"type\":\"text\",\"name\":\"reference\",\"nullable\":true},\"priority\":{\"type\":\"text\",\"name\":\"priority\",\"nullable\":true},\"changefreq\":{\"type\":\"text\",\"name\":\"changefreq\",\"nullable\":true},\"nesting\":{\"type\":\"boolean\",\"name\":\"nesting\",\"nullable\":true},\"replace\":{\"type\":\"boolean\",\"name\":\"replace\",\"nullable\":true}},\"dropped\":[]}', NULL, '2024-02-05 20:16:07', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `tailor_globals`
--

CREATE TABLE `tailor_globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_global_joins`
--

CREATE TABLE `tailor_global_joins` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_global_repeaters`
--

CREATE TABLE `tailor_global_repeaters` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_preview_tokens`
--

CREATE TABLE `tailor_preview_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `route` mediumtext DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `count_use` int(11) NOT NULL DEFAULT 0,
  `count_limit` int(11) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827c`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `fullslug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `show_in_toc` tinyint(1) DEFAULT NULL,
  `summary_text` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Article [Page\\Article].';

--
-- Dumping data for table `xc_339b11b769ad43c49be16953e7738827c`
--

INSERT INTO `xc_339b11b769ad43c49be16953e7738827c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `fullslug`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `content`, `show_in_toc`, `summary_text`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Our Locations', 'our-locations', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 'our-locations', NULL, 1, 8, 0, '<p>The term location generally implies a higher degree of certainty than place, the latter often indicating an entity with an ambiguous boundary, relying more on human or social attributes of place identity and sense of place than on geometry. An absolute location can be designated using a specific pairing of latitude and longitude in a Cartesian coordinate grid (for example, a spherical coordinate system or an ellipsoid-based system such as the World Geodetic System) or similar methods. For instance, the position of Lake Maracaibo in Venezuela can be expressed using the coordinate system as the location 9.80°N (latitude), 71.56°W (longitude).</p>', 1, 'In geography, location or place are used to denote a region (point, line, or area) on Earth\'s surface or elsewhere.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 1, 2, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Canberra', 'canberra', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 'our-locations/canberra', 1, 2, 3, 1, '<p>Unusual among Australian cities, it is an entirely planned city. The city is located at the northern end of the Australian Capital Territory[11] at the northern tip of the Australian Alps, the country\'s highest mountain range. As of June 2020, Canberra\'s estimated population was 431,380.[12]</p><p>The area chosen for the capital had been inhabited by Indigenous Australians for up to 21,000 years,[13] with the principal group being the Ngunnawal people. European settlement commenced in the first half of the 19th century, as evidenced by surviving landmarks such as St John\'s Anglican Church and Blundells Cottage. On 1 January 1901, federation of the colonies of Australia was achieved. Following a long dispute over whether Sydney or Melbourne should be the national capital,[14] a compromise was reached: the new capital would be built in New South Wales, so long as it was at least 100 miles (160 km) from Sydney. The capital city was founded and formally named as Canberra in 1913. A blueprint by American architects Walter Burley Griffin and Marion Mahony Griffin was selected after an international design contest, and construction commenced in 1913.[15] The Griffins\' plan featured geometric motifs and was centred on axes aligned with significant topographical landmarks such as Black Mountain, Mount Ainslie, Capital Hill and City Hill. Canberra\'s mountainous location makes it the only mainland Australian city where snow-capped mountains can be seen in winter; although snow in the city itself is rare.</p><p>As the seat of the Government of Australia, Canberra is home to many important institutions of the federal government, national monuments and museums. This includes Parliament House, Government House, the High Court and the headquarters of numerous government agencies. It is the location of many social and cultural institutions of national significance such as the Australian War Memorial, the Australian National University, the Royal Australian Mint, the Australian Institute of Sport, the National Gallery, the National Museum and the National Library. The city is home to many important institutions of the Australian Defence Force including the Royal Military College Duntroon and the Australian Defence Force Academy. It hosts all foreign embassies in Australia as well as regional headquarters of many international organisations, not-for-profit groups, lobbying groups and professional associations.</p>', 1, 'Canberra (/ˈkænbərə/ KAN-bə-rə) is the capital city of Australia. Founded following the federation of the colonies of Australia as the seat of government for the new nation, it is Australia\'s largest inland city and the eighth-largest city overall.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(3, 1, 3, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Sydney', 'sydney', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 'our-locations/sydney', 1, 4, 5, 1, '<p>Located on Australia\'s east coast, the metropolis surrounds Port Jackson and extends about 70 km (43.5 mi) on its periphery towards the Blue Mountains to the west, Hawkesbury to the north, the Royal National Park to the south and Macarthur to the south-west. Sydney is made up of 658 suburbs, spread across 33 local government areas. Residents of the city are known as \"Sydneysiders\". As of June 2020, Sydney\'s estimated metropolitan population was 5,361,466, meaning the city is home to approximately 66% of the state\'s population. Nicknames of the city include the \'Emerald City\' and the \'Harbour City\'.</p><p>Indigenous Australians have inhabited the Sydney area for at least 30,000 years, and thousands of Aboriginal engravings remain throughout the region. During his first Pacific voyage in 1770, Lieutenant James Cook and his crew became the first Europeans to chart the eastern coast of Australia, making landfall at Botany Bay. In 1788, the First Fleet of convicts, led by Arthur Phillip, founded Sydney as a British penal colony, the first European settlement in Australia. After World War II, it experienced mass migration and became one of the most multicultural cities in the world. Furthermore, 45.4% of the population reported having been born overseas, and the city has the third-largest foreign-born population of any city in the world after London and New York City.</p><p>Despite being one of the most expensive cities in the world, Sydney frequently ranks in the top ten most liveable cities in the world. It is classified as an Alpha global city by the Globalization and World Cities Research Network, indicating its influence in the region and throughout the world. Ranked eleventh in the world for economic opportunity, Sydney has an advanced market economy with strengths in finance, manufacturing and tourism. Established in 1850, the University of Sydney was Australia\'s first university and is regarded as one of the world\'s leading universities.</p>', 1, 'Sydney is the capital city of the state of New South Wales, and the most populous city in Australia and Oceania.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(4, 1, 4, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Vancouver', 'vancouver', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 'our-locations/vancouver', 1, 6, 7, 1, '<p>As the most populous city in the province, the 2021 census recorded 662,248 people in the city, up from 631,486 in 2016. The Greater Vancouver area had a population of 2,642,825 in 2021, making it the third-largest metropolitan area in Canada. Vancouver has the highest population density in Canada, with over 5,400 people per square kilometre. Vancouver is one of the most ethnically and linguistically diverse cities in Canada: 52 percent of its residents are not native English speakers, 48.9 percent are native speakers of neither English nor French, and 50.6 percent of residents belong to visible minority groups.</p><p>Vancouver is one of the most livable cities in Canada and in the world. In terms of housing affordability, Vancouver is also one of the most expensive cities in Canada and in the world. Vancouver plans to become the greenest city in the world. Vancouverism is the city\'s urban planning design philosophy.</p><p>Indigenous settlement of Vancouver began more than 10,000 years ago, and the city is on the traditional and unceded territories of the Squamish, Musqueam, and Tsleil-Waututh (Burrard) peoples. The beginnings of the modern city, which was originally named Gastown, grew around the site of a makeshift tavern on the western edges of Hastings Mill that was built on July 1, 1867, and owned by proprietor Gassy Jack. The original site is marked by the Gastown steam clock. Gastown then formally registered as a townsite dubbed Granville, Burrard Inlet. The city was renamed \"Vancouver\" in 1886, through a deal with the Canadian Pacific Railway (CPR). The Canadian Pacific transcontinental railway was extended to the city by 1887. The city\'s large natural seaport on the Pacific Ocean became a vital link in the trade between Asia-Pacific, East Asia, Europe, and Eastern Canada.</p>', 1, 'Vancouver is a major city in western Canada, located in the Lower Mainland region of British Columbia.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(5, 1, 5, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Knowledge Base', 'knowledge-base', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 'our-locations/knowledge-base', NULL, 9, 10, 0, '<p>Knowledge Base</p>', 1, '', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827j`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Article [Page\\Article].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827r`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Article [Page\\Article].';

--
-- Dumping data for table `xc_339b11b769ad43c49be16953e7738827r`
--

INSERT INTO `xc_339b11b769ad43c49be16953e7738827r` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Canberra travel guide from Wikivoyage\",\"link_url\":\"https:\\/\\/en.wikivoyage.org\\/wiki\\/Canberra\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Official Tourism Website\",\"link_url\":\"https:\\/\\/visitcanberra.com.au\\/\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(3, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Canberra 100 – Celebrating Canberra\'s 100th anniversary\",\"link_url\":\"https:\\/\\/www.canberra100.com.au\\/\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_6743a1c33e574cfaa886e0c0a277fd71c`
--

CREATE TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `fullslug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `changefreq` text DEFAULT NULL,
  `nesting` tinyint(1) DEFAULT NULL,
  `replace` tinyint(1) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Sitemap [Site\\Sitemap].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_6743a1c33e574cfaa886e0c0a277fd71j`
--

CREATE TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Sitemap [Site\\Sitemap].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_6743a1c33e574cfaa886e0c0a277fd71r`
--

CREATE TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Sitemap [Site\\Sitemap].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaec` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` mediumtext DEFAULT NULL,
  `role` text DEFAULT NULL,
  `about` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Author [Blog\\Author].';

--
-- Dumping data for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--

INSERT INTO `xc_6947ff28b66047d7924024ca6d58aeaec` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `avatar`, `role`, `about`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '6947ff28-b660-47d7-9240-24ca6d58aeae', NULL, 'John Smith', 'john-smith', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, 'Manager', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaej`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaej` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Author [Blog\\Author].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaer` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Author [Blog\\Author].';

--
-- Dumping data for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--

INSERT INTO `xc_6947ff28b66047d7924024ca6d58aeaer` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 1, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(3, 1, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(4, 1, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for About Page [Page\\About].';

--
-- Dumping data for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--

INSERT INTO `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1', NULL, 'About Us', 'about-us', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for About Page [Page\\About].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for About Page [Page\\About].';

--
-- Dumping data for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--

INSERT INTO `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'blocks', NULL, 'image_slice', '{\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:image_slice', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 1, 'blocks', NULL, 'paragraph_block', '{\"title\":\"Outstanding performance\",\"content\":\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<\\/p>\",\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:paragraph_block', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(3, 1, 'blocks', NULL, 'detailed_block', '{\"title\":\"Why work with us\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"list_items\":\"[{\\\"text\\\":\\\"Doloremque\\\"},{\\\"text\\\":\\\"Beatae vitae\\\"},{\\\"text\\\":\\\"Totam rem aperiam\\\"}]\",\"button_text\":\"Learn more about our process\",\"button_url\":\"https:\\/\\/octobercms.com\\/features\",\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:detailed_block', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(4, 1, 'blocks', NULL, 'scoreboard_metrics', '[]', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(5, 4, 'metrics', NULL, NULL, '{\"number\":3912,\"description\":\"Sed ut perspiciatis\",\"icon\":\"notepad\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(6, 4, 'metrics', NULL, NULL, '{\"number\":223,\"description\":\"Nemo enim ipsam\",\"icon\":\"shield\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(7, 4, 'metrics', NULL, NULL, '{\"number\":863,\"description\":\"Nam libero tempore\",\"icon\":\"basket\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(8, 4, 'metrics', NULL, NULL, '{\"number\":865,\"description\":\"Et harum quidem rerum\",\"icon\":\"briefcase\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(9, 1, 'blocks', NULL, 'team_leaders', '[]', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders', 5, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(10, 9, 'members', NULL, NULL, '{\"title\":\"Andy Anderson\",\"role\":\"Sales Manager\",\"description\":\"Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(11, 10, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(12, 10, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(13, 10, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(14, 9, 'members', NULL, NULL, '{\"title\":\"Bob Harris\",\"role\":\"Product Designer\",\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(15, 14, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(16, 14, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(17, 14, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(18, 14, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(19, 9, 'members', NULL, NULL, '{\"title\":\"Ann Lewis\",\"role\":\"Marketing Manager\",\"description\":\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(20, 19, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(21, 19, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(22, 19, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(23, 9, 'members', NULL, NULL, '{\"title\":\"Christina Thompson\",\"role\":\"System Analyst\",\"description\":\"Et harum quidem rerum facilis est et expedita distinctio.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(24, 23, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(25, 23, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(26, 23, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(27, 23, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 4, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(28, 9, 'members', NULL, NULL, '{\"title\":\"John Smith\",\"role\":\"President\",\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', 5, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(29, 28, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 1, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(30, 28, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 2, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(31, 28, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', 3, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `fullslug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Category [Blog\\Category].';

--
-- Dumping data for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--

INSERT INTO `xc_b022a74b15e64c6b9eb917efc5103543c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `fullslug`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `description`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Announcements', 'announcements', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, 1, 2, 0, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 1, 2, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'News', 'news', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, 3, 4, 0, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(3, 1, 3, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Startup Ideas', 'startup-ideas', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, 5, 6, 0, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proide', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(4, 1, 4, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Updates', 'updates', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, 7, 8, 0, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(5, 1, 5, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Automation', 'automation', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, NULL, NULL, 9, 10, 0, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543j`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Category [Blog\\Category].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Category [Blog\\Category].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `published_at_day` int(11) DEFAULT NULL,
  `published_at_month` int(11) DEFAULT NULL,
  `published_at_year` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `featured_text` mediumtext DEFAULT NULL,
  `gallery_media` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Post [Blog\\Post].';

--
-- Dumping data for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--

INSERT INTO `xc_edcd102e05254e4db07e633ae6c18db6c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `published_at_day`, `published_at_month`, `published_at_year`, `content`, `author_id`, `featured_text`, `gallery_media`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'edcd102e-0525-4e4d-b07e-633ae6c18db6', 'regular_post', 'Consectetur adipiscing elit', 'consectetur-adipiscing-elit', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 6, 2, 2024, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', NULL, NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08'),
(2, 1, 2, 'edcd102e-0525-4e4d-b07e-633ae6c18db6', 'regular_post', 'Nemo enim ipsam', 'nemo-enim-ipsam', 1, NULL, '2024-02-05 20:16:08', NULL, 1, NULL, NULL, 0, 6, 2, 2024, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 1, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', NULL, NULL, NULL, NULL, NULL, '2024-02-05 20:16:08', '2024-02-05 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Post [Blog\\Post].';

--
-- Dumping data for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--

INSERT INTO `xc_edcd102e05254e4db07e633ae6c18db6j` (`parent_id`, `relation_id`, `relation_type`, `field_name`, `site_id`) VALUES
(1, 1, 'Tailor\\Models\\EntryRecord@xc_b022a74b15e64c6b9eb917efc5103543c', 'categories', NULL),
(2, 2, 'Tailor\\Models\\EntryRecord@xc_b022a74b15e64c6b9eb917efc5103543c', 'categories', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Post [Blog\\Post].';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alterna_alternatekno_job`
--
ALTER TABLE `alterna_alternatekno_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alterna_alternatekno_portofolio`
--
ALTER TABLE `alterna_alternatekno_portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alterna_alternatekno_produk`
--
ALTER TABLE `alterna_alternatekno_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flosch_slideshow_slides_slideshow_id_foreign` (`slideshow_id`);

--
-- Indexes for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ginopane_blogtaxonomy_post_types`
--
ALTER TABLE `ginopane_blogtaxonomy_post_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_post_types_name_unique` (`name`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_post_types_slug_unique` (`slug`);

--
-- Indexes for table `ginopane_blogtaxonomy_related_series`
--
ALTER TABLE `ginopane_blogtaxonomy_related_series`
  ADD KEY `related_series_index` (`series_id`,`related_series_id`),
  ADD KEY `Related series reference` (`related_series_id`);

--
-- Indexes for table `ginopane_blogtaxonomy_series`
--
ALTER TABLE `ginopane_blogtaxonomy_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_series_title_unique` (`title`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_series_slug_unique` (`slug`);

--
-- Indexes for table `ginopane_blogtaxonomy_taggables`
--
ALTER TABLE `ginopane_blogtaxonomy_taggables`
  ADD KEY `ginopane_blogtaxonomy_taggable_index` (`tag_id`,`ginopane_blogtaxonomy_taggable_id`,`ginopane_blogtaxonomy_taggable_type`);

--
-- Indexes for table `ginopane_blogtaxonomy_tags`
--
ALTER TABLE `ginopane_blogtaxonomy_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_tags_name_unique` (`name`),
  ADD UNIQUE KEY `ginopane_blogtaxonomy_tags_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_sitesearch_query_logs`
--
ALTER TABLE `offline_sitesearch_query_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`),
  ADD KEY `rainlab_blog_posts_ginopane_blogtaxonomy_series_id_foreign` (`ginopane_blogtaxonomy_series_id`),
  ADD KEY `rainlab_blog_posts_ginopane_blogtaxonomy_post_types_id_foreign` (`ginopane_blogtaxonomy_post_types_id`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rebel59_isogallery_categories`
--
ALTER TABLE `rebel59_isogallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebel59_isogallery_galleries`
--
ALTER TABLE `rebel59_isogallery_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebel59_isogallery_gally_cats`
--
ALTER TABLE `rebel59_isogallery_gally_cats`
  ADD PRIMARY KEY (`gallery_id`,`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_master_index` (`attachment_type`,`attachment_id`,`field`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `system_site_definitions`
--
ALTER TABLE `system_site_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_site_definitions_code_index` (`code`),
  ADD KEY `system_site_definitions_group_id_index` (`group_id`);

--
-- Indexes for table `system_site_groups`
--
ALTER TABLE `system_site_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_site_groups_code_index` (`code`);

--
-- Indexes for table `tailor_content_joins`
--
ALTER TABLE `tailor_content_joins`
  ADD KEY `tailor_content_joins_pidx` (`parent_id`,`parent_type`),
  ADD KEY `tailor_content_joins_ridx` (`relation_id`,`relation_type`),
  ADD KEY `tailor_content_joins_field_name_index` (`field_name`),
  ADD KEY `tailor_content_joins_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_content_schema`
--
ALTER TABLE `tailor_content_schema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_content_schema_table_name_index` (`table_name`);

--
-- Indexes for table `tailor_globals`
--
ALTER TABLE `tailor_globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_globals_site_id_index` (`site_id`),
  ADD KEY `tailor_globals_site_root_id_index` (`site_root_id`),
  ADD KEY `tailor_globals_blueprint_uuid_index` (`blueprint_uuid`);

--
-- Indexes for table `tailor_global_joins`
--
ALTER TABLE `tailor_global_joins`
  ADD KEY `tailor_global_joins_idx` (`relation_id`,`relation_type`),
  ADD KEY `tailor_global_joins_field_name_index` (`field_name`),
  ADD KEY `tailor_global_joins_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_global_repeaters`
--
ALTER TABLE `tailor_global_repeaters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_global_repeaters_idx` (`host_id`,`host_field`),
  ADD KEY `tailor_global_repeaters_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_preview_tokens`
--
ALTER TABLE `tailor_preview_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_preview_tokens_site_id_index` (`site_id`),
  ADD KEY `tailor_preview_tokens_token_index` (`token`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827c`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_site_id_index` (`site_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_content_group_index` (`content_group`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_slug_index` (`slug`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_primary_id_index` (`primary_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_fullslug_index` (`fullslug`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827j`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827j`
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_field_name_index` (`field_name`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827r`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6743a1c33e574cfaa886e0c0a277fd71c`
--
ALTER TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_site_id_index` (`site_id`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_content_group_index` (`content_group`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_slug_index` (`slug`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_primary_id_index` (`primary_id`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71c_fullslug_index` (`fullslug`);

--
-- Indexes for table `xc_6743a1c33e574cfaa886e0c0a277fd71j`
--
ALTER TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71j`
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71j_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71j_field_name_index` (`field_name`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6743a1c33e574cfaa886e0c0a277fd71r`
--
ALTER TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_6743a1c33e574cfaa886e0c0a277fd71r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_site_id_index` (`site_id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_content_group_index` (`content_group`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_slug_index` (`slug`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaej`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaej`
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_field_name_index` (`field_name`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaer_idx` (`host_id`,`host_field`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaer_site_id_index` (`site_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_site_id_index` (`site_id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_content_group_index` (`content_group`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_slug_index` (`slug`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_field_name_index` (`field_name`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_site_id_index` (`site_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_content_group_index` (`content_group`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_slug_index` (`slug`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_primary_id_index` (`primary_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_fullslug_index` (`fullslug`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543j`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543j`
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_field_name_index` (`field_name`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_site_id_index` (`site_id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_content_group_index` (`content_group`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_slug_index` (`slug`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6j`
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_idx` (`relation_id`,`relation_type`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_field_name_index` (`field_name`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6r_site_id_index` (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alterna_alternatekno_job`
--
ALTER TABLE `alterna_alternatekno_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alterna_alternatekno_portofolio`
--
ALTER TABLE `alterna_alternatekno_portofolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `alterna_alternatekno_produk`
--
ALTER TABLE `alterna_alternatekno_produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ginopane_blogtaxonomy_post_types`
--
ALTER TABLE `ginopane_blogtaxonomy_post_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ginopane_blogtaxonomy_series`
--
ALTER TABLE `ginopane_blogtaxonomy_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ginopane_blogtaxonomy_tags`
--
ALTER TABLE `ginopane_blogtaxonomy_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offline_sitesearch_query_logs`
--
ALTER TABLE `offline_sitesearch_query_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rebel59_isogallery_categories`
--
ALTER TABLE `rebel59_isogallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rebel59_isogallery_galleries`
--
ALTER TABLE `rebel59_isogallery_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_site_definitions`
--
ALTER TABLE `system_site_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_site_groups`
--
ALTER TABLE `system_site_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_content_schema`
--
ALTER TABLE `tailor_content_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tailor_globals`
--
ALTER TABLE `tailor_globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_global_repeaters`
--
ALTER TABLE `tailor_global_repeaters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_preview_tokens`
--
ALTER TABLE `tailor_preview_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_339b11b769ad43c49be16953e7738827c`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xc_339b11b769ad43c49be16953e7738827r`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xc_6743a1c33e574cfaa886e0c0a277fd71c`
--
ALTER TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_6743a1c33e574cfaa886e0c0a277fd71r`
--
ALTER TABLE `xc_6743a1c33e574cfaa886e0c0a277fd71r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD CONSTRAINT `flosch_slideshow_slides_slideshow_id_foreign` FOREIGN KEY (`slideshow_id`) REFERENCES `flosch_slideshow_slideshows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ginopane_blogtaxonomy_related_series`
--
ALTER TABLE `ginopane_blogtaxonomy_related_series`
  ADD CONSTRAINT `Related series reference` FOREIGN KEY (`related_series_id`) REFERENCES `ginopane_blogtaxonomy_series` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Series reference` FOREIGN KEY (`series_id`) REFERENCES `ginopane_blogtaxonomy_series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ginopane_blogtaxonomy_taggables`
--
ALTER TABLE `ginopane_blogtaxonomy_taggables`
  ADD CONSTRAINT `ginopane_blogtaxonomy_taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `ginopane_blogtaxonomy_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD CONSTRAINT `rainlab_blog_posts_ginopane_blogtaxonomy_post_types_id_foreign` FOREIGN KEY (`ginopane_blogtaxonomy_post_types_id`) REFERENCES `ginopane_blogtaxonomy_post_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rainlab_blog_posts_ginopane_blogtaxonomy_series_id_foreign` FOREIGN KEY (`ginopane_blogtaxonomy_series_id`) REFERENCES `ginopane_blogtaxonomy_series` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

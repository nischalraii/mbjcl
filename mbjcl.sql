-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 01:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'front1', NULL, NULL),
(2, 'front2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Latest', '<p>This is the latest.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>\r\n\r\n<p>If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>\r\n\r\n<p>If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream starter kits, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>', '1721975087.png', 2, '2024-07-26 00:39:47', '2024-07-26 00:39:47'),
(2, 'Second Article', '<p>If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>\r\n\r\n<p>If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>\r\n\r\n<p>If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.If you are using the Laravel Breeze or Laravel Jetstream&nbsp;<a href=\"https://laravel.com/docs/11.x/starter-kits\">starter kits</a>, rate limiting will automatically be applied to login attempts. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts. The throttling is unique to the user&#39;s username / email address and their IP address.</p>', '1721975856.jpg', 3, '2024-07-26 00:52:36', '2024-07-26 00:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Health', '2024-07-25 23:13:00', '2024-07-25 23:13:00'),
(2, 'Sport', '2024-07-25 23:13:07', '2024-07-25 23:13:07'),
(3, 'News', '2024-07-25 23:13:12', '2024-07-25 23:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `title`, `content`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', '<p>Madhya Bhotekoshi Jalavidyut Company Limited (MBJCL) is a subsidiary company of Chilime Hydropower Company Limited, registered as public company in july 2010. MBJCL has planned to develop Middle Bhotekoshi Hydroelectric Project (MBKHEP) with an installed capacity of 102 MW in Sindhupalchowk district of Central Development Region.<br />\r\nTri-partite loan agreement has been signed between EPF, Chilime and MBJCL for debt portion. The equity investment will be made through 51% promoter share and 49% public share. Chilime is a leading company with 37% share.</p>', 'Capital Structure of MBJCL_20240731_095625.jpg', 'introduction', '2024-07-31 04:11:25', '2024-08-02 01:13:41'),
(2, 'Messages', '<p>I heartily welcome all the visitors to MBJCL Web Site. It is our effort to provide related information about MBJCL activities to all using online media as soon as possible. Please don&#39;t forget to make your comments and suggestions to make this website more fruitful and efficient.</p>\r\n\r\n<p>Madhya Bhotekoshi Jalavidyut Company Limited (MBJCL) is a subsidiary company of Chilime Hydropower Company Limited, registered as public company in july 2010. MBJCL has planned to develop Middle Bhotekoshi Hydroelectric Project (MBKHEP) with an installed capacity of 102 MW in Sindhupalchowk district of Central Development Region.Tri-partite loan agreement has been signed between EPF, Chilime and MBJCL for debt portion. The equity investment will be made through 51% promoter share and 49% public share. Chilime is a leading company with 37% share.</p>', 'Ram Gopal Shiwakoti_20240731_095656.jpg', 'messages', '2024-07-31 04:11:56', '2024-07-31 04:11:56'),
(3, 'Board Of Directors', '<p>Board Of Directors</p>', NULL, 'bod', '2024-07-31 04:12:18', '2024-07-31 04:12:18'),
(5, 'Oragnization Chart', '<p>null</p>', 'Organizational Chart_20240731_101218.jpg', 'organization-chart', '2024-07-31 04:27:18', '2024-07-31 04:27:18'),
(6, 'Our Team', '<p>null</p>', NULL, 'our-team', '2024-07-31 05:04:23', '2024-07-31 05:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `default_themes`
--

CREATE TABLE `default_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app` bigint(20) UNSIGNED NOT NULL,
  `post_theme` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `default_themes`
--

INSERT INTO `default_themes` (`id`, `app`, `post_theme`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, '2024-07-30 23:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_21_062514_create_permission_tables', 1),
(6, '2024_07_21_112736_create_categories_table', 1),
(7, '2024_07_24_044910_create_articles_table', 1),
(8, '2024_07_24_045137_create_article_category_table', 1),
(9, '2024_07_24_104236_create_app_table', 1),
(10, '2024_07_24_104955_create_post_theme_table', 1),
(11, '2024_07_26_041803_create_default_theme_table', 1),
(13, '2024_07_31_062819_create_top_navbar_table', 2),
(18, '2024_07_31_073320_create_companies_table', 3),
(19, '2024_08_02_061020_create_projects_table', 4),
(20, '2024_08_02_073733_create_notices_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Prequalification', '<p>null</p>', NULL, 'prequalification', '2024-08-02 02:34:53', '2024-08-02 02:34:53'),
(2, 'Bidding', '<p>null</p>', NULL, 'bidding', '2024-08-02 02:36:15', '2024-08-02 02:36:15'),
(3, 'Supplies', '<p>null</p>', NULL, 'supplies', '2024-08-02 02:36:45', '2024-08-02 02:36:45'),
(4, 'Contract Notice', '<p>null</p>', NULL, 'contract-notice', '2024-08-02 02:37:07', '2024-08-02 02:37:07'),
(5, 'Agreement Notice', '<p>null</p>', NULL, 'agreement-notice', '2024-08-02 02:37:33', '2024-08-02 02:37:33'),
(6, 'Public Notice', '<p>null;</p>', NULL, 'public-notice', '2024-08-02 02:37:53', '2024-08-02 02:37:53'),
(7, 'Notice to Staff', '<p>null</p>', NULL, 'notice-to-staff', '2024-08-02 02:39:38', '2024-08-02 02:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_themes`
--

CREATE TABLE `post_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_themes`
--

INSERT INTO `post_themes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, NULL),
(2, 'post2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `content`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', '<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:75%;border:none;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type of Project:</td>\r\n			<td>Run-of-River (ROR)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Design flow:</td>\r\n			<td>50.8 m3/sec</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Head:</td>\r\n			<td>235 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headworks:</td>\r\n			<td>Gated Weir Type with Undersluice and Side Intake</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Desanding Basin Type &amp; Size:</td>\r\n			<td>Surface, 100 m(l) x 13 m(w) x 8.5 m(h)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tunnel Length &amp; Size:</td>\r\n			<td>7124 m x 5.7 m(w) x 5.7 m(h)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Powerhouse Type &amp; Size:</td>\r\n			<td>Surface Powerhouse 52 m(l) x 15 m(b) x 25.5 m(h)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Turbine:<br />\r\n			Unit Capacity:</td>\r\n			<td>Type, Orientation &amp; Number<br />\r\n			Francis, Vertical Axis &amp; 3 Nos. 34 MW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Generator Unit Capacity &amp; Nos.:</td>\r\n			<td>40 MVA &amp; 3 Nos.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Installed Capacity:</td>\r\n			<td>102 MW (3 x 34 MW)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Annual Salable Energy:&nbsp;&nbsp; &nbsp;</td>\r\n			<td>542.2 GWh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dry Energy:</td>\r\n			<td>83.7 GWh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wet Energy:</td>\r\n			<td>458.5GWh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Transmission Line Length/ Voltage:</td>\r\n			<td>4 km/Single Circuit 220 kV</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, 'introduction', '2024-08-02 01:01:00', '2024-08-02 01:01:00'),
(2, 'Project Management', '<p>null</p>', NULL, 'project-management', '2024-08-02 01:25:32', '2024-08-02 01:25:32'),
(3, 'Salient Features', '<p>null</p>', NULL, 'salient-features', '2024-08-02 01:26:14', '2024-08-02 01:26:14'),
(4, 'Project Layout Maps', '<div class=\"span8\"><div class=\"breadcrumb\">Projects » Project Layout Maps</div>\r\n<div class=\"messageheading\">Project Layout Map</div>						<div style=\"margin-bottom:15px\">\r\n							<div style=\"text-align:center\"><img src=\"https://mbjcl.com.np/site/resources/sized/235_Layout1 Mbjcl.gif\" border=\"0\" align=\"Center\"><br>Project Layout Map</div>                        </div>\r\n                        <div style=\"clear: both\"></div>\r\n                        \r\n                      \r\n                       \r\n							<div style=\"margin-bottom:15px\">\r\n							<div style=\"text-align:center\"><img src=\"https://mbjcl.com.np/site/resources/sized/235_Project Layout and profile.gif\" border=\"0\" align=\"Center\"><br>Project Layout and profile</div>                        </div>\r\n                        <div style=\"clear: both\"></div>\r\n                        \r\n                      \r\n                       \r\n	</div>', NULL, 'project-layout-maps', '2024-08-02 01:32:49', '2024-08-02 01:32:49'),
(5, 'Status of Project', '<ul style=\"list-style-type:circle;\">\r\n	<li>Certificate of Company Registration &amp; Certificate of Commencement of Business were received from Office of Company Registrar (OCR) on July 29, 2010 &amp; August 29, 2011 respectively.</li>\r\n	<li>Survey License for Power Generation received from Ministry of Energy on April 8, 2011.</li>\r\n	<li>Connection Agreement for power evacuation was done with NEA on August 25, 2011 and Power Purchase Agreement (PPA) was signed on November 14, 2011.</li>\r\n	<li>Tripartite Loan Agreement between was signed between EPF, CHCL and the company on December 8, 2011</li>\r\n	<li>The project started construction by February 11, 2014 and targeted to complete the project by the end of December 2020.</li>\r\n	<li>Consulting services is awarded to&nbsp;Tractebel Engineering GmbH( formerly Lahmeyer Internation GmbH(LI)) in association with TMS.</li>\r\n	<li>Detailed Project Report has been completed.</li>\r\n	<li>Hydrological measurements at headworks and powerhouse site is being continued.Surface geological investigation including drilling in headworks and powerhouse as well as sub-surface exploration with HRT has been carried out to determine the geological condition in the key structure locations.</li>\r\n	<li>Land acquisition process is in Final Stage of completion.</li>\r\n	<li>Test Adit is completed by Himal Hydro Construction Ltd.</li>\r\n	<li>Camp Facilities are constructed.</li>\r\n	<li>Diversion Tunnel Constructed by Himal Hydro Construction Ltd.</li>\r\n	<li>EIA approved 12 th November 2013</li>\r\n	<li>Generation License received December 03, 2013</li>\r\n	<li>Lot-1 (Civil and Hydromechanical works)&nbsp;contract is awarded to Guangxi Hydroelectric Construction Bureau.</li>\r\n	<li>Lot2 Electro-Mechanical Contract is Awarded to Andritz Hydro Private Limited in association with Trade Link International.</li>\r\n	<li>Transmission Line works Contract is Awarded to Urja-AC JV Lalitpur, Nepal on July 27, 2018.</li>\r\n	<li>IEE of Transmission Line approved on May 23, 2019 (2076/02/09)</li>\r\n</ul>', NULL, 'status-of-project', '2024-08-02 01:34:45', '2024-08-02 01:41:45'),
(6, 'Social Environment', '<p>null</p>', NULL, 'social-environment', '2024-08-02 01:35:13', '2024-08-02 01:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-07-25 22:56:29', '2024-07-25 22:56:29'),
(2, 'user', 'web', '2024-07-25 22:56:29', '2024-07-25 22:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_navbars`
--

CREATE TABLE `top_navbars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_navbars`
--

INSERT INTO `top_navbars` (`id`, `name`, `parent`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Company', NULL, 'company', NULL, NULL),
(2, 'Introduction', 'Company', 'introduction', NULL, NULL),
(3, 'Messages', 'Company', 'messages', NULL, NULL),
(4, 'Board of Directors', 'Company', 'bod', NULL, NULL),
(5, 'Organization Chart', 'Company', 'organization-chart', NULL, NULL),
(6, 'Our Team', 'Company', 'our-team', NULL, NULL),
(7, 'Projects', NULL, 'projects', NULL, NULL),
(8, 'Introduction', 'Projects', 'introduction', NULL, NULL),
(9, 'Project Management', 'Projects', 'project-management', NULL, NULL),
(10, 'Salient Features', 'Projects', 'salient-features', NULL, NULL),
(11, 'Project Layout Maps', 'Projects', 'project-layout-maps', NULL, NULL),
(12, 'Status of Project', 'Projects', 'status-of-project', NULL, NULL),
(13, 'Social Environment', 'Projects', 'social-environment', NULL, NULL),
(14, 'Notice', NULL, 'notice', NULL, NULL),
(15, 'Prequalification', 'Notice', 'prequalification', NULL, NULL),
(16, 'Bidding', 'Notice', 'bidding', NULL, NULL),
(17, 'Supplies', 'Notice', 'supplies', NULL, NULL),
(18, 'Contract Notice', 'Notice', 'contract-notice', NULL, NULL),
(19, 'Agreement Notice', 'Notice', 'agreement-notice', NULL, NULL),
(20, 'Public Notice', 'Notice', 'public-notice', NULL, NULL),
(21, 'Notice To Staff', 'Notice', 'notice-to-staff', NULL, NULL),
(22, 'Downloads', NULL, 'downloads', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2024-07-25 22:56:29', '$2y$12$LF7Qpd44hPvA7bA57VwG4ulLNodd1gHLK5LfcaWnbIStqtP5lL.Gy', 'c403c7b3bd2c7335afa87f3215a8fbb22fbf6fb4098bbf23ae11f1f994102f03', '2024-07-25 22:56:29', '2024-07-26 00:06:04'),
(2, 'User 2', 'user2@gmail.com', NULL, '$2y$12$RZshc7AQhDKhLjOYluNcdO0Vb4FFR4QXIdbFWzDRW9EXMFsFfy.0G', 'b2cbae9b2c4a0b3258ef471cd4f4fa522d25fae8c7a9fd2a982835a7aa6dbb78', '2024-07-26 03:37:07', '2024-07-26 03:37:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_category_article_id_foreign` (`article_id`),
  ADD KEY `article_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_themes`
--
ALTER TABLE `default_themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_themes_app_foreign` (`app`),
  ADD KEY `default_themes_post_theme_foreign` (`post_theme`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post_themes`
--
ALTER TABLE `post_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `top_navbars`
--
ALTER TABLE `top_navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `default_themes`
--
ALTER TABLE `default_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_themes`
--
ALTER TABLE `post_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_navbars`
--
ALTER TABLE `top_navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `default_themes`
--
ALTER TABLE `default_themes`
  ADD CONSTRAINT `default_themes_app_foreign` FOREIGN KEY (`app`) REFERENCES `apps` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_themes_post_theme_foreign` FOREIGN KEY (`post_theme`) REFERENCES `post_themes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

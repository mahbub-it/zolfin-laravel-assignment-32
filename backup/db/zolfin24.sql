-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2026 at 05:21 PM
-- Server version: 8.0.44-0ubuntu0.24.04.2
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zolfin24`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Faroe Islands', 'similique-dolorum-molestias-sed-aut-hic-ut-omnis-incidunt', NULL, NULL),
(2, 'Faroe Islands', 'exercitationem-harum-eligendi-rerum-tempore', NULL, NULL),
(3, 'Djibouti', 'molestiae-illo-aspernatur-voluptatem-sit-voluptas-nobis-facilis', NULL, NULL),
(4, 'Isle of Man', 'nesciunt-dicta-animi-dolore-corporis-voluptatem-eos', NULL, NULL),
(5, 'Ethiopia', 'consequatur-fuga-quia-sed-aut-inventore', NULL, NULL),
(6, 'Mayotte', 'ea-impedit-fugit-aut-nihil-reprehenderit-repellat', NULL, NULL),
(7, 'Burkina Faso', 'beatae-aut-facilis-cupiditate-dolorem-deleniti-sit', NULL, NULL),
(8, 'Guyana', 'cupiditate-asperiores-repudiandae-necessitatibus-perferendis', NULL, NULL),
(9, 'Nigeria', 'enim-voluptates-quia-officia-voluptate-odio-eius-voluptas-eligendi', NULL, NULL),
(10, 'Georgia', 'esse-aperiam-illum-molestiae-rem', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `username`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asas', 'asas', '1767546886-FB_IMG_1622901461308.jpg', 'asass@asas.com', NULL, '$2y$10$dyR/naM7oxhvySLbdSqahOOjm5OUgspFV2T6IQC.mkGcHqjKaf0Oy', NULL, '2026-01-04 17:14:46', '2026-01-04 17:14:46'),
(2, 'ami', 'ami', '1767547706-mahbub_webdev.jpeg', 'ami@gmail.com', NULL, '$2y$10$rTvVzSLyelimJgqMqHatKeEhwfbJgbTbSoLDSr9ro6fwyWD.Ux4.y', NULL, '2026-01-04 17:28:26', '2026-01-04 17:28:26'),
(3, 'kkk', 'kkk', '1767548712-FB_IMG_1697017372606.jpg', 'kkk@kkk.com', NULL, '$2y$10$elro5YYxAkv57la0d6C0H.jfzkt3gv/vUIjUsvY/MdD0Qz08GlJ5e', NULL, '2026-01-04 17:45:12', '2026-01-04 17:45:12'),
(4, 'tttt', 'tttt', '1767549065-FB_IMG_1622901461308.jpg', 'tttt@tttt.com', NULL, '$2y$10$2xilHUuovBLQf.G8saloHeG2PWMCmUb0CMKJw7JfDspWgfbK2hbd.', NULL, '2026-01-04 17:51:05', '2026-01-04 17:51:05'),
(5, 'iiii', 'iiii', '1767550373-mahbub_webdev.jpeg', 'iiii@iiii.com', NULL, '$2y$10$L.ZSuAAZnFVV/K3wysPo6OTCWDps6EHIiS69YnNd2UJecaC2YxtV.', NULL, '2026-01-04 18:12:53', '2026-01-04 18:12:53'),
(6, 'bbb', 'bbb', '1767550775-FB_IMG_1622901461308.jpg', 'bbbb@bbbb.com', NULL, '$2y$10$Q5kPUXXIOn5qDKATc0WHx.73Kmz0zqET0ohu7Mnnc8PS5j4sz7t0O', NULL, '2026-01-04 18:19:35', '2026-01-04 18:19:35'),
(7, 'aaaa', 'aaaa', '1768055544-FB_IMG_1697017372606.jpg', 'aaaa@aaaa.com', NULL, '$2y$10$PKVNgu4zwiE4ZFZfc189XOznfZGI..DC/kuAS8HNsgOWhrzreSeby', NULL, '2026-01-10 14:32:24', '2026-01-10 14:32:24'),
(8, 'ddd', 'ddd', '1768055750-FB_IMG_1697017372606.jpg', 'ddd@ddd.com', NULL, '$2y$10$kmZU.a2TUxtWeTHj6rjjgOv0mavLB.66fj92xCWEbw/YGLO1hyNXa', NULL, '2026-01-10 14:35:50', '2026-01-10 14:35:50'),
(9, 'eee', 'eee', '1768057410-FB_IMG_1697017372606.jpg', 'eee@eee.com', NULL, '$2y$10$wRDcENVhPxeguvsiqMIUXOxzu2eDbeCC8FI9aR1d581t1.5pCQegK', NULL, '2026-01-10 15:03:30', '2026-01-10 15:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_21_164559_create_posts_table', 1),
(6, '2022_04_21_164943_create_categories_table', 1),
(7, '2022_04_22_040758_alter_users_table', 1),
(8, '2022_04_22_171120_table_posts_table', 1),
(9, '2025_12_03_154605_create_add_photo_column_table', 1),
(10, '2025_12_30_233345_create_is_admin_column_table', 2),
(11, '2025_12_31_013330_create_cache_table', 3),
(12, '2025_12_31_200430_create_customers_table', 4),
(13, '2025_12_31_202122_create_is_admin_column_table', 4),
(14, '2025_12_31_225813_create_cache_table', 5),
(15, '2026_01_11_210706_create_permission_tables', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 33),
(1, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 34);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 33),
(1, 'App\\Models\\User', 34);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Create Post', 'web', '2026-01-11 15:33:52', '2026-01-11 15:33:52'),
(2, 'Edit Posts', 'web', '2026-01-11 15:58:48', '2026-01-11 15:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `excerpt`, `slug`, `content`, `thumbnail`, `user_id`, `category_id`, `created_at`, `updated_at`, `views`) VALUES
(39, 'Shah Mahbubur Rahman', 'Shah Mahbubur Rahman', 'Shah-Mahbubur-Rahman-1766107255', 'Shah Mahbubur Rahman', 'm5gmSN3V61HAsJOYIBWVSukpaFZITu60FYpxqgfo.jpg', 31, 3, '2025-12-19 01:20:55', '2025-12-19 01:20:55', '0'),
(40, 'test', 'test fsfsdfsfssfsdfsd', 'test-1768063389', 'test fdsfsdfsdfssd', 'sfin0E4RLadY268zgkDX4AW3JC0EGroyoDz4fhIE.jpg', 33, 2, '2026-01-10 16:43:09', '2026-01-10 16:43:09', '0');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Editor', 'web', '2026-01-11 15:33:52', '2026-01-11 15:33:52'),
(2, 'Creator', 'web', '2026-01-12 16:33:01', '2026-01-12 16:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(30, 'Shah Mahbubur Rahman', 'Mahbub', '1766106032-mahbub2.jpg', 'bdsmrahman@gmail.com', NULL, '$2y$10$gob7J2mRZfUS16o/uWIca.1cPxA1bGMx7zfvuYcvPIzES2XsUCs5G', NULL, '2025-12-19 01:00:32', '2025-12-19 01:00:32', NULL),
(31, 'new', 'new', '1766106951-20221015_074326.jpg', 'new@new.com', NULL, '$2y$10$l7mc5eSXtV9/74qSvjMoOOz2TLevyLBOltm4lfNG8oPJ72qPKm.2e', NULL, '2025-12-19 01:15:51', '2025-12-19 01:15:51', NULL),
(32, 'mahbub', 'mahbub', '1767117273-mahbub_webdev.jpeg', 'mahbub@gmail.com', NULL, '$2y$10$B1fK3ITvc8gvYyYTh0nMBeilYbWv8NfF/Rc0jG2ka6/XS0IyhKVV2', NULL, '2025-12-30 17:54:34', '2025-12-30 17:54:34', NULL),
(33, 'aaaa', 'aaaa', '1767117366-FB_IMG_1622901461308.jpg', 'aaaa@aaaa.com', NULL, '$2y$10$fk7nrFpxjFiU5xdy7Vkr8ekQ5Mh4wT1xia4515kkXohzxd2oGjqta', NULL, '2025-12-30 17:56:06', '2025-12-30 17:56:06', 0),
(34, 'Mahbub', 'mahbub', '1767198341-FB_IMG_1622901461308.jpg', 'mahbub@gmai.com', NULL, '$2y$10$9qYKMF2FXnazgbGt12k7LumGW0qr4NinrFQviVloluld9nSJqRu3y', NULL, '2025-12-31 16:25:41', '2025-12-31 16:25:41', NULL),
(35, 'Shah Mahbubur Rahman', 'Mahbub', '1767199742-mahbub5.jpg', 'mahbub.webdev@gmail.com', NULL, '$2y$10$5y1IK/6WBnmtECVEk5Yy3exxON8cCRtCrKAbJ5chv2kGGuRywwcc.', NULL, '2025-12-31 16:49:02', '2025-12-31 16:49:02', NULL),
(36, 'wwww', 'wwww', '1767200127-mahbub4.jpg', 'wwww@wwww.com', NULL, '$2y$10$fWYjFuwjEef.Ws8bSqGSreR1iv.mX/BXDwKUjVo.Lhiho63N2nbPe', NULL, '2025-12-31 16:55:27', '2025-12-31 16:55:27', NULL),
(37, 'aaa', 'aaa', '1767200468-mahbub.jpg', 'aaa@aaa.com', NULL, '$2y$10$2h7ipmhiLf14UoUAI7nl9.Zvo.X5m88XUE0Mm/Iq091CW31Mi76cO', NULL, '2025-12-31 17:01:09', '2025-12-31 17:01:09', 1),
(38, 'bbb', 'bbb', '1767200762-mahbub.png', 'bbb@bbb.com', NULL, '$2y$10$rOyaLGsYcjvGf/S8HLCZLeDy2TDfVMafHSfKL4oGR6/ycWzaI0x/m', NULL, '2025-12-31 17:06:02', '2025-12-31 17:06:02', NULL),
(39, 'vvv', 'vvv', '1767204418-mahbub6.jpg', 'vvv@vvv.com', NULL, '$2y$10$3GOQGPCVifWbElfn7cYpD.rGLVc94a2fBnNlE8cr6biQfuPNxBP7u', NULL, '2025-12-31 18:06:58', '2025-12-31 18:06:58', NULL),
(40, 'rrr', 'rrr', '1767205154-FB_IMG_1622901461308.jpg', 'rrr@rrr.com', NULL, '$2y$10$vnhtoDBuT.VEwWLMDlHmBO59KTCmWQM.rkKP8oVuWkYJWhWNZoaHG', NULL, '2025-12-31 18:19:14', '2025-12-31 18:19:14', NULL),
(41, 'eee', 'eee', '1767206047-mahbub3.jpg', 'eee@eee.com', NULL, '$2y$10$EtvHdzCjOFlgMt3TWc6FmOTEfCVddKzSko4CVlHZ3b7NizSvKkVg2', NULL, '2025-12-31 18:34:07', '2025-12-31 18:34:07', NULL),
(42, 'aaa', 'aaa', '1767206862-mahbub1.jpg', 'aaa@aaaa.com', NULL, '$2y$10$WBIop9dtWbEWdPkhIazVKuhM2KNzDGBnFMVv4L1WbL8lOaYyJKgbG', NULL, '2025-12-31 18:47:42', '2025-12-31 18:47:42', NULL),
(43, 'eeee', 'eeee', '1767207573-FB_IMG_1622901461308.jpg', 'eeee@eee.com', NULL, '$2y$10$3LSZEiWZu/IHJJxeiPPNNO71ktxW5wnyaEWedbCWMnO3V1fRss5KO', NULL, '2025-12-31 18:59:33', '2025-12-31 18:59:33', NULL),
(44, 'aaa', 'aaa', '1767209141-mahbub.png', 'aaaaa@aaaa.com', NULL, '$2y$10$klkki9TLBXC4/riEwky4M.cKupeTciBfVf31x64rr.bjTXGU7v.8a', NULL, '2025-12-31 19:25:41', '2025-12-31 19:25:41', NULL),
(45, 'ttt', 'ttt', '1767209217-FB_IMG_1622901461308.jpg', 'ttt@ttt.com', NULL, '$2y$10$lpR/mdBhRyMnO00zmp/sj.eRf43OtvRWtUiH/KBUJjULArosHKITa', NULL, '2025-12-31 19:26:57', '2025-12-31 19:26:57', NULL),
(46, 'aaaa', 'aaaa', '1767210207-mahbub1.jpg', 'aaaa@dfdfd', NULL, '$2y$10$g1I5ilEz247E/wDDtzZSFuMms88r50.LgKT2TGb/QY9.a6uPXD8Ry', NULL, '2025-12-31 19:43:27', '2025-12-31 19:43:27', NULL),
(47, 'yyy', 'yyy', '1767213002-mahbub1.jpg', 'yyy@yyy.com', NULL, '$2y$10$qxctB0JCYNxgJTTvBMLXZ.VYFdiYSt8vQ7gc.wiLw3uZKOu1psBi.', NULL, '2025-12-31 20:30:02', '2025-12-31 20:30:02', NULL),
(48, 'nnn', 'nnn', '1767284959-mahbub1.jpg', 'nnn@nnn.com', NULL, '$2y$10$BwXDhCkHs9puyavJyt1eDuxkxEsqXG5DeC0EU8fR/0fvQ3xC7mUj2', NULL, '2026-01-01 16:29:19', '2026-01-01 16:29:19', NULL),
(49, 'vvvv', 'vvvv', '1767375696-mahbub1.jpg', 'vvvv@vvvv.com', NULL, '$2y$10$Dfz53k52DB7BYE9ffw7rnOVlquBOnIUpa1d4stSa2XQSSmoGHLaxK', NULL, '2026-01-02 17:41:36', '2026-01-02 17:41:36', NULL),
(50, 'llll', 'llll', '1767460562-mahbub_webdev.jpeg', 'llll@llll.com', NULL, '$2y$10$Fv9aR7psYgN5aRc4Sxp48Oha4Zs6B7PfHwiKLFQ9NL6gxvbeIT96e', NULL, '2026-01-03 17:16:03', '2026-01-03 17:16:03', NULL),
(51, 'nnnn', 'nnnn', '1767461801-FB_IMG_1622901461308.jpg', 'nnnn@nnn.com', NULL, '$2y$10$BNYVtcv7J3jlkjjVqC8Ode6HNZ6P4F6ICyEeFX5tNC0ThE2NymmNW', NULL, '2026-01-03 17:36:41', '2026-01-03 17:36:41', NULL),
(52, 'ppp', 'ppp', '1767462985-FB_IMG_1622901461308.jpg', 'ppp@ppp.com', NULL, '$2y$10$B7cyAF5v9gcXh52f8M.jU.vYhvSG/uHtG9rQaAw1IhweMn2BVwBC2', NULL, '2026-01-03 17:56:25', '2026-01-03 17:56:25', NULL),
(53, 'asas', 'asas', '1767545691-FB_IMG_1622901461308.jpg', 'asas@asas.com', NULL, '$2y$10$T1FDrQmeUwq.TEx1IY/QH.0hF3V6GZCUpUmoWEqSXNTLbczbGy2Le', NULL, '2026-01-04 16:54:51', '2026-01-04 16:54:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

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

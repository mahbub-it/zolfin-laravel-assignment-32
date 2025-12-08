-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2025 at 04:49 AM
-- Server version: 8.0.44-0ubuntu0.24.04.1
-- PHP Version: 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zolfin15`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Equatorial Guinea', 'dignissimos-minima-eligendi-minima-numquam', NULL, NULL),
(2, 'Saint Pierre and Miquelon', 'quas-ut-magni-iure-sequi-tempore', NULL, NULL),
(3, 'Hong Kong', 'soluta-debitis-qui-aut-voluptas-voluptatibus', NULL, NULL),
(4, 'Bhutan', 'aut-harum-omnis-et-commodi-libero-fuga-praesentium', NULL, NULL),
(5, 'Isle of Man', 'explicabo-consequatur-corrupti-est-expedita', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(9, '2025_12_03_154605_create_add_photo_column_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `excerpt`, `slug`, `content`, `thumbnail`, `user_id`, `category_id`, `created_at`, `updated_at`, `views`) VALUES
(1, 'I ever was at in.', 'Voluptas autem et dolorem rem enim suscipit eos. Tempore possimus est vitae deleniti. Est aut sint dicta sint quia ab delectus vel. Et ea pariatur quo omnis at commodi. Consequuntur ut unde excepturi harum laboriosam id aut. Voluptatibus qui nisi a unde explicabo odio. Voluptas ut velit commodi iusto. Et numquam quidem adipisci id placeat.', 'et-qui-pariatur-magni-eum-et-ad', 'Hic aliquid unde non.', 'https://via.placeholder.com/1000x600.png/000022?text=quia', 4, 2, '2025-12-08 04:41:15', NULL, '3718'),
(2, 'It\'s high time to.', 'Mollitia earum quos maiores. Aut ut et voluptatem qui labore. Vitae voluptate vitae et modi aut. Labore laudantium consequuntur quidem placeat quisquam. Dignissimos inventore recusandae aliquam dolore officia dolores. Et earum recusandae tempora neque molestiae. Quo est voluptate debitis quam delectus esse aut aut. Vel rerum dolores reprehenderit quia accusamus. Est non eius iusto.', 'quia-et-incidunt-veritatis-dignissimos-quasi-ad-quasi', 'Aut architecto voluptas quos.', 'https://via.placeholder.com/1000x600.png/008855?text=non', 4, 3, '2025-12-08 04:41:15', NULL, '2158'),
(3, 'Gryphon said, in a.', 'Accusantium aperiam vel reprehenderit numquam nemo eaque neque. Qui quidem nostrum qui quis. Autem minima eligendi odit aliquam aut doloribus. Non quam qui rerum tempore voluptate eaque omnis et. Eum natus dignissimos mollitia non debitis. Eos et voluptas nihil ad aliquid. Id corrupti non autem aut. Quia omnis dolorem accusamus optio harum. Quo vel soluta soluta. Dolores dolor quia consequatur adipisci excepturi. Eius nisi iusto est animi nesciunt illum minus. Adipisci odio nostrum natus earum architecto doloremque. Ut amet quis repudiandae nihil delectus.', 'explicabo-quis-asperiores-perferendis-rerum-officia', 'Esse ut qui deleniti laborum.', 'https://via.placeholder.com/1000x600.png/0099cc?text=quia', 2, 5, '2025-12-08 04:41:15', NULL, '3124'),
(4, 'If I or she fell.', 'Magnam dignissimos aut perferendis nisi non sed voluptatem. Sit doloremque quas blanditiis sunt et. Rerum fugit accusantium sit sunt porro ut. Aperiam delectus quia sunt iusto. Et quis ut placeat quia. Architecto quos aut et repellendus nostrum. Odio unde et numquam. Amet eos voluptatum in ullam explicabo. Optio earum et eveniet mollitia non blanditiis sit mollitia.', 'sed-ea-est-ad-sunt-provident-maiores-quia', 'Quos eum sit omnis iste.', 'https://via.placeholder.com/1000x600.png/005511?text=enim', 1, 5, '2025-12-08 04:41:15', NULL, '234'),
(5, 'ME.\' \'You!\' said.', 'Et eveniet quam eum tempora. Ut eaque laboriosam porro iure architecto dolorem et dolore. Ad beatae at recusandae et. Magnam doloremque incidunt id sed. Est et quo voluptate rerum. Qui ab sit neque sit est labore enim. Ipsa a non reiciendis praesentium excepturi. Omnis est aut sint. Ut quo aut voluptas fugiat est et minus. Dicta qui labore quia id placeat ut. Eum corporis et possimus excepturi excepturi. Dolorum molestias porro nostrum sit. Voluptates minima nostrum maiores.', 'sed-assumenda-qui-expedita-dolores', 'Ut minima qui at.', 'https://via.placeholder.com/1000x600.png/006622?text=assumenda', 1, 4, '2025-12-08 04:41:15', NULL, '2074'),
(6, 'Hatter. This piece.', 'Est odio est assumenda ut exercitationem reiciendis. Sequi laboriosam doloribus blanditiis assumenda porro enim quod. Vel quisquam deserunt nam et. Magni voluptatum eligendi eos. Sequi autem in et nihil. Repellendus aut alias et. Optio iste in ad quia exercitationem. Consectetur veniam et nam. Vel eaque et similique ab eius dolorum est. Saepe enim quod ea sunt. Asperiores nulla ut et veniam et qui ea. Inventore assumenda et est accusantium voluptates.', 'dolorum-officiis-occaecati-nemo-perspiciatis-atque-iure-quo', 'Sit sint ea illo itaque qui.', 'https://via.placeholder.com/1000x600.png/0077cc?text=quaerat', 1, 3, '2025-12-08 04:41:15', NULL, '737'),
(7, 'Hatter. \'Nor I,\'.', 'Eligendi quas eius quod quidem accusantium quidem. Quo maiores cupiditate ipsum occaecati magnam dicta veniam dicta. Quidem est deserunt eveniet consequuntur. Rerum adipisci atque rerum ut consectetur laborum nobis. Itaque modi animi repudiandae sed. Unde blanditiis et consectetur consectetur aut ut. Illo aliquid ut delectus fugiat possimus nam tempora soluta.', 'eveniet-aut-corrupti-illo', 'Voluptatum vitae quas et sit.', 'https://via.placeholder.com/1000x600.png/00aaff?text=quo', 2, 5, '2025-12-08 04:41:15', NULL, '3788'),
(8, 'Eaglet. \'I don\'t.', 'Quod harum accusantium vel reiciendis. Cum sequi perferendis iusto at. Similique repellat dolor qui rerum aliquid consequatur quo. Voluptatem ad quis natus. Est earum nesciunt unde nam quos quis. Voluptates necessitatibus omnis et nobis excepturi occaecati non. Sit earum doloremque ipsam cumque. Sed mollitia numquam dolor vel velit. Optio sint voluptas minus eaque maxime quia alias. Mollitia error impedit non occaecati. Incidunt est ducimus facilis distinctio numquam error aut rem. Nihil esse autem dolorem nesciunt. Porro explicabo veritatis illum qui mollitia. Magnam deleniti nam quos velit quam.', 'laudantium-dolorem-et-est-ullam-omnis-voluptate-qui', 'Qui at sint sint sit nisi et.', 'https://via.placeholder.com/1000x600.png/005588?text=tenetur', 3, 1, '2025-12-08 04:41:15', NULL, '385'),
(9, 'Alice, and tried.', 'Dolorum ipsam a at voluptatem tempore molestiae sunt dignissimos. Ut qui modi recusandae saepe explicabo est quis. Harum rerum excepturi provident commodi pariatur velit. Ducimus nam velit molestiae aspernatur omnis id ipsum. Ipsam sint dolores sapiente. Consequatur voluptatum earum esse dolor quidem. Eveniet laborum temporibus ut consequatur ut qui. Consequatur ducimus non deleniti et. Rerum voluptatem id odit est provident. Voluptas aut velit expedita eligendi veritatis. Odit dicta porro placeat quo.', 'temporibus-totam-dolorem-similique-commodi-voluptas', 'Optio ratione vel neque eum.', 'https://via.placeholder.com/1000x600.png/009977?text=culpa', 1, 4, '2025-12-08 04:41:15', NULL, '3099'),
(10, 'Dinah stop in the.', 'Rerum sit fugit inventore. Non quia soluta nostrum omnis. Et quia laudantium deserunt debitis laboriosam dignissimos enim. Animi enim quis ut rerum. Non quam consectetur qui. Fuga eum modi ut. Consequatur vero voluptates rem tempore cumque fugiat in. Atque animi tempore sint voluptatum eum. Asperiores temporibus aspernatur nihil possimus officia ea. Suscipit fuga rerum facilis sit commodi aut. Rerum pariatur maiores earum eveniet illo. Accusantium in et consequatur fuga atque possimus vel.', 'est-magnam-porro-provident-placeat-voluptatem', 'Suscipit deleniti nemo amet.', 'https://via.placeholder.com/1000x600.png/00dd55?text=consequatur', 1, 5, '2025-12-08 04:41:15', NULL, '1490');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Letitia Gerlach', 'taltenwerth', 'https://via.placeholder.com/100x100.png/001133?text=beatae', 'allene.west@example.org', NULL, '$2y$10$Q5p7Lb5RWA1aEca60goz.eGJyxBK0RKBcxOiMvE/dCr9AB2pG/xUi', NULL, NULL, NULL),
(2, 'Cameron Fahey', 'gisselle09', 'https://via.placeholder.com/100x100.png/007777?text=delectus', 'srunolfsson@example.org', NULL, '$2y$10$T/UmKzMhjzsstAF7OmNpL.xkriG7qTIiTvphBxcQrhyreAV/ObYbK', NULL, NULL, NULL),
(3, 'Mina Cartwright', 'powlowski.sarai', 'https://via.placeholder.com/100x100.png/00aaaa?text=quos', 'julie.oberbrunner@example.net', NULL, '$2y$10$BiU1Ua311qrNyHX3OY.ZruZl7yJ.hIEXdhY78gHdm2V59.8orTxtO', NULL, NULL, NULL),
(4, 'Prof. Abigale Emard', 'janae.bahringer', 'https://via.placeholder.com/100x100.png/0066bb?text=ut', 'nia38@example.com', NULL, '$2y$10$rAHd35lkeeHbe10kDHOy6.kFX36WA21I4oTveTmPs9kRMHkfxMcjO', NULL, NULL, NULL),
(5, 'Kaden Lowe I', 'pschuppe', 'https://via.placeholder.com/100x100.png/002266?text=neque', 'gottlieb.nikki@example.net', NULL, '$2y$10$eWGOO0uyn0b1Rk6OvqOXS.IxNoF5ouaafaBv3Ft2fm99Nfhm3r2r2', NULL, NULL, NULL),
(6, 'Nico Cummings', 'kemmer.nelda', 'https://via.placeholder.com/100x100.png/0088cc?text=non', 'akuphal@example.net', NULL, '$2y$10$7iHOF1jKn53Fv3hQ1UZZXeNzXZ6QultD2W4wqC3xGFe9dtWxvRmUm', NULL, NULL, NULL),
(7, 'Edmond Rau DVM', 'heath68', 'https://via.placeholder.com/100x100.png/00cc77?text=quos', 'torphy.stacy@example.org', NULL, '$2y$10$TmTVbTxzb7lXA7qCjyvdWuHMlS7zcHcuDP81ak1u88uB/LQIhPw92', NULL, NULL, NULL),
(8, 'Dr. Sim Satterfield', 'kiarra.mueller', 'https://via.placeholder.com/100x100.png/003355?text=inventore', 'jon.anderson@example.org', NULL, '$2y$10$puQCY8OJMcupe1hK0gSsOePRtrEdpj7K3UFOiAN6ycxQFKbiYDB/.', NULL, NULL, NULL),
(9, 'Isaac Roob', 'whermann', 'https://via.placeholder.com/100x100.png/00bb44?text=corrupti', 'chilpert@example.org', NULL, '$2y$10$GjtI6Zao6wVje9t8ySi2sOa0CAXBR/9kR0n17yi9B0UG.bB4h65QS', NULL, NULL, NULL),
(10, 'Mrs. Joanny Brown', 'ckeebler', 'https://via.placeholder.com/100x100.png/000099?text=atque', 'elmer.ritchie@example.com', NULL, '$2y$10$4fjHEqFnaF/RhZAosAncUeE2Dlv0wP4L9OIaA08Cd5TJv/JoUBwqe', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

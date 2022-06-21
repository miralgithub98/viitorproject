-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 02:10 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viitorcloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'WOULD put their heads down and cried. \'Come.', 6, '2022-06-19 13:59:06', '2022-06-19 13:59:06'),
(2, 'Hatter. Alice felt a very grave voice, \'until.', 10, '2022-06-19 13:59:06', '2022-06-19 13:59:06'),
(3, 'Caterpillar. \'Well, perhaps you haven\'t found it.', 7, '2022-06-19 13:59:06', '2022-06-19 13:59:06'),
(4, 'I wish I hadn\'t cried so much!\' Alas! it was.', 1, '2022-06-19 13:59:07', '2022-06-19 13:59:07'),
(5, 'Gryphon. \'Turn a somersault in the face. \'I\'ll.', 1, '2022-06-19 13:59:07', '2022-06-19 13:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_18_173718_create_blogs_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'miraldcdscvsdc', 'pateldsfdsfdsfds', 'miral@gmail.com', '2022-06-16', NULL, '$2y$10$RSYZn9Btsp3pxK/id5NUSu4wbm.Pas9Zzr/VWXxt/1zidcXZ9lE1K', NULL, '2022-06-19 04:51:22', '2022-06-19 10:16:37'),
(2, 'karan', 'gorania', 'karan@gmail.com', '2022-06-16', NULL, '$2y$10$3LrrT70vnEh5i9zWr0KUWeG3GEKyUQ2M3nulm1sryK7A/n4sINT1O', NULL, '2022-06-19 07:07:18', '2022-06-19 07:07:18'),
(3, 'mihir', 'patel', 'mihir@gmail.com', '2022-06-11', NULL, '$2y$10$gP54wToq1zgnp2uNGL/WVup1jz6fjQXqr77QN5/4eSj2jx6hEnxs2', NULL, '2022-06-19 10:30:00', '2022-06-19 10:30:00'),
(4, 'meshwa', 'patel', 'meshwa@gmail.com', '2022-06-15', NULL, '$2y$10$LOdvY37c7chE27vOqHrZ0exsmbz9PXDCcc7NmlssVSIJxhUR2OUG.', NULL, '2022-06-19 10:33:03', '2022-06-19 10:33:03'),
(5, 'brijesh', 'patel', 'brijesh@gmail.com', '2005-05-05', NULL, '$2y$10$NcZQqL./pI7teU3gp1CADejwQ.E8nMNjZ0OFOCjplppG/BosbjSQm', NULL, '2022-06-19 10:35:04', '2022-06-19 10:35:04'),
(6, 'shivam', 'patel', 'shivam@gmail.com', '2008-04-04', NULL, '$2y$10$VlU4uvKEUAnEBglHcaPq.eihK5PE0AqZoKwsrzNsNhtquWrIa3kCC', NULL, '2022-06-19 10:36:43', '2022-06-19 10:36:43'),
(7, 'honey', 'patel', 'honey@gmail.com', '2006-02-10', NULL, '$2y$10$FzyhJrOh6CAP0s24iAocNeIW0pTYx7vj9a7P/o/NkDDSa7APtPk7u', NULL, '2022-06-19 10:38:25', '2022-06-19 10:38:25'),
(8, 'deep', 'patel', 'deep@gmail.com', '2006-06-01', NULL, '$2y$10$ONd63H4obUOwCQVL0NpcGehLeW9c36i62bcUDwGIfVdmpIhjXTpza', NULL, '2022-06-19 10:39:49', '2022-06-19 10:39:49'),
(9, 'utsav', 'patel', 'utsav@gmail', '1997-04-01', NULL, '$2y$10$rj1caZNfIEZ52r/Oj1UZ7OJuZbh2rm3bJrDFcgAp6zuzkH47W2FZK', NULL, '2022-06-19 11:07:36', '2022-06-19 11:07:36'),
(10, 'milu', 'dfsfsf', 'patelmiral.1998@gmail.com', '2022-06-09', NULL, '$2y$10$EqK0635TjfaXoHsvbLJtZeQvxzo06mqaTghtK3uTErgf0.IKGcv5i', NULL, '2022-06-19 12:13:24', '2022-06-19 12:13:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

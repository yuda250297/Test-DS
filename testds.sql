-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 10:36 AM
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
-- Database: `testds`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aadffotttt', 'dwdwdwd', NULL, 'wdwdwd', NULL, NULL, '2021-05-31 01:35:22'),
(7, 'Gerardus Yuda', 'wdwdoop', NULL, 'wdwdwdwd', NULL, '2021-05-31 00:18:54', '2021-05-31 00:56:07'),
(15, '9tlfzxco', 'dbyVGhe6KqPE@gmail.com', NULL, '$2y$10$wrR3Rg6ty46b53EkWVEKIeoB1z1FWyK7oz3TVqntuB5Z190Q6Pdpa', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(16, 'uN4Z34sr', 'jrVJchRlcmDn@gmail.com', NULL, '$2y$10$86kFqmFIIBUjYgdlH6Q1e.ICd/Win0N0EMkvutLTym8j5WWPDt.YG', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(17, 'q2llergf', '3RCDTszATyiQ@gmail.com', NULL, '$2y$10$sox57Am.UZCNMKRj0i0l9.ejutNlTNBmPpxJlsln.tX8Z2KNkY17m', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(18, 'BApzo8ZB', '4ZXYPi3xEKqH@gmail.com', NULL, '$2y$10$S6nWTApfbrIzoM/4wJ5JfeJ/wKWs4QjCtDU7IqhBHmZ1iSwqrYkHK', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(19, 'E5xZziTH', 'Sv2TWfa7VFgG@gmail.com', NULL, '$2y$10$86JiMfYQT3WFnXypxHxBy.mOHRrSrLMnB5O0WQjcMNWhVW5.0ibSq', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(20, 'wn98GXyZ', '8X1KGcwxJsMp@gmail.com', NULL, '$2y$10$ZrcPcfzEPj92Ap.BiPYFweHTEpAf3S1X3y1k9ttHOgO9vqqGrqKtu', NULL, '2021-05-31 01:28:13', '2021-05-31 01:28:13'),
(21, 'zdu85I3C', 'T2ZSWrwNF1GC@gmail.com', NULL, '$2y$10$xRdjDsgEH.MEGFgqJboo9uS6o3OPwUhVI/QePPw2xnVffoAmiP1vq', NULL, '2021-05-31 01:28:14', '2021-05-31 01:28:14'),
(22, 'q76GFirR', '3tkKOFcOTvLr@gmail.com', NULL, '$2y$10$p4lrUmuej3d.z/yGsjhFxuO1WVHwXj4ex6Gs4/54ojb0flFxxIwme', NULL, '2021-05-31 01:28:14', '2021-05-31 01:28:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 08:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` char(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
('993fbd39-b78a-4b3b-9f6a-2ed5f809a15c', 'J. K. Rollins', 'jkrollins@bms.com', 1, '2023-05-24 23:52:46', '2023-05-24 23:52:46', NULL),
('993fbd7b-2993-44bc-9558-d1bffce62837', 'William Shakespeare', 's_williams@bms.com', 1, '2023-05-24 23:53:29', '2023-05-24 23:53:29', NULL),
('993fbdb5-b197-4b87-bf4f-27cf1f818f76', 'Emily Bronte', 'bronte_emily@bms.com', 1, '2023-05-24 23:54:07', '2023-05-24 23:54:07', NULL),
('993fbde6-9693-4435-996b-5967313711e1', 'Charlote Bronte', 'bronte_charlote@bms.com', 1, '2023-05-24 23:54:39', '2023-05-24 23:54:39', NULL),
('993fbeed-ae3a-4803-a78c-7e2525c922d0', 'Jane Austen', 'jane.austen@bms.com', 1, '2023-05-24 23:57:32', '2023-05-24 23:57:32', NULL),
('993fbf40-7304-4e20-a087-05baba851436', 'Charles Dickens', 'dickens@bms.com', 1, '2023-05-24 23:58:26', '2023-05-24 23:58:26', NULL),
('993fbf71-10f5-461b-af83-37e3f01e1252', 'John Milton', 'j_milton@bms.com', 1, '2023-05-24 23:58:58', '2023-05-24 23:58:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` char(36) NOT NULL,
  `book_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
('993fbd7b-2993-44bc-9558-d1bffce62837', '993fbb6d-2f5f-488e-8b26-91737ae6af85'),
('993fbd39-b78a-4b3b-9f6a-2ed5f809a15c', '993fbb6d-3a72-4850-a347-32ca05f2719b'),
('993fbd7b-2993-44bc-9558-d1bffce62837', '993fbb6d-3b7f-4434-bf79-487fa2c117db'),
('993fbd7b-2993-44bc-9558-d1bffce62837', '993fbb6d-3c71-424c-bf51-497763d1312d'),
('993fbd39-b78a-4b3b-9f6a-2ed5f809a15c', '993fbb6d-3548-4300-bb68-1992d1aa4d88'),
('993fbd39-b78a-4b3b-9f6a-2ed5f809a15c', '993fbb6d-2f5f-488e-8b26-91737ae6af85'),
('993fbde6-9693-4435-996b-5967313711e1', '993fbb6d-3b7f-4434-bf79-487fa2c117db'),
('993fbde6-9693-4435-996b-5967313711e1', '993fbb6d-3b7f-4434-bf79-487fa2c117db');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` char(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `edition` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `illutrations` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `active`, `edition`, `pages`, `illutrations`, `created_at`, `updated_at`, `deleted_at`) VALUES
('993fbb6d-2f5f-488e-8b26-91737ae6af85', 'SeaShell', 1, 6, 1520, 0, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3548-4300-bb68-1992d1aa4d88', 'MidnightBlue', 0, 7, 2672, 1, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-366c-48e7-afdd-1ae40d3167e1', 'Magenta', 1, 4, 1095, 0, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3770-4335-b71b-6fc4881c1aca', 'LightCyan', 1, 9, 791, 0, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-386b-43bd-9321-c317311e7598', 'Thistle', 1, 1, 2549, 1, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3964-4de8-8697-0df5c6a5fcac', 'Thistle', 1, 7, 3595, 1, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3a72-4850-a347-32ca05f2719b', 'Gray', 1, 7, 4996, 1, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3b7f-4434-bf79-487fa2c117db', 'OldLace', 1, 5, 4695, 0, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3c71-424c-bf51-497763d1312d', 'MediumAquaMarine', 1, 3, 1326, 1, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL),
('993fbb6d-3d6c-401e-9b01-2a3afda7cc2d', 'OrangeRed', 1, 5, 1594, 0, '2023-05-24 23:47:44', '2023-05-24 23:47:44', NULL);

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_17_183224_create_authors_table', 1),
(7, '2023_05_23_220939_create_books_table', 1),
(8, '2023_05_24_165950_create_author_book_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Domenic Terry', 'eparker@example.org', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1OoWJvOmuQ', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(2, 'Prof. Joaquin Corkery', 'kristopher.kertzmann@example.com', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k8qqdXSxg5', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(3, 'Carley Streich DVM', 'gzemlak@example.com', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XRotaLyQXg', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(4, 'Green Gorczany', 'stephan.bednar@example.net', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3VAZ7uymQz', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(5, 'Mr. Raven Padberg', 'hbartoletti@example.org', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ir8eU7XXIz', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(6, 'Corine Feil', 'aprohaska@example.org', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j51LFMRyXI', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(7, 'Jared Lindgren', 'harris.gunner@example.net', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pZ3me8UtH7', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(8, 'Concepcion Gislason', 'considine.amelie@example.net', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UxajayZDk4', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(9, 'Kian Moen', 'williamson.nayeli@example.org', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lcu0nGH2da', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(10, 'Ms. Meta Fahey', 'andreane.emard@example.org', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'co7BeFvzo9', '2023-05-24 23:47:44', '2023-05-24 23:47:44'),
(11, 'Test User', 'test@example.com', '2023-05-24 23:47:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V9hutVI3Ck', '2023-05-24 23:47:44', '2023-05-24 23:47:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_book_author_id_foreign` (`author_id`),
  ADD KEY `author_book_book_id_foreign` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 06:28 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `admin_id`, `worker_id`, `accepted`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, '2018-10-07 04:37:47', '2018-10-07 04:59:14'),
(3, 4, 2, 1, '2018-10-08 10:03:09', '2018-10-08 10:04:20'),
(5, 4, 1, 1, '2018-10-08 10:04:03', '2018-10-08 10:04:23'),
(8, 3, 1, 1, '2018-10-10 09:34:48', '2018-10-10 09:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_04_151710_create_tasks_table', 1),
(4, '2018_10_05_190510_create_invitations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `admin_id`, `status`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-10-05 13:34:21', '2018-10-05 13:34:21'),
(2, 1, NULL, 0, 'when an unknown printer took a galley of type and scrambled', '2018-10-05 13:34:46', '2018-10-05 13:34:46'),
(3, 1, NULL, 0, 'It is a long established fact that a reader will be distracted', '2018-10-05 13:35:06', '2018-10-10 07:53:46'),
(4, 1, NULL, 0, 'it look like readable English. Many desktop publishing packages', '2018-10-05 13:35:28', '2018-10-05 13:35:28'),
(5, 1, NULL, 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text.', '2018-10-05 13:35:43', '2018-10-05 13:35:43'),
(6, 2, NULL, 0, 'maining essentially unchanged. It was popularised in the 1960s with the release o', '2018-10-05 13:36:32', '2018-10-05 13:36:32'),
(7, 2, NULL, 0, '\'Content here, content here\', making', '2018-10-05 13:36:43', '2018-10-05 13:36:43'),
(8, 2, NULL, 0, 's still in their infancy. Various versions have evolved over the years, sometimes by accident', '2018-10-05 13:36:54', '2018-10-05 13:36:54'),
(9, 2, NULL, 0, 'ou are going to use a passage of Lorem Ipsum, you need to be sure there', '2018-10-05 13:37:51', '2018-10-05 13:37:51'),
(10, 2, NULL, 0, 'ackages and web page editors now use Lorem as their default model text', '2018-10-05 13:38:01', '2018-10-08 10:16:07'),
(11, 3, NULL, 0, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2018-10-05 13:39:18', '2018-10-05 13:39:18'),
(12, 3, NULL, 0, 'make a type specimen book. It has survived not only five centuries', '2018-10-05 13:39:54', '2018-10-05 13:39:54'),
(13, 3, NULL, 0, 'eed to be sure there isn\'t anything embarrassing hidden in the middle of', '2018-10-05 13:40:06', '2018-10-10 09:26:14'),
(14, 3, NULL, 0, 'The standard chunk of Lorem Ipsum used since the 1500s', '2018-10-05 13:40:18', '2018-10-10 09:27:34'),
(18, 4, NULL, 0, 'This is so cool', '2018-10-10 07:22:33', '2018-10-10 07:29:08'),
(19, 2, 4, 0, 'lorem ipsum is a cool text ever', '2018-10-10 07:27:47', '2018-10-10 07:46:03'),
(21, 1, NULL, 0, 'this is task', '2018-10-10 09:25:25', '2018-10-10 09:25:25'),
(22, 1, 3, 0, 'New task', '2018-10-10 09:27:21', '2018-10-10 09:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Shamsul Huda', 'shamsulhuda310@gmail.com', '$2y$10$YMJIpF0lnaoJdrLk0x5nFeTODWYvHtPRi.faZ4yJrfL.Vz5ciVI6.', 'wHJkcVQ6Osh24SWMBjcLKP8bN6Vp3oRbfhsvGgL3ptOF7v9Cjzqb3uUJpEwP', '2018-10-05 13:32:31', '2018-10-05 13:32:31', 0),
(2, 'roni', 'roni@yahoo.com', '$2y$10$dsk7go6sam/Ynhh9/BF.uehf9aQj0LhuBXdA4xHy2YJ1c6i8MsoeS', '1KELdjgSV87ID3H878x5dV0cAjJzFAAOKGt21YvTMNjKh3kzHrDBISilgqlI', '2018-10-05 13:36:13', '2018-10-05 13:36:13', 0),
(3, 'Anik', 'anik@gmail.com', '$2y$10$RFnEMyzMEJDIREK.qi4c5eUHZCtWu/3qqrir4Z5ZBnQJzQ5ln9eH6', 'tYR1ajbqgy6NBmjD3BHk2mTbdVf6h41rWspBuT0O4aL1cb5lIK3Vh2JbvdIB', '2018-10-05 13:38:27', '2018-10-05 13:38:27', 1),
(4, 'robi', 'robi@gmail.com', '$2y$10$7xDhDL0A0CsS..38N1rZIetdTkKXfY93QHpsq7UnnAPKnLjj1yfsm', 'LxzIBvJbQkS5BGYJudqF4uRM93I0n8vqG0tVnE8juZQ0xv4sJdzrF66L7qwH', '2018-10-08 09:34:53', '2018-10-08 09:34:53', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

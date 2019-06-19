-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 12:52 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cacttus_education`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_30_121557_entrust_setup_tables', 1),
('2019_06_14_170032_create_subject_table', 1),
('2019_06_14_171425_create_student_table', 1),
('2019_06_14_181430_create_student_subject_table', 1),
('2019_06_14_182245_create_years_table', 1),
('2019_06_14_182422_create_semesters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('student-2@student.com', '37107353368ebc72f4f6e4f677939f07d2a80080cf82c2dd35d38c9e209aebc6', '2019-06-15 23:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `route`, `created_at`, `updated_at`) VALUES
(1, 'manage_roles', 'Manage roles', '', 'roles', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(2, 'create_roles', 'Create roles', '', 'roles/create', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(3, 'update_roles', 'Update roles', '', 'roles/{roles}/edit', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(4, 'delete_roles', 'Delete roles', '', 'roles/{roles}', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(5, 'manage_users', 'Manager users', '', 'users', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(6, 'create_users', 'Create users', '', 'users/create', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(7, 'update_users', 'Update users', '', 'users/{users}/edit', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(8, 'delete_users', 'Delete users', '', 'users/{users}', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(9, 'manage_permissions', 'Manage permissions', '', 'permissions', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(10, 'create_permissions', 'Create permissions', '', 'permissions/create', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(11, 'update_permissions', 'Update permissions', '', 'permissions/{permissions}/edit', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(12, 'delete_permissions', 'Delete permissions', '', 'permissions/{permissions}', '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(13, 'manage_years', 'Manage years', '', 'years', '2019-06-15 22:32:58', '2019-06-15 22:39:39'),
(14, 'update_years', 'Update years', '', 'years/{years}/edit', '2019-06-15 22:34:27', '2019-06-15 22:40:53'),
(15, 'delete_years', 'Delete years', '', 'years/{years}', '2019-06-15 22:43:11', '2019-06-15 22:43:11'),
(16, 'manage_semester', 'Manage Semester', '', 'semesters', '2019-06-15 22:46:01', '2019-06-15 22:46:01'),
(17, 'create_semester', 'Create semester', '', 'semesters/create', '2019-06-15 22:46:55', '2019-06-15 22:46:55'),
(18, 'update_semester', 'Update semester', '', 'semesters/{semesters}/edit', '2019-06-15 22:48:15', '2019-06-15 22:48:15'),
(19, 'delete_semester', 'Delete semester', '', 'semesters/{semesters}', '2019-06-15 22:49:01', '2019-06-15 22:49:01'),
(20, 'manage_subject', 'Manage Subject', '', 'subjects', '2019-06-15 22:49:56', '2019-06-15 22:49:56'),
(21, 'create_subject', 'Create  subject', '', 'subjects/create', '2019-06-15 22:51:01', '2019-06-15 22:51:01'),
(22, 'update_subject', 'Update subject', '', 'subjects/{subjects}/edit', '2019-06-15 22:52:13', '2019-06-15 22:52:13'),
(23, 'delete_subject', 'Delete subject', '', 'subjects/{subjects}', '2019-06-15 22:53:06', '2019-06-15 22:53:06'),
(24, 'manage_student', 'Manage Student', '', 'students', '2019-06-15 22:54:07', '2019-06-15 22:54:07'),
(25, 'create_student', 'Create  student', '', 'students/create', '2019-06-15 22:54:58', '2019-06-15 22:54:58'),
(26, 'update_student', 'Update student', '', 'students/{students}/edit', '2019-06-15 22:56:14', '2019-06-15 22:56:14'),
(27, 'delete_students', 'More and delete students', '', 'students/{students}', '2019-06-15 22:57:29', '2019-06-15 22:57:29'),
(28, 'check_data', 'Check Data', '', 'checks/create', '2019-06-16 00:26:58', '2019-06-16 00:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(28, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', NULL, 1, '2019-06-14 12:24:46', '2019-06-14 12:24:46'),
(2, 'staff', 'Staff', '', 2, '2019-06-14 12:24:46', '2019-06-14 12:26:55'),
(3, 'student', 'Student', '', 3, '2019-06-14 12:24:46', '2019-06-14 12:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `semester`, `active`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Semester 1', '2019-06-15 17:56:20', '2019-06-19 20:38:36'),
(2, 2, 1, 'Semester 2', '2019-06-15 22:11:19', '2019-06-19 20:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identification_number` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `semester` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `password`, `identification_number`, `age`, `gender`, `birthday`, `active`, `desc`, `year`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'Albin', 'Ajeti', '1234', 324121234, 20, 'Male', '08 januar', 1, 'I am student', '2007', '1', '2019-06-15 20:13:53', '2019-06-15 22:09:22'),
(3, 'Tomor', 'Pupovci', '2345', 567891, 32, 'Male', '08 januar', 1, 'I am student', '2007', '1', '2019-06-15 21:57:00', '2019-06-19 10:20:59'),
(4, 'Tom', 'Jones', '3456', 123123, 18, '1', '2asfads', 1, 'asdasd', '2007', '1', '2019-06-19 10:24:04', '2019-06-19 10:24:04'),
(5, 'besar', 'zhubi', '4567', 111111111, 21, '1', '2asfads', 1, 'dasd', '2007', '1', '2019-06-19 11:01:40', '2019-06-19 11:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `note` int(10) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `student_id`, `subject_id`, `note`, `active`) VALUES
(17, 1, 1, 6, 1),
(18, 1, 3, 10, 1),
(19, 3, 1, 0, 1),
(20, 4, 1, 0, 1),
(21, 4, 2, 0, 1),
(22, 5, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `user_id`, `subject`, `active`, `desc`, `created_at`, `updated_at`) VALUES
(1, 2, 'Python', 1, 'Data Analytics and Visualisation', '2019-06-15 17:56:49', '2019-06-17 15:54:29'),
(2, 0, 'IOS', 1, 'Introduction to IOS', '2019-06-15 17:57:07', '2019-06-15 18:00:23'),
(3, 0, 'Android', 1, 'Introduction to android ', '2019-06-15 22:11:44', '2019-06-15 22:11:53'),
(4, 0, 'PHP', 1, 'Foundation\'s of PHP', '2019-06-15 22:12:12', '2019-06-15 22:12:12'),
(5, 2, 'Javascript', 1, 'Introduction to javascript', '2019-06-17 16:04:53', '2019-06-17 16:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'flamur@admin.com', '$2y$10$NZfe3g/r.WCYkkBuRaerb.YYdQJLOCQq8uE36gO4NL7Dx5ea1vMuS', 'OPjzmJzNSyA9gKWFmjHm2yHtWIruokEsQXYp9id1edHTTAFRZioeXtokgqNK', '2019-06-14 12:24:46', '2019-06-19 20:46:08'),
(2, 'valmir@faculty.com', '$2y$10$iHCtajubpMOP8sHrTEPuSuAHmPzbj72fJHA2trbYjd9b5LHF/6jpO', 'u2OnISPSiuGSWi58WHDa3GmW5BdhNRp2hIPMHCE61QxEBprNpOTPlpTgAzfA', '2019-06-14 12:24:46', '2019-06-19 20:36:19'),
(3, 'albin@student.com', '$2y$10$c2l3ckAnCUZLFWviO7fb6e7/2Oxaau0HMHjgwm/Rjf6JXGc3HZ9Ny', 'vcyadgIBeZKNHs2xbvNjB8u56x7eb2fmfvHk120bz8XOfsMyOGC8WI3pUGus', '2019-06-14 12:24:46', '2019-06-19 20:25:52'),
(4, 'student-2@student.com', '$2y$10$alEqnRAKby3LQMG6HwzHn.eiKiFH8/7LkQpEnl8gPRetx7PDufhni', 'gCjPIjy1CFuq6wb5Q2kxKwpDsMoK3BSDSuZcCjWgAz4ucascxC9e1KMlR8s6', '2019-06-15 23:34:47', '2019-06-19 16:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_flow` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `school_flow`, `active`, `desc`, `created_at`, `updated_at`) VALUES
(1, '2017', 0, 'Year one at Cacttus', '2019-06-15 17:55:44', '2019-06-19 20:37:54'),
(2, '2018', 1, 'Year two at Cacttus', '2019-06-15 17:55:44', '2019-06-15 17:55:44'),
(3, '2019', 1, 'Year three at Cacttus', '2019-06-15 17:55:44', '2019-06-19 20:37:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_identification_number_unique` (`identification_number`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_subject_student_id_foreign` (`student_id`),
  ADD KEY `student_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_subject_unique` (`subject`),
  ADD KEY `subjects_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_school_flow_unique` (`school_flow`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

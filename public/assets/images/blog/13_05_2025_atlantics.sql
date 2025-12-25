-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2025 at 07:36 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `13_05_2025_atlantics`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `aid` int NOT NULL,
  `activity_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `uid`, `aid`, `activity_name`, `created_at`, `updated_at`) VALUES
(1, 19244, 15, 'Rejected', '2025-08-13 04:22:02', '2025-08-13 04:22:02'),
(2, 19244, 16, 'Approved', '2025-08-26 01:56:33', '2025-08-26 01:56:33'),
(3, 19234, 17, 'Rejected', '2025-08-27 03:33:05', '2025-08-27 03:33:05'),
(4, 19250, 20, 'Rejected', '2025-08-27 03:33:48', '2025-08-27 03:33:48'),
(5, 19233, 19, 'Rejected', '2025-08-27 03:34:10', '2025-08-27 03:34:10'),
(6, 19252, 25, 'Approved', '2025-08-27 03:48:54', '2025-08-27 03:48:54'),
(7, 19252, 22, 'Rejected', '2025-08-27 23:21:54', '2025-08-27 23:21:54'),
(8, 19252, 25, 'Rejected', '2025-08-27 23:30:42', '2025-08-27 23:30:42'),
(9, 19252, 31, 'Rejected', '2025-08-28 23:31:37', '2025-08-28 23:31:37'),
(10, 19252, 34, 'Rejected', '2025-08-28 23:50:54', '2025-08-28 23:50:54'),
(11, 19252, 36, 'Rejected', '2025-08-29 00:26:12', '2025-08-29 00:26:12'),
(12, 19252, 35, 'Rejected', '2025-08-29 00:34:54', '2025-08-29 00:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

DROP TABLE IF EXISTS `ch_favorites`;
CREATE TABLE IF NOT EXISTS `ch_favorites` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

DROP TABLE IF EXISTS `ch_messages`;
CREATE TABLE IF NOT EXISTS `ch_messages` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_action_logs`
--

DROP TABLE IF EXISTS `cvb_action_logs`;
CREATE TABLE IF NOT EXISTS `cvb_action_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` text,
  `user_name` text,
  `action` text,
  `module_name` text,
  `notes` text,
  `ip` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_action_logs`
--

INSERT INTO `cvb_action_logs` (`id`, `user_id`, `user_name`, `action`, `module_name`, `notes`, `ip`, `created_at`, `updated_at`) VALUES
(1, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-21 23:10:53', '2025-07-22 04:40:53'),
(2, '1', '18267', 'Create', 'Industry', 'Record Create', '::1', '2025-07-21 23:12:34', '2025-07-22 04:42:34'),
(3, '1', '18267', 'Create', 'Contractor Company', 'Record Create', '::1', '2025-07-21 23:13:07', '2025-07-22 04:43:07'),
(4, '1', '18267', 'Create', 'Client Company', 'Record Create', '::1', '2025-07-21 23:13:56', '2025-07-22 04:43:56'),
(5, '19229', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-21 23:16:05', '2025-07-22 04:46:05'),
(6, '19229', '19229', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-21 23:16:12', '2025-07-22 04:46:12'),
(7, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-21 23:16:16', '2025-07-22 04:46:16'),
(8, '{\"id\":19229,\"cvb_id\":\"CVB-\",\"name\":\"Tayyab Ansari\",\"first_name\":\"Tayyab\",\"middle_name\":null,\"last_name\":\"Ansari\",\"email\":\"mhtayyabdev@gmail.com\",\"username\":null,\"mobile_no\":\"+1 1111111111\",\"work\":null,\"job_title\":\"Programmer\",\"profile_pic\":\"https:\\/\\/workforceuploads.s3.us-east-2.amazonaws.com\\/profile_pictures\\/1JVZPozyuMlt2jqYrh9gAgXTTkVhieM8Yf4b3hWw.jpg\",\"company_site\":null,\"verification_status\":\"1\",\"email_verified_at\":null,\"group_id\":null,\"role_id\":227,\"global_role_id\":\"[\\\"227\\\"]\",\"is_marked_global\":null,\"sub_role_id\":null,\"company_id\":null,\"country_code\":\"United States\",\"supplier_id\":\"1\",\"multiple_contractor_company\":null,\"multiple_site_location\":null,\"contract_id\":null,\"complete_profile_reminder\":null,\"send_email_later\":null,\"user_online\":0,\"employee_reference\":0,\"active_status\":null,\"avatar\":null,\"dark_mode\":null,\"messenger_color\":null,\"created_at\":\"2025-07-22T08:45:44.000000Z\",\"updated_at\":\"2025-07-22T08:46:43.000000Z\",\"third_party_agent_type\":null,\"third_party_agent_name\":null,\"status\":1,\"employee_avalabilty\":null,\"invite_colloborator\":null,\"evr_status\":\"noevr\",\"failed_attempts\":0,\"blocked_at\":null,\"User_Status\":null,\"User_Roles\":null,\"account_type\":null,\"fcm_token\":null}', '18267', 'Delete', 'DeleteUser', 'Record Delete', '::1', '2025-07-21 23:19:28', '2025-07-22 04:49:28'),
(9, '19231', '19231', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-21 23:30:36', '2025-07-22 05:00:36'),
(10, '1', '18267', 'Create', 'HighRisk Activities', 'Record Create', '::1', '2025-07-21 23:36:14', '2025-07-22 05:06:14'),
(11, '2', '18267', 'Create', 'HighRisk Activities', 'Record Create', '::1', '2025-07-21 23:36:36', '2025-07-22 05:06:36'),
(12, '3', '18267', 'Create', 'HighRisk Activities', 'Record Create', '::1', '2025-07-21 23:37:02', '2025-07-22 05:07:02'),
(13, '2', '18267', 'Update', 'HighRisk Activities', 'Record Update', '::1', '2025-07-21 23:37:27', '2025-07-22 05:07:27'),
(14, '3', '18267', 'Update', 'HighRisk Activities', 'Record Update', '::1', '2025-07-21 23:37:33', '2025-07-22 05:07:33'),
(15, '1', '18267', 'Create', 'Standard Qualification', 'Record Create', '::1', '2025-07-21 23:38:09', '2025-07-22 05:08:09'),
(16, '2', '18267', 'Create', 'Standard Qualification', 'Record Create', '::1', '2025-07-21 23:38:37', '2025-07-22 05:08:37'),
(17, '3', '18267', 'Create', 'Standard Qualification', 'Record Create', '::1', '2025-07-21 23:39:01', '2025-07-22 05:09:01'),
(18, '1', '18267', 'Create', 'Location', 'Record Create', '::1', '2025-07-21 23:39:21', '2025-07-22 05:09:21'),
(19, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-21 23:40:18', '2025-07-22 05:10:18'),
(20, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-21 23:40:33', '2025-07-22 05:10:33'),
(21, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-21 23:40:41', '2025-07-22 05:10:41'),
(22, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-22 00:02:17', '2025-07-22 05:32:17'),
(23, '19235', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-07-22 00:06:37', '2025-07-22 05:36:37'),
(24, '1', '19231', 'Create', 'Employee Contact', 'Record Create', '::1', '2025-07-22 00:12:23', '2025-07-22 05:42:23'),
(25, '1', '19231', 'Create', 'Employee Contact', 'Record Create', '::1', '2025-07-22 00:13:28', '2025-07-22 05:43:28'),
(26, '1', '19231', 'Create', 'Employee Address', 'Record Create', '::1', '2025-07-22 00:14:04', '2025-07-22 05:44:04'),
(27, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-22 00:17:58', '2025-07-22 05:47:58'),
(28, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-22 00:18:55', '2025-07-22 05:48:55'),
(29, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-22 20:45:05', '2025-07-23 02:15:05'),
(30, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-22 20:49:56', '2025-07-23 02:19:56'),
(31, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-23 19:45:11', '2025-07-24 01:15:11'),
(32, '19230', '19230', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-23 19:51:01', '2025-07-24 01:21:01'),
(33, '19230', '19230', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-23 19:52:06', '2025-07-24 01:22:06'),
(34, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-23 19:56:11', '2025-07-24 01:26:11'),
(35, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-24 01:02:56', '2025-07-24 06:32:56'),
(36, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-24 01:04:31', '2025-07-24 06:34:31'),
(37, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-24 01:09:04', '2025-07-24 06:39:04'),
(38, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-24 01:09:15', '2025-07-24 06:39:15'),
(39, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-24 01:09:19', '2025-07-24 06:39:19'),
(40, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-24 01:09:23', '2025-07-24 06:39:23'),
(41, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-24 01:09:50', '2025-07-24 06:39:50'),
(42, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-24 19:58:54', '2025-07-25 01:28:54'),
(43, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-24 20:27:55', '2025-07-25 01:57:55'),
(44, '19237', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-07-24 20:38:45', '2025-07-25 02:08:45'),
(45, '19237', '19237', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-25 00:08:08', '2025-07-25 05:38:08'),
(46, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-27 18:35:14', '2025-07-28 00:05:14'),
(47, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-27 18:37:20', '2025-07-28 00:07:20'),
(48, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-27 18:57:21', '2025-07-28 00:27:21'),
(49, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-27 19:00:32', '2025-07-28 00:30:32'),
(50, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-27 19:01:02', '2025-07-28 00:31:02'),
(51, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-27 19:01:04', '2025-07-28 00:31:04'),
(52, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-28 01:36:01', '2025-07-28 07:06:01'),
(53, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-28 20:20:20', '2025-07-29 01:50:20'),
(54, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-28 21:07:11', '2025-07-29 02:37:11'),
(55, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-07-28 21:38:17', '2025-07-29 03:08:17'),
(56, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-28 21:38:21', '2025-07-29 03:08:21'),
(57, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-29 01:42:12', '2025-07-29 07:12:12'),
(58, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-29 19:50:15', '2025-07-30 01:20:15'),
(59, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-29 22:30:11', '2025-07-30 04:00:11'),
(60, '19238', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-07-29 22:31:50', '2025-07-30 04:01:50'),
(61, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-30 00:47:05', '2025-07-30 06:17:05'),
(62, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-30 00:47:34', '2025-07-30 06:17:34'),
(63, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-30 21:12:37', '2025-07-31 02:42:37'),
(64, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-31 20:25:31', '2025-08-01 01:55:31'),
(65, '19234', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-31 20:28:36', '2025-08-01 01:58:36'),
(66, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-31 21:01:45', '2025-08-01 02:31:45'),
(67, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-07-31 21:04:59', '2025-08-01 02:34:59'),
(68, '19232', '18267', 'Create', 'Global User', 'Record Create', '::1', '2025-07-31 21:25:10', '2025-08-01 02:55:10'),
(69, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-07-31 21:25:37', '2025-08-01 02:55:37'),
(70, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-03 20:30:16', '2025-08-04 02:00:16'),
(71, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 00:38:19', '2025-08-05 06:08:19'),
(72, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-05 00:38:33', '2025-08-05 06:08:33'),
(73, '19239', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-08-05 00:40:37', '2025-08-05 06:10:37'),
(74, '19240', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-08-05 00:40:38', '2025-08-05 06:10:38'),
(75, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-05 00:58:16', '2025-08-05 06:28:16'),
(76, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 00:58:18', '2025-08-05 06:28:18'),
(77, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 19:04:01', '2025-08-06 00:34:01'),
(78, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 19:24:36', '2025-08-06 00:54:36'),
(79, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 19:27:21', '2025-08-06 00:57:21'),
(80, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-05 21:28:37', '2025-08-06 02:58:37'),
(81, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 21:29:20', '2025-08-06 02:59:20'),
(82, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-05 21:30:52', '2025-08-06 03:00:52'),
(83, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-06 01:11:10', '2025-08-06 06:41:10'),
(84, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-06 01:32:38', '2025-08-06 07:02:38'),
(85, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-06 01:32:42', '2025-08-06 07:02:42'),
(86, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-06 01:33:41', '2025-08-06 07:03:41'),
(87, '19232', '19232', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-06 01:56:35', '2025-08-06 07:26:35'),
(88, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-06 01:56:39', '2025-08-06 07:26:39'),
(89, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-06 21:28:21', '2025-08-07 02:58:21'),
(90, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-06 21:29:11', '2025-08-07 02:59:11'),
(91, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 01:30:15', '2025-08-07 07:00:15'),
(92, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 01:30:59', '2025-08-07 07:00:59'),
(93, '19232', '19232', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 01:46:09', '2025-08-07 07:16:09'),
(94, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 01:46:11', '2025-08-07 07:16:11'),
(95, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 01:46:23', '2025-08-07 07:16:23'),
(96, '19240', '19231', 'Update', 'Employee', 'Record Update', '::1', '2025-08-07 01:48:07', '2025-08-07 07:18:07'),
(97, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 01:49:52', '2025-08-07 07:19:52'),
(98, '19240', '19240', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 01:50:02', '2025-08-07 07:20:02'),
(99, '19240', '19240', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 01:50:15', '2025-08-07 07:20:15'),
(100, '19240', '19240', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 01:50:25', '2025-08-07 07:20:25'),
(101, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 01:56:27', '2025-08-07 07:26:27'),
(102, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 04:40:51', '2025-08-07 10:10:51'),
(103, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 04:41:42', '2025-08-07 10:11:42'),
(104, '19232', '19232', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 04:41:54', '2025-08-07 10:11:54'),
(105, '19240', '19240', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 04:42:30', '2025-08-07 10:12:30'),
(106, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 04:45:53', '2025-08-07 10:15:53'),
(107, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 06:35:38', '2025-08-07 12:05:38'),
(108, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 06:35:49', '2025-08-07 12:05:49'),
(109, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 06:36:06', '2025-08-07 12:06:06'),
(110, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 06:50:25', '2025-08-07 12:20:25'),
(111, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 06:50:42', '2025-08-07 12:20:42'),
(112, '19241', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-08-07 06:53:54', '2025-08-07 12:23:54'),
(113, '19241', '19241', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 06:58:12', '2025-08-07 12:28:12'),
(114, '19241', '19241', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 07:55:36', '2025-08-07 13:25:36'),
(115, '19242', '19242', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 07:55:42', '2025-08-07 13:25:42'),
(116, '19242', '19242', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 07:56:41', '2025-08-07 13:26:41'),
(117, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 10:02:02', '2025-08-07 15:32:02'),
(118, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-07 10:02:17', '2025-08-07 15:32:17'),
(119, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 10:06:33', '2025-08-07 15:36:33'),
(120, '19243', '19243', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 10:06:39', '2025-08-07 15:36:39'),
(121, '19243', '19243', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 10:08:11', '2025-08-07 15:38:11'),
(122, '19243', '19243', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 10:08:59', '2025-08-07 15:38:59'),
(123, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 11:35:12', '2025-08-07 17:05:12'),
(124, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 12:00:36', '2025-08-07 17:30:36'),
(125, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-07 12:00:46', '2025-08-07 17:30:46'),
(126, '19243', '19243', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 12:00:57', '2025-08-07 17:30:57'),
(127, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-07 22:02:23', '2025-08-08 03:32:23'),
(128, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-11 01:50:55', '2025-08-11 07:20:55'),
(129, '19234', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-11 01:51:08', '2025-08-11 07:21:08'),
(130, '18267', '19234', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-11 02:14:52', '2025-08-11 07:44:52'),
(131, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-11 02:15:11', '2025-08-11 07:45:11'),
(132, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-11 02:29:50', '2025-08-11 07:59:50'),
(133, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-11 02:30:28', '2025-08-11 08:00:28'),
(134, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 00:37:21', '2025-08-13 06:07:21'),
(135, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-13 00:37:31', '2025-08-13 06:07:31'),
(136, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 00:59:38', '2025-08-13 06:29:38'),
(137, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-13 00:59:52', '2025-08-13 06:29:52'),
(138, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 00:59:56', '2025-08-13 06:29:56'),
(139, '19244', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-13 01:08:45', '2025-08-13 06:38:45'),
(140, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 04:16:21', '2025-08-13 09:46:21'),
(141, '19244', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-13 04:17:57', '2025-08-13 09:47:57'),
(142, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 04:19:35', '2025-08-13 09:49:35'),
(143, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-13 04:19:59', '2025-08-13 09:49:59'),
(144, '15', '19231', 'Delete', 'Employee Certificates', 'Record Delete', '::1', '2025-08-13 04:26:41', '2025-08-13 09:56:41'),
(145, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 07:17:06', '2025-08-13 12:47:06'),
(146, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-13 07:18:05', '2025-08-13 12:48:05'),
(147, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-13 21:29:07', '2025-08-14 02:59:07'),
(148, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-14 06:27:46', '2025-08-14 11:57:46'),
(149, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-14 06:29:10', '2025-08-14 11:59:10'),
(150, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-18 21:15:17', '2025-08-19 02:45:17'),
(151, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-18 21:18:14', '2025-08-19 02:48:14'),
(152, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-19 01:08:36', '2025-08-19 06:38:36'),
(153, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-19 01:08:56', '2025-08-19 06:38:56'),
(154, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-19 20:10:36', '2025-08-20 01:40:36'),
(155, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-19 20:11:02', '2025-08-20 01:41:02'),
(156, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-19 23:44:27', '2025-08-20 05:14:27'),
(157, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-19 23:44:47', '2025-08-20 05:14:47'),
(158, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-20 00:02:34', '2025-08-20 05:32:34'),
(159, '19248', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-20 00:10:34', '2025-08-20 05:40:34'),
(160, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-20 00:48:05', '2025-08-20 06:18:05'),
(161, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-20 00:48:36', '2025-08-20 06:18:36'),
(162, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-20 19:46:01', '2025-08-21 01:16:01'),
(163, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-20 19:46:34', '2025-08-21 01:16:34'),
(164, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-20 20:22:11', '2025-08-21 01:52:11'),
(165, '19248', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-20 20:22:32', '2025-08-21 01:52:32'),
(166, '19247', '19248', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-20 20:22:59', '2025-08-21 01:52:59'),
(167, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-21 23:58:38', '2025-08-22 05:28:38'),
(168, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-21 23:59:57', '2025-08-22 05:29:57'),
(169, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-22 07:34:56', '2025-08-22 13:04:56'),
(170, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:13:18', '2025-08-25 01:43:18'),
(171, '19246', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 20:13:33', '2025-08-25 01:43:33'),
(172, '19246', '19246', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-24 20:16:42', '2025-08-25 01:46:42'),
(173, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:16:45', '2025-08-25 01:46:45'),
(174, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 20:17:44', '2025-08-25 01:47:44'),
(175, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:49:00', '2025-08-25 02:19:00'),
(176, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 20:49:23', '2025-08-25 02:19:23'),
(177, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-24 20:52:06', '2025-08-25 02:22:06'),
(178, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:52:09', '2025-08-25 02:22:09'),
(179, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 20:52:29', '2025-08-25 02:22:29'),
(180, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:53:46', '2025-08-25 02:23:46'),
(181, '19247', '19247', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-24 20:53:53', '2025-08-25 02:23:53'),
(182, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 20:53:59', '2025-08-25 02:23:59'),
(183, '19234', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 20:54:31', '2025-08-25 02:24:31'),
(184, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-24 21:30:36', '2025-08-25 03:00:36'),
(185, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-24 21:30:39', '2025-08-25 03:00:39'),
(186, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 21:30:53', '2025-08-25 03:00:53'),
(187, '19246', '19231', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 21:31:06', '2025-08-25 03:01:06'),
(188, '19247', '19246', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-24 21:31:17', '2025-08-25 03:01:17'),
(189, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-25 01:07:45', '2025-08-25 06:37:45'),
(190, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-25 01:07:56', '2025-08-25 06:37:56'),
(191, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-25 02:49:09', '2025-08-25 08:19:09'),
(192, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-25 21:34:49', '2025-08-26 03:04:49'),
(193, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-25 21:35:10', '2025-08-26 03:05:10'),
(194, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-25 21:56:07', '2025-08-26 03:26:07'),
(195, '19244', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-25 21:56:30', '2025-08-26 03:26:30'),
(196, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-25 21:56:46', '2025-08-26 03:26:46'),
(197, '19234', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-25 21:57:11', '2025-08-26 03:27:11'),
(198, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-26 01:55:26', '2025-08-26 07:25:26'),
(199, '19244', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 01:55:47', '2025-08-26 07:25:47'),
(200, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-26 02:10:08', '2025-08-26 07:40:08'),
(201, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 02:10:23', '2025-08-26 07:40:23'),
(202, '18267', '19244', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 02:29:59', '2025-08-26 07:59:59'),
(203, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 02:30:15', '2025-08-26 08:00:15'),
(204, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-26 20:55:40', '2025-08-27 02:25:40'),
(205, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 20:56:08', '2025-08-27 02:26:08'),
(206, '19247', '19247', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-26 21:14:59', '2025-08-27 02:44:59'),
(207, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-26 21:15:01', '2025-08-27 02:45:01'),
(208, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 21:15:10', '2025-08-27 02:45:10'),
(209, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-26 21:15:47', '2025-08-27 02:45:47'),
(210, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-26 21:16:07', '2025-08-27 02:46:07'),
(211, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 03:22:11', '2025-08-27 08:52:11'),
(212, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:28:01', '2025-08-27 08:58:01'),
(213, '19247', '19231', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:28:14', '2025-08-27 08:58:14'),
(214, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 03:30:44', '2025-08-27 09:00:44'),
(215, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 03:30:47', '2025-08-27 09:00:47'),
(216, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 03:30:51', '2025-08-27 09:00:51'),
(217, '19250', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:31:27', '2025-08-27 09:01:27'),
(218, '19233', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:31:53', '2025-08-27 09:01:53'),
(219, '19234', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:32:08', '2025-08-27 09:02:08'),
(220, '19246', '19247', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:45:13', '2025-08-27 09:15:13'),
(221, '18267', '19250', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:47:27', '2025-08-27 09:17:27'),
(222, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:47:45', '2025-08-27 09:17:45'),
(223, '18267', '19233', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:47:50', '2025-08-27 09:17:50'),
(224, '19251', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 03:47:58', '2025-08-27 09:17:58'),
(225, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 20:40:21', '2025-08-28 02:10:21'),
(226, '19246', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 21:32:20', '2025-08-28 03:02:20'),
(227, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 23:20:26', '2025-08-28 04:50:26'),
(228, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 23:21:08', '2025-08-28 04:51:08'),
(229, '19246', '19246', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-08-27 23:30:09', '2025-08-28 05:00:09'),
(230, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-27 23:30:12', '2025-08-28 05:00:12'),
(231, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-27 23:30:31', '2025-08-28 05:00:31'),
(232, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-28 01:19:15', '2025-08-28 06:49:15'),
(233, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-28 01:19:31', '2025-08-28 06:49:31'),
(234, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-28 19:55:50', '2025-08-29 01:25:50'),
(235, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-28 20:29:44', '2025-08-29 01:59:44'),
(236, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-28 23:30:23', '2025-08-29 05:00:23'),
(237, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-28 23:30:27', '2025-08-29 05:00:27'),
(238, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-28 23:30:58', '2025-08-29 05:00:58'),
(239, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-28 23:31:05', '2025-08-29 05:01:05'),
(240, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-08-29 03:21:12', '2025-08-29 08:51:12'),
(241, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-08-29 03:21:34', '2025-08-29 08:51:34'),
(242, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-09-04 21:26:54', '2025-09-05 02:56:54'),
(243, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-09-04 21:58:36', '2025-09-05 03:28:36'),
(244, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-09-04 21:59:32', '2025-09-05 03:29:32'),
(245, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-09-04 22:00:55', '2025-09-05 03:30:55'),
(246, '19253', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-09-04 22:02:32', '2025-09-05 03:32:32'),
(247, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-09-04 22:02:52', '2025-09-05 03:32:52'),
(248, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-09-04 22:04:16', '2025-09-05 03:34:16'),
(249, '19231', '19231', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-09-04 22:07:50', '2025-09-05 03:37:50'),
(250, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-05 21:19:27', '2025-10-06 02:49:27'),
(251, '{\"id\":700812345,\"cvb_id\":\"CVB-102793\",\"name\":\"Jaggernauth Felicia\",\"first_name\":\"Felicia\",\"middle_name\":null,\"last_name\":\"Jaggernauth\",\"email\":\"felicia_jaggernauth@hotmail.com\",\"username\":null,\"mobile_no\":\"7999514\",\"work\":\"Coordinator - Operations\",\"job_title\":\"Coordinator - Operations\",\"profile_pic\":\"https:\\/\\/s3.amazonaws.com\\/assets.knackhq.com\\/assets\\/5f2b34bc92eb840018a929d1\\/66e3040ae548cb0288e4f285\\/original\\/fj.png\",\"company_site\":null,\"verification_status\":\"2\",\"email_verified_at\":null,\"group_id\":null,\"role_id\":227,\"global_role_id\":null,\"is_marked_global\":null,\"sub_role_id\":null,\"company_id\":\"2\",\"country_code\":\"Trinidadian\",\"supplier_id\":\"229\",\"multiple_contractor_company\":null,\"multiple_site_location\":null,\"contract_id\":null,\"complete_profile_reminder\":null,\"send_email_later\":null,\"user_online\":1,\"employee_reference\":0,\"active_status\":null,\"avatar\":null,\"dark_mode\":null,\"messenger_color\":null,\"created_at\":\"2024-09-12T15:09:00.000000Z\",\"updated_at\":\"2025-04-30T19:58:23.000000Z\",\"third_party_agent_type\":null,\"third_party_agent_name\":null,\"status\":1,\"employee_avalabilty\":null,\"invite_colloborator\":null,\"evr_status\":\"noevr\",\"failed_attempts\":0,\"blocked_at\":null,\"User_Status\":\"active\",\"User_Roles\":\"Employee\",\"account_type\":\"employee\",\"fcm_token\":null}', '18267', 'Delete', 'DeleteUser', 'Record Delete', '::1', '2025-10-05 21:19:46', '2025-10-06 02:49:46'),
(252, '19248', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-05 21:19:52', '2025-10-06 02:49:52'),
(253, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-05 21:20:02', '2025-10-06 02:50:02'),
(254, '19244', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-05 21:20:32', '2025-10-06 02:50:32'),
(255, '18267', '19244', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-05 21:30:07', '2025-10-06 03:00:07'),
(256, '1', NULL, 'Update', 'CLient Company', 'Record Update', '::1', '2025-10-05 21:31:39', '2025-10-06 03:01:39'),
(257, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-05 21:34:01', '2025-10-06 03:04:01'),
(258, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-05 21:37:21', '2025-10-06 03:07:21'),
(259, '19248', '19248', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-10-05 21:38:50', '2025-10-06 03:08:50'),
(260, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-05 21:38:57', '2025-10-06 03:08:57'),
(261, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-05 21:39:14', '2025-10-06 03:09:14'),
(262, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 21:19:06', '2025-10-16 02:49:06'),
(263, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 23:48:40', '2025-10-16 05:18:40'),
(264, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 23:52:25', '2025-10-16 05:22:25'),
(265, '19235', '19235', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-10-15 23:53:15', '2025-10-16 05:23:15'),
(266, '19237', '19237', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 23:53:23', '2025-10-16 05:23:23'),
(267, '19237', '19237', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-10-15 23:54:10', '2025-10-16 05:24:10'),
(268, '19231', '19231', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 23:54:53', '2025-10-16 05:24:53'),
(269, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-10-15 23:55:22', '2025-10-16 05:25:22'),
(270, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-15 23:56:50', '2025-10-16 05:26:50'),
(271, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-15 23:58:31', '2025-10-16 05:28:31'),
(272, '3', NULL, 'Update', 'CLient Company', 'Record Update', '::1', '2025-10-16 00:13:21', '2025-10-16 05:43:21'),
(273, '19231', '19231', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-16 00:30:22', '2025-10-16 06:00:22'),
(274, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-10-16 00:31:39', '2025-10-16 06:01:39'),
(275, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-16 00:31:43', '2025-10-16 06:01:43'),
(276, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-21 21:10:06', '2025-10-22 02:40:06'),
(277, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-21 21:10:20', '2025-10-22 02:40:20'),
(278, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-21 21:18:39', '2025-10-22 02:48:39'),
(279, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-21 22:31:57', '2025-10-22 04:01:57'),
(280, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-21 22:56:10', '2025-10-22 04:26:10'),
(281, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-22 21:27:00', '2025-10-23 02:57:00'),
(282, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-22 22:47:15', '2025-10-23 04:17:15'),
(283, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-23 01:19:18', '2025-10-23 06:49:18'),
(284, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-23 01:19:34', '2025-10-23 06:49:34'),
(285, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-23 01:40:21', '2025-10-23 07:10:21'),
(286, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-26 21:39:28', '2025-10-27 03:09:28'),
(287, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-26 22:05:53', '2025-10-27 03:35:53'),
(288, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-27 01:53:58', '2025-10-27 07:23:58'),
(289, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-27 01:53:58', '2025-10-27 07:23:58'),
(290, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-27 20:41:48', '2025-10-28 02:11:48'),
(291, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-27 20:42:50', '2025-10-28 02:12:50'),
(292, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-27 20:47:33', '2025-10-28 02:17:33'),
(293, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-27 23:03:40', '2025-10-28 04:33:40'),
(294, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 05:04:24', '2025-10-28 10:34:24'),
(295, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 19:29:43', '2025-10-29 00:59:43'),
(296, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 21:02:50', '2025-10-29 02:32:50'),
(297, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 21:03:25', '2025-10-29 02:33:25'),
(298, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 22:24:40', '2025-10-29 03:54:40'),
(299, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-28 22:25:18', '2025-10-29 03:55:18'),
(300, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-29 01:08:49', '2025-10-29 06:38:49'),
(301, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-29 21:51:42', '2025-10-30 03:21:42'),
(302, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-29 21:52:40', '2025-10-30 03:22:40'),
(303, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-29 21:52:57', '2025-10-30 03:22:57'),
(304, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-29 21:53:20', '2025-10-30 03:23:20'),
(305, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-29 22:03:51', '2025-10-30 03:33:51'),
(306, '19230', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-29 22:04:04', '2025-10-30 03:34:04'),
(307, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-29 22:04:50', '2025-10-30 03:34:50'),
(308, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-30 00:02:32', '2025-10-30 05:32:32'),
(309, '1', '18267', 'Create', 'Groups', 'Record Create', '::1', '2025-10-30 00:03:36', '2025-10-30 05:33:36'),
(310, '2', '18267', 'Create', 'Groups', 'Record Create', '::1', '2025-10-30 00:03:59', '2025-10-30 05:33:59'),
(311, '3', '18267', 'Create', 'Groups', 'Record Create', '::1', '2025-10-30 00:04:21', '2025-10-30 05:34:21'),
(312, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-30 00:04:32', '2025-10-30 05:34:32'),
(313, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-30 00:06:59', '2025-10-30 05:36:59'),
(314, '3', '18267', 'Update', 'Standard Qualification', 'Record Update', '::1', '2025-10-30 00:07:22', '2025-10-30 05:37:22'),
(315, '2', '18267', 'Update', 'Standard Qualification', 'Record Update', '::1', '2025-10-30 00:07:32', '2025-10-30 05:37:32'),
(316, '1', '18267', 'Update', 'Standard Qualification', 'Record Update', '::1', '2025-10-30 00:07:42', '2025-10-30 05:37:42'),
(317, '3', '18267', 'Update', 'HighRisk Activities', 'Record Update', '::1', '2025-10-30 00:07:56', '2025-10-30 05:37:56'),
(318, '2', '18267', 'Update', 'HighRisk Activities', 'Record Update', '::1', '2025-10-30 00:08:06', '2025-10-30 05:38:06'),
(319, '1', '18267', 'Update', 'HighRisk Activities', 'Record Update', '::1', '2025-10-30 00:08:27', '2025-10-30 05:38:27'),
(320, '2', '18267', 'Create', 'Location', 'Record Create', '::1', '2025-10-30 00:11:01', '2025-10-30 05:41:01'),
(321, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-30 00:11:42', '2025-10-30 05:41:42'),
(322, '19230', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-30 00:11:52', '2025-10-30 05:41:52'),
(323, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-10-31 08:25:56', '2025-10-31 13:55:56'),
(324, '19230', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-10-31 08:46:49', '2025-10-31 14:16:49'),
(325, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-02 19:46:56', '2025-11-03 01:16:56'),
(326, '19248', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-02 21:12:55', '2025-11-03 02:42:55'),
(327, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-02 21:14:20', '2025-11-03 02:44:20'),
(328, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-02 21:14:25', '2025-11-03 02:44:25'),
(329, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-02 21:14:30', '2025-11-03 02:44:30'),
(330, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-04 04:38:46', '2025-11-04 10:08:46'),
(331, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-05 03:29:58', '2025-11-05 08:59:58'),
(332, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 18:18:39', '2025-11-09 23:48:39'),
(333, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 19:27:39', '2025-11-10 00:57:39'),
(334, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-09 19:30:01', '2025-11-10 01:00:01'),
(335, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-09 19:31:43', '2025-11-10 01:01:43'),
(336, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 19:31:47', '2025-11-10 01:01:47'),
(337, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 19:32:37', '2025-11-10 01:02:37'),
(338, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-09 20:23:29', '2025-11-10 01:53:29'),
(339, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-09 20:24:22', '2025-11-10 01:54:22'),
(340, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 20:24:29', '2025-11-10 01:54:29'),
(341, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-09 20:24:37', '2025-11-10 01:54:37'),
(342, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 20:24:51', '2025-11-10 01:54:51'),
(343, '19249', '19249', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-09 20:26:15', '2025-11-10 01:56:15'),
(344, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 20:26:20', '2025-11-10 01:56:20'),
(345, '19249', '19249', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-09 20:27:10', '2025-11-10 01:57:10'),
(346, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 20:27:16', '2025-11-10 01:57:16'),
(347, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-09 21:50:16', '2025-11-10 03:20:16'),
(348, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-10 00:19:32', '2025-11-10 05:49:32'),
(349, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-10 00:20:38', '2025-11-10 05:50:38'),
(350, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-10 01:42:46', '2025-11-10 07:12:46'),
(351, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-11 01:12:25', '2025-11-11 06:42:25'),
(352, '7', '18267', 'Create', 'Employee Contact', 'Record Create', '::1', '2025-11-11 01:41:02', '2025-11-11 07:11:02'),
(353, '7', '18267', 'Update', 'Employee Contact', 'Record Update', '::1', '2025-11-11 01:41:19', '2025-11-11 07:11:19'),
(354, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-11 05:01:02', '2025-11-11 10:31:02'),
(355, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 05:48:51', '2025-11-12 11:18:51'),
(356, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 05:48:51', '2025-11-12 11:18:51'),
(357, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-12 05:49:21', '2025-11-12 11:19:21'),
(358, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-12 05:50:07', '2025-11-12 11:20:07'),
(359, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 05:50:10', '2025-11-12 11:20:10'),
(360, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-12 05:50:40', '2025-11-12 11:20:40'),
(361, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 06:54:06', '2025-11-12 12:24:06'),
(362, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 06:55:50', '2025-11-12 12:25:50'),
(363, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 20:52:06', '2025-11-13 02:22:06'),
(364, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 20:58:18', '2025-11-13 02:28:18'),
(365, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-12 21:11:42', '2025-11-13 02:41:42'),
(366, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 21:57:57', '2025-11-13 03:27:57'),
(367, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-12 22:09:23', '2025-11-13 03:39:23'),
(368, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 00:22:55', '2025-11-13 05:52:55'),
(369, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 00:23:04', '2025-11-13 05:53:04'),
(370, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 00:29:39', '2025-11-13 05:59:39'),
(371, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-13 00:29:51', '2025-11-13 05:59:51'),
(372, '700812347', '700812347', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 06:14:08', '2025-11-13 11:44:08'),
(373, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 19:48:55', '2025-11-14 01:18:55'),
(374, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-13 19:49:04', '2025-11-14 01:19:04'),
(375, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 19:49:10', '2025-11-14 01:19:10'),
(376, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 19:51:29', '2025-11-14 01:21:29'),
(377, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 20:14:54', '2025-11-14 01:44:54'),
(378, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-13 20:17:13', '2025-11-14 01:47:13'),
(379, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 22:05:48', '2025-11-14 03:35:48'),
(380, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 22:09:28', '2025-11-14 03:39:28');
INSERT INTO `cvb_action_logs` (`id`, `user_id`, `user_name`, `action`, `module_name`, `notes`, `ip`, `created_at`, `updated_at`) VALUES
(381, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-13 22:09:45', '2025-11-14 03:39:45'),
(382, '700812348', '19231', 'Create', 'Employee', 'Record Create', '::1', '2025-11-13 23:13:16', '2025-11-14 04:43:16'),
(383, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 23:14:41', '2025-11-14 04:44:41'),
(384, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-13 23:14:50', '2025-11-14 04:44:50'),
(385, '700812348', '700812348', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-13 23:15:05', '2025-11-14 04:45:05'),
(386, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 03:14:05', '2025-11-14 08:44:05'),
(387, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 03:16:22', '2025-11-14 08:46:22'),
(388, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-14 03:16:31', '2025-11-14 08:46:31'),
(389, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 03:16:34', '2025-11-14 08:46:34'),
(390, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-14 03:16:59', '2025-11-14 08:46:59'),
(391, '700812348', '700812348', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 03:19:22', '2025-11-14 08:49:22'),
(392, '700812348', '700812348', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-14 03:19:38', '2025-11-14 08:49:38'),
(393, '700812348', '700812348', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 03:19:44', '2025-11-14 08:49:44'),
(394, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 04:24:55', '2025-11-14 09:54:55'),
(395, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-14 04:25:05', '2025-11-14 09:55:05'),
(396, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 04:25:11', '2025-11-14 09:55:11'),
(397, '19253', '19253', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-14 04:25:17', '2025-11-14 09:55:17'),
(398, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 04:25:59', '2025-11-14 09:55:59'),
(399, '19249', '19249', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-14 04:26:21', '2025-11-14 09:56:21'),
(400, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-14 04:26:32', '2025-11-14 09:56:32'),
(401, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-16 20:18:47', '2025-11-17 01:48:47'),
(402, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-16 21:27:43', '2025-11-17 02:57:43'),
(403, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-16 21:29:44', '2025-11-17 02:59:44'),
(404, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-16 22:54:31', '2025-11-17 04:24:31'),
(405, '700812347', '700812347', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-17 00:58:13', '2025-11-17 06:28:13'),
(406, '700812347', '700812347', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-17 01:36:30', '2025-11-17 07:06:30'),
(407, '700812347', '700812347', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-17 01:39:08', '2025-11-17 07:09:08'),
(408, '700812347', '700812347', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-17 01:43:05', '2025-11-17 07:13:05'),
(409, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-18 21:32:03', '2025-11-19 03:02:03'),
(410, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-18 21:32:27', '2025-11-19 03:02:27'),
(411, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-18 21:42:58', '2025-11-19 03:12:58'),
(412, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-18 21:59:55', '2025-11-19 03:29:55'),
(413, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-19 05:38:17', '2025-11-19 11:08:17'),
(414, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-19 05:39:31', '2025-11-19 11:09:31'),
(415, '700812348', '19231', 'Update', 'Employee', 'Record Update', '::1', '2025-11-19 05:40:04', '2025-11-19 11:10:04'),
(416, '700812348', '19231', 'Update', 'Employee', 'Record Update', '::1', '2025-11-19 05:40:55', '2025-11-19 11:10:55'),
(417, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-24 03:10:56', '2025-11-24 08:40:56'),
(418, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-24 03:11:16', '2025-11-24 08:41:16'),
(419, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-26 19:53:36', '2025-11-27 01:23:36'),
(420, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-26 19:53:51', '2025-11-27 01:23:51'),
(421, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-26 19:59:49', '2025-11-27 01:29:49'),
(422, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-26 23:56:41', '2025-11-27 05:26:41'),
(423, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-26 23:56:59', '2025-11-27 05:26:59'),
(424, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-27 02:05:32', '2025-11-27 07:35:32'),
(425, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-27 02:05:46', '2025-11-27 07:35:46'),
(426, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-27 19:20:43', '2025-11-28 00:50:43'),
(427, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-27 19:40:12', '2025-11-28 01:10:12'),
(428, '19231', '19231', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-11-27 19:49:53', '2025-11-28 01:19:53'),
(429, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-27 19:49:56', '2025-11-28 01:19:56'),
(430, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-27 21:10:19', '2025-11-28 02:40:19'),
(431, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-27 23:45:27', '2025-11-28 05:15:27'),
(432, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-11-28 04:41:48', '2025-11-28 10:11:48'),
(433, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-11-28 04:42:08', '2025-11-28 10:12:08'),
(434, '8', '19231', 'Create', 'Employee Contact', 'Record Create', '::1', '2025-11-28 05:21:58', '2025-11-28 10:51:58'),
(435, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-03 06:42:13', '2025-12-03 12:12:13'),
(436, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-04 00:36:42', '2025-12-04 06:06:42'),
(437, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-10 04:06:24', '2025-12-10 09:36:24'),
(438, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-10 04:06:24', '2025-12-10 09:36:24'),
(439, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-10 20:32:22', '2025-12-11 02:02:22'),
(440, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 00:37:18', '2025-12-11 06:07:18'),
(441, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 00:37:18', '2025-12-11 06:07:18'),
(442, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 01:45:30', '2025-12-11 07:15:30'),
(443, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 02:13:12', '2025-12-11 07:43:12'),
(444, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 03:46:39', '2025-12-11 09:16:39'),
(445, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 05:10:07', '2025-12-11 10:40:07'),
(446, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-11 05:11:03', '2025-12-11 10:41:03'),
(447, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 05:14:35', '2025-12-11 10:44:35'),
(448, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 05:41:25', '2025-12-11 11:11:25'),
(449, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 19:35:35', '2025-12-12 01:05:35'),
(450, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-11 19:36:06', '2025-12-12 01:06:06'),
(451, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 20:32:48', '2025-12-12 02:02:48'),
(452, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 22:09:30', '2025-12-12 03:39:30'),
(453, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 22:16:02', '2025-12-12 03:46:02'),
(454, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-11 22:16:18', '2025-12-12 03:46:18'),
(455, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 22:16:45', '2025-12-12 03:46:45'),
(456, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-11 22:17:23', '2025-12-12 03:47:23'),
(457, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-12 02:30:46', '2025-12-12 08:00:46'),
(458, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-12 02:33:01', '2025-12-12 08:03:01'),
(459, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-12 02:35:28', '2025-12-12 08:05:28'),
(460, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-12 02:35:50', '2025-12-12 08:05:50'),
(461, '700812349', '19247', 'Create', 'Employee', 'Record Create', '::1', '2025-12-12 02:42:12', '2025-12-12 08:12:12'),
(462, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-12 02:42:24', '2025-12-12 08:12:24'),
(463, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-12 02:56:52', '2025-12-12 08:26:52'),
(464, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-15 21:53:23', '2025-12-16 03:23:23'),
(465, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 02:11:26', '2025-12-16 07:41:26'),
(466, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-16 02:11:32', '2025-12-16 07:41:32'),
(467, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 02:34:10', '2025-12-16 08:04:10'),
(468, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-16 02:36:42', '2025-12-16 08:06:42'),
(469, '19249', '19249', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 02:37:01', '2025-12-16 08:07:01'),
(470, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 02:37:23', '2025-12-16 08:07:23'),
(471, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 20:46:01', '2025-12-17 02:16:01'),
(472, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-16 20:47:13', '2025-12-17 02:17:13'),
(473, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-16 23:37:10', '2025-12-17 05:07:10'),
(474, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 00:30:59', '2025-12-17 06:00:59'),
(475, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-17 00:34:13', '2025-12-17 06:04:13'),
(476, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 00:47:11', '2025-12-17 06:17:11'),
(477, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-17 00:47:37', '2025-12-17 06:17:37'),
(478, '19235', '19235', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 00:48:23', '2025-12-17 06:18:23'),
(479, '700812349', '700812349', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 01:49:41', '2025-12-17 07:19:41'),
(480, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 06:17:52', '2025-12-17 11:47:52'),
(481, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-17 06:19:07', '2025-12-17 11:49:07'),
(482, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 06:21:28', '2025-12-17 11:51:28'),
(483, '19247', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-17 06:22:14', '2025-12-17 11:52:14'),
(484, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 07:07:27', '2025-12-17 12:37:27'),
(485, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-17 07:07:37', '2025-12-17 12:37:37'),
(486, '700812349', '700812349', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 07:07:53', '2025-12-17 12:37:53'),
(487, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 21:07:32', '2025-12-18 02:37:32'),
(488, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-17 23:19:22', '2025-12-18 04:49:22'),
(489, '19231', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-17 23:19:52', '2025-12-18 04:49:52'),
(490, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 02:40:57', '2025-12-18 08:10:57'),
(491, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 02:58:14', '2025-12-18 08:28:14'),
(492, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-18 02:59:38', '2025-12-18 08:29:38'),
(493, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 02:59:47', '2025-12-18 08:29:47'),
(494, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 04:08:37', '2025-12-18 09:38:37'),
(495, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-18 05:28:14', '2025-12-18 10:58:14'),
(496, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 05:28:17', '2025-12-18 10:58:17'),
(497, '18267', '18267', 'Logged Out', 'user.logout', 'Record Logged Out', '::1', '2025-12-18 05:28:23', '2025-12-18 10:58:23'),
(498, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-18 20:22:09', '2025-12-19 01:52:09'),
(499, '19232', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-18 20:58:08', '2025-12-19 02:28:08'),
(500, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-23 03:06:28', '2025-12-23 08:36:28'),
(501, '19252', '18267', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-23 03:07:14', '2025-12-23 08:37:14'),
(502, '18267', '19252', 'Switch Role', 'Switch Role', 'Record Switch Role', '::1', '2025-12-23 03:33:31', '2025-12-23 09:03:31'),
(503, '18267', '18267', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-23 21:33:11', '2025-12-24 03:03:11'),
(504, '19253', '19253', 'Logged In', 'user.login', 'Record Logged In', '::1', '2025-12-23 21:33:25', '2025-12-24 03:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_assigned_courses`
--

DROP TABLE IF EXISTS `cvb_assigned_courses`;
CREATE TABLE IF NOT EXISTS `cvb_assigned_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_requisition` text,
  `type` text,
  `employee_id` text,
  `user_id` text,
  `contractor_company_id` text COMMENT 'this is groups id',
  `course_id` text,
  `course_name` text,
  `certificate_expiry_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'complete,Enroll,Re-Enroll,Expired',
  `notification_sent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_assigned_courses`
--

INSERT INTO `cvb_assigned_courses` (`id`, `staff_requisition`, `type`, `employee_id`, `user_id`, `contractor_company_id`, `course_id`, `course_name`, `certificate_expiry_date`, `status`, `notification_sent`, `created_at`, `updated_at`) VALUES
(30, NULL, NULL, '700812349', '19231', '1', '1', 'Driving Course', NULL, 'Enroll', NULL, '2025-12-17 02:13:49', '2025-12-17 02:13:49'),
(31, NULL, NULL, '19253', '19247', '2', '1', 'Driving Course', NULL, 'Enroll', NULL, '2025-12-17 06:24:09', '2025-12-17 06:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_assign_special_qualification`
--

DROP TABLE IF EXISTS `cvb_assign_special_qualification`;
CREATE TABLE IF NOT EXISTS `cvb_assign_special_qualification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_company` int NOT NULL,
  `user_id` text,
  `employee_id` text,
  `certificate_id` text,
  `employee_name` text,
  `high_risk_activities_name` text,
  `high_risk_activities_id` text,
  `special_qualification_payment_option` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_assign_special_qualification`
--

INSERT INTO `cvb_assign_special_qualification` (`id`, `client_company`, `user_id`, `employee_id`, `certificate_id`, `employee_name`, `high_risk_activities_name`, `high_risk_activities_id`, `special_qualification_payment_option`, `created_at`, `updated_at`) VALUES
(3, 1, '19231', '19249', NULL, 'Arun Kumar', '[\"Local Technical\"]', '[\"2\"]', 'Employee', '2025-08-25 21:49:41', '2025-08-25 21:49:41'),
(4, 1, '19231', '19249', NULL, 'Arun Kumar', '[\"Local Medical\"]', '[\"3\"]', 'Employee', '2025-08-25 21:49:42', '2025-08-25 21:49:42'),
(5, 1, '19231', '19249', NULL, 'Arun Kumar', '[\"Local HSE\"]', '[\"1\"]', 'Employee', '2025-08-25 21:49:43', '2025-08-25 21:49:43'),
(8, 2, '19231', '700812349', NULL, 'Test Panwar', '[\"Local Medical\"]', '[\"3\"]', 'Employee', '2025-12-12 02:48:32', '2025-12-12 02:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_certificate`
--

DROP TABLE IF EXISTS `cvb_certificate`;
CREATE TABLE IF NOT EXISTS `cvb_certificate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expiry_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `certificate_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uploaded_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recruiter_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `certificate_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_certificate`
--

INSERT INTO `cvb_certificate` (`id`, `employee`, `created`, `expiry_date`, `certificate_type`, `uploaded_date`, `created_at`, `recruiter_company`, `note`, `file`, `certificate_name`, `category`, `updated_at`) VALUES
(1, '19235', NULL, NULL, 'Technical Certificates', NULL, '2025-07-22 00:15:43', NULL, NULL, NULL, NULL, '72', '2025-07-22 00:15:43'),
(2, '19235', NULL, NULL, 'Medical Certificates', NULL, '2025-07-22 00:16:09', NULL, NULL, NULL, NULL, '71', '2025-07-22 00:16:09'),
(3, '19235', NULL, NULL, 'HSE Certificates', NULL, '2025-07-22 00:16:39', NULL, NULL, NULL, NULL, '70', '2025-07-22 00:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_certificate_type`
--

DROP TABLE IF EXISTS `cvb_certificate_type`;
CREATE TABLE IF NOT EXISTS `cvb_certificate_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate_type` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `identity` varchar(123) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvb_certificate_type`
--

INSERT INTO `cvb_certificate_type` (`id`, `certificate_type`, `identity`, `employee_id`, `status`, `created_at`, `updated_at`) VALUES
(72, 'Technical Certificates', '1', NULL, '1', '2023-11-28 00:32:54', '2023-11-28 00:32:54'),
(71, 'Medical Certificates', '1', NULL, '1', '2023-11-28 00:32:30', '2023-11-28 00:32:30'),
(70, 'HSE Certificates', '1', NULL, '1', '2023-11-28 00:32:08', '2023-11-28 00:32:08'),
(76, 'Security Certificates', '1', '0', '0', '2024-01-15 10:33:19', '2024-01-15 10:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_certificate_upload_request`
--

DROP TABLE IF EXISTS `cvb_certificate_upload_request`;
CREATE TABLE IF NOT EXISTS `cvb_certificate_upload_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Special,client_company',
  `contract_qualification` text,
  `special_qualification_id` text,
  `tech_nontech_id` varchar(255) DEFAULT NULL,
  `standard_qualification_id` text,
  `expiry_date` text,
  `issued_date` varchar(200) DEFAULT NULL,
  `role_id` text,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `employee` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `third_party_agent` varchar(250) DEFAULT NULL,
  `note_for_party_agent` varchar(250) DEFAULT NULL,
  `note_for_recruiter` varchar(250) DEFAULT NULL,
  `requested_on` varchar(250) DEFAULT NULL,
  `requested_by` varchar(250) DEFAULT NULL,
  `uploaded_on` varchar(250) DEFAULT NULL,
  `uploaded_by` varchar(250) DEFAULT NULL,
  `file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` varchar(250) NOT NULL DEFAULT 'Pending',
  `approved_by` text,
  `request_name` text,
  `certificate` varchar(250) DEFAULT NULL,
  `recruiter_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `client_company` text,
  `contractor_manager` varchar(250) DEFAULT NULL,
  `archived` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `certificate_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `certificate_upload_check` text COMMENT 'Uploaded,Assigned',
  `reject_by_verifier_id` text,
  `reuploaded_status` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_updated` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `uploaded_date` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `verifier_id` longtext,
  `expire_alert_in_pdf` varchar(200) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `recruiter_company_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Note` text,
  `category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `updated_by_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Employee` (`employee_name`),
  KEY `certificate_id` (`id`),
  KEY `Certificate_Name` (`certificate_name`),
  KEY `Certificate_Name_2` (`certificate_name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_certificate_upload_request`
--

INSERT INTO `cvb_certificate_upload_request` (`id`, `certificate_type`, `contract_qualification`, `special_qualification_id`, `tech_nontech_id`, `standard_qualification_id`, `expiry_date`, `issued_date`, `role_id`, `category`, `employee`, `third_party_agent`, `note_for_party_agent`, `note_for_recruiter`, `requested_on`, `requested_by`, `uploaded_on`, `uploaded_by`, `file`, `status`, `approved_by`, `request_name`, `certificate`, `recruiter_company`, `client_company`, `contractor_manager`, `archived`, `created_at`, `certificate_name`, `certificate_upload_check`, `reject_by_verifier_id`, `reuploaded_status`, `updated_at`, `employee_name`, `created_updated`, `uploaded_date`, `verifier_id`, `expire_alert_in_pdf`, `created_by`, `created_by_id`, `recruiter_company_name`, `Note`, `category_name`, `updated_by_id`, `Updated_by`) VALUES
(1, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/tkx1ClDkDjJnF8BJIOcGxYNXiAP1yjY0E5b212NB.pdf', 'Pending', NULL, NULL, 'DevOps_Roadmap_with_Youtube', NULL, '1', '19231', 0, '2025-07-22 00:15:43', 'Crane Operator License', 'Assigned', NULL, NULL, '2025-07-22 00:17:10', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '71', 'mq', NULL, '1', '2027-07-01', '2025-07-01', NULL, '71', '19235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/fmdPgwAmoYc755hezbecVl1iJfD2MNF6K4LDwoa1.pdf', 'Pending', NULL, NULL, 'DevOps_Roadmap_with_Youtube', NULL, '1', '19231', 0, '2025-07-22 00:16:09', 'Respiratory Protection Medical Report', 'Assigned', NULL, NULL, '2025-07-22 00:17:10', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '70', 'mq', NULL, '3', '2025-08-16', '2025-07-01', NULL, '70', '19235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/33qq7VyrZOR9vglCASWiMj15Y0HN6K8j9nBUzJId.pdf', 'Pending', NULL, NULL, 'DevOps_Roadmap_Beginner_to_Advanced', NULL, '1', '19231', 0, '2025-07-22 00:16:39', 'Crane Operator License', 'Assigned', NULL, NULL, '2025-07-22 00:17:10', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '71', 'mq', NULL, '1', '2025-08-30', '2025-07-01', NULL, '71', '19237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/0EXuf4MgmhePBwdUSjAigKuIkqk3iBqKUL1VxQlp.jpg', 'Pending', NULL, NULL, '0000', NULL, '1', '19231', 0, '2025-07-24 20:42:57', 'Respiratory Fit Test', 'Assigned', NULL, NULL, '2025-07-24 21:19:55', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/xJEainS9lJWID4rnHJNYqNc4qo3Y1UAFPIPpvzPg.jpg', 'Pending', NULL, NULL, '00001', NULL, '1', '19231', 0, '2025-07-24 20:43:20', 'Crane Operator License', 'Assigned', NULL, NULL, '2025-07-24 21:19:55', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '70', 'mq', NULL, '3', '2026-01-10', '2025-07-01', NULL, '70', '19237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/PDGS2mnRFyO8MAFh0gNmitIY6lN8xZhXQXXwOBzx.jpg', 'Pending', NULL, NULL, '15900', NULL, '1', '19231', 0, '2025-07-24 20:43:36', 'Rigger/Banksman Training Certificate', 'Assigned', NULL, NULL, '2025-07-24 21:19:55', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '71', 'mq', NULL, '1', '2027-07-17', '2025-07-17', NULL, '71', '19238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/e9Orq6vnRbokgYVdfzUOIRjxqRA4EbTvQHOM6OXR.jpg', 'Pending', NULL, NULL, '0000', NULL, '1', '19231', 0, '2025-07-30 01:07:19', 'Offshore Energies UK Medical Report', 'Assigned', NULL, NULL, '2025-07-30 01:19:17', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/vb3JIwmdLi3aR9RWJ4z0dYciSRUG7e4NvW3FhxPC.jpg', 'Pending', NULL, NULL, '00001', NULL, '1', '19231', 0, '2025-07-30 01:08:59', 'HAZWOPER Training Certificate', 'Assigned', NULL, NULL, '2025-07-30 01:19:17', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '70', 'mq', NULL, '3', '2025-12-20', '2025-07-02', NULL, '70', '19238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/KTYrGU2r14cwwKAlqPjJD5rASVU5Y8I3R3vFcxEA.jpg', 'Pending', NULL, NULL, 'icon', NULL, '1', '19231', 0, '2025-07-30 01:10:23', 'Rigger/Banksman Training Certificate', 'Assigned', NULL, NULL, '2025-07-30 01:19:17', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '71', 'mq', NULL, '1', '2027-08-01', '2025-08-01', NULL, '71', '19240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/wtSGR9zKCewqAn0ZqheftKn4Ihi3xZKzUdaTyzFF.jpg', 'Pending', NULL, NULL, '12206', NULL, '1', '19231', 0, '2025-08-05 00:43:37', 'Respiratory Fit Test', 'Assigned', NULL, NULL, '2025-08-07 01:49:28', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/gEaVfwuQW3zqmxXjx2w9IDJ9oO2xgENtW5qPWkqv.jpg', 'Pending', NULL, NULL, '12206', NULL, '1', '19231', 0, '2025-08-05 00:43:49', 'Crane Operator License', 'Assigned', NULL, NULL, '2025-08-07 01:49:28', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '70', 'mq', NULL, '3', '2026-07-11', '2025-08-01', NULL, '70', '19240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/TyTw1UxmbA7gHKhje9qESbHRm5FskORNIopvkQLD.jpg', 'Pending', NULL, NULL, '838', NULL, '1', '19231', 0, '2025-08-05 00:44:47', 'Rigger/Banksman Training Certificate', 'Assigned', NULL, NULL, '2025-08-07 01:49:28', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '71', 'mq', NULL, '1', '2025-12-12', '2025-08-01', NULL, '71', '19243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/AIE1MDCjwzc21BeBy26TsDZs4ipzg7zh2jFJ7oWE.jpg', 'Pending', NULL, NULL, '0000', NULL, '1', '19231', 0, '2025-08-07 06:56:32', 'Substance Abuse Medical Report', 'Assigned', NULL, NULL, '2025-08-07 06:57:36', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '70', 'mq', NULL, '3', '2025-11-14', '2025-07-31', NULL, '70', '19243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/UCIwQF8qqFMp5HFNjWAmBka4JZytW4nkfXtn2UfV.png', 'Pending', NULL, NULL, 'employee', NULL, '1', '19231', 0, '2025-08-07 06:56:52', 'PLEA Pass Card', 'Assigned', NULL, NULL, '2025-08-07 06:57:36', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/7YeDa46QlYlsMf0a1kgiJdWu8ocRLG5y9MZ0Oteo.png', 'Rejected', 'Technical Verifier 2', NULL, 'employee', NULL, '1', '19231', 1, '2025-08-07 06:57:06', 'Crane Operator License', 'Assigned', '19244', NULL, '2025-08-13 04:26:41', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'ac', 'ac', NULL, NULL, '2025-08-30', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/XrV7c95Rpwh2Vfa2B6NIXGumc1QGFptvRnX9POBt.png', 'Approved', 'Technical Verifier 2', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 21:50:46', 'Additional technical certificate', 'Assigned', NULL, NULL, '2025-08-27 21:56:13', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Local Technical', 'sq', '2', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/edeTAjPIaYRjlLpfp711mLcInyMjoQ7q6NAtQRxF.png', 'Rejected', 'Technical Verifier', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 21:51:17', 'HRA Technical Certificate', 'Assigned', '19234', NULL, '2025-08-27 03:47:07', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/FdF8NaWCh1OpmeJkwtfNqPu4hR17P0rqx8PizIw4.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 0, '2025-08-25 21:51:52', 'SQ technical certificate', 'Assigned', NULL, NULL, '2025-08-25 21:55:33', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, '71', 'mq', NULL, '1', '2027-08-01', '2025-08-01', NULL, '71', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/nunSYdeTemcCJ6QsgwMeZPDhq6ADyBiRCNxp9FP8.png', 'Rejected', 'Medical Verifier', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 21:52:56', 'MQ Medical Certificate', 'Assigned', '19233', NULL, '2025-08-27 03:47:02', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, '70', 'mq', NULL, '3', '2026-12-12', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/tSOgE42jL0129I9CGwlgJW4fS3oVzALHunQM2kL4.png', 'Rejected', 'HSE Verifier', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 21:53:41', 'MQ HSE Certificate', 'Assigned', '19250', NULL, '2025-08-27 03:47:04', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Local Medical', 'sq', '3', NULL, NULL, '2027-08-01', '2025-08-01', NULL, '71', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/COqxMSPDqcIPJoil3QWSNC0BEDQM2TXQOzfCvWZE.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 0, '2025-08-25 21:54:22', 'HRA Medical Certificate', 'Assigned', NULL, NULL, '2025-08-25 21:55:33', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Local HSE', 'sq', '1', NULL, NULL, '2025-08-30', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/PwjDvKVvb13FKaLmZk69fDALu5L0oTprgj2o89zj.png', 'Rejected', 'HSE Verifier two', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 21:55:05', 'HRA HSE Certificate', 'Assigned', '19252', NULL, '2025-08-27 23:36:09', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 'ac', 'ac', NULL, NULL, '2025-09-11', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/dfS664fpn0BTfdXImRDg8TGsL3ppDPIMhfG03d2K.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-25 22:00:39', 'New Additional technical certificate', 'Assigned', NULL, '1', '2025-08-25 22:00:48', NULL, NULL, NULL, ',Technical Verifier 2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, '71', 'mq', NULL, '1', '2027-08-01', '2025-08-01', NULL, '71', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/MaK4a5yGClM26nohbswKYJPsUvJzyU2LdLQDAGWR.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 0, '2025-08-27 03:46:26', 'Respiratory Fit Test', 'Assigned', '19233', '1', '2025-08-27 03:47:28', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, '70', 'mq', NULL, '3', '2025-08-30', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/eKvfvKyDeJV974jD4OJfI192ahTHoPj9aWaDorNo.png', 'Rejected', 'HSE Verifier two', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-27 03:46:46', 'PLEA Pass Card', 'Assigned', '19252', '1', '2025-08-27 23:35:40', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Local Technical', 'sq', '2', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/3uFjXS7K02e2SOmuJDFXllrIeUCScc5WqHidF7KS.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 0, '2025-08-27 03:47:00', 'Additional Qualification Latest', 'Assigned', '19234', '1', '2025-08-27 03:47:28', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, '72', 'ac', NULL, NULL, '2025-09-11', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/pVHvG8WYQ7Tuwjy2M1pe0PdGOVFT57C8o1MBrPeS.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-27 21:56:07', 'Going to Expire sooon', 'Assigned', NULL, '1', '2025-08-28 01:22:19', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'ac', 'ac', NULL, NULL, '2025-09-11', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/hp5nCzajNpNUMhOMi77YUeSkknST9GO39daxfZp1.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-27 22:26:49', '2025-09-11 New Additional technical certificate', 'Assigned', NULL, '1', '2025-08-28 01:21:45', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, '70', 'mq', NULL, '3', '2025-08-30', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/UhDsZ3CFWpFVZ2oRQZm4Q3VMzcpSmE7y5EKN2vwp.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-27 23:35:31', 'Rigger/Banksman Training Certificate', 'Uploaded', '19252', '1', '2025-08-28 01:21:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Local HSE', 'sq', '1', NULL, NULL, '2025-08-30', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/go0UQTEIPmwykhbBs7yQjtlIZkK1KZr633RWk2OT.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-27 23:36:01', 'Fire watch Training Certificate', 'Uploaded', '19252', '1', '2025-08-29 00:04:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, '70', 'mq', NULL, '3', '2025-08-30', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/nUt29dlhdveGYCG7dmzOu9B2G51DP8QeA1ezrjpt.png', 'Rejected', 'HSE Verifier two', NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-28 01:20:20', 'CSE Training Certificate', 'Assigned', '19252', '1', '2025-08-28 23:41:23', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, '72', 'ac', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/TvhTe9aqnPp31Z7jULu2MrByFbge7DFjcnWPW9c9.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 0, '2025-08-28 01:21:40', 'HAZCOM', 'Assigned', NULL, '1', '2025-08-28 01:22:34', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, '72', 'ac', NULL, NULL, '2025-08-30', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/v4Gcrk5MszSONBaE0d7tlDZtZaK5qia7z3KxfdaU.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '1', '19231', 1, '2025-08-28 01:22:14', 'Going to Expire sooon new', 'Assigned', NULL, '1', '2025-08-29 00:12:21', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, '70', 'mq', NULL, '3', '2025-11-22', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/AYbjASWrgQmFtveK6wo71bRVfJHOA63vA9SPYUJu.pdf', 'Rejected', 'HSE Verifier two', NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 1, '2025-08-28 23:41:19', 'Fire watch Training Certificate', 'Assigned', '19252', '1', '2025-08-28 23:52:05', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, '70', 'mq', NULL, '3', '2025-11-14', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/DR8KQK11SQuU62GsMCeGF0HoPHWM5EZ1tCnPrbgQ.pdf', 'Rejected', 'HSE Verifier two', NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 1, '2025-08-28 23:52:00', 'PLEA Pass Card', 'Assigned', '19252', '1', '2025-08-29 01:10:05', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Local HSE', 'sq', '1', NULL, NULL, '2026-02-28', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/ZF6UajTxW6BmnmpmYJeTDfXRyLoEaHlL13IwHaOb.pdf', 'Rejected', 'HSE Verifier two', NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 1, '2025-08-29 00:04:48', 'Crane Operator License', 'Assigned', '19252', '1', '2025-08-29 00:29:05', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, '72', 'ac', NULL, NULL, '2025-08-30', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/aaWW3XjCQBgd4Oln398GrYCPVT9OT68kzJzBZNPK.pdf', 'Pending', NULL, NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 1, '2025-08-29 00:12:17', 'Crane Operator License', 'Assigned', NULL, '1', '2025-08-29 03:23:44', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Local HSE', 'sq', '1', NULL, NULL, '2025-12-10', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/R5ySoXo66r2paTfIA8Ov558fiHfCHbIydTf1fujt.pdf', 'Pending', NULL, NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 0, '2025-08-29 00:29:00', 'Rigger/Banksman Training Certificate', 'Assigned', '19252', '1', '2025-08-29 03:23:06', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, '70', 'mq', NULL, '3', '2025-12-10', '2025-08-01', NULL, '70', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/oaD1HV1WgHUMBFNGN90ZB71dcgKRKrVLDoXYkCvr.pdf', 'Pending', NULL, NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 0, '2025-08-29 01:10:00', 'Fire watch Training Certificate', 'Assigned', '19252', '1', '2025-08-29 03:23:06', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, '72', 'ac', NULL, NULL, '2025-12-10', NULL, NULL, '72', '19249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/ocH4tJANIqDifBF3wgmm6vPMSJN4oxxLlBXt0Nr2.pdf', 'Pending', NULL, NULL, 'Antrag_Anubhav_Panwar (12)', NULL, '1', '19231', 0, '2025-08-29 03:23:39', 'HAZWOPER Training Certificate', 'Assigned', NULL, '1', '2025-11-09 20:25:21', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'ac', 'ac', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/mNF379dNv3VZW9cfNQeJEOH08guAmKz1OksbDEiA.jpg', 'Pending', NULL, NULL, 'horrivel', NULL, '2', '19247', 1, '2025-10-16 00:16:39', 'HAZWOPER Training Certificate', 'Assigned', NULL, '1', '2025-11-26 23:57:55', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, '19231', NULL),
(42, NULL, 'ac', 'ac', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/o3Cv3lqjTGk5J8PKKSh4P4jUTY5k6xPOPZqH0XE3.jpg', 'Pending', NULL, NULL, 'horrivel', NULL, '2', '19247', 0, '2025-10-16 00:26:02', 'HAZWOPER Training Certificate', 'Assigned', NULL, '1', '2025-10-21 21:11:03', NULL, NULL, NULL, ',Technical Verifier,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'ac', 'ac', NULL, NULL, '2099-12-31', NULL, NULL, '72', '19245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/1fGbwmppfPdUskoFFX8p1l6HetkX6gDUdG2qFwaw.jpg', 'Pending', NULL, NULL, '6af28200-5b04-424e-a2f0-40e8e359acc6', NULL, '2', '19231', 0, '2025-10-30 00:05:29', 'HAZWOPER Training Certificate', 'Uploaded', NULL, NULL, '2025-10-30 00:05:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, '71', 'mq', NULL, '1', '2027-10-01', '2025-10-01', NULL, '71', '19245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/tDKE8EUkOKoBpuyPmVKWsBEXLSIt685a0prxZn5u.png', 'Pending', NULL, NULL, '\'', NULL, '2', '19231', 0, '2025-10-30 00:09:33', 'Respiratory Fit Test', 'Assigned', NULL, NULL, '2025-10-30 00:11:22', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/077YmluAlge4faZDXRgiSqxv23JdrOsBEec5zG9u.png', 'Pending', NULL, NULL, '\'', NULL, '2', '19231', 0, '2025-10-30 00:10:01', 'HAZWOPER Training Certificate', 'Assigned', NULL, NULL, '2025-10-30 00:11:22', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, '70', 'mq', NULL, '3', '2026-02-28', '2025-10-01', NULL, '70', '19245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/tdQcDyNKo2SjksfZvoM6EPbCqatO5ikxDHmA1xXn.png', 'Pending', NULL, NULL, '\'', NULL, '2', '19231', 0, '2025-10-30 00:10:33', 'Rigger/Banksman Training Certificate', 'Assigned', NULL, NULL, '2025-10-30 00:11:22', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, '71', 'mq', NULL, '1', '2027-11-01', '2025-11-01', NULL, '71', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/EhkNLHW5EVlwZnigGh2H5EwfERXSCrQKGxw7WJR9.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '2', '19247', 0, '2025-11-26 19:55:31', 'Respiratory Fit Test', 'Assigned', NULL, '1', '2025-11-26 19:56:23', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/FpFAz2P4NKGmABrCZ18UJmwCXmKeMVUwKtLgpQrg.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '2', '19247', 0, '2025-11-26 19:55:37', 'Resume', 'Assigned', NULL, '1', '2025-11-26 19:56:23', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, '70', 'mq', NULL, '3', '2026-08-31', '2025-11-01', NULL, '70', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/N6X2tRbP6eOU9Yu96xctT1LgKYylds4z7fMSTM0p.png', 'Pending', NULL, NULL, 'NESTLARAVEL', NULL, '2', '19247', 1, '2025-11-26 19:55:59', 'Defensive Driving Certificate', 'Assigned', NULL, '1', '2025-11-26 19:56:23', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, '70', 'mq', NULL, '3', '2025-12-31', '2025-12-01', NULL, '70', '19253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/MY0j6F5xEWKcW1YNOr3yLdGGMcfPRvgF3kyfL5H6.jpg', 'Pending', NULL, NULL, 'thankyou', NULL, '2', '19247', 0, '2025-12-12 02:37:43', 'Fire watch Training Certificate', 'Assigned', NULL, '1', '2025-12-12 02:38:22', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Local Medical', 'sq', '3', NULL, NULL, '2027-12-10', '2025-12-10', NULL, '71', '700812349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/kyMGNg8CcIeM62gkfjGFYiJ6cD2vKia3d8Uc91Dd.jpg', 'Pending', NULL, NULL, '13176', NULL, '2', '19231', 1, '2025-12-12 02:49:12', 'Respiratory Fit Test', 'Assigned', NULL, NULL, '2025-12-12 02:52:46', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, '19231', NULL),
(52, NULL, '72', 'mq', NULL, '2', '2099-12-31', NULL, NULL, '72', '700812349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/NYDdHeg3sK6ymDtiCD5CDzqBMy6aIqn7vVScWXFw.jpg', 'Pending', NULL, NULL, '13176', NULL, '2', '19231', 1, '2025-12-12 02:49:25', 'HAZWOPER Training Certificate', 'Assigned', NULL, NULL, '2025-12-12 02:52:46', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, '19231', NULL),
(53, NULL, '70', 'mq', NULL, '3', '2026-03-19', '2025-12-03', NULL, '70', '700812349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/I7F5xDLRiBEGubwE4UxpzozuXaKN9jJ5axJIDJ92.jpg', 'Pending', NULL, NULL, '13176', NULL, '2', '19231', 1, '2025-12-12 02:50:00', 'PLEA Pass Card', 'Assigned', NULL, NULL, '2025-12-12 02:52:46', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, '19231', NULL),
(54, NULL, '71', 'mq', NULL, '1', '2027-12-02', '2025-12-02', NULL, '71', '700812349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/certificates/5KK6cQyI31JtSGPYoZwFAscJs4GfuAO1nWqNduvK.jpg', 'Pending', NULL, NULL, '13176', NULL, '2', '19231', 1, '2025-12-12 02:50:34', 'Respiratory Protection Medical Report', 'Assigned', NULL, NULL, '2025-12-12 02:52:46', NULL, NULL, NULL, 'HSE Verifier,HSE Verifier two,Technical Verifier,Medical Verifier,Medical Verifier two', NULL, NULL, NULL, NULL, NULL, NULL, '19231', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cvb_certificate_upload_request_backup`
--

DROP TABLE IF EXISTS `cvb_certificate_upload_request_backup`;
CREATE TABLE IF NOT EXISTS `cvb_certificate_upload_request_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Special,client_company',
  `contract_qualification` text,
  `special_qualification_id` text,
  `tech_nontech_id` varchar(255) DEFAULT NULL,
  `standard_qualification_id` text,
  `expiry_date` text,
  `issued_date` varchar(200) DEFAULT NULL,
  `role_id` text,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `employee` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `third_party_agent` varchar(250) DEFAULT NULL,
  `note_for_party_agent` varchar(250) DEFAULT NULL,
  `note_for_recruiter` varchar(250) DEFAULT NULL,
  `requested_on` varchar(250) DEFAULT NULL,
  `requested_by` varchar(250) DEFAULT NULL,
  `uploaded_on` varchar(250) DEFAULT NULL,
  `uploaded_by` varchar(250) DEFAULT NULL,
  `file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` varchar(250) NOT NULL DEFAULT 'Pending',
  `approved_by` text,
  `request_name` text,
  `certificate` varchar(250) DEFAULT NULL,
  `recruiter_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `client_company` text,
  `contractor_manager` varchar(250) DEFAULT NULL,
  `archived` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `certificate_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `certificate_upload_check` text COMMENT 'Uploaded,Assigned',
  `reject_by_verifier_id` text,
  `reuploaded_status` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_updated` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `uploaded_date` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `verifier_id` longtext,
  `expire_alert_in_pdf` varchar(200) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `recruiter_company_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Note` text,
  `category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `updated_by_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Employee` (`employee_name`),
  KEY `certificate_id` (`id`),
  KEY `Certificate_Name` (`certificate_name`),
  KEY `Certificate_Name_2` (`certificate_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_client_company`
--

DROP TABLE IF EXISTS `cvb_client_company`;
CREATE TABLE IF NOT EXISTS `cvb_client_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_managers` int DEFAULT NULL,
  `active_users` int DEFAULT NULL,
  `recruiter_company` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_client_company`
--

INSERT INTO `cvb_client_company` (`id`, `name`, `active`, `logo`, `website`, `industry`, `description`, `phone`, `address`, `active_managers`, `active_users`, `recruiter_company`) VALUES
(1, 'Air Liquide', 'Yes', '', '', '', '', '', '', 0, 0, ''),
(3, 'Air Liquide', 'Yes', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contractor_company`
--

DROP TABLE IF EXISTS `cvb_contractor_company`;
CREATE TABLE IF NOT EXISTS `cvb_contractor_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `industy_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `country_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `active_manager_count` int DEFAULT NULL,
  `employer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_contractor_company`
--

INSERT INTO `cvb_contractor_company` (`id`, `name`, `logo`, `website`, `industry`, `industy_id`, `description`, `phone`, `address`, `city`, `region`, `postal_code`, `country_id`, `active_manager_count`, `employer_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Local Contractor Company', 'uploads/upload_file/contractor_company/1753173787.jpg', 'www.localcc.com', NULL, '1', 'This is a description', '+1 (011) 111-1111', 'Address', 'City', 'Region', '12345', 'Trinidad and Tobago', NULL, NULL, '1', '2025-07-21 23:13:07', '2025-07-21 23:13:07'),
(2, 'Local Contractor Company Two\r\n', 'uploads/upload_file/contractor_company/1753173787.jpg', 'www.localcc.com', NULL, '1', 'This is a description', '+1 (011) 111-1111', 'Address', 'City', 'Region', '12345', 'Trinidad and Tobago', NULL, NULL, '1', '2025-07-21 23:13:07', '2025-07-21 23:13:07'),
(3, 'Local Contractor Company Three\r\n', 'uploads/upload_file/contractor_company/1753173787.jpg', 'www.localcc.com', NULL, '1', 'This is a description', '+1 (011) 111-1111', 'Address', 'City', 'Region', '12345', 'Trinidad and Tobago', NULL, NULL, '1', '2025-07-21 23:13:07', '2025-07-21 23:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contracts`
--

DROP TABLE IF EXISTS `cvb_contracts`;
CREATE TABLE IF NOT EXISTS `cvb_contracts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_holder` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contract_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unique_contract_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purchase_order_number` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approve_spend_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contractor` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_detail_non_tech`
--

DROP TABLE IF EXISTS `cvb_contract_detail_non_tech`;
CREATE TABLE IF NOT EXISTS `cvb_contract_detail_non_tech` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_id` text COMMENT 'Engagement Id',
  `global_role_id` text,
  `skills` text,
  `accepted_qualification` text,
  `location` text,
  `category` text,
  `awarding_body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_detail_role`
--

DROP TABLE IF EXISTS `cvb_contract_detail_role`;
CREATE TABLE IF NOT EXISTS `cvb_contract_detail_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_id` text COMMENT 'Engagement Id',
  `global_role_id` text,
  `skills` text,
  `location` text,
  `category` text,
  `accepted_qualification` text,
  `awarding_body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_engagement`
--

DROP TABLE IF EXISTS `cvb_contract_engagement`;
CREATE TABLE IF NOT EXISTS `cvb_contract_engagement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contractor_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `end_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `approve_spend_money` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_jobs`
--

DROP TABLE IF EXISTS `cvb_contract_jobs`;
CREATE TABLE IF NOT EXISTS `cvb_contract_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `required_employee` varchar(1000) DEFAULT NULL,
  `number_of_person` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `special_requirement` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_job_role`
--

DROP TABLE IF EXISTS `cvb_contract_job_role`;
CREATE TABLE IF NOT EXISTS `cvb_contract_job_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_holder_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'this is engagement_number into staff_requisition table.',
  `role` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `years_experience` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_skill` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `secondary_skill` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tertiary_skill` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_library`
--

DROP TABLE IF EXISTS `cvb_contract_library`;
CREATE TABLE IF NOT EXISTS `cvb_contract_library` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contract_library_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_library_files_upload`
--

DROP TABLE IF EXISTS `cvb_contract_library_files_upload`;
CREATE TABLE IF NOT EXISTS `cvb_contract_library_files_upload` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contract_library_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assignedtoemployee` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_mandatory_qualification`
--

DROP TABLE IF EXISTS `cvb_contract_mandatory_qualification`;
CREATE TABLE IF NOT EXISTS `cvb_contract_mandatory_qualification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate_category` text,
  `certificate_name` text,
  `contract_holder_id` int DEFAULT NULL,
  `role` text,
  `qualification` text,
  `awarding` text,
  `type` text,
  `client_company` text,
  `site_location` text,
  `category` text,
  `status` tinyint DEFAULT '1' COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_non_tech_qualification`
--

DROP TABLE IF EXISTS `cvb_contract_non_tech_qualification`;
CREATE TABLE IF NOT EXISTS `cvb_contract_non_tech_qualification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_holder_id` text,
  `contract_role_id` text,
  `qualification` text,
  `awarding` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_projects`
--

DROP TABLE IF EXISTS `cvb_contract_projects`;
CREATE TABLE IF NOT EXISTS `cvb_contract_projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_id` int DEFAULT NULL,
  `contract_holder_id` text,
  `enagement_id` text,
  `project_type` text,
  `project_title` text,
  `project_manager` text,
  `project_number` text,
  `project_creation` text,
  `contract_title` text,
  `contract_number` text,
  `unique_identification_code` text,
  `project_purchase_number` text,
  `project_asv` text,
  `cont` text COMMENT 'client_company',
  `start_date` text,
  `end_date` text,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_qualification_update`
--

DROP TABLE IF EXISTS `cvb_contract_qualification_update`;
CREATE TABLE IF NOT EXISTS `cvb_contract_qualification_update` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_holder_id` text,
  `contract_role_id` int DEFAULT NULL,
  `primary_skill` text,
  `secondary_skill` text,
  `tertiary_skills` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_contract_rates`
--

DROP TABLE IF EXISTS `cvb_contract_rates`;
CREATE TABLE IF NOT EXISTS `cvb_contract_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_holder_id` varchar(232) NOT NULL,
  `rates` varchar(232) NOT NULL,
  `review` varchar(232) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_courses`
--

DROP TABLE IF EXISTS `cvb_courses`;
CREATE TABLE IF NOT EXISTS `cvb_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `courses` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_email_count`
--

DROP TABLE IF EXISTS `cvb_email_count`;
CREATE TABLE IF NOT EXISTS `cvb_email_count` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sent_to` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_email_count`
--

INSERT INTO `cvb_email_count` (`id`, `sent_to`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-07-22 00:17:17', '2025-07-22 00:17:17'),
(2, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-07-24 21:20:05', '2025-07-24 21:20:05'),
(3, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-07-30 01:19:32', '2025-07-30 01:19:32'),
(4, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-07 01:49:37', '2025-08-07 01:49:37'),
(5, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-07 06:57:43', '2025-08-07 06:57:43'),
(6, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-07 07:55:25', '2025-08-07 07:55:25'),
(7, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-07 10:06:16', '2025-08-07 10:06:16'),
(8, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-13 04:22:11', '2025-08-13 04:22:11'),
(9, 'Certificate Rejection', 'priyanshpaaa@gmail.com', '2025-08-13 04:22:16', '2025-08-13 04:22:16'),
(10, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-13 04:22:21', '2025-08-13 04:22:21'),
(11, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-25 21:55:40', '2025-08-25 21:55:40'),
(12, 'EVR Request', 'priyanshpanwar90@gmail.com', '2025-08-25 22:00:48', '2025-08-25 22:00:48'),
(13, 'EVR Reject', 'mayank8989@gmail.com', '2025-08-27 03:33:13', '2025-08-27 03:33:13'),
(14, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-27 03:33:17', '2025-08-27 03:33:17'),
(15, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-27 03:33:21', '2025-08-27 03:33:21'),
(16, 'EVR Reject', 'mayank8989@gmail.com', '2025-08-27 03:33:52', '2025-08-27 03:33:52'),
(17, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-27 03:33:57', '2025-08-27 03:33:57'),
(18, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-27 03:34:01', '2025-08-27 03:34:01'),
(19, 'EVR Reject', 'mayank8989@gmail.com', '2025-08-27 03:34:15', '2025-08-27 03:34:15'),
(20, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-27 03:34:22', '2025-08-27 03:34:22'),
(21, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-27 03:34:26', '2025-08-27 03:34:26'),
(22, 'Certificate Reuploaded', 'visheshpanwar0711@gmail.com', '2025-08-27 03:47:17', '2025-08-27 03:47:17'),
(23, 'Certificate Reuploaded', 'priyanshpanwr58@gmail.com', '2025-08-27 03:47:23', '2025-08-27 03:47:23'),
(24, 'Certificate Reuploaded', 'priyanshpanwar58@gmail.com', '2025-08-27 03:47:28', '2025-08-27 03:47:28'),
(25, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-27 22:50:01', '2025-08-27 22:50:01'),
(26, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-27 22:50:01', '2025-08-27 22:50:01'),
(27, 'EVR Reject', 'vishesh8989@gmail.com', '2025-08-27 23:22:01', '2025-08-27 23:22:01'),
(28, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-27 23:22:07', '2025-08-27 23:22:07'),
(29, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-27 23:22:13', '2025-08-27 23:22:13'),
(30, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-27 23:30:48', '2025-08-27 23:30:48'),
(31, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-27 23:30:55', '2025-08-27 23:30:55'),
(32, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-27 23:31:02', '2025-08-27 23:31:02'),
(33, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-28 01:22:34', '2025-08-28 01:22:34'),
(34, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-28 01:22:34', '2025-08-28 01:22:34'),
(35, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-28 01:22:34', '2025-08-28 01:22:34'),
(36, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-28 23:31:54', '2025-08-28 23:31:54'),
(37, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-28 23:32:00', '2025-08-28 23:32:00'),
(38, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-28 23:32:09', '2025-08-28 23:32:09'),
(39, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-28 23:42:09', '2025-08-28 23:42:09'),
(40, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-28 23:51:03', '2025-08-28 23:51:03'),
(41, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-28 23:51:09', '2025-08-28 23:51:09'),
(42, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-28 23:51:14', '2025-08-28 23:51:14'),
(43, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-29 00:03:57', '2025-08-29 00:03:57'),
(44, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-08-29 00:12:37', '2025-08-29 00:12:37'),
(45, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-29 00:25:34', '2025-08-29 00:25:34'),
(46, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-29 00:26:21', '2025-08-29 00:26:21'),
(47, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-29 00:26:29', '2025-08-29 00:26:29'),
(48, 'Certificate Rejection', 'anubhavpanwar66@gmail.com', '2025-08-29 00:26:40', '2025-08-29 00:26:40'),
(49, 'EVR Reject', 'anubhavpanwar66@gmail.com', '2025-08-29 00:35:03', '2025-08-29 00:35:03'),
(50, 'Certificate Rejection', 'arunkumar123@gmail.com', '2025-08-29 00:35:11', '2025-08-29 00:35:11'),
(51, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-29 03:23:01', '2025-08-29 03:23:01'),
(52, 'Certificate Reuploaded', 'priyanspanwr58@gmail.com', '2025-08-29 03:23:06', '2025-08-29 03:23:06'),
(53, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-10-21 21:11:03', '2025-10-21 21:11:03'),
(54, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-10-21 21:11:03', '2025-10-21 21:11:03'),
(55, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-11-09 20:25:21', '2025-11-09 20:25:21'),
(56, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-11-26 19:56:23', '2025-11-26 19:56:23'),
(57, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-03 06:45:57', '2025-12-03 06:45:57'),
(58, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-03 06:46:23', '2025-12-03 06:46:23'),
(59, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-03 06:46:28', '2025-12-03 06:46:28'),
(60, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:28:03', '2025-12-04 00:28:03'),
(61, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:28:08', '2025-12-04 00:28:08'),
(62, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:28:13', '2025-12-04 00:28:13'),
(63, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:40:02', '2025-12-04 00:40:02'),
(64, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:40:28', '2025-12-04 00:40:28'),
(65, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:40:33', '2025-12-04 00:40:33'),
(66, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:44:22', '2025-12-04 00:44:22'),
(67, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:44:27', '2025-12-04 00:44:27'),
(68, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:44:33', '2025-12-04 00:44:33'),
(69, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:45:37', '2025-12-04 00:45:37'),
(70, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:45:42', '2025-12-04 00:45:42'),
(71, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:45:47', '2025-12-04 00:45:47'),
(72, 'anubhavpawar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:46:45', '2025-12-04 00:46:45'),
(73, 'priyanshpanwar58@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:46:50', '2025-12-04 00:46:50'),
(74, 'priyanshpanwar90@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 00:46:55', '2025-12-04 00:46:55'),
(75, 'anubhavpanwar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 01:28:00', '2025-12-04 01:28:00'),
(76, 'anubhavpanwar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 01:32:15', '2025-12-04 01:32:15'),
(77, 'anubhavpanwar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 01:32:37', '2025-12-04 01:32:37'),
(78, 'anubhavpanwar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 01:48:19', '2025-12-04 01:48:19'),
(79, 'anubhavpanwar66@gmail.com', 'Monthly Certificate Expiry notification', '2025-12-04 02:37:46', '2025-12-04 02:37:46'),
(80, 'EVR Request', 'priyanshpanwar58@gmail.com', '2025-12-12 02:51:07', '2025-12-12 02:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_address`
--

DROP TABLE IF EXISTS `cvb_employee_address`;
CREATE TABLE IF NOT EXISTS `cvb_employee_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `street_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_employee_address`
--

INSERT INTO `cvb_employee_address` (`id`, `employee_id`, `address`, `address_2`, `street_name`, `city`, `postal_code`, `country`, `state`, `address_type`, `created_at`, `updated_at`) VALUES
(1, '700812349', 'Address', NULL, NULL, 'City', '12345', 'Trinidad and Tobago', 'Region', 'primary', '2025-07-22 00:14:04', '2025-07-22 00:14:04'),
(2, '19253', 'Address', NULL, NULL, 'City', '12345', 'Trinidad and Tobago', 'Region', 'primary', '2025-07-22 00:14:04', '2025-07-22 00:14:04'),
(3, '19238', 'Address', NULL, NULL, 'City', '12345', 'Trinidad and Tobago', 'Region', 'primary', '2025-07-22 00:14:04', '2025-07-22 00:14:04'),
(4, '19240', 'Address', NULL, NULL, 'City', '12345', 'Trinidad and Tobago', 'Region', 'primary', '2025-07-22 00:14:04', '2025-07-22 00:14:04'),
(5, '19245', 'Address', NULL, NULL, 'City', '12345', 'Trinidad and Tobago', 'Region', 'primary', '2025-07-22 00:14:04', '2025-07-22 00:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_contacts`
--

DROP TABLE IF EXISTS `cvb_employee_contacts`;
CREATE TABLE IF NOT EXISTS `cvb_employee_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `full_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `also_known_as` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `birth_date` date DEFAULT NULL,
  `gender` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marital_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `identification_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `allergies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blood_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nationality` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `primary_contact` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_employee_contacts`
--

INSERT INTO `cvb_employee_contacts` (`id`, `employee_id`, `full_name`, `also_known_as`, `birth_date`, `gender`, `marital_status`, `government_issued_identification`, `identification_no`, `allergies`, `blood_type`, `nationality`, `email_address`, `mobile_no`, `phone_no`, `primary_contact`, `created_at`, `updated_at`) VALUES
(1, '700812349', 'Tayyab Ansari', 'Tayyab', '2008-07-01', 'Female', 'Married', 'one', '112121', 'None', 'A-', 'India (भारत)', 'mhtayyabdev@gmail.com', '+1 2111111111', '+1 (111) 111-1111', 0, '2025-07-22 00:12:23', '2025-07-22 00:12:23'),
(2, '19253', 'Vishesh Panwar', 'Vishesh', '2008-07-01', 'Male', 'Married', 'one', '112121', 'None', 'A-', 'India (भारत)', 'freelance.by.anubhav@gmail.com', '+1 2111111111', '+1 (111) 111-1111', 0, '2025-07-22 00:12:23', '2025-07-22 00:12:23'),
(3, '19238\r\n', 'Vishesh Panwar', 'Vishesh', '2008-07-01', 'Male', 'Married', 'one', '112121', 'None', 'A-', 'India (भारत)', 'freelance.by.anubhav@gmail.com', '+1 2111111111', '+1 (111) 111-1111', 0, '2025-07-22 00:12:23', '2025-07-22 00:12:23'),
(4, '19240\r\n\r\n', 'Vishesh Panwar', 'Vishesh', '2008-07-01', 'Male', 'Married', 'one', '112121', 'None', 'A-', 'India (भारत)', 'freelance.by.anubhav@gmail.com', '+1 2111111111', '+1 (111) 111-1111', 0, '2025-07-22 00:12:23', '2025-07-22 00:12:23'),
(5, '19245', 'Vishesh Panwar', 'Vishesh', '2008-07-01', 'Male', 'Married', 'one', '112121', 'None', 'A-', 'India (भारत)', 'freelance.by.anubhav@gmail.com', '+1 2111111111', '+1 (111) 111-1111', 0, '2025-07-22 00:12:23', '2025-07-22 00:12:23'),
(6, '700812346', 'Tushar Rathi', 'Tayyab', '2008-10-30', 'Male', 'Never Married', 'passport', 'UK123456', 'None', 'O+', 'United States', 'tusharrathi@gmail.com', '+1 (211) 111-1112', '+1 (123) 456-7234', 0, '2025-11-11 01:34:17', '2025-11-11 01:34:17'),
(7, '700812346', 'Tushar Rathi', 'Tushar', '2008-10-29', 'Female', 'Never Married', 'passport', 'UK123490', 'None', 'AB+', 'United States', 'tusharrathi@gmail.com', '+1 (211) 111-1111', '+1 (132) 456-7865', 0, '2025-11-11 01:41:02', '2025-11-11 01:41:02'),
(8, '700812348', 'Himanshu Panwar', '23r', '2008-10-29', 'Male', 'Never Married', 'passport', '454545454', '1234567', 'AB+', 'Hong Kong (香港)', 'anubhavpanwar9090909777@gmail.com', '+91 (902) 765-3787', '+1', 0, '2025-11-28 05:21:58', '2025-11-28 05:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_education`
--

DROP TABLE IF EXISTS `cvb_employee_education`;
CREATE TABLE IF NOT EXISTS `cvb_employee_education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `end_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_of_program` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `program_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_evr_history`
--

DROP TABLE IF EXISTS `cvb_employee_evr_history`;
CREATE TABLE IF NOT EXISTS `cvb_employee_evr_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) DEFAULT NULL COMMENT 'Employee id whose evr is this. ',
  `operate_by` text COMMENT 'id of user who perfoemed the operation',
  `operation` text,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_employee_evr_history`
--

INSERT INTO `cvb_employee_evr_history` (`id`, `employee_id`, `operate_by`, `operation`, `date`, `created_at`, `updated_at`) VALUES
(1, '19235', '19231', 'EVR Generated', '2025-07-22', '2025-07-22 00:17:10', '2025-07-22 00:17:10'),
(2, '19237', '19231', 'EVR Generated', '2025-07-25', '2025-07-24 21:19:55', '2025-07-24 21:19:55'),
(3, '19238', '19231', 'EVR Generated', '2025-07-30', '2025-07-30 01:19:17', '2025-07-30 01:19:17'),
(4, '19240', '19231', 'EVR Generated', '2025-08-07', '2025-08-07 01:49:28', '2025-08-07 01:49:28'),
(5, '19241', '19231', 'EVR Generated', '2025-08-07', '2025-08-07 06:57:36', '2025-08-07 06:57:36'),
(6, '19242', '19231', 'EVR Generated', '2025-08-07', '2025-08-07 07:55:16', '2025-08-07 07:55:16'),
(7, '19243', '19231', 'EVR Generated', '2025-08-07', '2025-08-07 10:06:06', '2025-08-07 10:06:06'),
(8, '19243', '19244', 'Certificate Reject', '2025-08-13', '2025-08-13 04:22:02', '2025-08-13 04:22:02'),
(9, '19243', '19244', 'EVR Reject', '2025-08-13', '2025-08-13 04:22:02', '2025-08-13 04:22:02'),
(10, '19249', '19231', 'EVR Generated', '2025-08-26', '2025-08-25 21:55:33', '2025-08-25 21:55:33'),
(11, '19249', '19244', 'Certificate Approved', '2025-08-26', '2025-08-26 01:56:33', '2025-08-26 01:56:33'),
(15, '19249', '19247', 'Technical verifier changed (from \' \r\n                         . Technical Verifier 2 . \' to \' \r\n                         . Technical Verifier . \')', '2025-08-27', '2025-08-26 21:00:14', '2025-08-26 21:00:14'),
(16, '19249', '19247', 'Technical verifier changed from Technical Verifier to Technical Verifier 2 )', '2025-08-27', '2025-08-26 21:01:49', '2025-08-26 21:01:49'),
(17, '19249', '19247', 'Technical verifier changed from Technical Verifier 2 to Technical Verifier', '2025-08-27', '2025-08-26 21:02:07', '2025-08-26 21:02:07'),
(18, '19245', '19231', 'Profile transferred: Anubhav Panwar (Local Contractor Company) -> Mayank Panwar (Local Contractor Company Two )', '2025-08-27', '2025-08-26 21:15:38', '2025-08-26 21:15:38'),
(19, '19245', '19247', 'Profile transferred: Mayank Panwar (Local Contractor Company Two ) -> Anubhav Panwar (Local Contractor Company) by Mayank Panwar for employee Visheh Panwar', '2025-08-27', '2025-08-26 21:19:03', '2025-08-26 21:19:03'),
(20, '19249', '19231', 'Profile transferred: Anubhav Panwar (Local Contractor Company) -> Mayank Panwar (Local Contractor Company Two )', '2025-08-27', '2025-08-26 21:22:06', '2025-08-26 21:22:06'),
(21, '19249', '19234', 'Certificate Reject', '2025-08-27', '2025-08-27 03:33:05', '2025-08-27 03:33:05'),
(22, '19249', '19234', 'EVR Reject', '2025-08-27', '2025-08-27 03:33:05', '2025-08-27 03:33:05'),
(23, '19249', '19250', 'Certificate Reject', '2025-08-27', '2025-08-27 03:33:48', '2025-08-27 03:33:48'),
(24, '19249', '19250', 'EVR Reject', '2025-08-27', '2025-08-27 03:33:48', '2025-08-27 03:33:48'),
(25, '19249', '19233', 'Certificate Reject', '2025-08-27', '2025-08-27 03:34:10', '2025-08-27 03:34:10'),
(26, '19249', '19233', 'EVR Reject', '2025-08-27', '2025-08-27 03:34:10', '2025-08-27 03:34:10'),
(27, '19249', '19247', 'Profile transferred: Mayank Panwar (Local Contractor Company Two ) -> Vishesh Panwar (Local Contractor Company Three )', '2025-08-27', '2025-08-27 03:45:04', '2025-08-27 03:45:04'),
(28, '19249', '19252', 'Certificate Approved', '2025-08-27', '2025-08-27 03:48:54', '2025-08-27 03:48:54'),
(29, '19249', '19252', 'Certificate Reject', '2025-08-28', '2025-08-27 23:21:54', '2025-08-27 23:21:54'),
(30, '19249', '19252', 'EVR Reject', '2025-08-28', '2025-08-27 23:21:54', '2025-08-27 23:21:54'),
(31, '19249', '19246', 'Profile transferred: Vishesh Panwar (Local Contractor Company Three ) -> Anubhav Panwar (Local Contractor Company)', '2025-08-28', '2025-08-27 23:30:03', '2025-08-27 23:30:03'),
(32, '19249', '19252', 'Certificate Reject', '2025-08-28', '2025-08-27 23:30:42', '2025-08-27 23:30:42'),
(33, '19249', '19252', 'EVR Reject', '2025-08-28', '2025-08-27 23:30:42', '2025-08-27 23:30:42'),
(34, '19249', '19252', 'Certificate Reject', '2025-08-29', '2025-08-28 23:31:37', '2025-08-28 23:31:37'),
(35, '19249', '19252', 'EVR Reject', '2025-08-29', '2025-08-28 23:31:37', '2025-08-28 23:31:37'),
(36, '19249', '19252', 'Certificate Reject', '2025-08-29', '2025-08-28 23:50:54', '2025-08-28 23:50:54'),
(37, '19249', '19252', 'EVR Reject', '2025-08-29', '2025-08-28 23:50:54', '2025-08-28 23:50:54'),
(38, '19249', '19252', 'Certificate Reject', '2025-08-29', '2025-08-29 00:26:12', '2025-08-29 00:26:12'),
(39, '19249', '19252', 'EVR Reject', '2025-08-29', '2025-08-29 00:26:12', '2025-08-29 00:26:12'),
(40, '19249', '19252', 'Certificate Reject', '2025-08-29', '2025-08-29 00:34:54', '2025-08-29 00:34:54'),
(41, '19249', '19252', 'EVR Reject', '2025-08-29', '2025-08-29 00:34:54', '2025-08-29 00:34:54'),
(42, '19253', '19231', 'EVR Generated', '2025-10-16', '2025-10-16 00:26:35', '2025-10-16 00:26:35'),
(43, '19245', '19231', 'EVR Generated', '2025-10-30', '2025-10-30 00:11:22', '2025-10-30 00:11:22'),
(44, '19235', '19231', 'Profile transferred: Anubhav Panwar (Local Contractor Company) -> Anubhav Panwar (Local Contractor Company)', '2025-12-12', '2025-12-11 19:36:38', '2025-12-11 19:36:38'),
(45, '19253', '19231', 'Profile transferred: Anubhav Panwar (Local Contractor Company) -> Mayank Panwar (Local Contractor Company Two )', '2025-12-12', '2025-12-12 02:39:03', '2025-12-12 02:39:03'),
(46, '700812349', '19247', 'EVR Generated', '2025-12-12', '2025-12-12 02:50:58', '2025-12-12 02:50:58'),
(47, '700812349', '19247', 'Profile transferred: Mayank Panwar (Local Contractor Company Two ) -> Anubhav Panwar (Local Contractor Company)', '2025-12-12', '2025-12-12 02:51:31', '2025-12-12 02:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_experience`
--

DROP TABLE IF EXISTS `cvb_employee_experience`;
CREATE TABLE IF NOT EXISTS `cvb_employee_experience` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `end_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `skills` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secondary_skills` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tertiary_skills` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_kin_contacts`
--

DROP TABLE IF EXISTS `cvb_employee_kin_contacts`;
CREATE TABLE IF NOT EXISTS `cvb_employee_kin_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `first_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `middle_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_employee_kin_contacts`
--

INSERT INTO `cvb_employee_kin_contacts` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `title`, `email_address`, `mobile_no`, `phone_no`, `address`, `state`, `city`, `postal_code`, `country`, `created_at`, `updated_at`) VALUES
(1, '700812349', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28'),
(2, '19253', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28'),
(3, '19238\r\n', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28'),
(4, '19240\r\n', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28'),
(5, '19241\r\n', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28'),
(6, '19245', 'Sabnam', NULL, 'Ansari', 'Wife', 'sabnamk@gmail.com', '+1 (111) 111-1111', '+1 (111) 111-1111', 'Chandpur', 'UP', 'Bijnor', '245665', 'India (भारत)', '2025-07-22 00:13:28', '2025-07-22 00:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_location_approved`
--

DROP TABLE IF EXISTS `cvb_employee_location_approved`;
CREATE TABLE IF NOT EXISTS `cvb_employee_location_approved` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_id` text,
  `employee_id` text,
  `staffrequistion_id` text,
  `engagement_id` text,
  `project_id` text,
  `location_id` text,
  `site_access_user_id` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location_start_date` date DEFAULT NULL,
  `location_end_date` date DEFAULT NULL,
  `status` text,
  `contractor_manager` varchar(200) DEFAULT NULL,
  `archived` int NOT NULL DEFAULT '0',
  `approve_by_tech_verifier` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_profile_transfer_logs`
--

DROP TABLE IF EXISTS `cvb_employee_profile_transfer_logs`;
CREATE TABLE IF NOT EXISTS `cvb_employee_profile_transfer_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_id` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `transfer_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cm_transfer_from` varchar(255) DEFAULT NULL,
  `cm_transfer_to` varchar(255) DEFAULT NULL,
  `company_transfer_from` varchar(255) DEFAULT NULL,
  `company_transfer_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cvb_employee_profile_transfer_logs`
--

INSERT INTO `cvb_employee_profile_transfer_logs` (`id`, `auth_id`, `employee_id`, `transfer_date`, `cm_transfer_from`, `cm_transfer_to`, `company_transfer_from`, `company_transfer_to`, `created_at`, `updated_at`) VALUES
(1, NULL, '19238', '2025-08-20 00:13:50', '19231', '19248', '1', '3', '2025-08-20 09:43:50', '2025-08-20 09:43:50'),
(2, NULL, '19238', '2025-08-20 00:47:41', '19248', '19247', '3', '2', '2025-08-20 10:17:41', '2025-08-20 10:17:41'),
(3, '19246', '19245', '2025-08-24 20:16:35', '19246', '19231', '3', '1', '2025-08-25 05:46:35', '2025-08-25 05:46:35'),
(4, '19231', '19245', '2025-08-24 20:48:51', '19231', '19247', '1', '2', '2025-08-25 06:18:51', '2025-08-25 06:18:51'),
(5, '19231', '19249', '2025-08-26 02:29:52', '19231', '19247', '1', '2', '2025-08-26 11:59:52', '2025-08-26 11:59:52'),
(6, '19247', '19249', '2025-08-26 21:07:59', '19247', '19231', '2', '1', '2025-08-27 06:37:59', '2025-08-27 06:37:59'),
(7, '19247', '19245', '2025-08-27 06:39:54', '19247', '19231', '2', '1', '2025-08-27 06:39:54', '2025-08-27 06:39:54'),
(8, '19247', '19245', '2025-08-27 06:40:05', '19247', '19247', '2', '2', '2025-08-27 06:40:05', '2025-08-27 06:40:05'),
(9, '19247', '19245', '2025-08-26 21:10:50', '19247', '19231', '2', '1', '2025-08-27 06:40:50', '2025-08-27 06:40:50'),
(10, '19247', '19238', '2025-08-26 21:11:43', '19247', '19231', '2', '1', '2025-08-27 06:41:43', '2025-08-27 06:41:43'),
(11, '19231', '19245', '2025-08-26 21:15:38', '19231', '19247', '1', '2', '2025-08-27 06:45:38', '2025-08-27 06:45:38'),
(12, '19247', '19245', '2025-08-26 21:19:03', '19247', '19231', '2', '1', '2025-08-27 06:49:03', '2025-08-27 06:49:03'),
(13, '19231', '19249', '2025-08-26 21:22:06', '19231', '19247', '1', '2', '2025-08-27 06:52:06', '2025-08-27 06:52:06'),
(14, '19247', '19249', '2025-08-27 03:45:04', '19247', '19246', '2', '3', '2025-08-27 13:15:04', '2025-08-27 13:15:04'),
(15, '19246', '19249', '2025-08-27 23:30:03', '19246', '19231', '3', '1', '2025-08-28 09:00:03', '2025-08-28 09:00:03'),
(16, '19231', '19235', '2025-12-11 19:36:38', '19231', '19231', '1', '1', '2025-12-12 05:06:38', '2025-12-12 05:06:38'),
(17, '19231', '19253', '2025-12-12 02:39:03', '19231', '19247', '1', '2', '2025-12-12 12:09:03', '2025-12-12 12:09:03'),
(18, '19247', '700812349', '2025-12-12 02:51:31', '19247', '19231', '2', '1', '2025-12-12 12:21:31', '2025-12-12 12:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_skills`
--

DROP TABLE IF EXISTS `cvb_employee_skills`;
CREATE TABLE IF NOT EXISTS `cvb_employee_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skills` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `SkillType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_social_media`
--

DROP TABLE IF EXISTS `cvb_employee_social_media`;
CREATE TABLE IF NOT EXISTS `cvb_employee_social_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_tech_verifier_transfer_logs`
--

DROP TABLE IF EXISTS `cvb_employee_tech_verifier_transfer_logs`;
CREATE TABLE IF NOT EXISTS `cvb_employee_tech_verifier_transfer_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_id` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `transfer_from` varchar(255) DEFAULT NULL,
  `transfer_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cvb_employee_tech_verifier_transfer_logs`
--

INSERT INTO `cvb_employee_tech_verifier_transfer_logs` (`id`, `auth_id`, `employee_id`, `transfer_date`, `transfer_from`, `transfer_to`, `created_at`, `updated_at`) VALUES
(1, NULL, '19237', '2025-08-21', '19234', '19244', '2025-08-21 05:33:38', '2025-08-21 05:33:38'),
(2, '19231', '19237', '2025-08-25', '19244', '19234', '2025-08-25 06:22:59', '2025-08-25 06:22:59'),
(3, '19231', '19249', '2025-08-26', '19234', '19244', '2025-08-26 07:29:10', '2025-08-26 07:29:10'),
(4, '19247', '19249', '2025-08-27', '19244', '19234', '2025-08-27 06:26:36', '2025-08-27 06:26:36'),
(5, '19247', '19249', '2025-08-27', '19234', '19244', '2025-08-27 06:28:40', '2025-08-27 06:28:40'),
(6, '19247', '19249', '2025-08-27', '19244', '19234', '2025-08-27 06:30:14', '2025-08-27 06:30:14'),
(7, '19247', '19249', '2025-08-27', '19234', '19244', '2025-08-27 06:31:49', '2025-08-27 06:31:49'),
(8, '19247', '19249', '2025-08-27', '19244', '19234', '2025-08-27 06:32:07', '2025-08-27 06:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_training`
--

DROP TABLE IF EXISTS `cvb_employee_training`;
CREATE TABLE IF NOT EXISTS `cvb_employee_training` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `end_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_of_training` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `training_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_verification_request`
--

DROP TABLE IF EXISTS `cvb_employee_verification_request`;
CREATE TABLE IF NOT EXISTS `cvb_employee_verification_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_requisition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_induction_bage` int NOT NULL DEFAULT '0',
  `site_location_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `courses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contract_holder` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'By Default it is technical verifier\r\n',
  `client_company_medical_verifier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company_hsse__verifier__` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company_technical_verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `badge_operator` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_company_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Contractor Manager',
  `plea_hse_card_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `principal_contractor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_employer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note_for_client_company_verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_card_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_verification_request_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `certificates_fahmin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_update` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `certificates_status_number_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `number_of_required_certificates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plea_hse_card` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `police_certificate_of_good_character` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oil_gas_uk_medical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confined_space_medical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_protection_medical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `respiratory_fit_test` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_medical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `substance_abuse_test_medical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_certificates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_verification_request_display` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notes_for_recruiter_manager` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `groups_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `locations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_verifier_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notes_for_location_approver` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `apply_for_site_access_badge` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_access_approval_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_access_badge_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reason_for_access` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resume_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driving_onsite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `using_respirators` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `entering_confined_spaces` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `defensive_driving_certificate_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `defensive_driving_certificate_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `defensive_driving_certificate_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_license_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_license_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_hse_certificate_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_hse_certificate_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crane_operator_license_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_hse_certificate_expiration_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_response_medical_certificate_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_response_medical_certificate_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_response_medical_certificate_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviewed_by_medical_verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviewed_by_technical_verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviewed_by_hsse__verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `operating_cranes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hazard_identification_certificate_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hazard_identification_certificate_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `risk_assessment_certificate_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `risk_assessment_certificate_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `security_verifier_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviewed_by_security_verifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_induction_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_induction_training_completed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_induction_training_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_cardstatus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_cardexpiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_cardstatus_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_cardrequired_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_card_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `covid_19_vaccination_card` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plnl_caution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expiry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_license_status_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identification_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identificationstatus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identificationexpiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identificationstatus_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identification_required_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identification_approved_expiration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `government_issued_identification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_employee_verification_request`
--

INSERT INTO `cvb_employee_verification_request` (`id`, `employee_status`, `staff_requisition`, `site_induction_bage`, `site_location_id`, `employee_id`, `employee`, `courses`, `employee_profile`, `client_company`, `contract_holder`, `client_company_medical_verifier`, `client_company_hsse__verifier__`, `client_company_technical_verifier`, `badge_operator`, `client_company_user`, `created_by`, `plea_hse_card_required`, `created`, `principal_contractor`, `current_employer`, `note_for_client_company_verifier`, `plea_hse_card_status`, `police_certificate_of_good_character_required`, `police_certificate_of_good_character_status`, `covid_19_vaccination_card_required`, `oil_gas_uk_medical_required`, `oil_gas_uk_medical_status`, `confined_space_medical_required`, `confined_space_medical_status`, `respiratory_protection_medical_required`, `respiratory_protection_medical_status`, `respiratory_fit_test_required`, `respiratory_fit_test_status`, `crane_operator_medical_required`, `crane_operator_medical_status`, `substance_abuse_test_medical_required`, `substance_abuse_test_medical_status`, `technical_certificates_required`, `technical_certificates_status`, `updated_by`, `updated`, `employee_verification_request_name`, `certificates_fahmin`, `plea_hse_card_expiration`, `police_certificate_of_good_character_expiration`, `oil_gas_uk_medical_expiration`, `confined_space_medical_expiration`, `respiratory_protection_medical_expiration`, `respiratory_fit_test_expiration`, `crane_operator_medical_expiration`, `substance_abuse_test_medical_expiration`, `technical_certificates_expiration`, `last_update`, `plea_hse_card_status_number`, `plea_hse_card_required_number`, `police_certificate_of_good_character_status_number`, `police_certificate_of_good_character_required_number`, `oil_gas_uk_medical_status_number`, `oil_gas_uk_medical_required_number`, `confined_space_medical_status_number`, `confined_space_medical_required_number`, `respiratory_protection_medical_status_number`, `respiratory_protection_medical_required_number`, `respiratory_fit_test_status_number`, `respiratory_fit_test_required_number`, `crane_operator_medical_status_number`, `crane_operator_medical_required_number`, `substance_abuse_test_medical_status_number`, `substance_abuse_test_medical_required_number`, `technical_certificates_status_number`, `technical_certificates_required_number`, `certificates_status_number_`, `number_of_required_certificates`, `status`, `plea_hse_card_approved_expiration`, `plea_hse_card`, `police_certificate_of_good_character_approved_expiration`, `police_certificate_of_good_character`, `oil_gas_uk_medical_approved_expiration`, `oil_gas_uk_medical`, `confined_space_medical_approved_expiration`, `confined_space_medical`, `respiratory_protection_medical_approved_expiration`, `respiratory_protection_medical`, `respiratory_fit_test_approved_expiration`, `respiratory_fit_test`, `crane_operator_medical_approved_expiration`, `crane_operator_medical`, `substance_abuse_test_medical_approved_expiration`, `substance_abuse_test_medical`, `technical_certificates_approved_expiration`, `technical_certificates`, `employee_verification_request_display`, `notes_for_recruiter_manager`, `groups_`, `locations`, `technical_verifier_note`, `notes_for_location_approver`, `apply_for_site_access_badge`, `site_access_approval_status`, `site_access_badge_expiration`, `reason_for_access`, `resume_required`, `driving_onsite`, `using_respirators`, `entering_confined_spaces`, `driver_license_required`, `driver_license`, `defensive_driving_certificate_required`, `driver_license_status`, `driver_license_expiration`, `driver_license_approved_expiration`, `driver_license_required_number`, `defensive_driving_certificate_status`, `defensive_driving_certificate_expiration`, `crane_operator_license_required`, `crane_operator_license_status`, `other_hse_certificate_required`, `other_hse_certificate_status`, `crane_operator_license_expiration`, `other_hse_certificate_expiration_`, `emergency_response_medical_certificate_required`, `emergency_response_medical_certificate_status`, `emergency_response_medical_certificate_expiration`, `reviewed_by_medical_verifier`, `reviewed_by_technical_verifier`, `reviewed_by_hsse__verifier`, `operating_cranes`, `hazard_identification_certificate_required`, `hazard_identification_certificate_status`, `risk_assessment_certificate_required`, `risk_assessment_certificate_status`, `security_verifier_notes`, `reviewed_by_security_verifier`, `site_induction_status`, `site_induction_training_completed`, `site_induction_training_expiration`, `active`, `covid_19_vaccination_cardstatus`, `covid_19_vaccination_cardexpiration`, `covid_19_vaccination_cardstatus_number`, `covid_19_vaccination_cardrequired_number`, `covid_19_vaccination_card_approved_expiration`, `covid_19_vaccination_card`, `plnl_caution`, `expiry`, `driver_license_status_number`, `government_issued_identification_required`, `government_issued_identificationstatus`, `government_issued_identificationexpiration`, `government_issued_identificationstatus_number`, `government_issued_identification_required_number`, `government_issued_identification_approved_expiration`, `government_issued_identification`, `created_at`, `updated_at`) VALUES
(1, 'Resident', NULL, 1, '1', '19235', 'Tayyab Ansari', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 00:17:10', '2025-07-22 00:17:10'),
(2, 'Resident', NULL, 1, '1', '19237', 'Vishesh Panwar', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-24 21:19:55', '2025-07-24 21:19:55'),
(3, 'Resident', NULL, 1, '1', '19238', 'Anubhav Panwar', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-30 01:19:17', '2025-07-30 01:19:17'),
(4, 'Resident', NULL, 1, '1', '19240', 'Anubhav Panwar', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Note for Client Company Verifiers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-07 01:49:28', '2025-08-07 01:49:28'),
(5, 'Resident', NULL, 1, '1', '19241', 'Priyansh Panwar', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-07 06:57:36', '2025-08-07 06:57:36'),
(6, 'Resident', NULL, 1, '1', '19242', 'Priyansh Panwar', NULL, NULL, '1', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-07 07:55:16', '2025-08-07 07:55:16'),
(7, 'Resident', NULL, 1, '1', '19243', 'Priyansh Panwar', NULL, NULL, '1', '19244', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-07 10:06:06', '2025-08-07 10:06:06'),
(8, 'Resident', NULL, 1, '1', '19249', 'Arun Kumar', NULL, NULL, '1', '19234', 'Medical Verifier,Medical Verifier two', 'HSE Verifier,HSE Verifier two', NULL, NULL, 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apply for site access badge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-25 21:55:33', '2025-08-25 21:55:33'),
(9, 'Resident', NULL, 1, '', '19253', 'Anubhav Panwar', NULL, NULL, '2', '19234', NULL, NULL, NULL, NULL, 'Anubhav Panwar', '19247', NULL, NULL, NULL, '2', 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-16 00:26:35', '2025-10-16 00:26:35'),
(10, 'Resident', NULL, 1, '2', '19245', 'Visheh Panwar', NULL, NULL, '2', '19234', 'Medical Verifier,Medical Verifier two', 'HSE Verifier,HSE Verifier two', NULL, 'Karthik Deshwal', 'Anubhav Panwar', '19231', NULL, NULL, NULL, '1', 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-30 00:11:22', '2025-10-30 00:11:22'),
(11, 'Resident', NULL, 1, '2', '700812349', 'Test Panwar', NULL, NULL, '2', '19234', 'Medical Verifier,Medical Verifier two', 'HSE Verifier,HSE Verifier two', NULL, 'Karthik Deshwal', 'Mayank Panwar', '19231', NULL, NULL, NULL, '1', 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reason for Access*', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 02:50:58', '2025-12-12 02:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_employee_verification_request_history`
--

DROP TABLE IF EXISTS `cvb_employee_verification_request_history`;
CREATE TABLE IF NOT EXISTS `cvb_employee_verification_request_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Client_Company_Medical_Verifier` text,
  `Client_Company_Medical_Verifier_id` text,
  `Employee` text,
  `employee_id` varchar(1000) NOT NULL,
  `Employee_Profile` text,
  `employee_profile_id` varchar(1000) NOT NULL,
  `Client_Company` text,
  `client_company_id` varchar(1000) NOT NULL,
  `Contract_Holder` text,
  `contract_holder_id` varchar(1000) NOT NULL,
  `Client_Company_HSSE_Verifier` text,
  `Client_Company_HSSE__Verifier__id` varchar(1000) NOT NULL,
  `Client_Company_Technical_Verifier_` text,
  `client_company_technical_verifier_id` text,
  `Client_Company_User` text,
  `Client_Company_User_id` text,
  `Created_by` text,
  `created_by_id` varchar(1000) NOT NULL,
  `Created` text,
  `Principal_Contractor` text,
  `principal_contractor_id` varchar(1000) NOT NULL,
  `Current_Employer` text,
  `current_employer_id` varchar(1000) NOT NULL,
  `Note_for_Client_Company_Verifier` text,
  `PLEA_HSE_Card_required` text,
  `PLEA_HSE_Card_status` text,
  `Police_Certificate_of_Good_Character_Required` text,
  `Police_Certificate_of_Good_Character_Status` text,
  `COVID_19_Vaccination_Card_Required` text,
  `COVID_19_Vaccination_Card_Status` text,
  `Oil__Gas_UK_Medical_Required` text,
  `Oil__Gas_UK_Medical_Status` text,
  `Confined_Space_Medical_Required` text,
  `Confined_Space_Medical_Status` text,
  `Respiratory_Protection_Medical_Required` text,
  `Respiratory_Protection_Medical_Status` text,
  `Respiratory_Fit_Test_Required` text,
  `Respiratory_Fit_Test_Status` text,
  `Crane_Operator_Medical_Required` text,
  `Crane_Operator_Medical_Status` text,
  `Substance_Abuse_Test_Medical__Required` text,
  `Substance_Abuse_Test_Medical_Status` text,
  `Technical_Certificates_Required` text,
  `Technical_Certificates_Status` text,
  `Updated_by` text,
  `updated_by_id` varchar(500) NOT NULL,
  `Updated` text,
  `Employee_Verification_Request_Name` text,
  `Certificates_fahmin` text,
  `certificate_fahmin_id` text,
  `PLEA_HSE_Card_Expiration` text,
  `Police_Certificate_of_Good_Character_Expiration` text,
  `Oil__Gas_UK_Medical_Expiration` text,
  `Confined_Space_Medical_Expiration` text,
  `Respiratory_Protection_Medical_Expiration` text,
  `Respiratory_Fit_Test_Expiration` text,
  `Crane_Operator_Medical_Expiration` text,
  `Substance_Abuse_Test_Medical_Expiration` text,
  `Technical_Certificates_Expiration` text,
  `Last_Update` text,
  `PLEA_HSE_Card_Status_Number` text,
  `PLEA_HSE_Card_Required_Number` text,
  `Police_Certificate_of_Good_Character_Status_Number` text,
  `Police_Certificate_of_Good_Character_required_number` text,
  `Oil__Gas_UK_Medical_status_number` text,
  `Oil__Gas_UK_Medical_required_number` text,
  `Confined_Space_Medical_status_number` text,
  `Confined_Space_Medical_required_number` text,
  `Respiratory_Protection_Medical_status_number` text,
  `Respiratory_Protection_Medical_required_number` text,
  `Respiratory_Fit_Test_status_number` text,
  `Respiratory_Fit_Test_required_number` text,
  `Crane_Operator_Medical_status_number` text,
  `Crane_Operator_Medical_required_number` text,
  `Substance_Abuse_Test_Medical_status_number` text,
  `Substance_Abuse_Test_Medical_required_number` text,
  `Technical_Certificates_status_number` text,
  `Technical_Certificates_required_number` text,
  `Certificates_Status_number_` text,
  `Number_of_Required_Certificates` text,
  `Status` text,
  `PLEA_HSE_Card_approved_expiration` text,
  `PLEA_HSE_Card` text,
  `Police_Certificate_of_Good_Character_approved_expiration` text,
  `Police_Certificate_of_Good_Character` text,
  `Oil_Gas_UK_Medical_approved_expiration` text,
  `Oil_Gas_UK_Medical` text,
  `Confined_Space_Medical_approved_expiration` text,
  `Confined_Space_Medical` text,
  `Respiratory_Protection_Medical_approved_expiration` text,
  `Respiratory_Protection_Medical` text,
  `Respiratory_Fit_Test_approved_expiration` text,
  `Respiratory_Fit_Test` text,
  `Crane_Operator_Medical_approved_expiration` text,
  `Crane_Operator_Medical` text,
  `Substance_Abuse_Test_Medical_approved_expiration` text,
  `Substance_Abuse_Test_Medical` text,
  `Technical_Certificates_approved_expiration` text,
  `Technical_Certificates` text,
  `Employee_Verification_Request_Display` text,
  `Notes_for_Recruiter_Manager` text,
  `Groups` text,
  `groups_id` text,
  `Locations` text,
  `locations_id` text,
  `Technical_Verifier_Note` text,
  `Notes_for_Location_Approver` text,
  `Apply_For_Site_Access_Badge` text,
  `Site_Access_Approval_Status` text,
  `Site_Access_Badge_Expiration` text,
  `Reason_for_Access` text,
  `Resume_Required` text,
  `Driving_Onsite` text,
  `Using_Respirators` text,
  `Entering_Confined_Spaces` text,
  `Driver_License_Required` text,
  `Driver_License` text,
  `Driver_License_Status` text,
  `Driver_License_Expiration` text,
  `Driver_License_approved_expiration` text,
  `Driver_License_Required_Number` text,
  `Defensive_Driving_Certificate_Required` text,
  `Defensive_Driving_Certificate_Status` text,
  `Defensive_Driving_Certificate_Expiration` text,
  `Crane_Operator_License_Required` text,
  `Crane_Operator_License_Status` text,
  `Crane_Operator_License_Expiration` text,
  `Other_HSE_Certificate_Required` text,
  `Other_HSE_Certificate_Status` text,
  `Other_HSE_Certificate_Expiration_` text,
  `Emergency_Response_Medical_Certificate_Required` text,
  `Emergency_Response_Medical_Certificate_Status` text,
  `Emergency_Response_Medical_Certificate_Expiration` text,
  `Reviewed_By_Medical_Verifier` text,
  `reviewed_by_medical_verifier_id` varchar(1000) NOT NULL,
  `Reviewed_By_Technical_Verifier` text,
  `reviewed_by_technical_verifier_id` varchar(500) NOT NULL,
  `Reviewed_By_HSSE_Verifier` text,
  `Reviewed_By_HSSE_Verifier_id` text,
  `Operating_Cranes` text,
  `Hazard_Identification_Certificate_Required` text,
  `Hazard_Identification_Certificate_Status` text,
  `Risk_Assessment_Certificate_Required` text,
  `Risk_Assessment_Certificate_Status` text,
  `Security_Verifier_Notes` text,
  `Reviewed_By_Security_Verifier` text,
  `Reviewed_By_security_Verifier_id` varchar(1000) NOT NULL,
  `Site_Induction_Status` text,
  `Site_Induction_Training_Completed` text,
  `Site_Induction_Training_Expiration` text,
  `Active` text,
  `COVID_19_Vaccination_Card_Expiration` text,
  `COVID_19_Vaccination_Card_Status_Number` text,
  `COVID_19_Vaccination_Card_Required_Number` text,
  `COVID_19_Vaccination_Card_approved_expiration` text,
  `COVID_19_Vaccination_Card` text,
  `PLNL_Caution` text,
  `Expiry` text,
  `Driver_License__Status_number` text,
  `Government_Issued_Identification_Required` text,
  `Government_Issued_Identification__Status` text,
  `Government_Issued_Identification_Expiration` text,
  `Government_Issued_Identification_Status_Number` text,
  `Government_Issued_Identification__Required_Number` text,
  `Government_Issued_Identification_approved_expiration` text,
  `Government_Issued_Identification` text,
  `File` text,
  `File_URL` text,
  `Multiple_Choice` text,
  `Multiple_Choice_2` text,
  `Text_Formula_2` text,
  `Multiple_Choice_4` text,
  `Status_2_Testing` text,
  `VipinLegacy_Mapping` text,
  PRIMARY KEY (`id`),
  KEY `Certificates_fahmin` (`Certificates_fahmin`(200))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_engagements`
--

DROP TABLE IF EXISTS `cvb_engagements`;
CREATE TABLE IF NOT EXISTS `cvb_engagements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_id` text,
  `project_id` text,
  `client_company_id` int DEFAULT NULL,
  `opex_capex_type` text,
  `engagement_type` text,
  `Engagement_title` text,
  `contract_holder` text,
  `contract_title` text,
  `unique_contract_number` text,
  `approve_contract_value` text,
  `currency` text,
  `purchased_order_number` text,
  `contractor` text,
  `contract_manager` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `unique_engagement_id` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_forum`
--

DROP TABLE IF EXISTS `cvb_forum`;
CREATE TABLE IF NOT EXISTS `cvb_forum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `title` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_forum_activities`
--

DROP TABLE IF EXISTS `cvb_forum_activities`;
CREATE TABLE IF NOT EXISTS `cvb_forum_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `likes` int DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `view` int DEFAULT NULL,
  `follow` int DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `forum_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_forum_categories`
--

DROP TABLE IF EXISTS `cvb_forum_categories`;
CREATE TABLE IF NOT EXISTS `cvb_forum_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_groups`
--

DROP TABLE IF EXISTS `cvb_groups`;
CREATE TABLE IF NOT EXISTS `cvb_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` text,
  `group_name` text,
  `client_company` text,
  `type_of_verifier` text,
  `selected_verfiers` text,
  `status` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_groups`
--

INSERT INTO `cvb_groups` (`id`, `created_by`, `group_name`, `client_company`, `type_of_verifier`, `selected_verfiers`, `status`, `updated_at`, `created_at`) VALUES
(1, '18267', 'Badge Ope.', '2', '4', 'Karthik Deshwal', '1', '2025-10-30 00:03:36', '2025-10-30 00:03:36'),
(2, '18267', 'HSE Ver.', '2', '1', 'HSE Verifier,HSE Verifier two', '1', '2025-10-30 00:03:59', '2025-10-30 00:03:59'),
(3, '18267', 'Medical Ver.', '2', '3', 'Medical Verifier,Medical Verifier two', '1', '2025-10-30 00:04:21', '2025-10-30 00:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_hiring_company`
--

DROP TABLE IF EXISTS `cvb_hiring_company`;
CREATE TABLE IF NOT EXISTS `cvb_hiring_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `third_party_medical_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `third_party_training_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `industy_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_manager_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employer_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_hiring_company`
--

INSERT INTO `cvb_hiring_company` (`id`, `contractor_company`, `third_party_medical_id`, `third_party_training_id`, `name`, `logo`, `website`, `industy_id`, `description`, `phone`, `address`, `city`, `region`, `postal_code`, `country_id`, `active_manager_count`, `employer_name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'uploads/upload_file/hiring_company/1753173836.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-21 23:13:56', '2025-07-21 23:13:56'),
(2, '1,2,3', '21', '5', 'Atlantic LNG Company of Trinidad and Tobago', 'https://s3.amazonaws.com/assets.knackhq.com/assets/5f2b34bc92eb840018a929d1/5f2b7d3b7489f806c9e9e61c/original/atlanticlogo.png', 'https://www.atlanticlng.com', '42', 'Atlantic is one of the world’s largest producers of Liquefied Natural Gas (LNG) with an established reputation as a safe and reliable operator.', '+1 (868) 646-2916', 'Princes Court', 'Port-of-Spain', 'Corner Keate and Pembroke Streets', '99999', 'Trinidad and Tobago', NULL, NULL, '1', '2024-02-05 19:29:45', '2024-02-05 19:29:45'),
(3, NULL, NULL, NULL, NULL, 'uploads/upload_file/hiring_company/1732705112.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-27 00:28:32', '2024-11-27 00:28:32'),
(4, '1,2,3', NULL, NULL, 'Updating Succesfully', 'uploads/upload_file/hiring_company/1762147118.jpg', 'www.localcc.com', '1', 'Description', '+1 (123) 134-2232', 'Address', 'City', 'Region', '12345', 'Trinidad and Tobago', NULL, NULL, '0', '2025-11-02 19:48:38', '2025-11-02 19:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_invite_colloborators`
--

DROP TABLE IF EXISTS `cvb_invite_colloborators`;
CREATE TABLE IF NOT EXISTS `cvb_invite_colloborators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` text,
  `sender_email` text,
  `inviter_email` text,
  `inviter_name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_job_posting`
--

DROP TABLE IF EXISTS `cvb_job_posting`;
CREATE TABLE IF NOT EXISTS `cvb_job_posting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `job_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `qualifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `responsibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `application_deadline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `job_post_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_linked_project_and_enagagements`
--

DROP TABLE IF EXISTS `cvb_linked_project_and_enagagements`;
CREATE TABLE IF NOT EXISTS `cvb_linked_project_and_enagagements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` text,
  `engagement_id` text,
  `status` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_lms_course`
--

DROP TABLE IF EXISTS `cvb_lms_course`;
CREATE TABLE IF NOT EXISTS `cvb_lms_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int DEFAULT NULL,
  `client_company` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `course_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_category` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video` mediumtext COLLATE utf8mb4_unicode_ci,
  `time_option` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `certificate` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_lms_course`
--

INSERT INTO `cvb_lms_course` (`id`, `name`, `category`, `client_company`, `description`, `course_code`, `expiration_period`, `price`, `capacity`, `video_category`, `intro_video`, `time_option`, `days`, `certificate_status`, `start_date`, `expiration_date`, `certificate`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Driving Course', 10, 2, 'This desc', 'CS23', '5 year', '30', '50', 'Youtube', 'https://meet.google.com/', NULL, NULL, '1', NULL, NULL, 'Standard', 1, 'https://workforceuploads.s3.us-east-2.amazonaws.com/courses/images/kKk68j3eCWnB7wT51OuijUzavlZIkoOJaA1Xvb71.png', '2025-12-17 02:07:17', '2025-12-17 02:07:25'),
(2, 'Anubhav Panwar', 10, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 'CS23', '2 year', '2333', '50', 'Youtube', 'https://www.youtube.com/watch?v=dummySCADAOilGas', NULL, NULL, '0', NULL, NULL, 'Standard', NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/courses/images/UDqFiIzfZuf33Tv1EhOAnkoiV7a0RkG2fzwnJh3W.png', '2025-12-23 03:35:02', '2025-12-23 03:35:02'),
(3, 'Anubhav 7438574', 10, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 'ER123', '2 year', '40', '50', 'Youtube', 'https://www.youtube.com/watch?v=dummySCADAOilGas', NULL, NULL, '0', NULL, NULL, 'Standard', NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/courses/images/uqqdenJmeMHaDTRXDt958omku92XgW2G8TwqgamM.png', '2025-12-23 03:38:21', '2025-12-23 03:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_lms_course_categories`
--

DROP TABLE IF EXISTS `cvb_lms_course_categories`;
CREATE TABLE IF NOT EXISTS `cvb_lms_course_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` text,
  `parent_category` int DEFAULT NULL,
  `price` text,
  `status` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_lms_course_categories`
--

INSERT INTO `cvb_lms_course_categories` (`id`, `category_name`, `parent_category`, `price`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 'Programming', NULL, '2333', 1, 1, '2025-12-17 02:00:18', '2025-12-17 02:00:18'),
(11, 'Programming', NULL, '2333', 1, 1, '2025-12-17 21:36:57', '2025-12-17 21:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_lms_course_content`
--

DROP TABLE IF EXISTS `cvb_lms_course_content`;
CREATE TABLE IF NOT EXISTS `cvb_lms_course_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int DEFAULT NULL,
  `content_type` varchar(100) DEFAULT NULL,
  `unit_name` varchar(250) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `how_to_complete_it` varchar(250) DEFAULT NULL COMMENT 'with_a_checkbox,with_a_question,with_a_period_of_time',
  `with_a_question_id` int DEFAULT NULL,
  `with_a_period_of_time` varchar(250) DEFAULT NULL,
  `time_unit` varchar(250) DEFAULT NULL,
  `source_of_content` text,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `audio_file` varchar(255) DEFAULT NULL,
  `presentation_file` varchar(255) DEFAULT NULL,
  `video_file` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `added_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `number_attempts` int DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `pass_score_unit` varchar(255) DEFAULT NULL,
  `pass_score` int DEFAULT NULL,
  `test_questions_per_assessment` int UNSIGNED DEFAULT NULL,
  `if_not_passed` tinyint(1) DEFAULT NULL,
  `if_not_passed_action` varchar(255) DEFAULT NULL,
  `show_correct_answer` tinyint(1) DEFAULT NULL,
  `when_passed` varchar(255) DEFAULT NULL,
  `show_given_answers` tinyint(1) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `hide_correct_answers` tinyint(1) DEFAULT NULL,
  `allow_navigation` tinyint(1) DEFAULT NULL,
  `check_answers_first` tinyint(1) DEFAULT NULL,
  `abandon_on_fail` tinyint(1) DEFAULT NULL,
  `require_snapshot` tinyint(1) DEFAULT NULL,
  `require_password` tinyint(1) DEFAULT NULL,
  `max_attempts` int DEFAULT NULL,
  `selected_questions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `question_order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `question_weights` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `answerchosen` tinyint(1) DEFAULT NULL,
  `survey_name` varchar(255) DEFAULT NULL,
  `survey_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `assignment_name` varchar(255) DEFAULT NULL,
  `completion_type` varchar(255) DEFAULT NULL,
  `assignment_details` longtext,
  `start_time` time DEFAULT NULL,
  `test_start_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cvb_lms_course_content`
--

INSERT INTO `cvb_lms_course_content` (`id`, `course_id`, `content_type`, `unit_name`, `question_text`, `how_to_complete_it`, `with_a_question_id`, `with_a_period_of_time`, `time_unit`, `source_of_content`, `content`, `audio_file`, `presentation_file`, `video_file`, `status`, `added_by`, `created_at`, `updated_at`, `test_name`, `number_attempts`, `duration`, `pass_score_unit`, `pass_score`, `test_questions_per_assessment`, `if_not_passed`, `if_not_passed_action`, `show_correct_answer`, `when_passed`, `show_given_answers`, `video_url`, `hide_correct_answers`, `allow_navigation`, `check_answers_first`, `abandon_on_fail`, `require_snapshot`, `require_password`, `max_attempts`, `selected_questions`, `question_order`, `question_weights`, `answerchosen`, `survey_name`, `survey_description`, `assignment_name`, `completion_type`, `assignment_details`, `start_time`, `test_start_time`) VALUES
(115, 1, 'video_content', 'Video', NULL, 'checkbox', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 02:07:55', '2025-12-17 02:07:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://youtu.be/GUUQF1t8ap0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 02:13:08', '2025-12-17 02:13:08', 'TEST5', 3, '5', NULL, 100, 5, NULL, 'if_not_passed', 1, 'When Passed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\\n\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\\n\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\\n\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\\n\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\\n\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\\n\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\\n\"}]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"]', '[14.29,14.29,14.29,14.29,14.29,14.29,14.29]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 02:56:07', '2025-12-17 02:56:07', 'TestMCQ12', 3, '12', NULL, 100, 5, NULL, 'always', 1, 'When Passed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"4\",\"5\",\"6\",\"2\",\"1\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 03:38:17', '2025-12-17 03:38:17', '20 Test', 2, '12', NULL, 100, 5, NULL, 'always', 1, 'When Passed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"6\",\"2\",\"1\",\"5\",\"7\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 03:59:56', '2025-12-17 03:59:56', 'LAST', 1, '3', NULL, 100, 5, NULL, 'if_not_passed', 1, 'When Passed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"4\",\"3\",\"1\",\"6\",\"7\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-17 04:10:50', '2025-12-17 04:10:50', 'New LAST', 3, '12', NULL, 100, 5, NULL, 'if_not_passed', 1, 'When Passed', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"4\",\"5\",\"7\",\"2\",\"1\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-18 04:10:18', '2025-12-18 04:10:18', 'New Test', 3, '10', NULL, 50, 5, NULL, 'always', 0, 'When Passed', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"2\",\"4\",\"1\",\"5\",\"7\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 1, 'test_content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18267, '2025-12-18 04:24:18', '2025-12-18 04:24:18', 'New Test', 3, '10', NULL, 50, 5, NULL, 'always', 0, 'When Passed', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"1\",\"type\":\"Multiple Choice\",\"question\":\"<p>select one option</p>\"},{\"id\":\"2\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select option 2</p>\"},{\"id\":\"3\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 3</p>\"},{\"id\":\"4\",\"type\":\"Multiple Choice\",\"question\":\"<p>select option 4</p>\"},{\"id\":\"5\",\"type\":\"Multiple Choice\",\"question\":\"<p>Select question 5</p>\"},{\"id\":\"6\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 6</p>\"},{\"id\":\"7\",\"type\":\"Multiple Choice\",\"question\":\"<p>select 7</p>\"}]', '[\"4\",\"5\",\"6\",\"1\",\"2\"]', '[20,20,20,20,20]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 1, 'presentation_content', 'Presentation or Document', NULL, 'checkbox', NULL, NULL, NULL, NULL, NULL, NULL, 'https://workforceuploads.s3.us-east-2.amazonaws.com/courses/Antrag_Anubhav_Panwar%20%281%29.pdf', NULL, 1, 19232, '2025-12-18 22:20:25', '2025-12-18 22:20:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cvb_location`
--

DROP TABLE IF EXISTS `cvb_location`;
CREATE TABLE IF NOT EXISTS `cvb_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_company` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_requisition_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `engagement_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `only_status_value` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvb_location`
--

INSERT INTO `cvb_location` (`id`, `location_name`, `client_company`, `staff_requisition_id`, `project_id`, `engagement_id`, `employee_id`, `start_date`, `end_date`, `only_status_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Local Location', '1', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-07-22 05:09:21', '2025-07-22 05:09:21'),
(2, 'USA', '2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-10-30 05:41:01', '2025-10-30 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_message_centers`
--

DROP TABLE IF EXISTS `cvb_message_centers`;
CREATE TABLE IF NOT EXISTS `cvb_message_centers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `read_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `work_group` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `contractor_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_permission`
--

DROP TABLE IF EXISTS `cvb_permission`;
CREATE TABLE IF NOT EXISTS `cvb_permission` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `role_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `route_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `update` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deletion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `readonly` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_projects`
--

DROP TABLE IF EXISTS `cvb_projects`;
CREATE TABLE IF NOT EXISTS `cvb_projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` text,
  `project_type` varchar(255) DEFAULT NULL,
  `contract_projects` varchar(200) DEFAULT NULL,
  `project_title` varchar(255) DEFAULT NULL,
  `project_manager_lead` varchar(255) DEFAULT NULL,
  `project_number` varchar(255) DEFAULT NULL,
  `contract_title` varchar(255) DEFAULT NULL,
  `unique_contract_number` varchar(255) DEFAULT NULL,
  `purchased_order_number` varchar(255) DEFAULT NULL,
  `approved_spend_value` varchar(255) DEFAULT NULL,
  `contractor` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `unique_identification_code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_purchase_order`
--

DROP TABLE IF EXISTS `cvb_purchase_order`;
CREATE TABLE IF NOT EXISTS `cvb_purchase_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_id` text,
  `opex_capex_project` text,
  `enagement_involve` text,
  `purchased_order_number` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `contractor` text,
  `status` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_questions_bank`
--

DROP TABLE IF EXISTS `cvb_questions_bank`;
CREATE TABLE IF NOT EXISTS `cvb_questions_bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_type` text,
  `question` text,
  `mcq_options` text COMMENT ' Option of MCQ''s & for questions ordering',
  `correct_option` text,
  `ordering_options` text COMMENT 'for questions ordering',
  `gaps_option` text COMMENT 'gaps for fill in the gaps',
  `pair_option_1` text COMMENT 'Drag and drop 1',
  `pair_option_2` text COMMENT 'Drag and drop 2',
  `free_text_accumulated_points` text COMMENT 'free text type',
  `free_text_when` text COMMENT 'Free text options',
  `free_text_the_word` text,
  `free_text_points` text,
  `import_type` text COMMENT 'Import sub type',
  `tags` text,
  `course_id` text,
  `status` text,
  `Created_by` text,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `new_course_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_questions_bank`
--

INSERT INTO `cvb_questions_bank` (`id`, `question_type`, `question`, `mcq_options`, `correct_option`, `ordering_options`, `gaps_option`, `pair_option_1`, `pair_option_2`, `free_text_accumulated_points`, `free_text_when`, `free_text_the_word`, `free_text_points`, `import_type`, `tags`, `course_id`, `status`, `Created_by`, `Created_at`, `updated_at`, `new_course_id`) VALUES
(1, 'Multiple Choice', '<p>select one option</p>', 'one,two,three,four', 'one', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:08:50', '2025-12-17 02:08:50', NULL),
(2, 'Multiple Choice', '<p>Select option 2</p>', '1,2,3,4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:09:22', '2025-12-17 02:09:22', NULL),
(3, 'Multiple Choice', '<p>select option 3</p>', '1,2,3,4', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:10:24', '2025-12-17 02:10:24', NULL),
(4, 'Multiple Choice', '<p>select option 4</p>', '1,2,3,4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:10:54', '2025-12-17 02:10:54', NULL),
(5, 'Multiple Choice', '<p>Select question 5</p>', '1,2,5,3', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:11:25', '2025-12-17 02:11:25', NULL),
(6, 'Multiple Choice', '<p>select 6</p>', '1,6,4,7', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:11:53', '2025-12-17 02:11:53', NULL),
(7, 'Multiple Choice', '<p>select 7</p>', '7,1,3,8', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCQ', '1', '1', '18267', '2025-12-17 02:12:22', '2025-12-17 02:12:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cvb_references`
--

DROP TABLE IF EXISTS `cvb_references`;
CREATE TABLE IF NOT EXISTS `cvb_references` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ref_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ref_job_position` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ref_organization` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ref_contact_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ref_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_role_master`
--

DROP TABLE IF EXISTS `cvb_role_master`;
CREATE TABLE IF NOT EXISTS `cvb_role_master` (
  `role_pk` smallint NOT NULL AUTO_INCREMENT,
  `rolename` varchar(64) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by` varchar(64) DEFAULT NULL,
  `updated_by` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_pk`),
  UNIQUE KEY `rolename_UNIQUE` (`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_role_master`
--

INSERT INTO `cvb_role_master` (`role_pk`, `rolename`, `slug`, `created_by`, `updated_by`, `created_at`, `last_updated`, `status`, `updated_at`) VALUES
(1, 'CVB Administrator', 'cvb-administrator', 'CVB Administrator', NULL, '2020-06-20 15:54:55', NULL, 1, '2023-09-19 13:44:15'),
(3, 'Employee', 'employee', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 1, '2023-05-05 13:28:37'),
(4, 'Client Company Manager', 'client-company-manager', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-09-20 11:35:35'),
(5, 'Verifiers', 'verifiers', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 1, '2023-05-05 13:28:37'),
(6, 'Recruiter Company Manager', 'recruiter-company-manager', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-05-05 13:28:37'),
(7, 'Recruiter Company User', 'recruiter-company-user', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-05-05 13:28:37'),
(8, 'Third Party Agent', 'third-party-agent', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-05-05 13:28:37'),
(9, 'CVB Manager', 'cvb-manager', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-05-05 13:28:37'),
(10, 'CVB User', 'cvb-user', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-05-05 13:28:37'),
(15, 'Site Access Approver', 'site-access-approver', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 0, '2023-10-11 04:52:52'),
(16, 'Badging Operator', 'badging-operator', 'CVB Administrator', NULL, '2020-06-21 18:07:07', NULL, 1, '2024-04-16 06:12:10'),
(224, 'Contract Holder', 'contract-holder', 'CVB Administrator', NULL, '2023-09-20 11:35:07', NULL, 0, '2023-09-20 11:35:07'),
(227, 'Contractor Manager', 'contractor-manager', 'CVB Administrator', NULL, '2023-11-10 03:13:22', NULL, 1, '2024-01-04 07:14:19'),
(236, 'LMS Administrator', 'lms-administrator', 'CVB Administrator', NULL, '2025-07-04 10:11:31', NULL, 1, '2025-07-04 10:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_role_master_old`
--

DROP TABLE IF EXISTS `cvb_role_master_old`;
CREATE TABLE IF NOT EXISTS `cvb_role_master_old` (
  `role_pk` smallint NOT NULL AUTO_INCREMENT,
  `rolename` varchar(64) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by` varchar(64) DEFAULT NULL,
  `updated_by` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_pk`),
  UNIQUE KEY `rolename_UNIQUE` (`rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_schedule_training`
--

DROP TABLE IF EXISTS `cvb_schedule_training`;
CREATE TABLE IF NOT EXISTS `cvb_schedule_training` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contract_holder_company_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `staff_requisition_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `employee_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `schedule_type` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `third_party_agent` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_site_inductions`
--

DROP TABLE IF EXISTS `cvb_site_inductions`;
CREATE TABLE IF NOT EXISTS `cvb_site_inductions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_induction` text,
  `employee_id` text,
  `status` int NOT NULL DEFAULT '0',
  `verifier_id` text,
  `contractor_manager` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` text,
  `archived` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_special_activities`
--

DROP TABLE IF EXISTS `cvb_special_activities`;
CREATE TABLE IF NOT EXISTS `cvb_special_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_activity_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `client_company` int DEFAULT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `certificate_category` int DEFAULT NULL,
  `child_standard_qualifications` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_special_activities`
--

INSERT INTO `cvb_special_activities` (`id`, `s_activity_name`, `status`, `client_company`, `certificate_name`, `certificate_category`, `child_standard_qualifications`, `created_at`, `updated_at`) VALUES
(1, 'Local HSE', 1, 2, 'Local HSE Certificate', 70, NULL, '2025-10-30 09:38:27', '2025-07-21 23:36:14'),
(2, 'Local Technical', 1, 2, 'Local Technical Certificate', 72, NULL, '2025-10-30 09:38:06', '2025-07-21 23:36:36'),
(3, 'Local Medical', 1, 2, 'Local Medical Certificate', 71, NULL, '2025-10-30 09:37:56', '2025-07-21 23:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_staff_requisition`
--

DROP TABLE IF EXISTS `cvb_staff_requisition`;
CREATE TABLE IF NOT EXISTS `cvb_staff_requisition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_id` text,
  `contract_holder_company_id` text,
  `engagement_title` text,
  `engagement_number` text COMMENT 'is a foreign key.Engagement id.',
  `contract_manager` text,
  `puchased_order` text,
  `Project` text,
  `job_role` text,
  `quantity` text,
  `Description` text,
  `Additional_skills` text,
  `unique_id` text,
  `selected_hse_verifiers` text,
  `selected_medical_verifiers` text,
  `selected_tech_verifiers` text,
  `site_approver` text,
  `status` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_staff_selection`
--

DROP TABLE IF EXISTS `cvb_staff_selection`;
CREATE TABLE IF NOT EXISTS `cvb_staff_selection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_role_id` text,
  `user_id` text,
  `employee_id` text,
  `staff_requisition_id` text,
  `staff_selection_status` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_standard_qualification`
--

DROP TABLE IF EXISTS `cvb_standard_qualification`;
CREATE TABLE IF NOT EXISTS `cvb_standard_qualification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_qualification_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `client_company` int DEFAULT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `certificate_category` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_standard_qualification`
--

INSERT INTO `cvb_standard_qualification` (`id`, `s_qualification_name`, `status`, `client_company`, `certificate_name`, `certificate_category`, `created_at`, `updated_at`) VALUES
(1, 'SQ Local Medical', 1, 2, 'SQ Local Medical Certificate', 71, '2025-10-30 09:37:42', '2025-07-21 23:38:09'),
(2, 'SQ Local Technical', 1, 2, 'SQ Local Technical Certificate', 72, '2025-10-30 09:37:32', '2025-07-21 23:38:37'),
(3, 'SQ Local HSE', 1, 2, 'SQ Local HSE Certificate', 70, '2025-10-30 09:37:22', '2025-07-21 23:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `cvb_sub_role`
--

DROP TABLE IF EXISTS `cvb_sub_role`;
CREATE TABLE IF NOT EXISTS `cvb_sub_role` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `role_id` text,
  `sub_rolename` text,
  `slug` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvb_sub_role`
--

INSERT INTO `cvb_sub_role` (`id`, `role_id`, `sub_rolename`, `slug`, `created_at`, `updated_at`, `status`) VALUES
(1, '5', 'HSE Verifier', 'hse-verifier', '2023-04-13 12:58:40', NULL, 1),
(2, '5', 'Technical Verifier', 'technical-verifier', '2023-04-13 12:58:40', NULL, 1),
(3, '5', 'Medical Verifier', 'medical-verifier', '2023-04-13 12:58:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cvb_supplier_notice_board`
--

DROP TABLE IF EXISTS `cvb_supplier_notice_board`;
CREATE TABLE IF NOT EXISTS `cvb_supplier_notice_board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `full_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_third_parties_institute_medical`
--

DROP TABLE IF EXISTS `cvb_third_parties_institute_medical`;
CREATE TABLE IF NOT EXISTS `cvb_third_parties_institute_medical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `industy_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_manager_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employer_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_third_parties_institute_training`
--

DROP TABLE IF EXISTS `cvb_third_parties_institute_training`;
CREATE TABLE IF NOT EXISTS `cvb_third_parties_institute_training` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `industy_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_manager_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employer_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_third_party_agent`
--

DROP TABLE IF EXISTS `cvb_third_party_agent`;
CREATE TABLE IF NOT EXISTS `cvb_third_party_agent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `industry_name` text,
  `address` text,
  `phone` text,
  `country` text,
  `status` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_todo_task_list`
--

DROP TABLE IF EXISTS `cvb_todo_task_list`;
CREATE TABLE IF NOT EXISTS `cvb_todo_task_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `assign_to` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '1=pending, 2=completed',
  `completion_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvb__reviews`
--

DROP TABLE IF EXISTS `cvb__reviews`;
CREATE TABLE IF NOT EXISTS `cvb__reviews` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Name` varchar(255) NOT NULL,
  `Name_Title` varchar(255) NOT NULL,
  `Name_First` varchar(255) NOT NULL,
  `Name_Middle` varchar(255) NOT NULL,
  `Name_Last` varchar(255) NOT NULL,
  `Employee_Display_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` text,
  `Auto_Increment` varchar(255) NOT NULL,
  `Auto_Increment_ID` text,
  `User_Status` text,
  `User_Roles` text,
  `Government_Issued_Identification` text,
  `CVB_Identification_Number` text,
  `Phone` text,
  `Address` text,
  `Address_Street_1` text,
  `Address_Street_2` text,
  `Address_City` text,
  `Address_State` text,
  `Address_Zip` text,
  `Address_Country` text,
  `Address_Latitude` text,
  `Address_Longitude` text,
  `Photo` text,
  `Photo_URL` text,
  `Nationality` text,
  `Gender` text,
  `Job_Title` text,
  `Current_Employer` text,
  `Notes` text,
  `Employee_Profile` text,
  `Created_Updated` text,
  `Created_Updated_by` text,
  `Last_Update` varchar(255) NOT NULL,
  `Recruiter_Companies` varchar(255) NOT NULL,
  `Recruiter_Company_Managers` varchar(255) NOT NULL,
  `Client_Companies` varchar(255) NOT NULL,
  `random8_old` varchar(255) NOT NULL,
  `random_8` varchar(255) NOT NULL,
  `Date_of_Birth` varchar(255) NOT NULL,
  `Medicinal_Allergies` varchar(255) NOT NULL,
  `Blood_Type` varchar(255) NOT NULL,
  `Next_of_Kin` varchar(255) NOT NULL,
  `Next_of_Kin_Contact` varchar(255) NOT NULL,
  `Verification_Request_Total` varchar(255) NOT NULL,
  `Verification_Request_Approved` varchar(255) NOT NULL,
  `Verification_Request_Rejected` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Last_Name_Title` varchar(255) NOT NULL,
  `Last_Name_First` varchar(255) NOT NULL,
  `Last_Name_Middle` varchar(255) NOT NULL,
  `Last_Name_Last` varchar(255) NOT NULL,
  `Short_Service_Classification` varchar(255) NOT NULL,
  `Specify_Activities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_alert`
--

DROP TABLE IF EXISTS `employee_alert`;
CREATE TABLE IF NOT EXISTS `employee_alert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `task_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `task_name` varchar(232) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '1=Todo Task\r\n2=supplier Notice Board\r\n3=Forum Module',
  `task_topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `employee_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `user_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_alert`
--

INSERT INTO `employee_alert` (`id`, `task_id`, `task_type`, `task_name`, `task_topic`, `date_time`, `employee_id`, `user_id`, `count`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'evr-request', 'Tayyab Ansari new EVR request', 'EVR Request', '2025-07-22 15:17:17', '19235', '19234,19235', 0, 1, '2025-07-22 05:47:17', '2025-07-22 05:47:17'),
(2, 1, 'course-enroll', 'course-enroll', 'course-enroll', '2025-07-25 11:48:40', '19237', '19231', 0, 1, '2025-07-25 02:18:40', '2025-07-25 02:18:40'),
(3, 2, 'evr-request', 'Vishesh Panwar new EVR request', 'EVR Request', '2025-07-25 12:20:05', '19237', '19234,19237', 0, 1, '2025-07-25 02:50:05', '2025-07-25 02:50:05'),
(4, 1, 'Course Complete', '1', 'Course Complete', '2025-07-28 09:59:02', '19235', '19231', 0, 1, '2025-07-28 00:29:02', '2025-07-28 00:29:02'),
(5, 1, 'course-enroll', 'course-enroll', 'course-enroll', '2025-07-30 16:18:31', '19238', '19231', 0, 1, '2025-07-30 06:48:31', '2025-07-30 06:48:31'),
(6, 2, 'course-enroll', 'course-enroll', 'course-enroll', '2025-07-30 16:18:34', '19238', '19231', 0, 1, '2025-07-30 06:48:34', '2025-07-30 06:48:34'),
(7, 3, 'course-enroll', 'course-enroll', 'course-enroll', '2025-07-30 16:18:36', '19238', '19231', 0, 1, '2025-07-30 06:48:36', '2025-07-30 06:48:36'),
(8, 3, 'evr-request', 'Anubhav Panwar new EVR request', 'EVR Request', '2025-07-30 16:19:32', '19238', '19234,19238', 0, 1, '2025-07-30 06:49:32', '2025-07-30 06:49:32'),
(11, 4, 'evr-request', 'Anubhav Panwar new EVR request', 'EVR Request', '2025-08-07 16:49:37', '19240', '19234,19240', 0, 1, '2025-08-07 07:19:37', '2025-08-07 07:19:37'),
(15, 5, 'evr-request', 'Priyansh Panwar new EVR request', 'EVR Request', '2025-08-07 21:57:43', '19241', '19234,19241', 0, 1, '2025-08-07 12:27:43', '2025-08-07 12:27:43'),
(18, 6, 'evr-request', 'Priyansh Panwar new EVR request', 'EVR Request', '2025-08-07 22:55:25', '19242', '19234,19242', 0, 1, '2025-08-07 13:25:25', '2025-08-07 13:25:25'),
(19, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-08-08 01:05:51', '19243', '19231', 0, 1, '2025-08-07 15:35:51', '2025-08-07 15:35:51'),
(22, 7, 'evr-request', 'Priyansh Panwar new EVR request', 'EVR Request', '2025-08-08 01:06:16', '19243', '19234,19243', 0, 1, '2025-08-07 15:36:16', '2025-08-07 15:36:16'),
(23, 37, 'Course Complete', '37', 'Course Complete', '2025-08-08 01:13:09', '19243', '19231', 0, 1, '2025-08-07 15:43:09', '2025-08-07 15:43:09'),
(24, 15, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-13 19:22:02', '19243', '19231', 0, 1, '2025-08-13 09:52:02', '2025-08-13 09:52:02'),
(25, 7, 'evr-reject', '15', 'EVR Reject', '2025-08-13 19:22:02', '19243', '19231', 0, 1, '2025-08-13 09:52:02', '2025-08-13 09:52:02'),
(26, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-13 19:22:21', '19243', '19231', 0, 1, '2025-08-13 09:52:21', '2025-08-13 09:52:21'),
(27, 19246, '19231', '19246', 'profile-transfer', '2025-08-25 11:16:35', '19245', '1', 0, 1, '2025-08-25 01:46:35', '2025-08-25 01:46:35'),
(28, 4, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-25 11:48:51', '19245', '[\"19247\"]', 0, 1, '2025-08-25 02:18:51', '2025-08-25 02:18:51'),
(29, 2, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-25 11:52:59', '19237', '[19244,19234,19237]', 0, 1, '2025-08-25 02:22:59', '2025-08-25 02:22:59'),
(32, 8, 'evr-request', 'Arun Kumar new EVR request', 'EVR Request', '2025-08-26 12:55:40', '19249', '19234,19249', 0, 1, '2025-08-26 03:25:40', '2025-08-26 03:25:40'),
(33, 3, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-26 12:59:10', '19249', '[19234,19244,19249]', 0, 1, '2025-08-26 03:29:10', '2025-08-26 03:29:10'),
(34, 23, '23', 'New Certificate', 'New Certificate', '2025-08-26 13:00:48', '19249', '19244', 0, 1, '2025-08-26 03:30:48', '2025-08-26 03:30:48'),
(35, 23, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-26 13:00:48', '19249', '0', 0, 1, '2025-08-26 03:30:48', '2025-08-26 03:30:48'),
(36, 5, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-26 17:29:52', '19249', '[\"19247\"]', 0, 1, '2025-08-26 07:59:52', '2025-08-26 07:59:52'),
(37, 4, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-27 11:56:36', '19249', '[19244,19234,19249]', 0, 1, '2025-08-27 02:26:36', '2025-08-27 02:26:36'),
(38, 5, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-27 11:58:40', '19249', '[19234,19244,19249]', 0, 1, '2025-08-27 02:28:40', '2025-08-27 02:28:40'),
(39, 6, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-27 12:00:14', '19249', '[19244,19234,19249]', 0, 1, '2025-08-27 02:30:14', '2025-08-27 02:30:14'),
(40, 7, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-27 12:01:49', '19249', '[19234,19244,19249]', 0, 1, '2025-08-27 02:31:49', '2025-08-27 02:31:49'),
(41, 8, 'verifier-change', 'Technical verifier changed', 'verifier-change', '2025-08-27 12:02:07', '19249', '[19244,19234,19249]', 0, 1, '2025-08-27 02:32:07', '2025-08-27 02:32:07'),
(42, 6, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:07:59', '19249', '[\"19231\"]', 0, 1, '2025-08-27 02:37:59', '2025-08-27 02:37:59'),
(45, 9, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:10:50', '19245', '[\"19231\"]', 0, 1, '2025-08-27 02:40:50', '2025-08-27 02:40:50'),
(46, 10, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:11:43', '19238', '[\"19231\"]', 0, 1, '2025-08-27 02:41:43', '2025-08-27 02:41:43'),
(47, 11, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:15:38', '19245', '[\"19247\"]', 0, 1, '2025-08-27 02:45:38', '2025-08-27 02:45:38'),
(48, 12, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:19:03', '19245', '[\"19231\"]', 0, 1, '2025-08-27 02:49:03', '2025-08-27 02:49:03'),
(49, 13, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 12:22:06', '19249', '[\"19247\"]', 0, 1, '2025-08-27 02:52:06', '2025-08-27 02:52:06'),
(50, 17, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-27 18:33:05', '19249', '19231', 0, 0, '2025-08-27 09:03:05', '2025-08-27 09:17:07'),
(51, 8, 'evr-reject', '17', 'EVR Reject', '2025-08-27 18:33:05', '19249', '19247', 0, 0, '2025-08-27 09:03:05', '2025-08-27 09:17:07'),
(52, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-27 18:33:21', '19249', '19247', 0, 1, '2025-08-27 09:03:21', '2025-08-27 09:03:21'),
(53, 20, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-27 18:33:48', '19249', '19231', 0, 0, '2025-08-27 09:03:48', '2025-08-27 09:17:04'),
(54, 8, 'evr-reject', '20', 'EVR Reject', '2025-08-27 18:33:48', '19249', '19247', 0, 0, '2025-08-27 09:03:48', '2025-08-27 09:17:05'),
(55, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-27 18:34:01', '19249', '19247', 0, 1, '2025-08-27 09:04:01', '2025-08-27 09:04:01'),
(56, 19, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-27 18:34:10', '19249', '19231', 0, 0, '2025-08-27 09:04:10', '2025-08-27 09:17:02'),
(57, 8, 'evr-reject', '19', 'EVR Reject', '2025-08-27 18:34:10', '19249', '19247', 0, 0, '2025-08-27 09:04:10', '2025-08-27 09:17:02'),
(58, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-27 18:34:26', '19249', '19247', 0, 1, '2025-08-27 09:04:26', '2025-08-27 09:04:26'),
(59, 14, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-27 18:45:04', '19249', '[\"19246\"]', 0, 1, '2025-08-27 09:15:04', '2025-08-27 09:15:04'),
(60, 24, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-27 18:47:28', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-27 09:17:28', '2025-08-27 09:17:28'),
(62, 26, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-27 18:47:28', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-27 09:17:28', '2025-08-27 09:17:28'),
(63, 27, '27', 'New Certificate', 'New Certificate', '2025-08-28 13:50:01', '19249', '19234', 0, 1, '2025-08-28 04:20:01', '2025-08-28 04:20:01'),
(64, 28, '28', 'New Certificate', 'New Certificate', '2025-08-28 13:50:01', '19249', '19234', 0, 1, '2025-08-28 04:20:01', '2025-08-28 04:20:01'),
(65, 28, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-28 13:50:01', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-28 04:20:01', '2025-08-28 04:20:01'),
(66, 27, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-28 13:50:01', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-28 04:20:01', '2025-08-28 04:20:01'),
(67, 22, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-28 14:21:54', '19249', '19231', 0, 0, '2025-08-28 04:51:54', '2025-08-28 05:06:09'),
(68, 8, 'evr-reject', '22', 'EVR Reject', '2025-08-28 14:21:54', '19249', '19246', 0, 0, '2025-08-28 04:51:54', '2025-08-28 05:06:09'),
(69, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-28 14:22:13', '19249', '19246', 0, 1, '2025-08-28 04:52:13', '2025-08-28 04:52:13'),
(70, 15, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-08-28 14:30:03', '19249', '[\"19231\"]', 0, 1, '2025-08-28 05:00:03', '2025-08-28 05:00:03'),
(71, 25, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-28 14:30:42', '19249', '19231', 0, 0, '2025-08-28 05:00:42', '2025-08-28 05:05:40'),
(72, 8, 'evr-reject', '25', 'EVR Reject', '2025-08-28 14:30:42', '19249', '19231', 0, 0, '2025-08-28 05:00:42', '2025-08-28 05:05:40'),
(73, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-28 14:31:02', '19249', '19231', 0, 1, '2025-08-28 05:01:02', '2025-08-28 05:01:02'),
(74, 32, '32', 'New Certificate', 'New Certificate', '2025-08-28 16:22:34', '19249', '19234', 0, 1, '2025-08-28 06:52:34', '2025-08-28 06:52:34'),
(75, 33, '33', 'New Certificate', 'New Certificate', '2025-08-28 16:22:34', '19249', '19234', 0, 1, '2025-08-28 06:52:34', '2025-08-28 06:52:34'),
(77, 33, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-28 16:22:34', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-28 06:52:34', '2025-08-28 06:52:34'),
(78, 32, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-28 16:22:34', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-28 06:52:34', '2025-08-28 06:52:34'),
(79, 31, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-29 14:31:37', '19249', '19231', 0, 0, '2025-08-29 05:01:37', '2025-08-29 05:11:23'),
(80, 8, 'evr-reject', '31', 'EVR Reject', '2025-08-29 14:31:37', '19249', '19231', 0, 0, '2025-08-29 05:01:37', '2025-08-29 05:11:23'),
(81, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-29 14:32:09', '19249', '19231', 0, 1, '2025-08-29 05:02:09', '2025-08-29 05:02:09'),
(83, 34, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-29 14:50:54', '19249', '19231', 0, 0, '2025-08-29 05:20:54', '2025-08-29 05:22:05'),
(84, 8, 'evr-reject', '34', 'EVR Reject', '2025-08-29 14:50:54', '19249', '19231', 0, 0, '2025-08-29 05:20:54', '2025-08-29 05:22:05'),
(85, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-29 14:51:14', '19249', '19231', 0, 1, '2025-08-29 05:21:14', '2025-08-29 05:21:14'),
(87, 37, '37', 'New Certificate', 'New Certificate', '2025-08-29 15:12:37', '19249', '19234', 0, 1, '2025-08-29 05:42:37', '2025-08-29 05:42:37'),
(88, 37, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-29 15:12:37', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-29 05:42:37', '2025-08-29 05:42:37'),
(90, 36, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-29 15:26:12', '19249', '19231', 0, 0, '2025-08-29 05:56:12', '2025-08-29 05:59:05'),
(91, 8, 'evr-reject', '36', 'EVR Reject', '2025-08-29 15:26:12', '19249', '19231', 0, 0, '2025-08-29 05:56:12', '2025-08-29 05:59:05'),
(92, NULL, 'SiteAccess', 'SiteAccess', 'SiteAccess', '2025-08-29 15:26:40', '19249', '19231', 0, 1, '2025-08-29 05:56:40', '2025-08-29 05:56:40'),
(93, 35, 'Certificate Reject', 'Upload Again', 'Certificate Rejected', '2025-08-29 15:34:54', '19249', '19231', 0, 0, '2025-08-29 06:04:54', '2025-08-29 06:40:05'),
(94, 8, 'evr-reject', '35', 'EVR Reject', '2025-08-29 15:34:54', '19249', '19231', 0, 0, '2025-08-29 06:04:54', '2025-08-29 06:40:05'),
(95, 39, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-29 18:23:06', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-29 08:53:06', '2025-08-29 08:53:06'),
(96, 38, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-08-29 18:23:06', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-08-29 08:53:06', '2025-08-29 08:53:06'),
(97, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-16 15:26:21', '19253', '19231', 0, 1, '2025-10-16 05:56:21', '2025-10-16 05:56:21'),
(98, 36, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-16 15:26:22', '19253', '19231', 0, 1, '2025-10-16 05:56:22', '2025-10-16 05:56:22'),
(99, 34, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-16 15:26:23', '19253', '19231', 0, 1, '2025-10-16 05:56:23', '2025-10-16 05:56:23'),
(100, 9, 'evr-request', 'Anubhav Panwar new EVR request', 'EVR Request', '2025-10-16 15:26:55', '19253', '19234,19253', 0, 1, '2025-10-16 05:56:55', '2025-10-16 05:56:55'),
(101, 41, '41', 'New Certificate', 'New Certificate', '2025-10-22 12:11:03', '19253', '19234', 0, 1, '2025-10-22 02:41:03', '2025-10-22 02:41:03'),
(102, 42, '42', 'New Certificate', 'New Certificate', '2025-10-22 12:11:03', '19253', '19234', 0, 1, '2025-10-22 02:41:03', '2025-10-22 02:41:03'),
(103, 42, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-10-22 12:11:03', '19253', '0', 0, 1, '2025-10-22 02:41:03', '2025-10-22 02:41:03'),
(104, 41, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-10-22 12:11:03', '19253', '0', 0, 1, '2025-10-22 02:41:03', '2025-10-22 02:41:03'),
(105, 32, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-30 15:05:46', '19245', '19231', 0, 1, '2025-10-30 05:35:46', '2025-10-30 05:35:46'),
(106, 33, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-30 15:05:47', '19245', '19231', 0, 1, '2025-10-30 05:35:47', '2025-10-30 05:35:47'),
(107, 34, 'course-enroll', 'course-enroll', 'course-enroll', '2025-10-30 15:05:47', '19245', '19231', 0, 1, '2025-10-30 05:35:47', '2025-10-30 05:35:47'),
(108, 10, 'evr-request', 'Visheh Panwar new EVR request', 'EVR Request', '2025-10-30 15:11:29', '19245', '19232,19250,19252,19233,19251,19234,19245,19230', 0, 1, '2025-10-30 05:41:29', '2025-10-30 05:41:29'),
(109, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-11-10 10:31:04', '19253', '19231', 0, 1, '2025-11-10 01:01:04', '2025-11-10 01:01:04'),
(110, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-11-10 11:24:06', '19245', '19231', 0, 1, '2025-11-10 01:54:06', '2025-11-10 01:54:06'),
(111, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-11-10 11:25:08', '19249', '19231', 0, 1, '2025-11-10 01:55:08', '2025-11-10 01:55:08'),
(112, 40, '40', 'New Certificate', 'New Certificate', '2025-11-10 11:25:21', '19249', '19234', 0, 1, '2025-11-10 01:55:21', '2025-11-10 01:55:21'),
(113, 40, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-11-10 11:25:21', '19249', '19232,19250,19252,19233,19251,19234', 0, 1, '2025-11-10 01:55:21', '2025-11-10 01:55:21'),
(114, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-11-10 11:27:00', '19253', '19231', 0, 1, '2025-11-10 01:57:00', '2025-11-10 01:57:00'),
(115, 94, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-11-13 12:05:50', '19253', '19231', 0, 1, '2025-11-13 02:35:50', '2025-11-13 02:35:50'),
(116, 93, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-11-13 15:29:03', '19253', '19231', 0, 1, '2025-11-13 05:59:03', '2025-11-13 05:59:03'),
(117, 101, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-11-14 10:53:02', '19253', '19231', 0, 1, '2025-11-14 01:23:02', '2025-11-14 01:23:02'),
(118, 104, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-11-14 11:12:54', '19253', '19231', 0, 1, '2025-11-14 01:42:54', '2025-11-14 01:42:54'),
(119, 48, '48', 'New Certificate', 'New Certificate', '2025-11-27 10:56:23', '19253', '19234', 0, 1, '2025-11-27 01:26:23', '2025-11-27 01:26:23'),
(120, 47, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-11-27 10:56:23', '19253', '0', 0, 1, '2025-11-27 01:26:23', '2025-11-27 01:26:23'),
(121, 48, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-11-27 10:56:23', '19253', '0', 0, 1, '2025-11-27 01:26:23', '2025-11-27 01:26:23'),
(122, 49, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-11-27 10:56:23', '19253', '0', 0, 1, '2025-11-27 01:26:23', '2025-11-27 01:26:23'),
(123, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-12-11 20:11:33', '19249', '19231', 0, 1, '2025-12-11 10:41:33', '2025-12-11 10:41:33'),
(124, 37, 'course-enroll', 'course-enroll', 'course-enroll', '2025-12-11 20:40:30', '19235', '19231', 0, 1, '2025-12-11 11:10:30', '2025-12-11 11:10:30'),
(125, 16, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-12-12 10:36:38', '19235', '[\"19231\"]', 0, 1, '2025-12-12 01:06:38', '2025-12-12 01:06:38'),
(126, 50, 'Reupload', ' expired/rejected certificate re-verification request', 'EVR Request', '2025-12-12 17:38:22', '19253', '0', 0, 1, '2025-12-12 08:08:22', '2025-12-12 08:08:22'),
(127, 17, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-12-12 17:39:03', '19253', '[\"19247\"]', 0, 1, '2025-12-12 08:09:03', '2025-12-12 08:09:03'),
(128, 11, 'evr-request', 'Test Panwar new EVR request', 'EVR Request', '2025-12-12 17:51:07', '700812349', '19232,19250,19252,19233,19251,19234,700812349,19230', 0, 1, '2025-12-12 08:21:07', '2025-12-12 08:21:07'),
(129, 18, 'profile-transfer', 'Profile transferred', 'profile-transfer', '2025-12-12 17:51:31', '700812349', '[\"19231\"]', 0, 1, '2025-12-12 08:21:31', '2025-12-12 08:21:31'),
(130, 110, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-12-16 17:40:32', '19249', '19231', 0, 1, '2025-12-16 08:10:32', '2025-12-16 08:10:32'),
(131, 110, 'Attempts Exceeded', '37', 'Test Attempts Exceeded', '2025-12-16 17:40:36', '19235', '19231', 0, 1, '2025-12-16 08:10:36', '2025-12-16 08:10:36'),
(132, 41, 'course-enroll', 'course-enroll', 'course-enroll', '2025-12-17 16:48:58', '700812349', '19231', 0, 1, '2025-12-17 07:18:58', '2025-12-17 07:18:58'),
(133, 1, 'course-enroll', 'course-enroll', 'course-enroll', '2025-12-17 17:13:49', '700812349', '19231', 0, 1, '2025-12-17 07:43:49', '2025-12-17 07:43:49'),
(134, 116, 'Attempts Exceeded', '1', 'Test Attempts Exceeded', '2025-12-17 20:01:36', '700812349', '19231', 0, 1, '2025-12-17 10:31:36', '2025-12-17 10:31:36'),
(135, 1, 'course-enroll', 'course-enroll', 'course-enroll', '2025-12-17 21:24:09', '19253', '19247', 0, 1, '2025-12-17 11:54:09', '2025-12-17 11:54:09'),
(136, 118, 'Attempts Exceeded', '1', 'Test Attempts Exceeded', '2025-12-17 22:08:43', '700812349', '19231', 0, 1, '2025-12-17 12:38:43', '2025-12-17 12:38:43'),
(137, 116, 'Attempts Exceeded', '1', 'Test Attempts Exceeded', '2025-12-18 18:04:58', '19253', '19247', 0, 1, '2025-12-18 08:34:58', '2025-12-18 08:34:58'),
(138, 118, 'Attempts Exceeded', '1', 'Test Attempts Exceeded', '2025-12-18 18:20:56', '19253', '19247', 0, 1, '2025-12-18 08:50:56', '2025-12-18 08:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_answers`
--

DROP TABLE IF EXISTS `employee_answers`;
CREATE TABLE IF NOT EXISTS `employee_answers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `assignment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcq_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `dragOptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fill_the_gap_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `free_text_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordering` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `marks` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_answers`
--

INSERT INTO `employee_answers` (`id`, `question_id`, `employee_id`, `assignment_file`, `mcq_answer`, `course_id`, `dragOptions`, `fill_the_gap_option`, `status`, `content_id`, `free_text_answer`, `reply`, `answer`, `created_at`, `updated_at`, `ordering`, `content_type`, `question_ids`, `marks`) VALUES
(1, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 02:23:21', '2025-12-17 02:23:21', NULL, NULL, NULL, NULL),
(2, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 02:24:59', '2025-12-17 02:24:59', NULL, NULL, NULL, NULL),
(3, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 03:36:10', '2025-12-17 03:36:10', NULL, NULL, NULL, NULL),
(4, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 03:36:41', '2025-12-17 03:36:41', NULL, NULL, NULL, NULL),
(5, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 04:00:03', '2025-12-17 04:00:03', NULL, NULL, NULL, NULL),
(6, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 04:10:11', '2025-12-17 04:10:11', NULL, NULL, NULL, NULL),
(7, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 04:11:27', '2025-12-17 04:11:27', NULL, NULL, NULL, NULL),
(8, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 05:01:36', '2025-12-17 05:01:36', NULL, NULL, NULL, NULL),
(9, NULL, 700812349, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-17 07:08:43', '2025-12-17 07:08:43', NULL, NULL, NULL, NULL),
(10, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:04:01', '2025-12-18 03:04:01', NULL, NULL, NULL, NULL),
(11, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:04:30', '2025-12-18 03:04:30', NULL, NULL, NULL, NULL),
(12, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:04:58', '2025-12-18 03:04:58', NULL, NULL, NULL, NULL),
(13, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:16:07', '2025-12-18 03:16:07', NULL, NULL, NULL, NULL),
(14, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:17:09', '2025-12-18 03:17:09', NULL, NULL, NULL, NULL),
(15, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 03:20:56', '2025-12-18 03:20:56', NULL, NULL, NULL, NULL),
(16, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 04:11:05', '2025-12-18 04:11:05', NULL, NULL, NULL, NULL),
(17, NULL, 19253, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 04:25:02', '2025-12-18 04:25:02', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `government_issued_identifications`
--

DROP TABLE IF EXISTS `government_issued_identifications`;
CREATE TABLE IF NOT EXISTS `government_issued_identifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_name` varchar(255) DEFAULT NULL,
  `nationality` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `high_risk_tasks`
--

DROP TABLE IF EXISTS `high_risk_tasks`;
CREATE TABLE IF NOT EXISTS `high_risk_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
CREATE TABLE IF NOT EXISTS `industry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Technology', 1, '2025-07-21 23:12:34', '2025-07-21 23:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `lms_certificate_issue`
--

DROP TABLE IF EXISTS `lms_certificate_issue`;
CREATE TABLE IF NOT EXISTS `lms_certificate_issue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `certificate_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_certificate_issue`
--

INSERT INTO `lms_certificate_issue` (`id`, `employee_id`, `issue_date`, `expire_date`, `course_name`, `certificate_id`) VALUES
(24, '19243', '2025-08-07', '2030-08-07', 'Basic Medical Laboratory Testing: Understanding Blood Tests', 'AL323-2508-001'),
(25, '19253', '2025-10-29', '2030-10-29', 'Basic Medical Laboratory Testing: Understanding Blood Tests', 'AL323-2510-001'),
(26, '19253', '2025-10-29', '2030-10-29', 'Basic Medical Laboratory Testing: Understanding Blood Tests', 'AL323-2510-001'),
(27, '19253', '2025-10-29', '2030-10-29', 'Basic Medical Laboratory Testing: Understanding Blood Tests', 'AL323-2510-001');

-- --------------------------------------------------------

--
-- Table structure for table `lms_content_completions`
--

DROP TABLE IF EXISTS `lms_content_completions`;
CREATE TABLE IF NOT EXISTS `lms_content_completions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `course_id` bigint UNSIGNED DEFAULT NULL,
  `content_id` bigint UNSIGNED DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'incomplete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_content_completions`
--

INSERT INTO `lms_content_completions` (`id`, `employee_id`, `course_id`, `content_id`, `content_type`, `created_at`, `updated_at`, `status`) VALUES
(30, 19253, 37, 92, 'test_content', '2025-11-10 00:21:09', '2025-11-10 00:21:09', 'comple'),
(31, 19253, 37, 95, 'video_content', '2025-11-12 22:10:35', '2025-11-12 22:10:35', 'complete'),
(32, 19253, 37, 99, 'audio_content', '2025-11-13 19:51:06', '2025-11-13 19:51:06', 'complete'),
(33, 19253, 37, 101, 'test_content', '2025-11-13 19:53:02', '2025-11-13 19:53:02', 'complete'),
(34, 19253, 37, 103, 'test_content', '2025-11-13 20:09:22', '2025-11-13 20:09:22', 'complete'),
(35, 19235, 37, 111, 'test_content', '2025-12-12 02:59:21', '2025-12-12 02:59:21', 'complete'),
(36, 19235, 37, 109, 'video_content', '2025-12-17 00:48:59', '2025-12-17 00:48:59', 'complete'),
(37, 700812349, 1, 115, 'video_content', '2025-12-17 02:50:18', '2025-12-17 02:50:18', 'complete'),
(38, 700812349, 1, 120, 'test_content', '2025-12-17 04:10:11', '2025-12-17 04:10:11', 'complete'),
(39, 19253, 1, 122, 'test_content', '2025-12-18 04:11:05', '2025-12-18 04:11:05', 'complete'),
(40, 19253, 1, 123, 'test_content', '2025-12-18 04:25:02', '2025-12-18 04:25:02', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `lms_course_completions`
--

DROP TABLE IF EXISTS `lms_course_completions`;
CREATE TABLE IF NOT EXISTS `lms_course_completions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `completion_criteria` enum('all_units','percentage_of_units','selected_units') NOT NULL,
  `percentage_of_units` int DEFAULT NULL,
  `selected_units` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
CREATE TABLE IF NOT EXISTS `nationality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `otp_attempts` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `session_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expiration_status` int NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `phone`, `token`, `otp`, `otp_expires_at`, `otp_attempts`, `session_id`, `created_at`, `expiration_status`) VALUES
(22, 'anubhavpanwar777@gmail.com', NULL, 'fpYKZW6vRr9SYvDB9VScz2ojgBKAiq73wjoLCsO7', NULL, NULL, 0, NULL, '2025-11-19 04:42:09', 0),
(23, 'apanwar@cvbtt.com', '+919027653412', NULL, '$2y$12$rh7J5jOrZVjJXXn3QdiMt.GIAU2iUEskTN8B6bNVvYnm956VAb/Uu', '2025-11-20 02:12:03', 0, 'RB58X6ajSwfQHC40wr3AaL65qJMBclp2zlt8NMfT', '2025-11-20 02:09:03', 0),
(24, 'anubhavpanwar66@gmail.com', NULL, 'COfVqg5VQfQNKizgHzxztDDMdrqlRmfInMgEE0u0', NULL, NULL, 0, NULL, '2025-12-04 00:46:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kzoomVIXR9lXlpe30NBMKI3PqvxMr3BWbfn4UawO', 18267, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic0xrTTlrQ2lWNVNqRXFWTFp0Uk5PNmhMaElvYjFNcDIxUXNTRTdkZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHA6Ly9sb2NhbGhvc3QvY3ZiL0F0bGFudGljLVNpdGVBc3N1cmVkL2xtcy9jb3Vyc2UvdGVzdC1jb250ZW50L2NyZWF0ZS8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTgyNjc7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQvTWtJeWNIY2xjS29ZaE1nSHNrRkUudHBieTZZN1hwLzRPSVBMa2p5ZDduOW10Z3ZUdDkzRyI7fQ==', 1766560251),
('DeKgRI98qc6xFm4LvupQhuQGI5vZYM9OTOqjCos0', 19253, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTEtxS1FUOUgydVczVUVETEx1bmlabGVHVXFIZTlRVkYzZmV6V0ZOMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly9sb2NhbGhvc3QvY3ZiL0F0bGFudGljLVNpdGVBc3N1cmVkL2VtcGxveWVlL2Fzc2lnbmVkX2NvdXJzZXMvdmlkZW8vMTE1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTkyNTM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQvTWtJeWNIY2xjS29ZaE1nSHNrRkUudHBieTZZN1hwLzRPSVBMa2p5ZDduOW10Z3ZUdDkzRyI7fQ==', 1766561553);

-- --------------------------------------------------------

--
-- Table structure for table `site_access_user_locations`
--

DROP TABLE IF EXISTS `site_access_user_locations`;
CREATE TABLE IF NOT EXISTS `site_access_user_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location` text,
  `user_id` text,
  `location_approval_date` text,
  `application_for_verification_date` text,
  `employee_name` text,
  `site_access_badge_expiration` text,
  `client_company_technical_verifier` text,
  `site_access_approval_status_by_technical_verifier` text,
  `client_company` text,
  `technical_verifier_note_for_site_access` text,
  `location_approver_permission` text,
  `contractor_company` text,
  `location_approved_status` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_clearance`
--

DROP TABLE IF EXISTS `site_clearance`;
CREATE TABLE IF NOT EXISTS `site_clearance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_logs`
--

DROP TABLE IF EXISTS `test_logs`;
CREATE TABLE IF NOT EXISTS `test_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `employee_answer` text,
  `course_id` int DEFAULT NULL,
  `question_status` text,
  `content_id` int DEFAULT NULL,
  `status` enum('passed','failed','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `marks` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `question_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_logs`
--

INSERT INTO `test_logs` (`id`, `employee_id`, `employee_answer`, `course_id`, `question_status`, `content_id`, `status`, `marks`, `created_at`, `question_id`, `updated_at`) VALUES
(1, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"}]', 1, 'passed', 100, '2025-07-22 00:26:07', NULL, '2025-07-22 00:26:07'),
(2, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"}]', 2, 'passed', 100, '2025-07-22 20:50:44', NULL, '2025-07-22 20:50:44'),
(3, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"correct\"}]', 3, 'passed', 100, '2025-07-22 21:03:52', NULL, '2025-07-22 21:03:52'),
(4, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"correct\"}]', 4, 'passed', 100, '2025-07-22 21:08:38', NULL, '2025-07-22 21:08:38'),
(5, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"correct\"}]', 5, 'passed', 100, '2025-07-22 21:14:01', NULL, '2025-07-22 21:14:01'),
(6, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"}]', 6, 'passed', 100, '2025-07-22 21:16:02', NULL, '2025-07-22 21:16:02'),
(7, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 7, 'passed', 100, '2025-07-22 21:17:26', NULL, '2025-07-22 21:17:26'),
(8, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 8, 'passed', 100, '2025-07-22 21:23:43', NULL, '2025-07-22 21:23:43'),
(9, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 9, 'passed', 100, '2025-07-22 21:26:35', NULL, '2025-07-22 21:26:35'),
(10, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 10, 'passed', 100, '2025-07-22 21:28:47', NULL, '2025-07-22 21:28:47'),
(11, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 11, 'passed', 100, '2025-07-22 21:36:09', NULL, '2025-07-22 21:36:09'),
(12, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"false\"}]', 12, 'failed', 0, '2025-07-22 22:07:30', NULL, '2025-07-22 22:07:30'),
(13, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"}]', 15, 'passed', 100, '2025-07-23 20:11:49', NULL, '2025-07-23 20:11:49'),
(14, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"}]', 16, 'passed', 100, '2025-07-23 20:19:01', NULL, '2025-07-23 20:19:01'),
(15, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"}]', 17, 'passed', 100, '2025-07-23 20:27:46', NULL, '2025-07-23 20:27:46'),
(16, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 18, 'passed', 100, '2025-07-23 20:30:04', NULL, '2025-07-23 20:30:04'),
(17, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"}]', 19, 'passed', 100, '2025-07-23 20:33:40', NULL, '2025-07-23 20:33:40'),
(18, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"}]', 20, 'passed', 100, '2025-07-23 20:40:35', NULL, '2025-07-23 20:40:35'),
(19, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"}]', 21, 'passed', 100, '2025-07-23 20:48:45', NULL, '2025-07-23 20:48:45'),
(20, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"}]', 22, 'passed', 100, '2025-07-23 20:57:53', NULL, '2025-07-23 20:57:53'),
(21, 19235, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"}]', 23, 'passed', 100, '2025-07-23 21:06:29', NULL, '2025-07-23 21:06:29'),
(22, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"correct\"}]', 24, 'passed', 100, '2025-07-23 21:11:12', NULL, '2025-07-23 21:11:12'),
(23, 19235, '{\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":3,\"is_correct\":\"correct\"}]', 25, 'passed', 100, '2025-07-23 21:12:34', NULL, '2025-07-23 21:12:34'),
(24, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"}]', 26, 'passed', 100, '2025-07-24 01:05:54', NULL, '2025-07-24 01:05:54'),
(25, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"extends\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"new\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"}]', 27, 'passed', 100, '2025-07-27 18:38:07', NULL, '2025-07-27 18:38:07'),
(26, 19235, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"int arr[] = new int[5];\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"}]', 28, 'passed', 100, '2025-07-27 18:59:02', NULL, '2025-07-27 18:59:02'),
(27, 19240, '{\"47\":{\"question_id\":\"47\",\"answer\":\"[\\\"Safety Helmet\\\"]\",\"question_type\":\"Multiple Choice\"},\"48\":{\"question_id\":\"48\",\"answer\":\"[\\\"Personal\\\"]\",\"question_type\":\"Fill the Gap\"},\"49\":{\"question_id\":\"49\",\"answer\":\"[\\\"Elimination\\\",\\\"Substitution\\\",\\\"Engineering Controls\\\",\\\"Administrative Controls\\\",\\\"PPE\\\"]\",\"question_type\":\"Ordering\"}}', 34, '[{\"question_id\":47,\"is_correct\":\"correct\"},{\"question_id\":48,\"is_correct\":\"false\"},{\"question_id\":49,\"is_correct\":\"false\"}]', 47, 'failed', 33, '2025-08-07 01:55:10', NULL, '2025-08-07 01:55:10'),
(28, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU (Remote Terminal Unit)\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"false\"},{\"question_id\":54,\"is_correct\":\"false\"}]', 53, 'failed', 33, '2025-08-07 02:01:01', NULL, '2025-08-07 02:01:01'),
(29, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU (Remote Terminal Unit)\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"false\"},{\"question_id\":54,\"is_correct\":\"correct\"}]', 53, 'failed', 67, '2025-08-07 02:30:12', NULL, '2025-08-07 02:30:12'),
(30, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU (Remote Terminal Unit)\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"false\"},{\"question_id\":54,\"is_correct\":\"correct\"}]', 53, 'failed', 67, '2025-08-07 02:41:53', NULL, '2025-08-07 02:41:53'),
(31, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU (Remote Terminal Unit)\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"correct\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 80, '2025-08-07 02:46:38', NULL, '2025-08-07 02:46:38'),
(32, 19240, '{\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 20, '2025-08-07 02:46:38', NULL, '2025-08-07 02:46:38'),
(33, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"false\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 60, '2025-08-07 02:48:35', NULL, '2025-08-07 02:48:35'),
(34, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"false\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 60, '2025-08-07 03:02:22', NULL, '2025-08-07 03:02:22'),
(35, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"correct\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 80, '2025-08-07 03:14:21', NULL, '2025-08-07 03:14:21'),
(36, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"correct\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 80, '2025-08-07 04:43:38', NULL, '2025-08-07 04:43:38'),
(37, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Remote data acquisition\\\",\\\"Interface for human operators\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 20, '2025-08-07 04:44:34', NULL, '2025-08-07 04:44:34'),
(38, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Remote data acquisition\\\",\\\"Interface for human operators\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"rfe\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"false\"}]', 55, 'failed', 0, '2025-08-07 04:47:54', NULL, '2025-08-07 04:47:54'),
(39, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Remote data acquisition\\\",\\\"Local control logic execution\\\",\\\"Interface for human operators\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy,hazardous\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 20, '2025-08-07 04:48:21', NULL, '2025-08-07 04:48:21'),
(40, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 20, '2025-08-07 04:54:51', NULL, '2025-08-07 04:54:51'),
(41, 19240, '{\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'failed', 40, '2025-08-07 04:58:20', NULL, '2025-08-07 04:58:20'),
(42, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"false\"}]', 55, 'failed', 0, '2025-08-07 04:59:37', NULL, '2025-08-07 04:59:37'),
(43, 19240, '{\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":55,\"is_correct\":\"correct\"},{\"question_id\":56,\"is_correct\":\"false\"}]', 55, 'failed', 20, '2025-08-07 05:01:19', NULL, '2025-08-07 05:01:19'),
(44, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"correct\"},{\"question_id\":53,\"is_correct\":\"correct\"},{\"question_id\":54,\"is_correct\":\"correct\"},{\"question_id\":55,\"is_correct\":\"correct\"},{\"question_id\":56,\"is_correct\":\"correct\"}]', 55, 'passed', 100, '2025-08-07 05:04:25', NULL, '2025-08-07 05:04:25'),
(45, 19240, '{\"52\":{\"question_id\":\"52\",\"answer\":\"[\\\"System Control And Direct Access\\\"]\",\"question_type\":\"Multiple Choice\"},\"53\":{\"question_id\":\"53\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"54\":{\"question_id\":\"54\",\"answer\":\"[\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\",\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\"]\",\"question_type\":\"Ordering\"},\"55\":{\"question_id\":\"55\",\"answer\":\"[\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\",\\\"Local control logic execution\\\"]\",\"question_type\":\"Drag-Drop\"},\"56\":{\"question_id\":\"56\",\"answer\":\"g\",\"question_type\":\"Free-Text\"}}', 35, '[{\"question_id\":52,\"is_correct\":\"false\"},{\"question_id\":53,\"is_correct\":\"correct\"},{\"question_id\":54,\"is_correct\":\"false\"},{\"question_id\":55,\"is_correct\":\"false\"},{\"question_id\":56,\"is_correct\":\"false\"}]', 55, 'failed', 20, '2025-08-07 05:05:07', NULL, '2025-08-07 05:05:07'),
(46, 19241, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"}]', 61, 'failed', 40, '2025-08-07 07:22:19', NULL, '2025-08-07 07:22:19'),
(47, 19241, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"PLC=>Local control logic execution\\\",\\\"HMI=>Interface for human operators\\\",\\\"RTU=>Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 61, 'passed', 80, '2025-08-07 07:28:26', NULL, '2025-08-07 07:28:26'),
(48, 19241, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"PLC=>Local control logic execution\\\",\\\"HMI=>Interface for human operators\\\",\\\"RTU=>Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 61, 'passed', 80, '2025-08-07 07:29:36', NULL, '2025-08-07 07:29:36'),
(49, 19241, '{\"47\":{\"question_id\":\"47\",\"answer\":\"[\\\"Safety Helmet\\\"]\",\"question_type\":\"Multiple Choice\"},\"48\":{\"question_id\":\"48\",\"answer\":\"[\\\"Personal\\\"]\",\"question_type\":\"Fill the Gap\"},\"49\":{\"question_id\":\"49\",\"answer\":\"[\\\"Engineering Controls\\\",\\\"Elimination\\\",\\\"Substitution\\\",\\\"Administrative Controls\\\",\\\"PPE\\\"]\",\"question_type\":\"Ordering\"}}', 34, '[{\"question_id\":47,\"is_correct\":\"correct\"},{\"question_id\":48,\"is_correct\":\"correct\"},{\"question_id\":49,\"is_correct\":\"false\"}]', 47, 'failed', 67, '2025-08-07 07:33:38', NULL, '2025-08-07 07:33:38'),
(50, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Remote data acquisition\\\",\\\"Interface for human operators\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"klkl\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"false\"},{\"question_id\":59,\"is_correct\":\"false\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 63, 'failed', 20, '2025-08-07 08:00:53', NULL, '2025-08-07 08:00:53'),
(51, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Structured Control And Device Automation\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"false\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 63, 'failed', 60, '2025-08-07 08:11:27', NULL, '2025-08-07 08:11:27'),
(52, 19242, '{\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":61,\"is_correct\":\"correct\"}]', 63, 'failed', 20, '2025-08-07 08:12:29', NULL, '2025-08-07 08:12:29'),
(53, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 63, 'passed', 80, '2025-08-07 08:13:33', NULL, '2025-08-07 08:13:33'),
(54, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Automation\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Operators receive data on HMI\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Field devices collect data\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"hjfshdl\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"false\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"false\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 64, 'failed', 20, '2025-08-07 08:22:04', NULL, '2025-08-07 08:22:04'),
(55, 19242, '{\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"jk\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 64, 'failed', 0, '2025-08-07 08:25:39', NULL, '2025-08-07 08:25:39'),
(56, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 65, 'failed', 80, '2025-08-07 08:30:12', NULL, '2025-08-07 08:30:12'),
(57, 19242, '{\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"q\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":60,\"is_correct\":\"correct\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 65, 'failed', 20, '2025-08-07 08:36:34', NULL, '2025-08-07 08:36:34'),
(58, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"correct\"},{\"question_id\":61,\"is_correct\":\"correct\"}]', 65, 'passed', 100, '2025-08-07 08:37:50', NULL, '2025-08-07 08:37:50'),
(59, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"false\"},{\"question_id\":59,\"is_correct\":\"false\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 69, 'failed', 20, '2025-08-07 09:24:01', NULL, '2025-08-07 09:24:01'),
(60, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"false\"},{\"question_id\":59,\"is_correct\":\"false\"},{\"question_id\":60,\"is_correct\":\"false\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 70, 'failed', 20, '2025-08-07 09:26:53', NULL, '2025-08-07 09:26:53'),
(61, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"correct\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 70, 'failed', 80, '2025-08-07 09:35:26', NULL, '2025-08-07 09:35:26'),
(62, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"58\":{\"question_id\":\"58\",\"answer\":\"[\\\"RTU\\\"]\",\"question_type\":\"Fill the Gap\"},\"59\":{\"question_id\":\"59\",\"answer\":\"[\\\"Field devices collect data\\\",\\\"RTUs send data to central server\\\",\\\"SCADA processes data\\\",\\\"Operators receive data on HMI\\\"]\",\"question_type\":\"Ordering\"},\"60\":{\"question_id\":\"60\",\"answer\":\"[\\\"Local control logic execution\\\",\\\"Interface for human operators\\\",\\\"Remote data acquisition\\\"]\",\"question_type\":\"Drag-Drop\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":58,\"is_correct\":\"correct\"},{\"question_id\":59,\"is_correct\":\"correct\"},{\"question_id\":60,\"is_correct\":\"correct\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 70, 'failed', 80, '2025-08-07 09:42:29', NULL, '2025-08-07 09:42:29'),
(63, 19242, '{\"57\":{\"question_id\":\"57\",\"answer\":\"[\\\"Supervisory Control And Data Acquisition\\\"]\",\"question_type\":\"Multiple Choice\"},\"61\":{\"question_id\":\"61\",\"answer\":\"Redundancy ensures system reliability and availability, preventing data loss or control failure during critical operations in hazardous environments.\",\"question_type\":\"Free-Text\"}}', 36, '[{\"question_id\":57,\"is_correct\":\"correct\"},{\"question_id\":61,\"is_correct\":\"false\"}]', 72, 'passed', 100, '2025-08-07 09:47:55', NULL, '2025-08-07 09:47:55'),
(64, 19243, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"Blood Urea Nitrogen (BUN)\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Identify patient\\\",\\\"Apply tourniquet\\\",\\\"Insert needle\\\",\\\"Collect sample in tube\\\"]\",\"question_type\":\"Ordering\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"correct\"},{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":64,\"is_correct\":\"correct\"}]', 75, 'passed', 100, '2025-08-07 10:13:09', NULL, '2025-08-07 10:13:09'),
(65, 19243, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"Blood Urea Nitrogen (BUN)\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Identify patient\\\",\\\"Apply tourniquet\\\",\\\"Insert needle\\\",\\\"Collect sample in tube\\\"]\",\"question_type\":\"Ordering\"},\"65\":{\"question_id\":\"65\",\"answer\":\"[\\\"Blood cell counts\\\",\\\"Liver enzyme levels\\\"]\",\"question_type\":\"Drag-Drop\"},\"66\":{\"question_id\":\"66\",\"answer\":\"Fasting helps prevent food from affecting the levels of glucose, lipids, and other substances, ensuring more accurate test results.\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"correct\"},{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":65,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"correct\"}]', 81, 'passed', 100, '2025-08-07 12:09:37', NULL, '2025-08-07 12:09:37'),
(66, 19253, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Collect sample in tube\\\",\\\"Identify patient\\\",\\\"Apply tourniquet\\\",\\\"Insert needle\\\"]\",\"question_type\":\"Ordering\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":64,\"is_correct\":\"correct\"}]', 75, 'failed', 67, '2025-10-22 22:53:42', NULL, '2025-10-22 22:53:42'),
(67, 19253, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"Blood Urea Nitrogen (BUN)\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Collect sample in tube\\\",\\\"Apply tourniquet\\\",\\\"Insert needle\\\",\\\"Identify patient\\\"]\",\"question_type\":\"Ordering\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"correct\"},{\"question_id\":63,\"is_correct\":\"false\"},{\"question_id\":64,\"is_correct\":\"correct\"}]', 75, 'failed', 67, '2025-10-22 22:54:15', NULL, '2025-10-22 22:54:15'),
(68, 19253, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Collect sample in tube\\\",\\\"Identify patient\\\",\\\"Apply tourniquet\\\",\\\"Insert needle\\\"]\",\"question_type\":\"Ordering\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":63,\"is_correct\":\"false\"},{\"question_id\":64,\"is_correct\":\"correct\"}]', 75, 'failed', 33, '2025-10-22 22:54:44', NULL, '2025-10-22 22:54:44'),
(69, 19253, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"Blood Urea Nitrogen (BUN)\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Insert needle\\\",\\\"Apply tourniquet\\\",\\\"Identify patient\\\",\\\"Collect sample in tube\\\"]\",\"question_type\":\"Ordering\"},\"65\":{\"question_id\":\"65\",\"answer\":\"[\\\"Liver enzyme levels\\\",\\\"Blood cell counts\\\"]\",\"question_type\":\"Drag-Drop\"},\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"correct\"},{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":65,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"false\"}]', 81, 'passed', 80, '2025-10-28 05:06:53', NULL, '2025-10-28 05:06:53'),
(70, 19253, '{\"65\":{\"question_id\":\"65\",\"answer\":\"[\\\"Liver enzyme levels\\\",\\\"Blood cell counts\\\"]\",\"question_type\":\"Drag-Drop\"},\"66\":{\"question_id\":\"66\",\"answer\":\"i dont know\",\"question_type\":\"Free-Text\"},\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Adrenaline\\\"]\",\"question_type\":\"Multiple Choice\"},\"630\":{\"question_id\":\"630\",\"answer\":\"[\\\"Vitamin K\\\"]\",\"question_type\":\"Multiple Choice\"},\"670\":{\"question_id\":\"670\",\"answer\":\"[\\\"60\\u2013100 bpm\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":65,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"false\"},{\"question_id\":74,\"is_correct\":\"false\"},{\"question_id\":630,\"is_correct\":\"correct\"},{\"question_id\":670,\"is_correct\":\"correct\"}]', 89, 'passed', 60, '2025-11-09 19:33:38', NULL, '2025-11-09 19:33:38'),
(71, 19253, '{\"670\":{\"question_id\":\"670\",\"answer\":\"[\\\"60\\u2013100 bpm\\\"]\",\"question_type\":\"Multiple Choice\"},\"710\":{\"question_id\":\"710\",\"answer\":\"[\\\"Cerebellum\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":670,\"is_correct\":\"correct\"},{\"question_id\":710,\"is_correct\":\"correct\"}]', 90, 'passed', 100, '2025-11-09 19:35:14', NULL, '2025-11-09 19:35:14'),
(72, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"I dont know\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 91, 'failed', 0, '2025-11-09 19:37:16', NULL, '2025-11-09 19:37:16'),
(78, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Required words: glucose (2 pts), lipids (8 pts) | Total needed: 8 points\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"correct\"}]', 92, 'passed', 100, '2025-11-10 00:21:09', NULL, '2025-11-10 00:21:09'),
(77, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 92, 'failed', 0, '2025-11-10 00:20:52', NULL, '2025-11-10 00:20:52'),
(87, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 101, 'failed', 0, '2025-11-13 19:52:40', NULL, '2025-11-13 19:52:40'),
(85, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"asnm\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 93, 'failed', 0, '2025-11-13 00:28:42', NULL, '2025-11-13 00:28:42'),
(86, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"sdfghgsdt\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 93, 'failed', 0, '2025-11-13 00:29:03', NULL, '2025-11-13 00:29:03'),
(81, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 94, 'failed', 0, '2025-11-12 20:59:00', NULL, '2025-11-12 20:59:00');
INSERT INTO `test_logs` (`id`, `employee_id`, `employee_answer`, `course_id`, `question_status`, `content_id`, `status`, `marks`, `created_at`, `question_id`, `updated_at`) VALUES
(83, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 94, 'failed', 0, '2025-11-12 21:05:24', NULL, '2025-11-12 21:05:24'),
(84, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"false\"}]', 94, 'failed', 0, '2025-11-12 21:05:50', NULL, '2025-11-12 21:05:50'),
(88, 19253, '{\"66\":{\"question_id\":\"66\",\"answer\":\"Required words: glucose (2 pts), lipids (8 pts) | Total needed: 8 points\",\"question_type\":\"Free-Text\"}}', 37, '[{\"question_id\":66,\"is_correct\":\"correct\"}]', 101, 'passed', 100, '2025-11-13 19:53:02', NULL, '2025-11-13 19:53:02'),
(89, 19253, '{\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Adrenaline\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":74,\"is_correct\":\"false\"}]', 103, 'failed', 0, '2025-11-13 20:09:06', NULL, '2025-11-13 20:09:06'),
(90, 19253, '{\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Insulin\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":74,\"is_correct\":\"correct\"}]', 103, 'passed', 100, '2025-11-13 20:09:22', NULL, '2025-11-13 20:09:22'),
(91, 19253, '{\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Thyroxine\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":74,\"is_correct\":\"false\"}]', 104, 'failed', 0, '2025-11-13 20:12:38', NULL, '2025-11-13 20:12:38'),
(92, 19253, '{\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Thyroxine\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":74,\"is_correct\":\"false\"}]', 104, 'failed', 0, '2025-11-13 20:12:54', NULL, '2025-11-13 20:12:54'),
(93, 19249, '{\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"65\":{\"question_id\":\"65\",\"answer\":\"[\\\"Blood cell counts\\\",\\\"Liver enzyme levels\\\"]\",\"question_type\":\"Drag-Drop\"},\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"},\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Insulin\\\"]\",\"question_type\":\"Multiple Choice\"},\"75\":{\"question_id\":\"75\",\"answer\":\"[\\\"Coronary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"630\":{\"question_id\":\"630\",\"answer\":\"[\\\"Vitamin K\\\"]\",\"question_type\":\"Multiple Choice\"},\"640\":{\"question_id\":\"640\",\"answer\":\"[\\\"Transport oxygen\\\"]\",\"question_type\":\"Multiple Choice\"},\"650\":{\"question_id\":\"650\",\"answer\":\"[\\\"Pancreas\\\"]\",\"question_type\":\"Multiple Choice\"},\"680\":{\"question_id\":\"680\",\"answer\":\"[\\\"Glucose\\\"]\",\"question_type\":\"Multiple Choice\"},\"690\":{\"question_id\":\"690\",\"answer\":\"[\\\"B lymphocytes\\\"]\",\"question_type\":\"Multiple Choice\"},\"730\":{\"question_id\":\"730\",\"answer\":\"[\\\"Iron\\\"]\",\"question_type\":\"Multiple Choice\"},\"790\":{\"question_id\":\"790\",\"answer\":\"[\\\"Hinge joint\\\"]\",\"question_type\":\"Multiple Choice\"},\"801\":{\"question_id\":\"801\",\"answer\":\"[\\\"36.5\\u201337.5\\u00b0C\\\"]\",\"question_type\":\"Multiple Choice\"},\"803\":{\"question_id\":\"803\",\"answer\":\"[\\\"Retina\\\"]\",\"question_type\":\"Multiple Choice\"},\"6690\":{\"question_id\":\"6690\",\"answer\":\"[\\\"O negative\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":65,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"false\"},{\"question_id\":74,\"is_correct\":\"correct\"},{\"question_id\":75,\"is_correct\":\"correct\"},{\"question_id\":630,\"is_correct\":\"correct\"},{\"question_id\":640,\"is_correct\":\"correct\"},{\"question_id\":650,\"is_correct\":\"correct\"},{\"question_id\":680,\"is_correct\":\"false\"},{\"question_id\":690,\"is_correct\":\"correct\"},{\"question_id\":730,\"is_correct\":\"correct\"},{\"question_id\":790,\"is_correct\":\"false\"},{\"question_id\":801,\"is_correct\":\"correct\"},{\"question_id\":803,\"is_correct\":\"false\"},{\"question_id\":6690,\"is_correct\":\"correct\"}]', 108, 'failed', 42, '2025-12-11 05:38:54', NULL, '2025-12-11 05:38:54'),
(94, 19235, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"Blood Urea Nitrogen (BUN)\\\"]\",\"question_type\":\"Multiple Choice\"},\"65\":{\"question_id\":\"65\",\"answer\":\"[\\\"Blood cell counts\\\",\\\"Liver enzyme levels\\\"]\",\"question_type\":\"Drag-Drop\"},\"630\":{\"question_id\":\"630\",\"answer\":\"[\\\"Vitamin K\\\"]\",\"question_type\":\"Multiple Choice\"},\"640\":{\"question_id\":\"640\",\"answer\":\"[\\\"Transport oxygen\\\"]\",\"question_type\":\"Multiple Choice\"},\"730\":{\"question_id\":\"730\",\"answer\":\"[\\\"Calcium\\\"]\",\"question_type\":\"Multiple Choice\"},\"760\":{\"question_id\":\"760\",\"answer\":\"[\\\"Loop of Henle\\\"]\",\"question_type\":\"Multiple Choice\"},\"780\":{\"question_id\":\"780\",\"answer\":\"[\\\"Low heart rate\\\"]\",\"question_type\":\"Multiple Choice\"},\"790\":{\"question_id\":\"790\",\"answer\":\"[\\\"Ball and socket\\\"]\",\"question_type\":\"Multiple Choice\"},\"800\":{\"question_id\":\"800\",\"answer\":\"[\\\"Pulmonary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"801\":{\"question_id\":\"801\",\"answer\":\"[\\\"36.5\\u201337.5\\u00b0C\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"correct\"},{\"question_id\":65,\"is_correct\":\"correct\"},{\"question_id\":630,\"is_correct\":\"correct\"},{\"question_id\":640,\"is_correct\":\"correct\"},{\"question_id\":730,\"is_correct\":\"false\"},{\"question_id\":760,\"is_correct\":\"false\"},{\"question_id\":780,\"is_correct\":\"false\"},{\"question_id\":790,\"is_correct\":\"correct\"},{\"question_id\":800,\"is_correct\":\"false\"},{\"question_id\":801,\"is_correct\":\"correct\"}]', 110, 'failed', 23, '2025-12-11 22:20:03', NULL, '2025-12-11 22:20:03'),
(95, 19249, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Collect sample in tube\\\",\\\"Insert needle\\\",\\\"Apply tourniquet\\\",\\\"Identify patient\\\"]\",\"question_type\":\"Ordering\"},\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"},\"640\":{\"question_id\":\"640\",\"answer\":\"[\\\"Produce ant0ibodies\\\"]\",\"question_type\":\"Multiple Choice\"},\"720\":{\"question_id\":\"720\",\"answer\":\"[\\\"Bilirubin\\\"]\",\"question_type\":\"Multiple Choice\"},\"760\":{\"question_id\":\"760\",\"answer\":\"[\\\"Glomerulus\\\"]\",\"question_type\":\"Multiple Choice\"},\"780\":{\"question_id\":\"780\",\"answer\":\"[\\\"Frequent urination\\\"]\",\"question_type\":\"Multiple Choice\"},\"800\":{\"question_id\":\"800\",\"answer\":\"[\\\"Pulmonary vein\\\"]\",\"question_type\":\"Multiple Choice\"},\"802\":{\"question_id\":\"802\",\"answer\":\"[\\\"Tendons\\\"]\",\"question_type\":\"Multiple Choice\"},\"6690\":{\"question_id\":\"6690\",\"answer\":\"[\\\"AB positive\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"false\"},{\"question_id\":640,\"is_correct\":\"false\"},{\"question_id\":720,\"is_correct\":\"false\"},{\"question_id\":760,\"is_correct\":\"correct\"},{\"question_id\":780,\"is_correct\":\"correct\"},{\"question_id\":800,\"is_correct\":\"correct\"},{\"question_id\":802,\"is_correct\":\"correct\"},{\"question_id\":6690,\"is_correct\":\"false\"}]', 110, 'failed', 19, '2025-12-11 22:20:10', NULL, '2025-12-11 22:20:10'),
(96, 19235, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Apply tourniquet\\\",\\\"Collect sample in tube\\\",\\\"Identify patient\\\",\\\"Insert needle\\\"]\",\"question_type\":\"Ordering\"},\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Insulin\\\"]\",\"question_type\":\"Multiple Choice\"},\"75\":{\"question_id\":\"75\",\"answer\":\"[\\\"Pulmonary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"630\":{\"question_id\":\"630\",\"answer\":\"[\\\"Vitamin D\\\"]\",\"question_type\":\"Multiple Choice\"},\"640\":{\"question_id\":\"640\",\"answer\":\"[\\\"Transport oxygen\\\"]\",\"question_type\":\"Multiple Choice\"},\"650\":{\"question_id\":\"650\",\"answer\":\"[\\\"Pancreas\\\"]\",\"question_type\":\"Multiple Choice\"},\"670\":{\"question_id\":\"670\",\"answer\":\"[\\\"60\\u2013100 bpm\\\"]\",\"question_type\":\"Multiple Choice\"},\"680\":{\"question_id\":\"680\",\"answer\":\"[\\\"Glucose\\\"]\",\"question_type\":\"Multiple Choice\"},\"690\":{\"question_id\":\"690\",\"answer\":\"[\\\"T lymphocytes\\\"]\",\"question_type\":\"Multiple Choice\"},\"700\":{\"question_id\":\"700\",\"answer\":\"[\\\"Oxygen transport\\\"]\",\"question_type\":\"Multiple Choice\"},\"720\":{\"question_id\":\"720\",\"answer\":\"[\\\"Creatinine\\\"]\",\"question_type\":\"Multiple Choice\"},\"730\":{\"question_id\":\"730\",\"answer\":\"[\\\"Iron\\\"]\",\"question_type\":\"Multiple Choice\"},\"760\":{\"question_id\":\"760\",\"answer\":\"[\\\"Glomerulus\\\"]\",\"question_type\":\"Multiple Choice\"},\"770\":{\"question_id\":\"770\",\"answer\":\"[\\\"Vitamin A\\\"]\",\"question_type\":\"Multiple Choice\"},\"780\":{\"question_id\":\"780\",\"answer\":\"[\\\"Low heart rate\\\"]\",\"question_type\":\"Multiple Choice\"},\"790\":{\"question_id\":\"790\",\"answer\":\"[\\\"Ball and socket\\\"]\",\"question_type\":\"Multiple Choice\"},\"800\":{\"question_id\":\"800\",\"answer\":\"[\\\"Pulmonary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"803\":{\"question_id\":\"803\",\"answer\":\"[\\\"Iris\\\"]\",\"question_type\":\"Multiple Choice\"},\"6690\":{\"question_id\":\"6690\",\"answer\":\"[\\\"O negative\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":74,\"is_correct\":\"correct\"},{\"question_id\":75,\"is_correct\":\"false\"},{\"question_id\":630,\"is_correct\":\"false\"},{\"question_id\":640,\"is_correct\":\"correct\"},{\"question_id\":650,\"is_correct\":\"correct\"},{\"question_id\":670,\"is_correct\":\"correct\"},{\"question_id\":680,\"is_correct\":\"false\"},{\"question_id\":690,\"is_correct\":\"false\"},{\"question_id\":700,\"is_correct\":\"false\"},{\"question_id\":720,\"is_correct\":\"correct\"},{\"question_id\":730,\"is_correct\":\"correct\"},{\"question_id\":760,\"is_correct\":\"correct\"},{\"question_id\":770,\"is_correct\":\"false\"},{\"question_id\":780,\"is_correct\":\"false\"},{\"question_id\":790,\"is_correct\":\"correct\"},{\"question_id\":800,\"is_correct\":\"false\"},{\"question_id\":803,\"is_correct\":\"correct\"},{\"question_id\":6690,\"is_correct\":\"correct\"}]', 111, 'passed', 42, '2025-12-12 02:59:21', NULL, '2025-12-12 02:59:21'),
(97, 19249, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Apply tourniquet\\\",\\\"Insert needle\\\",\\\"Identify patient\\\",\\\"Collect sample in tube\\\"]\",\"question_type\":\"Ordering\"},\"66\":{\"question_id\":\"66\",\"answer\":\"Why is fasting required before some blood tests?\",\"question_type\":\"Free-Text\"},\"74\":{\"question_id\":\"74\",\"answer\":\"[\\\"Insulin\\\"]\",\"question_type\":\"Multiple Choice\"},\"75\":{\"question_id\":\"75\",\"answer\":\"[\\\"Coronary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"760\":{\"question_id\":\"760\",\"answer\":\"[\\\"Glomerulus\\\"]\",\"question_type\":\"Multiple Choice\"},\"780\":{\"question_id\":\"780\",\"answer\":\"[\\\"Frequent urination\\\"]\",\"question_type\":\"Multiple Choice\"},\"801\":{\"question_id\":\"801\",\"answer\":\"[\\\"36.5\\u201337.5\\u00b0C\\\"]\",\"question_type\":\"Multiple Choice\"},\"802\":{\"question_id\":\"802\",\"answer\":\"[\\\"Tendons\\\"]\",\"question_type\":\"Multiple Choice\"},\"803\":{\"question_id\":\"803\",\"answer\":\"[\\\"Iris\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":66,\"is_correct\":\"false\"},{\"question_id\":74,\"is_correct\":\"correct\"},{\"question_id\":75,\"is_correct\":\"correct\"},{\"question_id\":760,\"is_correct\":\"correct\"},{\"question_id\":780,\"is_correct\":\"correct\"},{\"question_id\":801,\"is_correct\":\"correct\"},{\"question_id\":802,\"is_correct\":\"correct\"},{\"question_id\":803,\"is_correct\":\"correct\"}]', 110, 'failed', 31, '2025-12-16 02:40:32', NULL, '2025-12-16 02:40:32'),
(98, 19235, '{\"62\":{\"question_id\":\"62\",\"answer\":\"[\\\"White Blood Cell count\\\"]\",\"question_type\":\"Multiple Choice\"},\"63\":{\"question_id\":\"63\",\"answer\":\"[\\\"80\\\"]\",\"question_type\":\"Fill the Gap\"},\"64\":{\"question_id\":\"64\",\"answer\":\"[\\\"Collect sample in tube\\\",\\\"Apply tourniquet\\\",\\\"Identify patient\\\",\\\"Insert needle\\\"]\",\"question_type\":\"Ordering\"},\"75\":{\"question_id\":\"75\",\"answer\":\"[\\\"Coronary artery\\\"]\",\"question_type\":\"Multiple Choice\"},\"670\":{\"question_id\":\"670\",\"answer\":\"[\\\"60\\u2013100 bpm\\\"]\",\"question_type\":\"Multiple Choice\"},\"680\":{\"question_id\":\"680\",\"answer\":\"[\\\"Albumin\\\"]\",\"question_type\":\"Multiple Choice\"},\"710\":{\"question_id\":\"710\",\"answer\":\"[\\\"Cerebellum\\\"]\",\"question_type\":\"Multiple Choice\"},\"730\":{\"question_id\":\"730\",\"answer\":\"[\\\"Iron\\\"]\",\"question_type\":\"Multiple Choice\"},\"800\":{\"question_id\":\"800\",\"answer\":\"[\\\"Pulmonary vein\\\"]\",\"question_type\":\"Multiple Choice\"},\"801\":{\"question_id\":\"801\",\"answer\":\"[\\\"36.5\\u201337.5\\u00b0C\\\"]\",\"question_type\":\"Multiple Choice\"}}', 37, '[{\"question_id\":62,\"is_correct\":\"false\"},{\"question_id\":63,\"is_correct\":\"correct\"},{\"question_id\":64,\"is_correct\":\"correct\"},{\"question_id\":75,\"is_correct\":\"correct\"},{\"question_id\":670,\"is_correct\":\"correct\"},{\"question_id\":680,\"is_correct\":\"correct\"},{\"question_id\":710,\"is_correct\":\"correct\"},{\"question_id\":730,\"is_correct\":\"correct\"},{\"question_id\":800,\"is_correct\":\"correct\"},{\"question_id\":801,\"is_correct\":\"correct\"}]', 110, 'failed', 35, '2025-12-16 02:40:36', NULL, '2025-12-16 02:40:36'),
(99, 700812349, '{\"6707\":{\"question_id\":\"6707\",\"answer\":\"[\\\"Illegal\\\"]\",\"question_type\":\"Multiple Choice\"},\"6708\":{\"question_id\":\"6708\",\"answer\":\"[\\\"Mandatory instruction\\\"]\",\"question_type\":\"Multiple Choice\"},\"6710\":{\"question_id\":\"6710\",\"answer\":\"[\\\"Stop immediately\\\"]\",\"question_type\":\"Multiple Choice\"},\"6722\":{\"question_id\":\"6722\",\"answer\":\"[\\\"Fine or punishment\\\"]\",\"question_type\":\"Multiple Choice\"},\"6734\":{\"question_id\":\"6734\",\"answer\":\"[\\\"Traffic in one direction only\\\"]\",\"question_type\":\"Multiple Choice\"}}', 41, '[{\"question_id\":6707,\"is_correct\":\"correct\"},{\"question_id\":6708,\"is_correct\":\"correct\"},{\"question_id\":6710,\"is_correct\":\"correct\"},{\"question_id\":6722,\"is_correct\":\"correct\"},{\"question_id\":6734,\"is_correct\":\"correct\"}]', 113, 'failed', 11, '2025-12-17 01:51:09', NULL, '2025-12-17 01:51:09'),
(110, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"three\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"6\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"false\"},{\"question_id\":4,\"is_correct\":\"correct\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":6,\"is_correct\":\"correct\"},{\"question_id\":7,\"is_correct\":\"correct\"}]', 116, 'failed', 60, '2025-12-18 03:04:30', NULL, '2025-12-18 03:04:30'),
(109, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"one\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"5\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":4,\"is_correct\":\"false\"},{\"question_id\":5,\"is_correct\":\"correct\"},{\"question_id\":6,\"is_correct\":\"false\"},{\"question_id\":7,\"is_correct\":\"correct\"}]', 116, 'failed', 60, '2025-12-18 03:04:01', NULL, '2025-12-18 03:04:01'),
(104, 700812349, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"one\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"5\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"correct\"},{\"question_id\":5,\"is_correct\":\"correct\"},{\"question_id\":7,\"is_correct\":\"correct\"}]', 119, 'failed', 80, '2025-12-17 04:00:03', NULL, '2025-12-17 04:00:03'),
(105, 700812349, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"one\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"5\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"6\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":4,\"is_correct\":\"correct\"},{\"question_id\":5,\"is_correct\":\"correct\"},{\"question_id\":6,\"is_correct\":\"correct\"},{\"question_id\":7,\"is_correct\":\"correct\"}]', 120, 'passed', 100, '2025-12-17 04:10:11', NULL, '2025-12-17 04:10:11'),
(106, 700812349, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"three\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"false\"},{\"question_id\":2,\"is_correct\":\"false\"},{\"question_id\":3,\"is_correct\":\"correct\"},{\"question_id\":4,\"is_correct\":\"correct\"},{\"question_id\":6,\"is_correct\":\"false\"}]', 121, 'failed', 40, '2025-12-17 04:11:27', NULL, '2025-12-17 04:11:27'),
(111, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"four\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"false\"},{\"question_id\":4,\"is_correct\":\"false\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":6,\"is_correct\":\"false\"},{\"question_id\":7,\"is_correct\":\"false\"}]', 116, 'failed', 0, '2025-12-18 03:04:58', NULL, '2025-12-18 03:04:58'),
(112, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"two\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"false\"},{\"question_id\":2,\"is_correct\":\"false\"},{\"question_id\":4,\"is_correct\":\"false\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":7,\"is_correct\":\"false\"}]', 118, 'failed', 0, '2025-12-18 03:16:07', NULL, '2025-12-18 03:16:07'),
(113, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"one\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"correct\"},{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":4,\"is_correct\":\"false\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":7,\"is_correct\":\"false\"}]', 118, 'failed', 40, '2025-12-18 03:17:09', NULL, '2025-12-18 03:17:09'),
(114, 19253, '{\"1\":{\"question_id\":\"1\",\"answer\":\"[\\\"two\\\"]\",\"question_type\":\"Multiple Choice\"},\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"3\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"8\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":1,\"is_correct\":\"false\"},{\"question_id\":2,\"is_correct\":\"false\"},{\"question_id\":4,\"is_correct\":\"false\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":7,\"is_correct\":\"false\"}]', 118, 'failed', 0, '2025-12-18 03:20:56', NULL, '2025-12-18 03:20:56'),
(115, 19253, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"5\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"6\\\"]\",\"question_type\":\"Multiple Choice\"},\"7\":{\"question_id\":\"7\",\"answer\":\"[\\\"7\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":4,\"is_correct\":\"correct\"},{\"question_id\":5,\"is_correct\":\"correct\"},{\"question_id\":6,\"is_correct\":\"correct\"},{\"question_id\":7,\"is_correct\":\"correct\"}]', 122, 'passed', 100, '2025-12-18 04:11:05', NULL, '2025-12-18 04:11:05'),
(116, 19253, '{\"2\":{\"question_id\":\"2\",\"answer\":\"[\\\"2\\\"]\",\"question_type\":\"Multiple Choice\"},\"3\":{\"question_id\":\"3\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"},\"4\":{\"question_id\":\"4\",\"answer\":\"[\\\"4\\\"]\",\"question_type\":\"Multiple Choice\"},\"5\":{\"question_id\":\"5\",\"answer\":\"[\\\"1\\\"]\",\"question_type\":\"Multiple Choice\"},\"6\":{\"question_id\":\"6\",\"answer\":\"[\\\"6\\\"]\",\"question_type\":\"Multiple Choice\"}}', 1, '[{\"question_id\":2,\"is_correct\":\"correct\"},{\"question_id\":3,\"is_correct\":\"false\"},{\"question_id\":4,\"is_correct\":\"correct\"},{\"question_id\":5,\"is_correct\":\"false\"},{\"question_id\":6,\"is_correct\":\"correct\"}]', 123, 'passed', 60, '2025-12-18 04:25:02', NULL, '2025-12-18 04:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `training_times`
--

DROP TABLE IF EXISTS `training_times`;
CREATE TABLE IF NOT EXISTS `training_times` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `course_id` bigint UNSIGNED DEFAULT NULL,
  `seconds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content_id` bigint UNSIGNED DEFAULT NULL,
  `total_time` int DEFAULT '0',
  `is_completed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_times`
--

INSERT INTO `training_times` (`id`, `employee_id`, `course_id`, `seconds`, `content_id`, `total_time`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 19242, 36, '6', 64, 0, 0, '2025-08-07 08:21:26', '2025-08-07 08:21:26'),
(2, 19242, 36, '5', 64, 0, 0, '2025-08-07 08:21:32', '2025-08-07 08:21:32'),
(3, 19242, 36, '4', 64, 0, 0, '2025-08-07 08:21:36', '2025-08-07 08:21:36'),
(4, 19242, 36, '13', 64, 0, 0, '2025-08-07 08:21:50', '2025-08-07 08:21:50'),
(5, 19242, 36, '21', 64, 0, 0, '2025-08-07 08:21:58', '2025-08-07 08:21:58'),
(6, 19242, 36, '5', 64, 0, 0, '2025-08-07 08:22:05', '2025-08-07 08:22:05'),
(7, 19242, 36, '34', 64, 0, 0, '2025-08-07 08:22:33', '2025-08-07 08:22:33'),
(8, 19242, 36, '59', 64, 0, 0, '2025-08-07 08:22:36', '2025-08-07 08:22:36'),
(9, 19242, 36, '62', 64, 0, 0, '2025-08-07 08:22:39', '2025-08-07 08:22:39'),
(10, 19242, 36, '64', 64, 0, 0, '2025-08-07 08:22:41', '2025-08-07 08:22:41'),
(11, 19242, 36, '6', 64, 0, 0, '2025-08-07 08:22:48', '2025-08-07 08:22:48'),
(12, 19242, 36, '36', 64, 0, 0, '2025-08-07 08:23:18', '2025-08-07 08:23:18'),
(13, 19242, 36, '250', 64, 0, 0, '2025-08-07 08:26:53', '2025-08-07 08:26:53'),
(14, 19242, 36, '4', 64, 0, 0, '2025-08-07 08:26:58', '2025-08-07 08:26:58'),
(15, 19242, 36, '6', 64, 0, 0, '2025-08-07 08:26:59', '2025-08-07 08:26:59'),
(16, 19242, 36, '11', 64, 0, 0, '2025-08-07 08:27:04', '2025-08-07 08:27:04'),
(17, 19242, 36, '20', 64, 0, 0, '2025-08-07 08:27:13', '2025-08-07 08:27:13'),
(18, 19242, 36, '26', 64, 0, 0, '2025-08-07 08:27:19', '2025-08-07 08:27:19'),
(19, 19242, 36, '29', 64, 0, 0, '2025-08-07 08:27:22', '2025-08-07 08:27:22'),
(20, 19242, 36, '0', 64, 0, 0, '2025-08-07 08:27:23', '2025-08-07 08:27:23'),
(21, 19242, 36, '5', 64, 0, 0, '2025-08-07 08:27:28', '2025-08-07 08:27:28'),
(22, 19242, 36, '5', 65, 0, 0, '2025-08-07 08:29:36', '2025-08-07 08:29:36'),
(23, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:29:41', '2025-08-07 08:29:41'),
(24, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:29:46', '2025-08-07 08:29:46'),
(25, 19242, 36, '6', 65, 0, 0, '2025-08-07 08:29:47', '2025-08-07 08:29:47'),
(26, 19242, 36, '18', 65, 0, 0, '2025-08-07 08:29:59', '2025-08-07 08:29:59'),
(27, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:30:04', '2025-08-07 08:30:04'),
(28, 19242, 36, '7', 65, 0, 0, '2025-08-07 08:30:07', '2025-08-07 08:30:07'),
(29, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:30:12', '2025-08-07 08:30:12'),
(30, 19242, 36, '15', 65, 0, 0, '2025-08-07 08:30:23', '2025-08-07 08:30:23'),
(31, 19242, 36, '27', 65, 0, 0, '2025-08-07 08:30:26', '2025-08-07 08:30:26'),
(32, 19242, 36, '39', 65, 0, 0, '2025-08-07 08:30:39', '2025-08-07 08:30:39'),
(33, 19242, 36, '66', 65, 0, 0, '2025-08-07 08:31:06', '2025-08-07 08:31:06'),
(34, 19242, 36, '5', 65, 0, 0, '2025-08-07 08:31:13', '2025-08-07 08:31:13'),
(35, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:37:08', '2025-08-07 08:37:08'),
(36, 19242, 36, '1', 65, 0, 0, '2025-08-07 08:37:10', '2025-08-07 08:37:10'),
(37, 19242, 36, '9', 65, 0, 0, '2025-08-07 08:37:18', '2025-08-07 08:37:18'),
(38, 19242, 36, '0', 65, 0, 0, '2025-08-07 08:37:20', '2025-08-07 08:37:20'),
(39, 19242, 36, '9', 65, 0, 0, '2025-08-07 08:37:28', '2025-08-07 08:37:28'),
(40, 19242, 36, '2', 65, 0, 0, '2025-08-07 08:37:31', '2025-08-07 08:37:31'),
(41, 19242, 36, '4', 65, 0, 0, '2025-08-07 08:37:32', '2025-08-07 08:37:32'),
(42, 19242, 36, '12', 65, 0, 0, '2025-08-07 08:37:41', '2025-08-07 08:37:41'),
(43, 19242, 36, '3', 65, 0, 0, '2025-08-07 08:37:45', '2025-08-07 08:37:45'),
(44, 19242, 36, '9', 65, 0, 0, '2025-08-07 08:37:50', '2025-08-07 08:37:50'),
(45, 19242, 36, '5', 69, 0, 0, '2025-08-07 09:02:25', '2025-08-07 09:02:25'),
(46, 19242, 36, '62', 69, 0, 0, '2025-08-07 09:03:21', '2025-08-07 09:03:21'),
(47, 19242, 36, '63', 69, 0, 0, '2025-08-07 09:03:22', '2025-08-07 09:03:22'),
(48, 19242, 36, '127', 69, 0, 0, '2025-08-07 09:04:27', '2025-08-07 09:04:27'),
(49, 19242, 36, '132', 69, 0, 0, '2025-08-07 09:04:32', '2025-08-07 09:04:32'),
(50, 19242, 36, '137', 69, 0, 0, '2025-08-07 09:04:36', '2025-08-07 09:04:36'),
(51, 19242, 36, '146', 69, 0, 0, '2025-08-07 09:04:45', '2025-08-07 09:04:45'),
(52, 19242, 36, '155', 69, 0, 0, '2025-08-07 09:04:54', '2025-08-07 09:04:54'),
(53, 19242, 36, '173', 69, 0, 0, '2025-08-07 09:05:12', '2025-08-07 09:05:12'),
(54, 19242, 36, '4', 69, 0, 0, '2025-08-07 09:05:17', '2025-08-07 09:05:17'),
(55, 19242, 36, '13', 69, 0, 0, '2025-08-07 09:05:30', '2025-08-07 09:05:30'),
(56, 19242, 36, '33', 69, 0, 0, '2025-08-07 09:05:50', '2025-08-07 09:05:50'),
(57, 19242, 36, '44', 69, 0, 0, '2025-08-07 09:06:01', '2025-08-07 09:06:01'),
(58, 19242, 36, '5', 69, 0, 0, '2025-08-07 09:06:08', '2025-08-07 09:06:08'),
(59, 19242, 36, '24', 69, 0, 0, '2025-08-07 09:06:26', '2025-08-07 09:06:26'),
(60, 19242, 36, '49', 69, 0, 0, '2025-08-07 09:06:51', '2025-08-07 09:06:51'),
(61, 19242, 36, '52', 69, 0, 0, '2025-08-07 09:06:55', '2025-08-07 09:06:55'),
(62, 19242, 36, '56', 69, 0, 0, '2025-08-07 09:06:58', '2025-08-07 09:06:58'),
(63, 19242, 36, '11', 69, 0, 0, '2025-08-07 09:07:11', '2025-08-07 09:07:11'),
(64, 19242, 36, '21', 69, 0, 0, '2025-08-07 09:07:21', '2025-08-07 09:07:21'),
(65, 19242, 36, '25', 69, 0, 0, '2025-08-07 09:07:24', '2025-08-07 09:07:24'),
(66, 19242, 36, '28', 69, 0, 0, '2025-08-07 09:07:29', '2025-08-07 09:07:29'),
(67, 19242, 36, '8', 69, 0, 0, '2025-08-07 09:07:37', '2025-08-07 09:07:37'),
(68, 19242, 36, '338', 69, 0, 0, '2025-08-07 09:13:08', '2025-08-07 09:13:08'),
(69, 19242, 36, '344', 69, 0, 0, '2025-08-07 09:13:13', '2025-08-07 09:13:13'),
(70, 19242, 36, '6', 69, 0, 0, '2025-08-07 09:22:32', '2025-08-07 09:22:32'),
(71, 19242, 36, '33', 69, 0, 0, '2025-08-07 09:23:06', '2025-08-07 09:23:06'),
(72, 19242, 36, '51', 69, 0, 0, '2025-08-07 09:23:23', '2025-08-07 09:23:23'),
(73, 19242, 36, '63', 69, 0, 0, '2025-08-07 09:23:35', '2025-08-07 09:23:35'),
(74, 19242, 36, '7', 69, 0, 0, '2025-08-07 09:23:43', '2025-08-07 09:23:43'),
(75, 19242, 36, '13', 69, 0, 0, '2025-08-07 09:23:50', '2025-08-07 09:23:50'),
(76, 19242, 36, '3', 69, 0, 0, '2025-08-07 09:23:54', '2025-08-07 09:23:54'),
(77, 19242, 36, '11', 69, 0, 0, '2025-08-07 09:24:02', '2025-08-07 09:24:02'),
(78, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:26:18', '2025-08-07 09:26:18'),
(79, 19242, 36, '3', 70, 0, 0, '2025-08-07 09:26:22', '2025-08-07 09:26:22'),
(80, 19242, 36, '6', 70, 0, 0, '2025-08-07 09:26:29', '2025-08-07 09:26:29'),
(81, 19242, 36, '8', 70, 0, 0, '2025-08-07 09:26:31', '2025-08-07 09:26:31'),
(82, 19242, 36, '17', 70, 0, 0, '2025-08-07 09:26:39', '2025-08-07 09:26:39'),
(83, 19242, 36, '5', 70, 0, 0, '2025-08-07 09:26:45', '2025-08-07 09:26:45'),
(84, 19242, 36, '2', 70, 0, 0, '2025-08-07 09:26:48', '2025-08-07 09:26:48'),
(85, 19242, 36, '8', 70, 0, 0, '2025-08-07 09:26:53', '2025-08-07 09:26:53'),
(86, 19242, 36, '474', 70, 0, 0, '2025-08-07 09:34:34', '2025-08-07 09:34:34'),
(87, 19242, 36, '468', 70, 0, 0, '2025-08-07 09:34:34', '2025-08-07 09:34:34'),
(88, 19242, 36, '492', 70, 0, 0, '2025-08-07 09:34:35', '2025-08-07 09:34:35'),
(89, 19242, 36, '496', 70, 0, 0, '2025-08-07 09:34:35', '2025-08-07 09:34:35'),
(90, 19242, 36, '501', 70, 0, 0, '2025-08-07 09:34:35', '2025-08-07 09:34:35'),
(91, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:34:50', '2025-08-07 09:34:50'),
(92, 19242, 36, '3', 70, 0, 0, '2025-08-07 09:34:54', '2025-08-07 09:34:54'),
(93, 19242, 36, '3', 70, 0, 0, '2025-08-07 09:34:59', '2025-08-07 09:34:59'),
(94, 19242, 36, '17', 70, 0, 0, '2025-08-07 09:35:12', '2025-08-07 09:35:12'),
(95, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:35:17', '2025-08-07 09:35:17'),
(96, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:35:21', '2025-08-07 09:35:21'),
(97, 19242, 36, '9', 70, 0, 0, '2025-08-07 09:35:26', '2025-08-07 09:35:26'),
(98, 19242, 36, '377', 70, 0, 0, '2025-08-07 09:41:36', '2025-08-07 09:41:36'),
(99, 19242, 36, '400', 70, 0, 0, '2025-08-07 09:41:36', '2025-08-07 09:41:36'),
(100, 19242, 36, '405', 70, 0, 0, '2025-08-07 09:41:36', '2025-08-07 09:41:36'),
(101, 19242, 36, '383', 70, 0, 0, '2025-08-07 09:41:36', '2025-08-07 09:41:36'),
(102, 19242, 36, '411', 70, 0, 0, '2025-08-07 09:41:37', '2025-08-07 09:41:37'),
(103, 19242, 36, '5', 70, 0, 0, '2025-08-07 09:41:43', '2025-08-07 09:41:43'),
(104, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:41:48', '2025-08-07 09:41:48'),
(105, 19242, 36, '5', 70, 0, 0, '2025-08-07 09:41:54', '2025-08-07 09:41:54'),
(106, 19242, 36, '22', 70, 0, 0, '2025-08-07 09:42:11', '2025-08-07 09:42:11'),
(107, 19242, 36, '25', 70, 0, 0, '2025-08-07 09:42:13', '2025-08-07 09:42:13'),
(108, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:42:19', '2025-08-07 09:42:19'),
(109, 19242, 36, '3', 70, 0, 0, '2025-08-07 09:42:23', '2025-08-07 09:42:23'),
(110, 19242, 36, '10', 70, 0, 0, '2025-08-07 09:42:29', '2025-08-07 09:42:29'),
(111, 19242, 36, '137', 70, 0, 0, '2025-08-07 09:44:32', '2025-08-07 09:44:32'),
(112, 19242, 36, '167', 70, 0, 0, '2025-08-07 09:44:32', '2025-08-07 09:44:32'),
(113, 19242, 36, '131', 70, 0, 0, '2025-08-07 09:44:32', '2025-08-07 09:44:32'),
(114, 19242, 36, '162', 70, 0, 0, '2025-08-07 09:44:32', '2025-08-07 09:44:32'),
(115, 19242, 36, '176', 70, 0, 0, '2025-08-07 09:44:35', '2025-08-07 09:44:35'),
(116, 19242, 36, '1', 70, 0, 0, '2025-08-07 09:44:37', '2025-08-07 09:44:37'),
(117, 19242, 36, '85', 70, 0, 0, '2025-08-07 09:46:00', '2025-08-07 09:46:00'),
(118, 19242, 36, '4', 70, 0, 0, '2025-08-07 09:46:04', '2025-08-07 09:46:04'),
(119, 19242, 36, '2', 70, 0, 0, '2025-08-07 09:46:07', '2025-08-07 09:46:07'),
(120, 19242, 36, '1', 70, 0, 0, '2025-08-07 09:46:10', '2025-08-07 09:46:10'),
(121, 19242, 36, '3', 70, 0, 0, '2025-08-07 09:46:13', '2025-08-07 09:46:13'),
(122, 19242, 36, '8', 70, 0, 0, '2025-08-07 09:46:19', '2025-08-07 09:46:19'),
(123, 19242, 36, '4', 72, 0, 0, '2025-08-07 09:47:16', '2025-08-07 09:47:16'),
(124, 19242, 36, '3', 72, 0, 0, '2025-08-07 09:47:21', '2025-08-07 09:47:21'),
(125, 19242, 36, '9', 72, 0, 0, '2025-08-07 09:47:21', '2025-08-07 09:47:21'),
(126, 19242, 36, '3', 72, 0, 0, '2025-08-07 09:47:55', '2025-08-07 09:47:55'),
(127, 19243, 37, '18', 74, 0, 0, '2025-08-07 10:12:07', '2025-08-07 10:12:07'),
(128, 19243, 37, '5', 75, 0, 0, '2025-08-07 10:12:22', '2025-08-07 10:12:22'),
(129, 19243, 37, '4', 75, 0, 0, '2025-08-07 10:12:27', '2025-08-07 10:12:27'),
(130, 19243, 37, '9', 75, 0, 0, '2025-08-07 10:12:36', '2025-08-07 10:12:36'),
(131, 19243, 37, '56', 75, 0, 0, '2025-08-07 10:13:24', '2025-08-07 10:13:24'),
(132, 19243, 37, '27', 78, 0, 0, '2025-08-07 12:01:42', '2025-08-07 12:01:42'),
(133, 19243, 37, '57', 78, 0, 0, '2025-08-07 12:02:12', '2025-08-07 12:02:12'),
(134, 19243, 37, '0', 81, 0, 0, '2025-08-07 12:08:44', '2025-08-07 12:08:44'),
(135, 19243, 37, '8', 81, 0, 0, '2025-08-07 12:08:52', '2025-08-07 12:08:52'),
(136, 19243, 37, '0', 81, 0, 0, '2025-08-07 12:08:52', '2025-08-07 12:08:52'),
(137, 19243, 37, '4', 81, 0, 0, '2025-08-07 12:08:57', '2025-08-07 12:08:57'),
(138, 19243, 37, '0', 81, 0, 0, '2025-08-07 12:08:57', '2025-08-07 12:08:57'),
(139, 19243, 37, '7', 81, 0, 0, '2025-08-07 12:09:05', '2025-08-07 12:09:05'),
(140, 19243, 37, '15', 81, 0, 0, '2025-08-07 12:09:12', '2025-08-07 12:09:12'),
(141, 19243, 37, '20', 81, 0, 0, '2025-08-07 12:09:18', '2025-08-07 12:09:18'),
(142, 19243, 37, '23', 81, 0, 0, '2025-08-07 12:09:20', '2025-08-07 12:09:20'),
(143, 19243, 37, '3', 81, 0, 0, '2025-08-07 12:09:23', '2025-08-07 12:09:23'),
(144, 19243, 37, '8', 81, 0, 0, '2025-08-07 12:09:28', '2025-08-07 12:09:28'),
(145, 19243, 37, '2', 81, 0, 0, '2025-08-07 12:09:31', '2025-08-07 12:09:31'),
(146, 19243, 37, '8', 81, 0, 0, '2025-08-07 12:09:37', '2025-08-07 12:09:37'),
(147, 19249, 34, '5', 44, 0, 0, '2025-10-05 21:37:50', '2025-10-05 21:37:50'),
(148, 19253, 37, '5', 82, 0, 0, '2025-10-16 00:47:32', '2025-10-16 00:47:32'),
(149, 19253, 37, '9', 82, 0, 0, '2025-10-16 00:47:50', '2025-10-16 00:47:50'),
(150, 19253, 37, '664', 82, 0, 0, '2025-10-16 00:58:42', '2025-10-16 00:58:42'),
(151, 19253, 37, '672', 82, 0, 0, '2025-10-16 00:58:49', '2025-10-16 00:58:49'),
(152, 19253, 37, '701', 82, 0, 0, '2025-10-16 00:59:18', '2025-10-16 00:59:18'),
(153, 19253, 37, '756', 82, 0, 0, '2025-10-16 01:00:13', '2025-10-16 01:00:13'),
(154, 19253, 37, '761', 82, 0, 0, '2025-10-16 01:00:18', '2025-10-16 01:00:18'),
(155, 19253, 37, '793', 82, 0, 0, '2025-10-16 01:00:51', '2025-10-16 01:00:51'),
(156, 19253, 37, '805', 82, 0, 0, '2025-10-16 01:01:04', '2025-10-16 01:01:04'),
(157, 19253, 37, '815', 82, 0, 0, '2025-10-16 01:01:12', '2025-10-16 01:01:12'),
(158, 19253, 37, '819', 82, 0, 0, '2025-10-16 01:01:17', '2025-10-16 01:01:17'),
(159, 19253, 37, '829', 82, 0, 0, '2025-10-16 01:01:26', '2025-10-16 01:01:26'),
(160, 19253, 37, '835', 82, 0, 0, '2025-10-16 01:01:32', '2025-10-16 01:01:32'),
(161, 19253, 37, '858', 82, 0, 0, '2025-10-16 01:01:55', '2025-10-16 01:01:55'),
(162, 19253, 37, '879', 82, 0, 0, '2025-10-16 01:02:16', '2025-10-16 01:02:16'),
(163, 19253, 37, '915', 82, 0, 0, '2025-10-16 01:02:53', '2025-10-16 01:02:53'),
(164, 19253, 37, '1025', 82, 0, 0, '2025-10-16 01:04:42', '2025-10-16 01:04:42'),
(165, 19253, 37, '1042', 82, 0, 0, '2025-10-16 01:04:58', '2025-10-16 01:04:58'),
(166, 19253, 37, '1046', 82, 0, 0, '2025-10-16 01:05:03', '2025-10-16 01:05:03'),
(167, 19253, 37, '1054', 82, 0, 0, '2025-10-16 01:05:11', '2025-10-16 01:05:11'),
(168, 19253, 37, '1077', 82, 0, 0, '2025-10-16 01:05:34', '2025-10-16 01:05:34'),
(169, 19253, 37, '1123', 82, 0, 0, '2025-10-16 01:06:21', '2025-10-16 01:06:21'),
(170, 19253, 37, '1134', 82, 0, 0, '2025-10-16 01:06:32', '2025-10-16 01:06:32'),
(171, 19253, 37, '1160', 82, 0, 0, '2025-10-16 01:06:56', '2025-10-16 01:06:56'),
(172, 19253, 37, '1187', 82, 0, 0, '2025-10-16 01:07:24', '2025-10-16 01:07:24'),
(173, 19253, 37, '1198', 82, 0, 0, '2025-10-16 01:07:36', '2025-10-16 01:07:36'),
(174, 19253, 37, '1211', 82, 0, 0, '2025-10-16 01:07:48', '2025-10-16 01:07:48'),
(175, 19253, 37, '1214', 82, 0, 0, '2025-10-16 01:07:51', '2025-10-16 01:07:51'),
(176, 19253, 37, '1528', 82, 0, 0, '2025-10-16 01:13:05', '2025-10-16 01:13:05'),
(177, 19253, 37, '1555', 82, 0, 0, '2025-10-16 01:13:32', '2025-10-16 01:13:32'),
(178, 19253, 37, '1574', 82, 0, 0, '2025-10-16 01:13:51', '2025-10-16 01:13:51'),
(179, 19253, 37, '1589', 82, 0, 0, '2025-10-16 01:14:06', '2025-10-16 01:14:06'),
(180, 19253, 37, '2044', 82, 0, 0, '2025-10-16 01:21:41', '2025-10-16 01:21:41'),
(181, 19253, 37, '2060', 82, 0, 0, '2025-10-16 01:21:57', '2025-10-16 01:21:57'),
(182, 19253, 37, '2099', 82, 0, 0, '2025-10-16 01:22:36', '2025-10-16 01:22:36'),
(183, 19253, 37, '2198', 82, 0, 0, '2025-10-16 01:24:15', '2025-10-16 01:24:15'),
(184, 19253, 37, '2854', 82, 0, 0, '2025-10-16 01:35:11', '2025-10-16 01:35:11'),
(185, 19253, 37, '2862', 82, 0, 0, '2025-10-16 01:35:19', '2025-10-16 01:35:19'),
(186, 19253, 37, '4188', 82, 0, 0, '2025-10-16 01:57:25', '2025-10-16 01:57:25'),
(187, 19253, 37, '4', 75, 0, 0, '2025-10-22 22:53:33', '2025-10-22 22:53:33'),
(188, 19253, 37, '4', 75, 0, 0, '2025-10-22 22:53:38', '2025-10-22 22:53:38'),
(189, 19253, 37, '4', 75, 0, 0, '2025-10-22 22:53:43', '2025-10-22 22:53:43'),
(190, 19253, 37, '5', 75, 0, 0, '2025-10-22 22:54:08', '2025-10-22 22:54:08'),
(191, 19253, 37, '3', 75, 0, 0, '2025-10-22 22:54:12', '2025-10-22 22:54:12'),
(192, 19253, 37, '3', 75, 0, 0, '2025-10-22 22:54:15', '2025-10-22 22:54:15'),
(193, 19253, 37, '4', 75, 0, 0, '2025-10-22 22:54:35', '2025-10-22 22:54:35'),
(194, 19253, 37, '3', 75, 0, 0, '2025-10-22 22:54:39', '2025-10-22 22:54:39'),
(195, 19253, 37, '5', 75, 0, 0, '2025-10-22 22:54:45', '2025-10-22 22:54:45'),
(196, 19253, 37, '6', 82, 0, 0, '2025-10-23 01:21:05', '2025-10-23 01:21:05'),
(197, 19253, 37, '760', 82, 0, 0, '2025-10-23 01:33:40', '2025-10-23 01:33:40'),
(198, 19253, 37, '784', 82, 0, 0, '2025-10-23 01:34:04', '2025-10-23 01:34:04'),
(199, 19253, 37, '986', 82, 0, 0, '2025-10-23 01:37:25', '2025-10-23 01:37:25'),
(200, 19253, 37, '991', 82, 0, 0, '2025-10-23 01:37:31', '2025-10-23 01:37:31'),
(201, 19253, 37, '1103', 82, 0, 0, '2025-10-23 01:39:22', '2025-10-23 01:39:22'),
(202, 19253, 37, '2314', 82, 0, 0, '2025-10-23 01:59:34', '2025-10-23 01:59:34'),
(203, 19253, 37, '2440', 82, 0, 0, '2025-10-23 02:01:39', '2025-10-23 02:01:39'),
(204, 19253, 37, '3059', 82, 0, 0, '2025-10-23 02:11:58', '2025-10-23 02:11:58'),
(205, 19253, 34, '16', 44, 0, 0, '2025-10-26 21:40:27', '2025-10-26 21:40:27'),
(206, 19253, 34, '28', 44, 0, 0, '2025-10-26 21:40:38', '2025-10-26 21:40:38'),
(207, 19253, 34, '30', 44, 0, 0, '2025-10-26 21:40:40', '2025-10-26 21:40:40'),
(208, 19253, 34, '88', 44, 0, 0, '2025-10-26 21:41:38', '2025-10-26 21:41:38'),
(209, 19253, 34, '215', 44, 0, 0, '2025-10-26 21:43:45', '2025-10-26 21:43:45'),
(210, 19253, 34, '379', 44, 0, 0, '2025-10-26 21:46:29', '2025-10-26 21:46:29'),
(211, 19253, 34, '25', 44, 0, 0, '2025-10-26 21:46:55', '2025-10-26 21:46:55'),
(212, 19253, 34, '13', 44, 0, 0, '2025-10-26 21:47:09', '2025-10-26 21:47:09'),
(213, 19253, 34, '17', 44, 0, 0, '2025-10-26 21:47:13', '2025-10-26 21:47:13'),
(214, 19253, 34, '80', 44, 0, 0, '2025-10-26 21:48:15', '2025-10-26 21:48:15'),
(215, 19253, 34, '134', 44, 0, 0, '2025-10-26 21:49:09', '2025-10-26 21:49:09'),
(216, 19253, 34, '18', 44, 0, 0, '2025-10-26 22:05:33', '2025-10-26 22:05:33'),
(217, 19253, 34, '22', 44, 0, 0, '2025-10-26 22:05:36', '2025-10-26 22:05:36'),
(218, 19253, 34, '193', 44, 0, 0, '2025-10-26 22:08:28', '2025-10-26 22:08:28'),
(219, 19253, 34, '226', 44, 0, 0, '2025-10-26 22:09:01', '2025-10-26 22:09:01'),
(220, 19253, 34, '228', 44, 0, 0, '2025-10-26 22:09:03', '2025-10-26 22:09:03'),
(221, 19253, 34, '252', 44, 0, 0, '2025-10-26 22:09:26', '2025-10-26 22:09:26'),
(222, 19253, 34, '254', 44, 0, 0, '2025-10-26 22:09:29', '2025-10-26 22:09:29'),
(223, 19253, 34, '259', 44, 0, 0, '2025-10-26 22:09:33', '2025-10-26 22:09:33'),
(224, 19253, 34, '271', 44, 0, 0, '2025-10-26 22:09:45', '2025-10-26 22:09:45'),
(225, 19253, 34, '408', 44, 0, 0, '2025-10-26 22:12:03', '2025-10-26 22:12:03'),
(226, 19253, 34, '463', 44, 0, 0, '2025-10-26 22:12:58', '2025-10-26 22:12:58'),
(227, 19253, 34, '484', 44, 0, 0, '2025-10-26 22:13:19', '2025-10-26 22:13:19'),
(228, 19253, 34, '497', 44, 0, 0, '2025-10-26 22:13:31', '2025-10-26 22:13:31'),
(229, 19253, 34, '581', 44, 0, 0, '2025-10-26 22:14:56', '2025-10-26 22:14:56'),
(230, 19253, 34, '599', 44, 0, 0, '2025-10-26 22:15:14', '2025-10-26 22:15:14'),
(231, 19253, 34, '604', 44, 0, 0, '2025-10-26 22:15:19', '2025-10-26 22:15:19'),
(232, 19253, 34, '607', 44, 0, 0, '2025-10-26 22:15:22', '2025-10-26 22:15:22'),
(233, 19253, 34, '654', 44, 0, 0, '2025-10-26 22:16:09', '2025-10-26 22:16:09'),
(234, 19253, 34, '674', 44, 0, 0, '2025-10-26 22:16:29', '2025-10-26 22:16:29'),
(235, 19253, 34, '690', 44, 0, 0, '2025-10-26 22:16:45', '2025-10-26 22:16:45'),
(236, 19253, 34, '692', 44, 0, 0, '2025-10-26 22:16:47', '2025-10-26 22:16:47'),
(237, 19253, 34, '708', 44, 0, 0, '2025-10-26 22:17:03', '2025-10-26 22:17:03'),
(238, 19253, 34, '748', 44, 0, 0, '2025-10-26 22:17:43', '2025-10-26 22:17:43'),
(239, 19253, 34, '749', 44, 0, 0, '2025-10-26 22:17:44', '2025-10-26 22:17:44'),
(240, 19253, 34, '754', 44, 0, 0, '2025-10-26 22:17:49', '2025-10-26 22:17:49'),
(241, 19253, 34, '796', 44, 0, 0, '2025-10-26 22:18:31', '2025-10-26 22:18:31'),
(242, 19253, 34, '800', 44, 0, 0, '2025-10-26 22:18:35', '2025-10-26 22:18:35'),
(243, 19253, 34, '806', 44, 0, 0, '2025-10-26 22:18:41', '2025-10-26 22:18:41'),
(244, 19253, 34, '808', 44, 0, 0, '2025-10-26 22:18:42', '2025-10-26 22:18:42'),
(245, 19253, 34, '819', 44, 0, 0, '2025-10-26 22:18:54', '2025-10-26 22:18:54'),
(246, 19253, 34, '821', 44, 0, 0, '2025-10-26 22:18:55', '2025-10-26 22:18:55'),
(247, 19253, 34, '858', 44, 0, 0, '2025-10-26 22:19:33', '2025-10-26 22:19:33'),
(248, 19253, 34, '873', 44, 0, 0, '2025-10-26 22:19:47', '2025-10-26 22:19:47'),
(249, 19253, 34, '884', 44, 0, 0, '2025-10-26 22:19:58', '2025-10-26 22:19:58'),
(250, 19253, 34, '894', 44, 0, 0, '2025-10-26 22:20:09', '2025-10-26 22:20:09'),
(251, 19253, 34, '897', 44, 0, 0, '2025-10-26 22:20:12', '2025-10-26 22:20:12'),
(252, 19253, 34, '1033', 44, 0, 0, '2025-10-26 22:22:28', '2025-10-26 22:22:28'),
(253, 19253, 34, '1034', 44, 0, 0, '2025-10-26 22:22:29', '2025-10-26 22:22:29'),
(254, 19253, 34, '1044', 44, 0, 0, '2025-10-26 22:22:38', '2025-10-26 22:22:38'),
(255, 19253, 34, '1066', 44, 0, 0, '2025-10-26 22:23:01', '2025-10-26 22:23:01'),
(256, 19253, 34, '1074', 44, 0, 0, '2025-10-26 22:23:08', '2025-10-26 22:23:08'),
(257, 19253, 34, '1076', 44, 0, 0, '2025-10-26 22:23:11', '2025-10-26 22:23:11'),
(258, 19253, 34, '1083', 44, 0, 0, '2025-10-26 22:23:17', '2025-10-26 22:23:17'),
(259, 19253, 34, '1088', 44, 0, 0, '2025-10-26 22:23:23', '2025-10-26 22:23:23'),
(260, 19253, 34, '1104', 44, 0, 0, '2025-10-26 22:23:39', '2025-10-26 22:23:39'),
(261, 19253, 34, '1107', 44, 0, 0, '2025-10-26 22:23:42', '2025-10-26 22:23:42'),
(262, 19253, 34, '1115', 44, 0, 0, '2025-10-26 22:23:50', '2025-10-26 22:23:50'),
(263, 19253, 34, '1120', 44, 0, 0, '2025-10-26 22:23:54', '2025-10-26 22:23:54'),
(264, 19253, 34, '1129', 44, 0, 0, '2025-10-26 22:24:03', '2025-10-26 22:24:03'),
(265, 19253, 34, '1142', 44, 0, 0, '2025-10-26 22:24:17', '2025-10-26 22:24:17'),
(266, 19253, 34, '1147', 44, 0, 0, '2025-10-26 22:24:22', '2025-10-26 22:24:22'),
(267, 19253, 34, '1232', 44, 0, 0, '2025-10-26 22:25:47', '2025-10-26 22:25:47'),
(268, 19253, 34, '89', 44, 0, 0, '2025-10-27 20:49:24', '2025-10-27 20:49:24'),
(269, 19253, 34, '795', 44, 0, 0, '2025-10-27 21:01:10', '2025-10-27 21:01:10'),
(270, 19253, 34, '8', 44, 0, 0, '2025-10-27 21:01:19', '2025-10-27 21:01:19'),
(271, 19253, 34, '640', 44, 0, 0, '2025-10-27 21:11:51', '2025-10-27 21:11:51'),
(272, 19253, 34, '693', 44, 0, 0, '2025-10-27 21:12:44', '2025-10-27 21:12:44'),
(273, 19253, 34, '711', 44, 0, 0, '2025-10-27 21:13:01', '2025-10-27 21:13:01'),
(274, 19253, 34, '1622', 44, 0, 0, '2025-10-27 21:28:12', '2025-10-27 21:28:12'),
(275, 19253, 34, '2328', 44, 0, 0, '2025-10-27 21:39:58', '2025-10-27 21:39:58'),
(276, 19253, 34, '3372', 44, 0, 0, '2025-10-27 21:57:22', '2025-10-27 21:57:22'),
(277, 19253, 34, '3380', 44, 0, 0, '2025-10-27 21:57:30', '2025-10-27 21:57:30'),
(278, 19253, 34, '91', 44, 0, 0, '2025-10-27 23:05:34', '2025-10-27 23:05:34'),
(279, 19253, 34, '119', 44, 0, 0, '2025-10-27 23:06:02', '2025-10-27 23:06:02'),
(280, 19253, 34, '159', 44, 0, 0, '2025-10-27 23:06:42', '2025-10-27 23:06:42'),
(281, 19253, 37, '5', 85, 0, 0, '2025-10-27 23:07:03', '2025-10-27 23:07:03'),
(282, 19253, 37, '4', 84, 0, 0, '2025-10-27 23:07:10', '2025-10-27 23:07:10'),
(283, 19253, 37, '58', 83, 0, 0, '2025-10-27 23:08:11', '2025-10-27 23:08:11'),
(284, 19253, 37, '75', 83, 0, 0, '2025-10-27 23:08:28', '2025-10-27 23:08:28'),
(285, 19253, 37, '86', 83, 0, 0, '2025-10-27 23:08:39', '2025-10-27 23:08:39'),
(286, 19253, 37, '877', 83, 0, 0, '2025-10-27 23:21:50', '2025-10-27 23:21:50'),
(287, 19253, 37, '50', 83, 0, 0, '2025-10-27 23:22:41', '2025-10-27 23:22:41'),
(288, 19253, 37, '94', 83, 0, 0, '2025-10-27 23:23:25', '2025-10-27 23:23:25'),
(289, 19253, 37, '0', 83, 0, 0, '2025-10-27 23:23:26', '2025-10-27 23:23:26'),
(290, 19253, 37, '8', 83, 0, 0, '2025-10-27 23:23:35', '2025-10-27 23:23:35'),
(291, 19253, 37, '33', 83, 0, 0, '2025-10-27 23:24:00', '2025-10-27 23:24:00'),
(292, 19253, 37, '211', 83, 0, 0, '2025-10-27 23:26:58', '2025-10-27 23:26:58'),
(293, 19253, 37, '22', 83, 0, 0, '2025-10-27 23:27:21', '2025-10-27 23:27:21'),
(294, 19253, 37, '30', 83, 0, 0, '2025-10-27 23:27:51', '2025-10-27 23:27:51'),
(295, 19253, 37, '481', 83, 0, 0, '2025-10-27 23:35:24', '2025-10-27 23:35:24'),
(296, 19253, 37, '33', 83, 0, 0, '2025-10-27 23:35:56', '2025-10-27 23:35:56'),
(297, 19253, 37, '37', 83, 0, 0, '2025-10-27 23:36:00', '2025-10-27 23:36:00'),
(298, 19253, 37, '251', 83, 0, 0, '2025-10-27 23:39:36', '2025-10-27 23:39:36'),
(299, 19253, 37, '31', 83, 0, 0, '2025-10-27 23:40:08', '2025-10-27 23:40:08'),
(300, 19253, 37, '75', 83, 0, 0, '2025-10-27 23:40:52', '2025-10-27 23:40:52'),
(301, 19253, 37, '3', 83, 0, 0, '2025-10-27 23:40:56', '2025-10-27 23:40:56'),
(302, 19253, 37, '81', 83, 0, 0, '2025-10-27 23:42:14', '2025-10-27 23:42:14'),
(303, 19253, 37, '5', 83, 0, 0, '2025-10-27 23:42:20', '2025-10-27 23:42:20'),
(304, 19253, 37, '84', 83, 0, 0, '2025-10-27 23:43:39', '2025-10-27 23:43:39'),
(305, 19253, 37, '108', 83, 0, 0, '2025-10-27 23:44:03', '2025-10-27 23:44:03'),
(306, 19253, 37, '968', 83, 0, 0, '2025-10-27 23:58:24', '2025-10-27 23:58:24'),
(307, 19253, 37, '32', 83, 0, 0, '2025-10-27 23:58:57', '2025-10-27 23:58:57'),
(308, 19253, 37, '10', 83, 0, 0, '2025-10-27 23:59:08', '2025-10-27 23:59:08'),
(309, 19253, 37, '79', 83, 0, 0, '2025-10-28 00:00:17', '2025-10-28 00:00:17'),
(310, 19253, 37, '43', 83, 0, 0, '2025-10-28 00:01:06', '2025-10-28 00:01:06'),
(311, 19253, 37, '26', 83, 0, 0, '2025-10-28 00:01:33', '2025-10-28 00:01:33'),
(312, 19253, 37, '34', 83, 0, 0, '2025-10-28 00:01:40', '2025-10-28 00:01:40'),
(313, 19253, 37, '130', 83, 0, 0, '2025-10-28 00:03:17', '2025-10-28 00:03:17'),
(314, 19253, 37, '148', 83, 0, 0, '2025-10-28 00:03:35', '2025-10-28 00:03:35'),
(315, 19253, 37, '157', 83, 0, 0, '2025-10-28 00:03:43', '2025-10-28 00:03:43'),
(316, 19253, 37, '39', 83, 0, 0, '2025-10-28 00:04:23', '2025-10-28 00:04:23'),
(317, 19253, 37, '52', 83, 0, 0, '2025-10-28 00:04:36', '2025-10-28 00:04:36'),
(318, 19253, 37, '66', 83, 0, 0, '2025-10-28 00:04:51', '2025-10-28 00:04:51'),
(319, 19253, 37, '13', 83, 0, 0, '2025-10-28 00:05:04', '2025-10-28 00:05:04'),
(320, 19253, 37, '1908', 83, 0, 0, '2025-10-28 00:36:40', '2025-10-28 00:36:40'),
(321, 19253, 37, '1966', 83, 0, 0, '2025-10-28 00:37:38', '2025-10-28 00:37:38'),
(322, 19253, 37, '77', 83, 0, 0, '2025-10-28 00:38:56', '2025-10-28 00:38:56'),
(323, 19253, 37, '178', 83, 0, 0, '2025-10-28 00:40:37', '2025-10-28 00:40:37'),
(324, 19253, 37, '191', 83, 0, 0, '2025-10-28 00:40:50', '2025-10-28 00:40:50'),
(325, 19253, 37, '44', 83, 0, 0, '2025-10-28 00:41:35', '2025-10-28 00:41:35'),
(326, 19253, 37, '51', 83, 0, 0, '2025-10-28 00:41:42', '2025-10-28 00:41:42'),
(327, 19253, 37, '52', 83, 0, 0, '2025-10-28 00:41:42', '2025-10-28 00:41:42'),
(328, 19253, 37, '173', 83, 0, 0, '2025-10-28 01:35:59', '2025-10-28 01:35:59'),
(329, 19253, 37, '177', 83, 0, 0, '2025-10-28 01:36:03', '2025-10-28 01:36:03'),
(330, 19253, 37, '258', 83, 0, 0, '2025-10-28 01:37:24', '2025-10-28 01:37:24'),
(331, 19253, 37, '18', 83, 0, 0, '2025-10-28 01:37:43', '2025-10-28 01:37:43'),
(332, 19253, 37, '28', 83, 0, 0, '2025-10-28 01:37:54', '2025-10-28 01:37:54'),
(333, 19253, 37, '37', 83, 0, 0, '2025-10-28 01:38:02', '2025-10-28 01:38:02'),
(334, 19253, 37, '39', 83, 0, 0, '2025-10-28 01:38:42', '2025-10-28 01:38:42'),
(335, 19253, 37, '41', 83, 0, 0, '2025-10-28 01:38:45', '2025-10-28 01:38:45'),
(336, 19253, 37, '48', 83, 0, 0, '2025-10-28 01:38:51', '2025-10-28 01:38:51'),
(337, 19253, 37, '54', 83, 0, 0, '2025-10-28 01:38:57', '2025-10-28 01:38:57'),
(338, 19253, 37, '73', 83, 0, 0, '2025-10-28 01:39:16', '2025-10-28 01:39:16'),
(339, 19253, 37, '97', 83, 0, 0, '2025-10-28 01:39:40', '2025-10-28 01:39:40'),
(340, 19253, 37, '103', 83, 0, 0, '2025-10-28 01:39:46', '2025-10-28 01:39:46'),
(341, 19253, 37, '145', 83, 0, 0, '2025-10-28 01:40:29', '2025-10-28 01:40:29'),
(342, 19253, 37, '146', 83, 0, 0, '2025-10-28 01:40:29', '2025-10-28 01:40:29'),
(343, 19253, 37, '374', 83, 0, 0, '2025-10-28 01:44:16', '2025-10-28 01:44:16'),
(344, 19253, 37, '866', 83, 0, 0, '2025-10-28 01:52:29', '2025-10-28 01:52:29'),
(345, 19253, 37, '1460', 83, 0, 0, '2025-10-28 02:02:23', '2025-10-28 02:02:23'),
(346, 19253, 37, '1499', 83, 0, 0, '2025-10-28 02:03:02', '2025-10-28 02:03:02'),
(347, 19253, 37, '1519', 83, 0, 0, '2025-10-28 02:03:23', '2025-10-28 02:03:23'),
(348, 19253, 37, '1520', 83, 0, 0, '2025-10-28 02:03:23', '2025-10-28 02:03:23'),
(349, 19253, 37, '1727', 83, 0, 0, '2025-10-28 02:06:50', '2025-10-28 02:06:50'),
(350, 19253, 37, '1746', 83, 0, 0, '2025-10-28 02:07:09', '2025-10-28 02:07:09'),
(351, 19253, 37, '1768', 83, 0, 0, '2025-10-28 02:07:30', '2025-10-28 02:07:30'),
(352, 19253, 37, '1786', 83, 0, 0, '2025-10-28 02:07:49', '2025-10-28 02:07:49'),
(353, 19253, 37, '1812', 83, 0, 0, '2025-10-28 02:08:15', '2025-10-28 02:08:15'),
(354, 19253, 37, '1820', 83, 0, 0, '2025-10-28 02:08:23', '2025-10-28 02:08:23'),
(355, 19253, 37, '1848', 83, 0, 0, '2025-10-28 02:08:51', '2025-10-28 02:08:51'),
(356, 19253, 37, '1864', 83, 0, 0, '2025-10-28 02:09:07', '2025-10-28 02:09:07'),
(357, 19253, 37, '1868', 83, 0, 0, '2025-10-28 02:09:11', '2025-10-28 02:09:11'),
(358, 19253, 37, '2879', 83, 0, 0, '2025-10-28 02:26:02', '2025-10-28 02:26:02'),
(359, 19253, 37, '2881', 83, 0, 0, '2025-10-28 02:26:04', '2025-10-28 02:26:04'),
(360, 19253, 37, '4646', 83, 0, 0, '2025-10-28 02:55:29', '2025-10-28 02:55:29'),
(361, 19253, 37, '10', 83, 0, 0, '2025-10-28 02:55:40', '2025-10-28 02:55:40'),
(362, 19253, 37, '5', 83, 0, 0, '2025-10-28 03:16:05', '2025-10-28 03:16:05'),
(363, 19253, 37, '7', 84, 0, 0, '2025-10-28 05:05:29', '2025-10-28 05:05:29'),
(364, 19253, 37, '3', 81, 0, 0, '2025-10-28 05:06:20', '2025-10-28 05:06:20'),
(365, 19253, 37, '5', 81, 0, 0, '2025-10-28 05:06:26', '2025-10-28 05:06:26'),
(366, 19253, 37, '6', 81, 0, 0, '2025-10-28 05:06:33', '2025-10-28 05:06:33'),
(367, 19253, 37, '9', 81, 0, 0, '2025-10-28 05:06:42', '2025-10-28 05:06:42'),
(368, 19253, 37, '10', 81, 0, 0, '2025-10-28 05:06:53', '2025-10-28 05:06:53'),
(369, 19253, 36, '21', 65, 0, 0, '2025-10-28 05:28:33', '2025-10-28 05:28:33'),
(370, 19253, 36, '2103', 65, 0, 0, '2025-10-28 06:03:14', '2025-10-28 06:03:14'),
(371, 19253, 36, '2234', 65, 0, 0, '2025-10-28 06:05:26', '2025-10-28 06:05:26'),
(372, 19253, 36, '2247', 65, 0, 0, '2025-10-28 06:05:39', '2025-10-28 06:05:39'),
(373, 19253, 36, '2313', 65, 0, 0, '2025-10-28 06:06:44', '2025-10-28 06:06:44'),
(374, 19253, 36, '2316', 65, 0, 0, '2025-10-28 06:06:48', '2025-10-28 06:06:48'),
(375, 19253, 36, '3266', 65, 0, 0, '2025-10-28 06:22:38', '2025-10-28 06:22:38'),
(376, 19253, 36, '3281', 65, 0, 0, '2025-10-28 06:22:53', '2025-10-28 06:22:53'),
(377, 19253, 36, '4087', 65, 0, 0, '2025-10-28 06:36:20', '2025-10-28 06:36:20'),
(378, 19253, 36, '2', 65, 0, 0, '2025-10-28 07:02:44', '2025-10-28 07:02:44'),
(379, 19253, 36, '1', 65, 0, 0, '2025-10-28 07:02:47', '2025-10-28 07:02:47'),
(380, 19253, 37, '28', 83, 0, 0, '2025-10-28 07:03:34', '2025-10-28 07:03:34'),
(381, 19253, 37, '8', 83, 0, 0, '2025-10-28 07:03:42', '2025-10-28 07:03:42'),
(382, 19253, 37, '29', 83, 0, 0, '2025-10-28 07:04:03', '2025-10-28 07:04:03'),
(383, 19253, 37, '66', 86, 0, 0, '2025-10-28 22:28:15', '2025-10-28 22:28:15'),
(384, 19253, 37, '35', 86, 0, 0, '2025-10-28 22:28:51', '2025-10-28 22:28:51'),
(385, 19253, 37, '70', 86, 0, 0, '2025-10-28 22:30:04', '2025-10-28 22:30:04'),
(386, 19253, 37, '1288', 86, 0, 0, '2025-10-28 22:50:21', '2025-10-28 22:50:21'),
(387, 19253, 37, '1343', 86, 0, 0, '2025-10-28 22:51:16', '2025-10-28 22:51:16'),
(388, 19253, 37, '1469', 86, 0, 0, '2025-10-28 22:53:22', '2025-10-28 22:53:22'),
(389, 19253, 37, '22', 86, 0, 0, '2025-10-28 22:53:46', '2025-10-28 22:53:46'),
(390, 19253, 37, '7', 86, 0, 0, '2025-10-28 22:53:53', '2025-10-28 22:53:53'),
(391, 19253, 37, '48', 86, 0, 0, '2025-10-28 22:54:12', '2025-10-28 22:54:12'),
(392, 19253, 37, '140', 86, 0, 0, '2025-10-28 22:55:44', '2025-10-28 22:55:44'),
(393, 19253, 37, '170', 86, 0, 0, '2025-10-28 22:56:13', '2025-10-28 22:56:13'),
(394, 19253, 37, '172', 86, 0, 0, '2025-10-28 22:56:15', '2025-10-28 22:56:15'),
(395, 19253, 37, '190', 86, 0, 0, '2025-10-28 22:56:33', '2025-10-28 22:56:33'),
(396, 19253, 37, '231', 86, 0, 0, '2025-10-28 22:57:15', '2025-10-28 22:57:15'),
(397, 19253, 37, '397', 86, 0, 0, '2025-10-28 23:00:01', '2025-10-28 23:00:01'),
(398, 19253, 37, '473', 86, 0, 0, '2025-10-28 23:01:16', '2025-10-28 23:01:16'),
(399, 19253, 37, '2239', 86, 0, 0, '2025-10-28 23:30:43', '2025-10-28 23:30:43'),
(400, 19253, 37, '27', 86, 0, 0, '2025-10-29 01:09:47', '2025-10-29 01:09:47'),
(401, 19253, 37, '35', 86, 0, 0, '2025-10-29 01:09:55', '2025-10-29 01:09:55'),
(402, 19253, 37, '204', 86, 0, 0, '2025-10-29 01:12:44', '2025-10-29 01:12:44'),
(403, 19253, 37, '22', 86, 0, 0, '2025-10-29 01:13:07', '2025-10-29 01:13:07'),
(404, 19253, 37, '112', 86, 0, 0, '2025-10-29 01:14:37', '2025-10-29 01:14:37'),
(405, 19253, 37, '60', 86, 0, 0, '2025-10-29 01:15:38', '2025-10-29 01:15:38'),
(406, 19253, 37, '95', 86, 0, 0, '2025-10-29 01:16:13', '2025-10-29 01:16:13'),
(407, 19253, 37, '131', 86, 0, 0, '2025-10-29 01:16:49', '2025-10-29 01:16:49'),
(408, 19253, 37, '184', 86, 0, 0, '2025-10-29 01:17:42', '2025-10-29 01:17:42'),
(409, 19253, 37, '1451', 86, 0, 0, '2025-10-29 01:38:49', '2025-10-29 01:38:49'),
(410, 19253, 37, '23', 86, 0, 0, '2025-10-29 01:39:13', '2025-10-29 01:39:13'),
(411, 19253, 37, '51', 86, 0, 0, '2025-10-29 01:39:42', '2025-10-29 01:39:42'),
(412, 19253, 37, '96', 86, 0, 0, '2025-10-29 01:40:27', '2025-10-29 01:40:27'),
(413, 19253, 37, '23', 86, 0, 0, '2025-10-29 01:40:51', '2025-10-29 01:40:51'),
(414, 19253, 37, '61', 86, 0, 0, '2025-10-29 01:41:52', '2025-10-29 01:41:52'),
(415, 19253, 37, '72', 86, 0, 0, '2025-10-29 01:42:03', '2025-10-29 01:42:03'),
(416, 19253, 37, '3', 89, 0, 0, '2025-11-09 19:33:16', '2025-11-09 19:33:16'),
(417, 19253, 37, '11', 89, 0, 0, '2025-11-09 19:33:27', '2025-11-09 19:33:27'),
(418, 19253, 37, '3', 89, 0, 0, '2025-11-09 19:33:31', '2025-11-09 19:33:31'),
(419, 19253, 37, '3', 89, 0, 0, '2025-11-09 19:33:35', '2025-11-09 19:33:35'),
(420, 19253, 37, '3', 89, 0, 0, '2025-11-09 19:33:38', '2025-11-09 19:33:38'),
(421, 19253, 37, '3', 90, 0, 0, '2025-11-09 19:35:11', '2025-11-09 19:35:11'),
(422, 19253, 37, '3', 90, 0, 0, '2025-11-09 19:35:15', '2025-11-09 19:35:15'),
(423, 19253, 37, '6', 91, 0, 0, '2025-11-09 19:37:16', '2025-11-09 19:37:16'),
(424, 19253, 37, '1', 92, 0, 0, '2025-11-09 20:29:04', '2025-11-09 20:29:04'),
(425, 19253, 37, '39', 92, 0, 0, '2025-11-09 20:29:42', '2025-11-09 20:29:42'),
(426, 19253, 37, '42', 92, 0, 0, '2025-11-09 20:29:45', '2025-11-09 20:29:45'),
(427, 19253, 37, '61', 92, 0, 0, '2025-11-09 20:30:05', '2025-11-09 20:30:05'),
(428, 19253, 37, '6', 92, 0, 0, '2025-11-09 20:31:10', '2025-11-09 20:31:10'),
(429, 19253, 37, '4', 92, 0, 0, '2025-11-09 21:50:24', '2025-11-09 21:50:24'),
(430, 19253, 37, '4', 92, 0, 0, '2025-11-09 21:50:42', '2025-11-09 21:50:42'),
(431, 19253, 37, '7', 92, 0, 0, '2025-11-10 00:20:52', '2025-11-10 00:20:52'),
(432, 19253, 37, '3', 92, 0, 0, '2025-11-10 00:21:09', '2025-11-10 00:21:09'),
(433, 19253, 37, '6', 93, 0, 0, '2025-11-12 06:56:23', '2025-11-12 06:56:23'),
(434, 19253, 37, '4', 93, 0, 0, '2025-11-12 06:56:39', '2025-11-12 06:56:39'),
(435, 19253, 37, '5', 94, 0, 0, '2025-11-12 20:58:42', '2025-11-12 20:58:42'),
(436, 19253, 37, '24', 94, 0, 0, '2025-11-12 20:59:00', '2025-11-12 20:59:00'),
(437, 19253, 37, '3', 94, 0, 0, '2025-11-12 20:59:20', '2025-11-12 20:59:20'),
(438, 19253, 37, '8', 94, 0, 0, '2025-11-12 21:01:48', '2025-11-12 21:01:48'),
(439, 19253, 37, '44', 95, 0, 0, '2025-11-12 22:10:35', '2025-11-12 22:10:35'),
(440, 19253, 37, '7', 100, 0, 0, '2025-11-12 22:15:16', '2025-11-12 22:15:16'),
(441, 19253, 37, '52', 100, 0, 0, '2025-11-12 22:16:01', '2025-11-12 22:16:01'),
(442, 19253, 37, '55', 100, 0, 0, '2025-11-12 22:16:03', '2025-11-12 22:16:03'),
(443, 19253, 37, '88', 100, 0, 0, '2025-11-12 22:16:37', '2025-11-12 22:16:37'),
(444, 19253, 37, '122', 100, 0, 0, '2025-11-12 22:17:11', '2025-11-12 22:17:11'),
(445, 19253, 37, '136', 100, 0, 0, '2025-11-12 22:17:25', '2025-11-12 22:17:25'),
(446, 19253, 37, '430', 100, 0, 0, '2025-11-12 22:22:19', '2025-11-12 22:22:19'),
(447, 19253, 37, '562', 100, 0, 0, '2025-11-12 22:24:30', '2025-11-12 22:24:30'),
(448, 19253, 37, '958', 100, 0, 0, '2025-11-12 22:31:07', '2025-11-12 22:31:07'),
(449, 19253, 37, '970', 100, 0, 0, '2025-11-12 22:31:19', '2025-11-12 22:31:19'),
(450, 19253, 37, '5', 93, 0, 0, '2025-11-13 00:28:37', '2025-11-13 00:28:37'),
(451, 19253, 37, '10', 93, 0, 0, '2025-11-13 00:28:43', '2025-11-13 00:28:43'),
(452, 19253, 37, '5', 93, 0, 0, '2025-11-13 00:29:04', '2025-11-13 00:29:04'),
(453, 19253, 37, '111', 93, 0, 0, '2025-11-13 00:30:50', '2025-11-13 00:30:50'),
(454, 19253, 37, '41', 95, 0, 0, '2025-11-13 00:31:43', '2025-11-13 00:31:43'),
(455, 19253, 37, '93', 99, 0, 0, '2025-11-13 19:51:06', '2025-11-13 19:51:06'),
(456, 19253, 37, '7', 101, 0, 0, '2025-11-13 19:52:41', '2025-11-13 19:52:41'),
(457, 19253, 37, '4', 101, 0, 0, '2025-11-13 19:53:03', '2025-11-13 19:53:03'),
(458, 19253, 37, '247', 101, 0, 0, '2025-11-13 19:57:06', '2025-11-13 19:57:06'),
(459, 19253, 37, '2', 101, 0, 0, '2025-11-13 19:57:09', '2025-11-13 19:57:09'),
(460, 19253, 37, '1', 101, 0, 0, '2025-11-13 19:57:11', '2025-11-13 19:57:11'),
(461, 19253, 37, '5', 103, 0, 0, '2025-11-13 20:09:07', '2025-11-13 20:09:07'),
(462, 19253, 37, '3', 103, 0, 0, '2025-11-13 20:09:22', '2025-11-13 20:09:22'),
(463, 19253, 37, '49', 104, 0, 0, '2025-11-13 20:12:38', '2025-11-13 20:12:38'),
(464, 19253, 37, '3', 104, 0, 0, '2025-11-13 20:12:54', '2025-11-13 20:12:54'),
(465, 19249, 37, '7', 108, 0, 0, '2025-12-11 05:33:20', '2025-12-11 05:33:20'),
(466, 19249, 37, '19', 108, 0, 0, '2025-12-11 05:33:33', '2025-12-11 05:33:33'),
(467, 19249, 37, '4', 108, 0, 0, '2025-12-11 05:33:38', '2025-12-11 05:33:38'),
(468, 19249, 37, '8', 108, 0, 0, '2025-12-11 05:33:41', '2025-12-11 05:33:41'),
(469, 19249, 37, '5', 108, 0, 0, '2025-12-11 05:33:47', '2025-12-11 05:33:47'),
(470, 19249, 37, '9', 108, 0, 0, '2025-12-11 05:33:51', '2025-12-11 05:33:51'),
(471, 19249, 37, '3', 108, 0, 0, '2025-12-11 05:33:55', '2025-12-11 05:33:55'),
(472, 19249, 37, '4', 108, 0, 0, '2025-12-11 05:34:01', '2025-12-11 05:34:01'),
(473, 19249, 37, '15', 108, 0, 0, '2025-12-11 05:34:12', '2025-12-11 05:34:12'),
(474, 19249, 37, '4', 108, 0, 0, '2025-12-11 05:34:16', '2025-12-11 05:34:16'),
(475, 19249, 37, '8', 108, 0, 0, '2025-12-11 05:34:20', '2025-12-11 05:34:20'),
(476, 19249, 37, '3', 108, 0, 0, '2025-12-11 05:34:24', '2025-12-11 05:34:24'),
(477, 19249, 37, '8', 108, 0, 0, '2025-12-11 05:34:29', '2025-12-11 05:34:29'),
(478, 19249, 37, '3', 108, 0, 0, '2025-12-11 05:34:33', '2025-12-11 05:34:33'),
(479, 19249, 37, '8', 108, 0, 0, '2025-12-11 05:34:37', '2025-12-11 05:34:37'),
(480, 19249, 37, '4', 108, 0, 0, '2025-12-11 05:34:42', '2025-12-11 05:34:42'),
(481, 19249, 37, '11', 108, 0, 0, '2025-12-11 05:34:49', '2025-12-11 05:34:49'),
(482, 19249, 37, '3', 108, 0, 0, '2025-12-11 05:34:53', '2025-12-11 05:34:53'),
(483, 19249, 37, '8', 108, 0, 0, '2025-12-11 05:34:58', '2025-12-11 05:34:58'),
(484, 19249, 37, '6', 108, 0, 0, '2025-12-11 05:35:04', '2025-12-11 05:35:04'),
(485, 19249, 37, '0', 108, 0, 0, '2025-12-11 05:35:05', '2025-12-11 05:35:05'),
(486, 19249, 37, '9', 108, 0, 0, '2025-12-11 05:35:14', '2025-12-11 05:35:14'),
(487, 19249, 37, '0', 108, 0, 0, '2025-12-11 05:35:15', '2025-12-11 05:35:15'),
(488, 19249, 37, '6', 108, 0, 0, '2025-12-11 05:35:21', '2025-12-11 05:35:21'),
(489, 19249, 37, '4', 108, 0, 0, '2025-12-11 05:35:25', '2025-12-11 05:35:25'),
(490, 19249, 37, '1', 108, 0, 0, '2025-12-11 05:35:27', '2025-12-11 05:35:27'),
(491, 19249, 37, '10', 108, 0, 0, '2025-12-11 05:35:36', '2025-12-11 05:35:36'),
(492, 19249, 37, '16', 108, 0, 0, '2025-12-11 05:35:42', '2025-12-11 05:35:42'),
(493, 19235, 37, '19', 108, 0, 0, '2025-12-11 05:42:03', '2025-12-11 05:42:03'),
(494, 19235, 37, '4', 108, 0, 0, '2025-12-11 05:42:08', '2025-12-11 05:42:08'),
(495, 19235, 37, '8', 108, 0, 0, '2025-12-11 05:42:16', '2025-12-11 05:42:16'),
(496, 19235, 37, '7', 108, 0, 0, '2025-12-11 05:42:23', '2025-12-11 05:42:23'),
(497, 19235, 37, '73', 108, 0, 0, '2025-12-11 05:43:38', '2025-12-11 05:43:38'),
(498, 19235, 37, '135', 108, 0, 0, '2025-12-11 05:44:39', '2025-12-11 05:44:39'),
(499, 19235, 37, '142', 108, 0, 0, '2025-12-11 05:44:47', '2025-12-11 05:44:47'),
(500, 19235, 37, '143', 108, 0, 0, '2025-12-11 05:44:47', '2025-12-11 05:44:47'),
(501, 19235, 37, '1448', 108, 0, 0, '2025-12-11 06:06:31', '2025-12-11 06:06:31'),
(502, 19235, 37, '1468', 108, 0, 0, '2025-12-11 06:06:52', '2025-12-11 06:06:52'),
(503, 19235, 37, '2791', 108, 0, 0, '2025-12-11 06:28:56', '2025-12-11 06:28:56'),
(504, 19235, 37, '2899', 108, 0, 0, '2025-12-11 06:30:43', '2025-12-11 06:30:43'),
(505, 19235, 37, '2913', 108, 0, 0, '2025-12-11 06:30:57', '2025-12-11 06:30:57'),
(506, 19235, 37, '2938', 108, 0, 0, '2025-12-11 06:31:22', '2025-12-11 06:31:22'),
(507, 19249, 37, '0', 110, 0, 0, '2025-12-11 22:17:58', '2025-12-11 22:17:58'),
(508, 19235, 37, '0', 110, 0, 0, '2025-12-11 22:18:01', '2025-12-11 22:18:01'),
(509, 19249, 37, '9', 110, 0, 0, '2025-12-11 22:18:06', '2025-12-11 22:18:06'),
(510, 19235, 37, '22', 110, 0, 0, '2025-12-11 22:18:23', '2025-12-11 22:18:23'),
(511, 19235, 37, '6', 110, 0, 0, '2025-12-11 22:18:30', '2025-12-11 22:18:30'),
(512, 19249, 37, '38', 110, 0, 0, '2025-12-11 22:18:35', '2025-12-11 22:18:35'),
(513, 19249, 37, '4', 110, 0, 0, '2025-12-11 22:18:40', '2025-12-11 22:18:40'),
(514, 19235, 37, '20', 110, 0, 0, '2025-12-11 22:18:44', '2025-12-11 22:18:44'),
(515, 19235, 37, '7', 110, 0, 0, '2025-12-11 22:18:52', '2025-12-11 22:18:52'),
(516, 19249, 37, '18', 110, 0, 0, '2025-12-11 22:18:54', '2025-12-11 22:18:54'),
(517, 19235, 37, '3', 110, 0, 0, '2025-12-11 22:18:56', '2025-12-11 22:18:56'),
(518, 19249, 37, '23', 110, 0, 0, '2025-12-11 22:18:59', '2025-12-11 22:18:59'),
(519, 19235, 37, '3', 110, 0, 0, '2025-12-11 22:19:00', '2025-12-11 22:19:00'),
(520, 19249, 37, '28', 110, 0, 0, '2025-12-11 22:19:04', '2025-12-11 22:19:04'),
(521, 19235, 37, '7', 110, 0, 0, '2025-12-11 22:19:08', '2025-12-11 22:19:08'),
(522, 19249, 37, '34', 110, 0, 0, '2025-12-11 22:19:10', '2025-12-11 22:19:10'),
(523, 19249, 37, '5', 110, 0, 0, '2025-12-11 22:19:16', '2025-12-11 22:19:16'),
(524, 19249, 37, '6', 110, 0, 0, '2025-12-11 22:19:22', '2025-12-11 22:19:22'),
(525, 19249, 37, '3', 110, 0, 0, '2025-12-11 22:19:26', '2025-12-11 22:19:26'),
(526, 19249, 37, '5', 110, 0, 0, '2025-12-11 22:19:32', '2025-12-11 22:19:32'),
(527, 19235, 37, '37', 110, 0, 0, '2025-12-11 22:19:38', '2025-12-11 22:19:38'),
(528, 19249, 37, '14', 110, 0, 0, '2025-12-11 22:19:41', '2025-12-11 22:19:41'),
(529, 19235, 37, '3', 110, 0, 0, '2025-12-11 22:19:42', '2025-12-11 22:19:42'),
(530, 19235, 37, '1', 110, 0, 0, '2025-12-11 22:19:44', '2025-12-11 22:19:44'),
(531, 19249, 37, '19', 110, 0, 0, '2025-12-11 22:19:46', '2025-12-11 22:19:46'),
(532, 19249, 37, '1', 110, 0, 0, '2025-12-11 22:19:47', '2025-12-11 22:19:47'),
(533, 19235, 37, '7', 110, 0, 0, '2025-12-11 22:19:50', '2025-12-11 22:19:50'),
(534, 19235, 37, '0', 110, 0, 0, '2025-12-11 22:19:50', '2025-12-11 22:19:50'),
(535, 19249, 37, '6', 110, 0, 0, '2025-12-11 22:19:53', '2025-12-11 22:19:53'),
(536, 19249, 37, '1', 110, 0, 0, '2025-12-11 22:19:54', '2025-12-11 22:19:54'),
(537, 19235, 37, '6', 110, 0, 0, '2025-12-11 22:19:56', '2025-12-11 22:19:56'),
(538, 19235, 37, '1', 110, 0, 0, '2025-12-11 22:19:58', '2025-12-11 22:19:58'),
(539, 19249, 37, '7', 110, 0, 0, '2025-12-11 22:20:00', '2025-12-11 22:20:00'),
(540, 19249, 37, '1', 110, 0, 0, '2025-12-11 22:20:02', '2025-12-11 22:20:02'),
(541, 19235, 37, '7', 110, 0, 0, '2025-12-11 22:20:05', '2025-12-11 22:20:05'),
(542, 19249, 37, '6', 110, 0, 0, '2025-12-11 22:20:07', '2025-12-11 22:20:07'),
(543, 19249, 37, '3', 110, 0, 0, '2025-12-11 22:20:11', '2025-12-11 22:20:11'),
(544, 19235, 37, '7', 111, 0, 0, '2025-12-12 02:58:04', '2025-12-12 02:58:04'),
(545, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:08', '2025-12-12 02:58:08'),
(546, 19235, 37, '6', 111, 0, 0, '2025-12-12 02:58:15', '2025-12-12 02:58:15'),
(547, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:19', '2025-12-12 02:58:19'),
(548, 19235, 37, '7', 111, 0, 0, '2025-12-12 02:58:26', '2025-12-12 02:58:26'),
(549, 19235, 37, '4', 111, 0, 0, '2025-12-12 02:58:30', '2025-12-12 02:58:30'),
(550, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:35', '2025-12-12 02:58:35'),
(551, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:39', '2025-12-12 02:58:39'),
(552, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:42', '2025-12-12 02:58:42'),
(553, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:45', '2025-12-12 02:58:45'),
(554, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:49', '2025-12-12 02:58:49'),
(555, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:53', '2025-12-12 02:58:53'),
(556, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:58:56', '2025-12-12 02:58:56'),
(557, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:00', '2025-12-12 02:59:00'),
(558, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:03', '2025-12-12 02:59:03'),
(559, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:07', '2025-12-12 02:59:07'),
(560, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:10', '2025-12-12 02:59:10'),
(561, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:14', '2025-12-12 02:59:14'),
(562, 19235, 37, '3', 111, 0, 0, '2025-12-12 02:59:17', '2025-12-12 02:59:17'),
(563, 19235, 37, '4', 111, 0, 0, '2025-12-12 02:59:22', '2025-12-12 02:59:22'),
(564, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:38:40', '2025-12-16 02:38:40'),
(565, 19235, 37, '5', 110, 0, 0, '2025-12-16 02:38:46', '2025-12-16 02:38:46'),
(566, 19249, 37, '14', 110, 0, 0, '2025-12-16 02:38:53', '2025-12-16 02:38:53'),
(567, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:38:54', '2025-12-16 02:38:54'),
(568, 19235, 37, '15', 110, 0, 0, '2025-12-16 02:38:56', '2025-12-16 02:38:56'),
(569, 19235, 37, '4', 110, 0, 0, '2025-12-16 02:39:01', '2025-12-16 02:39:01'),
(570, 19249, 37, '9', 110, 0, 0, '2025-12-16 02:39:03', '2025-12-16 02:39:03'),
(571, 19235, 37, '9', 110, 0, 0, '2025-12-16 02:39:07', '2025-12-16 02:39:07'),
(572, 19249, 37, '16', 110, 0, 0, '2025-12-16 02:39:10', '2025-12-16 02:39:10'),
(573, 19249, 37, '5', 110, 0, 0, '2025-12-16 02:39:16', '2025-12-16 02:39:16'),
(574, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:39:17', '2025-12-16 02:39:17'),
(575, 19235, 37, '22', 110, 0, 0, '2025-12-16 02:39:19', '2025-12-16 02:39:19'),
(576, 19249, 37, '9', 110, 0, 0, '2025-12-16 02:39:26', '2025-12-16 02:39:26'),
(577, 19235, 37, '9', 110, 0, 0, '2025-12-16 02:39:29', '2025-12-16 02:39:29'),
(578, 19235, 37, '5', 110, 0, 0, '2025-12-16 02:39:35', '2025-12-16 02:39:35'),
(579, 19235, 37, '2', 110, 0, 0, '2025-12-16 02:39:37', '2025-12-16 02:39:37'),
(580, 19249, 37, '23', 110, 0, 0, '2025-12-16 02:39:41', '2025-12-16 02:39:41'),
(581, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:39:41', '2025-12-16 02:39:41'),
(582, 19235, 37, '7', 110, 0, 0, '2025-12-16 02:39:43', '2025-12-16 02:39:43'),
(583, 19235, 37, '4', 110, 0, 0, '2025-12-16 02:39:47', '2025-12-16 02:39:47'),
(584, 19235, 37, '2', 110, 0, 0, '2025-12-16 02:39:50', '2025-12-16 02:39:50'),
(585, 19249, 37, '12', 110, 0, 0, '2025-12-16 02:39:53', '2025-12-16 02:39:53'),
(586, 19249, 37, '4', 110, 0, 0, '2025-12-16 02:39:58', '2025-12-16 02:39:58'),
(587, 19235, 37, '13', 110, 0, 0, '2025-12-16 02:40:01', '2025-12-16 02:40:01'),
(588, 19249, 37, '6', 110, 0, 0, '2025-12-16 02:40:06', '2025-12-16 02:40:06'),
(589, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:40:07', '2025-12-16 02:40:07'),
(590, 19235, 37, '22', 110, 0, 0, '2025-12-16 02:40:10', '2025-12-16 02:40:10'),
(591, 19235, 37, '4', 110, 0, 0, '2025-12-16 02:40:15', '2025-12-16 02:40:15'),
(592, 19235, 37, '1', 110, 0, 0, '2025-12-16 02:40:16', '2025-12-16 02:40:16'),
(593, 19249, 37, '13', 110, 0, 0, '2025-12-16 02:40:19', '2025-12-16 02:40:19'),
(594, 19249, 37, '0', 110, 0, 0, '2025-12-16 02:40:20', '2025-12-16 02:40:20'),
(595, 19235, 37, '8', 110, 0, 0, '2025-12-16 02:40:23', '2025-12-16 02:40:23'),
(596, 19235, 37, '1', 110, 0, 0, '2025-12-16 02:40:25', '2025-12-16 02:40:25'),
(597, 19249, 37, '9', 110, 0, 0, '2025-12-16 02:40:29', '2025-12-16 02:40:29'),
(598, 19249, 37, '4', 110, 0, 0, '2025-12-16 02:40:33', '2025-12-16 02:40:33'),
(599, 19235, 37, '12', 110, 0, 0, '2025-12-16 02:40:36', '2025-12-16 02:40:36'),
(600, 19235, 37, '11', 109, 0, 0, '2025-12-17 00:49:00', '2025-12-17 00:49:00'),
(601, 700812349, 41, '13', 113, 0, 0, '2025-12-17 01:50:32', '2025-12-17 01:50:32'),
(602, 700812349, 41, '6', 113, 0, 0, '2025-12-17 01:50:39', '2025-12-17 01:50:39'),
(603, 700812349, 41, '11', 113, 0, 0, '2025-12-17 01:50:51', '2025-12-17 01:50:51'),
(604, 700812349, 41, '11', 113, 0, 0, '2025-12-17 01:51:03', '2025-12-17 01:51:03'),
(605, 700812349, 41, '6', 113, 0, 0, '2025-12-17 01:51:10', '2025-12-17 01:51:10'),
(606, 700812349, 1, '8', 115, 0, 0, '2025-12-17 02:14:40', '2025-12-17 02:14:40'),
(607, 700812349, 1, '219', 115, 0, 0, '2025-12-17 02:18:11', '2025-12-17 02:18:11'),
(608, 700812349, 1, '318', 115, 0, 0, '2025-12-17 02:19:50', '2025-12-17 02:19:50'),
(609, 700812349, 1, '461', 115, 0, 0, '2025-12-17 02:22:13', '2025-12-17 02:22:13'),
(610, 700812349, 1, '476', 115, 0, 0, '2025-12-17 02:22:28', '2025-12-17 02:22:28'),
(611, 700812349, 1, '477', 115, 0, 0, '2025-12-17 02:22:29', '2025-12-17 02:22:29'),
(612, 700812349, 1, '491', 115, 0, 0, '2025-12-17 02:22:43', '2025-12-17 02:22:43'),
(613, 700812349, 1, '496', 115, 0, 0, '2025-12-17 02:22:48', '2025-12-17 02:22:48'),
(614, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:23:02', '2025-12-17 02:23:02'),
(615, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:23:06', '2025-12-17 02:23:06'),
(616, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:23:10', '2025-12-17 02:23:10'),
(617, 700812349, 1, '7', 116, 0, 0, '2025-12-17 02:23:17', '2025-12-17 02:23:17'),
(618, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:23:21', '2025-12-17 02:23:21'),
(619, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:24:41', '2025-12-17 02:24:41'),
(620, 700812349, 1, '4', 116, 0, 0, '2025-12-17 02:24:45', '2025-12-17 02:24:45'),
(621, 700812349, 1, '3', 116, 0, 0, '2025-12-17 02:24:49', '2025-12-17 02:24:49'),
(622, 700812349, 1, '4', 116, 0, 0, '2025-12-17 02:24:53', '2025-12-17 02:24:53'),
(623, 700812349, 1, '6', 116, 0, 0, '2025-12-17 02:24:59', '2025-12-17 02:24:59'),
(624, 700812349, 1, '836', 115, 0, 0, '2025-12-17 02:28:28', '2025-12-17 02:28:28'),
(625, 700812349, 1, '895', 115, 0, 0, '2025-12-17 02:29:28', '2025-12-17 02:29:28'),
(626, 700812349, 1, '897', 115, 0, 0, '2025-12-17 02:29:29', '2025-12-17 02:29:29'),
(627, 700812349, 1, '898', 115, 0, 0, '2025-12-17 02:29:30', '2025-12-17 02:29:30'),
(628, 700812349, 1, '909', 115, 0, 0, '2025-12-17 02:29:41', '2025-12-17 02:29:41'),
(629, 700812349, 1, '918', 115, 0, 0, '2025-12-17 02:29:51', '2025-12-17 02:29:51'),
(630, 700812349, 1, '1578', 115, 0, 0, '2025-12-17 02:40:50', '2025-12-17 02:40:50'),
(631, 700812349, 1, '1594', 115, 0, 0, '2025-12-17 02:41:06', '2025-12-17 02:41:06'),
(632, 700812349, 1, '1631', 115, 0, 0, '2025-12-17 02:41:43', '2025-12-17 02:41:43'),
(633, 700812349, 1, '1646', 115, 0, 0, '2025-12-17 02:41:58', '2025-12-17 02:41:58'),
(634, 700812349, 1, '1663', 115, 0, 0, '2025-12-17 02:42:15', '2025-12-17 02:42:15'),
(635, 700812349, 1, '1708', 115, 0, 0, '2025-12-17 02:43:00', '2025-12-17 02:43:00');
INSERT INTO `training_times` (`id`, `employee_id`, `course_id`, `seconds`, `content_id`, `total_time`, `is_completed`, `created_at`, `updated_at`) VALUES
(636, 700812349, 1, '1747', 115, 0, 0, '2025-12-17 02:43:40', '2025-12-17 02:43:40'),
(637, 700812349, 1, '1750', 115, 0, 0, '2025-12-17 02:43:43', '2025-12-17 02:43:43'),
(638, 700812349, 1, '1805', 115, 0, 0, '2025-12-17 02:44:37', '2025-12-17 02:44:37'),
(639, 700812349, 1, '1826', 115, 0, 0, '2025-12-17 02:44:58', '2025-12-17 02:44:58'),
(640, 700812349, 1, '1833', 115, 0, 0, '2025-12-17 02:45:05', '2025-12-17 02:45:05'),
(641, 700812349, 1, '1833', 115, 0, 0, '2025-12-17 02:45:05', '2025-12-17 02:45:05'),
(642, 700812349, 1, '1874', 115, 0, 0, '2025-12-17 02:45:46', '2025-12-17 02:45:46'),
(643, 700812349, 1, '1946', 115, 0, 0, '2025-12-17 02:46:59', '2025-12-17 02:46:59'),
(644, 700812349, 1, '2146', 115, 0, 0, '2025-12-17 02:50:18', '2025-12-17 02:50:18'),
(645, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:35:55', '2025-12-17 03:35:55'),
(646, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:35:58', '2025-12-17 03:35:58'),
(647, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:02', '2025-12-17 03:36:02'),
(648, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:06', '2025-12-17 03:36:06'),
(649, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:10', '2025-12-17 03:36:10'),
(650, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:24', '2025-12-17 03:36:24'),
(651, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:28', '2025-12-17 03:36:28'),
(652, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:32', '2025-12-17 03:36:32'),
(653, 700812349, 1, '4', 118, 0, 0, '2025-12-17 03:36:37', '2025-12-17 03:36:37'),
(654, 700812349, 1, '3', 118, 0, 0, '2025-12-17 03:36:41', '2025-12-17 03:36:41'),
(655, 700812349, 1, '5', 119, 0, 0, '2025-12-17 03:46:44', '2025-12-17 03:46:44'),
(656, 700812349, 1, '3', 119, 0, 0, '2025-12-17 03:46:48', '2025-12-17 03:46:48'),
(657, 700812349, 1, '3', 119, 0, 0, '2025-12-17 03:46:52', '2025-12-17 03:46:52'),
(658, 700812349, 1, '5', 119, 0, 0, '2025-12-17 03:46:58', '2025-12-17 03:46:58'),
(659, 700812349, 1, '4', 119, 0, 0, '2025-12-17 03:47:03', '2025-12-17 03:47:03'),
(660, 700812349, 1, '3', 120, 0, 0, '2025-12-17 04:09:50', '2025-12-17 04:09:50'),
(661, 700812349, 1, '5', 120, 0, 0, '2025-12-17 04:09:56', '2025-12-17 04:09:56'),
(662, 700812349, 1, '3', 120, 0, 0, '2025-12-17 04:10:00', '2025-12-17 04:10:00'),
(663, 700812349, 1, '4', 120, 0, 0, '2025-12-17 04:10:05', '2025-12-17 04:10:05'),
(664, 700812349, 1, '5', 120, 0, 0, '2025-12-17 04:10:11', '2025-12-17 04:10:11'),
(665, 700812349, 1, '3', 121, 0, 0, '2025-12-17 04:11:10', '2025-12-17 04:11:10'),
(666, 700812349, 1, '4', 121, 0, 0, '2025-12-17 04:11:14', '2025-12-17 04:11:14'),
(667, 700812349, 1, '3', 121, 0, 0, '2025-12-17 04:11:18', '2025-12-17 04:11:18'),
(668, 700812349, 1, '3', 121, 0, 0, '2025-12-17 04:11:23', '2025-12-17 04:11:23'),
(669, 700812349, 1, '3', 121, 0, 0, '2025-12-17 04:11:27', '2025-12-17 04:11:27'),
(670, 700812349, 1, '3', 116, 0, 0, '2025-12-17 05:01:22', '2025-12-17 05:01:22'),
(671, 700812349, 1, '3', 116, 0, 0, '2025-12-17 05:01:26', '2025-12-17 05:01:26'),
(672, 700812349, 1, '3', 116, 0, 0, '2025-12-17 05:01:29', '2025-12-17 05:01:29'),
(673, 700812349, 1, '3', 116, 0, 0, '2025-12-17 05:01:32', '2025-12-17 05:01:32'),
(674, 700812349, 1, '3', 116, 0, 0, '2025-12-17 05:01:36', '2025-12-17 05:01:36'),
(675, 700812349, 1, '5', 118, 0, 0, '2025-12-17 07:08:26', '2025-12-17 07:08:26'),
(676, 700812349, 1, '3', 118, 0, 0, '2025-12-17 07:08:30', '2025-12-17 07:08:30'),
(677, 700812349, 1, '4', 118, 0, 0, '2025-12-17 07:08:35', '2025-12-17 07:08:35'),
(678, 700812349, 1, '3', 118, 0, 0, '2025-12-17 07:08:39', '2025-12-17 07:08:39'),
(679, 700812349, 1, '4', 118, 0, 0, '2025-12-17 07:08:43', '2025-12-17 07:08:43'),
(680, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:00:11', '2025-12-18 03:00:11'),
(681, 19253, 1, '2', 116, 0, 0, '2025-12-18 03:00:14', '2025-12-18 03:00:14'),
(682, 19253, 1, '2', 116, 0, 0, '2025-12-18 03:00:17', '2025-12-18 03:00:17'),
(683, 19253, 1, '0', 116, 0, 0, '2025-12-18 03:00:18', '2025-12-18 03:00:18'),
(684, 19253, 1, '121', 116, 0, 0, '2025-12-18 03:02:19', '2025-12-18 03:02:19'),
(685, 19253, 1, '218', 116, 0, 0, '2025-12-18 03:03:56', '2025-12-18 03:03:56'),
(686, 19253, 1, '5', 116, 0, 0, '2025-12-18 03:04:02', '2025-12-18 03:04:02'),
(687, 19253, 1, '2', 116, 0, 0, '2025-12-18 03:04:16', '2025-12-18 03:04:16'),
(688, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:19', '2025-12-18 03:04:19'),
(689, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:23', '2025-12-18 03:04:23'),
(690, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:27', '2025-12-18 03:04:27'),
(691, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:30', '2025-12-18 03:04:30'),
(692, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:43', '2025-12-18 03:04:43'),
(693, 19253, 1, '2', 116, 0, 0, '2025-12-18 03:04:46', '2025-12-18 03:04:46'),
(694, 19253, 1, '3', 116, 0, 0, '2025-12-18 03:04:49', '2025-12-18 03:04:49'),
(695, 19253, 1, '4', 116, 0, 0, '2025-12-18 03:04:54', '2025-12-18 03:04:54'),
(696, 19253, 1, '4', 116, 0, 0, '2025-12-18 03:04:59', '2025-12-18 03:04:59'),
(697, 19253, 1, '4', 118, 0, 0, '2025-12-18 03:15:54', '2025-12-18 03:15:54'),
(698, 19253, 1, '2', 118, 0, 0, '2025-12-18 03:15:57', '2025-12-18 03:15:57'),
(699, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:16:01', '2025-12-18 03:16:01'),
(700, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:16:05', '2025-12-18 03:16:05'),
(701, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:16:08', '2025-12-18 03:16:08'),
(702, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:16:56', '2025-12-18 03:16:56'),
(703, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:17:00', '2025-12-18 03:17:00'),
(704, 19253, 1, '2', 118, 0, 0, '2025-12-18 03:17:03', '2025-12-18 03:17:03'),
(705, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:17:06', '2025-12-18 03:17:06'),
(706, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:17:09', '2025-12-18 03:17:09'),
(707, 19253, 1, '6', 118, 0, 0, '2025-12-18 03:18:26', '2025-12-18 03:18:26'),
(708, 19253, 1, '0', 118, 0, 0, '2025-12-18 03:18:27', '2025-12-18 03:18:27'),
(709, 19253, 1, '6', 118, 0, 0, '2025-12-18 03:18:32', '2025-12-18 03:18:32'),
(710, 19253, 1, '136', 118, 0, 0, '2025-12-18 03:20:43', '2025-12-18 03:20:43'),
(711, 19253, 1, '3', 118, 0, 0, '2025-12-18 03:20:47', '2025-12-18 03:20:47'),
(712, 19253, 1, '4', 118, 0, 0, '2025-12-18 03:20:52', '2025-12-18 03:20:52'),
(713, 19253, 1, '4', 118, 0, 0, '2025-12-18 03:20:57', '2025-12-18 03:20:57'),
(714, 19253, 1, '14', 119, 0, 0, '2025-12-18 04:08:59', '2025-12-18 04:08:59'),
(715, 19253, 1, '22', 119, 0, 0, '2025-12-18 04:09:07', '2025-12-18 04:09:07'),
(716, 19253, 1, '8', 119, 0, 0, '2025-12-18 04:09:16', '2025-12-18 04:09:16'),
(717, 19253, 1, '84', 119, 0, 0, '2025-12-18 04:10:31', '2025-12-18 04:10:31'),
(718, 19253, 1, '5', 122, 0, 0, '2025-12-18 04:10:48', '2025-12-18 04:10:48'),
(719, 19253, 1, '4', 122, 0, 0, '2025-12-18 04:10:53', '2025-12-18 04:10:53'),
(720, 19253, 1, '4', 122, 0, 0, '2025-12-18 04:10:58', '2025-12-18 04:10:58'),
(721, 19253, 1, '3', 122, 0, 0, '2025-12-18 04:11:01', '2025-12-18 04:11:01'),
(722, 19253, 1, '3', 122, 0, 0, '2025-12-18 04:11:05', '2025-12-18 04:11:05'),
(723, 19253, 1, '3', 123, 0, 0, '2025-12-18 04:24:44', '2025-12-18 04:24:44'),
(724, 19253, 1, '4', 123, 0, 0, '2025-12-18 04:24:49', '2025-12-18 04:24:49'),
(725, 19253, 1, '3', 123, 0, 0, '2025-12-18 04:24:52', '2025-12-18 04:24:52'),
(726, 19253, 1, '4', 123, 0, 0, '2025-12-18 04:24:58', '2025-12-18 04:24:58'),
(727, 19253, 1, '4', 123, 0, 0, '2025-12-18 04:25:02', '2025-12-18 04:25:02'),
(728, 19253, 1, '7', 115, 0, 0, '2025-12-23 21:42:57', '2025-12-23 21:42:57'),
(729, 19253, 1, '16', 115, 0, 0, '2025-12-23 21:43:55', '2025-12-23 21:43:55'),
(730, 19253, 1, '28', 115, 0, 0, '2025-12-23 21:44:08', '2025-12-23 21:44:08'),
(731, 19253, 1, '59', 115, 0, 0, '2025-12-23 21:44:39', '2025-12-23 21:44:39'),
(732, 19253, 1, '124', 115, 0, 0, '2025-12-23 21:45:43', '2025-12-23 21:45:43'),
(733, 19253, 1, '213', 115, 0, 0, '2025-12-23 21:47:12', '2025-12-23 21:47:12'),
(734, 19253, 1, '390', 115, 0, 0, '2025-12-23 21:50:08', '2025-12-23 21:50:08'),
(735, 19253, 1, '425', 115, 0, 0, '2025-12-23 21:50:43', '2025-12-23 21:50:43'),
(736, 19253, 1, '426', 115, 0, 0, '2025-12-23 21:50:45', '2025-12-23 21:50:45'),
(737, 19253, 1, '654', 115, 0, 0, '2025-12-23 21:54:35', '2025-12-23 21:54:35'),
(738, 19253, 1, '734', 115, 0, 0, '2025-12-23 21:55:54', '2025-12-23 21:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cvb_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `mobile_no` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `work` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `job_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `profile_pic` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `company_site` varchar(255) DEFAULT NULL,
  `verification_status` text COMMENT '0=not verified, 1=email verified, 2=password generated',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `group_id` text,
  `role_id` int DEFAULT NULL,
  `global_role_id` text,
  `is_marked_global` tinyint DEFAULT NULL,
  `sub_role_id` text,
  `company_id` text COMMENT 'Client company',
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` text COMMENT 'Contractor company',
  `multiple_contractor_company` text,
  `multiple_site_location` text,
  `contract_id` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `complete_profile_reminder` varchar(100) DEFAULT NULL,
  `send_email_later` varchar(100) DEFAULT NULL,
  `user_online` int DEFAULT NULL,
  `employee_reference` int NOT NULL DEFAULT '0',
  `active_status` text,
  `avatar` text,
  `dark_mode` text,
  `messenger_color` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `third_party_agent_type` text,
  `third_party_agent_name` text,
  `status` tinyint NOT NULL DEFAULT '1',
  `employee_avalabilty` tinyint DEFAULT NULL,
  `invite_colloborator` text,
  `evr_status` varchar(250) NOT NULL DEFAULT 'noevr' COMMENT 'not generated=noevr pending=pending approved=approved reject=reject expired=expired',
  `failed_attempts` int NOT NULL DEFAULT '0',
  `blocked_at` timestamp NULL DEFAULT NULL,
  `User_Status` text,
  `User_Roles` text,
  `account_type` text,
  `fcm_token` text,
  PRIMARY KEY (`id`),
  KEY `Name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=700812350 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cvb_id`, `name`, `first_name`, `middle_name`, `last_name`, `email`, `username`, `mobile_no`, `work`, `job_title`, `profile_pic`, `company_site`, `verification_status`, `email_verified_at`, `password`, `group_id`, `role_id`, `global_role_id`, `is_marked_global`, `sub_role_id`, `company_id`, `country_code`, `supplier_id`, `multiple_contractor_company`, `multiple_site_location`, `contract_id`, `remember_token`, `complete_profile_reminder`, `send_email_later`, `user_online`, `employee_reference`, `active_status`, `avatar`, `dark_mode`, `messenger_color`, `created_at`, `updated_at`, `third_party_agent_type`, `third_party_agent_name`, `status`, `employee_avalabilty`, `invite_colloborator`, `evr_status`, `failed_attempts`, `blocked_at`, `User_Status`, `User_Roles`, `account_type`, `fcm_token`) VALUES
(18267, NULL, 'CVB Administrator', 'CVB', NULL, 'Administrator', 'siteassured@gmail.com', NULL, NULL, NULL, 'Admin', NULL, NULL, '2', NULL, '$2y$10$/MkIycHclcKoYhMgHskFE.tpby6Y7Xp/4OIPLkjyd7n9mtgvTt93G', NULL, 1, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '0', NULL, NULL, NULL, '2025-04-18 21:17:39', '2025-12-18 20:22:09', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, 'active', 'Administrator', 'administrator', NULL),
(19230, 'CVB-', 'Karthik Deshwal', 'Karthik', NULL, 'Deshwal', 'karthikdeshwal011@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/ieX6KEKB03Vaf3cy5h5AxLUO9qLNLYy9q59b5j9D.jpg', NULL, '1', NULL, '$2y$12$Obo.7FID2az3UFvWnaYiJuEiERPTOyqQpJT/PeASHSGURsx8VFqYi', NULL, 16, '[\"16\"]', NULL, NULL, '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:22:16', '2025-07-23 19:52:06', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19231, 'CVB-', 'Anubhav Panwar', 'Anubhav', NULL, 'Panwar', 'anubhavpanwar66@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/6Buoo5qJOr1kIv60NRLYNsdVvkFsVyVsg7USewJB.jpg', NULL, '2', '2025-07-21 23:30:08', '$2y$10$/MkIycHclcKoYhMgHskFE.tpby6Y7Xp/4OIPLkjyd7n9mtgvTt93G', NULL, 227, '[\"227\"]', NULL, NULL, NULL, 'United States', '1', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:24:27', '2025-10-16 00:31:39', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19232, 'CVB-', 'HSE Verifier', 'HSE', NULL, 'Verifier', 'anubhavpanwar777@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/0o7iXXklrqV4GJn0np8Wx6hJVbTIuIYvOkS7V5za.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 236, '[\"5\",\"236\"]', 1, '[\"1\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:31:50', '2025-08-06 01:56:35', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19233, 'CVB-', 'Medical Verifier', 'Medical', NULL, 'Verifier', 'visheshpanwar0711@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/GB2GPjXkRpC8P90500mXkbwDxWacfRUCMEDY86Wj.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"3\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:04', '2025-07-21 23:33:04', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19234, 'CVB-', 'Technical Verifier', 'Technical', NULL, 'Verifier', 'priyanshpanwar58@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/c7S63CUBdeZdP2ZgHYJR0ANFo228tjkWdZ1WPniM.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"2\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:56', '2025-07-21 23:33:56', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19235, 'CVB-19235', 'Tayyab Ansari', 'Tayyab', NULL, 'Ansari', 'karthikdeshwal0711@gmail.com', NULL, '+18683102036', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/nhICv1WVW633zPg1xGIANyfetlrDByM9MIvkTBye.jpg', NULL, '2', NULL, '$2y$10$/MkIycHclcKoYhMgHskFE.tpby6Y7Xp/4OIPLkjyd7n9mtgvTt93G', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-07-22 00:06:37', '2025-12-11 22:16:45', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(19236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-22 00:12:23', '2025-07-22 00:12:23', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19237, 'CVB-19237', 'Vishesh Panwar', 'Vishesh', NULL, 'Panwar', 'freelance.by.anubhav@gmail.com', NULL, '+1 1111111111', NULL, '1111111', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/bQLaezZzZnAMTgpoY2KEfvsqBMFHzYuAORgeilfl.png', NULL, '2', NULL, '$2y$10$/MkIycHclcKoYhMgHskFE.tpby6Y7Xp/4OIPLkjyd7n9mtgvTt93G', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19231', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-24 20:38:45', '2025-10-15 23:54:10', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(19244, 'CVB-', 'Technical Verifier 2', 'Technical', NULL, 'Verifier', 'priyanshpanwar90@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/c7S63CUBdeZdP2ZgHYJR0ANFo228tjkWdZ1WPniM.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"2\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:56', '2025-07-21 23:33:56', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19238, 'CVB-19238', 'Anubhav Panwar', 'Anubhav', NULL, 'Panwar', 'anubhavpanwar90909@gmail.com', NULL, '+1 1234444444', NULL, 'Qwerty', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/n7UzxRPkeLphu9h8NP7aDAms1qmaU8SGzu4pXNE7.png', NULL, '2', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19231', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-29 22:31:50', '2025-08-26 21:11:43', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(19245, 'CVB-19243', 'Visheh Panwar', 'vishesh', NULL, 'Panwar', 'priyanshvpppaa@gmail.com', NULL, '+1 1111111111', NULL, 'Employee', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/fcm7EJJUyVfKJ7gCgZzTAfPSjeTEFCSuY8UlcjB9.jpg', NULL, '2', NULL, '$2y$12$Rd43LgMeDnDd0k/7b9Pby.KAzxOEuoUt.PXVOnVV4ZlfULdaZXNHq', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-08-07 06:53:54', '2025-10-30 00:11:29', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(19243, 'CVB-19243', 'Priyansh Panwar', 'Priyansh', NULL, 'Panwar', 'priyanshpaaa@gmail.com', NULL, '+1 1111111111', NULL, 'Employee', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/fcm7EJJUyVfKJ7gCgZzTAfPSjeTEFCSuY8UlcjB9.jpg', NULL, '2', NULL, '$2y$12$Rd43LgMeDnDd0k/7b9Pby.KAzxOEuoUt.PXVOnVV4ZlfULdaZXNHq', NULL, 3, NULL, NULL, NULL, NULL, 'United States', NULL, NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-08-07 06:53:54', '2025-08-18 22:57:48', NULL, NULL, 1, NULL, NULL, 'reject', 0, NULL, NULL, NULL, NULL, NULL),
(19246, 'CVB-', 'Vishesh Panwar', 'Vishesh', NULL, 'Panwar', 'vishesh8989@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/6Buoo5qJOr1kIv60NRLYNsdVvkFsVyVsg7USewJB.jpg', NULL, '2', '2025-07-21 23:30:08', '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 227, '[\"227\"]', NULL, NULL, NULL, 'United States', '3', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:24:27', '2025-07-31 21:00:44', NULL, NULL, 1, NULL, NULL, 'noevr', 1, NULL, NULL, NULL, NULL, NULL),
(19247, 'CVB-', 'Mayank Panwar', 'Mayank', NULL, 'Panwar', 'mayank8989@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/6Buoo5qJOr1kIv60NRLYNsdVvkFsVyVsg7USewJB.jpg', NULL, '2', '2025-07-21 23:30:08', '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 227, '[\"227\"]', NULL, NULL, NULL, 'United States', '2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:24:27', '2025-07-31 21:00:44', NULL, NULL, 1, NULL, NULL, 'noevr', 1, NULL, NULL, NULL, NULL, NULL),
(19248, 'CVB-', 'Taniya Panwar', 'Taniya', NULL, 'Panwar', 'Taniya78787@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/6Buoo5qJOr1kIv60NRLYNsdVvkFsVyVsg7USewJB.jpg', NULL, '2', '2025-07-21 23:30:08', '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 227, '[\"227\"]', NULL, NULL, NULL, 'United States', '3', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:24:27', '2025-07-31 21:00:44', NULL, NULL, 1, NULL, NULL, 'noevr', 1, NULL, NULL, NULL, NULL, NULL),
(19249, 'CVB-19249', 'Arun Kumar', 'Arun', NULL, 'Kumar', 'arunkumar123@gmail.com', NULL, '+1 2111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/nhICv1WVW633zPg1xGIANyfetlrDByM9MIvkTBye.jpg', NULL, '2', NULL, '$2y$12$8Xb5rfRj1LyoF25BhA958.Wd79a5kAqBv66sgfvtGhp0TpRZMjnda', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-07-22 00:06:37', '2025-12-11 05:14:35', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(19250, 'CVB-', 'HSE Verifier', 'HSE', NULL, 'Verifier', 'priyanshpanwr58@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/c7S63CUBdeZdP2ZgHYJR0ANFo228tjkWdZ1WPniM.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"1\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:56', '2025-07-21 23:33:56', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19251, 'CVB-', 'Medical Verifier two', 'Medical', NULL, 'Verifier two', 'visheshnwar0711@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/GB2GPjXkRpC8P90500mXkbwDxWacfRUCMEDY86Wj.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"3\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:04', '2025-07-21 23:33:04', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19252, 'CVB-', 'HSE Verifier two', 'HSE', NULL, 'Verifier two', 'priyanspanwr58@gmail.com', NULL, '+1 1111111111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/c7S63CUBdeZdP2ZgHYJR0ANFo228tjkWdZ1WPniM.jpg', NULL, '2', NULL, '$2y$12$R3vf0d3A2oxUO1m8LoHUKO2I8fgKUxFrZPW1/4nPOdZBfzp7cXBs6', NULL, 5, '[\"5\"]', NULL, '[\"1\"]', '2', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-21 23:33:56', '2025-07-21 23:33:56', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(19253, 'CVB-19253', 'Anubhav Panwar', 'Anubhav', NULL, 'Panwar', 'anubhavpanwar66@gmail.com', NULL, '+1 1111111111', NULL, 'Qwerty', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/cI0AKMarUXlhQDM0bJuEflNklaljXeHrwVJcTD0Z.jpg', NULL, '2', NULL, '$2y$10$/MkIycHclcKoYhMgHskFE.tpby6Y7Xp/4OIPLkjyd7n9mtgvTt93G', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '2', NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-09-04 22:02:32', '2025-12-18 02:59:47', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(700812346, 'CVB-0909009', 'Tushar Rathi', 'Tushar', NULL, 'Rathi', 'tusharrathi@gmail.com', NULL, '+1 (211) 111-1111', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/nhICv1WVW633zPg1xGIANyfetlrDByM9MIvkTBye.jpg', NULL, '0', NULL, '', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '3', NULL, NULL, '19231', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-07-22 00:06:37', '2025-11-11 01:41:02', NULL, NULL, 1, NULL, NULL, 'pending', 1, NULL, NULL, NULL, NULL, NULL),
(700812347, 'CVB-19251', 'Kelly Doe', 'Kelly', NULL, 'Doe', 'apanwar@cvbtt.com', NULL, '+919027653412', NULL, 'Electrician', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/rc3xWt6hfWKIOAuRJwl8P4DNzY9ha4HiciKHdykN.jpg', NULL, '2', NULL, '$2y$12$7YY9Bu6ksmlCcfl8bn6ga.ui2yQdEac7t.KG39wChgLVgKb3nxCQO', NULL, 3, NULL, NULL, NULL, NULL, 'Trinidad and Tobago', '1', NULL, NULL, '19231', 'luO8z1IkDP5T1pPitvurRXjmfOx18k0lP3PgUfie3JdFHQe0gwY4T3haE92f', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-11-06 10:43:48', '2025-11-19 03:34:49', NULL, NULL, 1, 1, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL),
(700812348, 'CVB-700812348', 'Himanshu Panwar', 'Himanshu', NULL, 'Panwar', 'anubhavpanwar9090909777@gmail.com', NULL, '+91 (902) 765-3787', NULL, 'Programmer', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/g46istONP8TbanmbGYbGBUEBV3J0JRCQ8ObB3DiP.jpg', NULL, '0', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'India (भारत)', '1', NULL, NULL, '19231', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-11-13 23:13:16', '2025-11-28 05:21:58', NULL, NULL, 1, NULL, NULL, 'noevr', 0, NULL, NULL, NULL, NULL, NULL),
(700812349, 'CVB-700812349', 'Test Panwar', 'Test', NULL, 'Panwar', 'anubhavpan7@gmail.com', NULL, '+1 1111111111', NULL, 'Test', 'https://workforceuploads.s3.us-east-2.amazonaws.com/profile_pictures/6hH7zcJYaq5vPmKmUODlVciPTJqgoypuDeU0r62b.jpg', NULL, '2', NULL, '$2y$12$ol5iHYZna3PDUsNsRtcZVuj/.kOYHtzv5MQkOG6YvV1O1I9QTnii2', NULL, 3, NULL, NULL, NULL, NULL, 'United States', '1', NULL, NULL, '19247', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '2025-12-12 02:42:12', '2025-12-17 01:49:41', NULL, NULL, 1, NULL, NULL, 'pending', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_backup_knack`
--

DROP TABLE IF EXISTS `users_backup_knack`;
CREATE TABLE IF NOT EXISTS `users_backup_knack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Name_Title` varchar(255) NOT NULL,
  `Name_First` varchar(255) NOT NULL,
  `Name_Middle` varchar(255) NOT NULL,
  `Name_Last` varchar(255) NOT NULL,
  `Employee_Display_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` text,
  `Auto_Increment` varchar(255) NOT NULL,
  `Auto_Increment_ID` text,
  `User_Status` text,
  `User_Roles` text,
  `Government_Issued_Identification` text,
  `CVB_Identification_Number` text,
  `Phone` text,
  `Address` text,
  `Address_Street_1` text,
  `Address_Street_2` text,
  `Address_City` text,
  `Address_State` text,
  `Address_Zip` text,
  `Address_Country` text,
  `Address_Latitude` text,
  `Address_Longitude` text,
  `Photo` text,
  `Photo_URL` text,
  `Nationality` text,
  `Gender` text,
  `Job_Title` text,
  `Current_Employer` text,
  `Notes` text,
  `Employee_Profile` text,
  `Created_Updated` text,
  `Created_Updated_by` text,
  `Last_Update` varchar(255) NOT NULL,
  `Recruiter_Companies` varchar(255) NOT NULL,
  `supplier_ids` varchar(200) DEFAULT NULL,
  `Recruiter_Company_Managers` varchar(255) NOT NULL,
  `Client_Companies` varchar(255) NOT NULL,
  `company_ids` varchar(200) DEFAULT NULL,
  `random8_old` varchar(255) NOT NULL,
  `random_8` varchar(255) NOT NULL,
  `Date_of_Birth` varchar(255) NOT NULL,
  `Medicinal_Allergies` varchar(255) NOT NULL,
  `Blood_Type` varchar(255) NOT NULL,
  `Next_of_Kin` varchar(255) NOT NULL,
  `Next_of_Kin_Contact` varchar(255) NOT NULL,
  `Verification_Request_Total` varchar(255) NOT NULL,
  `Verification_Request_Approved` varchar(255) NOT NULL,
  `Verification_Request_Rejected` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Last_Name_Title` varchar(255) NOT NULL,
  `Last_Name_First` varchar(255) NOT NULL,
  `Last_Name_Middle` varchar(255) NOT NULL,
  `Last_Name_Last` varchar(255) NOT NULL,
  `Short_Service_Classification` varchar(255) NOT NULL,
  `Specify_Activities` varchar(255) NOT NULL,
  `account_type` text,
  `client_company` text,
  `random8` text,
  `category` text,
  `Verifier_Display` text,
  `Notes_for_Recruiter_Manager` text,
  `groups` text,
  `recruiter_company` text,
  `recruiter_company_user` text,
  `name_display` varchar(255) NOT NULL,
  `locations` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_bck_19_04_25`
--

DROP TABLE IF EXISTS `users_bck_19_04_25`;
CREATE TABLE IF NOT EXISTS `users_bck_19_04_25` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cvb_id` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `mobile_no` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `work` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `job_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `profile_pic` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `company_site` varchar(255) DEFAULT NULL,
  `verification_status` text COMMENT '0=not verified, 1=email verified, 2=password generated',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `group_id` text,
  `role_id` int DEFAULT NULL,
  `global_role_id` text,
  `is_marked_global` tinyint DEFAULT NULL,
  `sub_role_id` text,
  `company_id` text COMMENT 'Client company',
  `country_code` text,
  `supplier_id` text COMMENT 'Contractor company',
  `multiple_contractor_company` text,
  `multiple_site_location` text,
  `contract_id` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `complete_profile_reminder` varchar(100) DEFAULT NULL,
  `send_email_later` varchar(100) DEFAULT NULL,
  `user_online` int DEFAULT NULL,
  `employee_reference` int NOT NULL DEFAULT '0',
  `active_status` text,
  `avatar` text,
  `dark_mode` text,
  `messenger_color` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `third_party_agent_type` text,
  `third_party_agent_name` text,
  `status` tinyint NOT NULL DEFAULT '1',
  `employee_avalabilty` tinyint DEFAULT NULL,
  `invite_colloborator` text,
  `evr_status` varchar(250) NOT NULL DEFAULT 'noevr' COMMENT 'not generated=noevr pending=pending approved=approved reject=reject expired=expired',
  `failed_attempts` int NOT NULL DEFAULT '0',
  `blocked_at` timestamp NULL DEFAULT NULL,
  `User_Status` text,
  `User_Roles` text,
  `account_type` text,
  PRIMARY KEY (`id`),
  KEY `Name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_progresses`
--

DROP TABLE IF EXISTS `video_progresses`;
CREATE TABLE IF NOT EXISTS `video_progresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` bigint UNSIGNED NOT NULL,
  `content_id` bigint UNSIGNED NOT NULL,
  `last_position_seconds` int UNSIGNED NOT NULL DEFAULT '0',
  `max_watched_seconds` int UNSIGNED NOT NULL DEFAULT '0',
  `duration_seconds` int UNSIGNED DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `last_watched_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_employee_content` (`employee_id`,`content_id`),
  KEY `idx_employee` (`employee_id`),
  KEY `idx_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_progresses`
--

INSERT INTO `video_progresses` (`id`, `employee_id`, `content_id`, `last_position_seconds`, `max_watched_seconds`, `duration_seconds`, `is_completed`, `last_watched_at`, `created_at`, `updated_at`) VALUES
(1, 700812349, 115, 849, 850, 850, 1, '2025-12-17 17:50:07', '2025-12-17 11:44:47', '2025-12-17 12:20:07'),
(133, 19253, 115, 1, 1, 850, 0, '2025-12-24 13:02:33', '2025-12-24 07:14:26', '2025-12-24 07:32:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

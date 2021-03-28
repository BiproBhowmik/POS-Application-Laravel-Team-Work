-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 07:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_other_costs`
--

INSERT INTO `account_other_costs` (`id`, `date`, `amount`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '2021-01-07', 300, 'Pen 5 Box', NULL, '2021-01-11 12:47:29', '2021-01-11 12:47:29'),
(2, '2021-03-03', 200, 'Book', NULL, '2021-03-02 12:54:10', '2021-03-02 12:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '::1', 3, '2021-02-27 10:35:40', '2021-03-01 10:53:40'),
(2, 2, NULL, 1, '::1', 2, '2021-02-27 14:43:28', '2021-03-01 10:53:40'),
(3, 3, NULL, 1, '::1', 2, '2021-02-27 14:43:39', '2021-03-01 10:53:40'),
(4, 1, NULL, 3, '::1', 1, '2021-03-01 11:02:29', '2021-03-01 22:46:38'),
(6, 3, NULL, 3, '::1', 2, '2021-03-01 21:44:42', '2021-03-01 22:46:38'),
(7, 4, NULL, 3, '::1', 1, '2021-03-01 22:04:48', '2021-03-01 22:46:38'),
(8, 7, NULL, 3, '::1', 1, '2021-03-01 22:39:28', '2021-03-01 22:46:38'),
(9, 1, NULL, 4, '::1', 3, '2021-03-01 22:51:16', '2021-03-02 13:05:32'),
(11, 10, NULL, 4, '::1', 2, '2021-03-02 12:58:05', '2021-03-03 07:49:47'),
(12, 4, NULL, NULL, '::1', 1, '2021-03-03 12:19:32', '2021-03-03 12:19:32'),
(13, 3, NULL, NULL, '::1', 1, '2021-03-03 12:19:34', '2021-03-14 10:48:22'),
(14, 5, NULL, NULL, '::1', 1, '2021-03-14 10:48:03', '2021-03-14 10:48:03'),
(15, 6, NULL, NULL, '::1', 1, '2021-03-14 10:48:05', '2021-03-14 10:48:05'),
(16, 2, NULL, NULL, '::1', 1, '2021-03-14 10:48:06', '2021-03-14 10:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Cement', 1, 1, 1, '2020-11-01 13:12:16', '2020-11-01 13:12:45'),
(3, 'Electronics', 1, 1, NULL, '2020-11-01 17:23:26', '2020-11-01 17:23:26'),
(10, 'Masala', 1, 1, NULL, '2021-03-14 12:20:00', '2021-03-14 12:20:00'),
(11, 'Chanachur', 1, 1, NULL, '2021-03-14 12:20:57', '2021-03-14 12:20:57'),
(12, 'Chair', 1, 1, NULL, '2021-03-14 12:21:27', '2021-03-14 12:21:27'),
(13, 'Sofa', 1, 1, NULL, '2021-03-14 12:21:59', '2021-03-14 12:21:59'),
(14, 'Milk', 1, 1, NULL, '2021-03-14 12:22:47', '2021-03-14 12:22:47'),
(15, 'Drinks', 1, 1, NULL, '2021-03-14 12:22:55', '2021-03-14 12:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `text`, `sender_id`, `reciever_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hi...', NULL, NULL, NULL, NULL),
(10, 15, 'This text is only in group', NULL, NULL, '2021-01-10 12:44:15', '2021-01-10 12:44:15'),
(11, 15, 'Hasnat to Afzal', 15, 1, '2021-01-10 12:54:50', '2021-01-10 12:54:50'),
(12, 1, 'Afzal to Hasnat', 1, 15, '2021-01-10 13:12:46', '2021-01-10 13:12:46'),
(13, 1, 'Afzal to Test', 1, 2, '2021-01-10 13:25:54', '2021-01-10 13:25:54'),
(14, 1, 'Afzal to Bipro', 1, 10, '2021-01-10 13:26:25', '2021-01-10 13:26:25'),
(15, 10, 'Bipro to Afzal', 10, 1, '2021-01-10 13:27:17', '2021-01-10 13:27:17'),
(16, 10, 'Bipro to Hasnat', 10, 15, '2021-01-10 13:28:06', '2021-01-10 13:28:06'),
(17, 1, 'Afzal to Bipro 2', 1, 10, '2021-01-10 13:48:56', '2021-01-10 13:48:56'),
(18, 1, 'Afzal to Bipro 3', 1, 10, '2021-01-10 13:49:06', '2021-01-10 13:49:06'),
(19, 1, 'hhhh', NULL, NULL, '2021-01-10 14:00:46', '2021-01-10 14:00:46'),
(20, 1, 'Afzal to Hasnat', 1, 15, '2021-01-11 09:30:09', '2021-01-11 09:30:09'),
(21, 15, 'Hsnat to Afzal', 15, 1, '2021-01-11 09:30:53', '2021-01-11 09:30:53'),
(22, 1, 'Afzal to Hasnat', 1, 15, '2021-01-11 09:31:52', '2021-01-11 09:31:52'),
(23, 1, 'hi Sokina', 1, 18, '2021-02-22 00:59:54', '2021-02-22 00:59:54'),
(24, 24, 'ij', 24, 1, '2021-03-01 21:55:51', '2021-03-01 21:55:51'),
(25, 1, 'Hey Ksem', 1, 16, '2021-03-02 11:42:17', '2021-03-02 11:42:17'),
(26, 1, 'How Are you Kasem', 1, 2, '2021-03-14 12:53:05', '2021-03-14 12:53:05'),
(27, 2, 'Yes I am fine ,, how are you too?', 2, 1, '2021-03-14 12:53:55', '2021-03-14 12:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Afzal Hussain Shuhag', '+880178666663', 'afzalshuhag16666@gmail.com', 'MajorTila, Sylhet', 1, 1, 1, '2020-10-31 14:33:55', '2020-10-31 14:34:12'),
(3, 'Afzal XXX', '+88017866666', NULL, 'Uttara,104, Dhaka', 1, NULL, NULL, '2020-11-09 16:24:30', '2020-11-09 16:24:30'),
(4, 'Murad Hasan', '+880178666663', NULL, 'Uttara,104, Dhaka', 1, NULL, NULL, '2020-11-25 11:58:58', '2020-11-25 11:58:58'),
(5, 'Jahara Begum', '+880178666663', NULL, 'shibganj, Sylhet', 1, NULL, NULL, '2020-12-03 06:10:45', '2020-12-03 06:10:45'),
(6, 'Munni', '+88017866666', NULL, 'munni@gmail.com', 1, NULL, NULL, '2021-03-01 22:57:23', '2021-03-01 22:57:23'),
(8, 'Hero Alom', '01720931913', NULL, 'tilagor, Sylhet', 1, NULL, NULL, '2021-03-13 11:25:03', '2021-03-13 11:25:03'),
(9, 'Alex Hales', '+8801787659875', NULL, 'naraynganj,Dhaka', 1, NULL, NULL, '2021-03-14 12:37:29', '2021-03-14 12:37:29'),
(10, 'Albet', '01734434356', NULL, 'Habiganj,Sylhet', 1, NULL, NULL, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(11, 'Salim', '0165432123', NULL, 'sylhet', 1, NULL, NULL, '2021-03-14 12:45:26', '2021-03-14 12:45:26'),
(12, 'Sumaiya Aktar', '01544123345', NULL, 'Mira bazar', 1, NULL, NULL, '2021-03-14 13:47:14', '2021-03-14 13:47:14'),
(13, 'Sakila Chowdhory', '0154412330', NULL, 'Sylhet', 1, NULL, NULL, '2021-03-14 13:48:40', '2021-03-14 13:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Employee', '2021-01-02 16:07:30', '2021-01-02 16:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `ecategories`
--

CREATE TABLE `ecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecategories`
--

INSERT INTO `ecategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gadget', NULL, NULL),
(2, 'Gaming', NULL, NULL),
(3, 'Electronics', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(1, 13, '2021-01-03', 'Leave', '2021-01-02 16:13:54', '2021-01-02 16:13:54'),
(24, 13, '2021-03-02', 'Present', '2021-03-14 12:04:07', '2021-03-14 12:04:07'),
(25, 19, '2021-03-02', 'Leave', '2021-03-14 12:04:07', '2021-03-14 12:04:07'),
(26, 25, '2021-03-02', 'Leave', '2021-03-14 12:04:07', '2021-03-14 12:04:07'),
(27, 26, '2021-03-02', 'Present', '2021-03-14 12:04:07', '2021-03-14 12:04:07'),
(28, 27, '2021-03-02', 'Absent', '2021-03-14 12:04:07', '2021-03-14 12:04:07'),
(29, 5, '2021-03-14', 'Absent', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(30, 13, '2021-03-14', 'Present', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(31, 19, '2021-03-14', 'Present', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(32, 25, '2021-03-14', 'Leave', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(33, 26, '2021-03-14', 'Absent', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(34, 27, '2021-03-14', 'Present', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(35, 32, '2021-03-14', 'Present', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(36, 50, '2021-03-14', 'Present', '2021-03-14 12:04:42', '2021-03-14 12:04:42'),
(37, 5, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(38, 13, '2021-03-13', 'Absent', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(39, 19, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(40, 25, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(41, 26, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(42, 27, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(43, 32, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06'),
(44, 50, '2021-03-13', 'Present', '2021-03-14 12:05:06', '2021-03-14 12:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 13, 1, '2021-01-03', '2021-01-05', '2021-01-02 16:13:29', '2021-01-02 16:13:29'),
(2, 25, 2, '2021-03-03', '2021-03-07', '2021-03-02 12:02:19', '2021-03-02 12:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_logs`
--

CREATE TABLE `employee_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id = user_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salary_logs`
--

INSERT INTO `employee_salary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_date`, `created_at`, `updated_at`) VALUES
(1, 13, 20000, 20000, 0, '2020-12-23', '2021-01-02 16:11:51', '2021-01-02 16:11:51'),
(2, 13, 20000, 25000, 5000, '2021-01-03', '2021-01-02 16:12:39', '2021-01-02 16:12:39'),
(3, 19, 10000, 10000, 0, '2021-02-05', '2021-02-06 02:43:53', '2021-02-06 02:43:53'),
(4, 25, 4000, 4000, 0, '2021-03-01', '2021-03-01 23:03:27', '2021-03-01 23:03:27'),
(5, 26, 300000, 300000, 0, '2021-03-01', '2021-03-02 00:08:10', '2021-03-02 00:08:10'),
(6, 27, 20000, 20000, 0, '2021-03-15', '2021-03-02 00:09:14', '2021-03-02 00:09:14'),
(7, 13, 25000, 26000, 1000, '2021-03-02', '2021-03-02 11:57:56', '2021-03-02 11:57:56'),
(8, 31, 20000, 20000, 0, '2021-03-05', '2021-03-03 10:22:56', '2021-03-03 10:22:56'),
(9, 32, 300000, 300000, 0, '2021-03-03', '2021-03-04 09:15:34', '2021-03-04 09:15:34'),
(10, 33, 2000, 2000, 0, '2021-03-03', '2021-03-04 09:20:59', '2021-03-04 09:20:59'),
(11, 13, 26000, 26500, 500, '2021-03-12', '2021-03-13 11:11:11', '2021-03-13 11:11:11'),
(12, 50, 30000, 30000, 0, '2021-03-01', '2021-03-14 12:01:22', '2021-03-14 12:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `epayments`
--

CREATE TABLE `epayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment No',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Agent | Personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epayments`
--

INSERT INTO `epayments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash On', NULL, 1, 'cash_on', NULL, NULL, NULL, NULL),
(2, 'Bkash', NULL, 1, 'bkash', '01777777777', 'Personal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eproducts`
--

CREATE TABLE `eproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eproducts`
--

INSERT INTO `eproducts` (`id`, `category_id`, `image`, `title`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'sony.png', 'Sony Camera', 'Demoo', 1, 10500, '2021-02-16 10:19:39', '2021-02-16 10:19:39'),
(2, 3, '202102161630product-12.jpg', 'New Product', 'Demo', 1, 2700, '2021-02-16 10:30:45', '2021-02-16 10:30:45'),
(3, 3, '202102161631item-cart-03.jpg', 'New Product 2', 'Demoo', 1, 1790, '2021-02-16 10:31:20', '2021-02-16 10:31:20'),
(4, 3, '202103020401computer_pc_PNG17498.png', 'BlackBerry', 'Demoo', 1, 2340, '2021-03-01 22:01:16', '2021-03-01 22:01:16'),
(5, 2, '202103020436Microsoft-Xbox-Elite-Wireless-Controller-1024x782.png', 'Game Product 1', 'Description demo', 1, 4000, '2021-03-01 22:36:23', '2021-03-01 22:36:23'),
(6, 2, '202103020436stealth.png', 'Game Product 2', 'Description demo', 1, 5000, '2021-03-01 22:36:49', '2021-03-01 22:36:49'),
(7, 2, '202103020437th.jpg', 'Game Product 3', 'Demoo', 1, 4300, '2021-03-01 22:37:15', '2021-03-01 22:37:15'),
(8, 1, '202103020437th (1).jpg', 'Pc 1', 'Description demo', 1, 400560, '2021-03-01 22:37:45', '2021-03-01 22:37:45'),
(9, 1, '202103020438th (2).jpg', 'pc 2', 'Demoo', 1, 20000, '2021-03-01 22:38:12', '2021-03-01 22:38:12'),
(10, 1, '202103020438th (3).jpg', 'pc 3', 'Demo  DE', 1, 34000, '2021-03-01 22:38:51', '2021-03-01 22:38:51');

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
-- Table structure for table `group_chats`
--

CREATE TABLE `group_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_chats`
--

INSERT INTO `group_chats` (`id`, `user_id`, `name`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'First Group', NULL, '2021-02-02 14:35:38', '2021-02-02 14:35:38'),
(2, 10, 'First Group', NULL, '2021-02-02 14:35:38', '2021-02-02 14:35:38'),
(3, 15, 'First Group', NULL, '2021-02-02 14:35:38', '2021-02-02 14:35:38'),
(4, 7, 'First Group', NULL, '2021-02-02 14:35:38', '2021-02-02 14:35:38'),
(5, 4, 'First Group', NULL, '2021-02-02 14:35:38', '2021-02-02 14:35:38'),
(6, 1, 'First Group', 'Afzal Hussain Shuhag to All', '2021-02-02 15:57:56', '2021-02-02 15:57:56'),
(7, 1, 'First Group', 'Ami Shuhag', '2021-02-02 16:03:19', '2021-02-02 16:03:19'),
(8, 10, 'First Group', 'Bipro to All', '2021-02-02 16:10:11', '2021-02-02 16:10:11'),
(37, 1, 'Second Group', NULL, '2021-03-14 12:58:48', '2021-03-14 12:58:48'),
(38, 2, 'Second Group', NULL, '2021-03-14 12:58:48', '2021-03-14 12:58:48'),
(39, 4, 'Second Group', NULL, '2021-03-14 12:58:48', '2021-03-14 12:58:48'),
(40, 5, 'Second Group', NULL, '2021-03-14 12:58:48', '2021-03-14 12:58:48'),
(41, 12, 'Second Group', NULL, '2021-03-14 12:58:48', '2021-03-14 12:58:48'),
(42, 2, 'Second Group', 'How are you all', '2021-03-14 12:59:12', '2021-03-14 12:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Pending | 1 = Approved',
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(2, '1', '2020-11-12', 'Dummyyyyy', 1, 1, 1, '2020-11-11 15:37:30', '2020-11-14 13:11:14'),
(4, '2', '2021-01-10', 'jhjh', 1, 1, 1, '2020-11-21 12:56:33', '2020-11-21 12:57:02'),
(5, '3', '2021-01-10', 'Dummy Text', 1, 1, 1, '2020-11-25 11:58:58', '2020-11-25 12:30:45'),
(6, '4', '2020-12-16', NULL, 1, 1, 1, '2020-12-03 06:10:45', '2020-12-03 06:11:36'),
(7, '5', '2020-12-12', NULL, 1, 1, 1, '2020-12-13 13:24:37', '2020-12-13 13:40:14'),
(8, '6', '2021-01-13', NULL, 0, 1, NULL, '2020-12-14 11:44:23', '2020-12-14 11:44:23'),
(9, '7', '2021-03-02', 'Demoo', 1, 24, 24, '2021-03-01 22:57:23', '2021-03-01 22:57:40'),
(10, '8', '2021-03-03', 'Description', 1, 1, 1, '2021-03-02 12:47:54', '2021-03-02 12:48:18'),
(11, '9', '2021-03-13', NULL, 1, 1, 1, '2021-03-13 11:25:03', '2021-03-13 11:25:30'),
(12, '10', '2021-03-13', 'He is a great customer', 1, 1, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(13, '11', '2021-03-14', NULL, 0, 1, NULL, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(14, '12', '2021-03-13', NULL, 1, 1, 1, '2021-03-14 12:45:26', '2021-03-14 12:45:38'),
(15, '13', '2021-03-13', NULL, 1, 2, 2, '2021-03-14 13:47:14', '2021-03-14 13:49:00'),
(16, '14', '2021-03-14', 'Good', 1, 2, 2, '2021-03-14 13:48:40', '2021-03-14 13:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `selling_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(8, '2020-11-12', 2, 3, 5, 3, 5000, 15000, 1, '2020-11-11 15:37:30', '2020-11-11 15:37:30'),
(9, '2020-11-12', 2, 2, 2, 1, 1000, 1000, 1, '2020-11-11 15:37:30', '2020-11-11 15:37:30'),
(11, '2020-11-10', 4, 2, 2, 5, 500, 2500, 1, '2020-11-21 12:56:33', '2020-11-21 12:57:02'),
(12, '2020-11-10', 4, 3, 5, 1, 10000, 10000, 1, '2020-11-21 12:56:33', '2020-11-21 12:57:02'),
(13, '2020-11-10', 5, 3, 1, 5, 10000, 50000, 1, '2020-11-25 11:58:58', '2020-11-25 12:30:45'),
(14, '2020-12-16', 6, 3, 1, 1, 10000, 10000, 1, '2020-12-03 06:10:45', '2020-12-03 06:11:36'),
(15, '2020-12-12', 7, 2, 2, 1, 500, 500, 1, '2020-12-13 13:24:37', '2020-12-13 13:40:14'),
(16, '2020-12-23', 8, 2, 2, 4, 500, 2000, 0, '2020-12-14 11:44:23', '2020-12-14 11:44:23'),
(17, '2021-03-02', 9, 2, 2, 1, 500, 500, 1, '2021-03-01 22:57:23', '2021-03-01 22:57:40'),
(18, '2021-03-02', 9, 2, 6, 2, 400, 800, 1, '2021-03-01 22:57:23', '2021-03-01 22:57:40'),
(19, '2021-03-03', 10, 2, 2, 2, 600, 1200, 1, '2021-03-02 12:47:54', '2021-03-02 12:48:18'),
(20, '2021-03-13', 11, 3, 8, 1, 50000, 50000, 1, '2021-03-13 11:25:03', '2021-03-13 11:25:30'),
(21, '2021-03-13', 12, 13, 12, 2, 100000, 200000, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(22, '2021-03-13', 12, 10, 9, 2, 200, 400, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(23, '2021-03-13', 12, 12, 11, 5, 1050, 5250, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(24, '2021-03-13', 12, 14, 13, 3, 320, 960, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(25, '2021-03-13', 12, 15, 14, 3, 250, 750, 1, '2021-03-14 12:37:29', '2021-03-14 12:38:32'),
(26, '2021-03-14', 13, 14, 10, 5, 1050, 5250, 0, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(27, '2021-03-14', 13, 14, 13, 5, 550, 2750, 0, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(28, '2021-03-13', 14, 13, 12, 3, 75000, 225000, 1, '2021-03-14 12:45:26', '2021-03-14 12:45:38'),
(29, '2021-03-13', 15, 14, 10, 2, 40, 80, 1, '2021-03-14 13:47:14', '2021-03-14 13:49:00'),
(30, '2021-03-14', 16, 10, 9, 3, 35, 105, 1, '2021-03-14 13:48:40', '2021-03-14 13:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Illness', '2021-01-02 16:13:29', '2021-01-02 16:13:29'),
(2, 'Travelling', '2021-03-02 12:02:19', '2021-03-02 12:02:19');

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
(4, '2020_10_30_194254_create_suppliers_table', 2),
(5, '2020_10_31_201157_create_customers_table', 3),
(6, '2020_11_01_181903_create_units_table', 4),
(7, '2020_11_01_185354_create_categories_table', 5),
(9, '2020_11_01_222600_create_products_table', 6),
(11, '2020_11_04_171425_create_purchases_table', 7),
(12, '2020_11_06_135923_create_invoice_details_table', 8),
(13, '2020_11_06_140035_create_payments_table', 8),
(14, '2020_11_06_140054_create_payment_details_table', 8),
(15, '2020_11_06_140318_create_invoices_table', 8),
(16, '2020_12_07_200227_create_designations_table', 9),
(17, '2020_12_19_210933_create_employee_salary_logs_table', 9),
(18, '2020_12_20_184010_create_leave_purposes_table', 9),
(19, '2020_12_20_184209_create_employee_leaves_table', 9),
(20, '2020_12_21_184545_create_employee_attendances_table', 9),
(21, '2021_01_03_085853_create_notices_table', 10),
(22, '2020_12_26_210724_create_account_other_costs_table', 11),
(23, '2021_01_09_195603_create_chats_table', 12),
(24, '2021_02_02_194454_create_group_chats_table', 13),
(25, '2021_01_15_130917_create_product__images_table', 14),
(26, '2021_02_16_152744_create_eproducts_table', 15),
(27, '2021_02_27_161937_create_carts_table', 16),
(28, '2021_03_01_140900_create_epayments_table', 17),
(29, '2021_03_01_152753_create_orders_table', 18),
(30, '2021_03_03_175457_create_ecategories_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Notice One', 'lorem ips um donor smet ylituo lorem ips um donor smet ylituo.lorem ips um donor smet ylituolorem ips um donor smet ylituo. lorem ips um donor smet ylituo.lorem ips um donor smet ylituo lorem ips um donor smet ylituo', 1, 1, NULL, '2021-01-03 09:31:15', '2021-01-03 14:00:27'),
(2, 'Notice Two', 'lorem ips um donor smet ylituo lorem ips um donor smet ylituo.lorem ips um donor smet ylituolorem ips um donor smet ylituo. lorem ips um donor smet ylituo.lorem ips um donor smet ylituo lorem ips um donor smet ylituo', 1, 1, NULL, '2021-01-03 09:31:32', '2021-01-03 14:00:27'),
(3, 'Notice Test', 'Lorem ipsum donor smit', 1, 1, NULL, '2021-01-03 14:03:19', '2021-01-03 14:03:27'),
(4, 'New Product', 'coming....', 1, 2, NULL, '2021-01-03 14:29:06', '2021-01-07 05:58:49'),
(7, 'Iphone X new', '5555', 1, 1, NULL, '2021-01-11 12:46:18', '2021-01-11 13:10:52'),
(8, 'Xiaomi Redmi 2', 'gkgjkgjmh', 1, 1, NULL, '2021-01-29 10:39:07', '2021-01-31 01:25:01'),
(10, 'Iphone X new', '5yhgrhtth', 1, 1, NULL, '2021-01-31 01:25:51', '2021-01-31 01:25:58'),
(11, 'Notice New', 'Demo', 1, 1, NULL, '2021-03-02 11:36:20', '2021-03-02 11:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` int(20) DEFAULT NULL,
  `shipping_charge` int(255) DEFAULT NULL,
  `custom_discount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `ip_address`, `name`, `phone_no`, `shipping_address`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `created_at`, `updated_at`, `payment_id`, `shipping_charge`, `custom_discount`) VALUES
(1, NULL, '::1', 'Afzal Hussain Shuhag', '8888888888', 'Sylhet,Shibganj', 'afzalhussainshuhag@gmail.com', 'This is a Good', 0, 0, 1, '34343434', '2021-03-01 10:53:40', '2021-03-01 21:48:59', 2, NULL, NULL),
(2, NULL, '::1', 'Afzal Hussain Shuhag', '8888888888', 'Sylhet,Shibganj', 'afzalhussainshuhag@gmail.com', 'This is a Good', 0, 0, 1, '34343434', '2021-03-01 10:54:20', '2021-03-01 21:57:50', 2, NULL, NULL),
(3, NULL, '::1', 'Munni', '065341876', 'Shibganj,Sylhet', 'munni@gmail.com', 'Hrelooo', 1, 1, 1, '34343434', '2021-03-01 22:46:38', '2021-03-02 00:04:09', 2, NULL, NULL),
(4, NULL, '::1', 'kasem', '0178888888', 'Sylhet,Bandar', 'kasem@gmail.com', 'Give perfectly', 1, 0, 1, '34343434', '2021-03-02 13:05:32', '2021-03-03 09:33:32', 2, 300, 200);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('afzalhussainshuhag@gmail.com', '$2y$10$ujxZh5vRm2eNa2vWwetqVuTdK6W.q75xgp5GjNidEGScAbNFfU19O', '2021-01-12 14:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'full_paid', 15000, 0, 15000, 500, '2020-11-11 15:37:30', '2020-11-23 15:02:04'),
(4, 4, 3, 'full_paid', 11500, 0, 11500, 1000, '2020-11-21 12:56:33', '2020-11-21 12:56:33'),
(5, 5, 4, 'full_paid', 49000, 0, 49000, 1000, '2020-11-25 11:58:58', '2021-03-02 12:21:41'),
(6, 6, 5, 'partial_paid', 5000, 4900, 9900, 100, '2020-12-03 06:10:45', '2020-12-03 06:10:45'),
(7, 7, 4, 'full_due', 0, 470, 470, 30, '2020-12-13 13:24:37', '2020-12-13 13:24:37'),
(8, 8, 5, 'partial_paid', 1000, 950, 1950, 50, '2020-12-14 11:44:23', '2020-12-14 11:44:23'),
(9, 9, 6, 'full_paid', 1210, 0, 1210, 90, '2021-03-01 22:57:23', '2021-03-01 22:57:23'),
(10, 10, 1, 'full_paid', 1100, 0, 1100, 100, '2021-03-02 12:47:54', '2021-03-02 12:47:54'),
(11, 11, 8, 'full_paid', 49980, 0, 49980, 20, '2021-03-13 11:25:03', '2021-03-13 11:25:03'),
(12, 12, 9, 'partial_paid', 200000, 6360, 206360, 1000, '2021-03-14 12:37:29', '2021-03-14 12:37:29'),
(13, 13, 10, 'full_paid', 8000, 0, 8000, 0, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(14, 14, 11, 'full_paid', 225000, 0, 225000, 0, '2021-03-14 12:45:26', '2021-03-14 12:45:26'),
(15, 15, 12, 'full_paid', 80, 0, 80, 0, '2021-03-14 13:47:14', '2021-03-14 13:47:14'),
(16, 16, 13, 'full_due', 0, 105, 105, 0, '2021-03-14 13:48:40', '2021-03-14 13:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, 10000, '2020-11-12', NULL, '2020-11-11 15:37:30', '2020-11-11 15:37:30'),
(4, 4, 11500, '2020-11-10', NULL, '2020-11-21 12:56:33', '2020-11-21 12:56:33'),
(5, 2, 2000, '2020-11-10', NULL, '2020-11-23 15:01:16', '2020-11-23 15:01:16'),
(6, 2, 500, '2020-11-18', NULL, '2020-11-23 15:02:04', '2020-11-23 15:02:04'),
(7, 5, 0, '2020-11-10', NULL, '2020-11-25 11:58:58', '2020-11-25 11:58:58'),
(8, 5, 30000, '2020-12-09', NULL, '2020-11-25 13:46:19', '2020-11-25 13:46:19'),
(9, 6, 5000, '2020-12-16', NULL, '2020-12-03 06:10:45', '2020-12-03 06:10:45'),
(10, 7, 0, '2020-12-12', NULL, '2020-12-13 13:24:37', '2020-12-13 13:24:37'),
(11, 8, 1000, '2020-12-23', NULL, '2020-12-14 11:44:23', '2020-12-14 11:44:23'),
(12, 9, 1210, '2021-03-02', NULL, '2021-03-01 22:57:23', '2021-03-01 22:57:23'),
(13, 5, 19000, '2021-03-03', NULL, '2021-03-02 12:21:41', '2021-03-02 12:21:41'),
(14, 10, 1100, '2021-03-03', NULL, '2021-03-02 12:47:54', '2021-03-02 12:47:54'),
(15, 11, 49980, '2021-03-13', NULL, '2021-03-13 11:25:03', '2021-03-13 11:25:03'),
(16, 12, 200000, '2021-03-13', NULL, '2021-03-14 12:37:29', '2021-03-14 12:37:29'),
(17, 13, 8000, '2021-03-14', NULL, '2021-03-14 12:43:27', '2021-03-14 12:43:27'),
(18, 14, 225000, '2021-03-13', NULL, '2021-03-14 12:45:26', '2021-03-14 12:45:26'),
(19, 15, 80, '2021-03-13', NULL, '2021-03-14 13:47:14', '2021-03-14 13:47:14'),
(20, 16, 0, '2021-03-14', NULL, '2021-03-14 13:48:40', '2021-03-14 13:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 3, 'Walton RS6 Mobile', 6, 1, 1, 1, '2020-11-01 17:30:30', '2021-03-02 12:43:25'),
(2, 4, 1, 2, 'Cement 126', 13, 1, 1, 1, '2020-11-01 17:41:51', '2021-03-02 12:48:18'),
(4, 2, 2, 3, 'Walton Primo Z4', 4, 1, 1, NULL, '2020-11-02 13:50:30', '2021-03-01 22:59:48'),
(5, 2, 2, 3, 'Walton Zenfone 2', 0, 1, 1, NULL, '2020-11-02 13:50:59', '2020-11-21 12:57:02'),
(6, 4, 1, 2, 'Bashundhara Cement', 1, 1, 1, NULL, '2020-11-02 13:51:20', '2021-03-01 22:57:40'),
(7, 6, 2, 3, 'LG AC', 0, 1, 1, NULL, '2021-03-02 12:36:05', '2021-03-02 12:36:05'),
(8, 2, 2, 3, 'Fredge', 0, 1, 1, NULL, '2021-03-13 11:19:55', '2021-03-13 11:25:30'),
(9, 9, 1, 10, 'Radhuni Chicken Masala', 40, 1, 1, NULL, '2021-03-14 12:23:59', '2021-03-14 13:48:49'),
(10, 9, 1, 14, 'Radhuni MIlk', 23, 1, 1, NULL, '2021-03-14 12:24:49', '2021-03-14 13:49:00'),
(11, 7, 2, 12, 'RFL Garden Chair', 25, 1, 1, NULL, '2021-03-14 12:25:33', '2021-03-14 12:38:32'),
(12, 7, 2, 13, 'RFL Sofa 12', 15, 1, 1, NULL, '2021-03-14 12:26:06', '2021-03-14 12:45:38'),
(13, 8, 1, 14, 'Pran Dairy Milk', 57, 1, 1, NULL, '2021-03-14 12:26:42', '2021-03-14 12:41:38'),
(14, 8, 1, 15, 'Pran Power Drink', 2, 1, 1, NULL, '2021-03-14 12:27:04', '2021-03-14 12:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `product__images`
--

CREATE TABLE `product__images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product__images`
--

INSERT INTO `product__images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(3, 4, NULL, NULL, NULL),
(4, 5, NULL, NULL, NULL),
(5, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = pending , 1 = approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, 'PP1', '2021-01-15', 'Dummy Content 1', 3, 5000, 15000, 1, 1, NULL, '2020-11-04 11:17:16', '2020-11-04 14:49:50'),
(2, 4, 2, 2, 'PP2', '2020-11-07', 'hhh', 1, 2, 2, 1, 1, NULL, '2020-11-04 11:22:44', '2020-11-04 11:22:44'),
(3, 2, 3, 5, 'PP3', '2021-01-12', NULL, 3, 5000, 15000, 1, 1, NULL, '2020-11-04 12:43:25', '2020-11-04 14:58:09'),
(4, 2, 3, 5, 'PP4', '2020-11-12', NULL, 1, 3000, 3000, 1, 1, NULL, '2020-11-04 12:43:25', '2020-11-04 14:57:39'),
(5, 2, 3, 4, 'PP5', '2020-11-12', NULL, 1, 10000, 10000, 1, 1, NULL, '2020-11-04 12:43:25', '2020-11-04 14:33:31'),
(9, 4, 2, 2, 'PP6', '2020-11-10', NULL, 20, 200, 4000, 1, 1, NULL, '2020-11-21 12:36:55', '2020-11-21 12:36:55'),
(10, 2, 3, 1, 'PP7', '2020-11-05', NULL, 4, 5000, 20000, 1, 1, NULL, '2020-11-25 12:29:12', '2020-11-25 12:29:12'),
(11, 4, 2, 6, 'PP8', '2021-01-21', 'Dummy Content 1', 3, 400, 1200, 1, 1, NULL, '2021-01-31 01:23:46', '2021-01-31 01:23:46'),
(12, 2, 3, 4, 'PP9', '2021-03-02', 'Dummy Content 1', 3, 22000, 66000, 1, 24, NULL, '2021-03-01 22:58:52', '2021-03-01 22:58:52'),
(13, 2, 3, 1, 'PP10', '2021-03-03', 'Dummy Content 1', 5, 10000, 50000, 1, 1, NULL, '2021-03-02 12:42:39', '2021-03-02 12:42:39'),
(14, 4, 2, 2, 'PP11', '2021-03-03', 'Dummy Content 1', 2, 500, 1000, 1, 1, NULL, '2021-03-02 12:42:39', '2021-03-02 12:42:39'),
(15, 4, 2, 2, 'PP14', '2021-03-03', 'Dummy Content 1', 1, 500, 500, 0, 1, NULL, '2021-03-03 13:14:56', '2021-03-03 13:14:56'),
(16, 4, 2, 6, 'PP16', '2021-03-04', NULL, 1, 500, 500, 0, 1, NULL, '2021-03-03 13:18:12', '2021-03-03 13:18:12'),
(17, 2, 3, 5, 'PP17', '2021-03-04', NULL, 1, 1000, 1000, 0, 1, NULL, '2021-03-03 13:18:12', '2021-03-03 13:18:12'),
(18, 2, 3, 1, 'PP18', '2021-03-09', NULL, 1, 1000, 1000, 0, 1, NULL, '2021-03-13 08:29:10', '2021-03-13 08:29:10'),
(19, 2, 3, 1, 'PP19', '2021-03-09', NULL, 1, 2000, 2000, 0, 1, NULL, '2021-03-13 08:29:10', '2021-03-13 08:29:10'),
(20, 2, 3, 8, 'PP20', '2021-03-13', NULL, 1, 40000, 40000, 1, 1, NULL, '2021-03-13 11:21:03', '2021-03-13 11:21:03'),
(21, 9, 10, 9, 'PP21', '2021-03-13', 'Dummy Description', 30, 1050, 31500, 1, 1, NULL, '2021-03-14 12:29:02', '2021-03-14 12:29:02'),
(22, 9, 14, 13, 'PP22', '2021-03-13', 'Dummy Description', 40, 400, 16000, 1, 1, NULL, '2021-03-14 12:29:02', '2021-03-14 12:29:02'),
(23, 7, 12, 11, 'PP23', '2021-03-13', NULL, 30, 450, 13500, 1, 1, NULL, '2021-03-14 12:32:00', '2021-03-14 12:32:00'),
(24, 7, 13, 12, 'PP24', '2021-03-13', NULL, 20, 10000, 200000, 1, 1, NULL, '2021-03-14 12:32:00', '2021-03-14 12:32:00'),
(25, 9, 10, 9, 'PP25', '2021-03-13', NULL, 15, 470, 7050, 1, 1, NULL, '2021-03-14 12:32:00', '2021-03-14 12:32:00'),
(26, 8, 15, 14, 'PP26', '2021-03-13', NULL, 5, 30, 150, 1, 1, NULL, '2021-03-14 12:32:00', '2021-03-14 12:32:00'),
(27, 8, 14, 10, 'PP27', '2021-03-02', NULL, 25, 50, 1250, 1, 1, NULL, '2021-03-14 12:41:21', '2021-03-14 12:41:21'),
(28, 8, 14, 13, 'PP28', '2021-03-02', NULL, 20, 25, 500, 1, 1, NULL, '2021-03-14 12:41:21', '2021-03-14 12:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Walton Company', '+880178666663', 'waltonbd@gmail.com', 'Dhaka,Uttara,104', 1, 1, 1, '2020-10-30 15:25:25', '2021-03-14 12:13:04'),
(4, 'KSRM Rod', '+88017866666', 'ksrmrodbd@gmail.com', 'Uttara,104, Dhaka', 1, 1, 1, '2020-11-01 17:04:35', '2021-03-14 12:12:47'),
(6, 'LG Company', '+88017866666', 'lgbd34@gmail.com', 'Dhaka,Uttara,104', 1, 1, 1, '2021-03-02 12:15:58', '2021-03-14 12:12:36'),
(7, 'RFL Company', '+8801787659875', 'rflcompany21@gmail.com', 'Habiganj,Sylhet', 1, 1, NULL, '2021-03-14 12:11:01', '2021-03-14 12:11:01'),
(8, 'PRAN Company', '+880178666656', 'prancompany432@gmail.com', 'Uttara,104, Dhaka', 1, 1, NULL, '2021-03-14 12:11:36', '2021-03-14 12:11:36'),
(9, 'Square Company', '+880178666663', 'squarecompany@gmail.com', 'Dhaka,Uttara,104', 1, 1, NULL, '2021-03-14 12:12:13', '2021-03-14 12:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KG', 1, 1, 1, '2020-11-01 12:34:43', '2020-11-01 12:37:33'),
(2, 'PCS', 1, 1, 1, '2020-11-01 12:40:13', '2020-11-01 12:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin = Head Of Software, Operator = Computer Operator, User = Employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `approved` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role_two`, `join_date`, `designation_id`, `salary`, `status`, `approved`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Afzal Hussain Shuhag', 'afzalhussainshuhag@gmail.com', NULL, '$2y$10$lGGaQQsMn.7Xi8v7geTLJOOXVGkJ7ukXcuX95Wv4D6qHpxMEzqLQe', '01720931916', 'tilagor, Sylhet', 'Male', '202010281855afzal.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-22 15:17:30', '2021-03-13 11:02:28'),
(2, 'Admin', 'Al Amin Kasem', 'alamin4@gmail.com', NULL, '$2y$10$MqWv73MQSzSB8yhr3EH3PeVot1dIMC.gpQu/nYUUWV/nad00/2r2m', '01644133400', 'shibganj, Sylhet', 'Male', '202103141855kasemma.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-26 11:40:00', '2021-03-14 12:55:23'),
(4, 'Admin', 'Shamsunnaher Munni', 'shamsunnahar@gmail.com', NULL, '$2y$10$MqWv73MQSzSB8yhr3EH3PeVot1dIMC.gpQu/nYUUWV/nad00/2r2m', '01720931978', 'tilagor, Sylhet', 'Female', '202103141917munni.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-26 18:16:12', '2021-03-14 13:17:45'),
(5, 'Employee', 'Bipro Bhowmik', 'bhowmik123@gmail.com', NULL, '$2y$10$MqWv73MQSzSB8yhr3EH3PeVot1dIMC.gpQu/nYUUWV/nad00/2r2m', '01712443376', 'Shunamganj,Sylhet', 'Male', '202103141757download.png', 'Mr Bhowmik', 'Miss Bhowmik', 'Hindu', '20210001', '1997-07-14', NULL, NULL, NULL, 1, 4000, 1, 1, NULL, '2020-10-26 18:16:33', '2021-03-14 11:57:26'),
(7, 'User', 'Karim Ahmed', 'karim@gmail.com', NULL, '$2y$10$A7dQuLE507jIgU8tp3qp2uF2UBL/U3FmwQuIjfZENWOZp3315tXaq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-26 18:45:55', '2021-03-14 11:47:20'),
(10, 'Admin', 'Isma Iqbal', 'iqbal32@gmail.com', NULL, '$2y$10$KirkQ0mNZcgXhda/VKhFR.L/izIygxU.4wwxOgVzrFglzbaEiMs66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-28 14:10:38', '2021-03-14 11:53:38'),
(12, 'User', 'Kuddus Uddin', 'kuddus@gmail.com', NULL, '$2y$10$wmu2Np8lEHY6KDK8UT3RxusIrA7WxSUCWVsZKgpFRPtf6l8y3RuPW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-10-28 17:20:04', '2021-03-14 11:48:43'),
(13, 'Employee', 'Karim Khan', 'karimkhan325@gmail.com', NULL, '$2y$10$ig6IJHxvtt0A5wAzsltDpu/7zotOKJjUDEZGawy9rpL5Mp1Uj3mbO', '0122222244', 'shibganj, Sylhet', 'Male', '202101022211afzal.jpg', 'Kuddus Morkul', 'YY Begum', 'Islam', '20200001', '1991-05-13', '1177', NULL, '2020-12-23', 1, 26500, 1, 1, NULL, '2021-01-02 16:11:51', '2021-03-14 11:53:10'),
(15, 'User', 'Hasnat Ahmed', 'hasnat@gmail.com', NULL, '$2y$10$/Y7H50AHuAPlwckwWivimetMWXoi6NXSccNNZv5zB.5Zo4Q3v3qjW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(16, 'User', 'kasem', 'kasem@gmail.com', NULL, '$2y$10$mhU4D8xjTVuAN/ESPV/7PueJxhtFIzJZGUzUn7Xktf.mh9.9EloFK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-01-29 12:55:44', '2021-01-29 12:55:44'),
(17, 'User', 'kasem', 'kasem1@gmail.com', NULL, '$2y$10$6dY0Dzi6wT9OLdOBAmHo1..olPg1Yyol2bGcGsD.ITGF8nLtyW8ve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-01-29 12:56:23', '2021-01-29 12:56:23'),
(18, 'User', 'sokina', 'sokina@gmail.com', NULL, '$2y$10$3FZa7./ABJ97hd7Cr6FIwOJbZpgoeUqLmAnaZQ7jjeLLX6NWHPGK.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-01-29 12:57:56', '2021-01-29 12:57:56'),
(19, 'Employee', 'Afzal Demo', NULL, NULL, '$2y$10$cnBTrpBrslKw0xjvzijAJeJ5CSOjbwBgWjcw65oQjgd2Zf8nzNl/q', '0122222244', 'shibganj, Sylhet', 'Male', '202102060843banner-02.jpg', 'Mr X', 'Mis Y', 'Islam', '20210014', '1997-06-06', '2868', NULL, '2021-02-05', 1, 10000, 1, 1, NULL, '2021-02-06 02:43:53', '2021-02-06 02:43:53'),
(23, 'User', 'box', 'box@gmail.com', NULL, '$2y$10$E/N0bXNXWnmmroPLaEkgLuaG.hN5cvHmqOAc9VzY0l5H4xU9u4lmq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-02-27 10:02:17', '2021-02-27 10:02:17'),
(24, 'User', 'Shamsunnaher Munni', 'munni@gmail.com', NULL, '$2y$10$ybKu/zPsGBymIUrtQtsjXeeZkIkazRqdDndd6Z1PiMU2rh083zapO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-01 21:53:14', '2021-03-01 21:53:14'),
(25, 'Employee', 'Munni', NULL, NULL, '$2y$10$mNqh3WjFu3MdJy.21B1/4.o8LPPhtzEOdqpoLhRBf8AIeZhYm5J8u', '0122222244', 'Uttara,104, Dhaka', 'Female', '202103020503download.png', 'Kuddus Morkul', 'Sahela Khatun', 'Islam', '20210020', '2021-03-16', '2435', NULL, '2021-03-01', 1, 4000, 1, 1, NULL, '2021-03-01 23:03:27', '2021-03-01 23:03:27'),
(26, 'Employee', 'kasem', NULL, NULL, '$2y$10$95V6Vs8U/9rL20.WFXq8V.bvWEmaBb2vLQVjipHnxELpCdxxJPmMK', '01720931916', 'shibganj, Sylhet', 'Male', '202103020608afzal.jpg', 'Korim Box', 'Rukshana Begum', 'Islam', '20210026', '2021-03-10', '4113', NULL, '2021-03-01', 1, 300000, 1, 1, NULL, '2021-03-02 00:08:10', '2021-03-02 00:08:10'),
(27, 'Employee', 'bipro', NULL, NULL, '$2y$10$PrNlRSug3bGV.KpZXczuIuAC/RNMEKFlIay1ObR.ulRnZSPt1/9La', '0122222244', 'Dhaka,Uttara,104', 'Male', '202103020609th (1).jpg', 'Kuddus Morkul Mula', 'YY Begum', 'Islam', '20210027', '2021-03-17', '1921', NULL, '2021-03-15', 1, 20000, 1, 1, NULL, '2021-03-02 00:09:14', '2021-03-02 00:09:14'),
(28, 'User', 'kasem', 'kasem5@gmail.com', NULL, '$2y$10$5aL9gzwyjlw.8tIJ43dC7OqrL8LoB68mOFMFxVzNoQ0R8eEUO.2Tm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-02 11:13:33', '2021-03-02 11:13:33'),
(29, 'User', 'bipro khobis', 'bipro420@gmail.com', NULL, '$2y$10$uP1tea5jRns1TdM5hqUKM.Aj2FeYJ357xDuZIMGDPstkAIU14nd6O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-02 11:33:53', '2021-03-02 11:33:53'),
(32, 'Employee', 'bodor ullah', 'bodor@gmail.com', NULL, '$2y$10$GIG6cuS2f3a0hRjv0AWG2eXfnFLoN9/IuydeUZt7wSawYsNqt1AYa', '55555555', 'shibganj, Sylhet', 'Male', '2021030415156.PNG', 'Kuddus Morkul', 'YY Begum', 'Islam', '20210028', '2021-03-03', '127', NULL, '2021-03-03', 1, 300000, 1, 1, NULL, '2021-03-04 09:15:34', '2021-03-13 11:49:26'),
(33, 'Admin', 'morkul', 'morkul@gmail.com', NULL, '$2y$10$fHrmYn38FrZ1OyeJkMQbpuioJ8IJyUSp34X7DTxIa5cZHJb2LxoMm', '777777777', 'Dhaka,Uttara,104', 'Male', NULL, 'Korim Box', 'XX Akhter', 'Islam', '20210033', '2021-03-03', '4867', NULL, '2021-03-03', 1, 2000, 1, 1, NULL, '2021-03-04 09:20:59', '2021-03-04 09:22:53'),
(34, 'User', 'vvvv', 'vvv@gmail.com', NULL, '$2y$10$hHHMxfvNYM/xul0m247x6OsOzdF439CaUFJOZJUBzPKVelUfwPrTW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8896', NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-04 09:34:09', '2021-03-04 09:34:09'),
(37, 'User', 'Hero Alom', 'alom@gmail.com', NULL, '$2y$10$mZL6N7rbj6QMSn/LgYHE9OgYxFmSkWznn0nBu6L9fVYfX2Wbl0j7u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-13 09:12:22', '2021-03-13 09:12:22'),
(38, 'Admin', 'Admin Ahmed', 'admin12@gmail.com', NULL, '$2y$10$Lh0QV0aZl8lB0L.dlRy0YOL4XjwZn3fsAT4FjZqbdDYSMmhGIzGa.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3834', NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-13 11:05:40', '2021-03-13 11:05:40'),
(39, 'User', NULL, NULL, NULL, '$2y$10$s1LFOJIb3a5F5f2TgCaED.dKF7hKg1CKBGIxvoY6qMiRUxRDXo5YK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3770', NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-14 01:49:54', '2021-03-14 01:49:54'),
(40, 'User', NULL, NULL, NULL, '$2y$10$BpwPQMYybnrkhXcAoay98uKT5IeQMuVIQlQreN5JHwRzstH.BlwRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5502', NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-14 01:51:23', '2021-03-14 01:51:23'),
(41, 'User', NULL, NULL, NULL, '$2y$10$H6lRtwYyVB4xq6/DgV/aoOacAoO6acLrwBZgiX1349SK.l4p6feo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '829', NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-14 01:53:25', '2021-03-14 01:53:25'),
(49, 'User', 'Khan Alom', 'albetkasem2019@gmail.com', NULL, '$2y$10$13S9tLHWhESarZpRuCD4EOPmqaCxgkPdv.ZMowL8qRTWJsvBgScOC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '335', NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-14 02:36:39', '2021-03-14 08:14:05'),
(50, 'Employee', 'Mr Alex', 'alex12@gmail.com', NULL, '$2y$10$0nlGAa1bR40aHjcAWKnc1.5S0iQ0KafKQlmhCCllocCTqPKIpMfYm', '01756435689', 'Uttara,104, Dhaka', 'Male', '202103141801alex.jpg', 'Mr Brodman', 'Miss Jennifer', 'Christian', '20210033', '1998-07-09', '6648', NULL, '2021-03-01', 1, 30000, 0, 1, NULL, '2021-03-14 12:01:22', '2021-03-14 13:20:23'),
(52, 'User', 'Steve Smith', 'trt@gmail.com', NULL, '$2y$10$SdbkqVzVGMGUekT9jApxX.GC6LX9Ht4CAqUWEnQQ8w00ggB/MH.fS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4819', NULL, NULL, NULL, NULL, 0, 0, NULL, '2021-03-14 13:08:55', '2021-03-14 13:08:55'),
(53, 'User', 'Sachin Tendulkar', 'ttttt@gmail.com', NULL, '$2y$10$.HlIb9O97Lxybz0ezv2VOeR5EQnnJBVQG.OlxbvEf9DCTu7Ru3Cde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5555', NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-03-14 13:18:29', '2021-03-14 13:19:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `ecategories`
--
ALTER TABLE `ecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epayments`
--
ALTER TABLE `epayments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `epayments_short_name_unique` (`short_name`);

--
-- Indexes for table `eproducts`
--
ALTER TABLE `eproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chats`
--
ALTER TABLE `group_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product__images`
--
ALTER TABLE `product__images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ecategories`
--
ALTER TABLE `ecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `epayments`
--
ALTER TABLE `epayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eproducts`
--
ALTER TABLE `eproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chats`
--
ALTER TABLE `group_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product__images`
--
ALTER TABLE `product__images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

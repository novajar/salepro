-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table warungkms.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.accounts: ~3 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '111119.000.5753429', 'Koperasi Mandiri Sejahtera', 1000, 1000, 'Bank Mandiri Cab. Jakarta Gambir', 1, 1, '2018-12-18 09:58:02', '2019-01-20 16:59:06'),
	(3, '21211', 'Sa', NULL, 0, NULL, 0, 0, '2018-12-18 09:58:56', '2022-12-24 01:24:38'),
	(5, 'bank-1', 'zuhair', 100000, 100000, NULL, NULL, 0, '2022-11-28 12:58:18', '2022-12-24 01:24:44');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table warungkms.adjustments
CREATE TABLE IF NOT EXISTS `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.adjustments: ~0 rows (approximately)
/*!40000 ALTER TABLE `adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjustments` ENABLE KEYS */;

-- Dumping structure for table warungkms.attendances
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.attendances: ~3 rows (approximately)
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
	(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 10:30:50', '2019-01-02 10:30:50'),
	(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 10:57:12', '2019-01-02 10:57:12'),
	(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 16:57:30', '2020-02-03 16:57:30');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping structure for table warungkms.billers
CREATE TABLE IF NOT EXISTS `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.billers: ~7 rows (approximately)
/*!40000 ALTER TABLE `billers` DISABLE KEYS */;
INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Koperasi Mandiri Sejahtera', 'aks.jpg', 'Koperasi Mandiri Sejahtera', '31123', 'kms@kms.kms', '123123123', 'Jl. Guntur', 'Jakarta', NULL, NULL, 'Indonesia', 1, '2018-05-13 04:49:30', '2022-12-27 23:13:09'),
	(2, 'tariq', NULL, 'big tree', NULL, 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', NULL, NULL, NULL, 0, '2018-05-13 04:57:54', '2018-06-15 07:07:11'),
	(3, 'test', NULL, 'test', NULL, 'test@test.com', '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 09:38:58', '2018-05-30 09:39:57'),
	(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 0, '2018-09-01 10:59:54', '2018-10-07 09:35:51'),
	(6, 'a', NULL, 'a', NULL, 'a@a.com', 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 09:33:39', '2018-10-07 09:34:18'),
	(7, 'a', NULL, 'a', NULL, 'a@a.com', 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 09:34:36', '2018-10-07 09:36:07'),
	(8, 'x', 'x.png', 'x', NULL, 'x@x.com', 'x', 'x', 'x', NULL, NULL, NULL, 0, '2019-03-18 18:02:42', '2019-12-21 18:01:24');
/*!40000 ALTER TABLE `billers` ENABLE KEYS */;

-- Dumping structure for table warungkms.billers_new
CREATE TABLE IF NOT EXISTS `billers_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table warungkms.billers_new: ~0 rows (approximately)
/*!40000 ALTER TABLE `billers_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `billers_new` ENABLE KEYS */;

-- Dumping structure for table warungkms.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.brands: ~7 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
	(3, 'HP', 'HP.jpg', 1, '2018-05-12 16:06:14', '2019-03-02 12:32:21'),
	(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 16:08:41', '2018-07-04 10:38:37'),
	(5, 'Apple', 'Apple.jpg', 1, '2018-09-01 06:34:49', '2018-12-06 10:05:38'),
	(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 22:33:52', '2020-10-19 22:35:58'),
	(7, 'Lotto', NULL, 1, '2020-11-16 11:13:41', '2020-11-16 11:13:41'),
	(8, 'cocacola', NULL, 0, '2022-01-12 20:26:22', '2022-01-12 20:26:30'),
	(9, 'pepsi', '20220112072659.jpg', 0, '2022-01-12 20:26:59', '2022-01-12 20:27:07');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table warungkms.cash_registers
CREATE TABLE IF NOT EXISTS `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.cash_registers: ~6 rows (approximately)
/*!40000 ALTER TABLE `cash_registers` DISABLE KEYS */;
INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 100, 9, 1, 0, '2020-10-13 14:32:54', '2020-10-24 07:27:42'),
	(2, 50, 9, 1, 1, '2020-10-13 22:25:26', '2020-10-13 22:25:26'),
	(3, 200, 1, 1, 0, '2020-10-22 14:53:07', '2021-06-19 11:52:48'),
	(4, 100, 1, 2, 0, '2020-10-24 08:04:39', '2022-03-12 21:18:24'),
	(5, 1000, 1, 1, 0, '2021-06-19 11:53:22', '2022-03-12 21:18:31'),
	(6, 120, 1, 2, 1, '2022-03-31 12:29:13', '2022-03-31 12:29:13');
/*!40000 ALTER TABLE `cash_registers` ENABLE KEYS */;

-- Dumping structure for table warungkms.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.categories: ~16 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Fruits', NULL, 9, 1, '2018-05-12 10:27:25', '2019-03-01 22:07:21'),
	(2, 'electronics', NULL, NULL, 1, '2018-05-12 10:35:57', '2019-03-01 22:07:21'),
	(3, 'computer', '20200701093146.jpg', 2, 1, '2018-05-12 10:36:08', '2020-07-01 22:31:46'),
	(4, 'toy', NULL, NULL, 1, '2018-05-24 05:57:48', '2019-03-01 22:09:27'),
	(7, 'jacket', NULL, NULL, 0, '2018-05-28 05:39:51', '2018-05-28 05:40:48'),
	(9, 'food', NULL, NULL, 1, '2018-06-25 08:21:40', '2018-09-03 10:41:28'),
	(10, 'anda', NULL, NULL, 0, '2018-08-29 06:36:31', '2018-08-29 06:37:34'),
	(11, 'anda', NULL, NULL, 0, '2018-08-29 06:48:06', '2018-08-29 06:53:22'),
	(12, 'accessories', NULL, NULL, 1, '2018-12-05 06:28:53', '2019-04-10 11:17:03'),
	(14, 'nn', NULL, NULL, 0, '2019-04-10 11:22:30', '2019-04-10 12:38:47'),
	(15, 'nm', NULL, NULL, 0, '2019-04-10 11:22:36', '2019-04-10 12:41:43'),
	(16, 'desktop', NULL, 3, 1, '2020-03-11 17:42:33', '2020-03-11 17:42:33'),
	(17, 'tostos', '20200701080042.png', NULL, 0, '2020-07-01 21:00:42', '2020-07-01 22:35:34'),
	(19, 'Paracetamol', NULL, NULL, 1, '2021-03-07 14:16:01', '2021-03-07 14:16:01'),
	(20, 'Automobile', NULL, NULL, 1, '2021-07-15 19:35:12', '2021-07-15 19:35:12'),
	(21, 'Productos Caballero', NULL, NULL, 1, '2022-10-15 22:42:44', '2022-10-15 22:42:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table warungkms.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.coupons: ~2 rows (approximately)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-26 05:38:50', '2020-11-18 07:52:39'),
	(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 09:59:26', '2019-03-02 12:46:48');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Dumping structure for table warungkms.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.currencies: ~2 rows (approximately)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
	(1, 'IDR', 'IDR', 1, '2020-11-01 07:22:58', '2022-12-16 18:37:13'),
	(2, 'Euro', 'Euro', 0.85, '2020-11-01 08:29:12', '2020-11-11 06:15:34'),
	(3, 'USD', 'USD', 0, '2022-12-16 18:36:34', '2022-12-16 18:37:32');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Dumping structure for table warungkms.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.customers: ~12 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 1, 22, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', NULL, 'kajir deuri', 'chittagong', NULL, NULL, 'Indonesia', 150491, 190, 20, 1, '2018-05-12 17:00:48', '2022-12-27 21:56:18'),
	(2, 2, NULL, 'moinul', 'lioncoders', NULL, '+8801200000001', NULL, 'jamalkhan', 'chittagong', NULL, NULL, 'bd', 22500, 100, 20, 1, '2018-05-12 17:04:51', '2022-12-27 21:35:08'),
	(3, 3, NULL, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'chittagong', NULL, NULL, 'bd', NULL, NULL, NULL, 1, '2018-05-12 17:07:52', '2019-03-02 12:54:07'),
	(4, 1, NULL, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-30 08:35:28', '2018-05-30 08:37:38'),
	(8, 1, NULL, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'nasirabad', 'chittagong', NULL, NULL, 'bd', NULL, NULL, NULL, 0, '2018-09-01 10:26:13', '2018-09-01 10:29:55'),
	(11, 1, NULL, 'walk-in-customer', 'DANA PENSIUN KIMIA FARMA', NULL, '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, 316, NULL, 0, 1, '2018-09-02 08:30:54', '2022-11-24 18:57:16'),
	(15, 1, NULL, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-05 11:00:39', '2018-11-08 10:37:08'),
	(16, 1, NULL, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-12-01 07:07:53', '2018-12-04 04:55:46'),
	(17, 1, NULL, 'sadman', NULL, NULL, '312312', NULL, 'khulshi', 'ctg', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-22 16:45:35', '2020-06-22 16:45:51'),
	(19, 1, 19, 'Ashfaq', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Andorkillah', 'Chittagong', 'Chittagong', '1234', 'Bangladesh', 6, NULL, NULL, 1, '2020-11-09 07:07:16', '2021-10-14 16:58:20'),
	(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', NULL, 'kuril road', 'Dhaka', NULL, NULL, NULL, 480, NULL, NULL, 1, '2020-11-13 14:12:11', '2022-12-27 22:42:54'),
	(25, 1, 28, 'Imran miya', NULL, 'imran@gmail.com', '01923000001', NULL, 'kljkj', 'hhjhh', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-02-04 13:26:47', '2021-02-04 13:26:47');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table warungkms.customer_groups
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.customer_groups: ~5 rows (approximately)
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'general', '0', 1, '2018-05-12 15:09:36', '2019-03-02 13:01:35'),
	(2, 'distributor', '-10', 1, '2018-05-12 15:12:14', '2019-03-02 13:02:12'),
	(3, 'reseller', '5', 1, '2018-05-12 15:12:26', '2018-05-30 08:18:14'),
	(4, 'test', '12', 0, '2018-05-30 08:17:16', '2018-05-30 08:17:57'),
	(5, 'test', '0', 0, '2018-08-03 16:10:27', '2018-08-03 16:10:34');
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;

-- Dumping structure for table warungkms.deliveries
CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.deliveries: ~6 rows (approximately)
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'dr-20180808-044431', 1, 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', NULL, 'Instrument 1', '3', '2018-08-08 17:44:55', '2020-09-26 19:25:39'),
	(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 11:59:43', '2018-11-06 12:10:38'),
	(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', NULL, NULL, '3', '2018-11-06 12:13:25', '2020-09-26 20:22:11'),
	(5, 'dr-20211218-113624', 354, 1, 'mohammadpur dhaka', 'jaja', 'kaka', NULL, NULL, '3', '2021-12-18 12:36:30', '2022-12-28 23:17:18'),
	(6, 'dr-20221224-120721', 424, 41, 'mohammadpur dhaka', 'jaja', NULL, NULL, NULL, '2', '2022-12-24 00:09:28', '2022-12-28 23:34:48'),
	(7, 'dr-20230103-092239', 433, 41, 'Jl. Anu', 'Muklis', 'Muklas', NULL, NULL, '3', '2023-01-03 21:23:29', '2023-01-03 21:48:38');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;

-- Dumping structure for table warungkms.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.departments: ~2 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Sale', 1, '2018-12-27 12:16:47', '2018-12-27 17:40:23'),
	(2, 'xyz', 1, '2018-12-27 17:28:47', '2018-12-27 17:28:47');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table warungkms.deposits
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.deposits: ~4 rows (approximately)
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
	(1, 90, 1, 1, 'first deposit', '2018-08-26 05:48:23', '2018-08-26 08:18:55'),
	(3, 100, 2, 1, NULL, '2018-08-26 07:53:16', '2018-08-27 04:42:39'),
	(4, 50, 1, 1, NULL, '2018-09-05 05:56:19', '2018-09-05 05:56:19'),
	(5, 50, 1, 1, NULL, '2018-09-10 07:08:40', '2018-09-10 07:08:40');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;

-- Dumping structure for table warungkms.discounts
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.discounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` (`id`, `name`, `applicable_for`, `product_list`, `valid_from`, `valid_till`, `type`, `value`, `minimum_qty`, `maximum_qty`, `days`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '10% discount', 'Specific', '5,3', '2022-02-03', '2022-12-31', 'percentage', 10, 2, 3, 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 1, '2022-02-03 20:02:17', '2022-04-23 19:58:26');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;

-- Dumping structure for table warungkms.discount_plans
CREATE TABLE IF NOT EXISTS `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.discount_plans: ~0 rows (approximately)
/*!40000 ALTER TABLE `discount_plans` DISABLE KEYS */;
INSERT INTO `discount_plans` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'VIP plan', 1, '2022-02-03 19:58:12', '2022-02-03 19:58:12');
/*!40000 ALTER TABLE `discount_plans` ENABLE KEYS */;

-- Dumping structure for table warungkms.discount_plan_customers
CREATE TABLE IF NOT EXISTS `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.discount_plan_customers: ~3 rows (approximately)
/*!40000 ALTER TABLE `discount_plan_customers` DISABLE KEYS */;
INSERT INTO `discount_plan_customers` (`id`, `discount_plan_id`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-02-03 19:58:12', '2022-02-03 19:58:12'),
	(2, 1, 19, '2022-02-03 19:58:12', '2022-02-03 19:58:12'),
	(3, 1, 3, '2022-12-06 19:07:17', '2022-12-06 19:07:17');
/*!40000 ALTER TABLE `discount_plan_customers` ENABLE KEYS */;

-- Dumping structure for table warungkms.discount_plan_discounts
CREATE TABLE IF NOT EXISTS `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.discount_plan_discounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `discount_plan_discounts` DISABLE KEYS */;
INSERT INTO `discount_plan_discounts` (`id`, `discount_id`, `discount_plan_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-02-03 20:02:17', '2022-02-03 20:02:17');
/*!40000 ALTER TABLE `discount_plan_discounts` ENABLE KEYS */;

-- Dumping structure for table warungkms.dso_alerts
CREATE TABLE IF NOT EXISTS `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.dso_alerts: ~0 rows (approximately)
/*!40000 ALTER TABLE `dso_alerts` DISABLE KEYS */;
INSERT INTO `dso_alerts` (`id`, `product_info`, `number_of_products`, `created_at`, `updated_at`) VALUES
	(1, '[{"name":"Baby doll","code":"31261512"}]', 1, '2022-05-28 12:27:46', '2022-05-28 12:27:46');
/*!40000 ALTER TABLE `dso_alerts` ENABLE KEYS */;

-- Dumping structure for table warungkms.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.employees: ~2 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 07:48:37', '2019-03-02 13:50:23'),
	(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-31 05:20:51', '2019-01-03 07:03:54');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table warungkms.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.expenses: ~9 rows (approximately)
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
	(42, 'er-20220529-033101', 1, 1, 1, 1, NULL, 100, NULL, '2022-05-27 01:00:00', '2022-05-29 16:31:01'),
	(43, 'er-20220529-033133', 2, 2, 1, 1, 6, 200, 'fbfbxbc', '2022-05-29 01:00:00', '2022-05-29 16:32:09'),
	(44, 'er-20220606-051446', 2, 2, 1, 1, 6, 350, NULL, '2022-06-06 18:14:46', '2022-06-06 18:14:46'),
	(45, 'er-20220809-115624', 2, 1, 1, 1, NULL, 200, NULL, '2022-08-09 12:56:24', '2022-08-09 12:56:24'),
	(46, 'er-20220901-123715', 2, 2, 1, 1, 6, 200, NULL, '2022-09-01 13:37:15', '2022-09-01 13:37:15'),
	(47, 'er-20220915-085925', 2, 2, 1, 1, 6, 50, NULL, '2022-09-15 21:59:25', '2022-09-15 21:59:25'),
	(48, 'er-20221002-081726', 4, 1, 1, 1, NULL, 100, NULL, '2022-10-02 21:17:26', '2022-10-02 21:17:26'),
	(49, 'er-20221018-021106', 2, 2, 1, 1, 6, 230, NULL, '2022-10-18 15:11:06', '2022-10-18 15:11:06'),
	(50, 'er-20221211-025348', 2, 2, 1, 1, 6, 100, NULL, '2022-12-11 15:53:48', '2022-12-11 15:53:48');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Dumping structure for table warungkms.expense_categories
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.expense_categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '16718342', 'washing', 1, '2018-08-16 07:32:48', '2019-03-02 14:02:07'),
	(2, '60128975', 'electric bill', 1, '2018-08-16 07:39:18', '2018-08-16 07:39:18'),
	(3, '83954970', 'test', 0, '2018-08-16 07:50:28', '2018-08-16 07:51:40'),
	(4, '1234', 'snacks', 1, '2018-09-01 09:40:04', '2018-09-01 09:40:04');
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;

-- Dumping structure for table warungkms.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table warungkms.general_settings
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inv_prefix` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.general_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` (`id`, `site_title`, `company`, `site_logo`, `is_rtl`, `currency`, `address`, `phone`, `fax`, `npwp`, `inv_prefix`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
	(1, 'Warung KMS', 'KOPERASI MANDIRI SEJAHTERA', '20221226070307.png', 0, '1', 'Jl. Guntur No. 20, Guntur Setia Budi\r\n Jakarta Selatan 12980', '(021) 8303671', '(021) 8280394', '0300645923015000', '', 'all', 'd/m/Y', 'Fajar', 'standard', 1, 'default.css', '2018-07-06 13:13:11', '2022-12-29 15:15:19', 'prefix');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;

-- Dumping structure for table warungkms.gift_cards
CREATE TABLE IF NOT EXISTS `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.gift_cards: ~7 rows (approximately)
/*!40000 ALTER TABLE `gift_cards` DISABLE KEYS */;
INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '3571097513020486', 1400, 450, 1, NULL, '2020-12-31', 1, 1, '2018-08-18 08:57:40', '2020-10-18 12:14:26'),
	(2, '0452297501931931', 500, 100, 2, NULL, '2021-12-31', 1, 1, '2018-08-18 09:46:43', '2021-02-11 14:36:01'),
	(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-19 05:38:21', '2018-08-19 05:38:28'),
	(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 07:16:28', '2018-09-30 07:17:21'),
	(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 07:18:49', '2018-09-30 07:20:20'),
	(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 10:12:41', '2018-10-07 10:12:55'),
	(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 07:23:22', '2018-10-23 07:23:39');
/*!40000 ALTER TABLE `gift_cards` ENABLE KEYS */;

-- Dumping structure for table warungkms.gift_card_recharges
CREATE TABLE IF NOT EXISTS `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.gift_card_recharges: ~12 rows (approximately)
/*!40000 ALTER TABLE `gift_card_recharges` DISABLE KEYS */;
INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 100, 1, '2018-08-25 06:08:29', '2018-08-25 06:08:29'),
	(2, 1, 200, 1, '2018-08-25 06:08:50', '2018-08-25 06:08:50'),
	(3, 1, 100, 1, '2018-09-05 06:50:41', '2018-09-05 06:50:41'),
	(4, 1, 50, 1, '2018-09-05 06:51:38', '2018-09-05 06:51:38'),
	(5, 1, 50, 1, '2018-09-05 06:53:36', '2018-09-05 06:53:36'),
	(6, 2, 50, 1, '2018-09-05 06:54:34', '2018-09-05 06:54:34'),
	(7, 5, 10, 1, '2018-09-30 07:19:48', '2018-09-30 07:19:48'),
	(8, 5, 10, 1, '2018-09-30 07:20:04', '2018-09-30 07:20:04'),
	(9, 2, 100, 1, '2018-10-07 10:13:05', '2018-10-07 10:13:05'),
	(10, 1, 200, 1, '2018-10-07 10:13:39', '2018-10-07 10:13:39'),
	(11, 1, 300, 1, '2018-10-23 07:22:49', '2018-10-23 07:22:49'),
	(12, 2, 130, 1, '2021-02-11 14:36:01', '2021-02-11 14:36:01');
/*!40000 ALTER TABLE `gift_card_recharges` ENABLE KEYS */;

-- Dumping structure for table warungkms.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.holidays: ~0 rows (approximately)
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;

-- Dumping structure for table warungkms.hrm_settings
CREATE TABLE IF NOT EXISTS `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.hrm_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `hrm_settings` DISABLE KEYS */;
INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
	(1, '10:00am', '6:00pm', '2019-01-02 09:20:08', '2019-01-02 11:20:53');
/*!40000 ALTER TABLE `hrm_settings` ENABLE KEYS */;

-- Dumping structure for table warungkms.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `invoice_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kodesistem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_id` int(11) NOT NULL DEFAULT 0,
  `user_input` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.invoices: ~53 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`invoice_id`, `kodesistem`, `reference_no`, `sales_id`, `user_input`, `created_at`, `updated_at`) VALUES
	(1, 'IN-000001', 'posr-20221211-025325', 0, 40, '2022-12-29 17:16:16', '2022-12-29 17:16:16'),
	(2, 'IN-000001', 'posr-20221211-025325', 0, 41, '2023-01-01 21:40:56', '2023-01-01 21:40:56'),
	(3, 'IN-000001', 'posr-20221211-025325', 0, 41, '2023-01-01 22:08:02', '2023-01-01 22:08:02'),
	(4, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 22:08:35', '2023-01-01 22:08:35'),
	(5, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:13:26', '2023-01-01 23:13:26'),
	(6, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:13:39', '2023-01-01 23:13:39'),
	(7, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:14:16', '2023-01-01 23:14:16'),
	(8, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:16:25', '2023-01-01 23:16:25'),
	(9, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:17:09', '2023-01-01 23:17:09'),
	(12, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:33:52', '2023-01-01 23:33:52'),
	(13, 'IN-000001', 'posr-20221211-025325', 424, 41, '2023-01-01 23:34:23', '2023-01-01 23:34:23'),
	(14, 'IN-000002', 'posr-20221211-025325', 424, 41, '2023-01-01 23:46:08', '2023-01-01 23:46:08'),
	(15, 'IN-000370', 'posr-20221211-025325', 424, 41, '2023-01-01 23:46:19', '2023-01-01 23:46:19'),
	(16, 'IN-000371', 'posr-20221211-025325', 424, 41, '2023-01-01 23:47:53', '2023-01-01 23:47:53'),
	(17, 'IN-000372', 'sr-20221227-104254', 433, 41, '2023-01-03 21:28:56', '2023-01-03 21:28:56'),
	(18, 'IN-000373', 'sr-20221227-104254', 433, 41, '2023-01-03 21:46:44', '2023-01-03 21:46:44'),
	(19, 'IN-000374', 'posr-20221211-025325', 424, 41, '2023-01-03 22:02:11', '2023-01-03 22:02:11'),
	(20, 'IN-000375', 'posr-20221211-025325', 424, 41, '2023-01-03 22:04:27', '2023-01-03 22:04:27'),
	(21, 'IN-000376', 'posr-20221211-025325', 424, 41, '2023-01-03 22:06:24', '2023-01-03 22:06:24'),
	(22, 'IN-000377', 'posr-20221211-025325', 424, 41, '2023-01-03 22:07:20', '2023-01-03 22:07:20'),
	(23, 'IN-000378', 'posr-20221211-025325', 424, 41, '2023-01-03 22:27:03', '2023-01-03 22:27:03'),
	(24, 'IN-000379', 'posr-20221211-025325', 424, 41, '2023-01-03 22:27:52', '2023-01-03 22:27:52'),
	(25, 'IN-000380', 'posr-20221211-025325', 424, 41, '2023-01-03 22:29:16', '2023-01-03 22:29:16'),
	(26, 'IN-000381', 'posr-20221211-025325', 424, 41, '2023-01-03 22:29:57', '2023-01-03 22:29:57'),
	(27, 'IN-000382', 'posr-20221211-025325', 424, 41, '2023-01-03 22:30:33', '2023-01-03 22:30:33'),
	(28, 'IN-000383', 'posr-20221211-025325', 424, 41, '2023-01-03 22:30:56', '2023-01-03 22:30:56'),
	(29, 'IN-000384', 'posr-20221211-025325', 424, 41, '2023-01-03 22:31:23', '2023-01-03 22:31:23'),
	(30, 'IN-000385', 'posr-20221211-025325', 424, 41, '2023-01-03 22:31:45', '2023-01-03 22:31:45'),
	(31, 'IN-000386', 'posr-20221211-025325', 424, 41, '2023-01-03 22:32:06', '2023-01-03 22:32:06'),
	(32, 'IN-000387', 'posr-20221211-025325', 424, 41, '2023-01-03 22:32:23', '2023-01-03 22:32:23'),
	(33, 'IN-000388', 'posr-20221211-025325', 424, 41, '2023-01-03 22:33:13', '2023-01-03 22:33:13'),
	(34, 'IN-000389', 'posr-20221211-025325', 424, 41, '2023-01-03 22:33:32', '2023-01-03 22:33:32'),
	(35, 'IN-000390', 'posr-20221211-025325', 424, 41, '2023-01-03 22:33:46', '2023-01-03 22:33:46'),
	(36, 'IN-000391', 'posr-20221211-025325', 424, 41, '2023-01-03 22:34:02', '2023-01-03 22:34:02'),
	(37, 'IN-000392', 'posr-20221211-025325', 424, 41, '2023-01-03 22:41:09', '2023-01-03 22:41:09'),
	(38, 'IN-000393', 'posr-20221211-025325', 424, 41, '2023-01-03 22:42:05', '2023-01-03 22:42:05'),
	(39, 'IN-000394', 'posr-20221211-025325', 424, 41, '2023-01-03 22:43:35', '2023-01-03 22:43:35'),
	(40, 'IN-000395', 'posr-20221211-025325', 424, 41, '2023-01-03 22:44:00', '2023-01-03 22:44:00'),
	(41, 'IN-000396', 'posr-20221211-025325', 424, 41, '2023-01-03 22:44:40', '2023-01-03 22:44:40'),
	(42, 'IN-000397', 'posr-20221211-025325', 424, 41, '2023-01-03 22:45:03', '2023-01-03 22:45:03'),
	(43, 'IN-000398', 'posr-20221211-025325', 424, 41, '2023-01-03 22:45:23', '2023-01-03 22:45:23'),
	(44, 'IN-000399', 'posr-20221211-025325', 424, 41, '2023-01-03 22:45:33', '2023-01-03 22:45:33'),
	(45, 'IN-000400', 'posr-20221211-025325', 424, 41, '2023-01-03 22:46:10', '2023-01-03 22:46:10'),
	(46, 'IN-000401', 'posr-20221211-025325', 424, 41, '2023-01-03 22:48:09', '2023-01-03 22:48:09'),
	(47, 'IN-000402', 'posr-20221211-025325', 424, 41, '2023-01-03 22:51:16', '2023-01-03 22:51:16'),
	(48, 'IN-000403', 'posr-20221211-025325', 424, 41, '2023-01-03 22:52:08', '2023-01-03 22:52:08'),
	(49, 'IN-000404', 'posr-20221211-025325', 424, 41, '2023-01-03 22:52:37', '2023-01-03 22:52:37'),
	(50, 'IN-000405', 'posr-20221211-025325', 424, 41, '2023-01-03 22:52:58', '2023-01-03 22:52:58'),
	(51, 'IN-000406', 'posr-20221211-025325', 424, 41, '2023-01-03 22:54:01', '2023-01-03 22:54:01'),
	(52, 'IN-000407', 'posr-20221211-025325', 424, 41, '2023-01-03 22:56:08', '2023-01-03 22:56:08'),
	(53, 'IN-000408', 'posr-20221211-025325', 424, 41, '2023-01-03 22:57:39', '2023-01-03 22:57:39'),
	(54, 'IN-000409', 'posr-20221211-025325', 424, 41, '2023-01-03 22:58:27', '2023-01-03 22:58:27'),
	(55, 'IN-000410', 'posr-20221211-025325', 424, 41, '2023-01-03 22:59:22', '2023-01-03 22:59:22');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table warungkms.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.languages: ~0 rows (approximately)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'en', '2018-07-08 05:59:17', '2019-12-25 00:34:20');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Dumping structure for table warungkms.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.migrations: ~146 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_02_17_060412_create_categories_table', 1),
	(4, '2018_02_20_035727_create_brands_table', 1),
	(5, '2018_02_25_100635_create_suppliers_table', 1),
	(6, '2018_02_27_101619_create_warehouse_table', 1),
	(7, '2018_03_03_040448_create_units_table', 1),
	(8, '2018_03_04_041317_create_taxes_table', 1),
	(9, '2018_03_10_061915_create_customer_groups_table', 1),
	(10, '2018_03_10_090534_create_customers_table', 1),
	(11, '2018_03_11_095547_create_billers_table', 1),
	(12, '2018_04_05_054401_create_products_table', 1),
	(13, '2018_04_06_133606_create_purchases_table', 1),
	(14, '2018_04_06_154600_create_product_purchases_table', 1),
	(15, '2018_04_06_154915_create_product_warhouse_table', 1),
	(16, '2018_04_10_085927_create_sales_table', 1),
	(17, '2018_04_10_090133_create_product_sales_table', 1),
	(18, '2018_04_10_090254_create_payments_table', 1),
	(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
	(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
	(21, '2018_04_13_121436_create_quotation_table', 1),
	(22, '2018_04_13_122324_create_product_quotation_table', 1),
	(23, '2018_04_14_121802_create_transfers_table', 1),
	(24, '2018_04_14_121913_create_product_transfer_table', 1),
	(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
	(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
	(27, '2018_05_20_054532_create_adjustments_table', 4),
	(28, '2018_05_20_054859_create_product_adjustments_table', 4),
	(29, '2018_05_21_163419_create_returns_table', 5),
	(30, '2018_05_21_163443_create_product_returns_table', 5),
	(31, '2018_06_02_050905_create_roles_table', 6),
	(32, '2018_06_02_073430_add_columns_to_users_table', 7),
	(33, '2018_06_03_053738_create_permission_tables', 8),
	(36, '2018_06_21_063736_create_pos_setting_table', 9),
	(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
	(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
	(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
	(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
	(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
	(42, '2018_06_25_043308_change_email_to_users_table', 15),
	(43, '2018_07_06_115449_create_general_settings_table', 16),
	(44, '2018_07_08_043944_create_languages_table', 17),
	(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
	(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
	(47, '2018_07_22_130541_add_digital_to_products_table', 19),
	(49, '2018_07_24_154250_create_deliveries_table', 20),
	(50, '2018_08_16_053336_create_expense_categories_table', 21),
	(51, '2018_08_17_115415_create_expenses_table', 22),
	(55, '2018_08_18_050418_create_gift_cards_table', 23),
	(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
	(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
	(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
	(59, '2018_08_26_043801_create_deposits_table', 27),
	(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
	(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
	(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
	(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
	(65, '2018_10_26_034927_create_coupons_table', 32),
	(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
	(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
	(68, '2018_11_19_094650_add_combo_to_products_table', 35),
	(69, '2018_12_09_043712_create_accounts_table', 36),
	(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
	(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
	(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
	(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
	(74, '2018_12_26_064330_create_return_purchases_table', 41),
	(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
	(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
	(77, '2018_12_27_110018_create_departments_table', 44),
	(78, '2018_12_30_054844_create_employees_table', 45),
	(79, '2018_12_31_125210_create_payrolls_table', 46),
	(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
	(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
	(82, '2019_01_02_075644_create_hrm_settings_table', 49),
	(83, '2019_01_02_090334_create_attendances_table', 50),
	(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
	(85, '2019_02_15_183303_create_stock_counts_table', 52),
	(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
	(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
	(89, '2019_10_14_111455_create_holidays_table', 55),
	(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
	(91, '2019_11_13_150206_create_product_variants_table', 57),
	(92, '2019_11_13_153828_create_variants_table', 57),
	(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
	(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
	(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
	(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
	(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
	(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
	(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
	(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
	(102, '2020_02_28_103340_create_money_transfers_table', 64),
	(103, '2020_07_01_193151_add_image_to_categories_table', 65),
	(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
	(107, '2020_10_11_125457_create_cash_registers_table', 67),
	(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
	(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
	(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
	(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
	(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
	(113, '2019_08_19_000000_create_failed_jobs_table', 73),
	(114, '2020_10_30_135557_create_notifications_table', 73),
	(115, '2020_11_01_044954_create_currencies_table', 74),
	(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
	(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
	(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
	(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
	(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
	(121, '2021_03_07_093606_create_product_batches_table', 80),
	(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
	(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
	(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
	(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
	(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
	(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
	(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
	(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
	(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
	(134, '2021_06_16_104155_add_points_to_customers_table', 87),
	(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
	(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
	(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
	(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
	(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
	(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
	(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
	(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
	(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
	(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96),
	(145, '2021_10_23_142451_add_is_approve_to_payments_table', 97),
	(146, '2022_01_13_191242_create_discount_plans_table', 97),
	(147, '2022_01_14_174318_create_discount_plan_customers_table', 97),
	(148, '2022_01_14_202439_create_discounts_table', 98),
	(149, '2022_01_16_153506_create_discount_plan_discounts_table', 98),
	(150, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 99),
	(154, '2022_05_26_195506_add_daily_sale_objective_to_products_table', 100),
	(155, '2022_05_28_104209_create_dso_alerts_table', 101),
	(156, '2022_06_01_112100_add_is_embeded_to_products_table', 102),
	(157, '2022_06_14_130505_add_sale_id_to_returns_table', 103),
	(159, '2022_07_19_115504_add_variant_data_to_products_table', 104),
	(160, '2022_07_25_194300_add_additional_cost_to_product_variants_table', 104),
	(161, '2022_09_04_195610_add_purchase_id_to_return_purchases_table', 105),
	(162, '2022_12_29_170253_create_invoice_table', 106),
	(163, '2022_12_29_170649_invoice', 107),
	(164, '2023_01_01_223033_add_kodesistem_invoice', 108);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table warungkms.money_transfers
CREATE TABLE IF NOT EXISTS `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.money_transfers: ~2 rows (approximately)
/*!40000 ALTER TABLE `money_transfers` DISABLE KEYS */;
INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
	(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 20:18:52', '2020-02-28 20:18:52'),
	(3, 'mtr-20221128-120014', 5, 1, 10000, '2022-11-28 13:00:14', '2022-11-28 13:00:14');
/*!40000 ALTER TABLE `money_transfers` ENABLE KEYS */;

-- Dumping structure for table warungkms.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.notifications: ~2 rows (approximately)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('d0623880-4199-459c-af55-3bc1464cbe71', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{"sender_id":"1","receiver_id":"9","document_name":"20220523012859.jpg","message":"hjhjhh"}', '2022-05-23 16:50:47', '2022-05-23 14:29:00', '2022-05-23 16:50:47'),
	('ea3e6ccc-a25a-44b7-8e43-b0ab09204ee6', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{"sender_id":"1","receiver_id":"9","document_name":null,"message":"hello"}', '2022-05-23 17:24:31', '2022-05-23 17:24:06', '2022-05-23 17:24:31');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table warungkms.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table warungkms.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payments: ~248 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
	(33, 'spr-20180809-055453', 1, NULL, 2, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2018-08-09 06:54:53', '2018-08-09 06:54:53'),
	(34, 'spr-20180809-055553', 1, NULL, 2, NULL, 1, 1200, NULL, 0, 'Cheque', NULL, '2018-08-09 06:55:53', '2018-08-09 06:56:36'),
	(35, 'spr-20180809-063214', 1, NULL, 3, NULL, 1, 897, NULL, 0, 'Cheque', NULL, '2018-08-09 07:32:14', '2018-08-09 07:32:14'),
	(36, 'spr-20180825-034836', 1, NULL, 4, NULL, 1, 100, NULL, 0, 'Gift Card', '100 bucks paid...', '2018-08-25 04:48:36', '2018-08-25 07:57:35'),
	(39, 'spr-20180825-083634', 1, NULL, 4, NULL, 1, 200, NULL, 0, 'Gift Card', NULL, '2018-08-25 09:36:34', '2018-08-25 09:36:34'),
	(41, 'spr-20180826-094836', 1, NULL, 6, NULL, 1, 20, NULL, 0, 'Deposit', '20 bucks paid', '2018-08-26 10:48:36', '2018-08-27 04:42:13'),
	(42, 'spr-20180827-073545', 1, NULL, 7, NULL, 1, 880, NULL, 0, 'Cash', NULL, '2018-08-27 08:35:45', '2018-08-27 08:35:45'),
	(43, 'ppr-20180830-071637', 1, 13, NULL, NULL, 1, 100, NULL, 0, 'Cash', '100 bucks paid...', '2018-08-30 08:16:37', '2018-08-30 08:16:37'),
	(44, 'ppr-20180830-090718', 1, 13, NULL, NULL, 1, 200, NULL, 0, 'Cheque', NULL, '2018-08-30 10:07:18', '2018-08-30 10:07:18'),
	(46, 'spr-20180902-053954', 1, NULL, 8, NULL, 1, 3529.8, NULL, 0, 'Cash', 'fully paid', '2018-09-02 06:39:54', '2018-09-02 06:39:54'),
	(49, 'spr-20180903-033314', 1, NULL, 9, NULL, 1, 20, NULL, 0, 'Deposit', 'fully paid', '2018-09-03 04:33:14', '2018-09-03 04:33:14'),
	(50, 'spr-20180903-050138', 1, NULL, 10, NULL, 1, 200, NULL, 0, 'Gift Card', '50 bucks due...', '2018-09-03 06:01:38', '2018-09-10 04:40:28'),
	(51, 'spr-20180903-100821', 1, NULL, 11, NULL, 1, 5500, NULL, 0, 'Cheque', NULL, '2018-09-03 11:08:21', '2018-09-03 11:08:21'),
	(53, 'ppr-20180903-101524', 1, 16, NULL, NULL, 1, 1750, NULL, 0, 'Cheque', NULL, '2018-09-03 11:15:24', '2018-10-06 08:09:20'),
	(78, 'spr-20180926-092105', 1, NULL, 31, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2018-09-26 10:21:05', '2018-09-26 10:21:05'),
	(79, 'spr-20181006-065017', 1, NULL, 30, NULL, 1, 100, NULL, 0, 'Cheque', NULL, '2018-10-06 07:50:17', '2018-10-06 07:51:55'),
	(80, 'spr-20181006-065222', 1, NULL, 30, NULL, 1, 20, NULL, 0, 'Cash', NULL, '2018-10-06 07:52:22', '2018-10-06 07:52:22'),
	(82, 'ppr-20181006-070935', 1, 16, NULL, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2018-10-06 08:09:35', '2018-10-06 08:09:35'),
	(83, 'spr-20181010-041636', 1, NULL, 41, NULL, 1, 461, NULL, 0, 'Cash', NULL, '2018-10-10 05:16:36', '2018-10-10 05:16:36'),
	(84, 'spr-20181010-053456', 1, NULL, 42, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2018-10-10 06:34:56', '2018-10-10 06:34:56'),
	(91, 'spr-20181021-065338', 1, NULL, 55, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2018-10-21 07:53:38', '2018-10-21 07:53:38'),
	(92, 'spr-20181021-082618', 1, NULL, 57, NULL, 1, 575.2, NULL, 0, 'Cash', NULL, '2018-10-21 09:26:18', '2018-10-21 09:26:18'),
	(93, 'spr-20181022-032730', 1, NULL, 58, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2018-10-22 16:27:30', '2018-10-22 16:27:30'),
	(104, 'spr-20181023-071548', 11, NULL, 73, NULL, 1, 5500, NULL, 0, 'Cash', NULL, '2018-10-23 08:15:48', '2018-10-23 08:15:48'),
	(105, 'spr-20181023-071648', 1, NULL, 74, NULL, 1, 2320, NULL, 0, 'Cash', NULL, '2018-10-23 08:16:48', '2018-10-23 08:16:48'),
	(126, 'spr-20181101-050033', 1, NULL, 75, NULL, 1, 7678, NULL, 0, 'Cash', NULL, '2018-11-01 06:00:33', '2018-11-01 06:00:33'),
	(127, 'spr-20181101-050130', 1, NULL, 76, NULL, 1, 1424, NULL, 0, 'Cash', NULL, '2018-11-01 06:01:30', '2018-11-08 10:44:51'),
	(129, 'spr-20181105-091523', 1, NULL, 79, NULL, 1, 14454, NULL, 0, 'Cash', NULL, '2018-11-05 10:15:23', '2018-11-05 10:15:23'),
	(130, 'spr-20181105-092002', 1, NULL, 80, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2018-11-05 10:20:02', '2018-11-05 10:20:02'),
	(131, 'ppr-20181105-092128', 1, 24, NULL, NULL, 1, 15950, NULL, 0, 'Cash', NULL, '2018-11-05 10:21:28', '2018-11-05 10:21:28'),
	(137, 'spr-20181105-095952', 1, NULL, 86, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 10:59:52', '2018-11-05 10:59:52'),
	(138, 'spr-20181105-100310', 1, NULL, 88, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 11:03:10', '2018-11-05 11:03:10'),
	(139, 'spr-20181126-020534', 1, NULL, 94, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-11-26 15:05:34', '2018-11-26 15:05:34'),
	(140, 'spr-20181128-071515', 1, NULL, 96, NULL, 1, 132, NULL, 0, 'Cash', NULL, '2018-11-28 08:15:15', '2018-11-28 08:15:15'),
	(141, 'spr-20181201-060524', 1, NULL, 97, NULL, 1, 200, NULL, 300, 'Cash', NULL, '2018-12-01 07:05:24', '2018-12-04 07:21:05'),
	(148, 'ppr-20181204-065932', 1, 23, NULL, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2018-12-04 07:59:32', '2018-12-04 07:59:44'),
	(149, 'ppr-20181205-053443', 1, 25, NULL, NULL, 1, 4450, NULL, 550, 'Cash', NULL, '2018-12-05 06:34:43', '2018-12-05 06:34:43'),
	(150, 'spr-20181205-053608', 1, NULL, 98, NULL, 1, 800, NULL, 200, 'Cash', NULL, '2018-12-05 06:36:08', '2018-12-05 06:36:08'),
	(151, 'spr-20181205-053724', 1, NULL, 99, NULL, 1, 800, NULL, 0, 'Cash', NULL, '2018-12-05 06:37:24', '2018-12-05 06:37:24'),
	(152, 'spr-20181208-062032', 1, NULL, 101, NULL, 1, 100, NULL, 400, 'Cash', NULL, '2018-12-08 07:20:32', '2018-12-11 10:19:39'),
	(157, 'ppr-20181220-063439', 1, 27, NULL, NULL, 1, 10, NULL, 0, 'Cash', NULL, '2018-12-20 07:34:39', '2018-12-20 07:35:01'),
	(159, 'spr-20181224-045832', 1, NULL, 103, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-12-24 05:58:32', '2018-12-24 05:58:32'),
	(160, 'spr-20190101-054544', 1, NULL, 105, NULL, 1, 21, NULL, 0, 'Cash', NULL, '2019-01-01 06:45:44', '2019-01-01 06:45:44'),
	(161, 'spr-20190101-091040', 1, NULL, 106, NULL, 1, 860, NULL, 0, 'Cash', NULL, '2019-01-01 10:10:40', '2019-01-01 10:10:40'),
	(162, 'spr-20190103-065627', 1, NULL, 107, NULL, 1, 5040, NULL, 960, 'Cash', NULL, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(163, 'spr-20190120-035824', 1, NULL, 108, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-01-20 16:58:24', '2019-01-20 16:58:24'),
	(164, 'ppr-20190129-100302', 9, 36, NULL, NULL, 1, 650, NULL, 350, 'Cash', NULL, '2019-01-29 11:03:02', '2019-01-29 11:03:02'),
	(165, 'ppr-20190129-100324', 9, 34, NULL, NULL, 1, 2860, NULL, 140, 'Cash', NULL, '2019-01-29 11:03:24', '2019-01-29 11:03:24'),
	(166, 'spr-20190129-101451', 9, NULL, 109, NULL, 1, 540, NULL, 460, 'Cash', NULL, '2019-01-29 11:14:51', '2019-01-29 11:14:51'),
	(167, 'spr-20190129-115048', 9, NULL, 110, NULL, 1, 1700, NULL, 300, 'Cash', NULL, '2019-01-29 12:50:48', '2019-01-29 12:50:48'),
	(168, 'spr-20190131-110839', 9, NULL, 111, NULL, 1, 271, NULL, 0, 'Cash', NULL, '2019-01-31 12:08:39', '2019-01-31 12:08:39'),
	(169, 'spr-20190202-104045', 1, NULL, 112, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-02 11:40:45', '2019-02-02 11:40:45'),
	(170, 'spr-20190202-114117', 1, NULL, 113, NULL, 1, 350, NULL, 0, 'Cash', NULL, '2019-02-02 12:41:17', '2019-02-02 12:41:17'),
	(171, 'spr-20190205-030454', 1, NULL, 114, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-05 16:04:54', '2019-02-05 16:04:54'),
	(176, 'ppr-20190207-125418', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 13:54:18', '2019-02-07 14:05:23'),
	(178, 'ppr-20190207-010640', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cheque', NULL, '2019-02-07 14:06:40', '2019-02-07 14:07:04'),
	(179, 'spr-20190207-010915', 1, NULL, 120, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 14:09:15', '2019-02-07 14:09:15'),
	(180, 'spr-20190209-104816', 1, NULL, 121, NULL, 1, 1272, NULL, 728, 'Cash', NULL, '2019-02-09 11:48:16', '2019-02-09 11:48:16'),
	(181, 'ppr-20190209-104940', 1, 38, NULL, NULL, 1, 1660, NULL, 0, 'Cash', NULL, '2019-02-09 11:49:40', '2019-02-09 11:49:40'),
	(182, 'ppr-20190209-104959', 1, 39, NULL, NULL, 1, 973.5, NULL, 0, 'Cash', NULL, '2019-02-09 11:49:59', '2019-02-09 11:49:59'),
	(183, 'spr-20190219-023214', 1, NULL, 123, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-19 15:32:14', '2019-02-19 15:32:14'),
	(189, 'spr-20190303-104010', 1, NULL, 127, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2019-03-03 11:40:10', '2019-03-03 11:40:10'),
	(190, 'ppr-20190303-104046', 1, 40, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2019-03-03 11:40:46', '2019-03-03 11:40:46'),
	(191, 'ppr-20190303-104222', 1, 37, NULL, NULL, 1, 4000, NULL, 0, 'Cash', NULL, '2019-03-03 11:42:22', '2019-03-03 11:42:22'),
	(192, 'ppr-20190303-104414', 1, 41, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-03-03 11:44:14', '2019-03-03 11:44:14'),
	(193, 'spr-20190404-095555', 1, NULL, 128, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2019-04-04 10:55:55', '2019-04-04 10:55:55'),
	(194, 'ppr-20190404-095910', 1, 42, NULL, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2019-04-04 10:59:10', '2019-04-13 17:52:38'),
	(195, 'spr-20190404-095937', 1, NULL, 129, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-04-04 10:59:37', '2019-04-04 10:59:37'),
	(196, 'spr-20190421-122124', 1, NULL, 130, NULL, 1, 586, NULL, 0, 'Cash', NULL, '2019-04-21 13:21:24', '2019-04-21 13:21:24'),
	(197, 'spr-20190528-103229', 1, NULL, 131, NULL, 1, 2890, NULL, 0, 'Cash', NULL, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(198, 'ppr-20190613-101351', 1, 37, NULL, NULL, 1, 2390, NULL, 0, 'Cash', NULL, '2019-06-13 11:13:51', '2019-06-13 11:13:51'),
	(199, 'spr-20190613-101637', 1, NULL, 132, NULL, 1, 840, NULL, 0, 'Cash', NULL, '2019-06-13 11:16:37', '2019-06-13 11:16:37'),
	(200, 'ppr-20190613-101713', 1, 43, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-06-13 11:17:13', '2019-06-13 11:17:13'),
	(201, 'spr-20190613-101752', 1, NULL, 133, NULL, 1, 2700, NULL, 0, 'Cash', NULL, '2019-06-13 11:17:52', '2019-06-13 11:17:52'),
	(202, 'ppr-20191019-032925', 1, 43, NULL, NULL, 1, 3290, NULL, 710, 'Cash', NULL, '2019-10-19 16:29:25', '2019-10-19 16:29:25'),
	(203, 'spr-20191019-033028', 1, NULL, 134, NULL, 1, 2940, NULL, 60, 'Cash', NULL, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(205, 'spr-20191103-114044', 1, NULL, 139, NULL, 1, 488, NULL, 12, 'Cash', NULL, '2019-11-03 12:40:44', '2019-11-03 12:40:44'),
	(206, 'ppr-20191103-114222', 1, 46, NULL, NULL, 1, 200, NULL, 0, 'Cash', NULL, '2019-11-03 12:42:22', '2019-11-03 12:42:22'),
	(211, 'spr-20191109-074131', 1, NULL, 144, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2019-11-09 20:41:31', '2019-11-09 20:41:31'),
	(216, 'ppr-20191111-103911', 1, 49, NULL, NULL, 1, 5000, NULL, 0, 'Cheque', NULL, '2019-11-11 11:39:11', '2019-11-11 11:39:11'),
	(217, 'spr-20191111-104008', 1, NULL, 147, NULL, 1, 2220, NULL, 780, 'Cash', NULL, '2019-11-11 11:40:08', '2019-11-11 11:40:08'),
	(222, 'spr-20191203-115128', 1, NULL, 163, NULL, 1, 3, NULL, 0, 'Cash', NULL, '2019-12-03 12:51:28', '2019-12-03 12:51:28'),
	(227, 'ppr-20191204-111124', 1, 57, NULL, NULL, 1, 220, NULL, 280, 'Cash', NULL, '2019-12-05 00:11:24', '2019-12-05 00:11:24'),
	(228, 'spr-20191205-092712', 1, NULL, 173, NULL, 1, 621, NULL, 0, 'Cash', NULL, '2019-12-05 10:27:12', '2019-12-05 10:27:12'),
	(239, 'spr-20191222-104058', 1, NULL, 187, NULL, 1, 288, NULL, 212, 'Cash', NULL, '2019-12-22 11:40:58', '2019-12-22 11:40:58'),
	(241, 'spr-20191223-125946', 1, NULL, 190, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2019-12-23 13:59:46', '2019-12-23 13:59:46'),
	(244, 'ppr-20200101-010750', 1, 61, NULL, NULL, 1, 60, NULL, 0, 'Cash', NULL, '2020-01-01 14:07:50', '2020-01-01 14:07:50'),
	(246, 'spr-20200101-022028', 1, NULL, 193, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2020-01-01 15:20:28', '2020-01-01 15:20:28'),
	(247, 'ppr-20200101-022131', 1, 59, NULL, NULL, 1, 6, NULL, 0, 'Cash', NULL, '2020-01-01 15:21:31', '2020-01-01 15:21:31'),
	(248, 'ppr-20200101-022137', 1, 58, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 15:21:37', '2020-01-01 15:21:37'),
	(249, 'ppr-20200101-022144', 1, 56, NULL, NULL, 1, 2, NULL, 0, 'Cash', NULL, '2020-01-01 15:21:44', '2020-01-01 15:21:44'),
	(250, 'ppr-20200101-022152', 1, 55, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 15:21:52', '2020-01-01 15:21:52'),
	(251, 'ppr-20200101-022225', 1, 49, NULL, NULL, 1, 2000, NULL, 0, 'Cash', NULL, '2020-01-01 15:22:25', '2020-01-01 15:22:25'),
	(252, 'spr-20200102-043947', 1, NULL, 194, NULL, 1, 892, NULL, 108, 'Cash', NULL, '2020-01-02 17:39:47', '2020-01-02 17:39:47'),
	(258, 'spr-20200203-035256', 1, NULL, 201, NULL, 1, 120, NULL, 880, 'Cash', NULL, '2020-02-03 16:52:56', '2020-02-03 16:52:56'),
	(259, 'spr-20200204-105853', 1, NULL, 202, NULL, 1, 1400, NULL, 100, 'Cash', NULL, '2020-02-04 23:58:53', '2020-02-04 23:58:53'),
	(260, 'ppr-20200204-110050', 1, 67, NULL, NULL, 1, 300, NULL, 0, 'Cash', NULL, '2020-02-05 00:00:50', '2020-02-05 00:00:50'),
	(261, 'spr-20200302-115414', 1, NULL, 203, NULL, 1, 350, NULL, 150, 'Cash', NULL, '2020-03-02 12:54:14', '2020-03-02 12:54:14'),
	(262, 'spr-20200302-115741', 1, NULL, 204, NULL, 1, 40, NULL, 10, 'Cash', NULL, '2020-03-02 12:57:41', '2020-03-02 12:57:41'),
	(263, 'ppr-20200302-115811', 1, 70, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 12:58:11', '2020-03-02 12:58:11'),
	(264, 'ppr-20200302-115820', 1, 69, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 12:58:20', '2020-03-02 12:58:20'),
	(265, 'spr-20200311-044642', 1, NULL, 205, NULL, 1, 352, NULL, 148, 'Cash', NULL, '2020-03-11 17:46:42', '2020-03-11 17:46:42'),
	(266, 'ppr-20200406-073823', 1, 71, NULL, NULL, 1, 2000, NULL, 1000, 'Cash', 'First Payment', '2020-04-06 20:38:23', '2020-04-06 20:38:55'),
	(267, 'spr-20200406-074024', 1, NULL, 207, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2020-04-06 20:40:24', '2020-04-06 20:40:24'),
	(268, 'spr-20200406-074201', 1, NULL, 207, NULL, 1, 144, NULL, 56, 'Cash', NULL, '2020-04-06 20:42:01', '2020-04-06 20:42:01'),
	(269, 'spr-20200506-105950', 1, NULL, 208, NULL, 1, 1540, NULL, 460, 'Cash', NULL, '2020-05-06 23:59:50', '2020-05-06 23:59:50'),
	(270, 'spr-20200609-124248', 1, NULL, 209, NULL, 1, 1220, NULL, 780, 'Cash', NULL, '2020-06-09 13:42:48', '2020-06-09 13:42:48'),
	(273, 'spr-20200703-063914', 1, NULL, 212, NULL, 1, 2585, NULL, 415, 'Cash', NULL, '2020-07-03 19:39:14', '2020-07-03 19:39:14'),
	(274, 'spr-20200712-095153', 1, NULL, 213, NULL, 1, 13, NULL, 37, 'Cash', NULL, '2020-07-12 22:51:53', '2020-07-12 22:51:53'),
	(276, 'spr-20200727-083808', 1, NULL, 217, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 21:38:08', '2020-07-27 21:38:08'),
	(277, 'spr-20200727-084024', 1, NULL, 218, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 21:40:24', '2020-07-27 21:40:24'),
	(278, 'spr-20200727-084645', 1, NULL, 219, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 21:46:45', '2020-07-27 21:46:45'),
	(279, 'spr-20200812-062806', 1, NULL, 220, NULL, 1, 760, NULL, 240, 'Cash', NULL, '2020-08-12 19:28:06', '2020-08-12 19:28:06'),
	(280, 'ppr-20200812-062853', 1, 62, NULL, NULL, 1, 1650, NULL, 0, 'Cash', NULL, '2020-08-12 19:28:53', '2020-08-12 19:28:53'),
	(281, 'spr-20200812-063035', 1, NULL, 221, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2020-08-12 19:30:35', '2020-08-12 19:30:35'),
	(282, 'spr-20200816-100426', 1, NULL, 222, NULL, 1, 23000, NULL, 2000, 'Cash', NULL, '2020-08-16 23:04:26', '2020-08-16 23:04:26'),
	(283, 'spr-20200816-100523', 1, NULL, 223, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2020-08-16 23:05:23', '2020-08-16 23:05:23'),
	(284, 'spr-20200816-100632', 1, NULL, 223, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2020-08-16 23:06:32', '2020-08-16 23:06:32'),
	(285, 'spr-20200816-100735', 1, NULL, 223, NULL, 1, 40, NULL, 0, 'Cash', NULL, '2020-08-16 23:07:35', '2020-08-16 23:07:35'),
	(290, 'spr-20201017-092854', 9, NULL, 230, 2, 1, 200, NULL, 0, 'Cash', NULL, '2020-10-17 22:28:54', '2020-10-18 11:48:54'),
	(291, 'spr-20201018-105138', 9, NULL, 230, 2, 1, 50, NULL, 0, 'Cash', NULL, '2020-10-18 11:51:38', '2020-10-18 11:51:38'),
	(292, 'spr-20201018-111333', 9, NULL, 231, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-18 12:13:33', '2020-10-18 12:13:33'),
	(293, 'spr-20201018-111426', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Gift Card', NULL, '2020-10-18 12:14:26', '2020-10-18 12:14:26'),
	(294, 'spr-20201018-111651', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Credit Card', NULL, '2020-10-18 12:16:51', '2020-10-18 12:16:51'),
	(295, 'spr-20201018-111724', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Cheque', NULL, '2020-10-18 12:17:24', '2020-10-18 12:17:24'),
	(296, 'spr-20201022-013018', 9, NULL, 232, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-22 14:30:18', '2020-10-22 14:30:18'),
	(297, 'spr-20201022-015606', 1, NULL, 233, 3, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-22 14:56:06', '2020-10-22 14:56:06'),
	(298, 'spr-20201024-070508', 1, NULL, 234, 4, 1, 11500, NULL, 0, 'Cash', NULL, '2020-10-24 08:05:08', '2020-10-24 08:05:08'),
	(299, 'spr-20201024-070753', 1, NULL, 235, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-24 08:07:53', '2020-10-24 08:07:53'),
	(300, 'spr-20201024-034619', 1, NULL, 237, 4, 1, 61900, NULL, 0, 'Cash', NULL, '2020-10-24 16:46:19', '2020-10-24 16:46:19'),
	(302, 'spr-20201027-054004', 1, NULL, 239, 3, 1, 2, NULL, 0, 'Cash', NULL, '2020-10-27 06:40:04', '2020-10-27 06:40:04'),
	(303, 'spr-20201027-054207', 1, NULL, 240, 3, 1, 6, NULL, 0, 'Cash', NULL, '2020-10-27 06:42:07', '2020-10-27 06:42:07'),
	(304, 'spr-20201027-063202', 1, NULL, 241, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-27 07:32:02', '2020-10-27 07:32:02'),
	(305, 'spr-20201029-073033', 1, NULL, 242, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-29 08:30:33', '2020-10-29 08:30:33'),
	(306, 'spr-20201101-072115', 1, NULL, 243, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-01 08:21:15', '2020-11-01 08:21:15'),
	(307, 'spr-20201101-074225', 1, NULL, 245, 3, 1, 1130, NULL, 0, 'Cash', NULL, '2020-11-01 08:42:25', '2020-11-01 08:42:25'),
	(308, 'spr-20201101-075019', 1, NULL, 246, 4, 1, 440, NULL, 0, 'Cash', NULL, '2020-11-01 08:50:19', '2020-11-01 08:50:19'),
	(310, 'spr-20201106-013042', 1, NULL, 250, 4, 1, 378.4, NULL, 0, 'Cash', NULL, '2020-11-06 14:30:42', '2020-11-06 14:30:42'),
	(311, 'spr-20201109-011527', 1, NULL, 251, 4, 1, 500, NULL, 0, 'Cash', NULL, '2020-11-09 14:15:27', '2020-11-09 14:15:27'),
	(312, 'spr-20201111-055902', 1, NULL, 252, 3, 1, 229.5, NULL, 0, 'Cash', NULL, '2020-11-11 06:59:02', '2020-11-11 06:59:02'),
	(313, 'spr-20201114-064739', 1, NULL, 253, 4, 1, 10242.5, NULL, 0, 'Cash', NULL, '2020-11-14 07:47:39', '2020-11-14 07:47:39'),
	(316, 'spr-20201117-064751', 1, NULL, 256, 4, 1, 715, NULL, 0, 'Cash', NULL, '2020-11-17 07:47:51', '2020-11-17 07:47:51'),
	(317, 'spr-20201117-070920', 1, NULL, 257, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-17 08:09:20', '2020-11-17 08:09:20'),
	(320, 'ppr-20201118-062036', 1, 90, NULL, NULL, 1, 33000, NULL, 0, 'Cash', NULL, '2020-11-18 07:20:36', '2020-11-18 07:20:36'),
	(321, 'spr-20201118-065242', 1, NULL, 258, 4, 1, 27200, NULL, 0, 'Cash', NULL, '2020-11-18 07:52:42', '2020-11-18 07:52:42'),
	(324, 'spr-20201208-094000', 1, NULL, 263, 4, 1, 300, NULL, 200, 'Cash', NULL, '2020-12-08 10:40:00', '2020-12-08 10:40:00'),
	(325, 'spr-20210106-022350', 1, NULL, 263, 4, 1, 50, NULL, 0, 'Cash', NULL, '2021-01-06 15:23:50', '2021-01-06 15:23:50'),
	(330, 'spr-20210111-021625', 1, NULL, 271, 3, 1, 1274, NULL, 0, 'Cash', NULL, '2021-01-11 15:16:25', '2021-01-11 15:16:25'),
	(332, 'spr-20210113-070243', 1, NULL, 274, 4, 1, 1556, NULL, 0, 'Cash', NULL, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(333, 'spr-20210201-023748', 1, NULL, 275, 4, 1, 484, NULL, 0, 'Cash', NULL, '2021-02-01 15:37:48', '2021-02-01 15:37:48'),
	(335, 'spr-20210216-070948', 1, NULL, 277, 4, 1, 15156, NULL, 0, 'Cash', NULL, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(336, 'spr-20210217-073238', 1, NULL, 278, 4, 1, 26949.9, NULL, 0, 'Cash', NULL, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(338, 'spr-20210524-074506', 1, NULL, 290, 3, 1, 250, NULL, 0, 'Cash', NULL, '2021-05-24 20:45:06', '2021-05-24 20:45:06'),
	(339, 'spr-20210524-074647', 1, NULL, 290, 3, 1, -130, NULL, 0, 'Cash', NULL, '2021-05-24 20:46:47', '2021-05-24 20:46:47'),
	(341, 'spr-20210601-123530', 1, NULL, 294, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-01 13:35:30', '2021-06-01 13:35:30'),
	(342, 'spr-20210601-032209', 1, NULL, 295, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 16:22:09', '2021-06-01 16:22:09'),
	(343, 'spr-20210601-034624', 1, NULL, 296, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 16:46:24', '2021-06-01 16:46:24'),
	(344, 'spr-20210601-074150', 9, NULL, 297, 2, 1, 250, NULL, 0, 'Cash', NULL, '2021-06-01 20:41:50', '2021-06-01 20:41:50'),
	(345, 'spr-20210601-075547', 9, NULL, 298, 2, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 20:55:47', '2021-06-01 20:55:47'),
	(346, 'spr-20210616-105325', 1, NULL, 299, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-16 11:53:25', '2021-06-16 11:53:25'),
	(347, 'spr-20210616-111044', 1, NULL, 300, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 12:10:44', '2021-06-16 12:10:44'),
	(348, 'spr-20210616-111120', 1, NULL, 301, 4, 1, 2200, NULL, 0, 'Cash', NULL, '2021-06-16 12:11:20', '2021-06-16 12:11:20'),
	(349, 'spr-20210616-080543', 1, NULL, 303, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-16 21:05:43', '2021-06-16 21:05:43'),
	(351, 'spr-20210616-082851', 1, NULL, 305, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 21:28:51', '2021-06-16 21:28:51'),
	(352, 'spr-20210617-115553', 1, NULL, 306, 3, 1, 1100, 4, 0, 'Points', NULL, '2021-06-17 12:55:53', '2021-06-17 12:55:53'),
	(353, 'spr-20210617-121359', 1, NULL, 304, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-17 13:13:59', '2021-06-17 13:13:59'),
	(354, 'spr-20210617-030013', 1, NULL, 307, 3, 1, 100, NULL, 0, 'Cash', NULL, '2021-06-17 16:00:13', '2021-06-17 16:00:13'),
	(355, 'ppr-20210618-082857', 1, 115, NULL, NULL, 1, 101, NULL, 0, 'Cash', NULL, '2021-06-18 21:28:57', '2021-06-18 21:28:57'),
	(356, 'spr-20210618-083127', 1, NULL, 308, 4, 1, 1608, NULL, 392, 'Cash', NULL, '2021-06-18 21:31:27', '2021-06-18 21:31:27'),
	(357, 'spr-20210618-083254', 1, NULL, 309, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-18 21:32:54', '2021-06-18 21:32:54'),
	(358, 'ppr-20210619-104903', 1, 116, NULL, NULL, 1, 101, NULL, 0, 'Cash', NULL, '2021-06-19 11:49:03', '2021-06-19 11:49:03'),
	(359, 'spr-20210619-105121', 1, NULL, 310, 4, 1, 958, NULL, 42, 'Cash', NULL, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(360, 'spr-20210619-110231', 1, NULL, 312, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-19 12:02:31', '2021-06-19 12:02:31'),
	(361, 'spr-20210619-110638', 1, NULL, 313, 4, 1, 250, 1, 0, 'Points', NULL, '2021-06-19 12:06:38', '2021-06-19 12:06:38'),
	(362, 'spr-20210627-124247', 1, NULL, 314, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-27 13:42:47', '2021-06-27 13:42:47'),
	(364, 'spr-20210707-103455', 1, NULL, 317, 4, 1, 18, NULL, 0, 'Cash', NULL, '2021-07-07 11:34:55', '2021-07-07 11:34:55'),
	(367, 'spr-20210814-092805', 1, NULL, 325, 4, 1, 1250, NULL, 0, 'Cash', NULL, '2021-08-14 22:28:05', '2021-08-14 22:28:05'),
	(371, 'spr-20210921-010722', 1, NULL, 333, 4, 1, 2, NULL, 0, 'Cash', NULL, '2021-09-21 14:07:22', '2021-09-21 14:07:22'),
	(372, 'spr-20210921-035020', 1, NULL, 334, 4, 1, 120, NULL, 0, 'Cash', NULL, '2021-09-21 16:50:20', '2021-09-21 16:50:20'),
	(373, 'spr-20210923-024704', 1, NULL, 335, 4, 1, 11, NULL, 0, 'Cash', NULL, '2021-09-23 15:47:04', '2021-09-23 15:47:04'),
	(374, 'spr-20211003-051829', 1, NULL, 336, 4, 1, 1220, NULL, 0, 'Cash', NULL, '2021-10-03 18:18:29', '2021-10-03 18:18:29'),
	(376, 'spr-20211003-054404', 1, NULL, 338, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-03 18:44:04', '2021-10-03 18:44:04'),
	(378, 'spr-20211007-025229', 1, NULL, 340, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 15:52:29', '2021-10-07 15:52:29'),
	(379, 'spr-20211007-033840', 1, NULL, 341, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 16:38:40', '2021-10-07 16:38:40'),
	(384, 'spr-20211014-035825', 1, NULL, 348, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-14 16:58:25', '2021-10-14 16:58:25'),
	(385, 'spr-20211020-011209', 1, NULL, 349, 4, 1, 102, NULL, 0, 'Cash', NULL, '2021-10-20 14:12:09', '2021-10-20 14:12:09'),
	(386, 'spr-20211114-013929', 1, NULL, 353, 4, 1, 374, NULL, 0, 'Cash', NULL, '2021-11-14 14:39:29', '2021-11-14 14:39:29'),
	(387, 'spr-20211124-062858', 1, NULL, 355, 4, 1, 3161, NULL, 0, 'Cash', NULL, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(388, 'spr-20211207-070932', 1, NULL, 356, 4, 1, 573, NULL, 0, 'Cash', NULL, '2021-12-07 20:09:32', '2021-12-07 20:09:32'),
	(391, 'spr-20211222-070313', 1, NULL, 360, 4, 1, 24, NULL, 0, 'Cash', NULL, '2021-12-22 20:03:13', '2021-12-22 20:03:13'),
	(393, 'spr-20220203-035948', 1, NULL, 362, 4, 1, 8.5, NULL, 0, 'Cash', NULL, '2022-02-03 16:59:48', '2022-02-03 16:59:48'),
	(394, 'spr-20220203-070602', 1, NULL, 363, 4, 1, 466, NULL, 34, 'Cash', NULL, '2022-02-03 20:06:02', '2022-02-03 20:06:02'),
	(395, 'spr-20220205-054526', 1, NULL, 364, 4, 1, 396, NULL, 0, 'Cash', NULL, '2022-02-05 18:45:26', '2022-02-05 18:45:26'),
	(396, 'spr-20220205-054616', 1, NULL, 365, 4, 1, 240, NULL, 0, 'Cash', NULL, '2022-02-05 18:46:16', '2022-02-05 18:46:16'),
	(403, 'spr-20220227-115905', 1, NULL, 377, 4, 1, 500, 2, 0, 'Points', NULL, '2022-02-27 12:59:05', '2022-02-27 12:59:05'),
	(405, 'spr-20220309-115901', 1, NULL, 379, 4, 1, 1790, NULL, 0, 'Cash', NULL, '2022-03-09 12:59:01', '2022-03-09 12:59:01'),
	(406, 'spr-20220311-091529', 1, NULL, 377, 4, 1, 10, NULL, 0, 'Cheque', 'cheque payment', '2022-03-11 22:15:29', '2022-03-11 22:15:29'),
	(408, 'payment-101', 1, NULL, 377, 4, 1, 11, NULL, 0, 'Cash', NULL, '2022-03-12 20:12:38', '2022-03-12 20:43:28'),
	(409, 'spr-20220312-082027', 1, NULL, 380, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2022-03-12 21:20:27', '2022-03-12 21:20:27'),
	(410, 'spr-20220312-082452', 1, NULL, 381, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2022-03-12 21:24:52', '2022-03-12 21:24:52'),
	(411, 'spr-20220312-082622', 1, NULL, 381, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-03-12 21:26:22', '2022-03-12 21:26:22'),
	(412, 'spr-20220424-110144', 1, NULL, 382, 6, 1, 1225, NULL, 775, 'Cash', NULL, '2022-04-24 12:01:44', '2022-04-24 12:01:44'),
	(413, 'ppr-20220516-112315', 1, 146, NULL, NULL, 1, 5500, NULL, 0, 'Cash', NULL, '2022-05-16 12:23:15', '2022-05-16 12:23:15'),
	(414, 'spr-20220516-112427', 1, NULL, 383, 6, 1, 3300, NULL, 700, 'Cash', NULL, '2022-05-16 12:24:27', '2022-05-16 12:24:27'),
	(416, 'spr-20220526-090112', 1, NULL, 385, 6, 1, 370, NULL, 0, 'Cash', NULL, '2022-05-26 22:01:12', '2022-05-26 22:01:12'),
	(417, 'spr-20220531-122028', 1, NULL, 386, 6, 1, 440, NULL, 0, 'Cash', NULL, '2022-05-31 13:20:28', '2022-05-31 13:20:28'),
	(427, 'spr-20220606-051413', 1, NULL, 397, 6, 1, 2320, NULL, 0, 'Cash', NULL, '2022-06-06 18:14:13', '2022-06-06 18:14:13'),
	(429, 'spr-20220611-064206', 1, NULL, 1, NULL, 1, 380, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 19:42:06', '2022-06-11 19:42:06'),
	(430, 'spr-20220611-064206', 1, NULL, 4, NULL, 1, 580, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 19:42:06', '2022-06-11 19:42:06'),
	(431, 'spr-20220611-064207', 1, NULL, 29, NULL, 1, 40, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 19:42:07', '2022-06-11 19:42:07'),
	(432, 'spr-20220611-064655', 1, NULL, 29, NULL, 1, 92, NULL, 0, 'Cash', NULL, '2022-06-11 19:46:55', '2022-06-11 19:46:55'),
	(433, 'spr-20220611-064655', 1, NULL, 37, NULL, 1, 208, NULL, 0, 'Cash', NULL, '2022-06-11 19:46:55', '2022-06-11 19:46:55'),
	(434, 'spr-20220611-065042', 1, NULL, 37, NULL, 1, 42, NULL, 0, 'Cash', NULL, '2022-06-11 19:50:42', '2022-06-11 19:50:42'),
	(435, 'spr-20220611-065042', 1, NULL, 43, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2022-06-11 19:50:42', '2022-06-11 19:50:42'),
	(436, 'spr-20220611-065042', 1, NULL, 104, NULL, 1, 18, NULL, 0, 'Cash', NULL, '2022-06-11 19:50:42', '2022-06-11 19:50:42'),
	(437, 'spr-20220611-065205', 1, NULL, 104, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-06-11 19:52:05', '2022-06-11 19:52:05'),
	(438, 'spr-20220614-110245', 1, NULL, 10, 6, 1, 50, NULL, 0, 'Cash', NULL, '2022-06-14 12:02:45', '2022-06-14 12:02:45'),
	(439, 'spr-20220614-110245', 1, NULL, 30, 6, 1, 320, NULL, 0, 'Cash', NULL, '2022-06-14 12:02:45', '2022-06-14 12:02:45'),
	(440, 'spr-20220614-110245', 1, NULL, 32, 6, 1, 130, NULL, 0, 'Cash', NULL, '2022-06-14 12:02:45', '2022-06-14 12:02:45'),
	(441, 'spr-20220614-115719', 1, NULL, 400, 6, 1, 3300, NULL, 0, 'Cash', NULL, '2022-06-14 12:57:19', '2022-06-14 12:57:19'),
	(444, 'spr-20220614-050144', 1, NULL, 403, 6, 1, 111, NULL, 0, 'Cash', NULL, '2022-06-14 18:01:44', '2022-06-14 18:01:44'),
	(445, 'spr-20220615-102330', 1, NULL, 404, 6, 1, 300, NULL, 0, 'Cash', NULL, '2022-06-15 11:23:30', '2022-06-15 11:23:30'),
	(448, 'spr-20220809-115444', 1, NULL, 409, NULL, 1, 591, NULL, 0, 'Cash', NULL, '2022-08-09 12:54:44', '2022-08-09 12:54:44'),
	(449, 'spr-20220825-013137', 1, NULL, 410, 6, 1, 120, NULL, 0, 'Cash', NULL, '2022-08-25 14:31:37', '2022-08-25 14:31:37'),
	(450, 'ppr-20220831-044029', 1, 14, NULL, NULL, 1, 100, NULL, 0, 'Cash', 'First automated payment', '2022-08-31 17:40:29', '2022-08-31 17:40:29'),
	(451, 'spr-20220901-123619', 1, NULL, 411, 6, 1, 690, NULL, 0, 'Cash', NULL, '2022-09-01 13:36:19', '2022-09-01 13:36:19'),
	(452, 'spr-20220904-035525', 1, NULL, 400, 6, 1, -1100, NULL, 0, 'Cash', 'payment to customer for returned products.', '2022-09-04 16:55:25', '2022-09-04 16:55:25'),
	(453, 'ppr-20220911-010840', 1, 162, NULL, NULL, 1, 10000, NULL, 0, 'Cash', 'This is the first payment for iphone 14.', '2022-09-11 14:08:40', '2022-09-11 14:08:40'),
	(454, 'spr-20220911-011826', 1, NULL, 413, NULL, 1, 1210, NULL, 40, 'Cash', NULL, '2022-09-11 14:18:26', '2022-09-11 14:18:26'),
	(455, 'spr-20220915-085900', 1, NULL, 414, 6, 1, 440, NULL, 0, 'Cash', NULL, '2022-09-15 21:59:00', '2022-09-15 21:59:00'),
	(456, 'ppr-20220915-085956', 1, 162, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-09-15 21:59:56', '2022-09-15 21:59:56'),
	(457, 'spr-20221002-081636', 1, NULL, 415, 6, 1, 560, NULL, 0, 'Cash', NULL, '2022-10-02 21:16:36', '2022-10-02 21:16:36'),
	(458, 'ppr-20221018-020939', 1, 162, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2022-10-18 15:09:39', '2022-10-18 15:09:39'),
	(465, 'spr-20221124-055716', 1, NULL, 421, 6, 1, 1250, NULL, 0, 'Cash', NULL, '2022-11-24 18:57:16', '2022-11-24 18:57:16'),
	(466, 'spr-20221124-062601', 9, NULL, 422, 2, 1, 144, NULL, 0, 'Cash', NULL, '2022-11-24 19:26:01', '2022-11-24 19:26:01'),
	(467, 'spr-20221124-062653', 9, NULL, 423, 2, 1, 250, NULL, 0, 'Cash', NULL, '2022-11-24 19:26:53', '2022-11-24 19:26:53'),
	(468, 'spr-20221211-025325', 1, NULL, 424, 6, 1, 286, NULL, 0, 'Cash', NULL, '2022-12-11 15:53:25', '2022-12-11 15:53:25'),
	(469, 'ppr-20221211-025429', 1, 164, NULL, NULL, 1, 90, NULL, 0, 'Cash', NULL, '2022-12-11 15:54:29', '2022-12-11 15:54:29'),
	(470, 'ppr-20221225-093537', 40, 165, NULL, NULL, 1, 220, NULL, 0, 'Cash', NULL, '2022-12-25 09:35:37', '2022-12-25 09:35:37'),
	(471, 'ppr-20221226-062955', 41, 167, NULL, NULL, 1, 39600000, NULL, 0, 'Cash', NULL, '2022-12-26 18:29:55', '2022-12-26 18:29:55'),
	(472, 'ppr-20221227-090123', 41, 169, NULL, NULL, 1, 6144640, NULL, 0, 'Cash', 'pembayaran', '2022-12-27 21:01:23', '2022-12-27 21:01:23'),
	(473, 'ppr-20221227-090521', 41, 164, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-12-27 21:05:21', '2022-12-27 21:05:21'),
	(474, 'ppr-20221227-090949', 40, 14, NULL, NULL, 1, 83180, NULL, 0, 'Cash', NULL, '2022-12-27 21:09:49', '2022-12-27 21:09:49'),
	(475, 'spr-20221227-093248', 41, NULL, 425, NULL, 1, 144, NULL, 0, 'Cash', NULL, '2022-12-27 21:32:48', '2022-12-27 21:32:48'),
	(476, 'ppr-20221228-102926', 41, 171, NULL, NULL, 1, 18900000, NULL, 0, 'Cash', NULL, '2022-12-28 22:29:26', '2022-12-28 22:29:26'),
	(477, 'ppr-20221228-103518', 41, 171, NULL, NULL, 1, 6600000, NULL, 0, 'Cash', NULL, '2022-12-28 22:35:18', '2022-12-28 22:35:18'),
	(478, 'ppr-20230103-092017', 41, 170, NULL, NULL, 1, 18900000, NULL, 0, 'Cash', NULL, '2023-01-03 21:20:17', '2023-01-03 21:20:17'),
	(479, 'spr-20230103-092231', 41, NULL, 433, NULL, 1, 144000, NULL, 0, 'Cash', NULL, '2023-01-03 21:22:31', '2023-01-03 21:22:31');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table warungkms.payment_with_cheque
CREATE TABLE IF NOT EXISTS `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payment_with_cheque: ~16 rows (approximately)
/*!40000 ALTER TABLE `payment_with_cheque` DISABLE KEYS */;
INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
	(1, 19, '23425235235', '2018-07-01 10:09:48', '2018-07-01 10:09:48'),
	(2, 24, '3123123123', '2018-07-10 08:21:32', '2018-07-10 08:21:32'),
	(3, 31, '767867678', '2018-08-08 17:36:22', '2018-08-08 17:36:22'),
	(4, 34, '3123412', '2018-08-09 06:55:54', '2018-08-09 06:55:54'),
	(5, 35, '7765', '2018-08-09 07:32:14', '2018-08-09 07:32:14'),
	(6, 44, '3124142412', '2018-08-30 10:07:18', '2018-08-30 10:07:18'),
	(7, 51, '6576764646', '2018-09-03 11:08:21', '2018-09-03 11:08:21'),
	(8, 53, '111111111', '2018-09-03 11:15:24', '2018-09-03 11:15:24'),
	(9, 79, '1111', '2018-10-06 07:51:55', '2018-10-06 07:51:55'),
	(10, 147, '221133', '2018-12-04 07:58:35', '2018-12-04 07:58:35'),
	(11, 175, '1111', '2019-02-07 13:38:23', '2019-02-07 13:38:23'),
	(12, 176, '1111', '2019-02-07 13:54:59', '2019-02-07 13:54:59'),
	(13, 178, '420', '2019-02-07 14:07:04', '2019-02-07 14:07:04'),
	(14, 216, '12344321', '2019-11-11 11:39:11', '2019-11-11 11:39:11'),
	(15, 295, '111122222', '2020-10-18 12:17:24', '2020-10-18 12:17:24'),
	(16, 406, '13123123', '2022-03-11 22:15:29', '2022-03-11 22:15:29');
/*!40000 ALTER TABLE `payment_with_cheque` ENABLE KEYS */;

-- Dumping structure for table warungkms.payment_with_credit_card
CREATE TABLE IF NOT EXISTS `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payment_with_credit_card: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_with_credit_card` DISABLE KEYS */;
INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`) VALUES
	(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 12:16:55', '2020-10-18 12:16:55');
/*!40000 ALTER TABLE `payment_with_credit_card` ENABLE KEYS */;

-- Dumping structure for table warungkms.payment_with_gift_card
CREATE TABLE IF NOT EXISTS `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payment_with_gift_card: ~4 rows (approximately)
/*!40000 ALTER TABLE `payment_with_gift_card` DISABLE KEYS */;
INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
	(1, 36, 2, '2018-08-25 04:48:36', '2018-08-25 07:57:35'),
	(4, 39, 1, '2018-08-25 09:36:34', '2018-08-25 09:36:34'),
	(6, 50, 1, '2018-09-03 06:01:38', '2018-09-03 06:01:38'),
	(8, 293, 1, '2020-10-18 12:14:26', '2020-10-18 12:14:26');
/*!40000 ALTER TABLE `payment_with_gift_card` ENABLE KEYS */;

-- Dumping structure for table warungkms.payment_with_paypal
CREATE TABLE IF NOT EXISTS `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payment_with_paypal: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_with_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_with_paypal` ENABLE KEYS */;

-- Dumping structure for table warungkms.payrolls
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.payrolls: ~3 rows (approximately)
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
	(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2019-01-01 06:52:31', '2019-01-01 06:52:31'),
	(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-05 00:38:02', '2019-12-05 00:38:02'),
	(10, 'payroll-20210619-123706', 1, 1, 1, 200, '0', NULL, '2021-06-19 13:37:06', '2021-06-19 13:37:06');
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;

-- Dumping structure for table warungkms.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.permissions: ~122 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(4, 'products-edit', 'web', '2018-06-03 08:00:09', '2018-06-03 08:00:09'),
	(5, 'products-delete', 'web', '2018-06-04 05:54:22', '2018-06-04 05:54:22'),
	(6, 'products-add', 'web', '2018-06-04 07:34:14', '2018-06-04 07:34:14'),
	(7, 'products-index', 'web', '2018-06-04 10:34:27', '2018-06-04 10:34:27'),
	(8, 'purchases-index', 'web', '2018-06-04 15:03:19', '2018-06-04 15:03:19'),
	(9, 'purchases-add', 'web', '2018-06-04 15:12:25', '2018-06-04 15:12:25'),
	(10, 'purchases-edit', 'web', '2018-06-04 16:47:36', '2018-06-04 16:47:36'),
	(11, 'purchases-delete', 'web', '2018-06-04 16:47:36', '2018-06-04 16:47:36'),
	(12, 'sales-index', 'web', '2018-06-04 17:49:08', '2018-06-04 17:49:08'),
	(13, 'sales-add', 'web', '2018-06-04 17:49:52', '2018-06-04 17:49:52'),
	(14, 'sales-edit', 'web', '2018-06-04 17:49:52', '2018-06-04 17:49:52'),
	(15, 'sales-delete', 'web', '2018-06-04 17:49:53', '2018-06-04 17:49:53'),
	(16, 'quotes-index', 'web', '2018-06-05 05:05:10', '2018-06-05 05:05:10'),
	(17, 'quotes-add', 'web', '2018-06-05 05:05:10', '2018-06-05 05:05:10'),
	(18, 'quotes-edit', 'web', '2018-06-05 05:05:10', '2018-06-05 05:05:10'),
	(19, 'quotes-delete', 'web', '2018-06-05 05:05:10', '2018-06-05 05:05:10'),
	(20, 'transfers-index', 'web', '2018-06-05 05:30:03', '2018-06-05 05:30:03'),
	(21, 'transfers-add', 'web', '2018-06-05 05:30:03', '2018-06-05 05:30:03'),
	(22, 'transfers-edit', 'web', '2018-06-05 05:30:03', '2018-06-05 05:30:03'),
	(23, 'transfers-delete', 'web', '2018-06-05 05:30:03', '2018-06-05 05:30:03'),
	(24, 'returns-index', 'web', '2018-06-05 05:50:24', '2018-06-05 05:50:24'),
	(25, 'returns-add', 'web', '2018-06-05 05:50:24', '2018-06-05 05:50:24'),
	(26, 'returns-edit', 'web', '2018-06-05 05:50:25', '2018-06-05 05:50:25'),
	(27, 'returns-delete', 'web', '2018-06-05 05:50:25', '2018-06-05 05:50:25'),
	(28, 'customers-index', 'web', '2018-06-05 06:15:54', '2018-06-05 06:15:54'),
	(29, 'customers-add', 'web', '2018-06-05 06:15:55', '2018-06-05 06:15:55'),
	(30, 'customers-edit', 'web', '2018-06-05 06:15:55', '2018-06-05 06:15:55'),
	(31, 'customers-delete', 'web', '2018-06-05 06:15:55', '2018-06-05 06:15:55'),
	(32, 'suppliers-index', 'web', '2018-06-05 06:40:12', '2018-06-05 06:40:12'),
	(33, 'suppliers-add', 'web', '2018-06-05 06:40:12', '2018-06-05 06:40:12'),
	(34, 'suppliers-edit', 'web', '2018-06-05 06:40:12', '2018-06-05 06:40:12'),
	(35, 'suppliers-delete', 'web', '2018-06-05 06:40:12', '2018-06-05 06:40:12'),
	(36, 'product-report', 'web', '2018-06-25 06:05:33', '2018-06-25 06:05:33'),
	(37, 'purchase-report', 'web', '2018-06-25 06:24:56', '2018-06-25 06:24:56'),
	(38, 'sale-report', 'web', '2018-06-25 06:33:13', '2018-06-25 06:33:13'),
	(39, 'customer-report', 'web', '2018-06-25 06:36:51', '2018-06-25 06:36:51'),
	(40, 'due-report', 'web', '2018-06-25 06:39:52', '2018-06-25 06:39:52'),
	(41, 'users-index', 'web', '2018-06-25 07:00:10', '2018-06-25 07:00:10'),
	(42, 'users-add', 'web', '2018-06-25 07:00:10', '2018-06-25 07:00:10'),
	(43, 'users-edit', 'web', '2018-06-25 07:01:30', '2018-06-25 07:01:30'),
	(44, 'users-delete', 'web', '2018-06-25 07:01:30', '2018-06-25 07:01:30'),
	(45, 'profit-loss', 'web', '2018-07-15 04:50:05', '2018-07-15 04:50:05'),
	(46, 'best-seller', 'web', '2018-07-15 05:01:38', '2018-07-15 05:01:38'),
	(47, 'daily-sale', 'web', '2018-07-15 05:24:21', '2018-07-15 05:24:21'),
	(48, 'monthly-sale', 'web', '2018-07-15 05:30:41', '2018-07-15 05:30:41'),
	(49, 'daily-purchase', 'web', '2018-07-15 05:36:46', '2018-07-15 05:36:46'),
	(50, 'monthly-purchase', 'web', '2018-07-15 05:48:17', '2018-07-15 05:48:17'),
	(51, 'payment-report', 'web', '2018-07-15 06:10:41', '2018-07-15 06:10:41'),
	(52, 'warehouse-stock-report', 'web', '2018-07-15 06:16:55', '2018-07-15 06:16:55'),
	(53, 'product-qty-alert', 'web', '2018-07-15 06:33:21', '2018-07-15 06:33:21'),
	(54, 'supplier-report', 'web', '2018-07-30 10:00:01', '2018-07-30 10:00:01'),
	(55, 'expenses-index', 'web', '2018-09-05 08:07:10', '2018-09-05 08:07:10'),
	(56, 'expenses-add', 'web', '2018-09-05 08:07:10', '2018-09-05 08:07:10'),
	(57, 'expenses-edit', 'web', '2018-09-05 08:07:10', '2018-09-05 08:07:10'),
	(58, 'expenses-delete', 'web', '2018-09-05 08:07:11', '2018-09-05 08:07:11'),
	(59, 'general_setting', 'web', '2018-10-20 06:10:04', '2018-10-20 06:10:04'),
	(60, 'mail_setting', 'web', '2018-10-20 06:10:04', '2018-10-20 06:10:04'),
	(61, 'pos_setting', 'web', '2018-10-20 06:10:04', '2018-10-20 06:10:04'),
	(62, 'hrm_setting', 'web', '2019-01-02 17:30:23', '2019-01-02 17:30:23'),
	(63, 'purchase-return-index', 'web', '2019-01-03 04:45:14', '2019-01-03 04:45:14'),
	(64, 'purchase-return-add', 'web', '2019-01-03 04:45:14', '2019-01-03 04:45:14'),
	(65, 'purchase-return-edit', 'web', '2019-01-03 04:45:14', '2019-01-03 04:45:14'),
	(66, 'purchase-return-delete', 'web', '2019-01-03 04:45:14', '2019-01-03 04:45:14'),
	(67, 'account-index', 'web', '2019-01-03 05:06:13', '2019-01-03 05:06:13'),
	(68, 'balance-sheet', 'web', '2019-01-03 05:06:14', '2019-01-03 05:06:14'),
	(69, 'account-statement', 'web', '2019-01-03 05:06:14', '2019-01-03 05:06:14'),
	(70, 'department', 'web', '2019-01-03 05:30:01', '2019-01-03 05:30:01'),
	(71, 'attendance', 'web', '2019-01-03 05:30:01', '2019-01-03 05:30:01'),
	(72, 'payroll', 'web', '2019-01-03 05:30:01', '2019-01-03 05:30:01'),
	(73, 'employees-index', 'web', '2019-01-03 05:52:19', '2019-01-03 05:52:19'),
	(74, 'employees-add', 'web', '2019-01-03 05:52:19', '2019-01-03 05:52:19'),
	(75, 'employees-edit', 'web', '2019-01-03 05:52:19', '2019-01-03 05:52:19'),
	(76, 'employees-delete', 'web', '2019-01-03 05:52:19', '2019-01-03 05:52:19'),
	(77, 'user-report', 'web', '2019-01-16 13:48:18', '2019-01-16 13:48:18'),
	(78, 'stock_count', 'web', '2019-02-17 17:32:01', '2019-02-17 17:32:01'),
	(79, 'adjustment', 'web', '2019-02-17 17:32:02', '2019-02-17 17:32:02'),
	(80, 'sms_setting', 'web', '2019-02-22 12:18:03', '2019-02-22 12:18:03'),
	(81, 'create_sms', 'web', '2019-02-22 12:18:03', '2019-02-22 12:18:03'),
	(82, 'print_barcode', 'web', '2019-03-07 12:02:19', '2019-03-07 12:02:19'),
	(83, 'empty_database', 'web', '2019-03-07 12:02:19', '2019-03-07 12:02:19'),
	(84, 'customer_group', 'web', '2019-03-07 12:37:15', '2019-03-07 12:37:15'),
	(85, 'unit', 'web', '2019-03-07 12:37:15', '2019-03-07 12:37:15'),
	(86, 'tax', 'web', '2019-03-07 12:37:15', '2019-03-07 12:37:15'),
	(87, 'gift_card', 'web', '2019-03-07 13:29:38', '2019-03-07 13:29:38'),
	(88, 'coupon', 'web', '2019-03-07 13:29:38', '2019-03-07 13:29:38'),
	(89, 'holiday', 'web', '2019-10-19 15:57:15', '2019-10-19 15:57:15'),
	(90, 'warehouse-report', 'web', '2019-10-22 13:00:23', '2019-10-22 13:00:23'),
	(91, 'warehouse', 'web', '2020-02-26 13:47:32', '2020-02-26 13:47:32'),
	(92, 'brand', 'web', '2020-02-26 13:59:59', '2020-02-26 13:59:59'),
	(93, 'billers-index', 'web', '2020-02-26 14:11:15', '2020-02-26 14:11:15'),
	(94, 'billers-add', 'web', '2020-02-26 14:11:15', '2020-02-26 14:11:15'),
	(95, 'billers-edit', 'web', '2020-02-26 14:11:15', '2020-02-26 14:11:15'),
	(96, 'billers-delete', 'web', '2020-02-26 14:11:15', '2020-02-26 14:11:15'),
	(97, 'money-transfer', 'web', '2020-03-02 12:41:48', '2020-03-02 12:41:48'),
	(98, 'category', 'web', '2020-07-13 19:13:16', '2020-07-13 19:13:16'),
	(99, 'delivery', 'web', '2020-07-13 19:13:16', '2020-07-13 19:13:16'),
	(100, 'send_notification', 'web', '2020-10-31 13:21:31', '2020-10-31 13:21:31'),
	(101, 'today_sale', 'web', '2020-10-31 13:57:04', '2020-10-31 13:57:04'),
	(102, 'today_profit', 'web', '2020-10-31 13:57:04', '2020-10-31 13:57:04'),
	(103, 'currency', 'web', '2020-11-09 07:23:11', '2020-11-09 07:23:11'),
	(104, 'backup_database', 'web', '2020-11-15 07:16:55', '2020-11-15 07:16:55'),
	(105, 'reward_point_setting', 'web', '2021-06-27 11:34:42', '2021-06-27 11:34:42'),
	(106, 'revenue_profit_summary', 'web', '2022-02-08 20:57:21', '2022-02-08 20:57:21'),
	(107, 'cash_flow', 'web', '2022-02-08 20:57:22', '2022-02-08 20:57:22'),
	(108, 'monthly_summary', 'web', '2022-02-08 20:57:22', '2022-02-08 20:57:22'),
	(109, 'yearly_report', 'web', '2022-02-08 20:57:22', '2022-02-08 20:57:22'),
	(110, 'discount_plan', 'web', '2022-02-16 16:12:26', '2022-02-16 16:12:26'),
	(111, 'discount', 'web', '2022-02-16 16:12:38', '2022-02-16 16:12:38'),
	(112, 'product-expiry-report', 'web', '2022-03-30 12:39:20', '2022-03-30 12:39:20'),
	(113, 'purchase-payment-index', 'web', '2022-06-05 21:12:27', '2022-06-05 21:12:27'),
	(114, 'purchase-payment-add', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(115, 'purchase-payment-edit', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(116, 'purchase-payment-delete', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(117, 'sale-payment-index', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(118, 'sale-payment-add', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(119, 'sale-payment-edit', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(120, 'sale-payment-delete', 'web', '2022-06-05 21:12:28', '2022-06-05 21:12:28'),
	(121, 'all_notification', 'web', '2022-06-05 21:12:29', '2022-06-05 21:12:29'),
	(122, 'sale-report-chart', 'web', '2022-06-05 21:12:29', '2022-06-05 21:12:29'),
	(123, 'dso-report', 'web', '2022-06-05 21:12:29', '2022-06-05 21:12:29'),
	(124, 'product_history', 'web', '2022-08-25 21:04:05', '2022-08-25 21:04:05'),
	(125, 'supplier-due-report', 'web', '2022-08-31 16:46:33', '2022-08-31 16:46:33');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table warungkms.pos_setting
CREATE TABLE IF NOT EXISTS `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.pos_setting: ~1 rows (approximately)
/*!40000 ALTER TABLE `pos_setting` DISABLE KEYS */;
INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
	(1, 11, 2, 1, 3, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 10:17:04', '2022-11-30 13:50:26');
/*!40000 ALTER TABLE `pos_setting` ENABLE KEYS */;

-- Dumping structure for table warungkms.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.products: ~49 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Mouse', '63920719', 'standard', 'UPCE', 4, 3, 1, 1, 1, 320, 400, 188, 20, NULL, NULL, '350', '2020-06-30', '2020-07-31', 1, 2, 'toponemouse.jpg', NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '11:11:30 AMhello world', NULL, NULL, 1, '2018-05-13 05:23:03', '2022-12-27 21:19:32'),
	(2, 'mango', '72782608', 'standard', 'C128', NULL, 1, 1, 3, 2, 1000, 12000, 3179, 100, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'mango.jpg', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-05-13 05:38:31', '2022-12-27 22:42:54'),
	(3, 'Earphone', '85415108', 'standard', 'C128', 4, 2, 1, 1, 1, 200, 250, 143, 25, NULL, NULL, '220', '2020-11-02', '2020-11-30', NULL, 2, 'airphonesamsung.jpg', NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, 'Earphone with good sound quality.\r\njhjkhjkhjh @@', NULL, NULL, 1, '2018-05-13 05:39:55', '2022-12-25 09:35:02'),
	(4, 'lychee', '38314290', 'standard', 'C128', NULL, 1, 1, 1, 1, 1, 2, 290, 50, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'lychee.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'sweet lychee from kalipur, bashkhali', NULL, NULL, 1, '2018-05-24 05:54:56', '2021-07-15 19:25:45'),
	(5, 'Baby doll', '31261512', 'standard', 'C128', 3, 4, 1, 1, 1, 100, 120, 125, 50, 2, 1, '100', '2020-02-28', '2020-02-29', NULL, 2, 'lalacrybabydoll.jpg', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '&lt;IMG SRC=@javascript:alert(\'XSS\');@&gt;', NULL, NULL, 1, '2018-05-24 05:58:20', '2022-12-11 15:53:25'),
	(6, 'test', '78041363', 'standard', 'C128', NULL, 2, 1, 1, 1, 12, 21, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-28 06:50:25', '2018-05-28 06:53:24'),
	(10, 'potato', '212132', 'standard', 'C128', NULL, 9, 7, 7, 7, 10, 22, 109.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'potato.jpeg', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-06-25 08:34:53', '2022-12-11 15:53:25'),
	(13, 'ldms', '40624536', 'digital', 'C128', NULL, 3, 0, 0, 0, 0, 21, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'ldms.jpg', '1532330693.JPG', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Amazon Prime 1 MonthPrice: 300tk\r\nUser Ability: Max 2 Mobile UserDuration: 1 MonthPackage: Premium', NULL, NULL, 1, '2018-07-23 08:09:29', '2020-03-07 23:45:01'),
	(14, 'ni', '40237871', 'standard', 'C128', NULL, 9, 8, 8, 8, 55, 56, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-01 05:36:51', '2018-08-01 05:41:48'),
	(15, 'edawe', 'awd', 'standard', 'C128', NULL, 1, 4, 4, 4, 312, 132, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-05 08:26:19', '2018-08-05 08:27:03'),
	(16, 'weq', 'eqw', 'digital', 'C128', NULL, 2, 0, 0, 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1533454125.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-05 08:28:45', '2018-08-05 08:29:23'),
	(17, 'et', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, 12, 21, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-06 11:25:43', '2018-08-06 11:27:41'),
	(18, 'wre', 'wre', 'standard', 'C128', NULL, 1, 4, 4, 4, 3, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-06 11:45:42', '2018-08-06 11:57:41'),
	(19, 'ewr', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, 3, 23, 0, NULL, NULL, 1, NULL, '2018-08-06', '2018-08-10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-06 12:41:46', '2019-11-28 12:16:47'),
	(20, 'dim', '4234', 'standard', 'C128', NULL, 10, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-29 06:37:07', '2018-08-29 06:43:18'),
	(21, 'dim', '1', 'standard', 'C128', NULL, 11, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-08-29 06:49:27', '2018-08-29 06:53:21'),
	(22, 'iphone-X', '97103461', 'standard', 'C128', 5, 2, 1, 1, 1, 800, 1000, 39, 20, NULL, NULL, NULL, NULL, NULL, 1, 2, 'iphoneX.jpg', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-09-03 11:05:17', '2022-06-14 16:20:48'),
	(23, 'qwq', '1237920612311a', 'standard', 'C39', NULL, 2, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-09-11 06:53:18', '2018-09-11 06:56:04'),
	(24, 'chocolate', '84802317', 'standard', 'C128', NULL, 9, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-09-16 04:42:01', '2018-09-16 05:10:43'),
	(25, 'Galaxy S9', '72100265', 'standard', 'C128', NULL, 2, 1, 1, 1, 500, 1000, 45, 50, NULL, NULL, NULL, NULL, NULL, 1, 2, 'SamsungGalaxyS9.jpg', NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-10-23 08:13:22', '2022-11-24 18:57:16'),
	(26, 'Samsung Set', '39053411', 'combo', 'C128', 4, 2, 0, 0, 0, 0, 1250, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3,25', NULL, '1,1', '250,1000', '', NULL, NULL, 1, '2018-11-19 10:59:06', '2018-11-20 09:12:02'),
	(27, 'mixed fruit juice', '24805187', 'combo', 'C128', NULL, 9, 0, 0, 0, 0, 16, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4,2', NULL, '3,1', '2,10', '', NULL, NULL, 0, '2018-11-19 16:39:26', '2018-11-25 05:35:51'),
	(28, 'ssaaa', 'sasas', 'standard', 'C128', NULL, 2, 1, 1, 2, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-11-20 11:14:12', '2018-11-20 11:34:02'),
	(29, 'testcloth', '16055884', 'standard', 'C128', NULL, 4, 10, 10, 10, 10, 15, 0, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2018-11-29 10:49:25', '2019-03-01 22:09:27'),
	(30, 'Polo Shirt', '53467102', 'standard', 'C128', NULL, 12, 1, 1, 1, 50, 100, 24, 10, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'PoloShirt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-12-05 06:29:43', '2021-07-15 19:25:45'),
	(31, 'Shoe', '90471412', 'standard', 'C128', NULL, 12, 1, 1, 1, 250, 300, 24, 10, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Shoe.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-12-05 06:33:09', '2022-06-15 11:23:30'),
	(32, 'Toothpaste', '859875003032', 'standard', 'C128', NULL, 12, 1, 1, 1, 5, 10, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1572759415477product-page-fresh-breath.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-12-19 06:56:08', '2021-07-15 19:25:45'),
	(33, 'tissue', '8941161008066', 'standard', 'C128', NULL, 12, 1, 1, 1, 10, 20, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2018-12-24 06:33:58', '2021-07-15 19:25:45'),
	(48, 'T-shirt', '93475396', 'standard', 'C128', NULL, 12, 1, 1, 1, 2, 3, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1577165120189220px-Blue_Tshirt.jpg', NULL, 0, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2019-11-21 14:03:04', '2022-08-08 22:34:26'),
	(60, 'testvar', '32081679', 'standard', 'C128', NULL, 12, 1, 1, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2020-05-18 23:44:14', '2020-10-27 06:42:06'),
	(61, 'TV', '32703342', 'standard', 'C128', 4, 2, 1, 1, 1, 3000, 10000, 16, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2020-08-16 22:58:39', '2021-07-15 19:25:45'),
	(62, 'Test variant', '81145830', 'standard', 'C128', NULL, 4, 1, 1, 1, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2020-09-27 13:08:27', '2021-02-11 08:28:16'),
	(71, 'Napa', '41930312', 'standard', 'C128', NULL, 19, 1, 1, 1, 1, 2, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2021-03-07 15:12:53', '2022-05-14 15:50:17'),
	(72, 'Denim Jeans', '19243053', 'standard', 'C128', NULL, 12, 1, 1, 1, 2, 5, 26, 10, NULL, NULL, NULL, NULL, NULL, NULL, 2, '16255551802975de6825f-5bbc-4d74-bce9-2aa4ab2311ce.jpg', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2021-05-31 15:05:38', '2022-11-30 13:53:07'),
	(74, 'Medium T shirt and Jeans', '10203123', 'combo', 'C128', NULL, 12, 0, 0, 0, 0, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '48,72', '2,', '1,1', '13,5', '', NULL, NULL, 1, '2021-07-06 14:31:58', '2021-07-06 14:31:58'),
	(75, 'Car Repair', '16972383', 'service', 'C128', NULL, 20, 0, 0, 0, 0, 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2021-07-15 19:38:41', '2021-07-15 19:38:41'),
	(76, 'dasdas', '32781116', 'standard', 'C128', NULL, 4, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2021-11-09 17:57:02', '2021-11-09 17:57:02'),
	(77, 'chukus', '48547006', 'standard', 'C128', NULL, 2, 1, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '163886942338193136640_10156697499916330_2126367939505422336_n.jpg,1638869424762105705782_159243222380186_243702843374862028_o.jpg,202112070415034.jpg,202112070427354.jpg', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2021-12-07 16:30:43', '2021-12-07 19:47:06'),
	(79, 'Alpha Cheese', '2000004', 'standard', 'C128', NULL, 9, 7, 7, 7, 12, 25, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-06-01 12:37:28', '2022-06-06 18:13:37'),
	(87, 'Cotton Punjabi', '82490498', 'standard', 'C128', 7, 12, 1, 1, 1, 10, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, 0, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', '["Size","Color"]', '["s,m,l,xl","red,blue,green"]', 1, '2022-08-03 12:25:19', '2022-08-09 12:54:44'),
	(90, 'Iphone 14', '17628500', 'standard', 'C128', 5, 2, 1, 1, 1, 500, 1000, 29, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '1662879338234iphone-14-pro-model-unselect-gallery-2-202209_GEO_US.jpg', NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '\r\n\r\n\r\nNETWORK\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n\r\n\r\n\r\n\r\n\r\n\r\nDimensions\r\n160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)\r\n\r\n\r\n', '["color"]', '["red,black,blue"]', 1, '2022-09-11 13:56:55', '2022-09-11 14:18:26'),
	(96, 'Charger', '123321', 'standard', 'C128', 3, 2, 1, 1, 1, 1000000, 1500000, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-22 15:49:13', '2022-12-22 15:49:13'),
	(97, 'luwak white coffee', '1231232', 'standard', 'C128', 5, 9, 1, 1, 1, 500, 1000, 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-22 16:30:02', '2022-12-22 16:30:02'),
	(98, 'abcd123456', '1221', 'standard', 'C128', 3, 9, 1, 1, 1, 100, 200, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-23 23:31:10', '2022-12-28 22:16:33'),
	(99, 'adka', '888999', 'standard', 'C128', 4, 4, 1, 1, 1, 900, 929, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-23 23:32:38', '2022-12-23 23:32:38'),
	(100, 'tester', '121112', 'standard', 'C128', 4, 2, 1, 1, 1, 230000, 300000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-23 23:35:02', '2022-12-27 21:15:06'),
	(101, 'dis wh', '212133', 'standard', 'C128', 4, 16, 1, 1, 1, 89999, 900000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-23 23:36:12', '2022-12-23 23:36:12'),
	(102, 'dis func', '29292', 'standard', 'C128', 4, 16, 1, 1, 1, 2827, 8837, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-23 23:45:27', '2022-12-23 23:45:27'),
	(103, 'UHDTV Samsung 42 Inch', '36101207', 'standard', 'C128', 4, 2, 1, 1, 1, 6000000, 7500000, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-12-26 18:28:15', '2023-01-03 21:20:55');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_adjustments
CREATE TABLE IF NOT EXISTS `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_adjustments: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_adjustments` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_batches
CREATE TABLE IF NOT EXISTS `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_batches: ~4 rows (approximately)
/*!40000 ALTER TABLE `product_batches` DISABLE KEYS */;
INSERT INTO `product_batches` (`id`, `product_id`, `batch_no`, `expired_date`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 71, '1001', '2023-05-31', 13, '2021-03-07 15:14:05', '2022-05-14 15:50:17'),
	(2, 71, '1002', '2023-05-31', 6, '2021-03-07 15:55:06', '2021-06-18 21:32:54'),
	(3, 71, '1003', '2023-09-30', 2, '2021-03-09 16:42:13', '2021-09-21 16:49:37'),
	(4, 22, '10001', '2021-11-30', 1, '2021-10-20 14:47:09', '2021-10-20 14:47:09');
/*!40000 ALTER TABLE `product_batches` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_purchases
CREATE TABLE IF NOT EXISTS `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_purchases: ~156 rows (approximately)
/*!40000 ALTER TABLE `product_purchases` DISABLE KEYS */;
INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(59, 12, 4, NULL, NULL, NULL, 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-09 06:48:36', '2018-08-09 06:48:36'),
	(60, 12, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 06:48:36', '2018-08-09 06:48:36'),
	(66, 13, 2, NULL, NULL, NULL, 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-09 06:49:55', '2018-08-09 06:49:55'),
	(67, 13, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 06:49:55', '2018-08-09 06:49:55'),
	(68, 13, 1, NULL, NULL, NULL, 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-09 06:49:55', '2018-08-09 06:49:55'),
	(69, 13, 10, NULL, NULL, NULL, 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-09 06:49:55', '2018-08-09 06:49:55'),
	(70, 14, 1, NULL, NULL, NULL, 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 14:23:48', '2018-08-09 14:23:48'),
	(71, 14, 2, NULL, NULL, NULL, 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 14:23:48', '2018-08-09 14:23:48'),
	(72, 14, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 14:23:49', '2018-08-09 14:23:49'),
	(73, 14, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 14:23:49', '2018-08-09 14:23:49'),
	(74, 14, 10, NULL, NULL, NULL, 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 14:23:49', '2018-08-09 14:23:49'),
	(76, 15, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 11:06:46', '2018-09-03 11:06:46'),
	(87, 16, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 16:09:12', '2018-09-20 16:09:12'),
	(89, 18, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 17:26:25', '2018-10-22 17:26:25'),
	(90, 19, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 17:26:52', '2018-10-22 17:26:52'),
	(91, 20, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 08:14:21', '2018-10-23 08:14:21'),
	(93, 21, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 08:14:58', '2018-10-23 08:14:58'),
	(94, 22, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-01 05:59:03', '2018-11-01 05:59:03'),
	(96, 23, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 10:23:52', '2018-11-03 10:23:52'),
	(97, 24, 22, NULL, NULL, NULL, 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 10:18:19', '2018-11-05 10:18:19'),
	(98, 24, 25, NULL, NULL, NULL, 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 10:18:19', '2018-11-05 10:18:19'),
	(99, 25, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-05 06:34:30', '2018-12-05 06:34:30'),
	(100, 25, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-05 06:34:30', '2018-12-05 06:34:30'),
	(101, 26, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-05 06:35:08', '2018-12-05 06:35:08'),
	(102, 26, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-05 06:35:08', '2018-12-05 06:35:08'),
	(104, 27, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-19 06:57:41', '2018-12-19 06:57:41'),
	(112, 33, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 10:04:21', '2018-12-24 10:04:21'),
	(113, 34, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 08:01:24', '2019-01-03 08:01:24'),
	(114, 34, 22, NULL, NULL, NULL, 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 08:01:24', '2019-01-03 08:01:24'),
	(115, 35, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 10:54:48', '2019-01-29 10:54:48'),
	(116, 35, 30, NULL, NULL, NULL, 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 10:54:48', '2019-01-29 10:54:48'),
	(117, 36, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 10:55:58', '2019-01-29 10:55:58'),
	(118, 36, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 10:55:58', '2019-01-29 10:55:58'),
	(121, 39, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 11:44:13', '2019-02-09 11:44:13'),
	(122, 39, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 11:44:13', '2019-02-09 11:44:13'),
	(123, 38, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 11:45:24', '2019-02-09 11:45:24'),
	(124, 38, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 11:45:24', '2019-02-09 11:45:24'),
	(125, 37, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 11:46:22', '2019-02-09 11:46:22'),
	(126, 37, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 11:46:23', '2019-02-09 11:46:23'),
	(127, 37, 22, NULL, NULL, NULL, 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 11:46:23', '2019-02-09 11:46:23'),
	(128, 40, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 11:39:17', '2019-03-03 11:39:17'),
	(129, 41, 33, NULL, NULL, NULL, 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 11:43:58', '2019-03-03 11:43:58'),
	(130, 41, 1, NULL, NULL, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 11:43:59', '2019-03-03 11:43:59'),
	(133, 42, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 20:50:08', '2019-04-13 20:50:08'),
	(134, 42, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 20:50:08', '2019-04-13 20:50:08'),
	(135, 43, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 11:16:00', '2019-06-13 11:16:00'),
	(136, 43, 22, NULL, NULL, NULL, 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 11:16:01', '2019-06-13 11:16:01'),
	(137, 44, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 16:31:19', '2019-10-19 16:31:19'),
	(138, 44, 22, NULL, NULL, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 16:31:20', '2019-10-19 16:31:20'),
	(140, 46, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 12:39:49', '2019-11-03 12:39:49'),
	(141, 46, 32, NULL, NULL, NULL, 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 12:39:49', '2019-11-03 12:39:49'),
	(142, 47, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 12:25:10', '2019-11-09 12:25:10'),
	(143, 47, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 12:25:10', '2019-11-09 12:25:10'),
	(144, 48, 4, NULL, NULL, NULL, 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 20:02:21', '2019-11-10 20:02:21'),
	(149, 49, 22, NULL, NULL, NULL, 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 11:28:59', '2019-11-11 11:28:59'),
	(158, 55, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 23:28:35', '2019-11-27 23:28:35'),
	(159, 55, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 23:28:35', '2019-11-27 23:28:35'),
	(161, 57, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2019-12-05 00:07:49', '2019-12-05 00:07:49'),
	(162, 58, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 11:21:10', '2019-12-05 11:21:10'),
	(163, 58, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 11:21:10', '2019-12-05 11:21:10'),
	(169, 59, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 17:22:29', '2019-12-21 17:22:29'),
	(170, 59, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 17:22:29', '2019-12-21 17:22:29'),
	(171, 59, 48, NULL, 5, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 17:22:29', '2019-12-21 17:22:29'),
	(174, 56, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 20:27:16', '2019-12-21 20:27:16'),
	(178, 61, 48, NULL, 3, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 14:06:31', '2020-01-01 14:06:31'),
	(179, 61, 48, NULL, 2, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 14:06:31', '2020-01-01 14:06:31'),
	(180, 61, 48, NULL, 5, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 14:06:31', '2020-01-01 14:06:31'),
	(181, 62, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-01-01 15:24:02', '2020-01-01 15:24:02'),
	(209, 67, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2020-02-05 00:00:41', '2020-02-05 00:00:41'),
	(210, 67, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2020-02-05 00:00:41', '2020-02-05 00:00:41'),
	(212, 69, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 12:55:10', '2020-03-02 12:55:10'),
	(213, 70, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 12:56:03', '2020-03-02 12:56:03'),
	(214, 71, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-04-06 20:35:12', '2020-04-06 20:35:12'),
	(215, 71, 31, NULL, NULL, NULL, 5, 5, 1, 250, 0, 0, 0, 1250, '2020-04-06 20:35:12', '2020-04-06 20:35:12'),
	(216, 71, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2020-04-06 20:35:12', '2020-04-06 20:35:12'),
	(217, 72, 61, NULL, NULL, NULL, 10, 10, 1, 2500, 5000, 15, 3750, 28750, '2020-08-16 23:02:07', '2020-08-16 23:02:07'),
	(219, 73, 62, NULL, 12, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-09-27 16:07:44', '2020-09-27 16:07:44'),
	(221, 74, 61, NULL, NULL, NULL, 11, 11, 1, 3000, 0, 15, 4950, 37950, '2020-10-24 08:03:16', '2020-10-24 08:03:16'),
	(222, 74, 22, NULL, NULL, NULL, 4, 4, 1, 800, 0, 10, 320, 3520, '2020-10-24 08:03:16', '2020-10-24 08:03:16'),
	(232, 83, 60, NULL, 9, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-10-27 05:56:11', '2020-10-27 05:56:11'),
	(233, 84, 60, NULL, 9, NULL, 2, 2, 1, 2, 0, 0, 0, 4, '2020-10-27 05:56:58', '2020-10-27 05:56:58'),
	(234, 85, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 10:29:52', '2020-11-02 10:29:52'),
	(239, 87, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 12:20:34', '2020-11-02 12:20:34'),
	(242, 89, 62, NULL, 12, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2020-11-16 16:01:45', '2020-11-16 16:01:45'),
	(243, 89, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-16 16:01:45', '2020-11-16 16:01:45'),
	(244, 90, 61, NULL, NULL, NULL, 10, 10, 1, 3000, 0, 15, 4500, 34500, '2020-11-18 07:15:44', '2020-11-18 07:15:44'),
	(271, 98, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-07 15:14:05', '2021-03-07 15:14:05'),
	(281, 100, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-09 16:45:19', '2021-03-09 16:45:19'),
	(282, 99, 71, 2, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-09 16:46:50', '2021-03-09 16:46:50'),
	(283, 102, 71, 1, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-11 10:47:53', '2021-03-11 10:47:53'),
	(295, 105, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-04-09 22:53:48', '2021-04-09 22:53:48'),
	(296, 105, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-04-09 22:53:48', '2021-04-09 22:53:48'),
	(297, 106, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2021-05-24 20:18:54', '2021-05-24 20:18:54'),
	(309, 113, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2021-05-30 14:41:19', '2021-05-30 14:41:19'),
	(310, 113, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-05-30 14:41:19', '2021-05-30 14:41:19'),
	(311, 114, 71, 3, NULL, NULL, 3, 3, 1, 1.5, 0, 0, 0, 4.5, '2021-06-01 16:21:27', '2021-06-01 16:21:27'),
	(312, 115, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-18 21:28:36', '2021-06-18 21:28:36'),
	(313, 115, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-18 21:28:36', '2021-06-18 21:28:36'),
	(314, 116, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-19 11:48:22', '2021-06-19 11:48:22'),
	(315, 116, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-19 11:48:22', '2021-06-19 11:48:22'),
	(316, 117, 72, NULL, NULL, NULL, 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 14:10:42', '2021-07-06 14:10:42'),
	(317, 118, 72, NULL, NULL, NULL, 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 14:11:07', '2021-07-06 14:11:07'),
	(324, 121, 71, 3, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-09-21 16:49:38', '2021-09-21 16:49:38'),
	(325, 121, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-09-21 16:49:38', '2021-09-21 16:49:38'),
	(328, 123, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-10-03 14:04:53', '2021-10-03 14:04:53'),
	(329, 123, 22, NULL, NULL, '11101', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 14:04:53', '2021-10-03 14:04:53'),
	(330, 124, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2021-10-03 14:06:21', '2021-10-03 14:06:21'),
	(331, 124, 22, NULL, NULL, '11102', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 14:06:21', '2021-10-03 14:06:21'),
	(345, 128, 22, NULL, NULL, NULL, 10, 5, 1, 800, 0, 10, 800, 8800, '2021-10-20 14:45:25', '2021-10-20 14:45:25'),
	(346, 129, 22, 4, NULL, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-20 14:47:09', '2021-10-20 14:47:09'),
	(356, 131, 3, NULL, NULL, NULL, 3, 3, 1, 200, 0, 0, 0, 600, '2021-11-29 14:29:18', '2021-11-29 14:29:18'),
	(357, 131, 1, NULL, NULL, NULL, 2, 2, 1, 320, 0, 10, 64, 704, '2021-11-29 14:29:18', '2021-11-29 14:29:18'),
	(363, 132, 22, NULL, NULL, '11103', 1, 1, 1, 800, 0, 10, 80, 880, '2021-12-07 20:01:11', '2021-12-07 20:01:11'),
	(364, 132, 48, NULL, 5, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2021-12-07 20:01:11', '2021-12-07 20:01:11'),
	(365, 132, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-12-07 20:01:11', '2021-12-07 20:01:11'),
	(366, 133, 5, NULL, NULL, NULL, 2, 2, 1, 100, 0, 0, 0, 200, '2022-02-20 22:31:02', '2022-02-20 22:31:02'),
	(368, 134, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-03-11 23:01:52', '2022-03-11 23:01:52'),
	(369, 135, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-03-11 23:02:15', '2022-03-11 23:02:15'),
	(370, 136, 2, NULL, NULL, NULL, 1, 1, 3, 166.96, 0, 15, 25.04, 192, '2022-03-27 12:07:27', '2022-03-27 12:07:27'),
	(371, 136, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-03-27 12:07:27', '2022-03-27 12:07:27'),
	(385, 144, 2, NULL, NULL, NULL, 10, 10, 1, 6.96, 0, 15, 10.4, 80, '2022-03-31 15:05:49', '2022-03-31 15:05:49'),
	(386, 144, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-03-31 15:05:49', '2022-03-31 15:05:49'),
	(387, 144, 72, NULL, NULL, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2022-03-31 15:05:49', '2022-03-31 15:05:49'),
	(388, 145, 72, NULL, NULL, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2022-04-24 12:00:38', '2022-04-24 12:00:38'),
	(389, 145, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2022-04-24 12:00:38', '2022-04-24 12:00:38'),
	(390, 146, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-05-16 12:21:00', '2022-05-16 12:21:00'),
	(391, 147, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-05-31 13:23:57', '2022-05-31 13:23:57'),
	(392, 147, 1, NULL, NULL, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2022-05-31 13:23:57', '2022-05-31 13:23:57'),
	(395, 148, 79, NULL, NULL, NULL, 12, 12, 7, 12, 0, 0, 0, 144, '2022-06-05 13:26:35', '2022-06-05 13:26:35'),
	(396, 150, 2, NULL, NULL, NULL, 1, 1, 3, 347.83, 0, 15, 52.17, 400, '2022-06-07 17:38:46', '2022-06-07 17:38:46'),
	(400, 153, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-07-17 11:52:12', '2022-07-17 11:52:12'),
	(401, 153, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2022-07-17 11:52:12', '2022-07-17 11:52:12'),
	(402, 154, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-07-17 11:52:57', '2022-07-17 11:52:57'),
	(403, 154, 5, NULL, NULL, NULL, 2, 2, 1, 100, 0, 0, 0, 200, '2022-07-17 11:52:57', '2022-07-17 11:52:57'),
	(404, 155, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2022-07-17 11:53:44', '2022-07-17 11:53:44'),
	(416, 158, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(417, 158, 48, NULL, 5, NULL, 1, 1, 1, 12, 0, 0, 0, 12, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(418, 158, 87, NULL, 30, NULL, 1, 1, 1, 13, 0, 0, 0, 13, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(419, 158, 87, NULL, 22, NULL, 1, 1, 1, 12, 0, 0, 0, 12, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(420, 158, 48, NULL, 2, NULL, 1, 1, 1, 7, 0, 0, 0, 7, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(425, 161, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2022-09-04 21:01:09', '2022-09-04 21:01:09'),
	(426, 161, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-09-04 21:01:10', '2022-09-04 21:01:10'),
	(427, 161, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-09-04 21:01:10', '2022-09-04 21:01:10'),
	(428, 162, 90, NULL, 35, NULL, 10, 10, 1, 550, 0, 10, 550, 6050, '2022-09-11 14:04:41', '2022-09-11 14:04:41'),
	(429, 162, 90, NULL, 34, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-09-11 14:04:41', '2022-09-11 14:04:41'),
	(430, 162, 90, NULL, 33, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-09-11 14:04:41', '2022-09-11 14:04:41'),
	(431, 163, 1, NULL, NULL, NULL, 1, 1, 1, 290.91, 0, 10, 29.09, 320, '2022-11-20 13:20:35', '2022-11-20 13:20:35'),
	(432, 164, 3, NULL, NULL, NULL, 1, 1, 1, 190, 0, 0, 0, 190, '2022-11-24 17:37:10', '2022-11-24 17:37:10'),
	(434, 165, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-12-25 09:35:02', '2022-12-25 09:35:02'),
	(435, 166, 100, NULL, NULL, NULL, 1, 1, 1, 222, 0, 0, 0, 222, '2022-12-25 21:22:04', '2022-12-25 21:22:04'),
	(436, 167, 103, NULL, NULL, NULL, 6, 6, 1, 6000000, 0, 0, 0, 36000000, '2022-12-26 18:29:35', '2022-12-26 18:29:35'),
	(450, 169, 103, NULL, NULL, NULL, 1, 1, 1, 6000000, 0, 0, 0, 6000000, '2022-12-27 21:19:32', '2022-12-27 21:19:32'),
	(451, 169, 1, NULL, NULL, NULL, 2, 2, 1, 290.91, 0, 10, 58.18, 640, '2022-12-27 21:19:32', '2022-12-27 21:19:32'),
	(452, 169, 2, NULL, NULL, NULL, 6, 0, 3, 24000, 0, 0, 0, 144000, '2022-12-27 21:19:32', '2022-12-27 21:19:32'),
	(456, 171, 103, NULL, NULL, NULL, 4, 4, 1, 6000000, 0, 0, 0, 24000000, '2022-12-28 22:37:33', '2022-12-28 22:37:33'),
	(457, 170, 103, NULL, NULL, NULL, 3, 3, 1, 6000000, 0, 0, 0, 18000000, '2023-01-03 21:20:55', '2023-01-03 21:20:55');
/*!40000 ALTER TABLE `product_purchases` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_quotation
CREATE TABLE IF NOT EXISTS `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_quotation: ~22 rows (approximately)
/*!40000 ALTER TABLE `product_quotation` DISABLE KEYS */;
INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(2, 1, 1, NULL, NULL, 1, 2, 5030, 10, 15, 754.5, 5784.5, '2018-08-09 06:52:50', '2018-08-28 07:09:57'),
	(3, 1, 4, NULL, NULL, 50, 1, 1.5, 25, 10, 7.5, 82.5, '2018-08-09 06:53:25', '2018-08-28 07:34:36'),
	(4, 1, 2, NULL, NULL, 6, 1, 9.55, 0, 10, 5.73, 63, '2018-08-28 08:03:48', '2018-08-28 08:07:07'),
	(5, 2, 10, NULL, NULL, 2.5, 7, 22, 0, 0, 0, 55, '2018-09-04 05:02:58', '2018-09-20 17:37:41'),
	(6, 2, 13, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-09-04 05:02:58', '2018-09-04 05:02:58'),
	(7, 3, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-23 07:12:49', '2019-12-21 13:41:37'),
	(19, 3, 48, NULL, 2, 1, 1, 13, 0, 0, 0, 13, '2019-12-07 15:50:02', '2019-12-21 13:41:37'),
	(27, 11, 61, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-10-24 10:08:14', '2020-10-24 10:28:35'),
	(28, 12, 3, NULL, NULL, 10, 1, 250, 0, 0, 0, 2500, '2020-12-10 06:34:01', '2020-12-10 06:34:01'),
	(29, 12, 22, NULL, NULL, 5, 1, 1200, 0, 10, 600, 6600, '2020-12-10 06:34:01', '2020-12-10 06:34:01'),
	(30, 13, 2, NULL, NULL, 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-12 13:58:03', '2021-01-12 13:59:15'),
	(32, 13, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-01-12 13:58:03', '2021-01-12 13:59:15'),
	(33, 13, 22, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-01-12 13:59:15', '2021-01-12 13:59:15'),
	(37, 15, 71, 1, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-29 11:53:56', '2021-05-30 15:04:07'),
	(38, 15, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-05-29 11:53:56', '2021-05-30 15:04:07'),
	(39, 16, 5, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-02-19 13:20:55', '2022-02-19 13:20:55'),
	(40, 17, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-19 13:41:03', '2022-02-19 13:41:03'),
	(41, 18, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-19 13:46:38', '2022-02-19 13:46:38'),
	(42, 19, 75, NULL, NULL, 1, 0, 197, 0, 0, 0, 197, '2022-03-08 17:05:21', '2022-03-13 12:38:58'),
	(43, 19, 5, NULL, NULL, 1, 1, 121, 0, 0, 0, 121, '2022-03-08 17:05:21', '2022-03-13 12:38:58'),
	(44, 19, 3, NULL, NULL, 1, 1, 248, 0, 0, 0, 248, '2022-03-08 17:06:04', '2022-03-13 12:38:58'),
	(48, 21, 2, NULL, NULL, 1, 2, 144000, 0, 0, 0, 144000, '2022-12-26 18:02:44', '2022-12-26 18:02:44');
/*!40000 ALTER TABLE `product_quotation` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_returns
CREATE TABLE IF NOT EXISTS `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_returns: ~13 rows (approximately)
/*!40000 ALTER TABLE `product_returns` DISABLE KEYS */;
INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(3, 2, 4, NULL, NULL, NULL, 20, 1, 2, 0, 0, 0, 40, NULL, NULL),
	(4, 3, 10, NULL, NULL, NULL, 2, 7, 22, 0, 0, 0, 44, NULL, '2018-10-07 09:19:40'),
	(6, 5, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, NULL, '2018-12-26 05:16:08'),
	(12, 6, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, NULL, NULL),
	(23, 11, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-12-24 12:20:29', '2019-12-24 12:20:29'),
	(26, 13, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2020-08-16 23:25:02', '2020-08-16 23:25:02'),
	(27, 14, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-10-13 18:39:54', '2020-10-13 18:39:54'),
	(31, 18, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2020-11-18 08:02:18', '2020-11-18 08:02:18'),
	(32, 19, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-12-10 07:40:25', '2020-12-10 07:40:25'),
	(58, 33, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-05-31 13:33:40', '2022-05-31 13:33:40'),
	(59, 34, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-05-31 13:48:17', '2022-05-31 13:48:17'),
	(61, 36, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-06-14 16:20:48', '2022-06-14 16:20:48'),
	(63, 38, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-09-04 14:19:08', '2022-09-04 14:19:08');
/*!40000 ALTER TABLE `product_returns` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_sales
CREATE TABLE IF NOT EXISTS `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_sales: ~352 rows (approximately)
/*!40000 ALTER TABLE `product_sales` DISABLE KEYS */;
INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-08-08 17:36:23', '2018-08-08 18:13:27'),
	(3, 1, 5, NULL, NULL, NULL, 2, 1, 115, 10, 0, 0, 230, '2018-08-08 18:13:28', '2018-08-08 18:13:28'),
	(4, 2, 1, NULL, NULL, NULL, 10, 1, 420, 0, 10, 420, 4620, '2018-08-09 06:54:53', '2018-08-09 06:54:53'),
	(5, 2, 4, NULL, NULL, NULL, 50, 1, 2.1, 0, 0, 0, 105, '2018-08-09 06:54:53', '2018-08-09 06:54:53'),
	(6, 2, 2, NULL, NULL, NULL, 3, 2, 109.57, 0, 15, 49.3, 378, '2018-08-09 06:54:53', '2018-08-09 06:54:53'),
	(7, 3, 4, NULL, NULL, NULL, 20, 1, 2.1, 0, 0, 0, 42, '2018-08-09 07:32:15', '2018-08-09 07:32:15'),
	(8, 3, 5, NULL, NULL, NULL, 5, 1, 126, 0, 0, 0, 630, '2018-08-09 07:32:15', '2018-08-09 07:32:15'),
	(9, 3, 3, NULL, NULL, NULL, 1, 1, 225, 0, 0, 0, 225, '2018-08-09 07:32:15', '2018-08-09 07:32:15'),
	(10, 4, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-25 04:48:37', '2018-08-25 04:48:37'),
	(12, 6, 13, NULL, NULL, NULL, 1, 0, 18.9, 0, 0, 0, 18.9, '2018-08-26 10:48:36', '2018-08-26 12:48:05'),
	(13, 7, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-27 08:35:45', '2018-08-27 08:35:45'),
	(14, 8, 5, NULL, NULL, NULL, 2, 2, 1440, 0, 10, 288, 3168, '2018-09-02 06:39:54', '2018-09-02 06:39:54'),
	(15, 9, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2018-09-03 04:33:14', '2018-09-03 04:33:14'),
	(16, 10, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-09-03 06:01:39', '2018-09-03 06:01:39'),
	(17, 11, 22, NULL, NULL, NULL, 5, 1, 1000, 0, 10, 500, 5500, '2018-09-03 11:08:21', '2018-09-03 11:08:21'),
	(18, 12, 22, NULL, NULL, NULL, 10, 1, 1050, 0, 10, 1050, 11550, '2018-09-03 11:10:33', '2018-09-03 11:10:33'),
	(46, 29, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-09-09 10:38:41', '2018-09-09 10:38:41'),
	(47, 30, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-10 05:57:06', '2018-09-20 16:12:38'),
	(48, 31, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-26 10:20:59', '2018-09-26 10:21:25'),
	(49, 31, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-09-26 10:20:59', '2018-09-26 10:21:25'),
	(50, 32, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 10:55:48', '2018-10-04 10:55:48'),
	(51, 33, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 11:00:23', '2018-10-04 11:00:23'),
	(57, 37, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-07 07:46:05', '2018-10-07 07:46:05'),
	(58, 38, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 07:47:19', '2018-10-07 07:47:19'),
	(61, 40, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 08:13:12', '2018-10-07 08:13:12'),
	(62, 41, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-10 05:16:21', '2018-10-10 05:16:21'),
	(63, 41, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-10-10 05:16:21', '2018-10-10 05:16:21'),
	(64, 42, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-10 06:34:51', '2018-10-10 06:34:51'),
	(65, 43, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-16 04:34:35', '2018-10-16 04:34:35'),
	(78, 55, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-21 07:53:34', '2018-10-21 07:53:34'),
	(80, 57, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-21 09:26:12', '2018-10-21 09:26:12'),
	(81, 57, 13, NULL, NULL, NULL, 2, 0, 21, 0, 0, 0, 42, '2018-10-21 09:26:13', '2018-10-21 09:26:13'),
	(82, 58, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-22 16:27:24', '2018-10-22 16:27:24'),
	(83, 58, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-22 16:27:24', '2018-10-22 16:27:24'),
	(101, 73, 25, NULL, NULL, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-23 08:15:43', '2018-10-23 08:15:43'),
	(102, 73, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-23 08:15:44', '2018-10-23 08:15:44'),
	(103, 74, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 08:16:44', '2018-10-23 08:16:44'),
	(104, 74, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 08:16:44', '2018-10-23 08:16:44'),
	(105, 74, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-23 08:16:44', '2018-10-23 08:16:44'),
	(106, 75, 2, NULL, NULL, NULL, 3, 2, 104.35, 0, 15, 46.96, 360, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(107, 75, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(108, 75, 25, NULL, NULL, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(109, 75, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(110, 75, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(111, 76, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-11-01 06:01:26', '2018-11-03 10:28:56'),
	(112, 76, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-01 06:01:27', '2018-11-03 10:28:56'),
	(113, 76, 13, NULL, NULL, NULL, 4, 0, 21, 0, 0, 0, 84, '2018-11-01 06:01:27', '2018-11-03 10:28:56'),
	(117, 79, 1, NULL, NULL, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(118, 79, 2, NULL, NULL, NULL, 7, 2, 104.35, 0, 15, 109.57, 840, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(119, 79, 3, NULL, NULL, NULL, 7, 1, 250, 0, 0, 0, 1750, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(120, 79, 4, NULL, NULL, NULL, 7, 1, 2, 0, 0, 0, 14, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(121, 79, 22, NULL, NULL, NULL, 8, 1, 1000, 0, 10, 800, 8800, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(122, 79, 13, NULL, NULL, NULL, 10, 0, 21, 0, 0, 0, 210, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(123, 79, 5, NULL, NULL, NULL, 9, 1, 120, 0, 0, 0, 1080, '2018-11-05 10:15:17', '2018-11-05 10:15:17'),
	(124, 80, 2, NULL, NULL, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-11-05 10:19:58', '2018-11-05 10:19:58'),
	(125, 80, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2018-11-05 10:19:58', '2018-11-05 10:19:58'),
	(126, 80, 1, NULL, NULL, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 10:19:58', '2018-11-05 10:19:58'),
	(132, 86, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 10:59:48', '2018-11-05 10:59:48'),
	(134, 88, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 11:02:58', '2018-11-05 11:02:58'),
	(142, 94, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-26 15:05:34', '2018-11-26 15:05:34'),
	(143, 95, 5, NULL, NULL, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 10:36:08', '2018-11-27 10:36:08'),
	(144, 95, 5, NULL, NULL, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 10:36:08', '2018-11-27 10:36:08'),
	(145, 96, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-28 08:15:09', '2018-11-28 08:15:09'),
	(146, 97, 2, NULL, NULL, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-12-01 07:05:18', '2018-12-01 07:05:18'),
	(147, 97, 10, NULL, NULL, NULL, 1, 7, 22, 0, 0, 0, 22, '2018-12-01 07:05:18', '2018-12-01 07:05:18'),
	(148, 98, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-05 06:35:58', '2018-12-05 06:35:58'),
	(149, 98, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-05 06:35:58', '2018-12-05 06:35:58'),
	(150, 99, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-05 06:37:19', '2018-12-05 06:37:19'),
	(151, 99, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-05 06:37:20', '2018-12-05 06:37:20'),
	(153, 101, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2018-12-08 07:20:26', '2018-12-08 07:20:26'),
	(155, 103, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-12-24 05:58:32', '2018-12-24 05:58:32'),
	(156, 104, 33, NULL, NULL, NULL, 4, 1, 2, 0, 0, 0, 8, '2018-12-24 10:15:27', '2018-12-25 04:55:23'),
	(157, 104, 26, NULL, NULL, NULL, 2, 0, 1250, 0, 0, 0, 2500, '2018-12-25 04:47:54', '2018-12-25 04:55:23'),
	(158, 105, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-01-01 06:45:38', '2019-01-01 06:45:38'),
	(159, 106, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-01 10:10:40', '2019-01-01 10:10:40'),
	(160, 106, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-01 10:10:40', '2019-01-01 10:10:40'),
	(161, 106, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-01 10:10:40', '2019-01-01 10:10:40'),
	(162, 107, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(163, 107, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(164, 107, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(165, 107, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(166, 107, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(167, 107, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-03 07:56:27', '2019-01-03 07:56:27'),
	(168, 108, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-20 16:58:24', '2019-01-20 16:58:24'),
	(169, 109, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-01-29 11:14:43', '2019-01-29 11:14:43'),
	(170, 109, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-01-29 11:14:43', '2019-01-29 11:14:43'),
	(171, 110, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2019-01-29 12:50:41', '2019-01-29 12:50:41'),
	(172, 110, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-29 12:50:41', '2019-01-29 12:50:41'),
	(173, 111, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-01-31 12:08:39', '2019-01-31 12:08:39'),
	(174, 111, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-01-31 12:08:39', '2019-01-31 12:08:39'),
	(175, 112, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-02 11:40:45', '2019-02-02 11:40:45'),
	(176, 113, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-02 12:41:17', '2019-02-02 12:41:17'),
	(177, 113, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-02 12:41:17', '2019-02-02 12:41:17'),
	(178, 114, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-05 16:04:45', '2019-02-05 16:04:45'),
	(183, 118, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 12:15:42', '2019-02-07 12:15:42'),
	(185, 120, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 12:40:37', '2019-02-07 12:40:37'),
	(186, 121, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-09 11:48:14', '2019-02-09 11:48:14'),
	(187, 121, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-02-09 11:48:14', '2019-02-09 11:48:14'),
	(188, 121, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-02-09 11:48:15', '2019-02-09 11:48:15'),
	(189, 121, 13, NULL, NULL, NULL, 2, 0, 21, 0, 0, 0, 42, '2019-02-09 11:48:15', '2019-02-09 11:48:15'),
	(190, 121, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-09 11:48:15', '2019-02-09 11:48:15'),
	(191, 121, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-02-09 11:48:15', '2019-02-09 11:48:15'),
	(192, 121, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-09 11:48:15', '2019-02-09 11:48:15'),
	(194, 123, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-19 15:32:14', '2019-02-19 15:32:14'),
	(198, 127, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-03-03 11:40:10', '2019-03-03 11:40:10'),
	(199, 127, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 11:40:10', '2019-03-03 11:40:10'),
	(200, 127, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 11:40:10', '2019-03-03 11:40:10'),
	(201, 128, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-04 10:55:55', '2019-04-04 10:55:55'),
	(202, 128, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-04-04 10:55:55', '2019-04-04 10:55:55'),
	(203, 129, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-04-04 10:59:37', '2019-04-11 11:50:16'),
	(204, 130, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-21 13:21:24', '2019-04-21 13:21:24'),
	(205, 130, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2019-04-21 13:21:24', '2019-04-21 13:21:24'),
	(206, 130, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2019-04-21 13:21:24', '2019-04-21 13:21:24'),
	(207, 131, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(208, 131, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(209, 131, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(210, 131, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(211, 132, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-06-13 11:16:37', '2019-06-13 11:16:37'),
	(212, 132, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-06-13 11:16:37', '2019-06-13 11:16:37'),
	(213, 132, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-06-13 11:16:37', '2019-06-13 11:16:37'),
	(214, 133, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-06-13 11:17:51', '2019-06-13 11:17:51'),
	(215, 133, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 11:17:52', '2019-06-13 11:17:52'),
	(216, 133, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 11:17:52', '2019-06-13 11:17:52'),
	(217, 134, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(218, 134, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(219, 134, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(220, 134, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(224, 138, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-10-31 13:29:37', '2019-10-31 13:29:37'),
	(225, 139, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-11-03 12:40:44', '2019-11-03 12:40:44'),
	(226, 139, 4, NULL, NULL, NULL, 100, 1, 2, 0, 0, 0, 200, '2019-11-03 12:40:44', '2019-11-03 12:40:44'),
	(236, 144, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-09 20:41:31', '2019-11-09 20:41:31'),
	(237, 144, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-11-09 20:41:31', '2019-11-09 20:41:31'),
	(241, 147, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 11:40:08', '2019-11-11 11:40:08'),
	(242, 147, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 11:40:08', '2019-11-11 11:40:08'),
	(243, 147, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-11-11 11:40:08', '2019-11-11 11:40:08'),
	(282, 172, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-12-03 16:46:31', '2019-12-03 16:46:31'),
	(283, 173, 3, NULL, NULL, NULL, 1, 1, 225, 0, 0, 0, 225, '2019-12-05 00:19:40', '2019-12-05 00:19:40'),
	(284, 173, 1, NULL, NULL, NULL, 1, 1, 360, 0, 10, 36, 396, '2019-12-05 00:19:40', '2019-12-05 00:19:40'),
	(306, 187, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-12-22 11:40:58', '2019-12-22 11:40:58'),
	(308, 190, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-12-23 13:59:46', '2019-12-23 13:59:46'),
	(312, 193, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-01-01 15:20:28', '2020-01-01 15:20:28'),
	(313, 194, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2020-01-02 17:39:47', '2020-01-02 17:39:47'),
	(314, 194, 2, NULL, NULL, NULL, 1, 1, 10.43, 0, 15, 1.57, 12, '2020-01-02 17:39:47', '2020-01-02 17:39:47'),
	(323, 201, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-02-03 16:52:56', '2020-02-03 16:52:56'),
	(324, 202, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-02-04 23:58:53', '2020-02-04 23:58:53'),
	(325, 202, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-02-04 23:58:53', '2020-02-04 23:58:53'),
	(326, 203, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-03-02 12:54:14', '2020-03-02 12:54:14'),
	(327, 203, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-03-02 12:54:14', '2020-03-02 12:54:14'),
	(328, 204, 4, NULL, NULL, NULL, 20, 1, 2, 0, 0, 0, 40, '2020-03-02 12:57:41', '2020-03-02 12:57:41'),
	(329, 205, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-03-11 17:46:42', '2020-03-11 17:46:42'),
	(330, 206, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-03-11 17:52:30', '2020-03-11 17:54:04'),
	(331, 207, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2020-04-06 20:40:24', '2020-04-06 20:41:11'),
	(332, 207, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-04-06 20:40:24', '2020-04-06 20:41:11'),
	(333, 207, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2020-04-06 20:41:11', '2020-04-06 20:41:11'),
	(334, 208, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-05-06 23:59:50', '2020-05-06 23:59:50'),
	(335, 208, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-05-06 23:59:50', '2020-05-06 23:59:50'),
	(336, 209, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-06-09 13:42:48', '2020-06-09 13:42:48'),
	(337, 209, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-06-09 13:42:48', '2020-06-09 13:42:48'),
	(340, 212, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-03 19:39:14', '2020-07-03 19:39:14'),
	(341, 212, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 19:39:14', '2020-07-03 19:39:14'),
	(342, 212, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 19:39:14', '2020-07-03 19:39:14'),
	(343, 213, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2020-07-12 22:51:53', '2020-07-12 22:51:53'),
	(347, 217, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 21:38:08', '2020-07-27 21:38:08'),
	(348, 218, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 21:40:24', '2020-07-27 21:40:24'),
	(349, 219, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 21:46:45', '2020-07-27 21:46:45'),
	(350, 220, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2020-08-12 19:28:04', '2020-08-12 19:28:04'),
	(351, 220, 33, NULL, NULL, NULL, 3, 1, 20, 0, 0, 0, 60, '2020-08-12 19:28:04', '2020-08-12 19:28:04'),
	(352, 220, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-08-12 19:28:04', '2020-08-12 19:28:04'),
	(353, 221, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-08-12 19:30:35', '2020-08-12 19:30:35'),
	(354, 222, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-08-16 23:04:24', '2020-08-16 23:04:24'),
	(355, 223, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-08-16 23:05:23', '2020-08-16 23:05:23'),
	(356, 224, 1, NULL, NULL, NULL, 3, 1, 390, 30, 10, 117, 1287, '2020-08-26 21:01:39', '2020-08-26 21:01:39'),
	(362, 230, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-17 22:28:52', '2020-10-17 22:28:52'),
	(363, 231, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-10-18 12:13:33', '2020-10-18 12:13:33'),
	(364, 232, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-10-22 14:30:14', '2020-10-22 14:30:14'),
	(365, 233, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-22 14:56:04', '2020-10-22 14:56:04'),
	(366, 234, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2020-10-24 08:05:06', '2020-10-24 08:05:06'),
	(367, 235, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-24 08:07:52', '2020-10-24 08:07:52'),
	(369, 237, 25, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 16:46:01', '2020-10-24 16:46:01'),
	(370, 237, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 16:46:01', '2020-10-24 16:46:01'),
	(371, 237, 61, NULL, NULL, NULL, 5, 1, 10000, 0, 15, 7500, 57500, '2020-10-24 16:46:01', '2020-10-24 16:46:01'),
	(373, 239, 60, NULL, 9, NULL, 1, 1, 2, 0, 0, 0, 2, '2020-10-27 06:40:02', '2020-10-27 06:40:02'),
	(374, 240, 60, NULL, 9, NULL, 2, 1, 3, 0, 0, 0, 6, '2020-10-27 06:42:06', '2020-10-27 06:42:06'),
	(375, 241, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-27 07:32:00', '2020-10-27 07:32:00'),
	(376, 242, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-29 08:30:30', '2020-10-29 08:30:30'),
	(377, 243, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-01 08:21:12', '2020-11-01 08:21:12'),
	(380, 245, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2020-11-01 08:42:23', '2020-11-01 08:42:23'),
	(381, 245, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-01 08:42:23', '2020-11-01 08:42:23'),
	(382, 246, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-11-01 08:50:18', '2020-11-02 17:39:17'),
	(386, 250, 1, NULL, NULL, NULL, 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-06 14:30:41', '2020-11-06 14:30:41'),
	(387, 251, 1, NULL, NULL, NULL, 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-09 14:15:24', '2020-11-09 14:15:24'),
	(388, 251, 3, NULL, NULL, NULL, 1, 1, 232.2, 0, 0, 0, 232.2, '2020-11-09 14:15:24', '2020-11-09 14:15:24'),
	(389, 252, 3, NULL, NULL, NULL, 1, 1, 229.5, 0, 0, 0, 229.5, '2020-11-11 06:58:58', '2020-11-11 06:58:58'),
	(390, 253, 3, NULL, NULL, NULL, 1, 1, 212.5, 0, 0, 0, 212.5, '2020-11-14 07:47:36', '2020-11-14 07:47:36'),
	(391, 253, 31, NULL, NULL, NULL, 1, 1, 255, 0, 0, 0, 255, '2020-11-14 07:47:36', '2020-11-14 07:47:36'),
	(392, 253, 61, NULL, NULL, NULL, 1, 1, 8500, 0, 15, 1275, 9775, '2020-11-14 07:47:36', '2020-11-14 07:47:36'),
	(395, 256, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-11-17 07:47:48', '2020-11-17 07:47:48'),
	(396, 256, 3, NULL, NULL, NULL, 1, 1, 250, 0, 10, 25, 275, '2020-11-17 07:47:48', '2020-11-17 07:47:48'),
	(397, 257, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-17 08:09:19', '2020-11-17 08:09:19'),
	(398, 258, 61, NULL, NULL, NULL, 3, 1, 10000, 0, 15, 4500, 34500, '2020-11-18 07:52:39', '2020-11-18 07:52:39'),
	(402, 262, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-11-29 06:21:30', '2020-11-29 06:21:30'),
	(403, 263, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-12-08 10:39:57', '2020-12-08 10:39:57'),
	(416, 270, 2, NULL, NULL, NULL, 1, 3, 250.43, 0, 15, 37.57, 288, '2021-01-11 14:45:35', '2021-01-11 14:58:44'),
	(419, 270, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-01-11 14:54:04', '2021-01-11 14:58:44'),
	(420, 271, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-01-11 15:16:25', '2021-01-11 15:16:25'),
	(421, 271, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-01-11 15:16:25', '2021-01-11 15:16:25'),
	(422, 271, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2021-01-11 15:16:25', '2021-01-11 15:16:25'),
	(429, 274, 2, NULL, NULL, NULL, 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(430, 274, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(431, 274, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(432, 274, 1, NULL, NULL, NULL, 2, 1, 380, 40, 10, 76, 836, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(433, 275, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-01 15:37:48', '2021-02-01 15:37:48'),
	(437, 277, 32, NULL, NULL, NULL, 1, 1, 10, 0, 0, 0, 10, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(438, 277, 48, NULL, 5, NULL, 1, 1, 53, 0, 0, 0, 53, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(439, 277, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(440, 277, 48, NULL, 3, NULL, 1, 1, 3, 0, 0, 0, 3, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(441, 277, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(442, 277, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(443, 277, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(444, 277, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(445, 277, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(446, 277, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(447, 277, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(448, 277, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(449, 277, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(450, 277, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(451, 277, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(452, 278, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(453, 278, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(454, 278, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(455, 278, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(456, 278, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(457, 279, 71, 1, NULL, NULL, 2, 1, 2, 0, 0, 0, 4, '2021-03-11 14:40:34', '2021-03-11 14:40:34'),
	(458, 280, 71, 2, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-03-17 05:14:11', '2021-03-17 05:14:11'),
	(459, 282, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-03-18 06:47:29', '2021-03-20 11:59:57'),
	(468, 288, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-04-12 14:40:46', '2021-04-12 14:40:46'),
	(473, 290, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 20:45:58', '2021-05-24 20:45:58'),
	(478, 294, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-01 13:35:30', '2021-06-01 13:35:30'),
	(479, 295, 71, 3, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 16:22:09', '2021-06-01 16:22:09'),
	(480, 296, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 16:46:24', '2021-06-01 16:46:24'),
	(481, 297, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-01 20:41:50', '2021-06-01 20:41:50'),
	(482, 298, 71, 3, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 20:55:47', '2021-06-01 20:55:47'),
	(483, 299, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 11:53:25', '2021-06-16 11:53:25'),
	(484, 300, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 12:10:33', '2021-06-16 12:10:33'),
	(485, 301, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 12:11:11', '2021-06-16 12:11:11'),
	(486, 301, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 12:11:11', '2021-06-16 12:11:11'),
	(487, 302, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 21:04:52', '2021-06-16 21:04:52'),
	(488, 303, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 21:05:43', '2021-06-16 21:05:43'),
	(489, 304, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 21:06:34', '2021-06-16 21:06:34'),
	(490, 305, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 21:28:42', '2021-06-16 21:28:42'),
	(491, 306, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-17 12:55:53', '2021-06-17 12:55:53'),
	(492, 307, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2021-06-17 13:23:49', '2021-06-17 15:59:33'),
	(493, 308, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2021-06-18 21:31:27', '2021-06-18 21:31:27'),
	(494, 308, 1, NULL, NULL, NULL, 3, 1, 400, 0, 10, 120, 1320, '2021-06-18 21:31:27', '2021-06-18 21:31:27'),
	(495, 309, 71, 2, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-18 21:32:54', '2021-06-18 21:32:54'),
	(496, 310, 71, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(497, 310, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(498, 310, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(499, 310, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(500, 310, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(501, 310, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(502, 311, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 11:53:44', '2021-06-19 11:53:44'),
	(503, 312, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 12:02:31', '2021-06-19 12:02:31'),
	(504, 313, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-19 12:06:28', '2021-06-19 12:06:28'),
	(505, 314, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-27 13:42:47', '2021-06-27 13:42:47'),
	(508, 317, 74, NULL, NULL, NULL, 1, 0, 18, 0, 0, 0, 18, '2021-07-07 11:34:55', '2021-07-07 11:34:55'),
	(536, 325, 26, NULL, NULL, NULL, 2, 0, 1200, 0, 0, 0, 2400, '2021-08-14 22:28:05', '2021-08-14 22:34:27'),
	(547, 333, 71, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-09-21 14:07:22', '2021-09-21 14:07:22'),
	(548, 334, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-09-21 16:50:20', '2021-09-21 16:50:20'),
	(549, 335, 10, NULL, NULL, NULL, 0.5, 7, 22, 0, 0, 0, 11, '2021-09-23 15:47:04', '2021-09-23 15:47:04'),
	(550, 336, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-10-03 18:18:29', '2021-10-03 18:18:29'),
	(551, 336, 22, NULL, NULL, '1103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 18:18:29', '2021-10-03 18:18:29'),
	(553, 338, 22, NULL, NULL, '11103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 18:44:04', '2021-10-03 18:44:04'),
	(555, 340, 22, NULL, NULL, '11104', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 15:52:29', '2021-10-07 15:52:29'),
	(556, 341, 22, NULL, NULL, '91101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 16:38:40', '2021-10-07 16:38:40'),
	(557, 342, 25, NULL, NULL, '99901,99902', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 13:12:42', '2021-10-09 17:22:39'),
	(558, 342, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-10-09 17:22:39', '2021-10-09 17:22:39'),
	(559, 343, 22, NULL, NULL, '1105,91102', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 17:32:32', '2021-10-09 17:32:32'),
	(564, 348, 22, NULL, NULL, '11101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-14 16:58:20', '2021-10-14 16:58:20'),
	(565, 349, 5, NULL, NULL, NULL, 1, 1, 102, 0, 0, 0, 102, '2021-10-20 14:12:09', '2021-10-20 14:12:09'),
	(568, 353, 1, NULL, NULL, NULL, 1, 1, 340, 0, 10, 34, 374, '2021-11-14 14:39:29', '2021-11-14 14:39:29'),
	(569, 354, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-15 13:03:09', '2021-11-15 13:03:09'),
	(570, 354, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-11-15 13:03:09', '2021-11-15 13:03:09'),
	(571, 354, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-11-15 13:03:09', '2021-11-15 13:03:09'),
	(572, 355, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(573, 355, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(574, 355, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(575, 355, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(576, 355, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-11-24 19:28:58', '2021-11-24 19:28:58'),
	(577, 356, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2021-12-07 20:09:32', '2021-12-07 20:09:32'),
	(578, 356, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-12-07 20:09:32', '2021-12-07 20:09:32'),
	(579, 356, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-12-07 20:09:32', '2021-12-07 20:09:32'),
	(584, 360, 2, NULL, NULL, NULL, 2, 1, 10.43, 0, 15, 3.13, 24, '2021-12-22 20:03:13', '2022-01-30 14:37:54'),
	(587, 362, 72, NULL, NULL, NULL, 2, 1, 4.25, 0, 0, 0, 8.5, '2022-02-03 16:59:31', '2022-02-03 16:59:31'),
	(588, 363, 5, NULL, NULL, NULL, 2, 1, 118, 0, 0, 0, 236, '2022-02-03 20:05:47', '2022-05-22 17:39:48'),
	(589, 363, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-02-03 20:05:47', '2022-05-22 17:39:48'),
	(590, 364, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-05 18:45:26', '2022-02-05 20:31:58'),
	(591, 365, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-02-05 18:46:16', '2022-02-05 20:31:09'),
	(598, 372, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-02-19 13:08:15', '2022-02-20 22:15:54'),
	(603, 376, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-20 21:36:38', '2022-02-20 22:15:23'),
	(604, 377, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2022-02-27 12:59:05', '2022-03-05 13:16:22'),
	(608, 377, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-03-05 13:12:38', '2022-03-05 13:16:22'),
	(609, 363, 13, NULL, NULL, NULL, 1, 0, 15, 0, 0, 0, 15, '2022-03-08 15:25:13', '2022-05-22 17:39:48'),
	(610, 363, 75, NULL, NULL, NULL, 1, 0, 20, 0, 0, 0, 20, '2022-03-08 15:25:13', '2022-05-22 17:39:48'),
	(611, 379, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-03-09 12:59:01', '2022-03-09 12:59:01'),
	(612, 379, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-03-09 12:59:01', '2022-03-09 12:59:01'),
	(613, 379, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-03-09 12:59:01', '2022-03-09 12:59:01'),
	(614, 380, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-03-12 21:20:27', '2022-03-13 12:37:35'),
	(615, 381, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-03-12 21:24:52', '2022-03-12 21:25:35'),
	(616, 381, 5, NULL, NULL, NULL, 1, 1, 110, 0, 0, 0, 110, '2022-03-12 21:25:35', '2022-03-12 21:25:35'),
	(617, 382, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-04-24 12:01:44', '2022-04-24 12:01:44'),
	(618, 382, 72, NULL, NULL, NULL, 1, 1, 5, 0, 0, 0, 5, '2022-04-24 12:01:44', '2022-04-24 12:01:44'),
	(619, 382, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-04-24 12:01:44', '2022-04-24 12:01:44'),
	(620, 383, 25, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2022-05-16 12:24:27', '2022-05-16 12:24:27'),
	(621, 383, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-05-16 12:24:27', '2022-05-16 12:24:27'),
	(623, 385, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-05-26 22:01:12', '2022-05-26 22:01:12'),
	(624, 385, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-05-26 22:01:12', '2022-05-26 22:01:12'),
	(625, 386, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2022-05-31 13:20:26', '2022-06-06 18:11:27'),
	(644, 397, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-06-06 18:14:13', '2022-06-06 18:14:13'),
	(645, 397, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-06-06 18:14:13', '2022-06-06 18:14:13'),
	(646, 397, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-06-06 18:14:13', '2022-06-06 18:14:13'),
	(649, 400, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-06-14 12:57:19', '2022-06-14 12:57:19'),
	(650, 400, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2022-06-14 12:57:19', '2022-06-14 12:57:19'),
	(653, 403, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-06-14 18:01:44', '2022-06-14 18:01:44'),
	(654, 404, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2022-06-15 11:23:30', '2022-06-15 11:23:30'),
	(665, 409, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-08-09 12:54:44', '2022-08-09 12:54:44'),
	(666, 409, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-08-09 12:54:44', '2022-08-09 12:54:44'),
	(667, 409, 87, NULL, 30, NULL, 1, 1, 31, 0, 0, 0, 31, '2022-08-09 12:54:44', '2022-08-09 12:54:44'),
	(668, 410, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-08-25 14:31:37', '2022-08-25 14:31:37'),
	(669, 411, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-09-01 13:36:19', '2022-09-01 13:36:19'),
	(670, 411, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-09-01 13:36:19', '2022-09-01 13:36:19'),
	(671, 412, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-09-04 14:17:55', '2022-09-04 14:17:55'),
	(672, 412, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-09-04 14:17:55', '2022-09-04 14:17:55'),
	(673, 413, 90, NULL, 35, NULL, 1, 1, 1100, 0, 10, 110, 1210, '2022-09-11 14:18:26', '2022-09-11 14:18:26'),
	(674, 414, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-09-15 21:59:00', '2022-09-15 21:59:00'),
	(675, 415, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-10-02 21:16:36', '2022-10-02 21:16:36'),
	(676, 415, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-10-02 21:16:36', '2022-10-02 21:16:36'),
	(677, 416, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-10-18 15:10:13', '2022-10-18 15:10:13'),
	(682, 421, 26, NULL, NULL, NULL, 1, 0, 1250, 0, 0, 0, 1250, '2022-11-24 18:57:16', '2022-11-24 18:57:16'),
	(683, 422, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2022-11-24 19:26:01', '2022-11-24 19:26:01'),
	(684, 423, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-11-24 19:26:53', '2022-11-24 19:26:53'),
	(685, 424, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-12-11 15:53:25', '2022-12-11 15:53:25'),
	(686, 424, 10, NULL, NULL, NULL, 1, 7, 22, 0, 0, 0, 22, '2022-12-11 15:53:25', '2022-12-11 15:53:25'),
	(687, 424, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2022-12-11 15:53:25', '2022-12-11 15:53:25'),
	(688, 425, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2022-12-24 00:15:41', '2022-12-24 00:15:41'),
	(691, 428, 2, NULL, NULL, NULL, 1, 2, 144000, 0, 0, 0, 144000, '2022-12-27 21:36:46', '2022-12-27 21:36:46'),
	(692, 429, 103, NULL, NULL, NULL, 1, 1, 7500000, 0, 0, 0, 7500000, '2022-12-27 21:37:57', '2022-12-27 21:37:57'),
	(693, 430, 103, NULL, NULL, NULL, 1, 1, 7500000, 0, 0, 0, 7500000, '2022-12-27 21:39:18', '2022-12-27 21:39:18'),
	(694, 431, 103, NULL, NULL, NULL, 1, 1, 7500000, 0, 0, 0, 7500000, '2022-12-27 21:51:02', '2022-12-27 21:51:02'),
	(695, 431, 103, NULL, NULL, NULL, 1, 1, 7500000, 0, 0, 0, 7500000, '2022-12-27 21:51:02', '2022-12-27 21:51:02'),
	(696, 432, 103, NULL, NULL, NULL, 1, 1, 7500000, 0, 0, 0, 7500000, '2022-12-27 21:56:18', '2022-12-27 21:56:18'),
	(697, 433, 2, NULL, NULL, NULL, 1, 2, 144000, 0, 0, 0, 144000, '2022-12-27 22:42:54', '2022-12-27 22:42:54');
/*!40000 ALTER TABLE `product_sales` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_transfer
CREATE TABLE IF NOT EXISTS `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_transfer: ~7 rows (approximately)
/*!40000 ALTER TABLE `product_transfer` DISABLE KEYS */;
INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, NULL, NULL, NULL, 100, 1, 1, 0, 0, 100, '2018-08-08 18:17:10', '2018-12-25 05:16:55'),
	(7, 6, 48, NULL, 3, NULL, 1, 1, 2, 0, 0, 2, '2019-12-05 20:55:04', '2019-12-05 21:09:42'),
	(11, 8, 5, NULL, NULL, NULL, 10, 1, 100, 0, 0, 1000, '2020-01-22 13:30:59', '2020-01-22 13:30:59'),
	(13, 10, 1, NULL, NULL, NULL, 1, 1, 320, 10, 32, 352, '2020-10-08 14:27:35', '2020-10-08 14:29:35'),
	(14, 11, 62, NULL, 12, NULL, 1, 1, 1, 0, 0, 1, '2020-10-18 19:17:08', '2020-10-18 19:17:08'),
	(15, 12, 61, NULL, NULL, NULL, 10, 1, 3000, 15, 4500, 34500, '2020-10-24 10:01:46', '2020-10-24 10:01:46'),
	(32, 21, 5, NULL, NULL, NULL, 6, 1, 100, 0, 0, 600, '2022-03-09 12:44:11', '2022-06-05 13:37:31');
/*!40000 ALTER TABLE `product_transfer` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_variants
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_variants: ~22 rows (approximately)
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_cost`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
	(3, 48, 3, 1, 'S-93475396', NULL, NULL, 12, '2019-11-21 14:03:04', '2021-07-15 19:25:45'),
	(5, 48, 5, 3, 'L-93475396', 10, 50, 12, '2019-11-24 13:07:20', '2022-08-08 22:34:26'),
	(6, 48, 2, 2, 'M-93475396', 5, 10, 13, '2019-11-24 14:17:07', '2022-08-08 22:13:57'),
	(10, 60, 9, 1, 'a-32081679', NULL, NULL, 1, '2020-05-18 23:44:14', '2020-10-27 06:42:06'),
	(11, 60, 11, 2, 'b-32081679', NULL, NULL, 0, '2020-05-18 23:58:31', '2020-05-18 23:58:31'),
	(12, 62, 12, 1, 'variant 1-81145830', NULL, NULL, 3, '2020-09-27 13:08:27', '2021-02-11 08:28:16'),
	(13, 62, 13, 2, 'variant 2-81145830', NULL, NULL, 0, '2020-09-27 13:08:27', '2020-09-27 13:08:27'),
	(26, 87, 18, 1, 's/red-82490498', NULL, NULL, 0, '2022-08-03 12:25:19', '2022-08-03 12:25:19'),
	(27, 87, 24, 2, 's/blue-82490498', NULL, NULL, 0, '2022-08-03 12:25:19', '2022-08-03 12:25:19'),
	(28, 87, 20, 4, 'm/red-82490498', NULL, NULL, 0, '2022-08-03 12:25:19', '2022-08-06 12:54:37'),
	(29, 87, 25, 5, 'm/blue-82490498', NULL, NULL, 0, '2022-08-03 12:25:20', '2022-08-06 12:54:37'),
	(30, 87, 22, 7, 'l/red-82490498', 2, 5, 1, '2022-08-03 12:25:20', '2022-08-08 22:13:57'),
	(31, 87, 26, 8, 'l/blue-82490498', 2, 5, 0, '2022-08-03 12:25:20', '2022-08-06 12:54:37'),
	(32, 87, 27, 3, 's/green-82490498', NULL, NULL, 0, '2022-08-06 12:54:37', '2022-08-06 12:54:37'),
	(33, 87, 28, 6, 'm/green-82490498', NULL, NULL, 0, '2022-08-06 12:54:37', '2022-08-06 12:54:37'),
	(34, 87, 29, 9, 'l/green-82490498', 2, 5, 0, '2022-08-06 12:54:37', '2022-08-08 20:58:47'),
	(38, 87, 30, 10, 'xl/red-82490498', 3, 6, 0, '2022-08-08 21:05:58', '2022-08-09 12:54:44'),
	(39, 87, 31, 11, 'xl/blue-82490498', 3, 6, 0, '2022-08-08 21:05:58', '2022-08-08 21:05:58'),
	(40, 87, 32, 12, 'xl/green-82490498', 3, 6, 0, '2022-08-08 21:05:58', '2022-08-08 21:05:58'),
	(43, 90, 33, 1, 'red-17628500', NULL, NULL, 10, '2022-09-11 13:56:55', '2022-09-11 14:04:41'),
	(44, 90, 34, 2, 'black-17628500', NULL, NULL, 10, '2022-09-11 13:56:55', '2022-09-11 14:04:41'),
	(45, 90, 35, 3, 'blue-17628500', 50, 100, 9, '2022-09-11 13:56:55', '2022-09-11 14:18:26');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;

-- Dumping structure for table warungkms.product_warehouse
CREATE TABLE IF NOT EXISTS `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.product_warehouse: ~52 rows (approximately)
/*!40000 ALTER TABLE `product_warehouse` DISABLE KEYS */;
INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
	(10, '1', NULL, NULL, NULL, 1, 148, NULL, '2018-08-08 15:30:12', '2022-12-27 21:19:32'),
	(11, '2', NULL, NULL, NULL, 1, 1394, NULL, '2018-08-08 15:30:12', '2022-12-27 22:42:54'),
	(12, '3', NULL, NULL, NULL, 1, 102, NULL, '2018-08-08 15:30:13', '2022-12-25 09:35:02'),
	(13, '5', NULL, NULL, NULL, 1, 72, NULL, '2018-08-08 15:30:13', '2022-10-12 13:55:57'),
	(14, '4', NULL, NULL, NULL, 1, 171, NULL, '2018-08-08 16:16:09', '2020-03-02 12:56:03'),
	(15, '4', NULL, NULL, NULL, 2, 119, NULL, '2018-08-08 18:16:15', '2021-07-15 19:25:45'),
	(16, '2', NULL, NULL, NULL, 2, 1785, NULL, '2018-08-08 18:26:49', '2022-12-11 15:53:25'),
	(17, '1', NULL, NULL, NULL, 2, 40, NULL, '2018-08-08 18:33:33', '2022-11-24 17:33:31'),
	(18, '3', NULL, NULL, NULL, 2, 41, NULL, '2018-08-09 06:47:23', '2022-11-24 18:57:16'),
	(19, '5', NULL, NULL, NULL, 2, 53, NULL, '2018-08-09 06:48:36', '2022-12-11 15:53:25'),
	(20, '10', NULL, NULL, NULL, 1, 50, NULL, '2018-08-09 06:49:29', '2019-12-04 12:49:14'),
	(21, '10', NULL, NULL, NULL, 2, 59.5, NULL, '2018-08-09 06:49:55', '2022-12-11 15:53:25'),
	(22, '22', NULL, NULL, '11101,11102,11103,,7001', 1, 29, NULL, '2018-09-03 11:06:09', '2022-06-01 11:54:30'),
	(23, '22', NULL, NULL, '7001', 2, 9, NULL, '2018-09-03 11:07:14', '2022-06-14 16:20:48'),
	(24, '24', NULL, NULL, NULL, 2, 0, NULL, '2018-09-16 04:49:30', '2018-09-16 04:50:49'),
	(25, '25', NULL, NULL, NULL, 1, 25, NULL, '2018-10-23 08:14:21', '2022-05-31 13:33:40'),
	(26, '25', NULL, NULL, '', 2, 20, NULL, '2018-10-23 08:14:41', '2022-11-24 18:57:16'),
	(27, '31', NULL, NULL, NULL, 1, 14, NULL, '2018-12-05 06:34:30', '2021-01-10 08:04:28'),
	(28, '30', NULL, NULL, NULL, 1, 14, NULL, '2018-12-05 06:34:30', '2020-10-22 14:30:14'),
	(29, '31', NULL, NULL, NULL, 2, 10, NULL, '2018-12-05 06:35:08', '2022-06-15 11:23:30'),
	(30, '30', NULL, NULL, NULL, 2, 10, NULL, '2018-12-05 06:35:08', '2021-07-15 19:25:45'),
	(31, '32', NULL, NULL, NULL, 1, 10, NULL, '2018-12-19 06:57:16', '2019-02-09 11:45:23'),
	(32, '32', NULL, NULL, NULL, 2, 19, NULL, '2018-12-19 06:57:41', '2021-07-15 19:25:45'),
	(33, '33', NULL, NULL, NULL, 1, 16, NULL, '2018-12-24 07:38:40', '2019-03-03 11:39:17'),
	(34, '33', NULL, NULL, NULL, 2, 22, NULL, '2019-02-09 11:21:38', '2021-07-15 19:25:45'),
	(35, '48', NULL, 3, NULL, 1, 2, NULL, '2019-11-25 21:23:02', '2021-02-11 08:26:56'),
	(36, '48', NULL, 2, NULL, 1, 5, NULL, '2019-11-26 13:47:42', '2022-08-08 22:13:57'),
	(37, '48', NULL, 3, NULL, 2, 9, NULL, '2019-11-26 15:12:08', '2021-07-15 19:25:45'),
	(38, '48', NULL, 2, NULL, 2, 8, NULL, '2019-11-26 15:12:08', '2021-12-07 20:09:32'),
	(39, '48', NULL, 5, NULL, 1, 3, NULL, '2019-12-21 17:18:51', '2022-08-08 22:34:26'),
	(40, '48', NULL, 5, NULL, 2, 9, NULL, '2019-12-22 15:36:39', '2021-07-15 19:25:45'),
	(45, '61', NULL, NULL, NULL, 2, 8, NULL, '2020-08-16 23:02:07', '2021-07-15 19:25:45'),
	(46, '62', NULL, 12, NULL, 1, 2, NULL, '2020-09-27 13:55:33', '2020-11-16 16:01:45'),
	(47, '62', NULL, 12, NULL, 2, 1, NULL, '2020-10-18 19:17:08', '2021-02-11 08:28:16'),
	(48, '61', NULL, NULL, NULL, 1, 8, NULL, '2020-10-24 10:01:46', '2020-11-29 06:21:30'),
	(49, '60', NULL, 9, NULL, 1, 1, NULL, '2020-10-26 17:34:05', '2020-10-27 06:42:06'),
	(51, '71', 1, NULL, NULL, 1, 18, NULL, '2021-03-07 15:14:05', '2022-05-14 15:50:17'),
	(52, '71', 1, NULL, NULL, 2, 4, NULL, '2021-03-07 15:21:16', '2022-03-05 13:16:22'),
	(53, '71', 2, NULL, NULL, 1, 3, NULL, '2021-03-07 15:55:06', '2021-06-18 21:32:54'),
	(54, '71', 3, NULL, NULL, 1, 2, NULL, '2021-03-09 16:42:13', '2021-09-21 16:49:37'),
	(55, '71', 2, NULL, NULL, 2, 0, NULL, '2021-05-23 14:09:03', '2021-05-26 14:38:06'),
	(56, '72', NULL, NULL, NULL, 1, 5, NULL, '2021-07-06 14:10:42', '2021-07-06 14:10:42'),
	(57, '72', NULL, NULL, NULL, 2, 21, NULL, '2021-07-06 14:11:07', '2022-04-24 12:01:44'),
	(58, '22', 4, NULL, NULL, 1, 1, NULL, '2021-10-20 14:47:09', '2021-10-20 14:47:09'),
	(59, '79', NULL, NULL, NULL, 2, 12, NULL, '2022-06-01 13:41:19', '2022-06-06 18:13:37'),
	(67, '87', NULL, 30, NULL, 1, 0, NULL, '2022-08-08 22:13:57', '2022-08-09 12:54:44'),
	(68, '87', NULL, 22, NULL, 1, 1, NULL, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(69, '90', NULL, 35, NULL, 1, 9, NULL, '2022-09-11 14:04:41', '2022-09-11 14:18:26'),
	(70, '90', NULL, 34, NULL, 1, 10, NULL, '2022-09-11 14:04:41', '2022-09-11 14:04:41'),
	(71, '90', NULL, 33, NULL, 1, 10, NULL, '2022-09-11 14:04:41', '2022-09-11 14:04:41'),
	(72, '100', NULL, NULL, NULL, 1, 1, NULL, '2022-12-25 21:22:04', '2022-12-25 21:22:04'),
	(73, '103', NULL, NULL, NULL, 1, 7, NULL, '2022-12-26 18:29:35', '2023-01-03 21:20:55');
/*!40000 ALTER TABLE `product_warehouse` ENABLE KEYS */;

-- Dumping structure for table warungkms.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.purchases: ~95 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
	(12, 'pr-20180808-051614', 1, 2, 3, 2, 300, 0, 0, 10200, 0, 0, 0, 0, 10200, 0, 1, 1, NULL, NULL, '2018-08-08 18:16:14', '2018-09-22 09:53:24'),
	(13, 'pr-20180809-054723', 1, 2, 3, 4, 410, 0, 7304.35, 92600, 10, 9260, 0, 500, 102360, 300, 1, 1, NULL, NULL, '2018-08-09 06:47:23', '2018-08-30 10:07:18'),
	(14, 'pr-20180809-012348', 1, 1, 1, 5, 400, 0, 4452.17, 75300, 10, 7480, 500, 1000, 83280, 83280, 1, 2, NULL, NULL, '2018-08-09 14:23:48', '2022-12-27 21:09:49'),
	(15, 'pr-20180903-100609', 1, 1, 1, 1, 20, 0, 1600, 17600, 0, 0, 0, 100, 17700, 0, 1, 1, NULL, NULL, '2018-09-03 11:06:09', '2018-10-08 05:11:24'),
	(16, 'pr-20180903-100714', 1, 2, 3, 1, 20, 0, 1600, 17600, 0, 0, 0, 150, 17750, 3350, 1, 1, NULL, NULL, '2018-09-03 11:07:14', '2018-10-07 07:57:36'),
	(18, 'pr-20181022-042625', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 17:26:25', '2018-10-22 17:26:25'),
	(19, 'pr-20181022-042652', 1, 2, 3, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 17:26:52', '2018-10-22 17:26:52'),
	(20, 'pr-20181023-071420', 11, 1, 1, 1, 15, 0, 750, 8250, 0, 0, NULL, NULL, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 08:14:20', '2018-10-23 08:14:20'),
	(21, 'pr-20181023-071441', 11, 2, 3, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 08:14:41', '2018-10-23 08:14:58'),
	(22, 'pr-20181101-045903', 1, 1, 1, 1, 5, 0, 400, 4400, 0, 0, NULL, NULL, 4400, 0, 1, 1, NULL, NULL, '2018-11-01 05:59:03', '2018-11-01 05:59:03'),
	(23, 'pr-20181101-045928', 1, 2, 3, 1, 5, 0, 400, 4400, 10, 430, 100, 0, 4730, 500, 1, 1, NULL, NULL, '2018-11-01 05:59:28', '2018-12-04 08:01:34'),
	(24, 'pr-20181105-091819', 1, 2, 1, 2, 20, 0, 1450, 15950, 0, 0, NULL, NULL, 15950, 15950, 1, 2, NULL, NULL, '2018-11-05 10:18:19', '2018-11-05 10:21:27'),
	(25, 'pr-20181205-053429', 1, 1, 1, 2, 30, 0, 0, 4500, 0, 0, 100, 50, 4450, 4450, 1, 2, NULL, NULL, '2018-12-05 06:34:29', '2018-12-05 06:34:43'),
	(26, 'pr-20181205-053508', 1, 2, 3, 2, 30, 0, 0, 4500, 0, 0, NULL, NULL, 4500, 0, 1, 1, NULL, NULL, '2018-12-05 06:35:08', '2018-12-10 07:20:52'),
	(27, 'pr-20181219-055716', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 10, 1, 2, NULL, NULL, '2018-12-19 06:57:16', '2018-12-20 07:34:39'),
	(33, 'pr-20181224-063840', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2018-12-24 07:38:40', '2018-12-24 10:04:21'),
	(34, 'pr-20190103-070123', 1, 1, 1, 2, 4, 0, 260, 2860, 0, 0, NULL, NULL, 2860, 2860, 1, 2, NULL, NULL, '2019-01-03 08:01:23', '2019-01-29 11:03:24'),
	(35, 'pr-20190129-095448', 9, 1, 1, 2, 4, 0, 0, 600, 0, 0, NULL, NULL, 600, 100, 1, 1, NULL, NULL, '2019-01-29 10:54:48', '2019-02-07 14:06:40'),
	(36, 'pr-20190129-095558', 9, 2, 1, 2, 5, 0, 0, 650, 0, 0, NULL, NULL, 650, 650, 1, 2, NULL, NULL, '2019-01-29 10:55:58', '2019-01-29 11:03:02'),
	(37, 'pr-20190209-102138', 1, 2, 1, 3, 18, 0, 580, 6390, 0, 0, 0, 0, 6390, 6390, 1, 2, NULL, NULL, '2019-02-09 11:21:38', '2019-06-13 11:13:51'),
	(38, 'pr-20190209-102208', 1, 1, 1, 2, 13, 0, 150, 1660, 0, 0, 0, 0, 1660, 1660, 1, 2, NULL, NULL, '2019-02-09 11:22:08', '2019-02-09 11:49:40'),
	(39, 'pr-20190209-104413', 1, 1, 1, 2, 3, 10, 63, 885, 10, 88.5, NULL, NULL, 973.5, 973.5, 1, 2, NULL, NULL, '2019-02-09 11:44:13', '2019-02-09 11:49:59'),
	(40, 'pr-20190303-103917', 1, 1, 1, 1, 10, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2019-03-03 11:39:17', '2019-03-03 11:40:46'),
	(41, 'pr-20190303-104358', 1, 2, NULL, 2, 15, 0, 320, 3570, 0, 0, NULL, NULL, 3570, 1000, 1, 1, NULL, NULL, '2019-03-03 11:43:58', '2019-04-13 18:02:41'),
	(42, 'pr-20190404-095757', 1, 1, 3, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, NULL, NULL, '2019-04-04 10:57:57', '2019-04-13 20:50:08'),
	(43, 'pr-20190613-101600', 1, 2, 1, 2, 6, 0, 390, 4290, 0, 0, NULL, NULL, 4290, 4290, 1, 2, NULL, NULL, '2019-06-13 11:16:00', '2019-10-19 16:29:25'),
	(44, 'pr-20191019-033119', 1, 2, 3, 2, 2, 0, 130, 1430, 0, 0, NULL, NULL, 1430, 0, 1, 1, NULL, NULL, '2019-10-19 16:31:19', '2019-10-19 16:31:19'),
	(46, 'pr-20191103-113949', 1, 2, 3, 2, 20, 0, 0, 150, 0, 0, NULL, 50, 200, 200, 1, 2, NULL, NULL, '2019-11-03 12:39:49', '2019-11-03 12:42:22'),
	(47, 'pr-20191109-112510', 1, 1, NULL, 2, 3, 10, 63, 885, 0, 0, NULL, 66, 951, 0, 1, 1, NULL, NULL, '2019-11-09 12:25:10', '2019-11-09 12:25:10'),
	(48, 'pr-20191110-070221', 1, 2, NULL, 1, 100, 0, 0, 100, 0, 0, NULL, 40, 140, 0, 1, 1, NULL, NULL, '2019-11-10 20:02:21', '2019-11-10 20:02:21'),
	(49, 'pr-20191111-102155', 1, 2, 1, 1, 10, 0, 800, 8800, 0, 0, 0, 50, 8850, 7000, 1, 1, NULL, NULL, '2019-11-11 11:21:55', '2020-01-01 15:22:25'),
	(55, 'pr-20191127-102835', 1, 1, NULL, 2, 2, 0, 0, 4, 0, 0, NULL, NULL, 4, 4, 1, 2, NULL, NULL, '2019-11-27 23:28:35', '2020-01-01 15:21:52'),
	(56, 'pr-20191127-102906', 1, 2, NULL, 1, 1, 0, 0, 2, 0, 0, 0, 0, 2, 2, 1, 2, NULL, NULL, '2019-11-27 23:29:06', '2020-01-01 15:21:44'),
	(57, 'pr-20191204-110749', 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, NULL, 20, 220, 220, 1, 2, NULL, NULL, '2019-12-05 00:07:49', '2019-12-05 00:11:24'),
	(58, 'pr-20191205-102110', 1, 1, 1, 2, 2, 0, 0, 4, 0, 0, 0, 0, 4, 4, 1, 2, NULL, NULL, '2019-12-05 11:21:10', '2020-01-01 15:21:37'),
	(59, 'pr-20191221-041851', 1, 1, NULL, 3, 3, 0, 0, 6, 0, 0, 0, 0, 6, 6, 1, 2, NULL, NULL, '2019-12-21 17:18:51', '2020-01-01 15:21:31'),
	(61, 'pr-20200101-010631', 1, 2, 1, 3, 30, 0, 0, 60, 0, 0, NULL, NULL, 60, 60, 1, 2, NULL, NULL, '2020-01-01 14:06:31', '2020-01-01 14:07:50'),
	(62, 'pr-20200101-022402', 1, 2, NULL, 1, 3, 0, 150, 1650, 0, 0, NULL, NULL, 1650, 1650, 1, 2, NULL, NULL, '2020-01-01 15:24:02', '2020-08-12 19:28:52'),
	(67, 'pr-20200204-110041', 1, 2, 1, 2, 2, 0, 0, 300, 0, 0, NULL, NULL, 300, 300, 1, 2, NULL, NULL, '2020-02-05 00:00:41', '2020-02-05 00:00:50'),
	(69, 'pr-20200302-115510', 1, 2, NULL, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 12:55:10', '2020-03-02 12:58:20'),
	(70, 'pr-20200302-115603', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 12:56:03', '2020-03-02 12:58:11'),
	(71, 'pr-20200406-073512', 1, 2, 3, 3, 11, 0, 150, 3050, 10, 305, NULL, NULL, 3355, 2000, 1, 1, NULL, NULL, '2020-04-06 20:35:12', '2020-04-06 20:38:23'),
	(72, 'pr-20200816-100207', 1, 2, 1, 1, 10, 5000, 3750, 28750, 0, 0, NULL, 2000, 30750, 0, 1, 1, NULL, NULL, '2020-08-16 23:02:07', '2020-08-16 23:02:07'),
	(73, 'pr-20200927-125533', 1, 1, NULL, 1, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 1, 1, NULL, NULL, '2020-09-27 13:55:33', '2020-09-27 16:07:44'),
	(74, 'pr-20201024-070201', 1, 2, 1, 2, 15, 0, 5270, 41470, 0, 0, 0, 0, 41470, 0, 1, 1, NULL, NULL, '2020-10-24 08:02:01', '2020-10-24 08:03:16'),
	(83, 'pr-20201027-045611', 1, 1, NULL, 1, 2, 0, 0, 2, 0, 0, NULL, NULL, 2, 0, 1, 1, NULL, NULL, '2020-10-27 05:56:11', '2020-10-27 05:56:11'),
	(84, 'pr-20201027-045658', 1, 1, NULL, 1, 2, 0, 0, 4, 0, 0, NULL, NULL, 4, 0, 1, 1, NULL, NULL, '2020-10-27 05:56:58', '2020-10-27 05:56:58'),
	(85, 'pr-20201102-092952', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, NULL, NULL, 352, 0, 1, 1, NULL, 'asasda\r\ndasdasd', '2020-11-02 10:29:52', '2020-11-02 10:29:52'),
	(87, 'pr-20201102-093644', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, NULL, 'kjkljklj\r\nlljkljkljkl\r\njhjhjh.', '2020-11-02 10:36:44', '2020-11-02 12:20:34'),
	(89, 'pr-20201116-030145', 1, 1, NULL, 2, 2, 0, 32, 353, 0, 0, NULL, NULL, 353, 0, 1, 1, NULL, NULL, '2020-11-16 16:01:45', '2020-11-16 16:01:45'),
	(90, 'pr-20201118-061543', 1, 2, NULL, 1, 10, 0, 4500, 34500, 0, 0, 1000, 100, 33600, 33000, 1, 1, NULL, NULL, '2020-11-18 07:15:43', '2020-11-18 07:20:36'),
	(98, 'pr-20210307-021405', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, NULL, NULL, 10, 0, 1, 1, NULL, NULL, '2021-03-07 15:14:05', '2021-03-07 15:14:05'),
	(99, 'pr-20210307-021955', 1, 1, NULL, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, NULL, NULL, '2021-03-07 15:19:55', '2021-03-09 16:43:48'),
	(100, 'pr-20210307-022116', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2021-03-07 15:21:16', '2021-03-09 16:45:19'),
	(102, 'pr-20210309-023435', 1, 1, NULL, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, NULL, NULL, '2021-03-09 15:34:35', '2021-03-11 10:47:53'),
	(105, 'pr-20210326-113914', 1, 1, NULL, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 0, 1, 1, NULL, NULL, '2021-03-26 12:39:14', '2021-04-09 22:53:48'),
	(106, 'pr-20210524-071854', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, NULL, NULL, 352, 0, 1, 1, NULL, NULL, '2021-05-24 20:18:54', '2021-05-24 20:18:54'),
	(113, 'pr-20210530-014119', 1, 1, NULL, 2, 2, 0, 0, 201, 0, 0, 0, 0, 201, 0, 1, 1, NULL, NULL, '2021-05-30 14:41:19', '2021-05-30 14:41:19'),
	(114, 'pr-20210601-032127', 1, 1, NULL, 1, 3, 0, 0, 4.5, 0, 0, NULL, NULL, 4.5, 0, 1, 1, NULL, NULL, '2021-06-01 16:21:27', '2021-06-01 16:21:27'),
	(115, 'pr-20210618-082836', 1, 1, NULL, 2, 2, 0, 0, 101, 0, 0, NULL, NULL, 101, 101, 1, 2, NULL, NULL, '2021-06-18 21:28:36', '2021-06-18 21:28:57'),
	(116, 'pr-20210619-104822', 1, 1, NULL, 2, 2, 0, 0, 101, 0, 0, NULL, NULL, 101, 101, 1, 2, NULL, NULL, '2021-06-19 11:48:22', '2021-06-19 11:49:03'),
	(117, 'pr-20210706-011042', 1, 1, NULL, 1, 5, 0, 0, 10, 0, 0, NULL, NULL, 10, 0, 1, 1, NULL, NULL, '2021-07-06 14:10:42', '2021-07-06 14:10:42'),
	(118, 'pr-20210706-011107', 1, 2, NULL, 1, 5, 0, 0, 10, 0, 0, NULL, NULL, 10, 0, 1, 1, NULL, NULL, '2021-07-06 14:11:07', '2021-07-06 14:11:07'),
	(119, 'pr-20210921-032813', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, NULL, NULL, 352, 0, 3, 1, NULL, NULL, '2021-09-21 16:28:13', '2021-09-21 16:28:13'),
	(121, 'pr-20210921-034739', 1, 1, NULL, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 0, 1, 1, NULL, NULL, '2021-09-21 16:47:39', '2021-09-21 16:49:38'),
	(123, 'pr-20211003-010453', 1, 1, NULL, 2, 2, 0, 80, 980, 0, 0, NULL, NULL, 980, 0, 1, 1, NULL, NULL, '2021-10-03 14:04:53', '2021-10-03 14:04:53'),
	(124, 'pr-20211003-010621', 1, 1, NULL, 2, 2, 0, 80, 882, 0, 0, NULL, NULL, 882, 0, 1, 1, NULL, NULL, '2021-10-03 14:06:21', '2021-10-03 14:06:21'),
	(128, 'pr-20211020-014234', 1, 1, NULL, 1, 10, 0, 800, 8800, 0, 0, 0, 0, 8800, 0, 2, 1, NULL, NULL, '2021-10-20 14:42:34', '2021-10-20 14:43:40'),
	(129, 'pr-20211020-014709', 1, 1, NULL, 1, 1, 0, 80, 880, 0, 0, NULL, NULL, 880, 0, 1, 1, NULL, NULL, '2021-10-20 14:47:09', '2021-10-20 14:47:09'),
	(131, 'pr-20211129-012605', 1, 1, NULL, 2, 5, 0, 64, 1304, 0, 0, 0, 0, 1304, 0, 1, 1, NULL, NULL, '2021-11-29 14:26:05', '2021-11-29 14:29:18'),
	(132, 'pr-20211207-065825', 1, 1, 1, 3, 3, 0, 80, 982, 0, 0, 0, 0, 982, 0, 1, 1, NULL, NULL, '2021-12-07 19:58:25', '2021-12-07 20:01:11'),
	(133, 'pr-20220220-093102', 1, 2, NULL, 1, 2, 0, 0, 200, 0, 0, NULL, NULL, 200, 0, 1, 1, NULL, NULL, '2022-02-10 01:00:00', '2022-02-20 22:31:02'),
	(134, 'P1001', 1, 2, NULL, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, NULL, NULL, '2022-03-11 01:00:00', '2022-03-11 23:01:52'),
	(135, 'pr-20220311-100215', 1, 1, NULL, 1, 1, 0, 0, 200, 0, 0, NULL, NULL, 200, 0, 1, 1, NULL, NULL, '2022-03-11 23:02:15', '2022-03-11 23:02:15'),
	(136, 'pr-20220327-110727', 1, 1, NULL, 2, 2, 0, 57.04, 544, 0, 0, NULL, NULL, 544, 0, 1, 1, NULL, NULL, '2022-03-27 12:07:27', '2022-03-27 12:07:27'),
	(144, 'pr-20220331-020549', 1, 2, NULL, 3, 30, 0, 510.4, 5600, NULL, 0, NULL, NULL, 5600, 0, 1, 1, NULL, NULL, '2022-03-31 15:05:49', '2022-03-31 15:05:49'),
	(145, 'pr-20220424-110038', 1, 2, NULL, 2, 11, 0, 50, 570, 0, 0, NULL, NULL, 570, 0, 1, 1, NULL, NULL, '2022-04-24 12:00:38', '2022-04-24 12:00:38'),
	(146, 'pr-20220516-112100', 1, 2, 1, 1, 10, 0, 500, 5500, 0, 0, NULL, NULL, 5500, 5500, 1, 2, NULL, NULL, '2022-05-16 12:21:00', '2022-05-16 12:23:15'),
	(147, 'pr-20220531-122357', 1, 1, 1, 2, 20, 0, 820, 9020, 0, 0, NULL, NULL, 9020, 0, 1, 1, NULL, NULL, '2022-05-31 13:23:57', '2022-05-31 13:23:57'),
	(148, 'pr-20220601-124119', 1, 2, NULL, 1, 12, 0, 0, 144, 0, 0, 0, 0, 144, 0, 1, 1, NULL, NULL, '2022-06-01 01:00:00', '2022-06-05 13:26:35'),
	(150, 'pr-20220607-043846', 1, 1, NULL, 1, 1, 0, 52.17, 400, 0, 0, NULL, NULL, 400, 0, 1, 1, NULL, NULL, '2022-06-07 17:38:46', '2022-06-07 17:38:46'),
	(153, 'pr-20220717-105212', 1, 1, NULL, 2, 2, 0, 32, 452, 0, 0, NULL, NULL, 452, 0, 1, 1, NULL, NULL, '2022-07-13 01:00:00', '2022-07-17 11:52:12'),
	(154, 'pr-20220717-105257', 1, 2, NULL, 2, 3, 0, 32, 552, 0, 0, NULL, NULL, 552, 0, 1, 1, NULL, NULL, '2022-07-14 01:00:00', '2022-07-17 11:52:57'),
	(155, 'pr-20220717-105344', 1, 1, NULL, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 0, 1, 1, NULL, NULL, '2022-07-12 01:00:00', '2022-07-17 11:53:44'),
	(158, 'pr-20220808-091357', 1, 1, NULL, 5, 5, 0, 32, 396, 0, 0, NULL, NULL, 396, 0, 1, 1, NULL, NULL, '2022-08-08 22:13:57', '2022-08-08 22:13:57'),
	(161, 'pr-20220904-080109', 1, 2, 1, 3, 3, 0, 82, 1102, 0, 0, NULL, NULL, 1102, 0, 1, 1, NULL, NULL, '2022-09-04 21:01:09', '2022-09-04 21:01:09'),
	(162, 'pr-20220911-010441', 1, 1, 1, 3, 30, 0, 1550, 17050, 0, 0, 50, 100, 17100, 11100, 1, 1, NULL, NULL, '2022-09-11 14:04:41', '2022-10-18 15:09:39'),
	(163, 'pr-20221120-122035', 1, 1, 1, 1, 1, 0, 29.09, 320, 0, 0, NULL, NULL, 320, 0, 1, 1, NULL, NULL, '2022-11-20 13:20:35', '2022-11-20 13:20:35'),
	(164, 'pr-20221124-043710', 1, 2, NULL, 1, 1, 0, 0, 190, 0, 0, NULL, NULL, 190, 190, 1, 2, NULL, NULL, '2022-11-24 17:37:10', '2022-12-27 21:05:21'),
	(165, 'pr-20221211-025454', 1, 1, 1, 1, 1, 0, 0, 200, 10, 20, 0, 0, 220, 220, 1, 2, NULL, NULL, '2022-12-11 00:00:00', '2022-12-25 09:35:37'),
	(166, 'pr-20221225-092204', 40, 1, 1, 1, 1, 0, 0, 222, 0, 0, NULL, NULL, 222, 0, 1, 1, NULL, NULL, '2022-12-25 00:00:00', '2022-12-25 21:22:04'),
	(167, 'pr-20221226-062935', 41, 1, 1, 1, 6, 0, 0, 36000000, 10, 3600000, NULL, NULL, 39600000, 39600000, 1, 2, NULL, NULL, '2022-12-26 00:00:00', '2022-12-26 18:29:55'),
	(169, 'pr-20221227-090053', 41, 1, 1, 3, 9, 0, 58.18, 6144640, 0, 0, 0, 0, 6144640, 6144640, 2, 2, NULL, 'test\r\nterima partial', '2022-12-27 00:00:00', '2022-12-27 21:04:18'),
	(170, 'pr-20221228-102725', 41, 1, 1, 1, 3, 0, 0, 18000000, 10, 1700000, 1000000, 200000, 18900000, 18900000, 1, 2, NULL, NULL, '2022-12-28 00:00:00', '2023-01-03 21:20:55'),
	(171, 'pr-20221228-102841', 41, 1, 1, 1, 4, 0, 0, 24000000, 10, 2300000, 1000000, 200000, 25500000, 25500000, 1, 2, NULL, NULL, '2022-12-28 00:00:00', '2022-12-28 22:37:33');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table warungkms.purchase_product_return
CREATE TABLE IF NOT EXISTS `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.purchase_product_return: ~3 rows (approximately)
/*!40000 ALTER TABLE `purchase_product_return` DISABLE KEYS */;
INSERT INTO `purchase_product_return` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, NULL, NULL, NULL, 1, 1, 200, 0, 0, 0, 200, NULL, '2019-12-07 18:19:03'),
	(23, 12, 1, NULL, NULL, NULL, 1, 1, 320, 0, 10, 32, 352, '2022-07-27 17:04:44', '2022-07-27 17:04:44'),
	(26, 14, 25, NULL, NULL, NULL, 1, 1, 500, 0, 10, 50, 550, '2022-09-04 21:02:14', '2022-09-04 21:02:14');
/*!40000 ALTER TABLE `purchase_product_return` ENABLE KEYS */;

-- Dumping structure for table warungkms.quotations
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.quotations: ~12 rows (approximately)
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
	(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-09 06:52:50', '2018-09-04 10:32:16'),
	(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-04 05:02:57', '2018-09-21 14:05:57'),
	(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, NULL, NULL, '2018-10-23 07:12:49', '2019-12-21 13:41:36'),
	(11, 'qr-20201024-090814', 1, 1, NULL, 1, 1, 1, 2, 0, 3000, 23000, 0, 0, 0, 0, 23000, 1, NULL, NULL, '2020-10-24 10:08:14', '2020-10-24 10:28:35'),
	(12, 'qr-20201210-053401', 1, 1, 1, 19, 2, 2, 15, 0, 600, 9100, 0, 0, 100, 500, 9500, 1, NULL, NULL, '2020-12-10 06:34:01', '2020-12-10 06:34:01'),
	(13, 'qr-20210112-125803', 1, 1, NULL, 11, 1, 3, 12, 0, 155.65, 1660, 0, 0, 0, 0, 1660, 1, NULL, NULL, '2021-01-12 13:58:03', '2021-01-12 13:59:14'),
	(15, 'qr-20210529-105356', 1, 1, NULL, 11, 2, 2, 2, 0, 40, 442, 0, 0, 0, 0, 442, 1, NULL, NULL, '2021-05-29 11:53:56', '2021-05-30 15:04:07'),
	(16, 'qr-20220219-122055', 1, 1, NULL, 19, 1, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 1, NULL, NULL, '2022-02-19 13:20:55', '2022-02-19 13:20:55'),
	(17, 'qr-20220219-124103', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 13:41:03', '2022-02-19 13:41:03'),
	(18, 'qr-20220219-124638', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 13:46:38', '2022-02-19 13:46:38'),
	(19, 'qr-20220308-040521', 1, 1, NULL, 1, 1, 3, 3, 0, 0, 566, 0, 0, 0, 0, 566, 1, NULL, 'asfsdf\r\nfsdfsdf\r\nsfsdfsdfs', '2022-03-08 17:05:21', '2022-03-13 12:38:58'),
	(21, 'qr-20221226-060244', 41, 2, 1, 1, 1, 1, 1, 0, 0, 144000, 10, 14400, NULL, NULL, 158400, 1, NULL, NULL, '2022-12-26 18:02:44', '2022-12-26 18:02:44');
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;

-- Dumping structure for table warungkms.returns
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.returns: ~12 rows (approximately)
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `sale_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
	(2, 'rr-20180809-055834', 1, NULL, NULL, 1, 1, 1, 1, 1, 20, 0, 0, 40, 10, 4, 44, NULL, NULL, NULL, '2018-08-09 06:58:34', '2018-08-09 06:58:34'),
	(3, 'rr-20180828-045527', 1, NULL, NULL, 1, 2, 1, 1, 1, 2, 0, 0, 44, 0, 0, 44, NULL, NULL, NULL, '2018-08-28 05:55:27', '2018-09-20 18:03:47'),
	(5, 'rr-20181007-082129', 1, NULL, NULL, 11, 2, 2, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2018-10-07 09:21:29', '2018-12-26 05:16:08'),
	(6, 'rr-20190101-090630', 9, NULL, NULL, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2019-01-01 10:06:30', '2019-01-01 10:06:30'),
	(13, 'rr-20200816-102502', 1, NULL, NULL, 1, 2, 2, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-08-16 23:25:02', '2020-08-16 23:25:02'),
	(14, 'rr-20201013-053954', 9, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2020-10-13 18:39:54', '2020-10-13 18:39:54'),
	(18, 'rr-20201118-070218', 1, NULL, 4, 1, 2, 1, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-11-18 08:02:18', '2020-11-18 08:02:18'),
	(19, 'rr-20201210-064025', 1, NULL, 3, 19, 1, 1, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2020-12-10 07:40:25', '2020-12-10 07:40:25'),
	(33, 'rr-20220531-123340', 1, NULL, NULL, 11, 1, 1, 1, 1, 1, 0, 100, 1100, 0, 0, 1100, NULL, NULL, NULL, '2022-05-31 13:33:40', '2022-05-31 13:33:40'),
	(34, 'rr-20220531-124817', 1, NULL, NULL, 11, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2022-05-31 13:48:17', '2022-05-31 13:48:17'),
	(36, 'rr-20220614-032048', 1, 400, 6, 11, 2, 1, 1, 1, 1, 0, 100, 1100, 0, 0, 1100, NULL, NULL, NULL, '2022-06-14 16:20:48', '2022-06-14 16:20:48'),
	(38, 'rr-20220904-011908', 1, 412, NULL, 11, 1, 5, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2022-09-04 14:19:08', '2022-09-04 14:19:08');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;

-- Dumping structure for table warungkms.return_purchases
CREATE TABLE IF NOT EXISTS `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.return_purchases: ~3 rows (approximately)
/*!40000 ALTER TABLE `return_purchases` DISABLE KEYS */;
INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `purchase_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
	(1, 'prr-20190101-090759', 3, 1, 1, NULL, 1, 1, 1, 0, 0, 200, 0, 0, 200, NULL, NULL, NULL, '2019-01-01 10:07:59', '2019-12-07 18:19:03'),
	(12, 'prr-20220727-040444', NULL, 2, 1, NULL, 1, 1, 1, 0, 32, 352, 0, 0, 352, NULL, NULL, NULL, '2022-07-27 17:04:44', '2022-07-27 17:04:44'),
	(14, 'prr-20220904-080213', 1, 2, 1, 161, 1, 1, 1, 0, 50, 550, 0, 0, 550, NULL, NULL, NULL, '2022-09-04 21:02:13', '2022-09-04 21:02:13');
/*!40000 ALTER TABLE `return_purchases` ENABLE KEYS */;

-- Dumping structure for table warungkms.reward_point_settings
CREATE TABLE IF NOT EXISTS `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.reward_point_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `reward_point_settings` DISABLE KEYS */;
INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 300, 1000, 1, 'Year', 1, '2021-06-08 22:40:15', '2021-06-27 12:20:55');
/*!40000 ALTER TABLE `reward_point_settings` ENABLE KEYS */;

-- Dumping structure for table warungkms.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.roles: ~6 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'admin can access all data...', 'web', 1, '2018-06-02 06:46:44', '2022-12-16 18:38:02'),
	(2, 'Owner', 'Staff of shop', 'web', 1, '2018-10-22 09:38:13', '2022-02-01 20:13:30'),
	(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 07:05:27', '2022-02-01 20:13:04'),
	(5, 'Customer', NULL, 'web', 0, '2020-11-05 13:43:16', '2020-11-15 07:24:15'),
	(6, 'admin', 'Admin KMS', 'web', 1, '2022-12-16 18:38:16', '2022-12-16 18:38:16'),
	(7, 'Kasir', NULL, 'web', 1, '2022-12-24 00:38:47', '2022-12-24 00:38:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table warungkms.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.role_has_permissions: ~312 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(4, 1),
	(4, 2),
	(4, 4),
	(4, 6),
	(5, 1),
	(5, 2),
	(5, 6),
	(6, 1),
	(6, 2),
	(6, 4),
	(6, 6),
	(7, 1),
	(7, 2),
	(7, 4),
	(7, 6),
	(8, 1),
	(8, 2),
	(8, 4),
	(8, 6),
	(9, 1),
	(9, 2),
	(9, 4),
	(9, 6),
	(10, 1),
	(10, 2),
	(10, 6),
	(11, 1),
	(11, 2),
	(11, 6),
	(12, 1),
	(12, 2),
	(12, 4),
	(12, 6),
	(13, 1),
	(13, 2),
	(13, 4),
	(13, 6),
	(14, 1),
	(14, 2),
	(14, 6),
	(15, 1),
	(15, 2),
	(15, 6),
	(16, 1),
	(16, 2),
	(16, 6),
	(17, 1),
	(17, 2),
	(17, 6),
	(18, 1),
	(18, 2),
	(18, 6),
	(19, 1),
	(19, 2),
	(19, 6),
	(20, 1),
	(20, 2),
	(20, 4),
	(21, 1),
	(21, 2),
	(21, 4),
	(22, 1),
	(22, 2),
	(22, 4),
	(23, 1),
	(23, 2),
	(24, 1),
	(24, 2),
	(24, 4),
	(24, 6),
	(25, 1),
	(25, 2),
	(25, 4),
	(25, 6),
	(26, 1),
	(26, 2),
	(26, 6),
	(27, 1),
	(27, 2),
	(27, 6),
	(28, 1),
	(28, 2),
	(28, 4),
	(28, 6),
	(29, 1),
	(29, 2),
	(29, 6),
	(30, 1),
	(30, 2),
	(30, 6),
	(31, 1),
	(31, 2),
	(31, 6),
	(32, 1),
	(32, 2),
	(32, 6),
	(33, 1),
	(33, 2),
	(33, 6),
	(34, 1),
	(34, 2),
	(34, 6),
	(35, 1),
	(35, 2),
	(35, 6),
	(36, 1),
	(36, 2),
	(36, 6),
	(37, 1),
	(37, 2),
	(37, 6),
	(38, 1),
	(38, 2),
	(38, 6),
	(39, 1),
	(39, 2),
	(40, 1),
	(40, 2),
	(41, 1),
	(41, 2),
	(41, 6),
	(42, 1),
	(42, 2),
	(42, 6),
	(43, 1),
	(43, 2),
	(43, 6),
	(44, 1),
	(44, 2),
	(44, 6),
	(45, 1),
	(45, 2),
	(45, 6),
	(46, 1),
	(46, 2),
	(46, 6),
	(47, 1),
	(47, 2),
	(47, 6),
	(48, 1),
	(48, 2),
	(48, 6),
	(49, 1),
	(49, 2),
	(49, 6),
	(50, 1),
	(50, 2),
	(50, 6),
	(51, 1),
	(51, 2),
	(51, 6),
	(52, 1),
	(52, 2),
	(53, 1),
	(53, 2),
	(53, 6),
	(54, 1),
	(54, 2),
	(54, 6),
	(55, 1),
	(55, 2),
	(56, 1),
	(56, 2),
	(57, 1),
	(57, 2),
	(58, 1),
	(58, 2),
	(59, 1),
	(59, 2),
	(60, 1),
	(60, 2),
	(61, 1),
	(61, 2),
	(62, 1),
	(62, 2),
	(63, 1),
	(63, 2),
	(63, 4),
	(63, 6),
	(64, 1),
	(64, 2),
	(64, 4),
	(64, 6),
	(65, 1),
	(65, 2),
	(65, 6),
	(66, 1),
	(66, 2),
	(66, 6),
	(67, 1),
	(67, 2),
	(68, 1),
	(68, 2),
	(69, 1),
	(69, 2),
	(70, 1),
	(70, 2),
	(71, 1),
	(71, 2),
	(72, 1),
	(72, 2),
	(73, 1),
	(73, 2),
	(73, 6),
	(74, 1),
	(74, 2),
	(74, 6),
	(75, 1),
	(75, 2),
	(75, 6),
	(76, 1),
	(76, 2),
	(76, 6),
	(77, 1),
	(77, 2),
	(78, 1),
	(78, 2),
	(79, 1),
	(79, 2),
	(80, 1),
	(80, 2),
	(81, 1),
	(81, 2),
	(82, 1),
	(82, 2),
	(83, 1),
	(83, 2),
	(84, 1),
	(84, 2),
	(85, 1),
	(85, 2),
	(85, 6),
	(86, 1),
	(86, 2),
	(86, 6),
	(87, 1),
	(87, 2),
	(88, 1),
	(88, 2),
	(89, 1),
	(89, 2),
	(90, 1),
	(90, 2),
	(91, 1),
	(91, 2),
	(91, 6),
	(92, 1),
	(92, 2),
	(92, 6),
	(93, 1),
	(93, 2),
	(94, 1),
	(94, 2),
	(95, 1),
	(95, 2),
	(96, 1),
	(96, 2),
	(97, 1),
	(97, 2),
	(98, 1),
	(98, 2),
	(99, 1),
	(99, 2),
	(99, 6),
	(100, 1),
	(100, 2),
	(101, 1),
	(101, 2),
	(101, 6),
	(102, 1),
	(102, 2),
	(102, 6),
	(103, 1),
	(103, 2),
	(104, 1),
	(104, 2),
	(105, 1),
	(105, 2),
	(106, 1),
	(106, 4),
	(106, 6),
	(107, 1),
	(108, 1),
	(108, 6),
	(109, 1),
	(109, 6),
	(110, 1),
	(111, 1),
	(112, 1),
	(113, 1),
	(113, 6),
	(114, 1),
	(114, 6),
	(115, 1),
	(115, 6),
	(116, 1),
	(116, 6),
	(117, 1),
	(117, 6),
	(118, 1),
	(118, 6),
	(119, 1),
	(119, 6),
	(120, 1),
	(120, 6),
	(121, 1),
	(121, 6),
	(122, 1),
	(123, 1),
	(124, 1),
	(124, 6),
	(125, 1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table warungkms.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.sales: ~200 rows (approximately)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
	(1, 'sr-20180808-043622', 1, NULL, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, NULL, NULL, 50, NULL, NULL, 50, 1, 4, NULL, 380, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 17:36:22', '2022-06-11 19:42:06'),
	(2, 'sr-20180809-055453', 1, NULL, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, NULL, NULL, 100, NULL, NULL, 500, 1, 2, NULL, 2200, NULL, NULL, '2018-08-09 06:54:53', '2018-08-09 06:56:35'),
	(3, 'posr-20180809-063214', 1, NULL, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 897, NULL, NULL, '2018-08-09 07:32:14', '2018-08-09 07:32:14'),
	(4, 'sr-20180825-034836', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-25 04:48:36', '2022-06-11 19:42:06'),
	(6, 'sr-20180826-094836', 1, NULL, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, NULL, NULL, 0, NULL, NULL, 1.1, 1, 4, NULL, 20, NULL, NULL, '2018-08-26 10:48:36', '2018-08-26 12:48:05'),
	(7, 'sr-20180827-073545', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-27 08:35:45', '2018-08-27 08:35:45'),
	(8, 'posr-20180902-053954', 1, NULL, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, NULL, NULL, 50, NULL, NULL, 100, 1, 4, NULL, 3529.8, 'good customer', 'good customer', '2018-09-02 06:39:54', '2018-09-02 06:39:54'),
	(9, 'posr-20180903-033314', 1, NULL, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 20, NULL, NULL, '2018-09-03 04:33:14', '2018-09-03 04:33:14'),
	(10, 'posr-20180903-050138', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-09-03 06:01:38', '2022-06-14 12:02:45'),
	(11, 'posr-20180903-100821', 1, NULL, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-09-03 11:08:21', '2018-09-03 11:08:21'),
	(12, 'sr-20180903-101026', 1, NULL, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-03 11:10:26', '2018-09-22 09:55:14'),
	(29, 'sr-20180909-093841', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-09-09 10:38:41', '2022-06-11 19:46:55'),
	(30, 'posr-20180910-045706', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 440, NULL, NULL, '2018-09-10 05:57:06', '2022-06-14 12:02:45'),
	(31, 'posr-20180926-092059', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 560, NULL, NULL, '2018-09-26 10:20:59', '2018-09-26 10:21:25'),
	(32, 'posr-20181004-095547', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 130, NULL, NULL, '2018-10-04 10:55:47', '2022-06-14 12:02:45'),
	(33, 'posr-20181004-100022', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 11:00:22', '2018-10-04 11:00:22'),
	(37, 'sr-20181007-064605', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-07 07:46:05', '2022-06-11 19:50:42'),
	(38, 'posr-20181007-064719', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 07:47:19', '2018-10-07 10:17:02'),
	(40, 'posr-20181007-071312', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 08:13:12', '2018-10-07 10:17:39'),
	(41, 'posr-20181010-041621', 1, NULL, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 461, NULL, NULL, '2018-10-10 05:16:21', '2018-10-10 05:16:21'),
	(42, 'posr-20181010-053450', 1, NULL, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2018-10-10 06:34:50', '2018-10-10 06:34:50'),
	(43, 'sr-20181016-033434', 1, NULL, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, 'sss\r\nsss\r\ns', NULL, '2018-10-16 04:34:34', '2022-06-11 19:50:42'),
	(55, 'posr-20181021-065334', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-21 07:53:34', '2018-10-21 07:53:34'),
	(57, 'posr-20181021-082612', 1, NULL, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, NULL, NULL, 50, NULL, NULL, 100, 1, 4, NULL, 575.2, NULL, NULL, '2018-10-21 09:26:12', '2018-10-21 09:26:12'),
	(58, 'posr-20181022-032723', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2018-10-22 16:27:23', '2018-10-22 16:27:23'),
	(73, 'posr-20181023-071543', 11, NULL, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-10-23 08:15:43', '2018-10-23 08:15:43'),
	(74, 'posr-20181023-071644', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2018-10-23 08:16:44', '2018-10-23 08:16:44'),
	(75, 'posr-20181101-050027', 1, NULL, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 7678, NULL, NULL, '2018-11-01 06:00:27', '2018-11-01 06:00:27'),
	(76, 'posr-20181101-050126', 1, NULL, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, NULL, NULL, 10, NULL, NULL, 0, 1, 4, NULL, 1424, NULL, NULL, '2018-11-01 06:01:26', '2018-11-08 10:44:51'),
	(79, 'posr-20181105-091516', 1, NULL, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 14454, NULL, NULL, '2018-11-05 10:15:16', '2018-11-05 10:15:16'),
	(80, 'posr-20181105-091958', 1, NULL, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2018-11-05 10:19:58', '2018-11-05 10:19:58'),
	(86, 'posr-20181105-095948', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 10:59:48', '2018-11-05 10:59:48'),
	(88, 'posr-20181105-100258', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 11:02:58', '2018-11-05 11:02:58'),
	(94, 'posr-20181126-020534', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-11-26 15:05:34', '2018-11-26 15:05:34'),
	(95, 'posr-20181127-093608', 1, NULL, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-11-27 10:36:08', '2018-11-27 10:36:08'),
	(96, 'posr-20181128-071509', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-11-28 08:15:09', '2018-11-28 08:15:09'),
	(97, 'posr-20181201-060518', 1, NULL, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-12-01 07:05:18', '2018-12-04 07:21:05'),
	(98, 'posr-20181205-053558', 1, NULL, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-05 06:35:58', '2018-12-05 06:35:58'),
	(99, 'posr-20181205-053719', 1, NULL, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-05 06:37:19', '2018-12-05 06:37:19'),
	(101, 'posr-20181208-062026', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2018-12-08 07:20:26', '2018-12-08 07:20:26'),
	(103, 'posr-20181224-045832', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-12-24 05:58:32', '2018-12-24 05:58:32'),
	(104, 'sr-20181224-091527', 1, NULL, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, NULL, NULL, 0, NULL, NULL, 10, 1, 2, NULL, 118, NULL, NULL, '2018-12-24 10:15:27', '2022-06-11 19:52:05'),
	(105, 'posr-20190101-054538', 1, NULL, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 21, NULL, NULL, '2019-01-01 06:45:38', '2019-01-01 06:45:38'),
	(106, 'posr-20190101-091040', 1, NULL, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2019-01-01 10:10:40', '2019-01-01 10:10:40'),
	(107, 'posr-20190103-065626', 1, NULL, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5040, NULL, NULL, '2019-01-03 07:56:26', '2019-01-03 07:56:26'),
	(108, 'posr-20190120-035824', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2019-01-20 16:58:24', '2019-01-20 16:58:24'),
	(109, 'posr-20190129-101443', 9, NULL, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2019-01-29 11:14:43', '2019-01-29 11:14:43'),
	(110, 'posr-20190129-115041', 9, NULL, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1700, NULL, NULL, '2019-01-29 12:50:41', '2019-01-29 12:50:41'),
	(111, 'posr-20190131-110839', 9, NULL, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 271, NULL, NULL, '2019-01-31 12:08:39', '2019-01-31 12:08:39'),
	(112, 'posr-20190202-104045', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-02 11:40:45', '2019-02-02 11:40:45'),
	(113, 'posr-20190202-114117', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2019-02-02 12:41:17', '2019-02-02 12:41:17'),
	(114, 'posr-20190205-030445', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-05 16:04:45', '2019-02-05 16:04:45'),
	(118, 'posr-20190207-111542', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2019-02-07 12:15:42', '2019-02-07 12:15:42'),
	(120, 'sr-20190207-114036', 1, NULL, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 50, NULL, NULL, '2019-02-07 12:40:36', '2019-02-07 14:09:15'),
	(121, 'posr-20190209-104814', 1, NULL, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1272, NULL, NULL, '2019-02-09 11:48:14', '2019-02-09 11:48:14'),
	(123, 'posr-20190219-023214', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-19 15:32:14', '2019-02-19 15:32:14'),
	(127, 'posr-20190303-104010', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2019-03-03 11:40:10', '2019-03-03 11:40:10'),
	(128, 'posr-20190404-095555', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2019-04-04 10:55:55', '2019-04-04 10:55:55'),
	(129, 'posr-20190404-095937', 1, NULL, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2019-04-04 10:59:37', '2019-04-11 11:50:16'),
	(130, 'posr-20190421-122124', 1, NULL, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 586, NULL, NULL, '2019-04-21 13:21:24', '2019-04-21 13:21:24'),
	(131, 'posr-20190528-103229', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2890, NULL, NULL, '2019-05-28 11:32:29', '2019-05-28 11:32:29'),
	(132, 'posr-20190613-101637', 1, NULL, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 840, NULL, NULL, '2019-06-13 11:16:37', '2019-06-13 11:16:37'),
	(133, 'posr-20190613-101751', 1, NULL, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2700, NULL, NULL, '2019-06-13 11:17:51', '2019-06-13 11:17:51'),
	(134, 'posr-20191019-033028', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2940, NULL, NULL, '2019-10-19 16:30:28', '2019-10-19 16:30:28'),
	(138, 'sr-20191031-122937', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-31 13:29:37', '2019-10-31 13:29:37'),
	(139, 'posr-20191103-114044', 1, NULL, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 488, NULL, NULL, '2019-11-03 12:40:44', '2019-11-03 12:40:44'),
	(144, 'posr-20191109-074131', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 1220, NULL, NULL, '2019-11-09 20:41:31', '2019-11-09 20:41:31'),
	(147, 'posr-20191111-104008', 1, NULL, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2220, NULL, NULL, '2019-11-11 11:40:08', '2019-11-11 11:40:08'),
	(172, 'posr-20191203-034631', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2019-12-03 16:46:31', '2019-12-03 16:46:31'),
	(173, 'sr-20191204-111940', 1, NULL, 2, 1, 1, 2, 2, 0, 36, 621, 621, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 621, NULL, NULL, '2019-12-05 00:19:40', '2019-12-05 10:27:12'),
	(187, 'posr-20191222-104058', 1, NULL, 11, 2, 1, 1, 2, 0, 37.57, 288, 288, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 288, NULL, NULL, '2019-12-22 11:40:58', '2019-12-22 11:40:58'),
	(190, 'posr-20191223-125946', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2019-12-23 13:59:46', '2019-12-23 13:59:46'),
	(193, 'posr-20200101-022028', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-01-01 15:20:28', '2020-01-01 15:20:28'),
	(194, 'posr-20200102-043947', 1, NULL, 11, 2, 1, 2, 3, 0, 81.57, 892, 892, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 892, NULL, NULL, '2020-01-02 17:39:47', '2020-01-02 17:39:47'),
	(201, 'posr-20200203-035256', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2020-02-03 16:52:56', '2020-02-03 16:52:56'),
	(202, 'posr-20200204-105853', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1400, 1400, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2020-02-04 23:58:53', '2020-02-04 23:58:53'),
	(203, 'posr-20200302-115414', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2020-03-02 12:54:14', '2020-03-02 12:54:14'),
	(204, 'posr-20200302-115741', 1, NULL, 11, 2, 1, 1, 20, 0, 0, 40, 40, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 40, NULL, NULL, '2020-03-02 12:57:41', '2020-03-02 12:57:41'),
	(205, 'posr-20200311-044641', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 352, 0, 0, NULL, NULL, NULL, 1, 88, NULL, 1, 4, NULL, 352, NULL, NULL, '2020-03-11 17:46:42', '2020-03-11 17:46:42'),
	(206, 'sr-20200311-045230', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2020-03-11 17:52:30', '2020-03-11 17:54:04'),
	(207, 'posr-20200406-074024', 1, NULL, 11, 2, 1, 3, 4, 0, 18.78, 644, 644, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 644, NULL, NULL, '2020-04-06 20:40:24', '2020-04-06 20:42:01'),
	(208, 'posr-20200506-105950', 1, NULL, 11, 2, 1, 2, 2, 0, 140, 1540, 1540, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1540, NULL, NULL, '2020-05-06 23:59:50', '2020-05-06 23:59:50'),
	(209, 'posr-20200609-124248', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2020-06-09 13:42:48', '2020-06-09 13:42:48'),
	(212, 'posr-20200703-063914', 1, NULL, 11, 2, 1, 3, 3, 0, 235, 2585, 2585, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2585, NULL, NULL, '2020-07-03 19:39:14', '2020-07-03 19:39:14'),
	(213, 'posr-20200712-095153', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 13, 13, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 13, NULL, NULL, '2020-07-12 22:51:53', '2020-07-12 22:51:53'),
	(217, 'posr-20200727-083808', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 21:38:08', '2020-07-27 21:38:08'),
	(218, 'posr-20200727-084024', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 21:40:24', '2020-07-27 21:40:24'),
	(219, 'posr-20200727-084644', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 21:46:45', '2020-07-27 21:46:45'),
	(220, 'posr-20200812-062804', 1, NULL, 11, 2, 1, 3, 6, 0, 0, 760, 760, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2020-08-12 19:28:04', '2020-08-12 19:28:04'),
	(221, 'posr-20200812-063035', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-08-12 19:30:35', '2020-08-12 19:30:35'),
	(222, 'posr-20200816-100424', 1, NULL, 11, 2, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 23000, NULL, NULL, '2020-08-16 23:04:24', '2020-08-16 23:04:24'),
	(223, 'posr-20200816-100523', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2020-08-16 23:05:23', '2020-08-16 23:07:35'),
	(224, 'sr-20200826-080139', 1, NULL, 1, 1, 1, 1, 3, 30, 117, 1287, 1287, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-08-26 21:01:39', '2020-08-26 21:01:39'),
	(230, 'posr-20201017-092852', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 350, NULL, NULL, '2020-10-17 22:28:52', '2020-10-18 11:51:38'),
	(231, 'sr-20201018-111333', 9, 2, 1, 1, 5, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 250, NULL, NULL, '2020-10-18 12:13:33', '2020-10-18 12:17:24'),
	(232, 'posr-20201022-013014', 9, 2, 11, 1, 5, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2020-10-22 14:30:14', '2020-10-22 14:30:14'),
	(233, 'posr-20201022-015604', 1, 3, 11, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-22 14:56:04', '2020-10-22 14:56:04'),
	(234, 'posr-20201024-070506', 1, 4, 11, 2, 1, 1, 1, 0, 1500, 11500, 11500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 11500, NULL, NULL, '2020-10-24 08:05:06', '2020-10-24 08:05:06'),
	(235, 'posr-20201024-070751', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-24 08:07:51', '2020-10-24 08:07:51'),
	(237, 'posr-20201024-034601', 1, 4, 11, 2, 1, 3, 9, 0, 7900, 61900, 61900, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 61900, NULL, NULL, '2020-10-24 16:46:01', '2020-10-24 16:46:01'),
	(239, 'posr-20201027-054002', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2020-10-27 06:40:02', '2020-10-27 06:40:02'),
	(240, 'posr-20201027-054206', 1, 3, 11, 1, 1, 1, 2, 0, 0, 6, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 6, NULL, NULL, '2020-10-27 06:42:06', '2020-10-27 06:42:06'),
	(241, 'posr-20201027-063200', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-27 07:32:00', '2020-10-27 07:32:00'),
	(242, 'posr-20201029-073030', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-29 08:30:30', '2020-10-29 08:30:30'),
	(243, 'posr-20201101-072112', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-01 08:21:12', '2020-11-01 08:21:12'),
	(245, 'posr-20201101-074223', 1, 3, 11, 1, 5, 2, 3, 0, 80, 1130, 1130, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 1130, NULL, NULL, '2020-11-01 08:42:23', '2020-11-01 08:42:23'),
	(246, 'posr-20201101-075017', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 440, 'ssss\r\nssas', 'hhhh\r\nkkkk', '2020-11-01 08:50:17', '2020-11-02 17:39:17'),
	(250, 'posr-20201106-013041', 1, 4, 11, 2, 1, 1, 1, 0, 34.4, 378.4, 378.4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 378.4, NULL, NULL, '2020-11-06 14:30:41', '2020-11-06 14:30:41'),
	(251, 'posr-20201109-011524', 1, 4, 19, 2, 1, 2, 2, 0, 34.4, 610.6, 610.6, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 500, NULL, NULL, '2020-11-09 14:15:24', '2020-11-09 14:15:24'),
	(252, 'posr-20201111-055858', 1, 3, 11, 1, 1, 1, 1, 0, 0, 229.5, 229.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 229.5, NULL, NULL, '2020-11-11 06:58:58', '2020-11-11 06:58:58'),
	(253, 'posr-20201114-064736', 1, 4, 11, 2, 1, 3, 3, 0, 1275, 10242.5, 10242.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 10242.5, NULL, NULL, '2020-11-14 07:47:36', '2020-11-14 07:47:36'),
	(256, 'posr-20201117-064748', 1, 4, 11, 2, 1, 2, 2, 0, 65, 715, 715, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 715, NULL, NULL, '2020-11-17 07:47:48', '2020-11-17 07:47:48'),
	(257, 'posr-20201117-070919', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-17 08:09:19', '2020-11-17 08:09:19'),
	(258, 'posr-20201118-065239', 1, 4, 11, 2, 1, 1, 3, 0, 4500, 34500, 27200, 0, 0, NULL, NULL, 600, 1, 6800, 100, 1, 4, NULL, 27200, NULL, NULL, '2020-11-18 07:52:39', '2020-11-18 07:52:39'),
	(262, '1111', 1, 3, 1, 1, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2020-11-29 06:21:30', '2020-11-29 06:21:30'),
	(263, 'posr-20201208-093957', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 350, NULL, NULL, '2020-12-08 10:39:57', '2021-01-06 15:23:50'),
	(270, 'sr-20210111-014535', 1, 3, 1, 1, 1, 2, 2, 0, 137.57, 1388, 1388, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-01-11 14:45:35', '2021-01-11 14:58:44'),
	(271, 'posr-20210111-021625', 1, 3, 19, 1, 2, 3, 4, 0, 98.78, 1274, 1274, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1274, NULL, NULL, '2021-01-11 15:16:25', '2021-01-11 15:16:25'),
	(274, 'posr-20210113-070243', 1, 4, 11, 2, 1, 4, 15, 40, 91.65, 1556, 1556, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1556, NULL, NULL, '2021-01-13 08:02:43', '2021-01-13 08:02:43'),
	(275, 'posr-20210201-023748', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 484, 10, 44, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 484, NULL, NULL, '2021-02-01 15:37:48', '2021-02-01 15:37:48'),
	(277, 'posr-20210216-070948', 1, 4, 11, 2, 1, 15, 15, 0, 1758.78, 15156, 15156, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 15156, NULL, NULL, '2021-02-16 08:09:48', '2021-02-16 08:09:48'),
	(278, 'posr-20210217-073238', 1, 4, 11, 2, 1, 5, 6, 0, 3140, 24910, 26949.9, 10, 2440.9, NULL, NULL, 501, NULL, NULL, 100, 1, 4, NULL, 26949.9, NULL, NULL, '2021-02-17 08:32:38', '2021-02-17 08:32:38'),
	(279, 'sr-20210311-014034', 1, 3, 1, 1, 1, 1, 2, 0, 0, 4, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-03-11 14:40:34', '2021-03-11 14:40:34'),
	(280, 'sr-20210317-041411', 1, 3, 1, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-03-17 05:14:11', '2021-03-17 05:14:11'),
	(282, 'sr-20210318-054729', 1, 3, 1, 2, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-03-18 06:47:29', '2021-03-20 11:59:57'),
	(288, 'sr-20210412-014046', 1, 3, 11, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-04-12 14:40:46', '2021-04-12 14:40:46'),
	(289, 'posr-20210524-071424', 1, 4, 11, 2, 1, 2, 2, 0, 40, 690, 640, 0, 0, NULL, NULL, 50, NULL, NULL, NULL, 1, 4, NULL, 640, NULL, NULL, '2021-05-24 20:14:24', '2021-05-24 20:14:24'),
	(290, 'sr-20210524-071512', 1, 3, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 120, NULL, NULL, '2021-05-24 20:15:12', '2021-05-24 20:46:47'),
	(294, 'posr-20210601-123530', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-01 13:35:30', '2021-06-01 13:35:30'),
	(295, 'posr-20210601-032209', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 16:22:09', '2021-06-01 16:22:09'),
	(296, 'posr-20210601-034624', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 16:46:24', '2021-06-01 16:46:24'),
	(297, 'posr-20210601-074150', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2021-06-01 20:41:50', '2021-06-01 20:41:50'),
	(298, 'posr-20210601-075547', 9, 2, 11, 1, 5, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 20:55:47', '2021-06-01 20:55:47'),
	(299, 'posr-20210616-105325', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-16 11:53:25', '2021-06-16 11:53:25'),
	(300, 'posr-20210616-111033', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 12:10:33', '2021-06-16 12:10:33'),
	(301, 'posr-20210616-111111', 1, 4, 19, 2, 1, 2, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2200, NULL, NULL, '2021-06-16 12:11:11', '2021-06-16 12:11:11'),
	(302, 'posr-20210616-080452', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 21:04:52', '2021-06-16 21:04:52'),
	(303, 'posr-20210616-080543', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 21:05:43', '2021-06-16 21:05:43'),
	(304, 'posr-20210616-080634', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 21:06:34', '2021-06-17 13:13:59'),
	(305, 'posr-20210616-082842', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 21:28:42', '2021-06-16 21:28:42'),
	(306, 'sr-20210617-115553', 1, 3, 19, 1, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-17 12:55:53', '2021-06-17 12:55:53'),
	(307, 'sr-20210617-122349', 1, 3, 19, 1, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 100, NULL, NULL, '2021-06-17 13:23:49', '2021-06-17 16:00:13'),
	(308, 'posr-20210618-083127', 1, 4, 11, 2, 1, 2, 5, 0, 157.57, 1608, 1608, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1608, NULL, NULL, '2021-06-18 21:31:27', '2021-06-18 21:31:27'),
	(309, 'posr-20210618-083254', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-18 21:32:54', '2021-06-18 21:32:54'),
	(310, 'posr-20210619-105121', 1, 4, 11, 2, 1, 6, 6, 0, 58.78, 958, 958, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 958, NULL, NULL, '2021-06-19 11:51:21', '2021-06-19 11:51:21'),
	(311, 'sr-20210619-105344', 1, 5, 11, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-06-19 11:53:44', '2021-06-19 11:53:44'),
	(312, 'posr-20210619-110231', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-19 12:02:31', '2021-06-19 12:02:31'),
	(313, 'posr-20210619-110628', 1, 4, 19, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2021-06-19 12:06:28', '2021-06-19 12:06:28'),
	(314, 'posr-20210627-124247', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-27 13:42:47', '2021-06-27 13:42:47'),
	(317, 'posr-20210707-103455', 1, 4, 11, 2, 1, 1, 1, 0, 0, 18, 18, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 18, NULL, NULL, '2021-07-07 11:34:55', '2021-07-07 11:34:55'),
	(325, 'posr-20210814-092805', 1, 4, 11, 2, 1, 1, 2, 0, 0, 2400, 2400, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 1250, NULL, NULL, '2021-08-14 22:28:05', '2021-08-14 22:34:27'),
	(333, 'posr-20210921-010722', 1, 4, 11, 2, 1, 1, 1, 0, 0, 2, 2, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 2, NULL, NULL, '2021-09-21 14:07:22', '2021-09-21 14:07:22'),
	(334, 'posr-20210921-035020', 1, 4, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2021-09-21 16:50:20', '2021-09-21 16:50:20'),
	(335, 'posr-20210923-024704', 1, 4, 11, 2, 1, 1, 0.5, 0, 0, 11, 11, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 11, NULL, NULL, '2021-09-23 15:47:04', '2021-09-23 15:47:04'),
	(336, 'posr-20211003-051829', 1, 4, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2021-10-03 18:18:29', '2021-10-03 18:18:29'),
	(338, 'posr-20211003-054404', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-03 18:44:04', '2021-10-03 18:44:04'),
	(340, 'posr-20211007-025229', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-07 15:52:29', '2021-10-07 15:52:29'),
	(341, 'posr-20211007-033840', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-07 16:38:40', '2021-10-07 16:38:40'),
	(342, 'sr-20211009-121242', 1, 4, 11, 2, 1, 2, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-10-09 13:12:42', '2021-10-09 17:22:39'),
	(343, 'sr-20211009-043232', 1, 4, 11, 2, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-10-09 17:32:32', '2021-10-09 17:32:32'),
	(348, 'posr-20211014-035820', 1, 4, 19, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-14 16:58:20', '2021-10-14 16:58:20'),
	(349, 'posr-20211020-011209', 1, 4, 11, 2, 1, 1, 1, 0, 0, 102, 102, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 102, NULL, NULL, '2021-10-20 14:12:09', '2021-10-20 14:12:09'),
	(353, 'posr-20211114-013929', 1, 4, 11, 2, 1, 1, 1, 0, 34, 374, 374, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 374, NULL, NULL, '2021-11-14 14:39:29', '2021-11-14 14:39:29'),
	(354, 'sr-20211115-120309', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1542, 1542, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2021-11-15 13:03:09', '2021-11-15 13:03:09'),
	(355, 'posr-20211124-062857', 1, 4, 11, 2, 1, 5, 6, 0, 240, 3161, 3161, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 3161, NULL, NULL, '2021-11-24 19:28:57', '2021-11-24 19:28:57'),
	(356, 'posr-20211207-070932', 1, 4, 11, 2, 1, 3, 3, 0, 40, 573, 573, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 573, NULL, NULL, '2021-12-07 20:09:32', '2021-12-07 20:09:32'),
	(360, 'posr-20211222-070313', 1, 4, 11, 2, 1, 1, 2, 0, 3.13, 24, 24, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 24, NULL, NULL, '2021-12-22 20:03:13', '2022-01-30 14:37:54'),
	(362, 'posr-20220203-035931', 1, 4, 19, 2, 1, 1, 2, 0, 0, 8.5, 8.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 8.5, NULL, NULL, '2022-02-03 16:59:31', '2022-02-03 16:59:31'),
	(363, 'posr-20220203-070547', 1, 4, 19, 2, 1, 4, 5, 0, 0, 521, 521, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 466, NULL, NULL, '2022-02-01 01:00:00', '2022-05-22 17:39:48'),
	(364, 'posr-20220205-054526', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 396, 0, 0, 'Percentage', 10, 44, NULL, NULL, 0, 1, 4, NULL, 396, NULL, NULL, '2022-02-05 18:45:26', '2022-02-05 20:31:58'),
	(365, 'posr-20220205-054616', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 240, 0, 0, 'Flat', 10, 10, NULL, NULL, 0, 1, 4, NULL, 240, NULL, NULL, '2022-02-05 18:46:16', '2022-02-05 20:31:09'),
	(372, 'sr-20220219-120815', 1, 5, 11, 1, 1, 1, 1, 0, 0, 120, 108, 0, 0, 'Percentage', 10, 12, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2022-02-17 01:00:00', '2022-02-20 22:15:54'),
	(376, 'sr-20220220-083638', 1, 5, 11, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2022-02-20 01:00:00', '2022-02-20 22:15:23'),
	(377, 'posr-20220227-115905', 1, 4, 11, 2, 1, 2, 3, 0, 0, 620, 620, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 521, NULL, NULL, '2022-02-27 01:00:00', '2022-03-12 20:12:38'),
	(379, 'posr-20220309-115901', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1790, 1790, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1790, NULL, NULL, '2022-03-09 12:59:01', '2022-03-09 12:59:01'),
	(380, 'posr-20220312-082027', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 4, NULL, 440, 'jhjkhjk\r\nkjkljkljkl\r\nkkljkljklj', NULL, '2022-03-12 01:00:00', '2022-03-13 12:37:35'),
	(381, 'sr-20220312-082452', 1, NULL, 11, 1, 1, 2, 2, 0, 0, 360, 360, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 350, NULL, NULL, '2022-03-12 01:00:00', '2022-03-12 21:26:22'),
	(382, 'posr-20220424-110144', 1, 6, 11, 2, 1, 3, 3, 0, 100, 1225, 1225, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1225, NULL, NULL, '2022-04-24 12:01:44', '2022-04-24 12:01:44'),
	(383, 'posr-20220516-112427', 1, 6, 11, 2, 1, 2, 3, 0, 300, 3300, 3300, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3300, NULL, NULL, '2022-05-16 12:24:27', '2022-05-16 12:24:27'),
	(385, 'posr-20220526-090112', 1, 6, 11, 2, 1, 2, 2, 0, 0, 370, 370, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 370, NULL, NULL, '2022-05-26 22:01:12', '2022-05-26 22:01:12'),
	(386, 'posr-20220531-122026', 1, 6, 11, 2, 1, 1, 2, 0, 80, 880, 880, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 2, 2, NULL, 440, NULL, NULL, '2022-05-31 01:00:00', '2022-06-06 18:11:27'),
	(397, 'posr-20220606-051413', 1, 6, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2022-06-06 18:14:13', '2022-06-06 18:14:13'),
	(400, 'posr-20220614-115719', 1, 6, 11, 2, 1, 2, 3, 0, 300, 3300, 3300, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 2, NULL, 2200, NULL, NULL, '2022-06-14 12:57:19', '2022-09-04 16:55:25'),
	(403, 'posr-20220614-050144', 1, 6, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 2, NULL, 111, NULL, NULL, '2022-06-14 18:01:44', '2022-06-14 18:01:44'),
	(404, 'posr-20220615-102330', 1, 6, 11, 2, 1, 1, 1, 0, 0, 300, 300, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 300, NULL, NULL, '2022-06-15 11:23:30', '2022-06-15 11:23:30'),
	(409, 'posr-20220809-115444', 1, NULL, 11, 1, 1, 3, 3, 0, 40, 591, 591, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 591, NULL, NULL, '2022-08-09 12:54:44', '2022-08-09 12:54:44'),
	(410, 'posr-20220825-013137', 1, 6, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2022-08-25 14:31:37', '2022-08-25 14:31:37'),
	(411, 'posr-20220901-123619', 1, 6, 11, 2, 1, 2, 2, 0, 40, 690, 690, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 690, NULL, NULL, '2022-09-01 13:36:19', '2022-09-01 13:36:19'),
	(412, 'sr-20220904-011755', 1, NULL, 11, 1, 5, 2, 2, 0, 40, 690, 690, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-09-04 14:17:55', '2022-09-04 14:17:55'),
	(413, 'posr-20220911-011826', 1, NULL, 11, 1, 1, 1, 1, 0, 110, 1210, 1210, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1210, NULL, NULL, '2022-09-11 14:18:26', '2022-09-11 14:18:26'),
	(414, 'posr-20220915-085859', 1, 6, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2022-09-15 21:58:59', '2022-09-15 21:58:59'),
	(415, 'posr-20221002-081636', 1, 6, 11, 2, 1, 2, 2, 0, 40, 560, 560, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2022-10-02 21:16:36', '2022-10-02 21:16:36'),
	(416, 'posr-20221018-021013', 1, 6, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2022-10-18 15:10:13', '2022-11-15 16:34:11'),
	(421, 'posr-20221124-055716', 1, 6, 11, 2, 1, 1, 1, 0, 0, 1250, 1250, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1250, NULL, NULL, '2022-11-24 18:57:16', '2022-11-24 18:57:16'),
	(422, 'posr-20221124-062601', 9, 2, 11, 1, 5, 1, 1, 0, 18.78, 144, 144, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2022-11-24 19:26:01', '2022-11-24 19:26:01'),
	(423, 'posr-20221124-062653', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2022-11-24 19:26:53', '2022-11-24 19:26:53'),
	(424, 'posr-20221211-025325', 1, 6, 11, 2, 1, 3, 3, 0, 18.78, 286, 286, 10, 28.6, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 286, NULL, NULL, '2022-12-11 15:53:25', '2022-12-11 15:53:25'),
	(425, 'sr-20221224-121541', 1, NULL, 1, 1, 1, 1, 1, 0, 18.78, 144, 144, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 144, 'test', 'test', '2022-12-24 00:15:41', '2022-12-27 21:32:48'),
	(432, 'sr-20221227-095618', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 7500000, 7500000, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-12-27 00:00:00', '2022-12-27 21:56:18'),
	(433, 'sr-20221227-104254', 41, NULL, 21, 1, 1, 1, 1, 0, 0, 144000, 144000, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 144000, NULL, NULL, '2022-12-27 22:42:54', '2023-01-03 21:22:31');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Dumping structure for table warungkms.stock_counts
CREATE TABLE IF NOT EXISTS `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.stock_counts: ~3 rows (approximately)
/*!40000 ALTER TABLE `stock_counts` DISABLE KEYS */;
INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
	(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 13:49:39', '2019-02-28 13:49:39'),
	(4, 'scr-20220202-083105', 1, '2', NULL, 1, 'partial', '20220202-083105.csv', NULL, NULL, 0, '2022-02-02 21:31:05', '2022-02-02 21:31:05'),
	(5, 'scr-20221012-122735', 1, '4', '3', 1, 'partial', '20221012-122735.csv', '20221012-123133.csv', NULL, 1, '2022-10-12 13:27:35', '2022-10-12 13:55:38');
/*!40000 ALTER TABLE `stock_counts` ENABLE KEYS */;

-- Dumping structure for table warungkms.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.suppliers: ~5 rows (approximately)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Electronic City', 'globaltouch.jpg', 'Pt Maju Mundur', NULL, 'ec@gmail.com', '231231', 'Jl. Jalan Aja', 'Jakarta', NULL, NULL, 'Indonesia', 1, '2018-05-13 05:06:34', '2022-12-27 13:33:56'),
	(2, 'test', 'lion.jpg', 'lion', NULL, 'lion@gmail.com', '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-30 06:59:41', '2018-05-30 07:00:06'),
	(3, 'Best', NULL, 'techbd', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'Indonesia', 1, '2018-07-20 11:34:17', '2018-07-20 11:34:17'),
	(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', NULL, 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', NULL, NULL, 'bd', 0, '2018-09-01 11:30:07', '2018-09-01 11:37:20'),
	(5, 'sadman', NULL, 'anda boda', 'dsa', 'asd@dsa.com', '3212313', 'dadas', 'sdad', 'Other', '1312', 'Australia', 0, '2020-06-22 16:48:33', '2020-06-22 16:48:52');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table warungkms.taxes
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.taxes: ~5 rows (approximately)
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'vat@10', 10, 1, '2018-05-12 16:58:30', '2019-03-02 18:46:10'),
	(2, 'vat@15', 15, 1, '2018-05-12 16:58:43', '2018-05-28 06:35:05'),
	(3, 'test', 6, 0, '2018-05-28 06:32:54', '2018-05-28 06:34:44'),
	(4, 'vat 20', 20, 1, '2018-09-01 07:58:57', '2018-09-01 07:58:57'),
	(5, 'vat@11', 11, 1, '2022-12-29 00:32:06', '2022-12-29 00:32:06');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;

-- Dumping structure for table warungkms.transfers
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.transfers: ~7 rows (approximately)
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
	(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 18:17:10', '2018-12-25 05:16:55'),
	(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, NULL, NULL, '2019-12-05 20:55:04', '2019-12-05 21:09:42'),
	(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, NULL, 1000, NULL, NULL, '2020-01-22 13:30:58', '2020-01-22 13:30:58'),
	(10, 'tr-20201008-012735', 9, 1, 1, 2, 1, 1, 32, 352, 0, 352, NULL, NULL, '2020-10-08 14:27:35', '2020-10-08 14:29:35'),
	(11, 'tr-20201018-061708', 9, 1, 1, 2, 1, 1, 0, 1, NULL, 1, NULL, NULL, '2020-10-18 19:17:08', '2020-10-18 19:17:08'),
	(12, 'tr-20201024-090146', 1, 1, 2, 1, 1, 10, 4500, 34500, NULL, 34500, NULL, NULL, '2020-10-24 10:01:46', '2020-10-24 10:01:46'),
	(21, 'tr-20220309-114411', 1, 1, 1, 2, 1, 6, 0, 600, 0, 600, NULL, 'jhjkjk\r\njhkjhkhk\r\njjkjkhkhkh', '2022-03-06 01:00:00', '2022-06-05 13:37:31');
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;

-- Dumping structure for table warungkms.units
CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.units: ~11 rows (approximately)
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 09:27:46', '2018-08-18 04:41:53'),
	(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 16:57:05', '2022-10-19 12:33:46'),
	(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 16:57:45', '2022-11-24 17:29:30'),
	(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 16:58:07', '2018-05-28 06:20:57'),
	(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-28 06:20:20', '2018-05-28 06:20:25'),
	(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 07:49:26', '2018-06-25 07:49:26'),
	(8, '20', 'ni33', 8, '*', 1, 0, '2018-08-01 05:35:51', '2018-08-01 05:40:54'),
	(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 07:06:28', '2018-09-01 07:06:28'),
	(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 10:40:29', '2019-03-02 18:53:29'),
	(11, 'inch', 'Inch', NULL, '*', 1, 1, '2022-06-07 17:42:40', '2022-06-07 17:42:40'),
	(12, 'pza', 'pza', NULL, '*', 1, 1, '2022-10-15 22:42:19', '2022-10-15 22:42:19');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;

-- Dumping structure for table warungkms.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.users: ~16 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', '$2y$10$L8qt9gdGJ1TjR2kqm7ex/OC2WfnZrL3yvhrQOWN5vw3B4d3Eagimu', 'O73oU1RFXzJThrw1KvuqhxRANFY391eLXo72MgXKUzkD6NdBzksNnFjkiS5X', '12112', 'lioncoders', 1, NULL, NULL, 1, 0, '2018-06-02 10:24:15', '2022-12-03 14:30:46'),
	(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, NULL, NULL, 1, 1, '2018-06-14 05:00:31', '2020-11-05 14:06:51'),
	(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, NULL, NULL, 0, 1, '2018-06-23 10:05:33', '2018-06-23 10:13:45'),
	(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-25 05:35:49', '2018-07-02 08:07:39'),
	(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'Fw6HQ0A7pb7r75qpLJXSO71A1Uxryx64q99fl5K80bkbTuc9qSWUyFuneKxB', '3123', NULL, 4, 5, 1, 1, 0, '2018-07-02 08:08:08', '2018-10-24 04:41:13'),
	(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, NULL, NULL, 0, 0, '2018-09-08 06:44:48', '2018-09-08 06:44:48'),
	(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 09:47:56', '2018-10-23 09:10:56'),
	(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 07:48:37', '2019-03-06 11:59:49'),
	(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 07:08:31', '2019-03-03 11:02:29'),
	(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', NULL, '1212', 'Digital image', 5, NULL, NULL, 1, 0, '2020-11-09 07:07:16', '2020-11-09 07:07:16'),
	(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', NULL, '2222', 'modon company', 5, NULL, NULL, 1, 0, '2020-11-13 14:12:08', '2020-11-13 14:12:08'),
	(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', NULL, '+8801111111101', 'lioncoders', 5, NULL, NULL, 1, 0, '2020-11-15 13:14:58', '2020-11-15 13:14:58'),
	(31, 'mbs', 'mbs@gmail.com', '$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK', NULL, '2121', NULL, 4, 1, 2, 0, 0, '2021-12-29 13:40:22', '2021-12-29 13:40:22'),
	(39, 'staffadmin', 'staff@staff.com', '$2y$10$AZlNBqsbfzlVLL6faTvyieVji7kbERXH1GX8lr1NaJwixeuhznCkW', NULL, '444555', NULL, 4, 5, 2, 1, 0, '2022-09-14 11:37:21', '2022-12-29 14:39:54'),
	(40, 'novajar', 'novajar@gmail.com', '$2y$10$L8qt9gdGJ1TjR2kqm7ex/OC2WfnZrL3yvhrQOWN5vw3B4d3Eagimu', NULL, '123123123', NULL, 1, NULL, NULL, 1, 0, '2022-12-19 08:22:24', '2022-12-19 08:26:29'),
	(41, 'moko', 'moko@mailinator.com', '$2y$10$fqAI4S9GDM9RobUFgtHVD.70pIIc.PUZMULf5y.7tVMB4WYCmIVRW', NULL, '1234567890', NULL, 6, 1, 1, 1, 0, '2022-12-22 12:31:13', '2022-12-22 12:31:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table warungkms.variants
CREATE TABLE IF NOT EXISTS `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.variants: ~28 rows (approximately)
/*!40000 ALTER TABLE `variants` DISABLE KEYS */;
INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Medium', '2019-11-21 14:03:04', '2019-11-24 15:43:52'),
	(3, 'Small', '2019-11-21 14:03:04', '2019-11-24 15:43:52'),
	(5, 'Large', '2019-11-24 13:07:20', '2019-11-24 15:44:56'),
	(9, 'a', '2020-05-18 23:44:14', '2020-05-18 23:44:14'),
	(11, 'b', '2020-05-18 23:53:49', '2020-05-18 23:53:49'),
	(12, 'variant 1', '2020-09-27 13:08:27', '2020-09-27 13:08:27'),
	(13, 'variant 2', '2020-09-27 13:08:27', '2020-09-27 13:08:27'),
	(15, 's', '2020-11-16 13:09:33', '2022-08-09 13:02:12'),
	(16, 'm', '2020-11-16 13:09:33', '2022-08-09 13:02:12'),
	(17, 'L', '2020-11-16 13:09:33', '2020-11-16 13:09:33'),
	(18, 's/red', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(19, 's/black', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(20, 'm/red', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(21, 'm/black', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(22, 'l/red', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(23, 'l/black', '2022-07-25 20:54:50', '2022-07-25 20:54:50'),
	(24, 's/blue', '2022-08-03 12:25:19', '2022-08-03 12:25:19'),
	(25, 'm/blue', '2022-08-03 12:25:20', '2022-08-03 12:25:20'),
	(26, 'l/blue', '2022-08-03 12:25:20', '2022-08-03 12:25:20'),
	(27, 's/green', '2022-08-06 12:54:37', '2022-08-06 12:54:37'),
	(28, 'm/green', '2022-08-06 12:54:37', '2022-08-06 12:54:37'),
	(29, 'l/green', '2022-08-06 12:54:37', '2022-08-06 12:54:37'),
	(30, 'xl/red', '2022-08-08 21:02:07', '2022-08-08 21:02:07'),
	(31, 'xl/blue', '2022-08-08 21:02:07', '2022-08-08 21:02:07'),
	(32, 'xl/green', '2022-08-08 21:02:07', '2022-08-08 21:02:07'),
	(33, 'red', '2022-09-11 13:56:55', '2022-09-11 13:56:55'),
	(34, 'black', '2022-09-11 13:56:55', '2022-09-11 13:56:55'),
	(35, 'blue', '2022-09-11 13:56:55', '2022-09-11 13:56:55');
/*!40000 ALTER TABLE `variants` ENABLE KEYS */;

-- Dumping structure for table warungkms.warehouses
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table warungkms.warehouses: ~4 rows (approximately)
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Koperasi Mandiri Sejahtera', '(021) 8303671', NULL, 'Jl. Guntur No. 20, Guntur Setia Budi\r\nJakarta Selatan, 12980', 1, '2018-05-12 14:51:44', '2022-12-29 14:56:43'),
	(2, 'warehouse 2', '1234', NULL, 'boropul, chittagong', 0, '2018-05-12 15:09:03', '2022-12-25 23:19:53'),
	(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 07:14:23', '2018-05-30 07:14:47'),
	(6, 'gudam', '2121', '', 'gazipur', 0, '2018-09-01 05:53:26', '2018-09-01 05:54:48');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

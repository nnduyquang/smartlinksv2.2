-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 02:26 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartlinksv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_TD` tinyint(1) NOT NULL DEFAULT '1',
  `account_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `campaign_is_pause` tinyint(1) NOT NULL DEFAULT '0',
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2017-08-26 05:56:05', '2017-08-26 05:56:05'),
(2, 'User', '2017-08-26 05:56:05', '2017-08-26 05:56:05'),
(3, 'Tin Tức', '2017-08-26 06:06:08', '2017-08-26 06:06:08'),
(4, 'Nhân Viên', '2017-08-26 18:21:15', '2017-08-26 18:21:15'),
(5, 'Cấu Hình', '2017-08-27 04:06:10', '2017-08-27 04:06:10'),
(7, 'Page', '2018-01-12 02:04:40', '2018-01-12 02:04:40'),
(8, 'Post', '2018-01-12 02:04:40', '2018-01-12 02:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(54) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `name`, `path`, `level`, `template`, `parent_id`, `description`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `page_id`, `order`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Trang', 'trang', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2018-01-26 03:16:05', '2018-01-26 03:16:05'),
(2, 'Tin Tức', 'tin-tuc', 0, 'tintuc.index', NULL, '<p>\r\n	Chuyên Trang Tổng Hợp Tin Tức Digital Marketing\r\n</p>', 'images/uploads/images/Page/gt_1.jpg', 'Chuyên Trang Tổng Hợp Tin Tức Digital Marketing', 'Chuyên Trang Tổng Hợp Tin Tức Digital Marketing', NULL, 6, 1, 1, '2018-01-26 03:16:22', '2018-04-01 09:23:33'),
(3, 'Tuyển Dụng', 'tuyen-dung', 0, 'tuyendung.index', NULL, '<p>\r\n	Tuyển Dụng\r\n</p>', 'images/uploads/images/Page/tuyendung_1.png', 'Tuyển Dụng', 'Tuyển Dụng', 'Tuyển Dụng', 4, 1, 1, '2018-01-26 03:16:31', '2018-04-01 11:01:36'),
(4, 'Hỏi Đáp', 'hoi-dap', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2018-01-26 03:16:38', '2018-01-26 03:16:38'),
(5, 'Hỏi Đáp Google Adwords', 'hoi-dap-google-adwords', 1, 'hoidap.index', 4, NULL, 'images/uploads/images/Page/gt_1.jpg', NULL, NULL, NULL, 8, 1, 1, '2018-01-26 03:17:02', '2018-04-01 09:32:49'),
(6, 'Hỏi Đáp Thiết Kế Website', 'hoi-dap-thiet-ke-website', 1, 'hoidap.index', 4, NULL, 'images/uploads/images/Page/gt_1.jpg', NULL, NULL, NULL, 7, 1, 1, '2018-01-26 03:59:54', '2018-04-01 09:32:56'),
(7, 'Dịch Vụ', 'dich-vu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2018-04-01 08:15:42', '2018-04-01 08:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'email-receive', 'yenvtn.sml@gmail.com', 'Cấu Hình Email Nhận Báo Giá', 1, 1, '2017-08-26 06:53:20', '2017-12-13 02:03:12'),
(2, 'email-sender-subject', 'Re:Công Ty TNHH Truyền Thông Và Đầu Tư Smartlinks', 'Cấu Hình Subject Gửi Khách Hàng', 2, 1, '2017-08-26 06:53:20', '2017-08-26 07:20:55'),
(3, 'email-sender-from', 'Smartlinks', 'Cấu Hình From Gửi Khách Hàng', 3, 1, '2017-08-26 06:53:21', '2017-08-26 07:20:55'),
(4, 'email-receive-subject', 'BÁO GIÁ MỚI TỪ KHÁCH HÀNG', 'Cấu Hình Subject Nhận Báo Giá', 4, 1, '2017-08-26 06:53:21', '2017-08-26 07:20:55'),
(5, 'email-receive-from', 'Smartlinks', 'Cấu Hình From Nhận Báo Giá', 5, 1, '2017-08-26 06:53:21', '2017-08-26 07:20:55'),
(6, 'email-signatures', '<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">-- </span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">__________________________________________________________________</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt"> </span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">V&otilde; Thị Ngọc Yến</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">Nh&acirc;n Vi&ecirc;n Kinh Doanh</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">__________________________________________________________________</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt"> </span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">C&ocirc;ng Ty TNHH Truyền Th&ocirc;ng V&agrave; Đầu Tư Smartlinks</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">Địa chỉ: 20/13 Nguyễn Trường Tộ, P.12, Quận 4, TPHCM</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">Mobile: (+84) 911.177.131</span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">Email: <a href="mailto:yenvtn.sml@gmail.com" style="color:blue; text-decoration:underline" target="_blank">yenvtn.sml@gmail.com</a></span></pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n\r\n&nbsp;</pre>\r\n\r\n<pre style="margin-left:0cm; margin-right:0cm">\r\n<span style="font-size:10pt">Website: <a href="http://smartlinks.vn" style="color:blue; text-decoration:underline" target="_blank">http://smartlinks.vn</a></span></pre>', 'Cấu Hình Chữ Ký', 7, 1, '2017-08-26 06:53:21', '2017-12-13 02:03:12'),
(7, 'email-sender-content', '<h1 style="margin-left:0cm; margin-right:0cm"><span style="font-size:24pt">Ch&uacute;ng T&ocirc;i Đ&atilde; Nhận Được Mail, Xin Ch&acirc;n Th&agrave;nh Cảm Ơn</span></h1>', 'Cấu Hình Nội Dung Gửi Khách Hàng', 6, 1, '2017-08-26 06:53:21', '2017-12-13 02:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_skype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_duty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_note` longtext COLLATE utf8mb4_unicode_ci,
  `emp_order` int(11) NOT NULL DEFAULT '1',
  `emp_is_work` tinyint(1) NOT NULL DEFAULT '1',
  `emp_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_name`, `emp_phone`, `emp_email`, `emp_skype`, `emp_duty`, `emp_note`, `emp_order`, `emp_is_work`, `emp_image`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Quang', '0907.468.264', 'nnduyquang@gmail.com', 'nnduyquang', 'Chuyên Viên Kỹ Thuật', '<p>\r\n	Đẹp Trai\r\n</p>', 4, 1, 'images/uploads/images/Emps/2.jpg', '2017-08-27 03:09:40', '2018-01-15 16:14:54'),
(2, 'Ms. Thư', '0914.348.131', 'info@smartlinks.vn', 'athunguyen.dn', 'Tư Vấn Chiến Lược Marketing', '<p>\r\n	Đẹp l&agrave; được\r\n</p>', 3, 1, 'images/uploads/images/Emps/1.jpg', '2017-08-27 03:12:42', '2018-01-15 16:15:18'),
(3, 'Ms. Yến', '0911.177.131', 'yenvtn.sml@gmail.com', 'sale02_slm', 'Phụ Trách Quảng Cáo', NULL, 1, 1, 'images/uploads/images/Emps/4.jpg', '2017-08-30 02:23:01', '2018-01-15 16:15:41'),
(4, 'Ms. Trang', '0911.332.131', 'trangnh.sml@gmail.com', 'sale01_slm', 'Phụ Trách Website', NULL, 2, 1, 'images/uploads/images/Emps/3.jpg', '2017-08-30 02:26:25', '2018-01-15 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_end` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_final` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_End` tinyint(1) NOT NULL DEFAULT '0',
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `keyword_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `path`, `level`, `order`, `parent_id`, `content_id`, `type`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Dịch Vụ', 'dich-vu', 0, 1, NULL, 0, 1, 1, '2018-03-01 03:44:06', '2018-03-03 13:29:52'),
(2, 'Hỏi Đáp', 'hoi-dap', 0, 2, NULL, 0, 1, 1, '2018-03-01 03:45:03', '2018-03-03 14:41:28'),
(3, 'Hỏi Đáp Thiết Kế Website', 'hoi-dap-thiet-ke-website', 1, 1, 2, 6, 2, 1, '2018-03-01 03:48:09', '2018-03-03 15:12:59'),
(5, 'Google Adwords', 'google-adwords', 1, 6, 1, 13, 1, 1, '2018-03-02 04:24:52', '2018-03-03 14:23:40'),
(6, 'Youtube Ads', 'youtube-ads', 1, 3, 1, 1, 1, 1, '2018-03-02 04:25:57', '2018-03-03 14:24:25'),
(7, 'Facebook Ads', 'facebook-ads', 1, 4, 1, 15, 1, 1, '2018-03-02 04:27:36', '2018-03-03 14:23:55'),
(8, 'Thiết Kế Website', 'thiet-ke-website', 1, 5, 1, 14, 1, 1, '2018-03-02 04:29:54', '2018-03-03 14:23:48'),
(9, 'Hỏi Đáp Google Adwords', 'hoi-dap-google-adwords', 1, 2, 2, 5, 2, 1, '2018-03-02 06:29:25', '2018-03-03 15:12:44'),
(11, 'Tư Vấn Chiến Lược Marketing', 'tu-van-chien-luoc-marketing', 1, 1, 1, 0, 1, 1, '2018-03-02 09:24:50', '2018-03-03 14:27:00'),
(14, 'Thiết Kế Logo', 'thiet-ke-logo', 1, 2, 1, 3, 1, 0, '2018-03-02 11:55:37', '2018-03-03 14:25:13'),
(16, 'Tin Tức', 'tin-tuc', 0, 2, NULL, 2, 2, 1, '2018-03-02 15:13:02', '2018-03-03 15:36:05'),
(26, 'Báo Giá', 'bao-gia', 0, 4, NULL, 16, 1, 1, '2018-03-04 04:31:52', '2018-03-04 05:09:40'),
(27, 'Tuyển Dụng', 'tuyen-dung', 0, 5, NULL, 3, 2, 1, '2018-03-04 05:01:53', '2018-03-04 05:15:15'),
(28, 'Liên Hệ', 'lien-he', 0, 6, NULL, 17, 1, 1, '2018-03-04 05:05:36', '2018-03-05 03:00:00');

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
(3, '2017_08_26_112215_create_entrust_setup_tables', 1),
(4, '2017_08_26_130321_create_news_table', 2),
(5, '2017_08_26_131015_create_configs_table', 3),
(8, '2017_08_27_011825_create_employees_table', 4),
(9, '2017_08_27_105513_create_sliders_table', 5),
(10, '2017_08_26_130321_create_posts_table', 6),
(11, '2017_09_28_080614_create_category_posts_table', 7),
(12, '2017_10_18_083008_create_accounts_table', 8),
(13, '2017_10_18_083200_create_campaigns_table', 8),
(14, '2017_10_18_083648_create_keywords_table', 8),
(15, '2017_10_18_085841_create_histories_table', 8),
(16, '2017_12_12_143147_create_menus_table', 9),
(17, '2017_12_12_143904_edit_posts_table', 10);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2017-08-26 05:57:45', '2017-08-26 05:57:45'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2017-08-26 05:57:46', '2017-08-26 05:57:46'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2017-08-26 05:57:46', '2017-08-26 05:57:46'),
(9, 'posts-list', 'Xem Toàn Bộ Tin Tức', 'Được Xem Toàn Bộ Tin Tức', 3, '2017-08-26 06:06:44', '2017-08-26 06:06:44'),
(10, 'posts-create', 'Tạo Tin Tức Mới', 'Được Tin Tức Mới', 3, '2017-08-26 06:06:44', '2017-08-26 06:06:44'),
(11, 'posts-edit', 'Cập Nhật Tin Tức', 'Được Cập Nhật Tin Tức', 3, '2017-08-26 06:06:44', '2017-08-26 06:06:44'),
(12, 'posts-delete', 'Xóa Tin Tức', 'Được Xóa Tin Tức', 3, '2017-08-26 06:06:44', '2017-08-26 06:06:44'),
(13, 'emp-list', 'Xem Toàn Bộ Nhân Viên', 'Được Xem Toàn Bộ Nhân Viên', 4, '2017-08-26 18:23:46', '2017-08-26 18:23:46'),
(14, 'emp-create', 'Thêm Mới Nhân Viên', 'Được Thêm Mới Nhân Viên', 4, '2017-08-26 18:23:46', '2017-08-26 18:23:46'),
(15, 'emp-edit', 'Cập Nhật Thông Tin Nhân VIên', 'Được Cập Nhật Thông Tin Nhân VIên', 4, '2017-08-26 18:23:46', '2017-08-26 18:23:46'),
(16, 'emp-delete', 'Xóa Nhân Viên', 'Được Xóa Nhân Viên', 4, '2017-08-26 18:23:46', '2017-08-26 18:23:46'),
(17, 'config-list', 'Toàn Quyền Cấu Hình', 'Được Toàn Quyền Cấu Hình', 5, '2017-08-27 04:06:43', '2017-08-27 04:06:43'),
(18, 'config-create', 'Thêm Mới Cấu Hình', 'Được Thêm Mới Cấu Hình', 5, '2017-08-27 04:06:43', '2017-08-27 04:06:43'),
(19, 'config-edit', 'Cập Nhật Cấu Hình', 'Được Cập Nhật Cấu Hình', 5, '2017-08-27 04:06:44', '2017-08-27 04:06:44'),
(20, 'config-delete', 'Xóa Cấu Hình', 'Được Xóa Cấu Hình', 5, '2017-08-27 04:06:44', '2017-08-27 04:06:44'),
(25, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 7, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(26, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 7, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(27, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 7, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(28, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 7, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(29, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Viết', 8, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(30, 'post-create', 'Thêm Mới Viết', 'Được Thêm Mới Viết', 8, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(31, 'post-edit', 'Cập Nhật Viết', 'Được Cập Nhật Viết', 8, '2018-01-12 02:06:44', '2018-01-12 02:06:44'),
(32, 'post-delete', 'Xóa Viết', 'Được Xóa Viết', 8, '2018-01-12 02:06:44', '2018-01-12 02:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(54) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `template`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `post_type`, `isActive`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Youtube Ads', 'youtube-ads', '<p>\r\n	Youtube Ads\r\n</p>', '<p style="line-height:1.5">\r\n	Theo số liệu thống kê thì mỗi tháng có hơn 1 tỷ người dung, dành ra 6 tỷ giờ để xem video trên Youtube. Thu hút hàng triệu lượt xem nên Youtube đã trở thành một trong những thị trường hấp dẫn của các nhà đầu tư quảng cáo và các doanh nghiệp muốn tăng thị phần của mình bằng cách đăng quảng cáo trên youtube. Ngoài ra, hơn một nửa số lượt xem video trên Youtube là đến từ các thiết bị di động. Điều này cho thấy có rất nhiều khách hàng tiềm năng đối với các doanh nghiệp.<br>\r\n	Và Youtube là một mạng xã hội video trực tuyến lớn nhất thế giới và là trang tìm kiếm lớn thứ 2 sau Google.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2>\r\n	<span style="font-size:22px"><strong>Lợi ích của&nbsp;quảng cáo trên Youtube trong kinh doanh.</strong></span>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Quảng cáo trên youtube chính là cầu nối giữa nhà quảng cáo, doanh nghiệp và người xem.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Giúp kết nối với khách hàng tiềm năng theo cách độc đáo và đa dạng.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Doanh nghiệp có thể chia sẻ thông tin, lợi ích của sản phẩm hoặc dịch vụ mang lại.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Tạo chiến dịch trên quảng cáo youtube chỉ trong ít phút.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Tiếp cận đúng đối tượng, tiết kiệm và hiệu quả.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong><em>Youtube Video Ads (Qu</em></strong><strong><em>ả</em></strong><strong><em>ng cáo trong video c</em></strong><strong><em>ủ</em></strong><strong><em>a Youtube)</em></strong><em>&nbsp;</em><strong>bao g</strong><strong>ồ</strong><strong>m:</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>1. YouTube Homepage (Quảng cáo hiển thị trên trang chủ YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Quảng cáo xuất hiện ngay trang chủ Youtube rất bắt mắt và thu hút người xem, có tính tương tác cao trong 24h. Người xem dễ nhìn thấy quảng cáo nên có lượt xem, tỉ lệ nhấp chuột cao và tùy chọn điều chỉnh không giới hạn đồng thời có thể tiếp thị lại.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" class="visible-xs-block" src="http://smartlinks.vn/images/uploads/images/Page/yt_1.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>2. YouTube Video Ads (Quảng cáo trong video của YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Định dạng&nbsp;<strong>Trueview In-Stream,</strong>&nbsp;quảng cáo được phát trước giúp bạn tiếp cận người dùng khi họ xem video nhưng người dùng chỉ có thể bỏ qua sau 5 giây quảng cáo. Nhà quảng cáo chỉ phải trả tiền sau 30 giây hoặc khi kết thúc video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_2.jpg" style="height:100%; width:100%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Non-skippable(không thể bỏ qua)</strong>&nbsp;là dạng quảng cáo xuất hiện trên các trang YouTube và các wesbstie thuộc hệ thống Display của Google có hỗ trợ quảng cáo video.&nbsp;Người dùng không thể bỏ qua quảng cáo.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_3.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Preroll Ads</strong>&nbsp;là hình thức quảng cáo xuất hiện không chỉ trên YouTube mà còn những trang embed(nhúng) video từ YouTube. Người dùng không thể bỏ qua quảng cáo cho đến hết thời gian mặc định.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_4.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Select(lựa chọn)</strong>&nbsp;là dạng Quảng cáo xuất hiện trên YouTube và các website nhúng link video từ YouTube, trong đó người dùng có thể bỏ qua quảng cáo.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_5.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>3. YouTube Display Ads (Quảng cáo hiển thị trên YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong><em>TrueView In-Display on&nbsp;Watch page&nbsp;</em></strong>là dạng&nbsp;<strong>quảng cáo YouTube</strong>&nbsp;xuất hiện bên cạnh một video khi bạn xem. Nhà quảng cáo phải trả tiền khi người dùng ấn vào và xem video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_6.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Còn<em>&nbsp;</em><em><strong>TrueView In-Display on Search Page</strong></em><strong>&nbsp;</strong>thì xuất hiện khi người dùng tìm kiếm, nhà quảng cáo phải trả tiền khi người dùng ấn vào và xem video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_7.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Standard Display</strong>&nbsp; xuất hiện bên cạnh một video khi bạn xem hoặc tìm kiếm trên YouTube. Nhà quảng cáo phải trả tiền khi người dùng ấn vào banner quảng cáo, link đích có thể là YouTube channel, video hoặc website của bạn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_8.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Video (Overlay)</strong>&nbsp;xuất hiện trong luồng khi bạn xem một video. Nhà quảng cáo phải trả tiền khi người dùng ấn vào banner quảng cáo, link đích có thể là YouTube channel, video hoặc website của bạn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_9.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>4.YouTube Brand Channel&nbsp;</strong>là mạng xã hội giúp doanh nghiệp lưu trữ và truyền tải video đến đông đảo khách hàng, với giao diện tùy chỉnh một cách chuyên nghiệp và đẳng cấp tạo nét cá tính riêng. Quảng cáo này có chi phí rất cao.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_10.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>5. Quảng bá với GDN</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Hover to Play</strong>&nbsp;là hệ&nbsp;thống&nbsp;trang&nbsp;xuất&nbsp;hiện trên GDN&nbsp;network (Bao gồm YouTube và xuất hiện dạng banner).\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_11.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Hover to Expand</strong>&nbsp;xuất hiện tại các vị trí cho phép đặt quảng cáo của các trang thuộc GDN, với thời lượng tối đa 4 phút (tốt nhất trong 30 giây).\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Click to Expand</strong>&nbsp;có vị&nbsp;trí&nbsp;xuất&nbsp;hiện banner xuất hiện tại các vị trí cho phép đặt quảng cáo của các trang thuộc GDN, cũng có thời lượng tối đa 4 phút (tốt nhất trong 30 giây). &nbsp; &nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<em>Để được tư vấn sâu hơn, cụ thể hơn, bạn có thể liên lạc với chúng tôi.</em>\r\n</p>', 'dichvu.common.index', 'images/uploads/images/Page/youtube_banner.jpg', 'Youtube Ads', '<p>\r\n	Youtube Ads\r\n</p>', NULL, 1, 1, 1, '2018-01-12 03:27:27', '2018-01-18 03:32:32'),
(2, 'Giới Thiệu', 'gioi-thieu', '<p>\r\n	Giới Thiệu\r\n</p>', '<h2>\r\n	<span style="font-size:22px"><span style="color:#1f45a8">GIỚI THIỆU VỀ SMARTLINKS</span></span>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	SmartLinks tự hào khi được đánh giá là một đơn vị tuy còn non trẻ nhưng biết &ldquo;đi tắt đón đầu công nghệ&rdquo; để mang đến những thành công ngoài mong đợi cho khách hàng trong các lĩnh vực truyền thông trực tuyến.<br>\r\n	SmartLinks biết cách khai thác các thế mạnh của khoa học công nghệ để đưa ra các &ldquo;giải pháp marketing online&rdquo; hiệu quả phù hợp cho từng giai đoạn phát triển của doanh nghiệp với từng mặt hàng cụ thể nhắm đến khách hàng mục tiêu khác nhau của doanh nghiệp, mang đến những thành công không chỉ ở việc làm gia tăng được doanh số bán hàng, xây dựng và quảng bá thương hiệu, hình ảnh doanh nghiệp mà còn giúp doanh nghiệp khai thác triệt để&nbsp;khách hàng tiềm năng của mình.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2>\r\n	<span style="font-size:22px"><span style="color:#1f45a8">SMARTLINKS MANG ĐẾN CHO DOANH NGHIỆP&hellip;</span></span>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Không chỉ báo giá thông thường, SmartLinks sẽ giúp doanh nghiệp nghiên cứu vị thế của mình trên thị trường &amp; xu hướng của người dùng trước khi xây dựng kế hoạch quảng cáo trực tuyến chi tiết và hiệu quả.<br>\r\n	Chúng tôi sẽ tư vấn chi tiết chiến dịch quảng cáo, thời gian triển khai, lựa chọn kênh quảng cáo và xây dựng thông điệp quảng cáo phù hợp với mục tiêu. Chúng tôi cũng sẽ giúp doanh nghiệp theo dõi và tối ưu hóa quảng cáo hàng ngày, gửi báo cáo theo tuần, theo tháng nhằm mang lại hiệu quả cao nhất cho doanh nghiệp.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Smart Links đã biết phát huy thế mạnh và khai thác triệt để các thành tựu công nghệ đem đến thành công cho khách hàng, SmartLinks đã khẳng định khả năng chăm sóc chu đáo cho các khách hàng trong nước, được khách hàng tin tưởng và đánh giá rất cao.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Giới Thiệu', '<p>\r\n	Giới Thiệu\r\n</p>', NULL, 1, 1, 1, '2018-01-16 04:17:26', '2018-01-23 04:13:09'),
(3, 'Thiết Kế Logo', 'thiet-ke-logo', '<p>\r\n	Thiết Kế Logo\r\n</p>', '<p style="line-height:1.5">\r\n	Logo là hình ảnh đại diện cho thương hiệu của bạn, nó là hình ảnh đầu tiên làm khách hàng liên tưởng tới công ty bạn. Logo là biểu tượng sản phẩm qua hình vẽ, hoa văn, kiểu chữ hoặc một dấu hiệu đặc biệt nào đó để xây dựng sự nhận biết của khách hàng về thương hiệu, sản phẩm, dịch vụ của công ty bạn.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><strong>TẠI SAO PHẢI&nbsp; THIẾT KẾ LOGO?</strong></span>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Làm khách hàng ấn tượng và nhớ đến công ty, sản phẩm và dịch vụ của bạn.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Thể hiện tầm nhìn, sức mạnh và tăng giá trị thương hiệu của bạn.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p style="line-height:1.5">\r\n	Logo không chỉ là một sản phẩm đồ họa, thiết kế logo đòi hỏi những hiểu biết sâu sắc về lĩnh vực kinh doanh và chiến lược thương hiệu.Vì vậy Logo cần được thiết kế ấn tượng, khác biệt nhưng đơn giản và tinh tế, &nbsp;tập trung thể hiện những giá trị tinh túy và cốt lõi nhất và truyền tải thông điệp của thương hiệu đến khách hàng. Giúp cho công ty bạn tăng lợi thế cạnh tranh với các công ty đối thủ.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><strong>DỊCH VỤ THIẾT KẾ LOGO CHUYÊN NGHIỆP CỦA SMARTLINKS MANG ĐẾN CHO BẠN.</strong></span>\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Một logo truyền tải được sứ mệnh kinh doanh của bạn: Bất kể lĩnh vực kinh doanh của bạn có phức tạp và khó diễn giải đến đâu, chúng tôi sẽ giúp bạn truyền tải những thông điệp của mình qua logo một cách đơn giản tinh tế và sâu sắc nhất.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Một logo được nhận biết tức thì bởi khách hàng mục tiêu của bạn: Dựa trên yêu cầu và mong muốn của quý khách hàng, chúng tôi sẽ đem đến cho bạn những tác phẩm độc đáo, khác &nbsp;biệt nhưng đơn giản, dễ nhớ và gần gũi tạo cho khách hàng của bạn nhiều ấn tượng sâu sắc và đánh dấu thương hiệu trong tâm trí khách hàng.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	​\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	​<span style="color:#1f45a8"><strong>LÝ DO BẠN LỰA CHỌN DỊCH VỤ THIẾT KẾ CỦA &nbsp;</strong><em><strong>SMARTLINKS</strong></em></span>\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chúng tôi có một đội ngũ thiết kế và marketing giỏi, năng động, sáng tạo đã được đào tạo bài bản và có nhiều năm kinh nghiệm.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chúng tôi luôn cố gắng và nhiệt tình để mang lại cho khách hàng những sản phẩm truyền thông tốt nhất trong việc phát triển thương hiệu.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chi phí hợp lý với những sản phẩm nhận được.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Và chúng tôi mong muốn góp phần vào thành công của quý doanh nghiệp. Bởi sự thành công của quý doanh nghiệp là niềm tự hào cho chính chúng tôi.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><em><strong>Xin vui lòng liên hệ với chúng tôi để được sự hỗ trợ tốt nhất!</strong></em></span>\r\n</p>', 'dichvu.common.index', 'images/uploads/images/Page/logo-design.jpg', 'Thiết Kế Logo', '<p>\r\n	Thiết Kế Logo\r\n</p>', NULL, 1, 1, 1, '2018-01-17 02:33:17', '2018-01-18 03:32:48'),
(4, 'Tuyển Dụng', 'tuyen-dung', '<p>\r\n	Chuyên Trang Tuyển Dụng Công Ty Smartlinks\r\n</p>', '<p>\r\n	Chuyên Trang Tuyển Dụng Công Ty Smartlinks\r\n</p>', NULL, 'images/uploads/images/Page/tuyendung_1.png', 'Tuyển Dụng', '<p>\r\n	Tuyển Dụng\r\n</p>', NULL, 1, 1, 1, '2018-01-17 09:34:20', '2018-01-19 01:41:49'),
(5, 'Tuyển Dụng Nhân Viên Kinh Doanh Marketing', 'tuyen-dung-nhan-vien-kinh-doanh-marketing', '<p>\r\n	Tuyển Dụng Nhân Viên Kinh Doanh Marketing\r\n</p>', '<table border="1" cellpadding="1" cellspacing="1" class="table-style" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span style="font-size:18px;"><strong><span style="color:#1f45a8;">CÔNG TY TNHH TRUYỀN THÔNG VÀ ĐẦU TƯ SMARTLINKS</span></strong></span>\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Thu nhập:</strong>&nbsp;5-15 triệu\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Kinh nghiệm:</strong>&nbsp;1 năm\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Trình độ:</strong>&nbsp;Cao đẳng\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Tỉnh/Thành phố:</strong>&nbsp;Việc làm Hồ Chí Minh\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Ngành nghề:</strong>&nbsp;Bán hàng, Kinh doanh, Quảng cáo/Marketing/PR\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Số lượng tuyển dụng:</strong>&nbsp;10\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Giới tính:</strong>&nbsp;Nữ\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Tính chất công việc:</strong>&nbsp;Giờ hành chính\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Hình thức làm việc:</strong>&nbsp;Nhân viên chính thức\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" class="table-style" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" style="text-align: center;">\r\n				<span style="font-size:18px;"><strong><span style="color:#1f45a8;">THÔNG TIN TUYỂN DỤNG</span></strong></span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Mô Tả</span></strong>\r\n			</td>\r\n			<td colspan="2">\r\n				&nbsp;- Tìm kiếm khách hàng có nhu cầu quảng bá thương hiệu, tăng doanh thu qua kênh trực tuyến cụ thể Dịch vụ Quảng Cáo Google Adwords<br>\r\n				&nbsp;- Tư vấn về sản phẩm mà khách hàng quan tâm, Triển khai chiến dịch quảng cáo Google Adword <span style="font-family:">&nbsp;</span><br>\r\n				<span style="font-family:">&nbsp;- Sàng lọc danh sách khách hàng (được CTY cung cấp)</span><br>\r\n				<span style="font-family:">&nbsp;- Gọi điện thoại tư vấn dịch vụ, đưa ra giải pháp chiến lược tốt nhất cho KH.</span><br>\r\n				<span style="font-family:">&nbsp;- Phối hợp với bộ phận kỹ thuật để đem lại dịch vụ tốt nhất cho khách hàng.</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Yêu Cầu</span></strong>\r\n			</td>\r\n			<td>\r\n				<span style="font-family:">&nbsp;- Nhận sinh viên mới ra trường vào đào tạo làm việc.</span><br>\r\n				<span style="font-family:">&nbsp;- Không cần kinh nghiệm, được đào tạo trong môi trường chuyên nghiệp.</span><br>\r\n				<span style="font-family:">&nbsp;- Ưu tiên các bạn kinh nghiệm, bằng cấp liên quan tới ngành kinh doanh, tài chính...(Trung cấp, cao đẳng, đại học...)</span><br>\r\n				<span style="font-family:">&nbsp;- Có kỹ năng sử dụng máy tính tốt và khả năng tìm kiếm internet.</span><br>\r\n				<span style="font-family:">&nbsp;- Ngoại hình ưa nhìn , giọng nói dễ nghe.</span><br>\r\n				<span style="font-family:">&nbsp;- Kỹ năng giao tiếp tốt.</span><br>\r\n				<span style="font-family:">&nbsp;- Nhanh nhẹn, sáng tạo trong công việc</span><br>\r\n				<span style="font-family:">&nbsp;- Khả năng làm việc nhóm và độc lập cao.</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Quyền Lợi</span></strong>\r\n			</td>\r\n			<td>\r\n				<span style="font-family:">&nbsp;- Chương trình training thường xuyên giúp bạn luôn tự tin trong môi trường làm việc năng động.</span><br>\r\n				<span style="font-family:">&nbsp;- Được tạo điều kiện phát huy hết khả năng của bản thân.</span><br>\r\n				<span style="font-family:">&nbsp;- Ghi nhận và thưởng xứng đáng thành quả kinh doanh của bạn</span><br>\r\n				<span style="font-family:">&nbsp;- Hưởng đầy đủ các chế độ theo quy định của luật lao động</span><br>\r\n				<span style="font-family:">&nbsp;- </span>Thu nhập từ 05 - 15tr hoặc <strong>KHÔNG GIỚI HẠN TÙY THEO KHẢ NĂNG CỦA BẠN</strong> (bao gồm lương cứng và thưởng hoa hồng theo thành tích)<br>\r\n				<span style="font-family:">&nbsp;- Nghỉ: Thứ 7, CN&nbsp;</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Hồ Sơ</span></strong>\r\n			</td>\r\n			<td>\r\n				&nbsp;- Đơn xin việc.<br>\r\n				&nbsp;- Sơ yếu lý lịch.<br>\r\n				&nbsp;- Các bằng cấp có liên quan.<br>\r\n				Gửi CV về email liên hệ bên dưới<br>\r\n				<span style="font-family:">Mail: info@smartlinks.vn - : 028 66830091 (Ms.Trang) </span><br>\r\n				<span style="font-family:">Website: www.smartlinks.vn</span><br>\r\n				<span style="font-family:">Địa chỉ phỏng vấn:Thuỷ Anh Office, Lầu 7, 20/13 Nguyễn Trường Tộ, P12, Quận 4, TP HCM.</span>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, 'images/uploads/images/Page/Marketing.jpg', 'Tuyển Dụng Nhận Viên Kinh Doanh Marketing', '<p>\r\n	Tuyển Dụng Nhân Viên Kinh Doanh Marketing\r\n</p>', NULL, 3, 1, 1, '2018-01-19 01:33:09', '2018-01-19 01:42:00'),
(6, 'Tin Tức', 'tin-tuc', '<p>\r\n	Chuyên Trang Tổng Hợp Tin Tức Digital Marketing\r\n</p>', '<p>\r\n	Chuyên Trang Tổng Hợp Tin Tức Digital Marketing\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Chuyên Trang Tổng Hợp Tin Tức Digital Marketing', '<p>\r\n	Chuyên Trang Tổng Hợp Tin Tức Digital Marketing\r\n</p>', NULL, 1, 1, 1, '2018-01-29 08:26:30', '2018-01-29 08:26:30'),
(7, 'Hỏi Đáp Thiết Kế Website', 'hoi-dap-thiet-ke-website', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về Thiết Kế Website\r\n</p>', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về Thiết Kế Website\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Chuyên Trang Giải Đáp Thắc Mắc Về Thiết Kế Website', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về Thiết Kế Website\r\n</p>', NULL, 1, 1, 1, '2018-01-29 08:29:23', '2018-01-29 08:31:17'),
(8, 'Hỏi Đáp Google Adwords', 'hoi-dap-google-adwords', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về&nbsp;Hỏi Đáp Google Adwords\r\n</p>', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về&nbsp;Hỏi Đáp Google Adwords\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Chuyên Trang Giải Đáp Thắc Mắc Về Hỏi Đáp Google Adwor', '<p>\r\n	Chuyên Trang Giải Đáp Thắc Mắc Về&nbsp;Hỏi Đáp Google Adwords\r\n</p>', NULL, 1, 1, 1, '2018-01-29 08:31:48', '2018-01-29 08:31:48'),
(9, 'Tại sao quảng cáo của tôi không hiển thị trong kết quả tìm kiếm dù máy khác có hiển thị', 'tai-sao-quang-cao-cua-toi-khong-hien-thi-trong-ket-qua-tim-kiem-du-may-khac-co-hien-thi', '<p>\r\n	Tại sao quảng cáo của tôi không hiển thị trong kết quả tìm kiếm dù máy khác có hiển thị\r\n</p>', '<p>\r\n	Nguyên nhân do theo chính sách của Google, nếu bạn liên tục tìm kiếm doanh nghiệp của mình trên Google nhưng không nhấp chuột vào quảng cáo, thì bạn có thể ngừng thấy quảng cáo sau một thời gian. Đó là vì hệ thống của Google nhận ra máy tính của bạn và ngừng hiển thị quảng cáo mà hệ thống cho rằng bạn không quan tâm.\r\n</p>\r\n\r\n<p>\r\n	Link chính sách:&nbsp;<a href="https://support.google.com/adwords/express/answer/1692504?hl=vi">https://support.google.com/adwords/express/answer/1692504?hl=vi</a>\r\n</p>\r\n\r\n<p>\r\n	Phương án khắc phục tạm thời:\r\n</p>\r\n\r\n<p>\r\n	- Tạm ngừng việc tìm kiếm quảng cáo\r\n</p>\r\n\r\n<p>\r\n	- Xóa cookie trình duyệt website\r\n</p>\r\n\r\n<p>\r\n	Sau khi thử các phương án trên nhưng vẫn không hiển thị quảng cáo, nghĩa là Google đã đánh giá IP máy bạn không phù hợp với nội dung quảng cáo. Bạn có thể reset modem để lấy lại IP khác kiểm tra quảng cáo hoặc dùng 3G để thay đổi IP\r\n</p>\r\n\r\n<p>\r\n	Link thảo luận của chuyên gia Google:&nbsp;<a href="https://productforums.google.com/forum/#!topic/adwords-vi/L2fczBYaXIA">https://productforums.google.com/forum/#!topic/adwords-vi/L2fczBYaXIA</a>\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Tại sao quảng cáo của tôi không hiển thị trong kết quả', '<p>\r\n	Tại sao quảng cáo của tôi không hiển thị trong kết quả tìm kiếm dù máy khác có hiển thị\r\n</p>', NULL, 5, 1, 1, '2018-01-30 02:40:56', '2018-01-30 02:40:56'),
(10, 'Trong trường hợp tôi kiểm tra từ khóa dẫn đến mất hiển thị thì khách hàng khi tìm kiếm có bị giống như vậy không?', 'trong-truong-hop-toi-kiem-tra-tu-khoa-dan-den-mat-hien-thi-thi-khach-hang-khi-tim-kiem-co-bi-giong-nhu-vay-khong', '<p>\r\n	Trong trường hợp tôi kiểm tra từ khóa dẫn đến mất hiển thị thì khách hàng khi tìm kiếm có bị giống như vậy không?\r\n</p>', '<p>\r\n	Đứng về phía khách hàng, khi&nbsp;đang có nhu cầu mua sản phẩm, thông thường họ chỉ cần tìm kiếm đôi lần là đã ra kết quả mình mong muốn, chứ không có thời gian tìm kiếm kiểm tra liên tục bộ tư khóa của tất cả sản phẩm. <a href="http://smartlinks.vn/dich-vu/google-adwords">Quảng cáo Google</a> chỉ mất hiển thị khi mình vi phạm chính sách tìm kiếm của Google (đã trả lời ở câu hỏi 1)\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Trong trường hợp tôi kiểm tra từ khóa dẫn đến mất hiển', '<p>\r\n	Trong trường hợp tôi kiểm tra từ khóa dẫn đến mất hiển thị thì khách hàng khi tìm kiếm có bị giống như vậy không?\r\n</p>', NULL, 5, 1, 1, '2018-01-30 02:46:14', '2018-01-30 03:12:18'),
(11, 'Quảng cáo Google Adword hiển thị tốt nhưng lượng đơn hàng về thấp hoặc không có?', 'quang-cao-google-adword-hien-thi-tot-nhung-luong-don-hang-ve-thap-hoac-khong-co', '<p>\r\n	Quảng cáo Google Adword hiển thị tốt nhưng lượng đơn hàng về thấp hoặc không có?\r\n</p>', '<p>\r\n	Mục đích của <a href="http://smartlinks.vn/dich-vu/google-adwords">quảng cáo Google</a> nói riêng và các hình thức quảng cáo khác nói chung là đem lại nguồn khách hàng tiếp cận đến <a href="http://smartlinks.vn/dich-vu/thiet-ke-website">website</a> hoặc <a href="http://smartlinks.vn/dich-vu/facebook-ads">fanpage</a> của khách hàng.\r\n</p>\r\n\r\n<p>\r\n	Như vậy công việc tiếp theo là nội dung (content) của trang đích có cung cấp thông tin hấp dẫn&nbsp;mà khách hàng đang cần hay không, theo thống kê của Google khách hàng có 3 phút để tham quan <a href="http://smartlinks.vn/dich-vu/thiet-ke-website">website</a> của doanh nghiệp, họ sẵn sàng rời đi nếu không có đủ thông tin mà họ quan tâm. Chưa kể các chỉ số phụ như&nbsp;<a href="http://smartlinks.vn/dich-vu/thiet-ke-website">website</a> đó phải có tốc độ load trang trong tầm 3s hoặc có tối ưu trên đa nền tảng hay không?\r\n</p>\r\n\r\n<p>\r\n	Nếu <a href="http://smartlinks.vn/dich-vu/thiet-ke-website">website</a> hoặc <a href="http://smartlinks.vn/dich-vu/facebook-ads">fanpage</a> của doanh nghiệp có thể đáp ứng tối thiểu những tiêu chí trên thì lượng đơn hàng đem về sẽ tăng 80%. Hoặc tốt nhất bạn nên <a href="http://smartlinks.vn/dich-vu/thiet-ke-website">thiết kế website</a> mới đáp ứng có tiêu chí mới nhất hiện nay\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Quảng cáo Google Adword hiển thị tốt nhưng lượng đơn h', '<p>\r\n	Quảng cáo Google Adword hiển thị tốt nhưng lượng đơn hàng về thấp hoặc không có?\r\n</p>', NULL, 5, 1, 1, '2018-01-30 02:54:22', '2018-01-30 03:14:55'),
(12, 'Tuyển Dụng Thực Tập Sinh Marketing', 'tuyen-dung-thuc-tap-sinh-marketing', '<p>\r\n	Tuyển Dụng Thực Tập Sinh Marketing\r\n</p>', '<table border="1" cellpadding="1" cellspacing="1" class="table-style" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<span style="font-size:18px;"><strong><span style="color:#1f45a8;">CÔNG TY TNHH TRUYỀN THÔNG VÀ ĐẦU TƯ SMARTLINKS</span></strong></span>\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Kinh nghiệm:</strong>&nbsp;Không cần kinh nghiệm\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Trình độ:</strong>&nbsp;Sinh viên năm 3, 4 hoặc đã tốt nghiệp\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Tỉnh/Thành phố:</strong>&nbsp;Việc làm Hồ Chí Minh\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Ngành nghề:</strong>&nbsp;Bán hàng, Kinh doanh, Quảng cáo/Marketing/PR\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Số lượng tuyển dụng:</strong>&nbsp;10\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Giới tính:</strong>&nbsp;Nữ\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Tính chất công việc:</strong>&nbsp;Bán thời gian / Giờ Hành Chính\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Hình thức làm việc:</strong>&nbsp;Nhân viên chính thức\r\n				</p>\r\n\r\n				<p>\r\n					<strong>Mức Lương:</strong> 1.000.000/tháng\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" class="table-style" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" style="text-align: center;">\r\n				<span style="font-size:18px;"><strong><span style="color:#1f45a8;">THÔNG TIN TUYỂN DỤNG</span></strong></span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Mô Tả</span></strong>\r\n			</td>\r\n			<td colspan="2">\r\n				&nbsp;- Tìm kiếm khách hàng có nhu cầu quảng bá thương hiệu, tăng doanh thu qua kênh trực tuyến cụ thể Dịch vụ Quảng Cáo Google Adwords<br>\r\n				&nbsp;- Tư vấn về sản phẩm mà khách hàng quan tâm, Triển khai chiến dịch quảng cáo Google Adword <span style="font-family:">&nbsp;</span><br>\r\n				<span style="font-family:">&nbsp;- Sàng lọc danh sách khách hàng (được CTY cung cấp)</span><br>\r\n				<span style="font-family:">&nbsp;- Gọi điện thoại tư vấn dịch vụ, đưa ra giải pháp chiến lược tốt nhất cho KH.</span><br>\r\n				<span style="font-family:">&nbsp;- Phối hợp với bộ phận kỹ thuật để đem lại dịch vụ tốt nhất cho khách hàng.</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Yêu Cầu</span></strong>\r\n			</td>\r\n			<td>\r\n				<span style="font-family:">&nbsp;- Nhận sinh viên mới ra trường vào đào tạo làm việc.</span><br>\r\n				<span style="font-family:">&nbsp;- Không cần kinh nghiệm, được đào tạo trong môi trường chuyên nghiệp.</span><br>\r\n				<span style="font-family:">&nbsp;- Có kỹ năng sử dụng máy tính tốt và khả năng tìm kiếm internet.</span><br>\r\n				<span style="font-family:">&nbsp;- Ngoại hình ưa nhìn , giọng nói dễ nghe.</span><br>\r\n				<span style="font-family:">&nbsp;- Kỹ năng giao tiếp tốt.</span><br>\r\n				<span style="font-family:">&nbsp;- Nhanh nhẹn, sáng tạo trong công việc</span><br>\r\n				<span style="font-family:">&nbsp;- Khả năng làm việc nhóm và độc lập cao.</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Quyền Lợi</span></strong>\r\n			</td>\r\n			<td>\r\n				<span style="font-family:">&nbsp;- Chương trình training thường xuyên giúp bạn luôn tự tin trong môi trường làm việc năng động.</span><br>\r\n				<span style="font-family:">&nbsp;- Được tạo điều kiện phát huy hết khả năng của bản thân.</span><br>\r\n				<span style="font-family:">&nbsp;- Ghi nhận và thưởng xứng đáng thành quả kinh doanh của bạn</span><br>\r\n				<span style="font-family:">&nbsp;- </span>Cơ hội thăng tiến lên các vị trí chính thức với mức lương và thu nhập thưởng hấp dẫn<br>\r\n				<span style="font-family:">&nbsp;- Nghỉ: Thứ 7, CN&nbsp;</span>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong><span style="color:#1f45a8;">Hồ Sơ</span></strong>\r\n			</td>\r\n			<td>\r\n				&nbsp;- Đơn xin việc.<br>\r\n				&nbsp;- Sơ yếu lý lịch.<br>\r\n				&nbsp;- Các bằng cấp có liên quan.<br>\r\n				Gửi CV về email liên hệ bên dưới<br>\r\n				<span style="font-family:">Mail: info@smartlinks.vn - : 028 66830091 (Ms.Trang) </span><br>\r\n				<span style="font-family:">Website: www.smartlinks.vn</span><br>\r\n				<span style="font-family:">Địa chỉ phỏng vấn:Thuỷ Anh Office, Lầu 7, 20/13 Nguyễn Trường Tộ, P12, Quận 4, TP HCM.</span>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, 'images/uploads/images/Page/Marketing.jpg', 'Tuyển Dụng Thực Tập Sinh Marketing', '<p>\r\n	Tuyển Dụng Thực Tập Sinh Marketing\r\n</p>', NULL, 3, 1, 1, '2018-02-22 12:30:27', '2018-02-22 12:30:27'),
(13, 'Google Adwords', 'google-adwords', '<p>\r\n	Google Adwords\r\n</p>', '<p>\r\n	Google Adwords\r\n</p>', 'dichvu.googleadwords.index', 'images/uploads/images/Page/gt_1.jpg', 'Google Adwords', '<p>\r\n	Google Adwords\r\n</p>', NULL, 1, 1, 1, '2018-03-03 13:41:00', '2018-03-03 13:41:00'),
(14, 'Thiết Kế Website', 'thiet-ke-website', '<p>\r\n	Thiết Kế Website\r\n</p>', '<p>\r\n	Thiết Kế Website\r\n</p>', 'dichvu.website.index', 'images/uploads/images/Page/gt_1.jpg', 'Thiết Kế Website', '<p>\r\n	Thiết Kế Website\r\n</p>', NULL, 1, 1, 1, '2018-03-03 13:46:00', '2018-03-03 13:46:00'),
(15, 'Facebook Ads', 'facebook-ads', '<p>\r\n	Facebook Ads\r\n</p>', '<p>\r\n	Facebook Ads\r\n</p>', 'dichvu.facebook.index', 'images/uploads/images/Page/gt_1.jpg', 'Facebook Ads', '<p>\r\n	Facebook Ads\r\n</p>', NULL, 1, 1, 1, '2018-03-03 14:15:22', '2018-03-03 14:15:22'),
(16, 'Báo Giá', 'bao-gia', '<p>\r\n	Báo Giá\r\n</p>', '<p>\r\n	Báo Giá\r\n</p>', 'baogia.baogia', 'images/uploads/images/Page/gt_1.jpg', 'Báo Giá', '<p>\r\n	Báo Giá\r\n</p>', NULL, 1, 1, 1, '2018-03-04 04:31:34', '2018-03-04 04:31:34'),
(17, 'Liên Hệ', 'lien-he', '<p>\r\n	Liên Hệ\r\n</p>', '<p>\r\n	Liên Hệ\r\n</p>', 'contact.contact1', 'images/uploads/images/Page/gt_1.jpg', 'Liên Hệ', '<p>\r\n	Liên Hệ\r\n</p>', NULL, 1, 1, 1, '2018-03-05 02:59:43', '2018-03-05 02:59:43'),
(18, 'Google Adwords', 'google-adwords', '<p>\r\n	Google Adwords\r\n</p>', '<p>\r\n	Google Adwords\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Google Adwords', '<p>\r\n	Google Adwords\r\n</p>', NULL, 7, 1, 1, '2018-04-01 08:17:44', '2018-04-01 08:17:44'),
(19, 'Thiết Kế Website', 'thiet-ke-website', '<p>\r\n	Thiết Kế Website\r\n</p>', '<p>\r\n	Thiết Kế Website\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Thiết Kế Website', '<p>\r\n	Thiết Kế Website\r\n</p>', NULL, 7, 1, 1, '2018-04-01 08:18:28', '2018-04-01 08:18:28'),
(20, 'Facebook Ads', 'facebook-ads', '<p>\r\n	Facebook Ads\r\n</p>', '<p>\r\n	Facebook Ads\r\n</p>', NULL, 'images/uploads/images/Page/gt_1.jpg', 'Facebook Ads', '<p>\r\n	Facebook Ads\r\n</p>', NULL, 7, 1, 1, '2018-04-01 08:19:12', '2018-04-01 08:19:12'),
(21, 'Youtube Ads', 'youtube-ads', '<p>\r\n	Youtube Ads\r\n</p>', '<p style="line-height:1.5">\r\n	Theo số liệu thống kê thì mỗi tháng có hơn 1 tỷ người dung, dành ra 6 tỷ giờ để xem video trên Youtube. Thu hút hàng triệu lượt xem nên Youtube đã trở thành một trong những thị trường hấp dẫn của các nhà đầu tư quảng cáo và các doanh nghiệp muốn tăng thị phần của mình bằng cách đăng quảng cáo trên youtube. Ngoài ra, hơn một nửa số lượt xem video trên Youtube là đến từ các thiết bị di động. Điều này cho thấy có rất nhiều khách hàng tiềm năng đối với các doanh nghiệp.<br>\r\n	Và Youtube là một mạng xã hội video trực tuyến lớn nhất thế giới và là trang tìm kiếm lớn thứ 2 sau Google.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2>\r\n	<span style="font-size:22px"><strong>Lợi ích của&nbsp;quảng cáo trên Youtube trong kinh doanh.</strong></span>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Quảng cáo trên youtube chính là cầu nối giữa nhà quảng cáo, doanh nghiệp và người xem.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Giúp kết nối với khách hàng tiềm năng theo cách độc đáo và đa dạng.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Doanh nghiệp có thể chia sẻ thông tin, lợi ích của sản phẩm hoặc dịch vụ mang lại.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Tạo chiến dịch trên quảng cáo youtube chỉ trong ít phút.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Tiếp cận đúng đối tượng, tiết kiệm và hiệu quả.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong><em>Youtube Video Ads (Qu</em></strong><strong><em>ả</em></strong><strong><em>ng cáo trong video c</em></strong><strong><em>ủ</em></strong><strong><em>a Youtube)</em></strong><em>&nbsp;</em><strong>bao g</strong><strong>ồ</strong><strong>m:</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>1. YouTube Homepage (Quảng cáo hiển thị trên trang chủ YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Quảng cáo xuất hiện ngay trang chủ Youtube rất bắt mắt và thu hút người xem, có tính tương tác cao trong 24h. Người xem dễ nhìn thấy quảng cáo nên có lượt xem, tỉ lệ nhấp chuột cao và tùy chọn điều chỉnh không giới hạn đồng thời có thể tiếp thị lại.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" class="visible-xs-block" src="http://smartlinks.vn/images/uploads/images/Page/yt_1.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>2. YouTube Video Ads (Quảng cáo trong video của YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Định dạng&nbsp;<strong>Trueview In-Stream,</strong>&nbsp;quảng cáo được phát trước giúp bạn tiếp cận người dùng khi họ xem video nhưng người dùng chỉ có thể bỏ qua sau 5 giây quảng cáo. Nhà quảng cáo chỉ phải trả tiền sau 30 giây hoặc khi kết thúc video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_2.jpg" style="height:100%; width:100%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Non-skippable(không thể bỏ qua)</strong>&nbsp;là dạng quảng cáo xuất hiện trên các trang YouTube và các wesbstie thuộc hệ thống Display của Google có hỗ trợ quảng cáo video.&nbsp;Người dùng không thể bỏ qua quảng cáo.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_3.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Preroll Ads</strong>&nbsp;là hình thức quảng cáo xuất hiện không chỉ trên YouTube mà còn những trang embed(nhúng) video từ YouTube. Người dùng không thể bỏ qua quảng cáo cho đến hết thời gian mặc định.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_4.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Stream Select(lựa chọn)</strong>&nbsp;là dạng Quảng cáo xuất hiện trên YouTube và các website nhúng link video từ YouTube, trong đó người dùng có thể bỏ qua quảng cáo.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_5.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>3. YouTube Display Ads (Quảng cáo hiển thị trên YouTube)</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong><em>TrueView In-Display on&nbsp;Watch page&nbsp;</em></strong>là dạng&nbsp;<strong>quảng cáo YouTube</strong>&nbsp;xuất hiện bên cạnh một video khi bạn xem. Nhà quảng cáo phải trả tiền khi người dùng ấn vào và xem video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_6.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	Còn<em>&nbsp;</em><em><strong>TrueView In-Display on Search Page</strong></em><strong>&nbsp;</strong>thì xuất hiện khi người dùng tìm kiếm, nhà quảng cáo phải trả tiền khi người dùng ấn vào và xem video.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_7.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Standard Display</strong>&nbsp; xuất hiện bên cạnh một video khi bạn xem hoặc tìm kiếm trên YouTube. Nhà quảng cáo phải trả tiền khi người dùng ấn vào banner quảng cáo, link đích có thể là YouTube channel, video hoặc website của bạn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_8.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>In-Video (Overlay)</strong>&nbsp;xuất hiện trong luồng khi bạn xem một video. Nhà quảng cáo phải trả tiền khi người dùng ấn vào banner quảng cáo, link đích có thể là YouTube channel, video hoặc website của bạn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_9.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>4.YouTube Brand Channel&nbsp;</strong>là mạng xã hội giúp doanh nghiệp lưu trữ và truyền tải video đến đông đảo khách hàng, với giao diện tùy chỉnh một cách chuyên nghiệp và đẳng cấp tạo nét cá tính riêng. Quảng cáo này có chi phí rất cao.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_10.jpg" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>5. Quảng bá với GDN</strong>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Hover to Play</strong>&nbsp;là hệ&nbsp;thống&nbsp;trang&nbsp;xuất&nbsp;hiện trên GDN&nbsp;network (Bao gồm YouTube và xuất hiện dạng banner).\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	<img alt="" src="http://smartlinks.vn/images/uploads/images/Page/yt_11.png" style="height:80%; width:80%">\r\n</p>\r\n\r\n<p style="text-align:center">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Hover to Expand</strong>&nbsp;xuất hiện tại các vị trí cho phép đặt quảng cáo của các trang thuộc GDN, với thời lượng tối đa 4 phút (tốt nhất trong 30 giây).\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<strong>Click to Expand</strong>&nbsp;có vị&nbsp;trí&nbsp;xuất&nbsp;hiện banner xuất hiện tại các vị trí cho phép đặt quảng cáo của các trang thuộc GDN, cũng có thời lượng tối đa 4 phút (tốt nhất trong 30 giây). &nbsp; &nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<em>Để được tư vấn sâu hơn, cụ thể hơn, bạn có thể liên lạc với chúng tôi.</em>\r\n</p>', NULL, 'images/uploads/images/Page/youtube_banner.jpg', 'Youtube Ads', '<p>\r\n	Youtube Ads\r\n</p>', NULL, 7, 1, 1, '2018-04-01 08:19:45', '2018-04-01 08:21:39'),
(22, 'Thiết Kế Logo', 'thiet-ke-logo', '<p>\r\n	Thiết Kế Logo\r\n</p>', '<p style="line-height:1.5">\r\n	Logo là hình ảnh đại diện cho thương hiệu của bạn, nó là hình ảnh đầu tiên làm khách hàng liên tưởng tới công ty bạn. Logo là biểu tượng sản phẩm qua hình vẽ, hoa văn, kiểu chữ hoặc một dấu hiệu đặc biệt nào đó để xây dựng sự nhận biết của khách hàng về thương hiệu, sản phẩm, dịch vụ của công ty bạn.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><strong>TẠI SAO PHẢI&nbsp; THIẾT KẾ LOGO?</strong></span>\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Làm khách hàng ấn tượng và nhớ đến công ty, sản phẩm và dịch vụ của bạn.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Thể hiện tầm nhìn, sức mạnh và tăng giá trị thương hiệu của bạn.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p style="line-height:1.5">\r\n	Logo không chỉ là một sản phẩm đồ họa, thiết kế logo đòi hỏi những hiểu biết sâu sắc về lĩnh vực kinh doanh và chiến lược thương hiệu.Vì vậy Logo cần được thiết kế ấn tượng, khác biệt nhưng đơn giản và tinh tế, &nbsp;tập trung thể hiện những giá trị tinh túy và cốt lõi nhất và truyền tải thông điệp của thương hiệu đến khách hàng. Giúp cho công ty bạn tăng lợi thế cạnh tranh với các công ty đối thủ.\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><strong>DỊCH VỤ THIẾT KẾ LOGO CHUYÊN NGHIỆP CỦA SMARTLINKS MANG ĐẾN CHO BẠN.</strong></span>\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Một logo truyền tải được sứ mệnh kinh doanh của bạn: Bất kể lĩnh vực kinh doanh của bạn có phức tạp và khó diễn giải đến đâu, chúng tôi sẽ giúp bạn truyền tải những thông điệp của mình qua logo một cách đơn giản tinh tế và sâu sắc nhất.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Một logo được nhận biết tức thì bởi khách hàng mục tiêu của bạn: Dựa trên yêu cầu và mong muốn của quý khách hàng, chúng tôi sẽ đem đến cho bạn những tác phẩm độc đáo, khác &nbsp;biệt nhưng đơn giản, dễ nhớ và gần gũi tạo cho khách hàng của bạn nhiều ấn tượng sâu sắc và đánh dấu thương hiệu trong tâm trí khách hàng.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	​\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	​<span style="color:#1f45a8"><strong>LÝ DO BẠN LỰA CHỌN DỊCH VỤ THIẾT KẾ CỦA &nbsp;</strong><em><strong>SMARTLINKS</strong></em></span>\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chúng tôi có một đội ngũ thiết kế và marketing giỏi, năng động, sáng tạo đã được đào tạo bài bản và có nhiều năm kinh nghiệm.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chúng tôi luôn cố gắng và nhiệt tình để mang lại cho khách hàng những sản phẩm truyền thông tốt nhất trong việc phát triển thương hiệu.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Chi phí hợp lý với những sản phẩm nhận được.\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p style="line-height:1.5">\r\n			Và chúng tôi mong muốn góp phần vào thành công của quý doanh nghiệp. Bởi sự thành công của quý doanh nghiệp là niềm tự hào cho chính chúng tôi.\r\n		</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style="line-height:1.5">\r\n	<span style="color:#1f45a8"><em><strong>Xin vui lòng liên hệ với chúng tôi để được sự hỗ trợ tốt nhất!</strong></em></span>\r\n</p>', NULL, 'images/uploads/images/Page/logo-design.jpg', 'Thiết Kế Logo', '<p>\r\n	Thiết Kế Logo\r\n</p>', NULL, 7, 1, 1, '2018-04-01 08:20:31', '2018-04-01 08:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2017-08-26 05:40:43', '2017-08-26 05:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_order` int(11) NOT NULL DEFAULT '1',
  `slider_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_order`, `slider_is_active`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'images/uploads/images/Slider/googleadwords.jpg', '2017-08-27 04:25:46', '2017-08-30 02:18:29'),
(2, 2, 1, 'images/uploads/images/Slider/google_adwords_html5_picture1.png', '2017-08-27 04:38:07', '2017-08-30 02:16:19');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$uM5fRQBa7zKsDAHP/Vaid.P7LihKYXlRZu.4QZeOou5.5HXrMglOW', 'hTHpzDWltpSNIiZJfX8Z7pXUJbUz6QdXUGmfzdE6DWgg2CEISYbcAmQjnFLi', '2017-08-26 05:22:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_account_id_foreign` (`account_id`);

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_campaign_id_foreign` (`campaign_id`),
  ADD KEY `histories_keyword_id_foreign` (`keyword_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `histories_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2023 lúc 04:40 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hatsstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CateName` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `CateName`, `Details`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mũ Nike', 'Mũ lưỡi trai', '1684065697_png-transparent-nike-logo-movement-brands-nike-removebg-preview.png', '2023-05-09 09:13:52', '2023-05-14 05:01:37'),
(2, 'Mũ MLB', 'Mũ lưỡi trai', '1684065678_imgbin-new-york-yankees-steakhouse-mlb-baseball-logos-and-uniforms-of-the-new-york-yankees-baseball-Yc4kh9XgpX6sYgE8ye4hGUFcR-removebg-preview.png', '2023-05-09 10:22:32', '2023-05-17 17:02:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_05_09_144239_products', 2),
(16, '2023_05_09_144620_category', 3),
(17, '2023_05_09_145349_user_login', 3),
(18, '2023_05_09_193603_create_roles_table', 4),
(19, '2023_05_09_202802_create_orders_products_table', 5),
(20, '2023_05_17_200048_create_orders_details_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProductId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `ProductId`, `OrderId`, `Quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 40, 3, '2023-05-17 13:24:39', '2023-05-17 13:24:39'),
(2, 2, 41, 1, '2023-05-17 13:25:39', '2023-05-17 13:25:39'),
(3, 2, 42, 2, '2023-05-17 13:33:25', '2023-05-17 13:33:25'),
(4, 3, 42, 1, '2023-05-17 13:33:25', '2023-05-17 13:33:25'),
(5, 10, 43, 1, '2023-05-17 15:53:30', '2023-05-17 15:53:30'),
(6, 10, 44, 1, '2023-05-17 15:53:49', '2023-05-17 15:53:49'),
(7, 2, 44, 1, '2023-05-17 15:53:49', '2023-05-17 15:53:49'),
(8, 3, 45, 2, '2023-05-17 19:38:07', '2023-05-17 19:38:07'),
(9, 2, 45, 2, '2023-05-17 19:38:07', '2023-05-17 19:38:07'),
(10, 3, 46, 1, '2023-05-18 09:44:15', '2023-05-18 09:44:15'),
(11, 2, 47, 1, '2023-05-18 13:48:23', '2023-05-18 13:48:23'),
(12, 2, 48, 1, '2023-05-18 13:49:38', '2023-05-18 13:49:38'),
(13, 2, 49, 1, '2023-05-18 14:45:01', '2023-05-18 14:45:01'),
(14, 2, 50, 2, '2023-05-18 14:46:36', '2023-05-18 14:46:36'),
(15, 1, 50, 1, '2023-05-18 14:46:36', '2023-05-18 14:46:36'),
(16, 2, 51, 3, '2023-05-18 14:51:26', '2023-05-18 14:51:26'),
(17, 1, 51, 1, '2023-05-18 14:51:26', '2023-05-18 14:51:26'),
(18, 3, 51, 1, '2023-05-18 14:51:26', '2023-05-18 14:51:26'),
(19, 4, 51, 1, '2023-05-18 14:51:26', '2023-05-18 14:51:26'),
(20, 2, 52, 4, '2023-05-18 15:01:25', '2023-05-18 15:01:25'),
(21, 1, 52, 1, '2023-05-18 15:01:25', '2023-05-18 15:01:25'),
(22, 3, 52, 1, '2023-05-18 15:01:25', '2023-05-18 15:01:25'),
(23, 4, 52, 1, '2023-05-18 15:01:25', '2023-05-18 15:01:25'),
(24, 2, 53, 4, '2023-05-18 15:03:42', '2023-05-18 15:03:42'),
(25, 1, 53, 1, '2023-05-18 15:03:42', '2023-05-18 15:03:42'),
(26, 3, 53, 1, '2023-05-18 15:03:42', '2023-05-18 15:03:42'),
(27, 4, 53, 1, '2023-05-18 15:03:42', '2023-05-18 15:03:42'),
(28, 8, 54, 1, '2023-05-18 19:31:37', '2023-05-18 19:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `TotalPay` varchar(500) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_products`
--

INSERT INTO `orders_products` (`id`, `user_id`, `TotalPay`, `Status`, `created_at`, `updated_at`) VALUES
(39, 10, '1111', 0, '2023-05-17 12:19:31', '2023-05-17 12:19:45'),
(40, 10, '1200000.00', 0, '2023-05-17 12:19:31', '2023-05-17 13:38:41'),
(41, 10, '400000.00', 0, '2023-05-17 12:19:31', '2023-05-17 13:38:41'),
(42, 10, '1300000.00', 0, '2023-05-17 13:33:25', '2023-05-17 13:38:41'),
(43, 10, '2800000', 0, '2023-05-17 15:53:30', '2023-05-17 15:54:00'),
(44, 10, '2800000', 0, '2023-05-17 15:53:49', '2023-05-17 15:54:00'),
(45, 10, '1800000.00', 1, '2023-05-17 19:38:07', '2023-05-17 19:38:07'),
(46, 12, '500000.00', 0, '2023-05-18 09:44:15', '2023-05-18 13:47:40'),
(47, 12, '400000.00', 0, '2023-05-18 13:48:23', '2023-05-18 13:48:42'),
(48, 12, '400000.00', 0, '2023-05-18 13:49:38', '2023-05-18 13:49:54'),
(49, 12, '400000.00', 0, '2023-05-18 14:45:01', '2023-05-18 14:45:21'),
(50, 12, '1000000.00', 0, '2023-05-18 14:46:36', '2023-05-18 14:50:17'),
(51, 12, '2150000.00', 0, '2023-05-18 14:51:26', '2023-05-18 14:51:40'),
(52, 12, '2550000.00', 0, '2023-05-18 15:01:25', '2023-05-18 15:01:37'),
(53, 12, '2550000.00', 0, '2023-05-18 15:03:42', '2023-05-18 15:03:54'),
(54, 13, '125000000.00', 1, '2023-05-18 19:31:37', '2023-05-18 19:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NameProducts` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Stock` int(11) NOT NULL,
  `isSeller` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `CateId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `NameProducts`, `Details`, `Price`, `Stock`, `isSeller`, `image`, `CateId`, `created_at`, `updated_at`) VALUES
(1, 'Mũ 1', '<p>Chi tiết sản phẩm 1</p><ul><li>dsadsa</li><li>dâsd</li></ul>', '200000', 100, 1, '1683672218_mens-new-era-green-los-ap.png', 1, '2023-05-09 08:56:29', '2023-05-18 11:38:54'),
(2, 'Mũ 2', 'Chi tiết sản phẩm 2', '400000', 100, 1, '1683672147_mens-new-era-navy-texas-rangers-2023-city-connect-.png', 1, '2023-05-09 08:56:55', '2023-05-09 15:42:27'),
(3, 'Mũ 3', 'Chi tiết sản phẩm 3', '500000', 100, 1, '1683674275_dri-fit-giannis-heritage86-basketball-cap-v8ptnv.jpg', 1, '2023-05-09 09:23:12', '2023-05-09 16:17:55'),
(4, 'Mũ 4', 'Chi tiết sản phẩm 4', '250000', 100, 2, '1683672228_mens-new-era-mint-san-diego-padres-2022-city-connect-59fifty-fitted-hat_pi4464000_ff_4464365-ac472b80ccac91e3b304_full.png', 1, '2023-05-09 09:26:47', '2023-05-09 15:43:48'),
(5, 'Mũ 5', 'Chi tiết sản phẩm 5', '400000', 100, 2, '1683672354_132.png', 1, '2023-05-09 09:28:08', '2023-05-09 15:45:54'),
(6, 'Mũ 6', 'Chi tiết sản phẩm 6', '450000', 100, 2, '1683672364_royal-atlanta-braves-2023-city-connect-59fifty-fitted-hat_ss5_p.png', 1, '2023-05-09 09:45:55', '2023-05-09 15:46:04'),
(7, 'Mũ 7', 'Chi tiết sản phẩm 7', '850000', 100, 2, '1683672371_mens-new-era-navy-new-york-yankees-game-authe.png', 1, '2023-05-09 09:46:16', '2023-05-09 15:46:11'),
(8, 'Mũ 8', 'Chi tiết sản phẩm 8', '125000000', 100, 2, '1683672507_sportswear-heritage-86-adjustable-cap-Hhj5Rr.jpg', 1, '2023-05-09 09:47:38', '2023-05-09 15:48:27'),
(9, 'Mũ 9', 'Chi tiết sản phẩm 9', '1000000', 100, 2, '1683672517_usmnt-heritage86-mens-adjustable-hat-bFtCK6.jpg', 1, '2023-05-09 10:14:28', '2023-05-09 15:48:37'),
(10, 'Chi tiết sản phẩm 101', 'Chi tiết sản phẩm 101', '1200000', 100, 1, '1683672527_lacrosse-campus-cap-R5BqC4.jpg', 2, '2023-05-09 15:38:24', '2023-05-17 10:23:25'),
(13, 'Test thêm sản phẩm', 'Test thêm sản phẩm', '123456', 123456, 1, '1684346596_imgbin-new-york-yankees-steakhouse-mlb-baseball-logos-and-uniforms-of-the-new-york-yankees-baseball-Yc4kh9XgpX6sYgE8ye4hGUFcR-removebg-preview.png', 1, '2023-05-17 11:03:16', '2023-05-17 11:03:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RoleName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `RoleName`, `created_at`, `updated_at`) VALUES
(1, 'User', '2023-02-01 04:32:31', '2023-02-26 06:39:43'),
(2, 'Admin', '2023-02-01 04:32:31', '2023-02-26 06:39:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlogin`
--

CREATE TABLE `userlogin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `PasswordUser` varchar(255) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userlogin`
--

INSERT INTO `userlogin` (`id`, `UserName`, `PasswordUser`, `FullName`, `PhoneNumber`, `Address`, `RoleId`, `created_at`, `updated_at`) VALUES
(1, 'user123', '$2y$10$KO..7gyK4LLEIR7R3N4axe9Rh9HDeWr75zoH0qa2zX..DBWbSGhHG', NULL, NULL, NULL, 1, '2023-05-09 12:34:31', '2023-05-09 12:34:31'),
(2, 'user1234', '$2y$10$3V0gbjCTUXh95rIHAUKYbuEf6nPKCwi8svM9VzLO2QEaEIfJ6lvH.', NULL, NULL, NULL, 1, '2023-05-09 12:45:22', '2023-05-09 12:45:22'),
(3, 'user12344', '$2y$10$kdLLULz1HN0iRHjPfryHd.ZQeCZah/E6hVoIQ/aYtZp58X3ZdiHH.', NULL, NULL, NULL, 1, '2023-05-09 12:49:53', '2023-05-09 12:49:53'),
(4, 'user123442', '$2y$10$qp1Ma/kRCHjVKmUI6vl0ie6BlzlZdwUucsL2IdMEjRmU40e3SVt76', NULL, NULL, NULL, 1, '2023-05-09 12:52:21', '2023-05-09 12:52:21'),
(5, 'user1234422', '$2y$10$l0Kvqk62Jqzi17CsRTnsiuxVFcELrHfqzJibGSybX8eDXShLifIrm', NULL, NULL, NULL, 1, '2023-05-09 13:00:08', '2023-05-09 13:00:08'),
(6, 'user123333', '$2y$10$eO4ZOYUoEcr8lMy5KzBvZuH7M4fJWOG2r6i3sp/6Xn0jDLoUarkkS', NULL, NULL, NULL, 1, '2023-05-13 11:27:46', '2023-05-13 11:27:46'),
(7, 'user896', '$2y$10$b2P1ILQDZFjgXCfxVFoEguu7KzZYIqK4C9ju1KJcq02MsKKtx5ESK', NULL, NULL, NULL, 1, '2023-05-13 11:27:56', '2023-05-13 11:27:56'),
(8, 'user8963', '$2y$10$QXRoRj3m7KQbZscgfXfyXuiqLW4/2hlnkPTZPiOPpUEKLRVeptaQe', NULL, NULL, NULL, 1, '2023-05-13 11:30:38', '2023-05-13 11:30:38'),
(9, 'banggiahung', '$2y$10$SpHanc8wiSdlQBsRMc38S.A90otE8VfqwTkNPGtg2Fq.xhvDa0Keu', NULL, NULL, NULL, 1, '2023-05-13 11:38:40', '2023-05-13 11:38:40'),
(10, 'giahung', '$2y$10$qUoQo6e7uQTraL.6sZ0l6.GYujgKi0WrZKJPRVV2zd9gRXy22m032', 'Bàng Gia Hùng', '0912689886', 'Hà Nội', 1, '2023-05-13 16:26:20', '2023-05-13 16:26:20'),
(11, 'banggiahung123', '$2y$10$wX16H1i8jPJLFZVsjWMhCepHy3Bw7I.sHMqbMlZ7Q7O6oZ4kVkT7u', 'banggiahung123@gmail.com', NULL, NULL, 1, '2023-05-17 14:05:02', '2023-05-17 14:05:02'),
(12, 'giahung123', '$2y$10$dbY/9PXn/D7NoB94qzYRDO370b8BZpfoCgrA664nQG/21MJxFKLLq', 'hùng', '091551674', 'email@gamil.com', 1, '2023-05-18 02:50:39', '2023-05-18 02:50:39'),
(13, 'admin', '$2y$10$xk0a0mEKCWmcvzN.lm/0ZOFHMsIVqNQ7Z2SqUNS7eWUx4Myr2PqQu', 'Bàng Gia Hùng', '976723536', 'Hà Nội', 2, '2023-05-18 19:08:06', '2023-05-18 19:08:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

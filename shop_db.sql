-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-05-06 12:38:22
-- 服务器版本： 10.4.27-MariaDB
-- PHP 版本： 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shop_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('fqUPeQndUC7uMxZ1nuSC', 'K5RjTl4XGSPWfttm4pw6', '12', '12', '12@gm', '12, 12, 12, 12 - 12', 'home', 'cash on delivery', 'qLDR8JIh9MRP5J6bDzxq', '20', '2', '2024-05-06', 'canceled'),
('jQENGj3VldzarUhOTe5D', 'K5RjTl4XGSPWfttm4pw6', '12', '12', '123@gm', '12, 12, 12, 12 - 12', 'home', 'cash on delivery', 'DG8Y1JZ0UPSHDercUdFw', '100', '1', '2024-05-06', 'canceled'),
('k0xFU1SZqtVsVN4p2GAD', 'K5RjTl4XGSPWfttm4pw6', '123', '123', '123@123', '123, 123, 1, 2 - 3', 'home', 'cash on delivery', 'DG8Y1JZ0UPSHDercUdFw', '100', '2', '2024-05-06', 'in progress'),
('ttVbnspxcMKP2Ay5sUDP', 'K5RjTl4XGSPWfttm4pw6', '123', '123', '123@123', '123, 123, 1, 2 - 3', 'home', 'cash on delivery', 'qLDR8JIh9MRP5J6bDzxq', '20', '2', '2024-05-06', 'in progress'),
('nMPN9pUMvNdy5dEZIEEi', 'K5RjTl4XGSPWfttm4pw6', '12354', '124123', '123@gm2', '123, 123, 1231, 23123 - 123', 'home', 'cash on delivery', 'DG8Y1JZ0UPSHDercUdFw', '100', '1', '2024-05-06', 'in progress'),
('kgwpzypVs081mBJ9kWBI', 'K5RjTl4XGSPWfttm4pw6', '1231', '23123', '12321@gw', '123, 123, 123, 123 - 123', 'home', 'cash on delivery', 'qLDR8JIh9MRP5J6bDzxq', '20', '1', '2024-05-06', 'in progress');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('qLDR8JIh9MRP5J6bDzxq', 'shoes', '20', 'yL15iOpNeFn8eL7eSURb.webp'),
('DG8Y1JZ0UPSHDercUdFw', 'smartphone', '100', 'g8UEcWLS9BaExJAzPxMG.webp'),
('Wsc1KuqMWPVAvEORGo8i', 't', '123', 'rCrnNO8jKJApLs6wcNcb.webp'),
('fFPCrswx8FiXZSVedtCO', 's', '20', 'nbUTDmNYL747rzzHYXk7.webp'),
('dipQG9jbooFDYYuFs7Hm', 'black bag', '100', 'obBLONvc4OkMlGXjaqmJ.webp'),
('y219WRKhUYAFPcGDks6c', 'bag', '125', '0FarFWkZagQkkGW3la38.webp'),
('2qXhbg50e3bflgPLhwOM', 'laptop', '1000', 'lOtzYTBnKbmFydzapOP9.webp'),
('ZGOSC2j3KmNEzKHdX1bL', 'white cycle', '100', '2tEotej2gTNCCMT4DTwM.webp'),
('2B4mEhAlIX5egR41Jb6N', 'cycle', '1000', 'WXnX519aRFl9Wr5pBBv3.webp'),
('gkcsQ8UVn3OWA6gzBETK', 'cycle', '200', '92zooPfwn0zHvOBWdp1x.webp'),
('htws6W0BBFXQb3N8kWCM', 'shoes', '125', 'lGrXeoM6M0DHFjWpdcAq.webp'),
('cAYx70od7sWrAB9daMYn', 'cyclesss', '123', 'HDRBWv5HxMPTRjsNy78g.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

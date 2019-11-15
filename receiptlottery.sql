-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.8-MariaDB
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `receiptlottery`
--

-- --------------------------------------------------------

--
-- 資料表結構 `award`
--

CREATE TABLE `award` (
  `id` int(3) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssp` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fp1` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fp2` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fp3` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr1` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr2` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr3` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `award`
--

INSERT INTO `award` (`id`, `year`, `month`, `ssp`, `sp`, `fp1`, `fp2`, `fp3`, `cr1`, `cr2`, `cr3`) VALUES
(1, 2019, '7', '45698621', '19614436', '96182420', '47464012', '62781818', '928', '899', ''),
(2, 2019, '5', '46356460', '56337787', '93339845', '83390355', '80431063', '984', '240', ''),
(3, 2020, '1', '4564', '4564', '45787', '3545', '13', '213', '01', '867');

-- --------------------------------------------------------

--
-- 資料表結構 `receipt`
--

CREATE TABLE `receipt` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `num` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `receipt`
--

INSERT INTO `receipt` (`id`, `year`, `month`, `num`, `money`) VALUES
(1, 2019, 9, '12345678', 56),
(2, 2019, 9, '23456789', 78),
(3, 2019, 9, '34567890', 180),
(4, 2019, 9, '12345789', 102),
(5, 2019, 10, '98765432', 450),
(6, 2019, 10, '87654321', 55),
(7, 2019, 10, '87965412', 100),
(8, 2019, 10, '23654789', 102),
(9, 2019, 11, '49617127', 315),
(10, 2019, 11, '69921553', 312),
(11, 2019, 11, '17671725', 744),
(12, 2019, 11, '50168354', 766),
(13, 2019, 11, '16794204', 154),
(14, 2019, 9, '99691436', 244),
(15, 2019, 9, '90585825', 344),
(16, 2019, 9, '61812034', 384),
(17, 2019, 9, '37589003', 156),
(18, 2019, 9, '84751504', 442),
(19, 2019, 9, '17195447', 47),
(20, 2019, 10, '48357113', 292),
(21, 2019, 10, '95155140', 27),
(22, 2019, 10, '33250824', 367),
(23, 2019, 10, '36750953', 45),
(24, 2019, 10, '90727866', 294),
(25, 2019, 10, '50367107', 19),
(26, 2019, 7, '40187892', 489),
(27, 2019, 7, '55511222', 152),
(28, 2019, 7, '91681642', 198),
(29, 2019, 7, '45698621', 368),
(30, 2019, 7, '23406860', 498),
(31, 2019, 7, '13569549', 25),
(32, 2019, 7, '76757201', 235),
(33, 2019, 7, '70926843', 440),
(34, 2019, 7, '29243284', 450),
(35, 2019, 7, '74873204', 100),
(36, 2019, 7, '21023565', 112),
(37, 2019, 7, '69931622', 375),
(38, 2019, 7, '15595894', 133),
(39, 2019, 7, '85977461', 279),
(40, 2019, 7, '22256860', 482),
(41, 2019, 7, '15152643', 113),
(42, 2019, 7, '87735950', 262),
(43, 2019, 7, '65205314', 469),
(44, 2019, 7, '66529316', 440),
(45, 2019, 7, '53687084', 427),
(46, 2019, 7, '62911501', 295),
(47, 2019, 7, '67424649', 183),
(48, 2019, 7, '81450655', 387),
(49, 2019, 7, '31615705', 299),
(50, 2019, 7, '45068981', 493),
(51, 2019, 8, '15001051', 910),
(52, 2019, 8, '53060145', 214),
(53, 2019, 8, '82269589', 499),
(54, 2019, 8, '73135948', 43),
(55, 2019, 8, '13115602', 345),
(56, 2019, 8, '17577512', 868),
(57, 2019, 8, '58850699', 196),
(58, 2019, 8, '67781818', 526),
(59, 2019, 8, '99009503', 245),
(60, 2019, 8, '70772835', 740);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `award`
--
ALTER TABLE `award`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 16 日 16:28
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_21`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bad_table`
--

CREATE TABLE `bad_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `bad_table`
--

INSERT INTO `bad_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(1, 1, 10, '2020-07-16 22:39:39'),
(16, 4, 12, '2020-07-16 22:46:02');

-- --------------------------------------------------------

--
-- テーブルの構造 `BMI`
--

CREATE TABLE `BMI` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `u_id` varchar(60) NOT NULL,
  `u_pw` varchar(60) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `height` varchar(30) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `bmi` int(4) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `BMI`
--

INSERT INTO `BMI` (`id`, `name`, `u_id`, `u_pw`, `mail`, `sex`, `grade`, `height`, `weight`, `bmi`, `dt`) VALUES
(1, '管理者', 'master', '0001', '', '00', '管理画面', 'ーー', 'ーー', 0, '0000-00-00 00:00:00'),
(2, 'テスト太郎', 'テスト太郎', '1111', '', 'men', '高校2年', '180', '68', 0, '2020-06-22 00:00:00'),
(7, 'ギニュー', 'ギニュー', 'gyunyu', '', '男性', '大学2年生', '190', '100', 0, '2020-06-25 14:52:11'),
(8, 'グルト', 'グルト', 'グルト', '', '女性', '大学1年生', '180.0', '80.0', 0, '2020-06-25 16:13:17'),
(9, '孫悟空', '悟空', 'ゴクウ', '', '男性', '一般の方', '181.0', '90.0', 0, '2020-06-25 21:18:53'),
(10, 'バータ', 'バータ', 'バタ', 'gyunyu@ooo', '男性', '大学2年生', '230', '170.0', 32, '2020-07-08 10:54:09'),
(28, '桜木花道', '花道', '1031', 'hana@lll', '男性', '高校2年生', '188', '85', 24, '2020-07-08 11:01:56'),
(36, 'フリーザ', 'フリーザ', '55', 'deth@ball', '男性', '一般の方', '159', '80', 32, '2020-07-08 11:18:56'),
(39, 'ヤムチャ', 'ヤムチャ', 'loga', 'huhu@ken', '男性', '中学3年生', '197', '92', 24, '2020-07-11 13:16:21'),
(40, 'クリリン', 'クリリン', 'hananasi', 'kien@zan', '男性', '高校2年生', '165', '84', 31, '2020-07-09 22:33:10'),
(41, 'testtest', 'test', '1111', 'takechan@mail.com', '男性', '中学3年生', '180', '65', 20, '2020-07-16 11:54:42'),
(42, 'ヤムチャ', '', '', '', '男性', '', '197', '92', 24, '2020-07-16 22:04:07');

-- --------------------------------------------------------

--
-- テーブルの構造 `boys`
--

CREATE TABLE `boys` (
  `id` int(12) NOT NULL,
  `name` varchar(60) NOT NULL,
  `old` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(8, 3, 11, '2020-07-11 15:48:03'),
(12, 3, 10, '2020-07-11 16:28:44'),
(13, 3, 12, '2020-07-11 16:33:26'),
(24, 1, 10, '2020-07-16 14:13:26'),
(33, 1, 9, '2020-07-16 20:18:14'),
(45, 4, 10, '2020-07-16 22:52:45');

-- --------------------------------------------------------

--
-- テーブルの構造 `newBMI_table`
--

CREATE TABLE `newBMI_table` (
  `id` int(12) NOT NULL,
  `newHeight` int(15) NOT NULL,
  `newWeight` int(15) NOT NULL,
  `newBMI` int(15) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `newBMI_table`
--

INSERT INTO `newBMI_table` (`id`, `newHeight`, `newWeight`, `newBMI`, `created_at`) VALUES
(1, 160, 60, 21, '2020-07-16 22:01:49');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(10, '焼肉屋へ', '2020-07-17', '2020-07-11 15:07:12', '2020-07-16 23:10:41'),
(12, '昼飯食べたい', '2020-07-30', '2020-07-11 15:35:28', '2020-07-11 15:35:28'),
(14, '皿洗い', '2020-07-18', '2020-07-16 23:09:35', '2020-07-16 23:09:35');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'テスト太郎', '123456', 0, 0, '2020-07-04 16:08:30', '2020-07-04 16:08:30'),
(2, 'バータ', '1234', 0, 0, '2020-07-04 16:31:42', '2020-07-04 16:31:42'),
(3, 'q', 'q', 0, 0, '2020-07-11 15:03:37', '2020-07-11 15:03:37'),
(4, '', '', 0, 0, '2020-07-16 20:18:19', '2020-07-16 20:18:19');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bad_table`
--
ALTER TABLE `bad_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `BMI`
--
ALTER TABLE `BMI`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `boys`
--
ALTER TABLE `boys`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `newBMI_table`
--
ALTER TABLE `newBMI_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `bad_table`
--
ALTER TABLE `bad_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルのAUTO_INCREMENT `BMI`
--
ALTER TABLE `BMI`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- テーブルのAUTO_INCREMENT `boys`
--
ALTER TABLE `boys`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- テーブルのAUTO_INCREMENT `newBMI_table`
--
ALTER TABLE `newBMI_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Ноя 07 2013 г., 13:45
-- Версия сервера: 5.5.32
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `janken`
--
CREATE DATABASE IF NOT EXISTS `janken` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `janken`;

-- --------------------------------------------------------

--
-- Структура таблицы `attacks`
--

CREATE TABLE IF NOT EXISTS `attacks` (
  `bt_bt_id` int(11) DEFAULT NULL,
  `av1_sign_id` int(11) DEFAULT NULL,
  `av2_sign_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

CREATE TABLE IF NOT EXISTS `avatars` (
  `av_id` int(11) DEFAULT NULL,
  `av_login` char(50) DEFAULT NULL,
  `av_name` char(50) DEFAULT NULL,
  `password_hash` char(100) DEFAULT NULL,
  `sign_sign_id` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `avatars`
--

INSERT INTO `avatars` (`av_id`, `av_login`, `av_name`, `password_hash`, `sign_sign_id`, `strength`) VALUES
(1, 'murphy', 'Мэрфи', '1111', 4, 3),
(2, 'adora', 'Адора', '2345', 1, 3),
(3, 'push', 'Пушист', '3456', 3, 3),
(4, 'player4', 'Игрок4', '1111', 5, 3),
(5, 'player5', 'Игрок5', '1111', 1, 3),
(6, 'player6', 'Игрок6', '1111', 2, 3),
(7, 'player7', 'Игрок7', '1111', 3, 3),
(8, 'player8', 'Игрок8', '1111', 4, 3),
(9, 'player9', 'Игрок9', '1111', 5, 3),
(10, 'player10', 'Игрок10', '1111', 1, 3),
(11, 'player11', 'Игрок11', '1111', 2, 3),
(12, 'player12', 'Игрок12', '1111', 3, 3),
(13, 'player13', 'Игрок13', '1111', 4, 3),
(14, 'player14', 'Игрок14', '1111', 5, 3),
(15, 'player15', 'Игрок15', '1111', 1, 3),
(16, 'player16', 'Игрок16', '1111', 2, 3),
(17, 'player17', 'Игрок17', '1111', 3, 3),
(18, 'player18', 'Игрок18', '1111', 4, 3),
(19, 'player19', 'Игрок19', '1111', 5, 3),
(20, 'player20', 'Игрок20', '1111', 1, 3),
(21, 'player21', 'Игрок21', '1111', 2, 3),
(22, 'player22', 'Игрок22', '1111', 3, 3),
(23, 'player23', 'Игрок23', '1111', 4, 3),
(24, 'player24', 'Игрок24', '1111', 5, 3),
(25, 'player25', 'Игрок25', '1111', 1, 3),
(26, 'player26', 'Игрок26', '1111', 2, 3),
(27, 'player27', 'Игрок27', '1111', 3, 3),
(28, 'player28', 'Игрок28', '1111', 4, 3),
(29, 'player29', 'Игрок29', '1111', 5, 3),
(30, 'player30', 'Игрок30', '1111', 1, 3),
(31, 'player31', 'Игрок31', '1111', 2, 3),
(32, 'player32', 'Игрок32', '1111', 3, 3),
(33, 'player33', 'Игрок33', '1111', 4, 3),
(34, 'player34', 'Игрок34', '1111', 5, 3),
(35, 'player35', 'Игрок35', '1111', 1, 3),
(36, 'player36', 'Игрок36', '1111', 2, 3),
(37, 'player37', 'Игрок37', '1111', 3, 3),
(38, 'player38', 'Игрок38', '1111', 4, 3),
(39, 'player39', 'Игрок39', '1111', 5, 3),
(40, 'player40', 'Игрок40', '1111', 1, 3),
(41, 'player41', 'Игрок41', '1111', 2, 3),
(42, 'player42', 'Игрок42', '1111', 3, 3),
(43, 'player43', 'Игрок43', '1111', 4, 3),
(44, 'player44', 'Игрок44', '1111', 5, 3),
(45, 'player45', 'Игрок45', '1111', 1, 3),
(46, 'player46', 'Игрок46', '1111', 2, 3),
(47, 'player47', 'Игрок47', '1111', 3, 3),
(48, 'player48', 'Игрок48', '1111', 4, 3),
(49, 'player49', 'Игрок49', '1111', 5, 3),
(50, 'player50', 'Игрок50', '1111', 1, 3),
(51, 'player51', 'Игрок51', '1111', 2, 3),
(52, 'player52', 'Игрок52', '1111', 3, 3),
(53, 'player53', 'Игрок53', '1111', 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `battle_histories`
--

CREATE TABLE IF NOT EXISTS `battle_histories` (
  `bt_id` int(11) DEFAULT NULL,
  `av1_id` int(11) DEFAULT NULL,
  `av2_id` int(11) DEFAULT NULL,
  `win_av_id` int(11) DEFAULT NULL,
  `av1_strikes` int(11) DEFAULT NULL,
  `av2_strikes` int(11) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dialogues`
--

CREATE TABLE IF NOT EXISTS `dialogues` (
  `dlg_id` int(11) DEFAULT NULL,
  `av1_id` int(11) DEFAULT NULL,
  `av2_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `opdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `it_id` int(11) DEFAULT NULL,
  `it_name` char(50) DEFAULT NULL,
  `special_feature` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`it_id`, `it_name`, `special_feature`) VALUES
(1, 'Предмет1', ''),
(2, 'Кудряшки', ''),
(3, 'Gimp', '');

-- --------------------------------------------------------

--
-- Структура таблицы `item_avatar_history`
--

CREATE TABLE IF NOT EXISTS `item_avatar_history` (
  `it_it_id` int(11) DEFAULT NULL,
  `av_av_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `item_avatar_history`
--

INSERT INTO `item_avatar_history` (`it_it_id`, `av_av_id`, `start_date`, `end_date`, `op_av_id`, `op_date`) VALUES
(1, 1, '2013-10-04', NULL, 1, '2013-10-04'),
(2, 3, '2013-10-04', NULL, 1, '2013-10-04'),
(3, 2, '2013-10-04', NULL, 1, '2013-10-04');

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `log_date` char(255) DEFAULT NULL,
  `ip_address` char(255) DEFAULT NULL,
  `referer` char(255) DEFAULT NULL,
  `proxy` char(255) DEFAULT NULL,
  `query` char(255) DEFAULT NULL,
  `post_arr` text,
  `cookie_arr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`log_date`, `ip_address`, `referer`, `proxy`, `query`, `post_arr`, `cookie_arr`) VALUES
('1380840651', '::1', '', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380840671', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380840950', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380840996', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841101', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841129', '::1', '', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841132', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841212', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841216', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380841219', '::1', 'http://localhost/main.php', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843141', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843222', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843292', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843312', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843342', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843398', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843455', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843462', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843473', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843490', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843549', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843778', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380843888', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380844015', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1234\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380844016', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844037', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844164', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844257', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844263', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844268', '::1', 'localhost', '', 'people=murphy', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844391', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844398', '::1', 'localhost', '', 'people=murphy', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844480', '::1', 'localhost', '', 'people=murphy', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844509', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844852', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844860', '::1', 'localhost', '', '', 'Array\n(\n    [oldpin] => 1234\n    [newpin] => 1111\n    [action] => change_pin\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844901', '::1', 'localhost', '', '', 'Array\n(\n    [oldpin] => 1234\n    [newpin] => 1111\n    [action] => change_pin\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380844952', '::1', 'localhost', '', '', 'Array\n(\n    [oldpin] => 1234\n    [newpin] => 1111\n    [action] => change_pin\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380918669', '::1', 'localhost', '', 'form=top_rating', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380918676', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380921175', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1380921349', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('1380998324', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380998334', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => player4\n    [av_pin] => 1111\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1380998335', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1380998393', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1380998440', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1380998468', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1380998472', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1381006818', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1381006858', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1381006948', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1381006979', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n)\n'),
('1381083827', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 4\n    [av_key] => 73130353cd7db8d0caa0ec9908ec8b8e489debee\n    [PHPSESSID] => jth6cc84i671kpnmk4c9nmbm07\n    [XDEBUG_SESSION] => h5b\n)\n'),
('1382735771', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1382737053', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1382737090', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1111\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1382737092', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737156', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737173', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737229', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737329', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737352', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737367', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737421', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737476', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382737491', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382738058', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382738184', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382738221', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382738554', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382897524', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1382897874', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383007719', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383007875', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383007941', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008000', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008058', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008080', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008185', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008215', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383008270', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n'),
('1383853128', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383853191', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1111\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383853192', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383853852', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383853860', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => murphy\n    [av_pin] => 1111\n)\n', 'Array\n(\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383853862', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383856866', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383856946', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383856996', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857011', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857051', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857086', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857115', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857656', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857766', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857898', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857909', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857942', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857955', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383857976', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858011', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858031', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858125', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858137', '::1', 'localhost', '', 'op_id=1&avatars_list=6&items_list%5B%5D=1&bigtext=%D0%AD%D0%BB%D0%B2%D0%B8%D1%81+%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%80%D0%BE%D0%BC+%D1%81+%D0%B4%D0%BE%D0%BC', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858249', '::1', 'localhost', '', 'op_id=1&avatars_list=6&items_list%5B%5D=1&bigtext=%D0%AD%D0%BB%D0%B2%D0%B8%D1%81+%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%80%D0%BE%D0%BC+%D1%81+%D0%B4%D0%BE%D0%BC', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858253', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858265', '::1', 'localhost', '', 'op_id=1&chosen_avatars=36&items_list%5B%5D=1&bigtext=Hello', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858391', '::1', 'localhost', '', 'op_id=1&chosen_avatars=36&items_list%5B%5D=1&bigtext=Hello', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858400', '::1', 'localhost', '', 'op_id=1&chosen_avatars=36&items_list%5B%5D=1&bigtext=Hello', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858425', '::1', 'localhost', '', 'op_id=1&chosen_avatars=36&items_list%5B%5D=1&bigtext=Hello', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858451', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383858467', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383859416', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) DEFAULT NULL,
  `dlg_dlg_id` int(11) DEFAULT NULL,
  `msg_text` text,
  `op_av_id` int(11) DEFAULT NULL,
  `opdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `signs`
--

CREATE TABLE IF NOT EXISTS `signs` (
  `sign_id` int(11) DEFAULT NULL,
  `sign_name` char(20) DEFAULT NULL,
  `sign_alter_name` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `signs`
--

INSERT INTO `signs` (`sign_id`, `sign_name`, `sign_alter_name`) VALUES
(1, 'Огонь', 'Короли'),
(2, 'Металл', 'Хулиганы'),
(3, 'Дерево', 'Ботаны'),
(4, 'Земля', 'Шуты'),
(5, 'Вода', 'Изгои');

-- --------------------------------------------------------

--
-- Структура таблицы `stakes`
--

CREATE TABLE IF NOT EXISTS `stakes` (
  `bt_bt_id` int(11) DEFAULT NULL,
  `it_id_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

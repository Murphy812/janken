-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Ноя 09 2013 г., 15:04
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
(1, 'murphy', 'Мэрфи-кун', '1111', 4, 3),
(2, 'adora', 'Адора-кун', '1234', 1, 3),
(3, 'push', 'Пушист-кун', '3456', 3, 3),
(4, 'player4', 'Сато-кун', '1111', 5, 3),
(5, 'player5', 'Судзуки-кун', '1111', 1, 3),
(6, 'player6', 'Такахаси-кун', '1111', 2, 3),
(7, 'player7', 'Танака-кун', '1111', 3, 3),
(8, 'player8', 'Ватанабэ-кун', '1111', 4, 3),
(9, 'player9', 'Ито-кун', '1111', 5, 3),
(10, 'player10', 'Ямамото-кун', '1111', 1, 3),
(11, 'player11', 'Накамура-кун', '1111', 2, 3),
(12, 'player12', 'Охаяси-кун', '1111', 3, 3),
(13, 'player13', 'Кобаяси-кун', '1111', 4, 3),
(14, 'player14', 'Като-кун', '1111', 5, 3),
(15, 'player15', 'Накаяма-кун', '1111', 1, 3),
(16, 'player16', 'Наката-кун', '1111', 2, 3),
(17, 'player17', 'Ямада-кун', '1111', 3, 3),
(18, 'player18', 'Яманака-кун', '1111', 4, 3),
(19, 'player19', 'Кояма-кун', '1111', 5, 3),
(20, 'player20', 'Такаяма-кун', '1111', 1, 3),
(21, 'player21', 'Такаги-кун', '1111', 2, 3),
(22, 'player22', 'Такада-кун', '1111', 3, 3),
(23, 'player23', 'Хигаси-кун', '1111', 4, 3),
(24, 'player24', 'Аоки-кун', '1111', 5, 3),
(25, 'player25', 'Маэда-кун', '1111', 1, 3),
(26, 'player26', 'Мацуда-кун', '1111', 2, 3),
(27, 'player27', 'Ямасита-кун', '1111', 3, 3),
(28, 'player28', 'Мацумото-кун', '1111', 4, 3),
(29, 'player29', 'Уэда-кун', '1111', 5, 3),
(30, 'player30', 'Комацу-кун', '1111', 1, 3),
(31, 'player31', 'Коикэ-кун', '1111', 2, 3),
(32, 'player32', 'Мацусита-кун', '1111', 3, 3),
(33, 'player33', 'Киносита-кун', '1111', 4, 3),
(34, 'player34', 'Иида-кун', '1111', 5, 3),
(35, 'player35', 'Мидзуно-кун', '1111', 1, 3),
(36, 'player36', 'Оно-кун', '1111', 2, 3),
(37, 'player37', 'Ясуда-кун', '1111', 3, 3),
(38, 'player38', 'Нода-кун', '1111', 4, 3),
(39, 'player39', 'Такано-кун', '1111', 5, 3),
(40, 'player40', 'Накано-кун', '1111', 1, 3),
(41, 'player41', 'Уэно-кун', '1111', 2, 3),
(42, 'player42', 'Хаттори-кун', '1111', 3, 3),
(43, 'player43', 'Курода-кун', '1111', 4, 3),
(44, 'player44', 'Вада-кун', '1111', 5, 3),
(45, 'player45', 'Тагути-кун', '1111', 1, 3),
(46, 'player46', 'Каваками-кун', '1111', 2, 3),
(47, 'player47', 'Кавагути-кун', '1111', 3, 3),
(48, 'player48', 'Хаякава-кун', '1111', 4, 3),
(49, 'player49', 'Ямагути-кун', '1111', 5, 3),
(50, 'player50', 'Окава-кун', '1111', 1, 3),
(51, 'player51', 'Хасэгава-кун', '1111', 2, 3),
(52, 'player52', 'Кикути-кун', '1111', 3, 3),
(53, 'player53', 'Хирано-кун', '1111', 4, 3);

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
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_name` char(250) DEFAULT NULL,
  `special_feature` char(200) DEFAULT NULL,
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`it_id`, `it_name`, `special_feature`) VALUES
(1, 'Молоток', NULL),
(2, 'Степовки', NULL),
(3, 'Шейкер', NULL),
(4, 'Тамбурин', NULL),
(5, 'Волынка', NULL),
(6, 'Шары ярости', NULL),
(7, 'Кудряшки', NULL),
(8, 'Голос', NULL),
(9, 'Свиток о прекрасной и трагической судьбе юной любви', NULL),
(10, 'Заколка смерти', NULL),
(11, 'Гэта ловкости', NULL);

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
(2, 3, '2013-10-04', NULL, 1, '2013-10-04'),
(3, 2, '2013-10-04', NULL, 1, '2013-10-04'),
(9, 1, '2013-11-10', NULL, 1, '2013-11-10'),
(1, 2, '2013-11-10', NULL, 1, '2013-11-10'),
(5, 1, '2013-11-10', '2013-11-10', 1, '2013-11-10'),
(6, 1, '2013-11-10', '2013-11-10', 1, '2013-11-10'),
(5, 2, '2013-11-10', NULL, 1, '2013-11-10'),
(6, 2, '2013-11-10', NULL, 1, '2013-11-10');

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
('1383859416', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383945412', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383945442', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383945535', '::1', 'localhost', '', 'op_id=1&chosen_avatars=41&chosen_items%5B%5D=1&chosen_items%5B%5D=1&bigtext=%D0%B1%D0%BE%D0%B4%D1%80%D0%BE%D0%B5+%D0%BE%D0%BD%D0%BE', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383945551', '::1', 'localhost', '', 'who=36&items%5B%5D=1&bigtext=%D0%B9%D0%B5%D0%B9%21', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383946814', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1383946829', '::1', 'localhost', '', 'action=send&who=46&items%5B%5D=1&bigtext=Jump+hop', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028643', '::1', 'localhost', '', 'action=send&who=6&items%5B%5D=1&bigtext=haww', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028683', '::1', 'localhost', '', 'action=send&who=6&items%5B%5D=1&bigtext=haww', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028726', '::1', 'localhost', '', 'action=send&who=6&items%5B%5D=1&bigtext=haww', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028786', '::1', 'localhost', '', 'action=send&who=6&items%5B%5D=1&bigtext=haww', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028820', '::1', 'localhost', '', 'action=send&who=6&items%5B%5D=1&bigtext=haww', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028833', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028843', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 6\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Pumpurum\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384028867', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 6\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Pumpurum\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384030716', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 6\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Pumpurum\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384030749', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 6\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Pumpurum\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384031000', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384031647', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384031777', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384032195', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384032775', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384032932', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034143', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 6\n        )\n\n    [bigtext] => привет тебе (от тебя)\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034177', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 5\n        )\n\n    [bigtext] => верни не помню что\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034290', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 5\n        )\n\n    [bigtext] => верни не помню что\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034341', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034365', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Лови молоток, правая рука!\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034487', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 5\n        )\n\n    [bigtext] => поиграй же соседям еще этих чудных маршей\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034519', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034537', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 6\n        )\n\n    [bigtext] => Закати в какую-нибудь лунку их уже, а?\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034556', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034560', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Закати в какую-нибудь лунку их уже, а?\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034612', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 1\n        )\n\n    [bigtext] => Молоток, отзынь!\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034666', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [items] => Array\n        (\n            [0] => 5\n            [1] => 6\n            [2] => 1\n        )\n\n    [bigtext] => Переписываю имущество на Котявку\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034866', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384034896', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [items] => Array\n        (\n            [0] => 5\n            [1] => 6\n            [2] => 1\n        )\n\n    [bigtext] => В тот раз не удалось, пробуем еще. Все Котявке!\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035012', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035026', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [items] => Array\n        (\n            [0] => 5\n            [1] => 6\n        )\n\n    [bigtext] => было нелегко, но мы продолжаем пытаться\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035199', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [items] => Array\n        (\n            [0] => 5\n            [1] => 6\n        )\n\n    [bigtext] => Да, только не себе надо передавать.\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n');
INSERT INTO `logs` (`log_date`, `ip_address`, `referer`, `proxy`, `query`, `post_arr`, `cookie_arr`) VALUES
('1384035209', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035214', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035219', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035538', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035584', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035592', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035643', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035667', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035692', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035752', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035755', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035768', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035769', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035773', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035774', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035788', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035834', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035845', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 1\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035846', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035866', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => adora\n    [av_pin] => 2345\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035867', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384035886', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036357', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036369', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036418', '::1', 'localhost', '', 'form=change_pin', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036426', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036429', '::1', 'localhost', '', '', 'Array\n(\n    [form] => change_pin\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036447', '::1', 'localhost', '', '', 'Array\n(\n    [oldpin] => 2345\n    [newpin] => 1234\n    [action] => change_pin\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036480', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036519', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036542', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036562', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036633', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036667', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384036676', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037452', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [bigtext] => с ответным приветом шлю ничего\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037566', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037582', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037604', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037670', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037683', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037729', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037748', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037763', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037775', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037871', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384037935', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n'),
('1384038129', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) DEFAULT NULL,
  `dlg_dlg_id` int(11) DEFAULT NULL,
  `msg_text` text,
  `op_av_id` int(11) DEFAULT NULL,
  `opdate` date DEFAULT NULL,
  `my_av_id` int(11) DEFAULT NULL,
  `his_av_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`msg_id`, `dlg_dlg_id`, `msg_text`, `op_av_id`, `opdate`, `my_av_id`, `his_av_id`) VALUES
(NULL, NULL, 'Молоток, отзынь!', NULL, '2013-11-10', 1, 1),
(NULL, NULL, 'Переписываю имущество на Котявку', NULL, '2013-11-10', 1, 2),
(NULL, NULL, 'В тот раз не удалось, пробуем еще. Все Котявке!', NULL, '2013-11-10', 1, 2),
(NULL, NULL, 'было нелегко, но мы продолжаем пытаться', NULL, '2013-11-10', 1, 1),
(NULL, NULL, 'Да, только не себе надо передавать.', NULL, '2013-11-10', 1, 2),
(NULL, NULL, 'с ответным приветом шлю ничего', NULL, '2013-11-10', 2, 1);

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



CREATE TABLE IF NOT EXISTS `battles` (
  `btl_id` INT(11) NULL DEFAULT NULL,
  `uke_id` INT(11) NULL DEFAULT NULL,
  `nage_id` INT(11) NULL DEFAULT NULL,
  `uke_health` INT(11) NULL DEFAULT NULL,
  `nage_health` INT(11) NULL DEFAULT NULL,
  `winner_id` INT(11) NULL DEFAULT NULL,
  `start_date` DATE NULL DEFAULT NULL,
  `end_date` DATE NULL DEFAULT NULL,
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

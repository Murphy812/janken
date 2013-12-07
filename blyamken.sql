-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.32 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.1.0.4621
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры для таблица janken.attacks
CREATE TABLE IF NOT EXISTS `attacks` (
  `bt_bt_id` int(11) DEFAULT NULL,
  `av1_sign_id` int(11) DEFAULT NULL,
  `av2_sign_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.attacks: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `attacks` DISABLE KEYS */;
INSERT INTO `attacks` (`bt_bt_id`, `av1_sign_id`, `av2_sign_id`, `op_av_id`, `op_date`) VALUES
	(1, 1, 1, 8, '2013-12-07 04:29:15'),
	(2, 2, 1, 8, '2013-12-07 04:29:46'),
	(3, 4, 3, 8, '2013-12-07 04:30:01'),
	(4, 5, 3, 8, '2013-12-07 04:30:13'),
	(5, 2, 2, 8, '2013-12-07 04:30:25'),
	(6, 1, 1, 8, '2013-12-07 04:30:40'),
	(7, 4, 3, 8, '2013-12-07 04:30:57'),
	(8, 2, 5, 8, '2013-12-07 04:31:11'),
	(9, 5, 1, 8, '2013-12-07 04:44:36'),
	(9, 5, 1, 8, '2013-12-07 04:47:13'),
	(9, 5, 1, 8, '2013-12-07 04:49:05'),
	(9, 5, 1, 8, '2013-12-07 04:50:38'),
	(9, 5, 1, 8, '2013-12-07 04:50:55'),
	(9, 4, 1, 8, '2013-12-07 04:51:07'),
	(9, 5, 1, 8, '2013-12-07 04:51:16'),
	(10, 2, 2, 8, '2013-12-07 04:53:13'),
	(11, 3, 3, 8, '2013-12-07 04:53:49');
/*!40000 ALTER TABLE `attacks` ENABLE KEYS */;


-- Дамп структуры для таблица janken.avatars
CREATE TABLE IF NOT EXISTS `avatars` (
  `av_id` int(11) DEFAULT NULL,
  `av_login` char(50) DEFAULT NULL,
  `av_name` char(50) DEFAULT NULL,
  `description` text,
  `password_hash` char(100) DEFAULT NULL,
  `sign_sign_id` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.avatars: ~53 rows (приблизительно)
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;
INSERT INTO `avatars` (`av_id`, `av_login`, `av_name`, `description`, `password_hash`, `sign_sign_id`, `wins`) VALUES
	(1, 'org', 'Организатор', 'эффективный менеджер', '31415926', 1, 0),
	(2, 'volontaire', 'Волонтёр', 'святой человек', '123123123', 3, 0),
	(3, 'vedmak, pin: 1324', 'МГ Ведьмака', '6-10.08.2014, <A HREF="http://vedmak2014.ru">http://vedmak2014.ru</A>', '1324', 1, 0),
	(4, 'chosen_one, pin: 3434', 'МГ Фоллаута', '23-29.06.2014, <A HREF="http://fallout2014.ru">http://fallout2014.ru</A>', '3434', 1, 0),
	(5, 'sakura, pin: 1235', 'МГ Сакуры', '8-11.05.2014, <A HREF="http://sakura2014.ru">http://sakura2014.ru</A>', '1235', 1, 0),
	(6, 'technocore', 'Информ-центр', 'Читает все интернеты, пишет в половину из них', '110011', 4, 0),
	(7, 'vk.com/larp_spb', 'Ролегид', 'Берет интервью у духовно богатых и раздает всем остальным<A HREF="http://vk.com/larp_spb">vk.com/larp_spb</A>', '4827371', 4, 0),
	(8, '@gde_sra4', 'Ролегад', 'в рабочий полдень<A HREF="https://twitter.com/gde_sra4">@gde_sra4</A>', '8712341', 4, 3);
/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;


-- Дамп структуры для таблица janken.battles
CREATE TABLE IF NOT EXISTS `battles` (
  `btl_id` int(11) DEFAULT NULL,
  `uke_id` int(11) DEFAULT NULL,
  `nage_id` int(11) DEFAULT NULL,
  `uke_health` int(11) DEFAULT NULL,
  `nage_health` int(11) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.battles: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `battles` DISABLE KEYS */;
INSERT INTO `battles` (`btl_id`, `uke_id`, `nage_id`, `uke_health`, `nage_health`, `winner_id`, `start_date`, `end_date`) VALUES
	(1, 8, 1, 0, 0, NULL, '2013-12-07 04:29:15', '2013-12-07 04:29:15'),
	(2, 8, 2, 0, 1, 2, '2013-12-07 04:29:46', '2013-12-07 04:29:46'),
	(3, 8, 3, 0, 1, 3, '2013-12-07 04:30:01', '2013-12-07 04:30:01'),
	(4, 8, 4, 0, 1, 4, '2013-12-07 04:30:13', '2013-12-07 04:30:13'),
	(5, 8, 5, 0, 0, NULL, '2013-12-07 04:30:25', '2013-12-07 04:30:25'),
	(6, 8, 6, 0, 0, NULL, '2013-12-07 04:30:40', '2013-12-07 04:30:40'),
	(7, 8, 7, 0, 1, 7, '2013-12-07 04:30:57', '2013-12-07 04:30:57'),
	(8, 8, 2, 0, 1, 2, '2013-12-07 04:31:11', '2013-12-07 04:31:11'),
	(9, 8, 1, 1, 0, 8, '2013-12-07 04:44:36', '2013-12-07 04:51:16'),
	(10, 8, 2, 1, 0, 8, '2013-12-07 04:53:13', '2013-12-07 04:53:13'),
	(11, 8, 2, 1, 0, 8, '2013-12-07 04:53:49', '2013-12-07 04:53:49');
/*!40000 ALTER TABLE `battles` ENABLE KEYS */;


-- Дамп структуры для таблица janken.battle_histories
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

-- Дамп данных таблицы janken.battle_histories: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `battle_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `battle_histories` ENABLE KEYS */;


-- Дамп структуры для таблица janken.dialogues
CREATE TABLE IF NOT EXISTS `dialogues` (
  `dlg_id` int(11) DEFAULT NULL,
  `av1_id` int(11) DEFAULT NULL,
  `av2_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `opdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.dialogues: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `dialogues` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogues` ENABLE KEYS */;


-- Дамп структуры для таблица janken.items
CREATE TABLE IF NOT EXISTS `items` (
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_name` char(250) DEFAULT NULL,
  `special_feature` char(200) DEFAULT NULL,
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.items: ~19 rows (приблизительно)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`it_id`, `it_name`, `special_feature`) VALUES
	(1, 'блинчик', NULL),
	(2, 'блинчик', NULL),
	(3, 'блинчик', NULL),
	(4, 'блинчик', NULL),
	(5, 'блинчик', NULL),
	(6, 'блинчик', NULL),
	(7, 'блинчик', NULL),
	(8, 'блинчик', NULL),
	(9, 'блинчик', NULL),
	(10, 'блинчик', NULL),
	(11, 'блинчик', NULL),
	(12, 'блинчик', NULL),
	(13, 'блинчик', NULL),
	(14, 'блинчик', NULL),
	(15, 'молоток', NULL),
	(16, 'постмодернизм', NULL),
	(17, 'ксенофобия', NULL),
	(18, 'привода', NULL),
	(19, 'рок', NULL),
	(20, 'моно-но аварэ', NULL),
	(21, 'первая весна', NULL),
	(22, 'чай', NULL),
	(23, 'потеряшки', NULL),
	(24, 'это не микрофон!', NULL),
	(25, 'журналистский взгляд', NULL),
	(26, 'анонимность', NULL),
	(27, 'православие', NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


-- Дамп структуры для таблица janken.item_avatar_history
CREATE TABLE IF NOT EXISTS `item_avatar_history` (
  `it_it_id` int(11) DEFAULT NULL,
  `av_av_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.item_avatar_history: ~23 rows (приблизительно)
/*!40000 ALTER TABLE `item_avatar_history` DISABLE KEYS */;
INSERT INTO `item_avatar_history` (`it_it_id`, `av_av_id`, `start_date`, `end_date`, `op_av_id`, `op_date`) VALUES
	(1, 1, '2013-12-07 04:43:59', NULL, 5, '2013-12-07 04:43:59'),
	(2, 1, '2013-12-07 04:43:59', NULL, 5, '2013-12-07 04:43:59'),
	(3, 1, '2013-12-07 04:43:59', NULL, 5, '2013-12-07 04:43:59'),
	(4, 1, '2013-12-07 04:43:59', NULL, 5, '2013-12-07 04:43:59'),
	(5, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(6, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(7, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(8, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(9, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(10, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(11, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(12, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(13, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(14, 1, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(15, 2, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(16, 3, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(17, 3, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(18, 4, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(19, 4, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(20, 5, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(21, 5, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(22, 6, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(23, 6, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(24, 7, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(25, 7, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(26, 8, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00'),
	(27, 8, '2013-12-07 04:44:00', NULL, 5, '2013-12-07 04:44:00');
/*!40000 ALTER TABLE `item_avatar_history` ENABLE KEYS */;


-- Дамп структуры для таблица janken.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `log_date` char(255) DEFAULT NULL,
  `ip_address` char(255) DEFAULT NULL,
  `referer` char(255) DEFAULT NULL,
  `proxy` char(255) DEFAULT NULL,
  `query` char(255) DEFAULT NULL,
  `post_arr` text,
  `cookie_arr` text,
  `date_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.logs: ~505 rows (приблизительно)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`log_date`, `ip_address`, `referer`, `proxy`, `query`, `post_arr`, `cookie_arr`, `date_date`) VALUES
	('1386374426', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374658', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374674', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374686', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => 4\n    [av_pin] => 3434\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374696', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374737', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => 5\n    [av_pin] => 1235\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386374782', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => 5\n    [av_pin] => 1235\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386375047', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386375049', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386375057', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => vedmak, pin: 1324\n    [av_pin] => 1324\n)\n', 'Array\n(\n    [av_key] => 69db186a91f14835879f9b1aef476a888cabdc44\n)\n', NULL),
	('1386375059', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 3\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375146', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 3\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375381', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 3\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375721', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 3\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375722', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375740', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => @gde_sra4\n    [av_pin] => 8712\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386375856', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => @gde_sra4\n    [av_pin] => 8712\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386376040', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => @gde_sra4\n    [av_pin] => 8712\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386376051', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386376062', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => @gde_sra4\n    [av_pin] => 8712341\n)\n', 'Array\n(\n    [av_key] => 35d4d405c8d44c65a33dbeeb16b99143143ea932\n)\n', NULL),
	('1386376063', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376087', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376154', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 1\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376184', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [sign] => 2\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376200', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 3\n    [sign] => 4\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376212', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 4\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376224', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 5\n    [sign] => 2\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376239', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 6\n    [sign] => 1\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376256', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 7\n    [sign] => 4\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386376270', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [sign] => 2\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377074', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377232', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377344', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377437', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377454', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377466', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 4\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377475', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 1\n    [sign] => 5\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377592', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [sign] => 2\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377628', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [sign] => 3\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377683', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 2\n    [sign] => -1\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377706', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 3\n    [sign] => -1\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377714', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 5\n    [sign] => -1\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386377726', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 8\n    [av_key] => 5d63926028ed7aaf5a15a86161350d0ac5030069\n)\n', NULL),
	('1386378838', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 2\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386378839', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386378851', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => sakura, pin: 1235\n    [av_pin] => 1235\n)\n', 'Array\n(\n    [av_key] => ab03066900ba4c26f5b3e9e99a028ba3b8e380fd\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386378853', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 5\n    [av_key] => 3420e6892321eedbf3148a7103a31852048fccc9\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379499', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 5\n    [av_key] => 3420e6892321eedbf3148a7103a31852048fccc9\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379509', '::1', 'localhost', '', '', 'Array\n(\n    [action] => logout\n)\n', 'Array\n(\n    [av_id] => 5\n    [av_key] => 3420e6892321eedbf3148a7103a31852048fccc9\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379510', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_key] => 3420e6892321eedbf3148a7103a31852048fccc9\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379556', '::1', 'localhost', '', '', 'Array\n(\n    [av_login] => technocore\n    [av_pin] => 110011\n)\n', 'Array\n(\n    [av_key] => 3420e6892321eedbf3148a7103a31852048fccc9\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379557', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386379591', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => У короля Мидаса ослиные уши\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380095', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380105', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => один сын был умный\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380574', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => один сын был умный\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380612', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => один сын был умный\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380619', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => один сын был умный\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380737', '::1', 'localhost', '', '', 'Array\n(\n    [action] => joke_comment\n    [bigtext] => один сын был умный\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380892', '::1', 'localhost', '', '', 'Array\n(\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386380931', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 7\n    [sign] => -1\n    [bigtext] => Ролегид, ты обречен. На успех.\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386381087', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 7\n    [sign] => -1\n    [bigtext] => Ролегид, ты обречен. На успех.\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386381111', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 7\n    [sign] => -1\n    [bigtext] => Ролегид, ты обречен. На успех.\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL),
	('1386382810', '::1', 'localhost', '', '', 'Array\n(\n    [action] => send\n    [who] => 7\n    [sign] => -1\n    [bigtext] => Ролегид, ты обречен. На успех.\n)\n', 'Array\n(\n    [av_id] => 6\n    [av_key] => a70739d30e45eba0d66af5e4bf75805af100000c\n    [jetbrains_charisma_main_security_PRINCIPAL] => NDgxMzQ5NGQxMzdlMTYzMWJiYTMwMWQ1YWNhYjZlN2JiN2FhNzRjZTExODVkNDU2NTY1ZWY1MWQ3Mzc2NzdiMjpyb290\n)\n', NULL);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


-- Дамп структуры для таблица janken.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) DEFAULT NULL,
  `dlg_dlg_id` int(11) DEFAULT NULL,
  `msg_text` text,
  `op_av_id` int(11) DEFAULT NULL,
  `opdate` datetime DEFAULT NULL,
  `my_av_id` int(11) DEFAULT NULL,
  `his_av_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.messages: ~14 rows (приблизительно)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`msg_id`, `dlg_dlg_id`, `msg_text`, `op_av_id`, `opdate`, `my_av_id`, `his_av_id`) VALUES
	(NULL, NULL, 'один сын был умный', NULL, '2013-12-07 05:35:06', 6, NULL),
	(NULL, NULL, 'один сын был умный', NULL, '2013-12-07 05:42:55', 6, NULL),
	(NULL, NULL, 'один сын был умный', NULL, '2013-12-07 05:43:33', 6, NULL),
	(NULL, NULL, 'один сын был умный', NULL, '2013-12-07 05:43:40', 6, NULL),
	(NULL, NULL, 'один сын был умный', NULL, '2013-12-07 05:45:38', 6, NULL),
	(NULL, NULL, 'Ролегид, ты обречен. На успех.', NULL, '2013-12-07 05:48:52', 6, 7),
	(NULL, NULL, 'Ролегид, ты обречен. На успех.', NULL, '2013-12-07 05:51:28', 6, 7),
	(NULL, NULL, 'Ролегид, ты обречен. На успех.', NULL, '2013-12-07 05:51:52', 6, 7),
	(NULL, NULL, 'Ролегид, ты обречен. На успех.', NULL, '2013-12-07 06:20:11', 6, 7);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;


-- Дамп структуры для таблица janken.signs
CREATE TABLE IF NOT EXISTS `signs` (
  `sign_id` int(11) DEFAULT NULL,
  `sign_name` char(20) DEFAULT NULL,
  `sign_alter_name` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.signs: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `signs` DISABLE KEYS */;
INSERT INTO `signs` (`sign_id`, `sign_name`, `sign_alter_name`) VALUES
	(1, 'Огонь', 'Короли'),
	(2, 'Металл', 'Хулиганы'),
	(3, 'Дерево', 'Интеллектуалы'),
	(4, 'Земля', 'Тролли'),
	(5, 'Вода', 'Белые вороны');
/*!40000 ALTER TABLE `signs` ENABLE KEYS */;


-- Дамп структуры для таблица janken.stakes
CREATE TABLE IF NOT EXISTS `stakes` (
  `bt_bt_id` int(11) DEFAULT NULL,
  `it_id_id` int(11) DEFAULT NULL,
  `op_av_id` int(11) DEFAULT NULL,
  `op_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы janken.stakes: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `stakes` DISABLE KEYS */;
/*!40000 ALTER TABLE `stakes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

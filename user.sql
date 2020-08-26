-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 12 2020 г., 10:35
-- Версия сервера: 10.4.10-MariaDB
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task4`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not blocked',
  `registerdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `status`, `registerdate`, `lastlogin`) VALUES
(1, 'krosek@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WGVuSmVwcDNCakp1YjdCVA$mJwIvQ+XeQangbDwUVIt8qinaseFoIFvuxI1w2+TBlQ', 'Петя', 'not blocked', '2020-08-07 22:41:02', '2020-08-09 14:21:38'),
(2, 'kroseksuper@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$RnJ3b2hMT3BLOVY2cW1FdQ$t8mXebWNS7H3CF8adpnifECjM3rikxXcqy51uo0Ka24', 'Вася', 'not blocked', '2020-08-07 22:41:02', '2020-08-08 01:41:02'),
(5, 'bl@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$V2EyMXAuSkdPaFdvZEIwZg$0UQz8YbmZP11evAe76MLohDSSJiYjubQKL5h8+O3Wos', 'Шура', 'not blocked', '2020-08-07 22:41:02', '2020-08-08 01:41:02'),
(19, 'user@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$U2pvMWZPWHZEV1l4MGhRcA$eAcyS8E6NRWaDVU5P0iMudeax5mYeYxNTbPTpBMBeOM', 'Витя', 'not blocked', '2020-08-09 10:32:23', '2020-08-09 13:32:37'),
(20, 'user2@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$TVB6a3pmN21OSlBGOHlSUQ$V2vMoHVf4ivWsSpd/9+PrKrhfYzNVzigdpD4ZTAfOdI', 'Игорь', 'not blocked', '2020-08-09 10:33:30', '2020-08-09 13:39:57'),
(28, 'bla2@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$S0prV3JMdUdjQVNSS2lYcw$a5o4xim8y5sihS+4Uk4bDbCxL7C0ovqZQUBzsSj+lgw', 'Витя', 'not blocked', '2020-08-09 11:21:56', '2020-08-09 19:32:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

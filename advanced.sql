-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 29 2017 г., 16:19
-- Версия сервера: 5.7.14
-- Версия PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `advanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Manager', '10', 1498709737),
('Manager', '11', 1498709819),
('Manager', '2', 1498140407),
('Manager', '9', 1498709675),
('Senior', '1', 1498140377),
('VicePresident', '3', 1498140415);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/admin/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/default/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/default/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/update', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/menu/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/update', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/permission/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/assign', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/remove', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/update', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/role/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/assign', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/route/remove', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/update', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/rule/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/activate', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/login', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/logout', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/signup', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/admin/user/view', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/debug/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/index', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/debug/default/view', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/frontend/web/site/signup', 2, NULL, NULL, NULL, 1498696490, 1498696490),
('/gii/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/action', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/diff', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/index', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/preview', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/gii/default/view', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/error', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/index', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/login', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/logout', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/site/signup', 2, NULL, NULL, NULL, 1498696414, 1498696414),
('/test/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/default/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/default/index', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/create', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/delete', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/index', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/update', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/test/user/view', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/admin/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/block', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/create', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/delete', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/info', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/switch', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/update', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/profile/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/profile/index', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/profile/show', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/recovery/*', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/recovery/request', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/registration/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/registration/connect', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/registration/register', 2, NULL, NULL, NULL, 1498696681, 1498696681),
('/user/registration/resend', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/security/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/security/auth', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/security/login', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/security/logout', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/*', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/account', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/delete', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/networks', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('/user/settings/profile', 2, NULL, NULL, NULL, 1498696682, 1498696682),
('adminAccess', 2, 'доступ в админку', NULL, NULL, 1498139809, 1498169968),
('Junior', 1, 'Без комментариев', NULL, NULL, 1498140148, 1498140326),
('Manager', 1, 'Менеджер. Может нанимать на работу и увольнять.', NULL, NULL, 1498140060, 1498170097),
('Mid', 1, 'Он и в Африке mid', NULL, NULL, 1498140129, 1498140129),
('President', 1, 'Президент компании', NULL, NULL, 1498139954, 1498170463),
('Senior', 1, 'Старший хуле', NULL, NULL, 1498140106, 1498140106),
('site', 2, NULL, NULL, NULL, 1498216760, 1498216760),
('user page', 2, 'Просмотр страницы юзеров', NULL, NULL, 1498140288, 1498140288),
('UserPanel', 2, 'Доступ к управлению юзерами', NULL, NULL, 1498170020, 1498170020),
('userSignup', 2, 'signup', NULL, NULL, 1498213758, 1498213758),
('VicePresident', 1, 'Вице президент', NULL, NULL, 1498140001, 1498170035);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('UserPanel', '/*'),
('UserPanel', '/admin/*'),
('UserPanel', '/admin/assignment/*'),
('UserPanel', '/admin/assignment/assign'),
('UserPanel', '/admin/assignment/index'),
('UserPanel', '/admin/assignment/revoke'),
('UserPanel', '/admin/assignment/view'),
('UserPanel', '/admin/default/*'),
('UserPanel', '/admin/default/index'),
('UserPanel', '/admin/menu/*'),
('UserPanel', '/admin/menu/create'),
('UserPanel', '/admin/menu/delete'),
('UserPanel', '/admin/menu/index'),
('UserPanel', '/admin/menu/update'),
('UserPanel', '/admin/menu/view'),
('UserPanel', '/admin/permission/*'),
('UserPanel', '/admin/permission/assign'),
('UserPanel', '/admin/permission/create'),
('UserPanel', '/admin/permission/delete'),
('UserPanel', '/admin/permission/index'),
('UserPanel', '/admin/permission/remove'),
('UserPanel', '/admin/permission/update'),
('UserPanel', '/admin/permission/view'),
('UserPanel', '/admin/role/*'),
('UserPanel', '/admin/role/assign'),
('UserPanel', '/admin/role/create'),
('UserPanel', '/admin/role/delete'),
('UserPanel', '/admin/role/index'),
('UserPanel', '/admin/role/remove'),
('UserPanel', '/admin/role/update'),
('UserPanel', '/admin/role/view'),
('UserPanel', '/admin/route/*'),
('UserPanel', '/admin/route/assign'),
('UserPanel', '/admin/route/create'),
('UserPanel', '/admin/route/index'),
('UserPanel', '/admin/route/refresh'),
('UserPanel', '/admin/route/remove'),
('UserPanel', '/admin/rule/*'),
('UserPanel', '/admin/rule/create'),
('UserPanel', '/admin/rule/delete'),
('UserPanel', '/admin/rule/index'),
('UserPanel', '/admin/rule/update'),
('UserPanel', '/admin/rule/view'),
('UserPanel', '/admin/user/*'),
('UserPanel', '/admin/user/activate'),
('UserPanel', '/admin/user/change-password'),
('UserPanel', '/admin/user/delete'),
('UserPanel', '/admin/user/index'),
('UserPanel', '/admin/user/login'),
('UserPanel', '/admin/user/logout'),
('UserPanel', '/admin/user/request-password-reset'),
('UserPanel', '/admin/user/reset-password'),
('UserPanel', '/admin/user/signup'),
('UserPanel', '/admin/user/view'),
('UserPanel', '/debug/*'),
('UserPanel', '/debug/default/*'),
('UserPanel', '/debug/default/db-explain'),
('UserPanel', '/debug/default/download-mail'),
('UserPanel', '/debug/default/index'),
('UserPanel', '/debug/default/toolbar'),
('UserPanel', '/debug/default/view'),
('adminAccess', '/frontend/web/site/signup'),
('UserPanel', '/frontend/web/site/signup'),
('UserPanel', '/gii/*'),
('UserPanel', '/gii/default/*'),
('UserPanel', '/gii/default/action'),
('UserPanel', '/gii/default/diff'),
('UserPanel', '/gii/default/index'),
('UserPanel', '/gii/default/preview'),
('UserPanel', '/gii/default/view'),
('UserPanel', '/site/*'),
('UserPanel', '/site/error'),
('UserPanel', '/site/index'),
('UserPanel', '/site/login'),
('UserPanel', '/site/logout'),
('adminAccess', '/site/signup'),
('UserPanel', '/site/signup'),
('UserPanel', '/test/*'),
('UserPanel', '/test/default/*'),
('UserPanel', '/test/default/index'),
('UserPanel', '/test/user/*'),
('UserPanel', '/test/user/create'),
('UserPanel', '/test/user/delete'),
('UserPanel', '/test/user/index'),
('UserPanel', '/test/user/update'),
('UserPanel', '/test/user/view'),
('UserPanel', '/user/*'),
('UserPanel', '/user/admin/*'),
('UserPanel', '/user/admin/assignments'),
('UserPanel', '/user/admin/block'),
('UserPanel', '/user/admin/confirm'),
('UserPanel', '/user/admin/create'),
('UserPanel', '/user/admin/delete'),
('UserPanel', '/user/admin/index'),
('UserPanel', '/user/admin/info'),
('UserPanel', '/user/admin/resend-password'),
('UserPanel', '/user/admin/switch'),
('UserPanel', '/user/admin/update'),
('UserPanel', '/user/admin/update-profile'),
('UserPanel', '/user/profile/*'),
('UserPanel', '/user/profile/index'),
('UserPanel', '/user/profile/show'),
('UserPanel', '/user/recovery/*'),
('UserPanel', '/user/recovery/request'),
('UserPanel', '/user/recovery/reset'),
('UserPanel', '/user/registration/*'),
('UserPanel', '/user/registration/confirm'),
('UserPanel', '/user/registration/connect'),
('UserPanel', '/user/registration/register'),
('UserPanel', '/user/registration/resend'),
('UserPanel', '/user/security/*'),
('UserPanel', '/user/security/auth'),
('UserPanel', '/user/security/login'),
('UserPanel', '/user/security/logout'),
('UserPanel', '/user/settings/*'),
('UserPanel', '/user/settings/account'),
('UserPanel', '/user/settings/confirm'),
('UserPanel', '/user/settings/delete'),
('UserPanel', '/user/settings/disconnect'),
('UserPanel', '/user/settings/networks'),
('UserPanel', '/user/settings/profile'),
('Manager', 'adminAccess'),
('UserPanel', 'adminAccess'),
('Manager', 'site'),
('UserPanel', 'site'),
('Junior', 'user page'),
('Manager', 'user page'),
('Mid', 'user page'),
('Senior', 'user page'),
('UserPanel', 'user page'),
('VicePresident', 'user page'),
('Manager', 'UserPanel'),
('Manager', 'userSignup'),
('UserPanel', 'userSignup');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1498064619),
('m130524_201442_init', 1498064622),
('m140506_102106_rbac_init', 1498071480);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `sname`, `sex`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Konstantin', 'Navalniy', 'female', 'TMDPs3A9pXYOMPF30V2q_lYLq4zUCNbp', '$2y$13$mT/RUFTfnmlLS0DAZf0mnuQj.bbQiv9ulADHFz0kLRHbdUvLoUN3i', NULL, 'user@mail.ru', 10, 1498139458, 1498139458),
(2, 'manager', 'Viktor', 'Kolomiycev', '', 'fXCDbqBmLzqVPP0hq3eBoUVVGAK0gtL8', '$2y$13$LnjJvw5Ka6FyuRQnJ1b2Xe.KWBkKNjSCICF5bR6fwLFdDl8funGei', NULL, 'manager@mail.ru', 10, 1498139534, 1498139534),
(3, 'admin', 'John', 'Doe', 'male', 'pNi7KAmiRBLaJoRlCZGbtuEt9lYeQHwf', '$2y$13$HUy94IK.s35MzGos4avaTOa8VzTAVQTExDGjsKcaf8y87F6YVBABe', NULL, 'admin@mail.ru', 10, 1498139556, 1498139556),
(4, 'danya', 'Dalnilo', 'Datckyy', 'male', 'Yoo5648jnIHac8g0gEy7DO3gb4F8VQkd', '$2y$13$IfXh57lGqRk0OpP9wqdkoumXO6ZRCBskIJ8Ch1ljBVL53F8zz3kqe', NULL, 'blackvolk88@gmail.com', 10, 1498223896, 1498223896),
(5, 'jogi', 'Jogi', 'Jaja', 'male', 'DEkmvo4xaWsegEX22XNGrEOjMTyLA7gx', '$2y$13$yLMxYIz/kqwmHBiy.QNw3uSBOehmpArEl03wVVAsd8fsWt.0IxNga', NULL, 'jaja@mail.com', 10, 1498671651, 1498671651),
(6, 'tori', 'Jeje', 'Fide', 'female', 'xcW1hMokZca67CRo0EZo5v_ZVqmVV_9Q', '$2y$13$aN8oBKiYgpyP50Pxleg10u.cfyd9KpY0ieEaiJkz9O5TncYTSWN6i', NULL, 'tori@mail.ru', 10, 1498708593, 1498708593),
(7, 'qwerty', 'qweqweq', 'asdasd', 'female', 'vumydsMkXlqfniwuJa4ir2GCBxmXqhg2', '$2y$13$t5rk7TT1VbLocUXBIvXYzexxK.6FLDK0lrjpVBszoz6OS.rulVOca', NULL, 'fffa@mail.ru', 10, 1498709089, 1498709089),
(8, 'riki', 'asdsa', 'dfg', 'asdas', 'zkwpPAQ45yxGwrdzIIzf-od437CP8AlC', '$2y$13$aIrbbeprwsMeF4dFPjEQVOtAbsyMq.oLf1xl7mY2wn5ClP6UvmpCG', NULL, 'hoho@mail.ru', 10, 1498709221, 1498709221),
(9, 'haha', 'haha', 'hashhas', 'hahsha', 'l4zJQ0eh7sJIZWg2SAfLpZ3rvt7CzSrp', '$2y$13$YM9oPl9Wk5MTX0SJyp.qFuqJYV3cZZTWk6OnY1BBCKs4m5KzbSTdy', NULL, 'hasa@mail.com', 10, 1498709675, 1498709675),
(10, 'temp', 'asd', 'asd', 'asd', '-U7bPQF5dWmah0pf1gB5jiP3dVZMBMQ7', '$2y$13$f.ZwBKFxeyIy8r164eiPVu.3blS6XriK1ReCQSRZJXSnSfwUaJ6pW', NULL, 'temp@mail.ru', 10, 1498709737, 1498709737),
(11, 'srp', 'eesad', 'asd', 'sad', 'Yoc7RO8pPAigizWluwBJAbXQHbx9CjdS', '$2y$13$CuV/LQ8AwjTFQNH4cm/uku2eDyQtQuPIRozxllx4pTOyn.cnVaZ5.', NULL, 'ssrp@mail.ru', 10, 1498709819, 1498709819);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

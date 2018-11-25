-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2018 a las 03:01:07
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--
USE proyecto2;
CREATE TABLE `cheques` (
  `id` int(10) UNSIGNED NOT NULL,
  `cheque_cuenta` int(11) NOT NULL,
  `cheque_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_fecha` date NOT NULL,
  `cheque_monto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cheques`
--

USE proyecto2;
INSERT INTO `cheques` (`id`, `cheque_cuenta`, `cheque_transaccion`, `cheque_fecha`, `cheque_monto`, `created_at`, `updated_at`) VALUES
(1, 87473, '7005', '1982-03-24', 354693, '2018-11-23 04:27:09', '2018-11-23 04:27:09'),
(2, 20783, '7005', '1976-10-01', 695568, '2018-11-23 04:27:10', '2018-11-23 04:27:10'),
(3, 89851, '7005', '1990-10-13', 231998, '2018-11-23 04:28:29', '2018-11-23 04:28:29'),
(4, 55785, '7005', '2017-05-28', 358053, '2018-11-23 04:27:10', '2018-11-23 04:27:10'),
(5, 64569, '7005', '2003-05-02', 960038, '2018-11-23 04:27:10', '2018-11-23 04:27:10'),
(6, 68942, '7005', '1986-07-11', 331580, '2018-11-23 04:27:09', '2018-11-23 04:27:09'),
(7, 90813, '7005', '1970-06-23', 823780, '2018-11-23 04:27:09', '2018-11-23 04:27:09'),
(8, 89851, '7005', '1990-10-13', 231998, '2018-11-23 04:27:10', '2018-11-23 04:27:10'),
(9, 89927, '7005', '1995-10-10', 527399, '2018-11-23 04:27:09', '2018-11-23 04:27:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

USE proyecto2;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `codigo_usuario` int(11) NOT NULL,
  `Primer_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Segundo_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Primer_apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Segundo_apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

USE proyecto2;
INSERT INTO `clientes` (`id`, `codigo_usuario`, `Primer_nombre`, `Segundo_nombre`, `Primer_apellido`, `Segundo_apellido`, `created_at`, `updated_at`) VALUES
(24, 120, 'Myrtice', 'Nyasia', 'Toy', 'Gorczany', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(5, 146, 'Kailee', 'Amelia', 'Barrows', 'Christiansen', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(46, 163, 'Justyn', 'Raphaelle', 'Gottlieb', 'Mitchell', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(19, 181, 'Astrid', 'Luisa', 'Mante', 'Wehner', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(21, 194, 'Rene', 'Abdiel', 'Moen', 'Stark', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(1, 277, 'Cathy', 'Aurore', 'Senger', 'Runte', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(23, 289, 'Jodie', 'Gudrun', 'Beatty', 'Kshlerin', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(20, 307, 'Colton', 'Myra', 'Steuber', 'Powlowski', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(3, 359, 'Claude', 'Joseph', 'Ruecker', 'Ferry', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(30, 375, 'Kailee', 'Norwood', 'Legros', 'Lueilwitz', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(7, 391, 'Elda', 'D\'angelo', 'Mante', 'Casper', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(29, 396, 'Jayden', 'Alicia', 'Friesen', 'Reinger', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(22, 414, 'Cydney', 'Rachel', 'O\'Hara', 'Bednar', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(4, 427, 'Rosemarie', 'Leonor', 'Gulgowski', 'Willms', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(38, 446, 'Mckenzie', 'Misty', 'O\'Reilly', 'Kuhn', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(50, 495, 'Domenica', 'Kyler', 'Hane', 'Stanton', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(33, 501, 'Eleanora', 'Lon', 'Auer', 'Fay', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(11, 510, 'Florence', 'Jaycee', 'Donnelly', 'Gaylord', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(8, 550, 'Lon', 'Brycen', 'Conn', 'Beier', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(32, 552, 'Aditya', 'Cassandra', 'Koss', 'Lang', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(47, 554, 'Layla', 'Kay', 'Brekke', 'Purdy', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(13, 558, 'Kirk', 'Yasmeen', 'Huel', 'Pfeffer', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(14, 574, 'Shakira', 'Ismael', 'Conn', 'Mueller', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(9, 593, 'Jack', 'Marcia', 'Cummings', 'Wyman', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(45, 622, 'Schuyler', 'Molly', 'Abbott', 'Yost', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(31, 629, 'Weston', 'Sonia', 'Schroeder', 'Fahey', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(28, 630, 'Baylee', 'Joshuah', 'Yundt', 'Olson', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(35, 636, 'Marina', 'Maude', 'Blick', 'Franecki', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(43, 693, 'Burdette', 'Afton', 'Koss', 'Hills', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(16, 696, 'Queen', 'Malinda', 'Ebert', 'Kirlin', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(39, 705, 'Gina', 'Clinton', 'Hagenes', 'Rath', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(12, 716, 'Raquel', 'Orville', 'Ondricka', 'Hermiston', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(41, 720, 'Enola', 'Makenzie', 'Tromp', 'Torp', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(37, 743, 'Providenci', 'Brendon', 'Wyman', 'Schmitt', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(17, 753, 'Haskell', 'Devin', 'Kunde', 'Roob', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(10, 772, 'Spencer', 'Brendan', 'Wilkinson', 'Schulist', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(6, 808, 'Dejuan', 'Candice', 'Ondricka', 'Turcotte', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(34, 818, 'Friedrich', 'Mireya', 'Schmidt', 'Mayert', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(48, 823, 'Jared', 'Pink', 'Langosh', 'Ward', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(25, 842, 'Cedrick', 'Adelbert', 'Gulgowski', 'Weber', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(40, 847, 'Mayra', 'Leonard', 'Johnson', 'Collins', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(49, 856, 'Sherwood', 'Kim', 'Rodriguez', 'Stokes', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(36, 896, 'Aurelio', 'Felipe', 'Gaylord', 'Botsford', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(2, 898, 'Francisca', 'Ozella', 'Smitham', 'Cole', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(27, 904, 'Michelle', 'Maxwell', 'Beatty', 'O\'Conner', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(18, 939, 'Elisa', 'Princess', 'Welch', 'Eichmann', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(15, 962, 'Reuben', 'Elvera', 'Robel', 'Smitham', '2018-11-19 09:15:47', '2018-11-19 09:15:47'),
(42, 984, 'Jacquelyn', 'Stone', 'O\'Reilly', 'Ullrich', '2018-11-19 09:15:46', '2018-11-19 09:15:46'),
(44, 992, 'Eryn', 'Treva', 'Pouros', 'Zieme', '2018-11-19 09:15:48', '2018-11-19 09:15:48'),
(26, 997, 'Sebastian', 'Orpha', 'Kling', 'Ferry', '2018-11-19 09:15:48', '2018-11-19 09:15:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_bancarias`
--

USE proyecto2;
CREATE TABLE `cuentas_bancarias` (
  `id` int(11) NOT NULL,
  `numero_cuenta` int(11) NOT NULL,
  `codigo_usuario` int(11) NOT NULL,
  `tipo_cuenta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_cuenta` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas_bancarias`
--

USE proyecto2;
INSERT INTO `cuentas_bancarias` (`id`, `numero_cuenta`, `codigo_usuario`, `tipo_cuenta`, `monto_cuenta`, `fecha_creacion`, `created_at`, `updated_at`) VALUES
(27, 11839, 359, 'B01', 20235, '2016-12-22', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(37, 12538, 194, 'C01', 35747, '1970-03-23', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(48, 16362, 120, 'C01', 98414, '2012-03-20', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(44, 18336, 495, 'C01', 9905, '2015-12-28', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(30, 18670, 997, 'B01', 12816, '2017-06-18', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(1, 20768, 391, 'B01', 85947, '2014-04-22', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(9, 20783, 753, 'B01', 95153, '1976-12-01', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(49, 22861, 427, 'B01', 20349, '1995-03-18', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(32, 26236, 898, 'C01', 24815, '1994-07-14', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(11, 26674, 705, 'C01', 83209, '2009-08-14', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(21, 28381, 847, 'B01', 48368, '1978-08-20', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(20, 30047, 558, 'C01', 37498, '1979-06-03', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(42, 33110, 629, 'C01', 14268, '1970-05-23', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(17, 36692, 720, 'A01', 41805, '1978-05-04', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(19, 38664, 446, 'B01', 21988, '1979-09-14', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(4, 48117, 277, 'C01', 95720, '2001-02-07', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(36, 53114, 743, 'C01', 74375, '1988-02-26', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(23, 55257, 552, 'A01', 62306, '1981-09-25', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(8, 55785, 622, 'B01', 54018, '2007-02-01', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(33, 57846, 630, 'A01', 86840, '2016-05-12', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(24, 59612, 636, 'B01', 89340, '1970-11-11', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(18, 62051, 984, 'B01', 13483, '2003-04-11', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(6, 62950, 904, 'C01', 38876, '1982-12-08', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(38, 64569, 375, 'C01', 81502, '1992-12-03', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(16, 64977, 593, 'C01', 81245, '2017-03-02', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(43, 66171, 289, 'B01', 16348, '1996-09-14', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(45, 66642, 896, 'C01', 84517, '1996-09-19', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(5, 67121, 396, 'A01', 85936, '2004-09-25', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(2, 67431, 163, 'A01', 17914, '1981-04-30', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(7, 67509, 307, 'B01', 62305, '1980-08-20', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(15, 68942, 574, 'B01', 71241, '1973-10-30', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(3, 69829, 842, 'C01', 9495, '2016-04-10', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(25, 72795, 550, 'C01', 63954, '1975-03-03', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(47, 73575, 181, 'C01', 31715, '1970-03-09', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(12, 75210, 939, 'A01', 31134, '1981-10-30', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(46, 75405, 818, 'C01', 53612, '2007-02-03', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(13, 76695, 856, 'B01', 19192, '2018-02-18', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(26, 77966, 808, 'C01', 48882, '1990-07-25', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(39, 78366, 696, 'A01', 9498, '1986-04-08', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(31, 79364, 146, 'A01', 36827, '2002-06-01', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(41, 80345, 510, 'B01', 44720, '2007-07-10', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(29, 83264, 693, 'B01', 94207, '2013-07-25', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(10, 84377, 772, 'B01', 6609, '2001-06-07', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(50, 87473, 962, 'B01', 37548, '1981-09-24', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(35, 89851, 823, 'C01', 44166, '2003-03-07', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(22, 89871, 716, 'C01', 37899, '2014-11-23', '2018-11-20 02:59:40', '2018-11-20 02:59:40'),
(28, 89927, 554, 'B01', 33793, '2004-02-04', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(40, 90813, 501, 'B01', 66043, '1998-05-29', '2018-11-20 02:59:41', '2018-11-20 02:59:41'),
(14, 91894, 414, 'C01', 1221, '1970-05-06', '2018-11-20 02:59:39', '2018-11-20 02:59:39'),
(34, 93254, 992, 'C01', 98091, '1977-12-24', '2018-11-20 02:59:41', '2018-11-20 02:59:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

USE proyecto2;
CREATE TABLE `documentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `documento_cuenta` int(11) NOT NULL,
  `documento_transaccion` int(11) NOT NULL,
  `documento_tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento_fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

USE proyecto2;
INSERT INTO `documentos` (`id`, `documento_cuenta`, `documento_transaccion`, `documento_tipo`, `documento_fecha`, `created_at`, `updated_at`) VALUES
(1, 20768, 7107, 'Tran05', '1979-01-10', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(2, 12538, 7705, 'D01', '2012-05-26', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(3, 93254, 7705, 'D01', '2009-08-24', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(4, 90813, 7107, 'Tran05', '1980-06-21', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(5, 62950, 7705, 'D01', '1970-06-10', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(6, 68942, 7205, 'Serv06', '1970-12-13', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(7, 72795, 7205, 'Serv06', '1973-06-10', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(8, 26236, 7107, 'Tran05', '2004-02-20', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(9, 67509, 7705, 'D01', '2004-04-14', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(10, 73575, 7107, 'Tran05', '2003-02-10', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(11, 53114, 7205, 'Serv06', '2011-02-25', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(12, 64569, 7107, 'Tran05', '1984-08-16', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(13, 89871, 7107, 'Tran05', '2001-08-10', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(14, 67431, 7005, 'Ch02', '1983-10-09', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(15, 67121, 7107, 'Tran05', '1983-03-19', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(16, 64977, 7205, 'Serv06', '1986-02-21', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(17, 16362, 7405, 'Rem04', '1993-08-13', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(18, 18336, 7405, 'Rem04', '1985-08-18', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(19, 20783, 7405, 'Rem04', '1989-09-27', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(20, 91894, 7205, 'Serv06', '1983-06-16', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(21, 38664, 7405, 'Rem04', '1971-12-06', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(22, 62051, 7705, 'D01', '2008-10-24', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(23, 28381, 7705, 'D01', '1996-05-04', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(24, 48117, 7705, 'D01', '1970-05-06', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(25, 55785, 7705, 'D01', '2001-10-26', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(26, 55257, 7505, 'Re03', '2013-10-16', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(27, 18670, 7205, 'Serv06', '2012-04-15', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(28, 33110, 7505, 'Re03', '1975-04-08', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(29, 76695, 7705, 'D01', '2006-05-09', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(30, 75405, 7405, 'Rem04', '1970-03-07', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(31, 89851, 7205, 'Serv06', '2010-03-23', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(32, 66171, 7107, 'Tran05', '2008-03-16', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(33, 78366, 7205, 'Serv06', '1986-04-18', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(34, 11839, 7405, 'Rem04', '1971-09-14', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(35, 75210, 7107, 'Tran05', '2001-01-23', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(36, 80345, 7505, 'Re03', '1986-05-05', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(37, 77966, 7205, 'Serv06', '1998-08-27', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(38, 79364, 7705, 'D01', '1973-12-14', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(39, 87473, 7107, 'Tran05', '2014-04-29', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(40, 83264, 7705, 'D01', '2010-08-18', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(41, 26674, 7107, 'Tran05', '2009-10-25', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(42, 69829, 7505, 'Re03', '2010-08-19', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(43, 84377, 7505, 'Re03', '2009-09-26', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(44, 89927, 7107, 'Tran05', '1975-04-11', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(45, 30047, 7005, 'Ch02', '1997-06-26', '2018-11-23 00:54:20', '2018-11-23 00:54:20'),
(46, 59612, 7205, 'Serv06', '1975-09-21', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(47, 66642, 7705, 'D01', '1974-03-29', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(48, 22861, 7107, 'Tran05', '2009-03-13', '2018-11-23 00:54:19', '2018-11-23 00:54:19'),
(49, 36692, 7107, 'Tran05', '1991-01-24', '2018-11-23 00:54:18', '2018-11-23 00:54:18'),
(50, 57846, 7107, 'Tran05', '1978-03-05', '2018-11-23 00:54:18', '2018-11-23 00:54:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

USE proyecto2;
CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

USE proyecto2;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

USE proyecto2;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2018_11_19_001752_tabla_empleados', 1),
(82, '2018_11_19_002509_tabla_clientes', 1),
(83, '2018_11_19_002600_tabla__cuenta_b', 1),
(84, '2018_11_19_002656_tabla_transaccioness', 1),
(85, '2018_11_19_002801_tabla_documentoss', 1),
(86, '2018_11_19_002849_tabla_chequess', 1),
(87, '2018_11_23_011002_servicios', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_servicios`
--

USE proyecto2;
CREATE TABLE `pago_servicios` (
  `id` int(11) NOT NULL,
  `cuenta` int(11) NOT NULL,
  `codigo_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Servicio_pagado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_total` int(11) NOT NULL,
  `Fecha_pago` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pago_servicios`
--

USE proyecto2;
INSERT INTO `pago_servicios` (`id`, `cuenta`, `codigo_transaccion`, `nombre_transaccion`, `Servicio_pagado`, `monto_total`, `Fecha_pago`, `created_at`, `updated_at`) VALUES
(6, 33110, '7205', 'Pago Servicios', 'Agua', 975290, '1992-08-23', '2018-11-23 07:59:02', '2018-11-23 07:59:02'),
(3, 20768, '7205', 'Pago Servicios', 'Luz', 308363, '2008-03-06', '2018-11-23 07:59:02', '2018-11-23 07:59:02'),
(5, 16362, '7205', 'Pago Servicios', 'Telefono', 597753, '1979-09-25', '2018-11-23 07:59:02', '2018-11-23 07:59:02'),
(2, 26674, '7205', 'Pago Servicios', 'Telefono', 306416, '2010-11-23', '2018-11-23 07:59:03', '2018-11-23 07:59:03'),
(4, 18336, '7205', 'Pago Servicios', 'Agua', 684909, '1999-03-03', '2018-11-23 07:59:03', '2018-11-23 07:59:03'),
(1, 89871, '7205', 'Pago Servicios', 'Agua', 805574, '1982-08-04', '2018-11-23 07:59:03', '2018-11-23 07:59:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

USE proyecto2;
CREATE TABLE `transacciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero_cuenta` int(11) NOT NULL,
  `codigo_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_transaccion` int(11) NOT NULL,
  `fecha_transaccion` date NOT NULL,
  `comentarios_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sucursal_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colaborador_transaccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

USE proyecto2;
INSERT INTO `transacciones` (`id`, `numero_cuenta`, `codigo_transaccion`, `nombre_transaccion`, `monto_transaccion`, `fecha_transaccion`, `comentarios_transaccion`, `sucursal_transaccion`, `colaborador_transaccion`, `created_at`, `updated_at`) VALUES
(1, 26236, '7107', 'Transferencias', 750494, '2012-05-05', 'Hecho', 'Michigan', 'Sabryna Price II', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(2, 48117, '7705', 'Depositos', 286290, '2000-03-02', 'Hecho', 'Nevada', 'Pansy Thompson V', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(3, 91894, '7705', 'Depositos', 609546, '1992-04-30', 'Hecho', 'North Dakota', 'Priscilla O\'Reilly I', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(4, 80345, '7505', 'Retiros', 368414, '2000-09-10', 'Hecho', 'North Carolina', 'Ms. Telly Reinger II', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(5, 18336, '7205', 'Pago Servicios', 684909, '1999-03-03', 'Hecho', 'Tennessee', 'Katherine Gottlieb', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(6, 26674, '7205', 'Pago Servicios', 306416, '2010-11-23', 'Hecho', 'Massachusetts', 'Katlynn Gerhold', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(7, 30047, '7107', 'Transferencias', 713653, '2001-11-17', 'Hecho', 'Delaware', 'Lexi Reichert', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(8, 90813, '7005', 'Cheques', 823780, '1970-06-23', 'Hecho', 'Wisconsin', 'Rosario Cummings Sr.', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(9, 68942, '7005', 'Cheques', 331580, '1986-07-11', 'Hecho', 'District of Columbia', 'Abdul Rath', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(10, 76695, '7705', 'Depositos', 88459, '2016-07-14', 'Hecho', 'Rhode Island', 'Dell Collins', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(11, 62051, '7107', 'Transferencias', 144124, '2002-06-01', 'Hecho', 'South Dakota', 'Dr. Lola Trantow Jr.', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(12, 79364, '7405', 'Remesas', 255754, '2009-05-30', 'Hecho', 'South Dakota', 'Kayleigh Cronin', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(13, 22861, '7107', 'Transferencias', 355389, '1972-07-10', 'Hecho', 'Idaho', 'Dr. Augustus Beer', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(14, 33110, '7205', 'Pago Servicios', 975290, '1992-08-23', 'Hecho', 'Oklahoma', 'Walton Barrows', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(15, 38664, '7107', 'Transferencias', 744016, '2004-05-06', 'Hecho', 'Virginia', 'Hilton VonRueden', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(16, 89851, '7005', 'Cheques', 231998, '1990-10-13', 'Hecho', 'Michigan', 'Kenyatta Reilly', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(17, 59612, '7505', 'Retiros', 195896, '1990-02-13', 'Hecho', 'District of Columbia', 'Clyde Heaney DVM', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(18, 20783, '7005', 'Cheques', 695568, '1976-10-01', 'Hecho', 'North Dakota', 'Chris Hartmann', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(19, 11839, '7505', 'Retiros', 431770, '1990-05-05', 'Hecho', 'South Carolina', 'Alisha Jast', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(20, 67121, '7107', 'Transferencias', 6332, '2011-06-11', 'Hecho', 'West Virginia', 'Demarcus Haag', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(21, 78366, '7405', 'Remesas', 962107, '2002-06-12', 'Hecho', 'Arizona', 'Dr. Dagmar Kassulke II', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(22, 66171, '7107', 'Transferencias', 932230, '1976-12-21', 'Hecho', 'Hawaii', 'Maymie Lynch', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(23, 93254, '7107', 'Transferencias', 629290, '1980-11-25', 'Hecho', 'West Virginia', 'Mr. Casimir Wunsch MD', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(24, 75405, '7107', 'Transferencias', 35596, '2016-02-10', 'Hecho', 'Wyoming', 'Dr. Lavina Carter', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(25, 12538, '7405', 'Remesas', 219477, '1993-01-13', 'Hecho', 'Minnesota', 'Lorna Kutch', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(26, 87473, '7005', 'Cheques', 354693, '1982-03-24', 'Hecho', 'Oregon', 'Jayson Hilpert', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(27, 64977, '7405', 'Remesas', 726025, '1999-07-25', 'Hecho', 'New Mexico', 'Bonnie Konopelski', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(28, 67431, '7505', 'Retiros', 854789, '1988-10-23', 'Hecho', 'Rhode Island', 'Bell Treutel', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(29, 53114, '7107', 'Transferencias', 178857, '2011-02-10', 'Hecho', 'Washington', 'Jarvis Nader', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(30, 75210, '7405', 'Remesas', 99070, '1991-09-23', 'Hecho', 'Massachusetts', 'Dallin Pagac', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(31, 28381, '7405', 'Remesas', 564249, '1997-08-21', 'Hecho', 'Idaho', 'Reuben Mann', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(32, 57846, '7405', 'Remesas', 587197, '1993-09-09', 'Hecho', 'Ohio', 'Nathaniel Erdman', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(33, 66642, '7505', 'Retiros', 196642, '2009-01-16', 'Hecho', 'Arizona', 'Gracie Doyle', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(34, 69829, '7405', 'Remesas', 974701, '2003-04-04', 'Hecho', 'Vermont', 'Rosalee Pollich', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(35, 83264, '7405', 'Remesas', 971479, '2001-02-14', 'Hecho', 'Texas', 'Macey Carroll', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(36, 20768, '7205', 'Pago Servicios', 308363, '2008-03-06', 'Hecho', 'Ohio', 'Dedrick Pacocha', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(37, 62950, '7107', 'Transferencias', 597268, '1970-04-04', 'Hecho', 'Louisiana', 'Mr. Joany Schmeler', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(38, 84377, '7405', 'Remesas', 204310, '2004-11-15', 'Hecho', 'Texas', 'Ms. Reta Lockman', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(39, 55785, '7005', 'Cheques', 358053, '2017-05-28', 'Hecho', 'Arizona', 'Orland Emard', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(40, 64569, '7005', 'Cheques', 960038, '2003-05-02', 'Hecho', 'Colorado', 'Margaret Moen', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(41, 36692, '7107', 'Transferencias', 334228, '2007-05-04', 'Hecho', 'Wisconsin', 'Dr. Jerrod Cormier Jr.', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(42, 55257, '7405', 'Remesas', 870934, '2001-12-13', 'Hecho', 'Rhode Island', 'Alberta Christiansen', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(43, 73575, '7107', 'Transferencias', 530232, '1991-02-14', 'Hecho', 'Kentucky', 'Trevion Flatley', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(44, 18670, '7107', 'Transferencias', 963993, '1970-10-13', 'Hecho', 'Ohio', 'Arvilla Spencer', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(45, 89871, '7205', 'Pago Servicios', 805574, '1982-08-04', 'Hecho', 'Oregon', 'Prof. Queenie Fay', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(46, 77966, '7505', 'Retiros', 806191, '1997-07-22', 'Hecho', 'Mississippi', 'Jermain Hills', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(47, 72795, '7107', 'Transferencias', 487856, '2003-01-07', 'Hecho', 'Arkansas', 'Dameon Becker', '2018-11-23 01:22:02', '2018-11-23 01:22:02'),
(48, 89927, '7005', 'Cheques', 527399, '1995-10-10', 'Hecho', 'Oregon', 'Amanda Adams', '2018-11-23 01:22:04', '2018-11-23 01:22:04'),
(49, 67509, '7005', 'Cheques', 983075, '2007-04-09', 'Hecho', 'Connecticut', 'Herminia Nader', '2018-11-23 01:22:03', '2018-11-23 01:22:03'),
(50, 16362, '7205', 'Pago Servicios', 597753, '1979-09-25', 'Hecho', 'Michigan', 'Connie Ankunding', '2018-11-23 01:22:03', '2018-11-23 01:22:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cheques`
--
USE proyecto2;
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cheques_cheque_cuenta_foreign` (`cheque_cuenta`);

--
-- Indices de la tabla `clientes`
--
USE proyecto2;
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- Indices de la tabla `cuentas_bancarias`
--
USE proyecto2;
ALTER TABLE `cuentas_bancarias`
  ADD PRIMARY KEY (`numero_cuenta`),
  ADD KEY `cuentas_bancarias_codigo_usuario_foreign` (`codigo_usuario`);

--
-- Indices de la tabla `documentos`
--
USE proyecto2;
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentos_documento_cuenta_foreign` (`documento_cuenta`);

--
-- Indices de la tabla `empleados`
--
USE proyecto2;
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
USE proyecto2;
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
USE proyecto2;
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transacciones_numero_cuenta_foreign` (`numero_cuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cheques`
--
USE proyecto2;
ALTER TABLE `cheques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
USE proyecto2;
ALTER TABLE `documentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
USE proyecto2;
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
USE proyecto2;
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
USE proyecto2;
ALTER TABLE `transacciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cheques`
--
USE proyecto2;
ALTER TABLE `cheques`
  ADD CONSTRAINT `cheques_cheque_cuenta_foreign` FOREIGN KEY (`cheque_cuenta`) REFERENCES `cuentas_bancarias` (`numero_cuenta`);

--
-- Filtros para la tabla `cuentas_bancarias`
--
USE proyecto2;
ALTER TABLE `cuentas_bancarias`
  ADD CONSTRAINT `cuentas_bancarias_codigo_usuario_foreign` FOREIGN KEY (`codigo_usuario`) REFERENCES `clientes` (`codigo_usuario`);

--
-- Filtros para la tabla `documentos`
--
USE  proyecto2;
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_documento_cuenta_foreign` FOREIGN KEY (`documento_cuenta`) REFERENCES `cuentas_bancarias` (`numero_cuenta`);

--
-- Filtros para la tabla `transacciones`
--
USE proyecto2;
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_numero_cuenta_foreign` FOREIGN KEY (`numero_cuenta`) REFERENCES `cuentas_bancarias` (`numero_cuenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-03-2020 a las 14:42:22
-- Versión del servidor: 10.3.22-MariaDB-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elmundotec_dirnic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 124),
(8, 1, NULL, NULL, 'Groups', 2, 13),
(9, 8, NULL, NULL, 'index', 3, 4),
(10, 8, NULL, NULL, 'view', 5, 6),
(11, 8, NULL, NULL, 'add', 7, 8),
(12, 8, NULL, NULL, 'edit', 9, 10),
(13, 8, NULL, NULL, 'delete', 11, 12),
(20, 1, NULL, NULL, 'Pages', 14, 17),
(21, 20, NULL, NULL, 'display', 15, 16),
(22, 1, NULL, NULL, 'Parametros', 18, 29),
(23, 22, NULL, NULL, 'index', 19, 20),
(24, 22, NULL, NULL, 'view', 21, 22),
(25, 22, NULL, NULL, 'add', 23, 24),
(26, 22, NULL, NULL, 'edit', 25, 26),
(27, 22, NULL, NULL, 'delete', 27, 28),
(46, 1, NULL, NULL, 'Users', 30, 51),
(47, 46, NULL, NULL, 'login', 31, 32),
(48, 46, NULL, NULL, 'logout', 33, 34),
(49, 46, NULL, NULL, 'index', 35, 36),
(50, 46, NULL, NULL, 'view', 37, 38),
(51, 46, NULL, NULL, 'add', 39, 40),
(52, 46, NULL, NULL, 'edit', 41, 42),
(53, 46, NULL, NULL, 'delete', 43, 44),
(54, 1, NULL, NULL, 'AclExtras', 52, 53),
(55, 1, NULL, NULL, 'DebugKit', 54, 61),
(56, 55, NULL, NULL, 'ToolbarAccess', 55, 60),
(57, 56, NULL, NULL, 'history_state', 56, 57),
(58, 56, NULL, NULL, 'sql_explain', 58, 59),
(61, 46, NULL, NULL, 'initDB', 45, 46),
(62, 1, NULL, NULL, 'Permisos', 62, 75),
(63, 62, NULL, NULL, 'roles', 63, 64),
(64, 62, NULL, NULL, 'aplicaciones', 65, 66),
(65, 62, NULL, NULL, 'add', 67, 68),
(66, 62, NULL, NULL, 'acceso', 69, 70),
(67, 62, NULL, NULL, 'edit', 71, 72),
(68, 62, NULL, NULL, 'delete', 73, 74),
(73, 1, NULL, NULL, 'Menus', 76, 85),
(74, 73, NULL, NULL, 'index', 77, 78),
(75, 73, NULL, NULL, 'add', 79, 80),
(79, 73, NULL, NULL, 'delete', 81, 82),
(80, 73, NULL, NULL, 'edit', 83, 84),
(81, 46, NULL, NULL, 'servicioiniciarsesion', 47, 48),
(82, 1, NULL, NULL, 'Categorias', 86, 97),
(83, 82, NULL, NULL, 'index', 87, 88),
(84, 82, NULL, NULL, 'add', 89, 90),
(85, 82, NULL, NULL, 'edit', 91, 92),
(86, 82, NULL, NULL, 'delete', 93, 94),
(87, 1, NULL, NULL, 'Productos', 98, 123),
(88, 87, NULL, NULL, 'index', 99, 100),
(89, 87, NULL, NULL, 'add', 101, 102),
(90, 87, NULL, NULL, 'edit', 103, 104),
(91, 87, NULL, NULL, 'delete', 105, 106),
(92, 82, NULL, NULL, 'serviciocategorias', 95, 96),
(93, 87, NULL, NULL, 'servicioproductos', 107, 108),
(94, 46, NULL, NULL, 'servicioresgistrousuario', 49, 50),
(95, 87, NULL, NULL, 'cargarmetar', 109, 110),
(96, 87, NULL, NULL, 'cargarsatelitalvisual', 111, 112),
(97, 87, NULL, NULL, 'cargarsatelitalinfrarojo', 113, 114),
(98, 87, NULL, NULL, 'cargarpronostico', 115, 116),
(99, 87, NULL, NULL, 'cargaralerta', 117, 118),
(100, 87, NULL, NULL, 'view', 119, 120),
(101, 87, NULL, NULL, 'cargartaf', 121, 122);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, 'Administrador', 1, 4),
(2, 1, 'User', 1, '42684024', 2, 3),
(3, NULL, 'Group', 2, 'Manager', 5, 8),
(10, 3, 'User', 8, '159753', 6, 7),
(11, NULL, 'Group', 3, 'Usuario Aplicación', 9, 24),
(12, 11, 'User', 9, '12345678', 10, 11),
(13, 11, 'User', 10, '123100', 12, 13),
(14, 11, 'User', 11, '31812364', 14, 15),
(15, 11, 'User', 12, '30910778', 16, 17),
(16, 11, 'User', 13, '31412897', 18, 19),
(17, 11, 'User', 14, '31523729', 20, 21),
(18, 11, 'User', 15, '986516', 22, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(33, 3, 1, '-1', '-1', '-1', '-1'),
(34, 3, 8, '1', '1', '1', '1'),
(35, 3, 46, '1', '1', '1', '1'),
(36, 3, 53, '-1', '-1', '-1', '-1'),
(37, 3, 13, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cake_sessions`
--

CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `expires` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('8ee47ksgeipe84ogl2b09hl8s4', 'Config|a:3:{s:9:\"userAgent\";s:32:\"a2fb9c4ca34c2ef16d4f538355fe603f\";s:4:\"time\";i:1583092896;s:9:\"countdown\";i:10;}', 1583092896),
('bvclimruv8m8eqr8mp3av454a7', 'Config|a:3:{s:9:\"userAgent\";s:32:\"47be70e8843db90b4d57876b1c4bc1c8\";s:4:\"time\";i:1582867960;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:22:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";s:5:\"Cesar\";s:3:\"app\";s:5:\"Ramos\";s:3:\"apm\";s:5:\"Cueva\";s:3:\"dni\";s:8:\"42684024\";s:3:\"cip\";s:8:\"42684024\";s:5:\"grado\";s:14:\"Empleado civil\";s:15:\"unidad_policial\";s:6:\"DIRNIC\";s:5:\"cargo\";s:20:\"Analista de Sistemas\";s:8:\"telefono\";s:9:\"998886686\";s:6:\"correo\";s:25:\"cesarluis1000@hotmail.com\";s:12:\"departamento\";s:4:\"Lima\";s:4:\"sexo\";s:9:\"Masculino\";s:8:\"username\";s:8:\"42684024\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:4:\"hash\";s:0:\"\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1582867960),
('h3oh49s1sq8ag2tavrbppf83g4', 'Config|a:3:{s:9:\"userAgent\";s:32:\"a2fb9c4ca34c2ef16d4f538355fe603f\";s:4:\"time\";i:1583181235;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:22:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";s:5:\"Cesar\";s:3:\"app\";s:5:\"Ramos\";s:3:\"apm\";s:5:\"Cueva\";s:3:\"dni\";s:8:\"42684024\";s:3:\"cip\";s:8:\"42684024\";s:5:\"grado\";s:14:\"Empleado civil\";s:15:\"unidad_policial\";s:6:\"DIRNIC\";s:5:\"cargo\";s:20:\"Analista de Sistemas\";s:8:\"telefono\";s:9:\"998886686\";s:6:\"correo\";s:25:\"cesarluis1000@hotmail.com\";s:12:\"departamento\";s:4:\"Lima\";s:4:\"sexo\";s:9:\"Masculino\";s:8:\"username\";s:8:\"42684024\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:4:\"hash\";s:0:\"\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1583181236),
('u2472oo2uteu9kg93l3iovcop2', 'Config|a:3:{s:9:\"userAgent\";s:32:\"2d6d44fa4eba54550dedfc45cfce5d2f\";s:4:\"time\";i:1582668925;s:9:\"countdown\";i:10;}', 1582668925),
('vu5vujcamevg2hd78rctvckpu2', 'Config|a:3:{s:9:\"userAgent\";s:32:\"4f82b408a31d12a8085a565ed79da4cc\";s:4:\"time\";i:1582668891;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:22:{s:2:\"id\";s:1:\"8\";s:7:\"nombres\";s:6:\"Dirnic\";s:3:\"app\";s:6:\"Dirnic\";s:3:\"apm\";s:6:\"Dirnic\";s:3:\"dni\";s:8:\"12345678\";s:3:\"cip\";s:6:\"159753\";s:5:\"grado\";s:6:\"Dirnic\";s:15:\"unidad_policial\";s:6:\"DIRNIC\";s:5:\"cargo\";s:6:\"Dirnic\";s:8:\"telefono\";s:9:\"123456789\";s:6:\"correo\";s:25:\"cesarluis1000@hotmail.com\";s:12:\"departamento\";s:4:\"Lima\";s:4:\"sexo\";s:9:\"Masculino\";s:8:\"username\";s:6:\"159753\";s:8:\"group_id\";s:1:\"2\";s:6:\"estado\";s:1:\"A\";s:4:\"hash\";s:0:\"\";s:7:\"creador\";s:0:\"\";s:6:\"creado\";N;s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Manager\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"123456\";s:6:\"creado\";s:19:\"2020-02-22 17:59:27\";s:11:\"modificador\";s:6:\"159753\";s:10:\"modificado\";s:19:\"2020-02-25 01:14:36\";}}}', 1582668891);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'METAR', 'Aeropuertos del Perú administrados por CORPAC S.A.', NULL, NULL, NULL, NULL),
(2, 'TAF', 'Pronosticos de Aerodromo Termina', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Administrador', 'A', 'cramos', '2017-04-26 01:19:00', '', NULL),
(2, 'Manager', 'A', '123456', '2020-02-22 17:59:27', '159753', '2020-02-25 01:14:36'),
(3, 'Usuario Aplicación', 'A', '123456', '2020-02-25 00:58:04', '159753', '2020-02-25 01:18:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `aro_id` int(10) DEFAULT NULL,
  `aco_id` int(10) DEFAULT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `nombre`, `parent_id`, `lft`, `rght`, `aro_id`, `aco_id`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Permisos', NULL, 1, 12, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Grupos', 1, 2, 3, 1, 9, NULL, NULL, NULL, NULL),
(3, 'Usuarios', 1, 4, 5, 1, 49, NULL, NULL, NULL, NULL),
(4, 'Aplicaciones', 1, 6, 7, 1, 64, NULL, NULL, NULL, NULL),
(5, 'Accesos', 1, 8, 9, 1, 63, NULL, NULL, NULL, NULL),
(14, 'Menu', 1, 10, 11, 1, 74, NULL, NULL, NULL, NULL),
(33, 'Dirma', NULL, 29, 42, 1, NULL, NULL, NULL, NULL, NULL),
(34, 'Categorias', 33, 30, 31, 1, 83, NULL, NULL, NULL, NULL),
(35, 'Mensajes Historicos', 33, 32, 33, 1, 88, NULL, NULL, NULL, NULL),
(36, 'Videos', 33, 34, 35, 1, 96, NULL, NULL, NULL, NULL),
(37, 'Manual', 33, 36, 37, 1, 97, NULL, NULL, NULL, NULL),
(38, 'Pronostico', 33, 38, 39, 1, 98, NULL, NULL, NULL, NULL),
(39, 'Alertas', 33, 40, 41, 1, 99, NULL, NULL, NULL, NULL),
(40, 'Permisos', NULL, 43, 48, 3, NULL, NULL, NULL, NULL, NULL),
(41, 'Grupos', 40, 44, 45, 3, 9, NULL, NULL, NULL, NULL),
(42, 'Usuarios', 40, 46, 47, 3, 49, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` int(10) NOT NULL,
  `modulo` varchar(45) NOT NULL,
  `variable` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `modulo`, `variable`, `valor`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(3, 'migracion_productos', 'sizePag', '500', NULL, NULL, NULL, NULL),
(4, 'migracion_productos', 'page', '5', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `aerodromo` varchar(250) NOT NULL,
  `abreviacion` varchar(250) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `latitud` decimal(8,6) NOT NULL,
  `longitud` decimal(8,6) NOT NULL,
  `estacion` varchar(45) NOT NULL,
  `detalle` varchar(250) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `imagenchica` varchar(250) DEFAULT NULL,
  `imagengrande` varchar(250) DEFAULT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `aerodromo`, `abreviacion`, `nombre`, `latitud`, `longitud`, `estacion`, `detalle`, `categoria_id`, `precio`, `imagenchica`, `imagengrande`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Andahuaylas', 'SPHY', 'Aeropuerto de Andahuaylas', -13.713372, -73.352498, 'CORPAC', 'SPHY 271300Z 01004KT CAVOK 09/M03 Q1037 RMK BIRD HAZARD RWY 03/21 PP000', 1, NULL, '', '', NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(2, 'Anta', 'SPHZ', 'Aeropuerto Comndante FAP Germán Arias Graziani', -9.347228, -77.598367, 'CORPAC', 'SPHZ 271300Z 03004KT 9999 FEW050 12/07 Q1031 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(3, 'Arequipa', 'SPQU', 'Aeropuerto Internacional Rodriguez Ballón', -16.344088, -99.999999, 'CORPAC', 'SPQU 271300Z VRB02KT 9999 FEW020 17/12 Q1028 NOSIG RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(4, 'Atalaya', 'SPAY', 'Aeropuerto Teniente General FAP Gerardo Pérez Pinedo', -10.730818, -73.767627, 'CORPAC', 'SPAY 271300Z /////KT 9999 FEW015 SCT150 25/23 Q1012 RMK TN 18.6 BIRD HAZARD RWY 04/22 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(5, 'Ayacucho', 'SPHO', 'Aeropuerto Coronel FAP Alfredo Mendivil Duarte', -13.153430, -74.205050, 'CORPAC', 'SPHO 271300Z 04002KT CAVOK 16/09 Q1030 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(6, 'Cajamarca', 'SPJR', 'Aeropuerto Mayor General FAP Armando Revoredo Iglesias', -7.142684, -78.489874, 'CORPAC', 'SPJR 271300Z VRB02KT CAVOK 12/08 Q1031 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(7, 'Chachapoyas', 'SPPY', 'Aeropuerto de Chachapoyas', -6.206903, -77.852419, 'CORPAC', 'SPPY 271300Z 28003KT 8000 BCFG FEW005 SCT013 13/12 Q1029 RMK TN09.7 PP132', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(8, 'Chiclayo', 'SPHI', 'Aeropuerto Internacional Capitán FAP José A. Quiñones', -6.787500, -79.828100, 'CORPAC', 'SPHI 271300Z 17010KT 9999 FEW010 BKN025 23/20 Q1014 RMK BIRD HAZARD RWY 19/01 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(9, 'Chimbote', 'SPEO', 'Aeropuerto Teniente FAP Jaime Andrés de Montreuil Morales', -9.150697, -78.526190, 'CORPAC', 'SPEO 271300Z 20003KT 3000 BR OVC005 20/19 Q1014 RMK BIRD HAZARD RWY 01 TN 18.9 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(10, 'Cusco', 'SPZO', 'Aeropuerto Internacional Teniente Alejandro Velasco Astete', -13.537673, -71.943621, 'CORPAC', 'SPZO 271300Z 09003KT 020V140 9999 FEW050 SCT100 12/06 Q1034 NOSIG RMK BIRD HAZARD RWY 28 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(11, 'Huanuco', 'SPNC', 'Aeropuerto Alférez FAP David Figueroa Fernandini', -9.878684, -76.205548, 'CORPAC', 'SPNC 271300Z 09005KT 9999 FEW040 18/13 Q1023 RMK TN13.6 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(12, 'Ilo', 'SPLO', 'Aeropuerto de Ilo', -17.693907, -71.343475, 'CORPAC', 'SPLO 271300Z 20003KT CAVOK 25/21 Q1013 RMK BIRD HAZARD RWY 30 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(13, 'Iquitos', 'SPQT', 'Aeropuerto Internacional Coronel FAP Francisco Secada Vignetta', -3.784815, -73.302881, 'CORPAC', 'SPQT 271300Z VRB01KT CAVOK 28/25 Q1012 NOSIG RMK BIRD HAZARD RWY 06/24 PP000', 1, NULL, '', '', NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(14, 'Jaen', 'SPJE', 'Aeropuerto de Jaén', -5.595100, -78.774147, 'CORPAC', 'SPJE 271300Z VRB02KT CAVOK 23/21 Q1017 RMK BIRD HAZARD RWY 16/34 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(15, 'Jauja', 'SPJJ', 'Aeropuerto Francisco Carle', -11.784122, -75.473529, 'CORPAC', 'SPJJ 271300Z 35003KT CAVOK 10/04 Q1036 RMK BIRD HAZARD RWY 13/31 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(16, 'Juanjui', 'SPJI', 'Aeropuerto de Juanjui', -7.178121, -76.733586, 'CORPAC', 'SPJI 271300Z 00000KT 5000 BR BKN010 23/22 Q1021 RMK TN22.0 RA NOCHE PP048', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(17, 'Juliaca', 'SPJL', 'Aeropuerto Internacional Inca Manco Capac', -15.766678, -70.158901, 'CORPAC', 'SPJL 271300Z 01002KT 9999 NSC 11/04 Q1038 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(18, 'Lima', 'SPJC', 'Aeropuerto Internacional Jorge Chávez', -12.024213, -77.111790, 'CORPAC', 'SPJC 271300Z 18005KT 7000 BKN130 22/20 Q1013 NOSIG RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(19, 'Mazamari', 'SPMF', 'Aeropuerto Mayor PNP Nancy Flores Páucar', -11.326100, -74.535390, 'CORPAC', 'SPMF 271300Z 29002KT 9999 FEW030 SCT080 24/22 Q1015 RMK TN22.1 PP000', 1, NULL, '', '', NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(20, 'Nazca', 'SPZA', 'Aeropuerto Maria Reiche Neuman', -14.854657, -74.960731, 'CORPAC', 'SPZA 271300Z VRB02KT 9999 SCT040 23/19 Q1016 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(21, 'Pisco', 'SPSO', 'Aeropuerto Capitán FAP Renán Elías Olivera', -13.744800, -76.220390, 'CORPAC', 'SPSO 271300Z 21008KT CAVOK 23/20 Q1013 RMK BIRD HAZARD RWY 22/04 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(22, 'Piura', 'SPUR', 'Aeropuerto Internacional Capitán FAP Guillermo Concha Iberico', -5.205800, -80.616400, 'CORPAC', 'SPUR 271300Z 18008KT 9999 SCT030 25/20 Q1015 RMK BIRD HAZARD RWY 19/01 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(23, 'Pucallpa', 'SPCL', 'Aeropuerto Internacional Capitán FAP David Abensur Rengifo', -8.377900, -74.574300, 'CORPAC', 'SPCL 271300Z 35004KT 9999 SCT017 28/24 Q1012 RMK BIRD HAZARD RWY 02/20 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(24, 'Puerto maldonado', 'SPTU', 'Aeropuerto Internacional Padre Jose Aldamiz', -12.613600, -69.228600, 'CORPAC', 'SPTU 271300Z 34007KT 320V020 9999 SCT020 28/25 Q1010 RMK BIRD HAZARD RWY 01/19 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(25, 'Rioja', 'SPJA', 'Aeropuerto Juan Simons Vela', -6.065655, -77.161984, 'CORPAC', 'SPJA NIL', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(26, 'Tacna', 'SPTN', 'Aeropuerto Internacional Coronel FAP Carlos Ciriani Santa Rosa', -18.050460, -70.276139, 'CORPAC', 'SPTN 271300Z 21005KT 9999 FEW020 23/19 Q1015 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(27, 'Talara', 'SPYL', 'Aeropuerto Internacional Capitán FAP Victor Montes Arias', -4.575718, -81.255910, 'CORPAC', 'SPYL 271300Z 15014KT 9999 SCT050 24/20 Q1014 RMK TN23.2 BIRD HAZARD RWY 17/35 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(28, 'Tarapoto', 'SPST', 'Aeropuerto Cadete FAP Guillermo del Castillo Paredes', -6.508400, -76.372770, 'CORPAC', 'SPST 271300Z 00000KT 2500 7000N BR SCT006 BKN070 24/23 Q1013 RMK BIRD HAZARD RWY 17/35 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(29, 'Tingo maria', 'SPGM', 'Aeropuerto de Tingo María', -9.286502, -76.005018, 'CORPAC', 'SPGM 271300Z 17005KT 9999 FEW025 24/20 Q1015 RMK TN20.6 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(30, 'Trujillo', 'SPRU', 'Aeropuerto Internacional Capitán FAP Carlos Martinez de Pinillos', -8.085343, -79.108541, 'CORPAC', 'SPRU 271300Z 14008KT 7000 OVC010 22/20 Q1015 RMK BR PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(31, 'Tumbes', 'SPME', 'Aeródromo Capitán FAP Pedro Canga Rodriguez', -3.551010, -80.384416, 'CORPAC', 'SPME 271300Z 07005KT 9999 FEW009 BKN020 25/23 Q1014 RMK BIRD HAZARD RWY 32/14 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(32, 'Yurimaguas', 'SPMS', 'Aeródromo de Yurimaguas', -5.893601, -76.119230, 'CORPAC', 'SPMS 271300Z 00000KT 9999 FEW015 27/23 Q1012 RMK BIRD HAZARD RWY 09/27 PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:09:32'),
(33, 'La joya', 'SPLC', 'Aeropuerto Mariano Melgar', -16.788420, -71.886990, 'FAP', 'SPLC 260000Z 16006KT 9999 SCT010 OVC040 18/16 Q1023 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(34, 'San ramon', 'SPRM', 'Aeropuerto San Ramon', -11.129640, -75.350750, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(35, 'Vitor', 'SPVR', 'Aeropuerto La Joya', -16.429500, -71.837760, 'FAP', 'SPVR 260000Z 20003KT 9999 SCT050 18/15 Q1018 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(36, 'Chiclayo', 'SPHI', 'Aeropuerto Internacional Capitán FAP José A. Quiñones', -6.787500, -79.828100, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(37, 'Morona', 'SPID', 'Aeropuerto Teniente Bergerie', -3.784700, -73.308800, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(38, 'Pisco', 'SPSO', 'Aeropuerto Capitán FAP Renán Elías Olivera', -13.744800, -76.220390, 'FAP', 'SPSO 260000Z 22019KT 9999 BKN080 23/20 Q1013 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(39, 'Mazamari', 'SPMF', 'Aeropuerto Mayor PNP Nancy Flores Páucar', -11.326100, -74.535390, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(40, 'Piura', 'SPUR', 'Aeropuerto Internacional Capitán FAP Guillermo Concha Iberico', -5.205800, -80.616400, 'FAP', 'SPUR 260000Z 25010KT 9999 SCT020 BKN060 29/20 Q1011 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(41, 'Puerto maldonado', 'SPTU', 'Aeropuerto Internacional Padre Jose Aldamiz', -12.613600, -69.228600, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(42, 'El pato', 'SPTP', 'Aeropuerto El Pato', -4.576700, -81.254190, 'FAP', 'SPTP 260000Z 18014KT 9999 OVC040 24/20 Q1006 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(43, 'El valor', 'SPEV', 'Aerodromo Estacion N°7', -5.671860, -78.641230, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(44, 'Pichari', 'SPHR', 'Aeropuerto del Fuerte Pichari', -12.528630, -73.835230, 'FAP', 'SPHR 260000Z 00000KT 9999 SCT025 27/25 Q1011 RMK PP000', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(45, 'Las palmas', 'SPLP', 'Aeropuerto Las Palmas', -12.154210, -77.000840, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(46, 'La vista', 'SPVS', 'Aerodromo Estacion N°5', -4.649650, -77.505790, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(47, 'Quillabamba', 'SPQK', 'Aeropuerto de 33 Brigada de Infanteria Fuerte Pachacutec', -12.861970, -72.700460, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(48, 'Valle esmeralda', 'SPVD', 'Helipuerto BCT EP- N°324', -12.122320, -74.073850, 'FAP', 'SPVD 260000Z 00000KT 9000 FEW030 SCT100 RMK HZTE BRUMOSO', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(49, 'Tarapoto', 'SPST', 'Aeropuerto Cadete FAP Guillermo del Castillo Paredes', -6.508400, -76.372770, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(50, 'Cielo punku', 'SPNK', 'Helipuerto de BCT DINOES \"Cielo Punku\"', -12.800100, -73.502500, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-22 19:02:28'),
(51, 'Pampas', 'SPMQ', 'Helipuerto de Pampas', -12.396313, -74.866113, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(52, 'Alto anapati', 'SPPQ', 'Helipuerto de BCT EP-N°312', -11.672675, -74.311088, 'FAP', 'SPMQ 260000Z 32006KT 9999 FEW030 SCT060 ', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(53, 'Quiteni', 'SPQI', 'Helipuerto de BCT EP-N°324', -11.673463, -74.309039, 'FAP', 'SPPQ 260000Z 00000KT 9000 BKN030 RMK VCSH CDTE SE', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(54, 'Venecia', 'SPVN', 'Helipuerto', -12.644450, -73.002421, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(55, 'Huachocolpa', 'SPDY', 'Helipuerto', -13.035265, -74.944344, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(56, 'Caballococha', 'SPBC', 'S/N explotador CORPAC', -3.916666, -70.508333, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(57, 'El estrecho', 'SPEE', 'S/N explotador GOREL', -2.451111, -72.677778, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(58, 'Angamos', 'SPDN', 'S/N explotador', -5.137100, -72.867800, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(59, 'San lorenzo', 'SPQM', 'S/N explotador', -4.825761, -76.557123, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 19:18:50'),
(60, 'Pucallpa', 'SPCL', 'Aeropuerto Internacional Capitán FAP David Abensur Rengifo', -8.377900, -74.574300, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-26 08:21:55'),
(61, 'Juanjui', 'SPJJ', 'Aeropuerto de Juanjui', -7.169700, -76.729200, 'FAP', '', 1, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-22 19:02:28'),
(62, 'Andahuaylas', 'SPHY', 'Aeropuerto de Andahuaylas', -13.713372, -73.352498, 'CORPAC', 'SPHY 271100Z 2712/2812 20005KT CAVOK TX15/2719Z TN06/2811Z TEMPO 2714/2722 FEW020 BKN050', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(63, 'Anta', 'SPHZ', 'Aeropuerto Comndante FAP Germán Arias Graziani', -9.347228, -77.598367, 'CORPAC', 'SPHZ 271030Z 2712/2812 02005KT 9999 FEW030 BKN060 TX22/2719Z TN08/2811Z TEMPO 2712/2714 9000 FEW030 BKN050 TEMPO 2717/2720 8000 RA SCT020 BKN050', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(64, 'Arequipa', 'SPQU', 'Aeropuerto Internacional Rodriguez Ballón', -16.344088, -99.999999, 'CORPAC', 'SPQU 271100Z 2712/2812 03005KT CAVOK TX17/2718Z TN11/2810Z BECMG 2714/2716 25010KT BECMG 2723/2801 3000 BR BKN008', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(65, 'Atalaya', 'SPAY', 'Aeropuerto Teniente General FAP Gerardo Pérez Pinedo', -10.730818, -73.767627, 'CORPAC', 'NIL', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(66, 'Ayacucho', 'SPHO', 'Aeropuerto Coronel FAP Alfredo Mendivil Duarte', -13.153430, -74.205050, 'CORPAC', 'SPHO 271100Z 2712/2812 02005KT CAVOK TX25/2719Z TN12/2811Z TEMPO 2719/2803 RA FEW040TCU BKN080', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(67, 'Cajamarca', 'SPJR', 'Aeropuerto Mayor General FAP Armando Revoredo Iglesias', -7.142684, -78.489874, 'CORPAC', 'SPJR 271030Z 2712/2812 VRB02KT 9999 SCT040 TX22/2719Z TN06/2811Z BECMG 2714/2715 28006KT FEW030 SCT060', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(68, 'Chachapoyas', 'SPPY', 'Aeropuerto de Chachapoyas', -6.206903, -77.852419, 'CORPAC', 'NIL', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(69, 'Chiclayo', 'SPHI', 'Aeropuerto Internacional Capitán FAP José A. Quiñones', -6.787500, -79.828100, 'CORPAC', 'SPHI 271100Z 2712/2812 17010KT 9999 BKN012 TX32/2719Z TN21/2811Z BECMG 2713/2715 SCT014 FM271600 18015KT CAVOK FM280500 17008KT CAVOK', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(70, 'Chimbote', 'SPEO', 'Aeropuerto Teniente FAP Jaime Andrés de Montreuil Morales', -9.150697, -78.526190, 'CORPAC', 'SPEO 072100Z 19014KT 9999 FEW014 24/19 Q1012 RMK TX26.5 PP000', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-12-08 09:13:18'),
(71, 'Cusco', 'SPZO', 'Aeropuerto Internacional Teniente Alejandro Velasco Astete', -13.537673, -71.943621, 'CORPAC', 'SPZO 271100Z 2712/2812 00000KT 9999 SCT050 TX23/2719Z TN08/2811Z TEMPO 2719/2723 02013KT FEW040TCU BKN080 TEMPO 2806/2810 FEW050 BKN070', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(72, 'Huanuco', 'SPNC', 'Aeropuerto Alférez FAP David Figueroa Fernandini', -9.878684, -76.205548, 'CORPAC', 'SPNC 271030Z 2712/2812 06010KT 9999 FEW040 SCT120 TX29/2719Z TN15/2811Z TEMPO 2712/2715 8000 SCT020 BKN110 TEMPO 2719/2722 8000 RA SCT025 BKN100', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(73, 'Ilo', 'SPLO', 'Aeropuerto de Ilo', -17.693907, -71.343475, 'CORPAC', 'SPLO 271120Z 2712/2812 13004KT CAVOK TX28/2719Z TN21/2810Z FM271830 20010KT CAVOK FM280000 16005KT CAVOK', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(74, 'Iquitos', 'SPQT', 'Aeropuerto Internacional Coronel FAP Francisco Secada Vignetta', -3.784815, -73.302881, 'CORPAC', 'SPQT 271100Z 2712/2812 20003KT CAVOK TX33/2719Z TN23/2811 TEMPO 2712/2713 7000 MIFG NSC BECMG 2713/2716 28005KT 9999 BKN020 SCT100 TEMPO 2719/2723 07012KT 4000 SHRA BKN020 FEW025TCU BKN080', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(75, 'Jaen', 'SPJE', 'Aeropuerto de Jaén', -5.595100, -78.774147, 'CORPAC', 'SPJE 271100Z 2712/2812 28005KT 9999 SCT030 TX33/2720Z TN22/2811Z TEMPO 2810/2812 8000 SCT010 BKN020 BKN080', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(76, 'Jauja', 'SPJJ', 'Aeropuerto Francisco Carle', -11.784122, -75.473529, 'CORPAC', 'SPJJ 271100Z 2712/2812 33005KT 9999 FEW050 TX19/2719Z TN05/2811Z BECMG 2715/2717 15012KT SCT040TCU BKN080 BECMG 2800/2802 00000KT', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(77, 'Juanjui', 'SPJI', 'Aeropuerto de Juanjui', -7.178121, -76.733586, 'CORPAC', 'SPJI 271100Z 2712/2812 12005KT CAVOK TX34/2720Z TN22/2811Z BECMG 2712/2714 9999 SCT020', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(78, 'Juliaca', 'SPJL', 'Aeropuerto Internacional Inca Manco Capac', -15.766678, -70.158901, 'CORPAC', 'SPJL 271120Z 2712/2812 03003KT 9999 SCT020 SCT100 TX19/2719Z TN05/2811Z FM271800 09005KT 9999 BKN020 FM272200 22010KT 8000 RA BKN012 BKN080 TEMPO 2722/2801 TSRA SCT012 FEW020CB BKN080 FM280400 06003KT 9999 SCT015 SCT100', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(79, 'Lima', 'SPJC', 'Aeropuerto Internacional Jorge Chávez', -12.024213, -77.111790, 'CORPAC', 'SPJC 271100Z 2712/2812 17008KT 6000 SCT010 TX27/2719Z TN20/2811Z TEMPO 2712/2714 3500 BR FM271500 17010KT CAVOK FM280200 17008KT 9999 SCT010', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(80, 'Mazamari', 'SPMF', 'Aeropuerto Mayor PNP Nancy Flores Páucar', -11.326100, -74.535390, 'CORPAC', 'SPMF 072300Z 33003KT 9999 FEW040 26/20 Q1010 RMK PP000', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-12-08 09:13:19'),
(81, 'Nazca', 'SPZA', 'Aeropuerto Maria Reiche Neuman', -14.854657, -74.960731, 'CORPAC', 'SPZA 271120Z 2712/2812 VRB02KT 9999 BKN020 TX34/2719Z TN20/2810Z FM271500 26005KT CAVOK FM272000 20012KT 8000 NSC FM272330 18005KT 9999 SCT100', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(82, 'Pisco', 'SPSO', 'Aeropuerto Capitán FAP Renán Elías Olivera', -13.744800, -76.220390, 'CORPAC', 'SPSO 271100Z 2712/2812 VRB02KT 7000 NSC TX28/2719Z TN20/2811Z TEMPO 2712/2713 4000 BR BECMG 2714/2716 27010KT BECMG 2719/2721 21015KT BECMG 2802/2804 21005KT', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(83, 'Piura', 'SPUR', 'Aeropuerto Internacional Capitán FAP Guillermo Concha Iberico', -5.205800, -80.616400, 'CORPAC', 'SPUR 271100Z 2712/2812 15005KT 9999 BKN030 TX34/2719Z TN22/2811Z FM271400 16008KT CAVOK FM272000 19010KT CAVOK FM280600 18005KT 9999 SCT030', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(84, 'Pucallpa', 'SPCL', 'Aeropuerto Internacional Capitán FAP David Abensur Rengifo', -8.377900, -74.574300, 'CORPAC', 'SPCL 271100Z 2712/2812 00000KT 9999 SCT015 TX33/2720Z TN24/2811Z BECMG 2713/2716 35005KT BKN020 TEMPO 2718/2722 32010KT 4000 SHRA BKN020 FEW025TCU BKN080 TEMPO 2809/2812 8000 BKN010', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(85, 'Puerto maldonado', 'SPTU', 'Aeropuerto Internacional Padre Jose Aldamiz', -12.613600, -69.228600, 'CORPAC', 'SPTU 271100Z 2712/2812 34003KT CAVOK TX36/2719Z TN24/2811Z BECMG 2715/2717 BKN030 TEMPO 2806/2808 FEW050', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(86, 'Rioja', 'SPJA', 'Aeropuerto Juan Simons Vela', -6.065655, -77.161984, 'CORPAC', 'SPJA NIL', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-12-08 09:13:19'),
(87, 'Tacna', 'SPTN', 'Aeropuerto Internacional Coronel FAP Carlos Ciriani Santa Rosa', -18.050460, -70.276139, 'CORPAC', 'SPTN 271100Z 2712/2812 VRB02KT CAVOK TX28/2718Z TN20/2811Z BECMG 2714/2716 21012KT', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(88, 'Talara', 'SPYL', 'Aeropuerto Internacional Capitán FAP Victor Montes Arias', -4.575718, -81.255910, 'CORPAC', 'SPYL 271030Z 2712/2812 18010KT CAVOK TX30/2719Z TN22/2811Z TEMPO 2712/2716 BKN030', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(89, 'Tarapoto', 'SPST', 'Aeropuerto Cadete FAP Guillermo del Castillo Paredes', -6.508400, -76.372770, 'CORPAC', 'SPST 271030Z 2712/2812 26004KT 9999 FEW020 SCT100 TX32/2719Z TN22/2811Z TEMPO 2712/2715 5000 BR SCT015 BKN070', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(90, 'Tingo maria', 'SPGM', 'Aeropuerto de Tingo María', -9.286502, -76.005018, 'CORPAC', 'SPGM 271030Z 2712/2812 04005KT 9999 FEW020 SCT100 TX32/2719Z TN22/2811Z TEMPO 2712/2715 5000 BR SCT015 BKN080 TEMPO 2721/2723 9000 RA SCT015 BKN070', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(91, 'Trujillo', 'SPRU', 'Aeropuerto Internacional Capitán FAP Carlos Martinez de Pinillos', -8.085343, -79.108541, 'CORPAC', 'SPRU 271100Z 2712/2812 12005KT 6000 OVC012 TX26/2719Z TN21/2811Z TEMPO 2712/2713 4500 BR FM271500 17010KT 8000 SCT014 FM280400 15005KT 7000 SCT008', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(92, 'Tumbes', 'SPME', 'Aeródromo Capitán FAP Pedro Canga Rodriguez', -3.551010, -80.384416, 'CORPAC', 'SPME 271030Z 2712/2812 32005KT 9999 FEW015 SCT020 TX30/2719Z TN24/2811Z TEMPO 2712/2716 5000 BR OVC012 BECMG 2723/2800 BKN015', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(93, 'Yurimaguas', 'SPMS', 'Aeródromo de Yurimaguas', -5.893601, -76.119230, 'CORPAC', 'SPMS 271100Z 2712/2812 02005KT 9999 SCT015 SCT100 TX33/2720Z TN23/2811Z TEMPO 2712/2714 3000 BR BKN010 SCT100 TEMPO 2718/2722 07010KT 4000 SHRA BKN015 FEW020TCU BKN100', 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2020-01-27 09:08:57'),
(94, 'La joya', 'SPLC', 'Aeropuerto Mariano Melgar', -16.788420, -71.886990, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(95, 'San ramon', 'SPRM', 'Aeropuerto San Ramon', -11.129640, -75.350750, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(96, 'Vitor', 'SPVR', 'Aeropuerto La Joya', -16.429500, -71.837760, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(97, 'Chiclayo', 'SPHI', 'Aeropuerto Internacional Capitán FAP José A. Quiñones', -6.787500, -79.828100, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(98, 'Morona', 'SPID', 'Aeropuerto Teniente Bergerie', -3.784700, -73.308800, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(99, 'Pisco', 'SPSO', 'Aeropuerto Capitán FAP Renán Elías Olivera', -13.744800, -76.220390, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(100, 'Mazamari', 'SPMF', 'Aeropuerto Mayor PNP Nancy Flores Páucar', -11.326100, -74.535390, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(101, 'Piura', 'SPUR', 'Aeropuerto Internacional Capitán FAP Guillermo Concha Iberico', -5.205800, -80.616400, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(102, 'Puerto maldonado', 'SPTU', 'Aeropuerto Internacional Padre Jose Aldamiz', -12.613600, -69.228600, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(103, 'El pato', 'SPTP', 'Aeropuerto El Pato', -4.576700, -81.254190, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(104, 'El valor', 'SPEV', 'Aerodromo Estacion N°7', -5.671860, -78.641230, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(105, 'Pichari', 'SPHR', 'Aeropuerto del Fuerte Pichari', -12.528630, -73.835230, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(106, 'Las palmas', 'SPLP', 'Aeropuerto Las Palmas', -12.154210, -77.000840, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(107, 'La vista', 'SPVS', 'Aerodromo Estacion N°5', -4.649650, -77.505790, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(108, 'Quillabamba', 'SPQK', 'Aeropuerto de 33 Brigada de Infanteria Fuerte Pachacutec', -12.861970, -72.700460, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(109, 'Valle esmeralda', 'SPVD', 'Helipuerto BCT EP- N°324', -12.122320, -74.073850, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(110, 'Tarapoto', 'SPST', 'Aeropuerto Cadete FAP Guillermo del Castillo Paredes', -6.508400, -76.372770, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(111, 'Cielo punku', 'SPNK', 'Helipuerto de BCT DINOES \"Cielo Punku\"', -12.800100, -73.502500, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(112, 'Pampas', 'SPMQ', 'Helipuerto de Pampas', -12.396313, -74.866113, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(113, 'Alto anapati', 'SPPQ', 'Helipuerto de BCT EP-N°312', -11.672675, -74.311088, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(114, 'Quiteni', 'SPQI', 'Helipuerto de BCT EP-N°324', -11.673463, -74.309039, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(115, 'Venecia', 'SPVN', 'Helipuerto', -12.644450, -73.002421, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(116, 'Huachocolpa', 'SPDY', 'Helipuerto', -13.035265, -74.944344, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(117, 'Caballococha', 'SPBC', 'S/N explotador CORPAC', -3.916666, -70.508333, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(118, 'El estrecho', 'SPEE', 'S/N explotador GOREL', -2.451111, -72.677778, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(119, 'Angamos', 'SPDN', 'S/N explotador', -5.137100, -72.867800, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(120, 'San lorenzo', 'SPQM', 'S/N explotador', -4.825761, -76.557123, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(121, 'Pucallpa', 'SPCL', 'Aeropuerto Internacional Capitán FAP David Abensur Rengifo', -8.377900, -74.574300, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35'),
(122, 'Juanjui', 'SPJJ', 'Aeropuerto de Juanjui', -7.169700, -76.729200, 'FAP', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'serviciodirma@gmail.com', '2019-06-17 17:21:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `app` varchar(45) NOT NULL,
  `apm` varchar(45) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `cip` int(8) DEFAULT NULL,
  `grado` varchar(50) DEFAULT NULL,
  `unidad_policial` varchar(60) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `hash` varchar(255) NOT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombres`, `app`, `apm`, `dni`, `cip`, `grado`, `unidad_policial`, `cargo`, `telefono`, `correo`, `departamento`, `sexo`, `username`, `password`, `group_id`, `estado`, `hash`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Cesar', 'Ramos', 'Cueva', 42684024, 42684024, 'Empleado civil', 'DIRNIC', 'Analista de Sistemas', '998886686', 'cesarluis1000@hotmail.com', 'Lima', 'Masculino', '42684024', 'bd29a0417c564458180295a240d948ef523a602e', 1, 'A', '', 'cramos', '2017-04-26 01:24:19', '', NULL),
(8, 'Dirnic', 'Dirnic', 'Dirnic', 12345678, 159753, 'Dirnic', 'DIRNIC', 'Dirnic', '123456789', 'cesarluis1000@hotmail.com', 'Lima', 'Masculino', '159753', 'c3115a772cd093aad4eeb10c2b2a9dee8b5a9412', 2, 'A', '', '', NULL, '', NULL),
(9, 'Lucia', 'Diaz', 'Mendoza', 12345678, 12345678, 'Capitan', 'DIRNIC', 'Analista', '987654321', 'ldiaz@gmail.com', 'Lima', 'Masculino', '12345678', '996a578d159fa88f801b4184e5892743a2b069be', 3, 'A', '', '', NULL, '', NULL),
(10, 'prueba', 'prueba', 'prueba ', 12345678, 123100, 'Alferez', 'DIRNIC', 'Analista', '987654321', 'prueba@hotmail.com', 'Lima', 'Masculino', '123100', '59892b586f04a51ff683199741eb97e2403c86db', 3, 'A', '', NULL, NULL, NULL, NULL),
(11, 'Hector', 'Medina', 'Limas', 72044180, 31812364, 'Sub oficial de Segunda', 'DIRNIC', 'Analista', '922047942', 'kapefloy.kaiser@gmail.com', 'Lima', 'Masculino', '31812364', '3fe811dce12f94dc35b9a72627f4391bf3078194', 3, 'A', '', NULL, NULL, NULL, NULL),
(12, 'Jesus', 'Peña', 'Clavijo', 241716, 30910778, 'Tecnico de Primera', 'DIRNIC', 'Comunicación e Imagen', '980526976', 'Pctemp@hotmail.com', 'Amazonas', 'Masculino', '30910778', '3a37f26ffa18b64388ed91c60c5196573b10eecd', 3, 'A', '', NULL, NULL, NULL, NULL),
(13, 'Edver ricardo', 'Carbajal ', 'quispe', 43721237, 31412897, 'Sub oficial de Primera', 'DIRNIC', 'Operativo', '982562721', 'richicq@hotmail.com', 'Lima', 'Masculino', '31412897', '155a58ebf2d267abac06ae72ff6e311b77bf6a24', 3, 'A', '', NULL, NULL, NULL, NULL),
(14, 'Lucero ', 'Meza ', 'Mera ', 46281687, 31523729, 'Sub oficial de Primera', 'DIRNIC', 'Administrativo', '983703479', 'luceromezamera@gmail.com', 'Lima', 'Femenino', '31523729', 'b739afff4d71e20400629fe00aa97479d6f83ed1', 3, 'A', '', NULL, NULL, NULL, NULL),
(15, 'cesar', 'ramos', 'cueva', 65832566, 986516, 'Coronel', 'DIRANDRO', 'Jefe dirección', '986512653', 'crc100@hotmail.pe', 'Áncash', 'Femenino', '986516', 'b3b6bc84324d24d0c1e4dbfc9379db42d6518c05', 3, 'A', '', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acos_lft_rght` (`lft`,`rght`),
  ADD KEY `idx_acos_alias` (`alias`);

--
-- Indices de la tabla `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aros_lft_rght` (`lft`,`rght`),
  ADD KEY `idx_aros_alias` (`alias`);

--
-- Indices de la tabla `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  ADD KEY `idx_aco_id` (`aco_id`);

--
-- Indices de la tabla `cake_sessions`
--
ALTER TABLE `cake_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menus_acos1_idx` (`aco_id`),
  ADD KEY `fk_menus_arod1_idx` (`aro_id`) USING BTREE;

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `fk_menus_acos1` FOREIGN KEY (`aco_id`) REFERENCES `acos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menus_aros1` FOREIGN KEY (`aro_id`) REFERENCES `aros` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

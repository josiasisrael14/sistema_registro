-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2020 a las 16:07:57
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_acceso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avances`
--

CREATE TABLE `avances` (
  `id` int(11) NOT NULL,
  `porc_avance` int(11) NOT NULL,
  `fec_reg_avance` datetime NOT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `compromiso_id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `estado` tinyint(3) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `avances`
--

INSERT INTO `avances` (`id`, `porc_avance`, `fec_reg_avance`, `observaciones`, `compromiso_id`, `empleado_id`, `estado`) VALUES
(1, 50, '2020-07-14 06:42:11', NULL, 0, 0, 2),
(2, 60, '2020-07-14 06:42:33', NULL, 0, 0, 2),
(3, 30, '2020-07-14 06:42:44', NULL, 0, 0, 2),
(4, 90, '2020-07-14 11:44:07', NULL, 0, 0, 2),
(5, 100, '2020-07-14 11:44:20', NULL, 0, 0, 2),
(6, 40, '2020-07-14 01:48:48', NULL, 0, 0, 2),
(7, 50, '2020-07-14 01:57:30', NULL, 0, 0, 2),
(8, 6, '2020-07-14 01:59:18', NULL, 0, 0, 2),
(9, 30, '2020-07-14 02:00:34', NULL, 0, 0, 2),
(10, 50, '2020-07-14 02:37:11', 'se observo tal detalla', 2, 2, 2),
(11, 60, '2020-07-14 02:38:15', 'observaciones11552233', 28, 2, 2),
(12, 50, '2020-07-14 10:51:36', 'malo', 3, 2, 2),
(13, 100, '2020-07-15 12:06:57', 'muymaloooooooo', 6, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `saldo_inicial` float(10,3) NOT NULL,
  `saldo_final` float(10,3) NOT NULL,
  `tipo_transaccion_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` tinyint(3) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `saldo_inicial`, `saldo_final`, `tipo_transaccion_id`, `fecha`, `estado`) VALUES
(1, 20.000, 30.000, 2, '2020-07-01 00:00:00', 1),
(2, 50.000, 50.000, 2, '2020-07-16 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_movimientos`
--

CREATE TABLE `caja_movimientos` (
  `id` int(11) NOT NULL,
  `tipo_movimiento_id` tinyint(3) NOT NULL COMMENT '//1 Ingreso //2 Salida',
  `monto` decimal(10,3) DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `empleado_id` int(11) DEFAULT NULL,
  `estado` tinyint(3) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caja_movimientos`
--

INSERT INTO `caja_movimientos` (`id`, `tipo_movimiento_id`, `monto`, `observaciones`, `empleado_id`, `estado`, `fecha`) VALUES
(52, 5, NULL, NULL, 5, 1, '0000-00-00'),
(48, 10, NULL, NULL, 5, 2, '0000-00-00'),
(47, 5, NULL, NULL, 5, 2, '0000-00-00'),
(46, 5, NULL, NULL, 5, 1, '0000-00-00'),
(27, 123, NULL, NULL, 123, 127, '0000-00-00'),
(28, 124, NULL, NULL, 2314, 127, '0000-00-00'),
(29, 127, NULL, NULL, 2342134, 127, '0000-00-00'),
(30, 127, NULL, NULL, 6666, 127, '0000-00-00'),
(31, 127, NULL, NULL, 888, 127, '0000-00-00'),
(32, 9, NULL, NULL, 99, 9, '0000-00-00'),
(49, 5, NULL, NULL, 6, 1, '0000-00-00'),
(50, 5, NULL, NULL, 6, 8, '0000-00-00'),
(55, 1, '300.000', 'PAGO PERSONAL', 0, 0, '0000-00-00'),
(56, 2, '600.000', 'Salida Almuezo', 0, 0, '0000-00-00'),
(57, 2, '800.000', 'Almuerzzo día de la Madre', 0, 0, '2020-07-30'),
(58, 1, '500.000', 'JOSE AYLLON EL TERCO', 0, 0, '2020-07-08'),
(59, 2, '200.000', 'esta muy buena la produccion', 0, 0, '2020-07-17'),
(60, 2, '500.000', 'regular', 0, 0, '2020-07-17'),
(61, 1, '200.000', 'bueno', 0, 0, '2020-07-11'),
(73, 2, '1000.000', 'jiarooooo', NULL, 0, '2020-07-24'),
(74, 2, '1000.000', 'sssss', NULL, 0, '2020-07-25'),
(75, 1, '1000.000', 'ssss', NULL, 0, '2020-07-25'),
(76, 2, '1000.000', 'ssss', NULL, 0, '2020-07-25'),
(77, 1, '1000.000', 'ssss', NULL, 0, '2020-07-24'),
(78, 2, '1000.000', 'ssssssss', NULL, 0, '2020-07-26'),
(79, 2, '1000.000', 'ssssssssss', NULL, 0, '2020-07-25'),
(80, 1, '1000.000', 'sssss', NULL, 0, '2020-07-23'),
(81, 1, '1000.000', 'sssss', NULL, 0, '2020-07-26'),
(82, 1, '1000.000', 'ssssss', NULL, 0, '2020-07-26'),
(83, 1, '90.000', 'ssssss', NULL, 0, '2020-07-26'),
(84, 1, '0.000', 'nada', NULL, 0, '2020-07-25'),
(85, 1, '0.000', 'nadaaaaaaaaaa', NULL, 0, '2020-07-24'),
(86, 1, '1000.000', 'ssssssssssssssssssssssssssssssssss', NULL, 0, '2020-07-21'),
(87, 1, '1000.000', 'cccccccccccccccccccccccc', NULL, 0, '2020-07-26'),
(88, 1, '1000.000', 'ssssssssssssssss', NULL, 0, '0000-00-00'),
(89, 1, '1000.000', 'ssssssssssssssssssssssssssss', NULL, 0, '2020-07-26'),
(101, 0, '2.000', '100', NULL, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinte`
--

CREATE TABLE `clinte` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `servicios_id` int(11) NOT NULL COMMENT '1=electricidad y 2=informatica'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clinte`
--

INSERT INTO `clinte` (`id`, `nombre`, `apellidos`, `domicilio`, `email`, `fecha_registro`, `servicios_id`) VALUES
(1, 'jairo', 'magallanes', 'tupac', 'josias_rey_12@gmail.com', '2020-07-24 23:06:52', 1),
(2, 'jose', 'torolva', 'lima', 'jose_14_15@gmail.com', '2020-07-24 23:08:17', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `fecha`, `usuario_id`) VALUES
(1, 'bueno muy pronto nos iremos a lima', '2020-07-31', 1),
(2, 'siiiiiiiiiiiiiiii claro', '2020-07-27', 2),
(3, 'wendyyyyyyyyy', '2020-07-23', 3),
(4, 'keysiiiii', '2020-07-22', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compromisos`
--

CREATE TABLE `compromisos` (
  `id` int(11) NOT NULL,
  `medida_adoptada` text NOT NULL,
  `responsable` varchar(300) NOT NULL,
  `personaContacto_r` varchar(300) NOT NULL,
  `correo_contacto_r` varchar(100) NOT NULL,
  `telefono_contacto_r` varchar(50) NOT NULL,
  `otro_sector_unidad` varchar(100) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `frec_reporte` varchar(100) NOT NULL,
  `meta` int(100) NOT NULL,
  `unidadmedida` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `responsable_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compromisos`
--

INSERT INTO `compromisos` (`id`, `medida_adoptada`, `responsable`, `personaContacto_r`, `correo_contacto_r`, `telefono_contacto_r`, `otro_sector_unidad`, `categoria`, `fecha_inicio`, `fecha_fin`, `frec_reporte`, `meta`, `unidadmedida`, `tipo`, `pedido_id`, `responsable_id`, `admin_id`) VALUES
(2, 'ssss', 'MARIANO CONTRERASssssss', 'JUAN CARLOS', 'JUAN CARLOS', '532452345234', '1', '1', '0000-00-00', '0000-00-00', '1333333333333333', 0, '1', '1', 48, 0, 3),
(3, 'dddd', 'MARIOA', 'ASDF', 'ASDF', '2341234', '1', '1', '2020-07-10', '2020-07-11', '1', 21, 'media', '1', 49, 0, 1),
(4, '123456', 'jairo', '20', '20', '2', '2', '2', '2020-07-15', '2020-07-16', '2', 2, '2333', '2', 2, 2, 2),
(6, '2', 'JOSE', 'AYLLON', 'AYLLON', '1234523456', '1', '1', '2020-07-11', '2020-07-11', '1', 5, '1', '1', 50, 0, 1),
(7, 'joel', 'mariao', 'asadfasdf', 'asadfasdf', '1233123123', '1', '1', '2020-07-11', '2020-07-11', '1', 0, '1', '1', 52, 0, 1),
(8, 'asdfasdf', 'afsdf', '52345', '52345', '1234', '1222', '1', '2020-07-11', '2020-07-11', '1', 1234, '1', '1', 52, 0, 1),
(9, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 65, 0, 1),
(10, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 65, 0, 1),
(11, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 66, 0, 1),
(12, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 66, 0, 1),
(13, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 67, 0, 1),
(14, '', '', '', '', '', '1', '1', '2020-07-13', '2020-07-13', '1', 0, '1', '1', 69, 0, 1),
(15, '2', '12', '2', '2', '2', '1', '1', '2020-07-31', '2020-07-18', '2', 2, '2', '1', 70, 0, 1),
(16, '2', '2', '2', '2', '2', '1', '1', '2020-07-18', '2020-07-16', '2', 2, '1', '1', 70, 0, 1),
(17, '1', '1', '1', '1', '1', '2', '1', '2020-07-23', '2020-07-11', '1', 2, '1', '1', 71, 0, 1),
(18, '2', '2', '2', '2', '2', '1', '1', '2020-07-04', '2020-07-03', '2', 2, '1', '1', 72, 0, 1),
(19, '2', '2', '2', '2', '2', '1', '1', '2020-07-10', '2020-07-04', '2', 2, '1', '2', 72, 0, 1),
(20, '2', '2', '2', '2', '2', '1', '1', '2020-07-18', '2020-07-11', '1', 2, '1', '2', 73, 0, 1),
(21, '2', '2', '2', '2', '2', '2', '1', '2020-07-04', '2020-07-11', '1', 2, '1', '2', 74, 0, 1),
(22, '3', '3', '3', '3', '3', '1', '1', '2020-07-03', '2020-07-10', '3', 3, '1', '1', 74, 0, 1),
(23, '4', '3', '3', '3', '', '1', '1', '2020-07-09', '2020-07-08', '1', 0, '1', '2', 75, 0, 1),
(24, '2', '2', '2', '2', '2', '1', '1', '2020-07-03', '2020-07-09', '1', 2, '1', '2', 76, 0, 1),
(25, '2', '2', '2', '2', '2', '1', '1', '2020-07-11', '2020-07-17', '2', 2, '1', '2', 77, 0, 1),
(26, '2', '2', '2', '2', '2', '1', '1', '2020-07-11', '2020-07-04', '2', 2, '1', '1', 77, 0, 1),
(27, '123', '123', '123', '123', '123', '2', '1', '2020-07-10', '2020-07-03', '1', 123, '1', '2', 78, 0, 1),
(28, '123', '12', '123', '123', '12', '2', '1', '2020-07-03', '2020-07-04', '1', 123, '1', '1', 79, 0, 1),
(29, '564', '879678', '9876', '9786', '333333', '1', '1', '2020-07-14', '2020-07-10', '2', 0, '1', '1', 80, 0, 1),
(30, 'ASDASDA', 'asdf', 'asdfasdf', 'SSSSSS', '7', '2', '1', '2020-07-17', '2020-07-22', '3', 0, '2', '1', 81, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `cursos` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `cursos`) VALUES
(1, 'matematicas'),
(2, 'lengua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos_paterno` varchar(40) NOT NULL,
  `apellidos_materno` varchar(40) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `dni` int(11) NOT NULL,
  `tipo_empleado_id` int(11) NOT NULL,
  `activo` varchar(40) NOT NULL,
  `estado` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `apellidos_paterno`, `apellidos_materno`, `usuario`, `dni`, `tipo_empleado_id`, `activo`, `estado`) VALUES
(1, 'jairo', 'ayllon', 'cardenas', '', 72276852, 1, 'activo', 2),
(2, 'noe', 'apolaya', 'huaman', '', 123456, 2, 'activo', 2),
(3, 'karelia', 'villanueva', 'huaman', 'karelia_15_14@hotmail.com', 72276852, 1, 'activo', 2),
(4, 'jairo', 'ayllon', 'cardenas', 'jairo.josias@gmail.com', 72276852, 2, 'activo', 2),
(5, 'avalos', 'ayllon', 'cardenas', 'principe@gmail.com', 72276852, 3, 'activo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `dni` int(11) NOT NULL,
  `cursos_id` tinyint(3) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellidos`, `dni`, `cursos_id`, `fecha`) VALUES
(1, 'jairo', 'magallanes', 72276852, 1, '2020-07-22'),
(2, 'pame', 'avalos', 12346789, 2, '2020-07-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `pedido` varchar(300) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `solicitante` varchar(300) DEFAULT NULL,
  `desc_solicitante` varchar(300) NOT NULL,
  `ubigeo_pedido` varchar(6) NOT NULL,
  `persona_contacto_s` varchar(300) NOT NULL,
  `correo_contacto_s` varchar(100) NOT NULL,
  `telefono_contacto_s` varchar(20) NOT NULL,
  `cantidad_medidas` int(50) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `pedido`, `fecha_pedido`, `solicitante`, `desc_solicitante`, `ubigeo_pedido`, `persona_contacto_s`, `correo_contacto_s`, `telefono_contacto_s`, `cantidad_medidas`, `admin_id`) VALUES
(1, 'sadf', '2020-07-18', 'asdf', '', '', 'asdf', 'asdf', '123', 0, 1),
(2, 'sadf', '2020-07-18', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(3, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(4, 'sadf', '2020-07-20', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(5, 'sadf', '2020-07-28', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(6, 'sadf', '2020-07-16', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(7, 'sadf', '2020-07-21', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(8, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(9, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(10, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(11, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(12, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(13, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(14, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(15, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(16, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(17, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(18, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(19, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(20, 'sadf', '0000-00-00', 'asdf', '', '', 'asdf', 'asdf', '123', 2, 1),
(21, 'sadf', '0000-00-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(22, 'sadf', '0000-00-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(23, 'sadf', '0000-00-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(24, 'sadf', '0000-00-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(25, 'sadf', '2020-07-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(26, 'sadf', '2020-07-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(27, 'sadf', '2020-07-28', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(28, 'sadf', '2020-07-28', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(29, 'sadf', '2020-07-29', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(30, 'sadf', '0000-00-00', 'asdf', '', '', 'sdaf', 'asdf', 'asdf', 2, 1),
(31, '2354', '2020-07-27', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(32, '2354', '0000-00-00', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(33, '2354', '2020-07-06', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(34, '2354', '0000-00-00', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(35, '2354', '2020-07-14', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(36, '2354', '0000-00-00', 'ASDF', '', '', 'ASDF', 'ASDF', '41324', 2, 1),
(37, 'asdf', '2020-07-30', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(38, 'asdf', '0000-00-00', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(39, 'asdf', '0000-00-00', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(40, 'asdf', '0000-00-00', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(41, 'asdf', '2020-07-26', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(42, 'asdf', '2020-07-02', 'asfasdf', '', '', 'asdfasd', 'asdf', 'asdf', 2, 1),
(43, 'asdf', '2020-07-28', '34124', '', '', 'qwer', 'sdfa', 'asdfasdf', 2, 1),
(44, '', '2020-07-21', '23412', '', '', '1234', '1234', '1234', 2, 1),
(45, '´PATRUJALLE', '0000-00-00', 'ALEXANDER FERNANDEZ', '', '', 'JUAN MARTINEZ ', 'fernandezdelacruza@gmail.com', '452636955', 2, 1),
(46, '´PATRUJALLE', '0000-00-00', 'ALEXANDER FERNANDEZ', '', '', 'JUAN MARTINEZ ', 'fernandezdelacruza@gmail.com', '452636955', 2, 1),
(47, '´PATRUJALLE', '2020-07-12', 'ALEXANDER FERNANDEZ', '', '', 'JUAN MARTINEZ ', 'fernandezdelacruza@gmail.com', '452636955', 2, 1),
(48, '´PATRUJALLE', '0000-00-00', 'ALEXANDER FERNANDEZ', '', '', 'JUAN MARTINEZ ', 'fernandezdelacruza@gmail.com', '452636955', 2, 1),
(49, '123', '2020-07-21', 'JUAN ', '', '', 'MARIANO', 'SDFNASDLF', 'SMDLKASDF', 2, 1),
(50, 'PATRULLAJE', '2020-07-10', 'JUAN', '', '', 'MARIANO MELGAR', 'fernandezdelacruza@gmail.com', '4123452624', 2, 1),
(51, 'PATRULLAJE', '2020-07-10', 'JUAN', '', '', 'MARIANO MELGAR', 'fernandezdelacruza@gmail.com', '4123452624', 2, 1),
(52, 'mariano', '2020-07-10', 'JUAN', '', '', 'MARIANO', 'fernandsaf', '2134123', 2, 1),
(53, '', '2020-07-11', '', '', '', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'josias', 'ayllon', '921830076'),
(2, 'pamela', 'cardenas', '72276852'),
(3, 'mark', 'zuckerber', '123456789'),
(4, 'rojo', 'josias', '321456'),
(5, 'yair', 'chavex', '1524'),
(6, 'mariela', 'ayllon', '123654789'),
(7, 'juan', 'cardenas', '123456'),
(8, 'alexander', 'ayllon', '5468'),
(9, 'teresa', 'cardenas', '963852'),
(10, 'mia', 'paredes', '321654'),
(11, 'avalos', 'yesenia', '635421'),
(12, 'jorge', 'iste', '123'),
(13, 'sofia', 'magallanes', '325641'),
(14, 'katy', 'cardenas', '12547'),
(15, 'osos', 'pardo', '321564'),
(16, 'karelia', 'kaleria', '2564'),
(17, 'sister', 'sister', '365412'),
(18, 'paulo', 'paulo', '258741'),
(19, 'grace', 'grace', '741852');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `prod_id` int(11) NOT NULL,
  `prod_codigo_sunat` char(50) DEFAULT NULL,
  `prod_codigo` varchar(40) NOT NULL,
  `prod_nombre` varchar(200) NOT NULL,
  `prod_precio_publico` decimal(11,2) NOT NULL,
  `prod_precio_2` decimal(10,2) DEFAULT NULL,
  `prod_precio_3` decimal(10,2) DEFAULT NULL,
  `prod_precio_4` decimal(10,2) DEFAULT NULL,
  `prod_precio_5` decimal(10,2) DEFAULT NULL,
  `prod_imagen` varchar(200) DEFAULT NULL,
  `prod_codigo_barra` varchar(100) DEFAULT NULL,
  `prod_comision_vendedor` decimal(10,2) DEFAULT NULL,
  `prod_garantia` varchar(100) DEFAULT NULL,
  `prod_descuento` decimal(10,2) DEFAULT NULL,
  `prod_caducidad` date DEFAULT NULL,
  `prod_observaciones` varchar(300) DEFAULT NULL,
  `prod_precio_compra` decimal(10,2) DEFAULT NULL,
  `prod_stock` int(11) DEFAULT NULL,
  `prod_cantidad_minima` int(11) NOT NULL,
  `prod_estado` tinyint(4) NOT NULL,
  `prod_categoria_id` int(11) NOT NULL,
  `prod_medida_id` int(11) NOT NULL,
  `prod_almacen_id` int(11) NOT NULL,
  `prod_tipo` int(11) DEFAULT NULL,
  `prod_fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`prod_id`, `prod_codigo_sunat`, `prod_codigo`, `prod_nombre`, `prod_precio_publico`, `prod_precio_2`, `prod_precio_3`, `prod_precio_4`, `prod_precio_5`, `prod_imagen`, `prod_codigo_barra`, `prod_comision_vendedor`, `prod_garantia`, `prod_descuento`, `prod_caducidad`, `prod_observaciones`, `prod_precio_compra`, `prod_stock`, `prod_cantidad_minima`, `prod_estado`, `prod_categoria_id`, `prod_medida_id`, `prod_almacen_id`, `prod_tipo`, `prod_fecha`) VALUES
(1, '24111503', 'ICBPER', 'BOLSAS PLÁSTICAS', '1.00', '0.00', '0.00', '0.00', '0.00', '', '', '0.00', '', '0.00', '0000-00-00', '', '1.00', 50, 100, 2, 1, 58, 1, 1, '2019-08-09'),
(2, '', '00002', 'PRODUCTO01', '20.00', '0.00', '0.00', '0.00', '0.00', '', '', '0.00', '', '0.00', '0000-00-00', '', '10.00', 80, 0, 2, 1, 58, 1, 1, '2020-07-21'),
(3, '', '00003', 'NUEVO PRODUCTO', '60.00', '0.00', '0.00', '0.00', '0.00', '', '', '0.00', '', '0.00', '0000-00-00', '', '50.00', 0, 0, 2, 1, 58, 1, 1, '2020-07-25'),
(4, '', '00004', 'PRODUCTO15', '10.00', NULL, NULL, NULL, NULL, '', '', '0.00', '', '0.00', '0000-00-00', '', '10.00', 0, 0, 2, 1, 58, 1, 1, '2020-07-25'),
(5, '', '00005', 'PRODUCTO16', '15.00', NULL, NULL, NULL, NULL, '', '', '0.00', '', '0.00', '0000-00-00', '', '10.00', 0, 0, 2, 1, 58, 1, 1, '2020-07-25'),
(6, '', '00006', 'LECHE', '20.00', NULL, NULL, NULL, NULL, '', '', '0.00', '', '0.00', '0000-00-00', '', '100.00', 0, 0, 2, 1, 18, 1, 1, '2020-07-25'),
(7, '', '00007', 'PECANAS', '50.00', NULL, NULL, NULL, NULL, '', '', '0.00', '', '0.00', '0000-00-00', '', '50.00', 0, 0, 2, 1, 18, 1, 1, '2020-07-25'),
(8, '', '00008', 'TRIGO', '50.00', NULL, NULL, NULL, NULL, '', '', '0.00', '', '0.00', '0000-00-00', '', '80.00', 0, 0, 2, 1, 29, 1, 1, '2020-07-25'),
(9, '', '00009', 'BICICLETA', '15.00', '20.00', '25.00', '30.00', '40.00', '', '', '0.00', '', '0.00', '0000-00-00', '', '10.00', 0, 0, 2, 1, 18, 1, 1, '2020-07-25'),
(10, '10101502', '000010', 'PERROS', '1.00', '1.00', '1.00', '1.00', '1.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.00', 1, 1, 2, 1, 18, 1, 1, '2020-07-27'),
(11, '123', '2265', '2', '2.00', '2.00', '2.00', '2.00', '2.00', NULL, '2', '2.00', '2', '2.00', '2020-07-11', '2123', '2.00', 2, 2, 2, 1, 5, 1, 1, '2020-07-27'),
(12, '10101502', '123123', 'PERROS', '32.00', '23.00', '213.00', '23.00', '2.00', NULL, '', '3.00', '3', '3.00', '0000-00-00', '323', '33.00', 3, 3, 2, 1, 6, 1, 1, '2020-07-27'),
(13, '10217302', '00013', 'TULIPÁN VIVO APRICOT', '666.00', '222.00', '123.00', '123.00', '123.00', NULL, '4654654', '2500.00', '100', '100.00', '2020-07-04', '12123', '123.00', 23, 5, 2, 1, 6, 1, 1, '2020-07-27'),
(14, '', 'D006', 'JOSE', '45.00', '45.00', '45.00', '45.00', '45.00', NULL, '23123', '45.00', '45', '45.00', '2020-07-02', 'FABIANO', '45.00', 40, 20, 2, 1, 58, 1, 1, '2020-07-27'),
(15, '2', '41234123', 'PRODUCTO', '123.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123.00', NULL, 2, 2, 1, 58, 1, 1, NULL),
(16, '1', '2341234', 'DFASDFASDF', '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100.00', NULL, 2, 2, 1, 58, 1, 1, NULL),
(17, '2', '231312', 'IMPORTATE', '150.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123.00', NULL, 2, 2, 1, 58, 1, 1, NULL),
(18, '2', '1411340432U', 'IMPORTATE', '150.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123.00', NULL, 2, 2, 1, 56, 1, 1, NULL),
(19, '1', '72276852', 'DFASDFASDF', '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100.00', NULL, 2, 2, 1, 61, 1, 1, NULL),
(20, '', '78945612', 'ACEITE', '50.00', '60.00', '70.00', '80.00', '90.00', NULL, '', '12.00', '12', '20.00', '2020-07-27', 'buenoooooooooooooooooooo', '100.00', 5, 9, 2, 1, 6, 1, 1, '2020-07-27'),
(21, '2', '321654987', 'ayllon', '150.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123.00', NULL, 2, 2, 1, 56, 1, 1, NULL),
(22, '2', '236548971', 'josias', '12.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50.00', NULL, 5456, 2, 2, 5, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productossistemas`
--

CREATE TABLE `productossistemas` (
  `id` int(11) NOT NULL,
  `codigo` int(12) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `precioventa` int(15) NOT NULL,
  `preciocompra` int(15) NOT NULL,
  `existencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productossistemas`
--

INSERT INTO `productossistemas` (`id`, `codigo`, `descripcion`, `precioventa`, `preciocompra`, `existencia`) VALUES
(1, 1234, 'bueno', 14, 20, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

CREATE TABLE `productos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_vendidos`
--

INSERT INTO `productos_vendidos` (`id`, `id_producto`, `cantidad`, `precio`, `id_venta`) VALUES
(4, 7, 1, '5.00', 4),
(5, 7, 1, '5.00', 5),
(6, 7, 1, '5.00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`) VALUES
(1, 'electricidad'),
(2, 'informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cmovimientos`
--

CREATE TABLE `tipo_cmovimientos` (
  `id` int(11) NOT NULL,
  `tipo_cMovimiento` varchar(40) NOT NULL,
  `estado` tinyint(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_cmovimientos`
--

INSERT INTO `tipo_cmovimientos` (`id`, `tipo_cMovimiento`, `estado`) VALUES
(1, 'Ingreso', 2),
(2, 'Salida', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id` int(11) NOT NULL,
  `tipo_empleado` varchar(40) NOT NULL,
  `estado` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id`, `tipo_empleado`, `estado`) VALUES
(1, 'ADMINISTRADOR', 2),
(2, 'RESPONSABLE', 2),
(3, 'pagos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pagos`
--

CREATE TABLE `tipo_pagos` (
  `id` int(11) UNSIGNED NOT NULL,
  `tipo_pago` varchar(20) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 0,
  `estado` tinyint(3) NOT NULL DEFAULT 2
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pagos`
--

INSERT INTO `tipo_pagos` (`id`, `tipo_pago`, `comentario`, `activo`, `estado`) VALUES
(1, 'Contado', NULL, 0, -1),
(2, 'Crédito', NULL, 0, -1),
(3, 'Cheque', NULL, 0, -1),
(4, 'Letra de Cambio', 'regular', 0, -1),
(5, 'Deposito en cuenta', 'regularsss', 0, 2),
(6, 'Otros', 'bueno', 0, 2),
(7, 'Tarjeta Débito', 'bueno', 0, 2),
(8, '20', 'bueno', 0, -1),
(9, '14', 'regulareeeeelllllllllll', 0, -1),
(10, '23', 'excelente', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'jairo', 'ayllon', 'jairo.josias14@gmail.com'),
(2, 'pame', 'avalos', 'avalospame@gmail.com'),
(3, 'wendy', 'ayllon', 'wendy_ayllon14@gmail.com'),
(4, 'keysi', 'ayllon', 'keysi_ayllon@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`) VALUES
(1, '2020-05-24 04:28:56'),
(2, '2020-07-07 00:26:33'),
(3, '2020-07-07 00:27:02'),
(4, '2020-07-07 00:28:32'),
(5, '2020-08-06 02:05:10'),
(6, '2020-08-06 02:06:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avances`
--
ALTER TABLE `avances`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja_movimientos`
--
ALTER TABLE `caja_movimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clinte`
--
ALTER TABLE `clinte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `productossistemas`
--
ALTER TABLE `productossistemas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_cmovimientos`
--
ALTER TABLE `tipo_cmovimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_pagos`
--
ALTER TABLE `tipo_pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avances`
--
ALTER TABLE `avances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `caja_movimientos`
--
ALTER TABLE `caja_movimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `clinte`
--
ALTER TABLE `clinte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `productossistemas`
--
ALTER TABLE `productossistemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_cmovimientos`
--
ALTER TABLE `tipo_cmovimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_pagos`
--
ALTER TABLE `tipo_pagos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

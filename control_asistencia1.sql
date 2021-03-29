-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2021 a las 05:21:31
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
-- Base de datos: `control_asistencia1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `idasistencia` int(11) NOT NULL,
  `codigo_persona_as` varchar(20) COLLATE utf8_bin NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo` varchar(45) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`idasistencia`, `codigo_persona_as`, `fecha_hora`, `tipo`, `fecha`) VALUES
(143, '789', '2020-09-02 02:06:51', 'Entrada', '2020-01-31'),
(144, '789', '2020-09-02 02:07:10', 'Entrada', '2020-01-31'),
(145, '789', '2020-09-02 02:07:40', 'Entrada', '2020-01-31'),
(146, '123456789', '2020-09-02 02:10:35', 'Entrada', '2020-01-31'),
(147, '444', '2020-09-02 07:10:18', 'Entrada', '2020-01-31'),
(326, '123456789', '2020-09-10 03:13:11', 'salida', '2020-09-09'),
(327, '789', '2020-09-12 01:26:56', 'entrada', '2020-09-11'),
(328, '789', '2020-09-12 01:27:11', 'salida', '2020-09-11'),
(329, '444', '2020-09-12 01:38:38', 'salida', '2020-09-11'),
(330, 'c7uUpi', '2020-09-12 01:48:57', 'entrada', '2020-09-11'),
(331, 'c7uUpi', '2020-09-12 01:49:10', 'salida', '2020-09-11'),
(332, 'oiuu', '2020-09-12 01:52:54', 'entrada', '2020-09-11'),
(333, 'oiuu', '2020-09-12 01:52:57', 'salida', '2020-09-11'),
(334, '444', '2020-09-12 03:02:07', 'entrada', '2020-09-11'),
(335, '444', '2020-09-12 03:02:11', 'salida', '2020-09-11'),
(336, '123', '2020-09-13 23:17:08', 'entrada', '2020-09-13'),
(337, '123', '2020-09-13 23:17:11', 'salida', '2020-09-13'),
(338, '123456789', '2020-09-13 23:18:08', 'entrada', '2020-09-13'),
(339, '123456789', '2020-09-13 23:18:11', 'salida', '2020-09-13'),
(342, 'hhhhhh', '2020-09-14 00:15:46', 'entrada', '2020-09-13'),
(343, 'hhhhhh', '2020-09-14 00:15:48', 'salida', '2020-09-13'),
(344, '4ftWdZ', '2020-09-15 18:37:00', 'entrada', '2020-09-15'),
(345, '4ftWdZ', '2020-09-15 18:37:10', 'salida', '2020-09-15'),
(346, '', '2020-10-06 02:35:47', 'entrada', '2020-10-05'),
(347, '', '2020-10-06 02:35:57', 'salida', '2020-10-05'),
(348, '123', '2020-10-06 02:37:05', 'entrada', '2020-10-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_bin NOT NULL,
  `fechacreada` datetime NOT NULL,
  `idusuario` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`, `descripcion`, `fechacreada`, `idusuario`) VALUES
(1, 'Analista de créditos  ', 'asesor de ventas', '2020-09-13 22:41:44', '64'),
(2, 'Promotor de ahorro y crédito', 'trabajo de promoción', '2020-01-19 00:15:24', '1'),
(3, 'Gerencia', 'representante legal', '2020-01-28 21:24:52', '1'),
(4, 'Administración', 'encargado de agencia', '2020-01-28 21:25:08', '1'),
(5, 'Recibidor(a)/Pagador(a)', 'encargado de los movimientos de caja', '2020-01-28 21:25:45', '1'),
(6, 'Vigilancia', 'vigilante diurno', '2020-01-28 21:26:14', '1'),
(7, 'Limpieza', 'encargado de la limpieza de oficinas', '2020-01-28 21:26:50', '1'),
(8, 'ingenieria informatico', 'hace genialidades', '2020-08-23 20:47:31', '16'),
(9, 'ingeniero quimico', 'ver los residuos quimicos', '2020-08-23 20:56:40', '16'),
(10, 'bioquimica', 'estudio humano', '2020-08-30 23:43:03', ''),
(11, 'electricidad', 'estudio de atomos', '2020-08-30 23:46:10', '64'),
(12, 'Analista de créditos ', 'asesor de ventass', '2020-09-13 22:17:57', '64'),
(13, 'Analista de créditos ', 'asesor de ventass', '2020-09-13 22:18:12', '64'),
(14, 'Promotor de ahorro y crédito ', 'trabajo de promociónn', '2020-09-13 22:21:00', '64'),
(15, 'Analista de créditos ', 'asesor de ventass', '2020-09-13 22:22:58', '64'),
(16, 'Analista de créditos ', 'asesor de ventasss', '2020-09-13 22:24:23', '64');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `idmensaje` int(11) NOT NULL,
  `idusuariomensaje` int(11) NOT NULL,
  `textomensaje` text COLLATE utf8_bin NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fechamensaje` datetime NOT NULL,
  `fechacreada` datetime NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_bin NOT NULL,
  `fechacreada` datetime NOT NULL,
  `idusuario` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idtipousuario`, `nombre`, `descripcion`, `fechacreada`, `idusuario`) VALUES
(1, 'Administrador', 'Con priviliegios de gestionar todo el sistema', '2020-01-18 00:00:00', '1'),
(2, 'Vendedor', 'vende y promueve los productos', '2020-09-15 11:27:22', '64'),
(3, 'administrador2', 'hace lo mismo que el administrador', '2020-08-23 20:46:07', '16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre_usuario` varchar(45) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_bin NOT NULL,
  `login` varchar(45) COLLATE utf8_bin NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `idtipousuario` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `password` varchar(64) COLLATE utf8_bin NOT NULL,
  `imagen` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fechacreado` datetime DEFAULT NULL,
  `usuariocreado` varchar(45) COLLATE utf8_bin NOT NULL,
  `codigo_persona` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `idmensaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre_usuario`, `apellidos`, `login`, `iddepartamento`, `idtipousuario`, `email`, `password`, `imagen`, `estado`, `fechacreado`, `usuariocreado`, `codigo_persona`, `idmensaje`) VALUES
(1, 'admin', 'compartiendocodigos', 'admin', 1, 1, 'info@compartiendocodigos.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'antivirus.jpg', 2, '2020-09-11 13:48:01', 'admin', '444', 1),
(2, 'juan', 'Lopez Torres', 'juan', 1, 2, 'juan@gmail.com', 'ed08c290d7e22f7bb324b15cbadce35b0b348564fd2d5f95752388d86d71bcca', 'computer_pc_PNG17487.png', 2, '2020-09-13 18:16:35', '0', '789', 0),
(14, 'Pedro', 'totocayo', 'coco', 2, 2, 'angelinos257@gmail.com', '4f682b71153ffa91e608445d7ea1257e2076d0d95eab6336cd1aa94b49680f11', 'hoy_amor.jpg', 2, '2020-09-11 13:38:37', 'admin', '', 0),
(16, 'jairo', 'ayllon cardenas', 'genioalgoritmo', 8, 1, 'jairo.josias14@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'codigos3.jpg', 2, '2020-09-11 13:38:25', 'jairo', 'c7uUpi', 0),
(17, 'pame', 'avaloss', 'avalospame', 4, 2, 'avalos_pame@hotmail.com', '123456789', 'popular (2).png', 2, '2020-09-11 13:38:14', 'pame', '123456789', 1),
(18, 'josue', 'ayllon', 'josueavalos', 4, 1, 'josueavalos1245@gmail.com', '123456789', 'recuerdos1.jpg', 2, '2020-09-11 13:38:00', 'josue', '123', 1),
(64, 'josiasisrael', 'ayllon', 'josias', 1, 1, 'principe1414@hotmail.com', '123', 'vidrios (2).jpg', 2, '2020-10-01 15:57:09', '', 'oiuu', 0),
(66, 'teresass', 'ayllon cardenas', 'tere', 7, 1, 'teresa@hotmail.com', '123', 'buenas.jpg', 2, '2020-09-11 13:37:14', '', 'hhhhhh', 0),
(68, 'avalos', 'ayllon ', 'avalos15', 11, 1, 'avalos16@hotmail.com', '123654789', '580b57fcd9996e24bc43c543.png', 2, '2020-09-11 12:06:02', '', 'ññññ', 0),
(71, 'karlasj', 'apolaya', 'karla', 7, 2, 'karla@gmail.com', '123', 'oremos.webp', 2, '2020-12-02 18:31:26', '', '4u2aAZ', 0),
(72, 'dinoso', 'torres', 'dinoso', 5, 1, 'dinoso14@gmail.com', '123', 'miercoles.jpg', 2, '2020-09-08 13:25:31', '', 'jjjjjj', 0),
(73, 'carlossal', 'topollillo', 'carlossss', 8, 3, 'yair_5_12@hotmail.com', '321456', 'wiffi.jpg', 2, '2020-09-11 13:05:40', '', 'loikjn', 0),
(74, 'jouse', 'ayllon cardenas', 'josueeeee', 1, 3, 'josueeeee@hotmail.com', '31456', 'cargador.png', 2, '2020-09-08 13:28:36', '', 'loikk', 0),
(75, 'yonisss', 'mateo', 'yoni', 3, 2, 'yonis@gmail.com', '123', 'cargador.png', 2, '2020-09-11 13:06:16', '', 'yyy', 0),
(76, 'keysi amira', 'ayllon', 'keysi', 8, 1, 'keysi15@gmail.com', '123', 'keysi (2).png', 2, '2020-09-11 13:11:22', '', 'keysi', 0),
(85, 'sara', 'matias', 'saras', 9, 2, 'sara14@gmail.com', '123', 'cable1.jpg', 2, '2020-09-11 13:39:15', '', 'saraa', 0),
(87, 'mana', 'mana', 'mana20', 5, 1, 'mana21@gmail.com', '123456', 'buenas.jpg', 2, '2020-09-11 13:39:30', '', 'manaaa', 0),
(88, 'abigail', 'avalos', 'abigail', 3, 1, 'abigail@hotmail.com', '123456', 'usb.jpg', -1, '2020-09-13 18:49:03', '', 'abababa', 0),
(89, 'manuelito', 'saravias', 'manuel', 7, 2, 'manuel@gmail.com', '123654', 'office.jpg', 2, '2020-09-11 20:26:03', '', 'manuell', 0),
(90, 'topollillo', 'darnell', 'topo', 10, 2, 'topo15@gmail.com', '123', 'amor_manos.webp', 2, '2020-09-11 16:37:21', '', 'hggggff', 0),
(91, 'katy', 'tasayco oracupasa', 'katy', 11, 2, 'katy15@gmail.com', '123', 'antivirus.jpg', -1, '2020-09-15 13:22:56', '', '4ftWdZ', 0),
(92, 'cristoll', 'manass', 'cristol', 11, 2, 'cristol15@gmail.com', '123', 'wasap1.png', 2, '2020-10-03 14:08:54', '', 'cy3ayQ', 0),
(93, 'genio', 'ayllon cardenas', 'genio', 3, 1, 'josias_rey_12@hotmail.com', '123', 'mi_publicidad.jpg', 2, '2020-12-18 01:25:56', '', '4iaJEz', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idasistencia`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`idmensaje`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idtipousuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `codigo_persona` (`codigo_persona`),
  ADD KEY `fk_departamento` (`iddepartamento`),
  ADD KEY `fk_tiposusario` (`idtipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `idmensaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idtipousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

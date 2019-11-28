-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2019 a las 21:27:53
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--
CREATE DATABASE IF NOT EXISTS `votacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `votacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `id_votacion` int(11) NOT NULL,
  `DUI_persona` char(10) COLLATE latin1_spanish_ci NOT NULL,
  `id_partido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `id_votacion`, `DUI_persona`, `id_partido`) VALUES
(1, 1, '12345678-9', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre`) VALUES
(1, 'Ahuachapán'),
(2, 'Sonsonate'),
(3, 'Santa Ana'),
(4, 'Cabañas'),
(5, 'Chalatenango'),
(6, 'Cuscatlán'),
(7, 'La Libertad'),
(8, 'La Paz'),
(9, 'San Salvador'),
(10, 'San Vicente'),
(11, 'Morazán'),
(12, 'San Miguel'),
(13, 'Usulután'),
(14, 'La Unión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_votacion`
--

CREATE TABLE `detalles_votacion` (
  `id_DV` int(11) NOT NULL,
  `FechaHora` datetime NOT NULL,
  `id_votacion` int(11) NOT NULL,
  `DUI_persona` char(10) COLLATE latin1_spanish_ci NOT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `id_voto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `detalles_votacion`
--

INSERT INTO `detalles_votacion` (`id_DV`, `FechaHora`, `id_votacion`, `DUI_persona`, `id_candidato`, `id_voto`) VALUES
(1, '2019-11-20 00:00:00', 1, '12345678-9', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_persona`
--

CREATE TABLE `estado_persona` (
  `id_estadoh` int(11) NOT NULL,
  `nombre_estadoh` varchar(15) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `estado_persona`
--

INSERT INTO `estado_persona` (`id_estadoh`, `nombre_estadoh`) VALUES
(1, 'Habilitado'),
(2, 'No Habilitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_votacion`
--

CREATE TABLE `estado_votacion` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `estado_votacion`
--

INSERT INTO `estado_votacion` (`id_estado`, `nombre_estado`) VALUES
(1, 'Disponible'),
(2, 'No Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_voto`
--

CREATE TABLE `estado_voto` (
  `id_voto` int(11) NOT NULL,
  `descripcion` varchar(7) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `estado_voto`
--

INSERT INTO `estado_voto` (`id_voto`, `descripcion`) VALUES
(1, 'Voto'),
(2, 'No Voto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `nombre_municipio` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `nombre_municipio`, `id_departamento`) VALUES
(1, 'San Francisco Menéndez', 1),
(2, 'Acajutla', 2),
(3, 'Coatepeque', 3),
(4, 'Sensuntepeque', 4),
(5, 'La Palma', 5),
(6, 'Cojutepeque', 6),
(7, 'Santa Tecla', 7),
(8, 'Olocuilta', 8),
(9, 'San Salvador', 9),
(10, 'Verapaz', 10),
(11, 'San Francisco Gotera', 11),
(12, 'Chinameca', 12),
(13, 'Santiago de María	', 13),
(14, 'Concepción de Oriente	', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padron`
--

CREATE TABLE `padron` (
  `id_padron` int(11) NOT NULL,
  `id_urnas` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `DUI_persona` char(10) COLLATE latin1_spanish_ci NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `FechaHora_Mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `padron`
--

INSERT INTO `padron` (`id_padron`, `id_urnas`, `DUI_persona`, `id_usuario`, `FechaHora_Mod`) VALUES
(1, 'JRV01', '12345678-9', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido_politico`
--

CREATE TABLE `partido_politico` (
  `id_partido` int(11) NOT NULL,
  `nombre_partido` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `partido_politico`
--

INSERT INTO `partido_politico` (`id_partido`, `nombre_partido`, `imagen`) VALUES
(1, 'Frente Farabundo Martí para la Liberación Nacional', ''),
(2, 'Alianza Republicana Nacionalista', ''),
(3, 'Gran Alianza por la Unidad Nacional', ''),
(4, 'Nuevas Ideas', ''),
(5, 'VAMOS', ''),
(6, 'Partido Concertación Nacional', ''),
(7, 'Partido Demócrata Cristiano', ''),
(8, 'Democracia Salvadoreña', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `DUI_persona` char(10) COLLATE latin1_spanish_ci NOT NULL,
  `nombre1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre2` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre3` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre4` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `apellido1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido2` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido3` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` char(9) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fnacimiento` date NOT NULL,
  `fexpedicion` date NOT NULL,
  `fexpiracion` date NOT NULL,
  `id_estadoh` int(11) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `foto` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`DUI_persona`, `nombre1`, `nombre2`, `nombre3`, `nombre4`, `apellido1`, `apellido2`, `apellido3`, `telefono`, `direccion`, `fnacimiento`, `fexpedicion`, `fexpiracion`, `id_estadoh`, `id_sexo`, `id_municipio`, `foto`) VALUES
('12345678-9', 'Aquiles', 'Armando', NULL, NULL, 'Brinco', 'Casas', NULL, '1234-5678', 'Donde este tu corazon', '2019-08-22', '2019-12-26', '2020-06-17', 1, 1, 12, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Admin'),
(2, 'Enc. Urnas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id_sede`, `nombre_sede`, `direccion`, `id_municipio`) VALUES
(1, 'Escuela Majuahual', 'Donde este tu corazon', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL,
  `nombre_sexo` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id_sexo`, `nombre_sexo`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `urnas`
--

CREATE TABLE `urnas` (
  `id_urnas` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `nombre_urnas` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `urnas`
--

INSERT INTO `urnas` (`id_urnas`, `nombre_urnas`, `id_sede`) VALUES
('JRV01', 'Urna 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `urnas_votacion`
--

CREATE TABLE `urnas_votacion` (
  `id_UV` int(11) NOT NULL,
  `id_votacion` int(11) NOT NULL,
  `id_urnas` char(5) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `urnas_votacion`
--

INSERT INTO `urnas_votacion` (`id_UV`, `id_votacion`, `id_urnas`) VALUES
(1, 1, 'JRV01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `DUI_persona` char(10) COLLATE latin1_spanish_ci NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo`, `clave`, `DUI_persona`, `id_rol`) VALUES
(1, 'aquiles.brinco@gmail.com', '123', '12345678-9', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votacion`
--

CREATE TABLE `votacion` (
  `id_votacion` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `id_estado` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime NOT NULL,
  `cantidadvotos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `votacion`
--

INSERT INTO `votacion` (`id_votacion`, `descripcion`, `id_estado`, `fecha_inicio`, `fecha_final`, `cantidadvotos`) VALUES
(1, 'Votacion de Prueba', 1, '2019-11-20 00:00:00', '2019-11-21 00:00:00', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`),
  ADD KEY `candidato_votacion` (`id_votacion`),
  ADD KEY `candidato_partido` (`id_partido`),
  ADD KEY `candidato_persona` (`DUI_persona`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `detalles_votacion`
--
ALTER TABLE `detalles_votacion`
  ADD PRIMARY KEY (`id_DV`),
  ADD KEY `DV1` (`id_votacion`),
  ADD KEY `DV3` (`id_candidato`),
  ADD KEY `DV4` (`id_voto`),
  ADD KEY `DV2` (`DUI_persona`);

--
-- Indices de la tabla `estado_persona`
--
ALTER TABLE `estado_persona`
  ADD PRIMARY KEY (`id_estadoh`);

--
-- Indices de la tabla `estado_votacion`
--
ALTER TABLE `estado_votacion`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estado_voto`
--
ALTER TABLE `estado_voto`
  ADD PRIMARY KEY (`id_voto`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `municipio_departamento` (`id_departamento`);

--
-- Indices de la tabla `padron`
--
ALTER TABLE `padron`
  ADD PRIMARY KEY (`id_padron`),
  ADD KEY `padron_persona` (`DUI_persona`),
  ADD KEY `padron_urnas` (`id_urnas`),
  ADD KEY `padron_usuario` (`id_usuario`);

--
-- Indices de la tabla `partido_politico`
--
ALTER TABLE `partido_politico`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`DUI_persona`),
  ADD KEY `sexo_persona` (`id_sexo`),
  ADD KEY `estado_persona` (`id_estadoh`),
  ADD KEY `municipio_persona` (`id_municipio`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`),
  ADD KEY `sede_municipio` (`id_municipio`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Indices de la tabla `urnas`
--
ALTER TABLE `urnas`
  ADD PRIMARY KEY (`id_urnas`),
  ADD KEY `urnas_sede` (`id_sede`);

--
-- Indices de la tabla `urnas_votacion`
--
ALTER TABLE `urnas_votacion`
  ADD PRIMARY KEY (`id_UV`),
  ADD KEY `UV2` (`id_votacion`),
  ADD KEY `UV1` (`id_urnas`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `usuario_rol` (`id_rol`),
  ADD KEY `usuario_persona` (`DUI_persona`);

--
-- Indices de la tabla `votacion`
--
ALTER TABLE `votacion`
  ADD PRIMARY KEY (`id_votacion`),
  ADD KEY `votacion_estado` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detalles_votacion`
--
ALTER TABLE `detalles_votacion`
  MODIFY `id_DV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estado_persona`
--
ALTER TABLE `estado_persona`
  MODIFY `id_estadoh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_votacion`
--
ALTER TABLE `estado_votacion`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_voto`
--
ALTER TABLE `estado_voto`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `padron`
--
ALTER TABLE `padron`
  MODIFY `id_padron` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `partido_politico`
--
ALTER TABLE `partido_politico`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `urnas_votacion`
--
ALTER TABLE `urnas_votacion`
  MODIFY `id_UV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `votacion`
--
ALTER TABLE `votacion`
  MODIFY `id_votacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `candidato_partido` FOREIGN KEY (`id_partido`) REFERENCES `partido_politico` (`id_partido`),
  ADD CONSTRAINT `candidato_persona` FOREIGN KEY (`DUI_persona`) REFERENCES `persona` (`DUI_persona`),
  ADD CONSTRAINT `candidato_votacion` FOREIGN KEY (`id_votacion`) REFERENCES `votacion` (`id_votacion`);

--
-- Filtros para la tabla `detalles_votacion`
--
ALTER TABLE `detalles_votacion`
  ADD CONSTRAINT `DV1` FOREIGN KEY (`id_votacion`) REFERENCES `votacion` (`id_votacion`),
  ADD CONSTRAINT `DV2` FOREIGN KEY (`DUI_persona`) REFERENCES `persona` (`DUI_persona`),
  ADD CONSTRAINT `DV3` FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`),
  ADD CONSTRAINT `DV4` FOREIGN KEY (`id_voto`) REFERENCES `estado_voto` (`id_voto`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `padron`
--
ALTER TABLE `padron`
  ADD CONSTRAINT `padron_persona` FOREIGN KEY (`DUI_persona`) REFERENCES `persona` (`DUI_persona`),
  ADD CONSTRAINT `padron_urnas` FOREIGN KEY (`id_urnas`) REFERENCES `urnas` (`id_urnas`),
  ADD CONSTRAINT `padron_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `estado_persona` FOREIGN KEY (`id_estadoh`) REFERENCES `estado_persona` (`id_estadoh`),
  ADD CONSTRAINT `municipio_persona` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`),
  ADD CONSTRAINT `sexo_persona` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`);

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `sede_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

--
-- Filtros para la tabla `urnas`
--
ALTER TABLE `urnas`
  ADD CONSTRAINT `urnas_sede` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`);

--
-- Filtros para la tabla `urnas_votacion`
--
ALTER TABLE `urnas_votacion`
  ADD CONSTRAINT `UV1` FOREIGN KEY (`id_urnas`) REFERENCES `urnas` (`id_urnas`),
  ADD CONSTRAINT `UV2` FOREIGN KEY (`id_votacion`) REFERENCES `votacion` (`id_votacion`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_persona` FOREIGN KEY (`DUI_persona`) REFERENCES `persona` (`DUI_persona`),
  ADD CONSTRAINT `usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `votacion`
--
ALTER TABLE `votacion`
  ADD CONSTRAINT `votacion_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado_votacion` (`id_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

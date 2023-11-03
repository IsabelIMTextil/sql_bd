-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-11-2023 a las 19:11:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Talleres textiles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumnos`
--

CREATE TABLE `Alumnos` (
  `id_alumnos` int(11) NOT NULL,
  `nomAlum` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `técnica_id` int(11) NOT NULL,
  `nomTec` varchar(30) NOT NULL,
  `dia1` varchar(10) NOT NULL,
  `dia2` varchar(10) NOT NULL,
  `horaInic` varchar(6) NOT NULL,
  `horaFin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Alumnos`
--

INSERT INTO `Alumnos` (`id_alumnos`, `nomAlum`, `email`, `técnica_id`, `nomTec`, `dia1`, `dia2`, `horaInic`, `horaFin`) VALUES
(6, 'Elisa O.', 'e.ortiz@gmail.com', 1, '', 'lunes', 'jueves', '15:00', '17:00'),
(7, 'Gloria S', 'gloria@gmail.com', 2, '', 'lunes', 'jueves', '18:00', '20:00'),
(8, 'Fabiana S', 'fabianasr@gmail.com', 2, '', 'lunes', 'jueves', '18:00', '20:00'),
(9, 'Ma Virginia A', 'mva@gmail.com', 4, '', 'miércoles', '', '09:00', '12:00'),
(10, 'Liliana L', 'leiterl@gmail.com', 1, '', 'lunes', 'jueves', '15:00', '17:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesores`
--

CREATE TABLE `Profesores` (
  `id_profesores` int(11) NOT NULL,
  `técnica1_id` int(11) NOT NULL,
  `nomCompleto` varchar(40) NOT NULL,
  `dia1` varchar(10) NOT NULL,
  `dia2` varchar(10) NOT NULL,
  `horaInic` varchar(6) NOT NULL,
  `horaFin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Profesores`
--

INSERT INTO `Profesores` (`id_profesores`, `técnica1_id`, `nomCompleto`, `dia1`, `dia2`, `horaInic`, `horaFin`) VALUES
(1, 1, 'Isabel M', 'lunes', 'jueves', '15:00', '17:00'),
(5, 2, 'Marita M', 'lunes', 'jueves', '09:00', '12:00'),
(6, 3, 'Elena R', 'martes', ' ', '09:00', '12:00'),
(8, 3, 'Sara A', 'miércoles', '', '15:00', '17:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Talleres`
--

CREATE TABLE `Talleres` (
  `id_técnica` int(11) NOT NULL,
  `nomTec` varchar(40) NOT NULL,
  `dia1` varchar(10) NOT NULL,
  `dia2` varchar(10) NOT NULL,
  `horaInic` varchar(6) NOT NULL,
  `horaFin` varchar(6) NOT NULL,
  `Costo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Talleres`
--

INSERT INTO `Talleres` (`id_técnica`, `nomTec`, `dia1`, `dia2`, `horaInic`, `horaFin`, `Costo`) VALUES
(1, 'Telar de cuadros', 'lunes', 'jueves', '15:00', '17:00', 20000),
(2, 'Telar de mesa', 'lunes', 'jueves', '18:00', '20:00', 20000),
(3, 'Telar Mapuche', 'martes', '', '09:00', '12:00', 15000),
(4, 'Telar de cintura', 'miércoles', '', '09:00', '12:00', 15000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  ADD PRIMARY KEY (`id_alumnos`),
  ADD KEY `técnica_id` (`técnica_id`),
  ADD KEY `nomTécnica` (`nomTec`),
  ADD KEY `dia1` (`dia1`),
  ADD KEY `dia2` (`dia2`),
  ADD KEY `horaInic` (`horaInic`),
  ADD KEY `horaFin` (`horaFin`);

--
-- Indices de la tabla `Profesores`
--
ALTER TABLE `Profesores`
  ADD PRIMARY KEY (`id_profesores`),
  ADD KEY `técnica_id` (`técnica1_id`),
  ADD KEY `horaInic` (`horaInic`),
  ADD KEY `horaFin` (`horaFin`),
  ADD KEY `dia1` (`dia1`),
  ADD KEY `dia2` (`dia2`);

--
-- Indices de la tabla `Talleres`
--
ALTER TABLE `Talleres`
  ADD PRIMARY KEY (`id_técnica`),
  ADD KEY `nomTécnica` (`nomTec`),
  ADD KEY `nomTec` (`nomTec`),
  ADD KEY `horaInic` (`horaInic`),
  ADD KEY `horaFin` (`horaFin`),
  ADD KEY `dia1` (`dia1`),
  ADD KEY `dia2` (`dia2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  MODIFY `id_alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Profesores`
--
ALTER TABLE `Profesores`
  MODIFY `id_profesores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Talleres`
--
ALTER TABLE `Talleres`
  MODIFY `id_técnica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`técnica_id`) REFERENCES `Talleres` (`id_técnica`);

--
-- Filtros para la tabla `Profesores`
--
ALTER TABLE `Profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`técnica1_id`) REFERENCES `Talleres` (`id_técnica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2024 a las 08:01:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autoss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `id` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `kilometros` int(11) NOT NULL,
  `Modelo` date NOT NULL,
  `Informacion` text NOT NULL,
  `Asientos` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id`, `color`, `kilometros`, `Modelo`, `Informacion`, `Asientos`, `id_marca`) VALUES
(5, 'Rojo', 15000, '2018-03-01', 'MUY BUEN AUTO', 5, 3),
(8, 'Blanco', 48098, '2015-02-19', 'Un poco antiguo', 4, 2),
(19, 'negro', 23987, '2019-01-29', 'Muy buen estado', 2, 3),
(20, 'Naranja', 10000, '2020-10-20', 'Auto rapido', 3, 4),
(21, 'Azul', 80456, '2018-03-01', 'Muy usado', 4, 1),
(22, 'Amarillo', 12345, '1999-10-09', 'rapido', 2, 2),
(23, 'Gris', 12345, '2016-10-21', 'rapido', 4, 2),
(25, 'Naranja', 12345, '2008-02-09', 'rapido', 2, 2),
(26, 'Marron', 12345, '1980-10-09', 'rapido', 5, 2),
(27, 'Violeta', 12345, '2004-10-09', 'rapido', 4, 2),
(28, 'verde agua', 15000, '2018-03-01', 'MUY BUEN AUTO', 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_tablaMarca` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_tablaMarca`, `marca`) VALUES
(1, 'ford'),
(2, 'Chevrolet'),
(3, 'Renault'),
(4, 'Tesla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `email`, `contraseña`, `rol`) VALUES
(1, 'monsalvo@gmail.com', 'poncha', 'usuario'),
(2, 'webadmin', '$2y$10$GFGVvrwzCY/L2.jVw5Yt/.S1zcRAjMM0b4N4BLJWRqVBn0qPTqYyC', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_tablaMarca`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_tablaMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autos`
--
ALTER TABLE `autos`
  ADD CONSTRAINT `autos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_tablaMarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

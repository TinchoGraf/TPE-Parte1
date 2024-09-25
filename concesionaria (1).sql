-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2024 a las 18:37:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `concesionaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo-vehiculos`
--

CREATE TABLE `catalogo-vehiculos` (
  `id` int(11) NOT NULL,
  `marca` int(11) NOT NULL,
  `modelo` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `ID Comprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradores`
--

CREATE TABLE `compradores` (
  `dni` int(11) NOT NULL,
  `nombre` tinytext NOT NULL,
  `direccion` tinytext NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compradores`
--

INSERT INTO `compradores` (`dni`, `nombre`, `direccion`, `telefono`) VALUES
(77664, '0', '0', 0),
(3123123, '0', '0', 0),
(32321321, '0', '0', 0),
(43546435, '0', '0', 0),
(232131213, 'Juan', 'Belgrano 1823', 122145452);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo-vehiculos`
--
ALTER TABLE `catalogo-vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID Comprador` (`ID Comprador`);

--
-- Indices de la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`dni`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogo-vehiculos`
--
ALTER TABLE `catalogo-vehiculos`
  ADD CONSTRAINT `catalogo-vehiculos_ibfk_1` FOREIGN KEY (`ID Comprador`) REFERENCES `compradores` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

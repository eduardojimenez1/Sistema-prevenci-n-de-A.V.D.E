-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2018 a las 18:06:14
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sistema-alerta-animales`
--
CREATE DATABASE IF NOT EXISTS `sistema-alerta-animales` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `sistema-alerta-animales`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales-extintos`
--

CREATE TABLE IF NOT EXISTS `animales-extintos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `clasificacion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `video` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `causa-extincion` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `animales-extintos`
--

INSERT INTO `animales-extintos` (`id`, `nombre`, `clasificacion`, `descripcion`, `imagen`, `video`, `causa-extincion`) VALUES
(1, '', '', '', '', '', ''),
(2, 'perezoso gigante colombiano', 'mamífero ', 'vivo 800 mil años y la altura máxima era 6 metros de altura', '', '', 'Natural'),
(3, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales-vía-extinción`
--

CREATE TABLE IF NOT EXISTS `animales-vía-extinción` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `clasificacion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `prevencion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `videos` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE IF NOT EXISTS `evaluacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` int(20) NOT NULL,
  `clasificacion` int(20) NOT NULL,
  `recursos` int(5) NOT NULL,
  `enunciado` int(5) NOT NULL,
  `resultado` int(3) NOT NULL,
  `tipo_de_evaluacion` int(20) NOT NULL,
  `respuestas` int(3) NOT NULL,
  `preguntas` int(10) NOT NULL,
  `examen` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro`
--

CREATE TABLE IF NOT EXISTS `foro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `numeros_integrantes` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hilo`
--

CREATE TABLE IF NOT EXISTS `hilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `informacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `preguntas` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `inquietudes` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechas` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `edad` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `ocupacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo-electronico` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `facebook` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

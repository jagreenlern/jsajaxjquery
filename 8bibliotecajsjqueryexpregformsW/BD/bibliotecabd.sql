-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2020 a las 18:07:01
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bibliotecabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE IF NOT EXISTS `autores` (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_nombre` varchar(40) NOT NULL,
  `aut_nacimiento` smallint(6) NOT NULL,
  PRIMARY KEY (`aut_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`aut_id`, `aut_nombre`, `aut_nacimiento`) VALUES
(1, 'Miguel de Cervantes', 1547),
(2, 'Pedro Calderón de la Barca', 1600),
(3, 'Lope de Vega', 1562),
(4, 'Francisco de Quevedo', 1580),
(5, 'Luis de Góngora', 1561);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_fecha` date NOT NULL,
  `com_socio` int(11) NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `fk_com_socio` (`com_socio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`com_id`, `com_fecha`, `com_socio`) VALUES
(1, '2019-03-03', 1),
(2, '2019-03-03', 1),
(3, '2019-03-04', 1),
(4, '2019-03-07', 1),
(5, '2019-04-03', 1),
(6, '2019-04-04', 1),
(7, '2019-05-03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE IF NOT EXISTS `detalles` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `det_cantidad` int(11) NOT NULL,
  `det_libro` varchar(13) NOT NULL,
  `det_compra` int(11) NOT NULL,
  PRIMARY KEY (`det_id`),
  KEY `fk_det_libro` (`det_libro`),
  KEY `fk_detalle_compra` (`det_compra`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`det_id`, `det_cantidad`, `det_libro`, `det_compra`) VALUES
(1, 3, '1234567890123', 1),
(2, 2, '1234567890126', 2),
(3, 3, '1234567890123', 2),
(4, 2, '1234567890126', 3),
(5, 3, '1234567890123', 3),
(6, 2, '1234567890126', 4),
(7, 3, '1234567890123', 5),
(8, 2, '1234567890126', 6),
(9, 3, '1234567890123', 6),
(10, 2, '1234567890126', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplares`
--

CREATE TABLE IF NOT EXISTS `ejemplares` (
  `eje_libro` varchar(13) NOT NULL,
  `eje_signatura` varchar(15) NOT NULL,
  PRIMARY KEY (`eje_signatura`),
  KEY `fk_eje_libro` (`eje_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejemplares`
--

INSERT INTO `ejemplares` (`eje_libro`, `eje_signatura`) VALUES
('1234567890123', 'N01'),
('1234567890123', 'N02'),
('1234567890123', 'N03'),
('1234567890124', 'N04'),
('1234567890124', 'N05'),
('1234567890125', 'P01'),
('1234567890125', 'P02'),
('1234567890126', 'T01'),
('1234567890126', 'T02'),
('1234567890126', 'T03'),
('1234567890126', 'T04'),
('1234567890127', 'T05'),
('1234567890127', 'T06'),
('1234567890128', 'N06'),
('1234567890128', 'N07'),
('1234567890135', 'T07'),
('1234567890135', 'T08'),
('1234567890135', 'T09'),
('1234567890136', 'N08'),
('1234567890136', 'N09'),
('1234567890137', 'T10'),
('1234567890137', 'T11'),
('1234567890145', 'P03'),
('1234567890145', 'P04'),
('1234567890165', 'P05'),
('1234567890165', 'P06'),
('1234567890225', 'P07'),
('1234567890225', 'P08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `lib_titulo` varchar(50) NOT NULL,
  `lib_genero` varchar(30) NOT NULL,
  `lib_autor` int(11) NOT NULL,
  `lib_isbn` varchar(13) NOT NULL,
  PRIMARY KEY (`lib_isbn`),
  KEY `fk_lib_autor` (`lib_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`lib_titulo`, `lib_genero`, `lib_autor`, `lib_isbn`) VALUES
('Don Quijote de la Mancha', 'NOVELA', 1, '1234567890123'),
('Novelas Ejemplares', 'NOVELA', 1, '1234567890124'),
('Viaje al Parnaso', 'POESÍA', 1, '1234567890125'),
('La vida es sueño', 'TEATRO', 2, '1234567890126'),
('El alcalde de Zalamea', 'TEATRO', 2, '1234567890127'),
('La Arcadia', 'NOVELA', 3, '1234567890128'),
('Fuenteovejuna', 'TEATRO', 3, '1234567890135'),
('El Buscón', 'NOVELA', 4, '1234567890136'),
('Entremeses', 'TEATRO', 4, '1234567890137'),
('Sonetos', 'POESÍA', 4, '1234567890145'),
('Soledades', 'POESÍA', 5, '1234567890165'),
('Polifemo', 'POESÍA', 5, '1234567890225');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE IF NOT EXISTS `prestamos` (
  `pre_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_fecha` date NOT NULL,
  `pre_devolucion` date NOT NULL,
  `pre_socio` int(11) NOT NULL,
  `pre_ejemplar` varchar(15) NOT NULL,
  PRIMARY KEY (`pre_id`),
  KEY `fk_pre_socio` (`pre_socio`),
  KEY `fk_pre_ejemplar` (`pre_ejemplar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`pre_id`, `pre_fecha`, `pre_devolucion`, `pre_socio`, `pre_ejemplar`) VALUES
(4, '2018-12-04', '2018-12-07', 2, 'N02'),
(5, '2018-12-04', '2018-12-09', 2, 'T02'),
(6, '2018-12-04', '2018-12-09', 2, 'T09'),
(7, '2020-05-09', '2018-12-09', 3, 'N03'),
(8, '2018-12-05', '2018-12-09', 3, 'T03'),
(9, '2018-12-05', '2018-12-09', 3, 'T08'),
(10, '2018-12-06', '2018-12-13', 4, 'P03'),
(11, '2018-12-06', '2018-12-13', 4, 'P05'),
(12, '2018-12-06', '2018-12-13', 4, 'N07'),
(13, '2018-12-07', '2018-12-11', 5, 'P06'),
(14, '2020-05-09', '2018-12-11', 5, 'P04'),
(15, '2020-05-09', '2018-12-11', 5, 'P08'),
(16, '2018-12-08', '2018-12-12', 7, 'T05'),
(17, '2018-12-08', '2018-12-12', 7, 'T04'),
(18, '2018-12-14', '2018-12-18', 1, 'T04'),
(19, '2018-12-14', '2018-12-18', 1, 'P04'),
(20, '2018-12-14', '2018-12-18', 1, 'N06'),
(21, '2018-12-15', '2018-12-20', 3, 'N01'),
(22, '2018-12-15', '2018-12-20', 3, 'N05'),
(23, '2018-12-15', '2018-12-20', 3, 'T07'),
(24, '2018-12-15', '2018-12-21', 6, 'T06'),
(25, '2018-12-15', '2018-12-21', 6, 'N02'),
(26, '2018-12-15', '2018-12-21', 6, 'N04'),
(27, '2018-12-22', '2018-12-26', 2, 'N04'),
(28, '2018-12-22', '2018-12-26', 2, 'T04'),
(29, '2018-12-22', '2018-12-26', 2, 'P04'),
(30, '2018-12-22', '2018-12-25', 7, 'N01'),
(31, '2018-12-22', '2018-12-25', 7, 'T01'),
(32, '2018-12-22', '2018-12-25', 7, 'P01'),
(33, '2018-12-22', '2018-12-25', 7, 'T08'),
(41, '2018-12-31', '2019-01-05', 7, 'N01'),
(42, '2018-12-31', '2019-01-05', 7, 'N04'),
(43, '2018-12-31', '2019-01-05', 7, 'N07'),
(44, '2018-01-03', '2019-01-08', 6, 'N02'),
(45, '2018-01-03', '2019-01-08', 6, 'N05'),
(46, '2018-01-03', '2019-01-08', 6, 'T01'),
(47, '2018-01-03', '2019-01-08', 6, 'T06'),
(49, '2020-01-01', '2010-01-10', 1, 'N02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE IF NOT EXISTS `socios` (
  `soc_id` int(11) NOT NULL AUTO_INCREMENT,
  `soc_dni` varchar(9) NOT NULL,
  `soc_nombre` varchar(20) NOT NULL,
  `soc_ciudad` varchar(15) NOT NULL,
  PRIMARY KEY (`soc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`soc_id`, `soc_dni`, `soc_nombre`, `soc_ciudad`) VALUES
(1, '12345678Z', 'Pepe', 'Cartagena'),
(2, '58566178J', 'María', 'Cartagena'),
(3, '58123178Q', 'Juan', 'La Unión'),
(4, '19123178N', 'Laura', 'Torre Pacheco'),
(5, '19121234T', 'Félix', 'Cartagena'),
(6, '11121277H', 'Pepi', 'Fuente Álamo'),
(7, '15789456W', 'Verónica', 'La Unión'),
(8, '23000001R', 'Alfredo', 'Torre-Pacheco'),
(9, '23000002W', 'Lucía', 'Murcia'),
(10, '23000003A', 'Estefanía', 'Caravaca');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_com_socio` FOREIGN KEY (`com_socio`) REFERENCES `socios` (`soc_id`);

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `fk_detalle_compra` FOREIGN KEY (`det_compra`) REFERENCES `compras` (`com_id`),
  ADD CONSTRAINT `fk_detalle_libro` FOREIGN KEY (`det_libro`) REFERENCES `libros` (`lib_isbn`);

--
-- Filtros para la tabla `ejemplares`
--
ALTER TABLE `ejemplares`
  ADD CONSTRAINT `fk_ejemplar_libro` FOREIGN KEY (`eje_libro`) REFERENCES `libros` (`lib_isbn`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_lib_autor` FOREIGN KEY (`lib_autor`) REFERENCES `autores` (`aut_id`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_prestamos_ejemplares` FOREIGN KEY (`pre_ejemplar`) REFERENCES `ejemplares` (`eje_signatura`),
  ADD CONSTRAINT `fk_pre_socio` FOREIGN KEY (`pre_socio`) REFERENCES `socios` (`soc_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

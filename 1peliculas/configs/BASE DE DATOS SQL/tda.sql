-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2019 a las 23:50:14
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productostda`
--

CREATE TABLE `productostda` (
  `id` int(100) NOT NULL,
  `nombre_subgrupo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_producto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_barra` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `precio_costo` decimal(50,2) NOT NULL,
  `precio_A` decimal(50,2) NOT NULL,
  `precio_B` decimal(50,2) NOT NULL,
  `precio_C` decimal(50,2) NOT NULL,
  `marca` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `presentacion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `unidad_medida` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productostda`
--

INSERT INTO `productostda` (`id`, `nombre_subgrupo`, `nombre_producto`, `codigo_barra`, `precio_costo`, `precio_A`, `precio_B`, `precio_C`, `marca`, `presentacion`, `unidad_medida`) VALUES
(1, 'Aceite Azteca ', 'Aceite Azteca 1/2 Bidon', '0 0001', '11.00', '12.50', '12.00', '11.75', 'Azteca', 'Botella', 'Unidad'),
(2, 'Aceite Azteca ', 'Aceite Azteca Bidon', '0 0002', '20.00', '22.00', '22.00', '21.50', 'Azteca', 'Botella', 'Unidad'),
(3, 'Aceite Bonella', 'Aceite de Maíz Bonella (12x1400ml)', '0 0901', '45.43', '48.50', '48.50', '48.00', 'Bonella', 'Botella', 'Caja'),
(4, 'Aceite Bonella', 'Aceite de Maíz Bonella (24x710ml)', '0 0902', '47.42', '50.50', '50.50', '50.00', 'Bonella', 'Botella', 'Caja'),
(5, 'Aceite Bonella', 'Aceite de Maíz Bonella 1 Gal (6x2960ml)', '0 0900', '46.63', '49.50', '49.50', '49.00', 'Bonella', 'Botella', 'Caja'),
(6, 'Aceite Bonella', 'Aceite de Maíz Bonella (1400ml)', '7 401001500989', '3.79', '4.25', '4.25', '4.00', 'Bonella', 'Botella', 'Unidad'),
(7, 'Aceite Bonella', 'Aceite de Maíz Bonella (710ml)', '7 401001500972', '1.98', '2.30', '2.30', '2.20', 'Bonella', 'Botella', 'Unidad'),
(8, 'Aceite Bonella', 'Aceite de Maíz Bonella 1 Gal (2960ml)', '7 401001503430', '7.77', '8.50', '8.50', '8.25', 'Bonella', 'Botella', 'Unidad'),
(9, 'Aceite de Coco', 'Aceite de Coco para Cabello (12 Unids)', '0 0003', '6.00', '7.00', '7.00', '6.75', 'Drogueria BM', 'Bote', 'Docena'),
(10, 'Aceite de Coco', 'Aceite de Coco para Cabello', '0 0004', '0.50', '0.75', '0.75', '0.65', 'Drogueria BM', 'Bote', 'Unidad'),
(11, 'Aceite de Sapoyulo', 'Aceite de Sapoyulo para Cabello (12 Unids)', '0 0005', '6.00', '7.00', '7.00', '6.75', 'Generico', 'Bote', 'Docena'),
(12, 'Aceite de Sapoyulo', 'Aceite de Sapoyulo para Cabello', '0 0006', '0.50', '0.75', '0.75', '0.65', 'Generico', 'Bote', 'Unidad'),
(13, 'Aceite El Dorado', 'Aceite El Dorado (12x1500ml)', '274010 01500969', '27.52', '29.00', '29.00', '28.50', 'El Dorado', 'Botella', 'Caja'),
(14, 'Aceite El Dorado', 'Aceite El Dorado (20x750ml)', '374010 01500898', '24.80', '26.00', '26.00', '25.00', 'El Dorado', 'Botella', 'Caja'),
(15, 'Aceite El Dorado', 'Aceite El Dorado (24x443ml)', '374010 01501970', '18.54', '19.50', '19.50', '19.00', 'El Dorado', 'Botella', 'Caja'),
(16, 'Aceite El Dorado', 'Aceite El Dorado 1 Gal (6x3750ml) ', '1740 1001 500535', '34.80', '36.50', '36.50', '36.00', 'El Dorado', 'Botella', 'Caja'),
(17, 'Aceite El Dorado', 'Aceite El Dorado (1500ml)', '7 401001 500965', '2.29', '2.75', '2.75', '2.60', 'El Dorado', 'Botella', 'Unidad'),
(18, 'Aceite El Dorado', 'Aceite El Dorado (443ml)', '7 401001 501979', '0.77', '0.90', '0.90', '0.85', 'El Dorado', 'Botella', 'Unidad'),
(19, 'Aceite El Dorado', 'Aceite El Dorado (750ml)', '7 401001 500897', '1.24', '1.30', '1.30', '1.30', 'El Dorado', 'Botella', 'Unidad'),
(20, 'Aceite El Dorado', 'Aceite El Dorado 1 Gal (3750ml)', '7 401001 500538', '5.80', '6.25', '6.25', '6.00', 'El Dorado', 'Botella', 'Unidad'),
(21, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal (20x750ml)', '0 0903', '25.47', '27.00', '27.00', '26.50', 'Ideal', 'Botella', 'Caja'),
(22, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal 1 Gal (6x3000ml)', '1 74 01001 50067 2', '29.34', '31.00', '31.00', '30.50', 'Ideal', 'Botella', 'Caja'),
(23, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal 1/2 Gal (12x1500ml)', '2 74 01001 50065 5', '29.97', '32.00', '32.00', '31.50', 'Ideal', 'Botella', 'Caja'),
(24, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal (750ml)', '0 0904', '1.27', '1.75', '1.75', '1.50', 'Ideal', 'Botella', 'Unidad'),
(25, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal 1 Gal (3000ml)', '7 401001 500675', '4.89', '5.75', '5.75', '5.50', 'Ideal', 'Botella', 'Unidad'),
(26, 'Aceite Girasol Ideal', 'Aceite de Girasol Ideal 1/2 Gal (1500ml)', '7 401001 500651', '2.50', '2.90', '2.90', '2.70', 'Ideal', 'Botella', 'Unidad'),
(27, 'Aceite Mennen', 'Aceite Mennen (24x100ml)', '0 0905', '44.47', '46.00', '46.00', '45.50', 'Mennen', 'Bote', 'Caja'),
(28, 'Aceite Mennen', 'Aceite Mennen (100ml)', '0 0906', '1.85', '2.25', '2.25', '2.00', 'Mennen', 'Bote', 'Unidad'),
(29, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (12x250ml)', '2 800715 090178 8', '41.60', '44.00', '43.50', '43.50', 'Olitalia', 'Bote', 'Caja'),
(30, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (12x500ml)', '2 800715 090277 8', '71.00', '73.00', '72.75', '72.50', 'Olitalia', 'Bote', 'Caja'),
(31, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (24x100ml)', '0 0907', '43.92', '46.50', '46.00', '46.00', 'Olitalia', 'Bote', 'Caja'),
(32, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (6x1000ml)', '2 800715 090278 5', '65.28', '69.00', '68.00', '68.00', 'Olitalia', 'Bote', 'Caja'),
(33, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (1000ml)', '8 007150 902781', '10.88', '12.00', '11.75', '11.50', 'Olitalia', 'Bote', 'Unidad'),
(34, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (100ml)', '6 57738 00030', '1.83', '2.50', '2.25', '2.25', 'Olitalia', 'Bote', 'Unidad'),
(35, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (250ml)', '8 007150 901784', '3.46', '4.00', '3.80', '3.75', 'Olitalia', 'Bote', 'Unidad'),
(36, 'Aceite Oliva Olitalia', 'Aceite Oliva Olitalia (500ml)', '8 007150 902774', '5.91', '6.50', '6.25', '6.25', 'Olitalia', 'Bote', 'Unidad'),
(37, 'Aceite Orisol', 'Aceite de Oliva Orisol Light (18x750ml)', '176 13100 08437 3', '24.25', '26.50', '26.50', '26.00', 'Orisol', 'Bolsa', 'Caja'),
(38, 'Aceite Orisol', 'Aceite de Oliva Orisol Light Bote (18x750ml)', '1 74 13100 00764 8', '26.68', '28.00', '28.00', '27.50', 'Orisol', 'Botella', 'Caja'),
(39, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (24x443ml)', '1 741310 008421 2', '18.38', '20.00', '20.00', '19.50', 'Orisol', 'Bolsa', 'Caja'),
(40, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (4x12x175ml)', '1 741310 008012 2', '18.35', '20.00', '20.00', '19.50', 'Orisol', 'Bolsa', 'Caja'),
(41, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (6x12x75ml)', '1 741310 008011 5', '13.75', '14.50', '14.50', '14.25', 'Orisol', 'Bolsa', 'Caja'),
(42, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (9x1500ml)', '1 741310 001023 5', '24.84', '26.50', '26.25', '26.00', 'Orisol', 'Botella', 'Caja'),
(43, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico 1 Gal (6x3750ml)', '1 741310 001006 8', '35.00', '37.50', '37.50', '37.00', 'Orisol', 'Botella', 'Caja'),
(44, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico 1/2 Gal (9x1875ml)', '2 741310 001010 2', '31.02', '33.00', '33.00', '32.50', 'Orisol', 'Botella', 'Caja'),
(45, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico Bote (20x445ml)', '1 74 13100 00503 3', '18.38', '20.00', '20.00', '19.50', 'Orisol', 'Botella', 'Caja'),
(46, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico Bote (20x750ml)', '1 74 13100 01013 6', '22.70', '24.50', '24.50', '24.25', 'Orisol', 'Botella', 'Caja'),
(47, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (12x175ml)', '0 0007', '4.59', '5.00', '5.00', '4.90', 'Orisol', 'Bolsa', 'Docena '),
(48, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (12x75ml)', '0 0008', '2.29', '2.40', '2.40', '2.40', 'Orisol', 'Bolsa', 'Docena '),
(49, 'Aceite Orisol', 'Aceite de Oliva Orisol Light (750ml)', '7 413100084376', '1.35', '1.50', '1.50', '1.40', 'Orisol', 'Bolsa', 'Unidad'),
(50, 'Aceite Orisol', 'Aceite de Oliva Orisol Light Bote (750ml)', '7 413100 007641', '1.48', '1.75', '1.75', '1.65', 'Orisol', 'Botella', 'Unidad'),
(51, 'Aceite Orisol', 'Aceite Orisol Bidon', '7 413100 012164', '22.00', '23.25', '23.25', '23.00', 'Orisol', 'Botella', 'Unidad'),
(52, 'Aceite Orisol', 'Aceite Vegetal Orisol 1/2 Bidón ', '7 413100 005029', '11.00', '12.00', '12.00', '11.75', 'Orisol', 'Botella', 'Unidad'),
(53, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (1500ml)', '7 413100 010238', '2.76', '3.75', '3.50', '3.25', 'Orisol', 'Botella', 'Unidad'),
(54, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (175ml)', '7 413100080125', '0.38', '0.60', '0.60', '0.50', 'Orisol', 'Bolsa', 'Unidad'),
(55, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (443ml)', '7 413100 084215', '0.77', '1.00', '1.00', '0.85', 'Orisol', 'Bolsa', 'Unidad'),
(56, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico (75ml)', '7 413100 080118', '0.19', '0.25', '0.25', '0.25', 'Orisol', 'Bolsa', 'Unidad'),
(57, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico 1 Gal (3750ml)', '7 413100 010061', '5.83', '6.50', '6.50', '6.25', 'Orisol', 'Botella', 'Unidad'),
(58, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico 1/2 Gal (1875ml)', '7 413100 010108', '3.45', '4.00', '4.00', '3.75', 'Orisol', 'Botella', 'Unidad'),
(59, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico Bote (445ml)', '7 413100 005036', '0.77', '1.00', '1.00', '0.85', 'Orisol', 'Botella', 'Unidad'),
(60, 'Aceite Orisol', 'Aceite Vegetal Orisol Clásico Bote (750ml)', '7 413100 010139', '1.14', '1.25', '1.25', '1.20', 'Orisol', 'Botella', 'Unidad'),
(61, 'Aceite Orisol', 'Aceite Vegetal Orisol (20x750ml)', '1 741310 003075 2', '22.70', '24.50', '24.50', '24.25', 'Orisol', 'Bolsa', 'Caja'),
(62, 'Aceite Orisol', 'Aceite Vegetal Orisol (750ml)', '7 413100 033053', '1.14', '1.25', '1.25', '1.20', 'Orisol', 'Bolsa', 'Unidad'),
(63, 'Aceite para Cabello 3 Niños', 'Aceite para Cabello 3 Niños (10x12x60ml)', '0 0009', '29.50', '35.00', '35.00', '35.00', '5 Niños', 'Bote', 'Caja'),
(64, 'Aceite para Cabello 3 Niños', 'Aceite para Cabello 3 Niños (12x60ml)', '0 0010', '2.95', '4.00', '3.75', '3.50', '4 Niños', 'Bote', 'Docena'),
(65, 'Aceite para Cabello 3 Niños', 'Aceite para Cabello 3 Niños (60ml)', '0 0011', '0.25', '0.40', '0.40', '0.35', '3 Niños', 'Bote', 'Unidad'),
(66, 'Aceite para Máquina Triyo', 'Aceite para Máquina Triyo (12x30ml)', '0 0012', '4.80', '7.20', '7.20', '6.50', 'Triyo', 'Bote', 'Caja'),
(67, 'Aceite para Máquina Triyo', 'Aceite para Máquina Triyo (12x90ml)', '0 0013', '7.56', '9.60', '9.60', '9.00', 'Triyo', 'Bote', 'Caja'),
(68, 'Aceite para Máquina Triyo', 'Aceite para Máquina Triyo (30ml)', '7 415300 005007', '0.40', '0.75', '0.75', '0.65', 'Triyo', 'Bote', 'Unidad'),
(69, 'Aceite para Máquina Triyo', 'Aceite para Máquina Triyo (90ml)', '7 415300 005014', '0.63', '1.00', '1.00', '0.85', 'Triyo', 'Bote', 'Unidad'),
(70, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (13x750ml)', '1 74 01006 80153 8', '14.20', '15.00', '15.00', '14.75', 'Capullo', 'Bolsa', 'Caja'),
(71, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (25x450ml)', '00 000000 082247 48', '18.13', '19.50', '19.50', '19.00', 'Capullo', 'Bolsa', 'Caja'),
(72, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (6x12x80ml)', '00 000000 082247 64', '12.50', '13.50', '13.50', '13.00', 'Capullo', 'Bolsa', 'Caja'),
(73, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (12x80ml)', '0 0014', '2.08', '2.40', '2.40', '2.30', 'Capullo', 'Bolsa', 'Docena'),
(74, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (450ml)', '7 401006 801524', '0.72', '0.90', '0.90', '0.85', 'Capullo', 'Bolsa', 'Unidad'),
(75, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (750ml)', '7 401006 801531', '1.09', '1.20', '1.20', '1.15', 'Capullo', 'Bolsa', 'Unidad'),
(76, 'Aceite Vegetal Capullo', 'Aceite Vegetal Capullo (80ml)', '7 401006 801579', '0.17', '0.20', '0.20', '0.20', 'Capullo', 'Bolsa', 'Unidad'),
(77, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola (18x750ml)', '10 7 50894 62084 2', '22.00', '23.00', '23.00', '22.75', 'Mazola', 'Bolsa', 'Caja'),
(78, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola Natural (24x443ml)', '10 7 50894 62082 8', '21.16', '23.00', '23.00', '22.50', 'Mazola', 'Bolsa', 'Caja'),
(79, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola Natural Galón (6 Unids)', '0 0015', '53.63', '57.00', '57.00', '56.00', 'Mazola', 'Botella', 'Caja'),
(80, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola (750ml)', '7 50894 62084 5', '1.22', '1.35', '1.35', '1.30', 'Mazola', 'Bolsa', 'Unidad'),
(81, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola Natural (443ml)', '7 5089462082', '0.88', '1.00', '1.00', '0.95', 'Mazola', 'Bolsa', 'Unidad'),
(82, 'Aceite Vegetal Mazola', 'Aceite Vegetal Mazola Natural Galón', '7 5089462051 7', '8.94', '10.00', '10.00', '9.50', 'Mazola', 'Botella', 'Unidad'),
(83, 'Acondicionador Dove', 'Acondicionador Dove Control Caída (12x400ml)', '0 0016', '65.82', '70.00', '70.00', '69.00', 'Dove', 'Bote', 'Caja'),
(84, 'Acondicionador Dove', 'Acondicionador Dove Óleo Nutricion (12x400ml)', '0 0017', '65.82', '70.00', '70.00', '69.00', 'Dove', 'Bote', 'Caja'),
(85, 'Acondicionador Dove', 'Acondicionador Dove Control Caída (400ml)', '7 891150 019430', '5.49', '6.00', '6.00', '5.85', 'Dove', 'Bote', 'Unidad'),
(86, 'Acondicionador Dove', 'Acondicionador Dove Óleo Nutricion (400ml)', '7 891150 017337', '5.49', '6.00', '6.00', '5.85', 'Dove', 'Bote', 'Unidad'),
(87, 'Acondicionador Pantene', 'Acondicionador Pantene Rizos Definidos (12x400ml)', '0 0018', '65.82', '70.00', '70.00', '69.00', 'Pantene', 'Bote', 'Caja'),
(88, 'Acondicionador Pantene', 'Acondicionador Pantene Rizos Definidos (400ml)', '7 501001 165321', '5.49', '6.00', '6.00', '5.85', 'Pantene', 'Bote', 'Unidad'),
(89, 'Aderezo Del Chef', 'Pepinesa Del Chef (12x480g)', '0 0019', '15.96', '17.00', '17.00', '16.50', 'Del Chef', 'Bolsa', 'Caja'),
(90, 'Aderezo Del Chef', 'Pepinesa Del Chef (24x200g)', '0 0020', '16.80', '18.00', '18.00', '17.50', 'Del Chef', 'Bolsa', 'Caja'),
(91, 'Aderezo Del Chef', 'Pepinesa Del Chef (200g)', '7 411000 251072', '0.70', '0.90', '0.90', '0.80', 'Del Chef', 'Bolsa', 'Unidad'),
(92, 'Aderezo Del Chef', 'Pepinesa Del Chef Unidad (480g)', '7 411000 251157', '1.33', '1.60', '1.60', '1.50', 'Del Chef', 'Bolsa', 'Unidad'),
(93, 'Aderezo McCormick', 'Mayonesa McCormick 1/2 Galón (8 Unids)', '4 741100 020607 0', '37.22', '39.00', '39.00', '39.00', 'McCormick', 'Bolsa', 'Caja'),
(94, 'Aderezo McCormick', 'Mayonesa McCormick Galón (4 Unids)', '4 741100 020606 3', '33.33', '35.00', '35.00', '35.00', 'McCormick', 'Bolsa', 'Caja'),
(95, 'Aderezo McCormick', 'Mayonesa McCormick 1/2 Galón', '7 411000 206072', '4.65', '5.25', '5.25', '5.00', 'McCormick', 'Bolsa', 'Unidad'),
(96, 'Aderezo McCormick', 'Mayonesa McCormick Galón', '7 411000 206065', '8.33', '9.00', '9.00', '8.75', 'McCormick', 'Bolsa', 'Unidad'),
(97, 'Agua Envasada Aqua Eco', 'Agua Envasada Aqua Eco (12x750ml)', '0 0021', '2.80', '3.50', '3.25', '3.00', 'Aqua Eco', 'Botella', 'Fardo'),
(98, 'Agua Envasada Aqua Eco', 'Agua Envasada Aqua Eco (750ml)', '7 401005 988592', '0.23', '0.50', '0.35', '0.30', 'Aqua Eco', 'Botella', 'Unidad'),
(99, 'Agua Envasada Cristal', 'Agua Envasada Cristal (12x1L)', '0 0024', '2.55', '3.00', '3.00', '2.75', 'Cristal', 'Botella', 'Fardo'),
(100, 'Agua Envasada Cristal', 'Agua Envasada Cristal (24x355ml)', '0 0022', '4.66', '5.50', '5.50', '5.25', 'Cristal', 'Botella', 'Fardo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productostda`
--
ALTER TABLE `productostda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productostda`
--
ALTER TABLE `productostda`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4089;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2020 a las 19:55:31
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aireuropa`
--
CREATE DATABASE IF NOT EXISTS `aireuropa` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `aireuropa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE IF NOT EXISTS `vuelos` (
  `idVuelo` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `precio` int(8) NOT NULL,
  `disponibles` int(8) NOT NULL,
  `totales` int(8) NOT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `compania` set('iberia','aireuropa','','') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`idVuelo`, `origen`, `destino`, `fecha`, `hora`, `precio`, `disponibles`, `totales`, `image`, `compania`) VALUES
('F5432', 'Madrid', 'Barcelona', '2020-02-09', '10:15:00', 35, 100, 150, 'https://img.rezdy.com/PRODUCT_IMAGE/83588/barcelona_spain_feature_lg.jpg', ''),
('F65325', 'Madrid', 'Londres', '2020-02-17', '12:00:00', 78, 35, 200, 'https://www.visitbritain.com/sites/default/files/styles/consumer_campaigns_hero_mobile/public/paragraphs_bundles/hero/london_5.jpg?itok=bh6pKJ5n', ''),
('FV9000', 'Lisboa', 'Madrid', '2020-02-18', '12:00:00', 30, 20, 50, 'https://www.fodors.com/wp-content/uploads/2018/12/UltimateMadrid__HERO_shutterstock_624145955.jpg', ''),
('FV060719', 'Madrid', 'Florencia', '2020-04-06', '17:00:00', 170, 200, 200, 'https://viajes.nationalgeographic.com.es/medio/2018/09/18/jardines-de-boboli_ff06b4be_1500x1000.jpg', ''),
('FV090920', 'Barcelona ', 'Tenerife', '2020-05-05', '10:25:00', 45, 70, 125, 'https://traveler.marriott.com/wp-content/uploads/2018/06/GI_163172659_PlayaDeLasTeresitas.jpg', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

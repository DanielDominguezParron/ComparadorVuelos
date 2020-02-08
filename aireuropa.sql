-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2020 at 04:59 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aireuropa`
--
CREATE DATABASE IF NOT EXISTS `aireuropa` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `aireuropa`;

-- --------------------------------------------------------

--
-- Table structure for table `vuelos`
--

CREATE TABLE IF NOT EXISTS `vuelos` (
  `idVuelo` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `precio` int(8) NOT NULL,
  `plazasDisponibles` int(8) NOT NULL,
  `plazasTotales` int(8) NOT NULL,
  `image` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `vuelos`
--

INSERT INTO `vuelos` (`idVuelo`, `origen`, `destino`, `fecha`, `hora`, `precio`, `plazasDisponibles`, `plazasTotales`, `image`) VALUES
('F54321', 'Madrid', 'Italia', '2020-02-11', '12:35:00', 100, 249, 0, 'https://turismo.euskadi.eus/contenidos/d_destinos_turisticos/0000004981_d2_rec_turismo/es_4981/images/PT_cabecerabilbaoguggen1024.jpg'),
('C1234', 'Madrid', 'Bilbao', '2020-02-13', '19:00:00', 80, 249, 250, 'https://turismo.euskadi.eus/contenidos/d_destinos_turisticos/0000004981_d2_rec_turismo/es_4981/images/PT_cabecerabilbaoguggen1024.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

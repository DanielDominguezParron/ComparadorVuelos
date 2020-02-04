-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 01:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

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

DROP TABLE IF EXISTS `vuelos`;
CREATE TABLE IF NOT EXISTS `vuelos` (
  `idVuelo` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `precio` int(8) NOT NULL,
  `plazas` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `vuelos`
--

INSERT INTO `vuelos` (`idVuelo`, `origen`, `destino`, `fecha`, `hora`, `precio`, `plazas`) VALUES
('F54321', 'Madrid', 'Italia', '2020-02-11', '12:35:00', 100, 250);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Stř 16. dub 2014, 15:05
-- Verze serveru: 5.5.35-0ubuntu0.13.10.2
-- Verze PHP: 5.5.3-1ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `menu`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL,
  `parentId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=18 ;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`id`, `text`, `parentId`) VALUES
(1, 'první úroveň 1', 0),
(2, 'první úroveň 2', 0),
(3, 'druhá úroveň 1a', 1),
(4, 'druhá úroveň 1b', 1),
(5, 'druhá úroveň 1l', 1),
(6, 'druhá úroveň 2a', 2),
(7, 'druhá úroveň 2c', 2),
(8, 'třetí úroveň 1c', 4),
(9, 'třetí úroveň 1e', 4),
(10, 'třetí úroveň 1k', 4),
(11, 'třetí úroveň 2b', 6),
(12, 'čtvrtá úroveň 1d', 8),
(13, 'čtvrtá úroveň 1f', 9),
(14, 'pátá úroveň 1g', 13),
(15, 'pátá úroveň 1j', 13),
(16, 'šestá úroveň 1h', 14),
(17, 'šestá úroveň 1i', 14);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

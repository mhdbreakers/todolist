-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 24 Juillet 2019 à 07:51
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `todolist`
--
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `todolist`;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `user` int(10) NOT NULL,
  `done` tinytext NOT NULL,
  `created` datetime NOT NULL,
  `ipaddress` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`id`, `name`, `user`, `done`, `created`, `ipaddress`) VALUES
(22, 'Poursuivre le tÃ©lÃ©chargement formation Illustrator', 1, '0', '2019-07-24 00:28:10', '::1'),
(23, 'Retrait World Remit', 1, '0', '2019-07-24 00:28:32', '::1'),
(24, 'Retrait World Remit', 1, '1', '2019-07-24 00:28:32', '::1'),
(25, 'Depot compte UBA', 1, '0', '2019-07-24 00:28:40', '::1'),
(26, 'Casa de Papel', 1, '0', '2019-07-24 00:29:00', '::1'),
(27, 'Reply to MEGA SOFT', 1, '0', '2019-07-24 00:29:19', '::1'),
(28, 'Demander photo de campagne aux candidats', 1, '0', '2019-07-24 01:38:22', '::1'),
(29, 'Dentiste', 1, '0', '2019-07-24 02:13:18', '::1'),
(30, 'Blender', 1, '0', '2019-07-24 02:17:08', '::1'),
(31, 'PoÃ¨me', 1, '0', '2019-07-24 02:18:10', '::1');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'Mohamed Ali');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

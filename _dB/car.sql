-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 18 juin 2019 à 17:00
-- Version du serveur :  5.7.25
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

CREATE TABLE `car` (
  `idCar` smallint(5) UNSIGNED NOT NULL,
  `brand` varchar(15) NOT NULL,
  `model` varchar(30) NOT NULL,
  `motor` enum('essence','diesel','électrique','hybride') NOT NULL,
  `year` year(4) NOT NULL,
  `price` decimal(7,2) UNSIGNED NOT NULL,
  `idCarType` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`idCar`, `brand`, `model`, `motor`, `year`, `price`, `idCarType`) VALUES
(1, 'BMW', '116i', 'diesel', 2015, '23250.00', 3),
(2, 'BMW', '118i', 'essence', 2015, '25100.00', 3),
(3, 'BMW', '114d', 'diesel', 2014, '23950.00', 3),
(4, 'BMW', '116d', 'diesel', 2014, '23950.00', 3),
(5, 'BMW', '316i', 'essence', 2015, '28250.00', 1),
(6, 'BMW', '320i', 'essence', 2015, '32600.00', 1),
(7, 'BMW', '316d', 'diesel', 2014, '29650.00', 1),
(8, 'BMW', '318d', 'diesel', 2015, '31300.00', 1),
(9, 'BMW', '316i Touring', 'diesel', 2015, '30250.00', 2),
(10, 'BMW', '318d Touring', 'diesel', 2015, '33300.00', 2),
(11, 'BMW', '420i', 'essence', 2015, '39550.00', 4),
(12, 'BMW', '428i', 'essence', 2015, '41400.00', 4),
(13, 'BMW', 'X3 xDrive20i', 'essence', 2015, '40900.00', 6),
(14, 'BMW', 'X3 xDrive20d', 'diesel', 2014, '43350.00', 6),
(15, 'Maserati', 'GranTurismo', 'essence', 2000, '10000.00', 3),
(16, 'Maserati', 'Ghibli', 'diesel', 2000, '49999.00', 5),
(17, 'Maserati', 'GranCabrio', 'essence', 2000, '13000.00', 7),
(18, 'Maserati', 'Quattroporte', 'diesel', 2000, '12000.00', 4),
(19, 'Dacia', 'Logan dCi75', 'diesel', 2015, '10400.00', 1),
(20, 'Dacia', 'Logan MCV TCe90', 'essence', 2015, '10800.00', 2),
(21, 'Dacia', 'Sandero dCi90', 'diesel', 2015, '12200.00', 3),
(22, 'Dacia', 'Lodgy Stepway dCi110', 'diesel', 2015, '17000.00', 2),
(23, 'Dacia', 'Duster 1.6 16V', 'essence', 2015, '11990.00', 6),
(24, 'Dacia', 'Duster dCi110', 'diesel', 2015, '19900.00', 6),
(25, 'Mercedes-Benz', 'Classe S', 'diesel', 2014, '82038.00', 1),
(26, 'Mercedes-Benz', 'Classe E', 'électrique', 2010, '43802.00', 2),
(27, 'Mercedes-Benz', 'Classe C', 'hybride', 2015, '34485.00', 4),
(28, 'Mercedes-Benz', 'Classe A', 'essence', 2015, '24321.00', 1),
(29, 'Mercedes-Benz', 'Classe B', 'électrique', 2013, '60000.00', 2),
(30, 'Toyota', 'Yaris Sedan SE', 'essence', 2014, '12100.00', 1),
(31, 'Toyota', 'GT86', 'essence', 2013, '24000.00', 1),
(32, 'Toyota', 'Trueno AE86', 'diesel', 1983, '11000.00', 3),
(33, 'Toyota', 'Levin AE85', 'diesel', 1984, '8000.00', 3),
(34, 'Toyota', 'Prius', 'hybride', 2013, '14000.00', 5),
(35, 'Toyota', 'Corolla', 'essence', 2015, '16000.00', 1),
(36, 'Porsche', '911 SC', 'essence', 1981, '20000.00', 4),
(37, 'Porsche', 'Carrera GT', 'essence', 1972, '99900.00', 4),
(38, 'Porsche', 'Panamera', 'hybride', 2013, '97569.00', 4),
(39, 'Ford', 'Fiesta', 'essence', 2013, '10700.00', 4),
(40, 'Ford', 'Focus', 'essence', 2015, '11200.00', 4),
(41, 'Ford', 'Fusion', 'essence', 2014, '15700.00', 4),
(42, 'Ford', 'Mustang', 'essence', 2014, '21700.00', 5),
(43, 'Chevrolet', 'Matiz', 'essence', 2005, '8000.00', 3),
(44, 'Chevrolet', 'Aveo', 'diesel', 2008, '14199.00', 5),
(45, 'Chevrolet', 'Captiva', 'diesel', 2010, '24999.00', 3),
(46, 'Chevrolet', 'Cruze', 'diesel', 2012, '17199.00', 2),
(47, 'Lada', '2105', 'essence', 1981, '500.00', 3),
(48, 'Lada', '2107', 'essence', 1983, '600.00', 2),
(49, 'Lada', 'Niva', 'diesel', 1982, '1000.00', 6),
(50, 'Lada', 'Natacha', 'essence', 1993, '1500.00', 4),
(51, 'Lada', 'Sagona', 'diesel', 1991, '1200.00', 1),
(52, 'Peugeot', '308', 'essence', 2015, '20000.00', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`idCar`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `car`
--
ALTER TABLE `car`
  MODIFY `idCar` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

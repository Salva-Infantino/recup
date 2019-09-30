-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 19 juin 2019 à 10:02
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
CREATE DATABASE IF NOT EXISTS `garage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `garage`;

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

DROP TABLE IF EXISTS `car`;
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

-- --------------------------------------------------------

--
-- Structure de la table `car_type`
--

DROP TABLE IF EXISTS `car_type`;
CREATE TABLE `car_type` (
  `idCarType` tinyint(3) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `car_type`
--

INSERT INTO `car_type` (`idCarType`, `type`) VALUES
(1, 'berline'),
(2, 'break'),
(3, 'compact'),
(4, 'coupé 3 portes'),
(5, 'coupé 5 portes'),
(6, 'cabriolet'),
(7, 'SUV');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `idCustomer` char(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `zip` char(4) NOT NULL,
  `phone` char(12) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`idCustomer`, `name`, `firstname`, `birthday`, `zip`, `phone`, `mail`, `gender`) VALUES
('01040897965', 'INFANTINO', 'Sara', '2001-04-08', '4040', '+32494865252', 's.infantino84@gmail.com', 'F'),
('01041254488', 'INFANTINO', 'Raffaella', '2001-04-12', '4040', '+32498289434', 'raff.lamberti@gmail.com', 'F'),
('01070128522', 'INFANTINO', 'Salvatore', '2001-07-01', '4040', '+32494845261', 's.infantino97@gmail.com', 'M'),
('01092748865', 'INFANTINO', 'Vincenzo', '2001-09-27', '4040', '+32498299944', 'fc485@skynet.be', 'M'),
('01121245628', 'INFANTINO', 'Jean-Benoit', '2001-12-12', '4040', '+32492536654', 'jb@caramail.be', 'M'),
('02011454860', 'MATHIEU', 'olivier', '2002-01-14', '1000', '+32452561497', 'olivier@gmail.com', 'M'),
('02052185213', 'MATHIEU', 'alain', '2002-05-21', '6000', '+3271312112', 'alain@gmail.com', 'M'),
('02071305156', 'MATHIEU', 'julien', '2002-07-13', '6031', '+32497381099', 'jul.mathieu1986@gmail.com', 'M'),
('02110312563', 'MATHIEU', 'béatrice', '2002-11-03', '6080', '+32474563258', 'beatrice@gmail.com', 'F'),
('02122525632', 'MATHIEU', 'aline', '2002-12-25', '6050', '+32486166013', 'aline_mathieu@gmail.com', 'F'),
('03081839813', 'LEJEUNE', 'Jean', '2003-04-27', '1420', '+32485085795', 'jean.l@gmail.com', 'M'),
('03081839878', 'LEJEUNE', 'Bob', '2003-08-18', '1420', '+32477088799', 'bob.lejeune@gmail.com', 'M'),
('04072624596', 'QUARTA', 'Antonio', '2004-07-26', '4537', '32473888811', 'quarta.tony@gmail.com', 'M'),
('04081723117', 'QUARTA', 'Gregorio', '2004-08-17', '4000', '32473888817', 'gregorio.quarta@gmail.com', 'M'),
('04082825423', 'QUARTA', 'Barbara', '2004-08-28', '4020', '32473888815', 'quarta.barbara@gmail.com', 'F'),
('04091456478', 'QUARTA', 'Tamara', '2004-09-14', '4320', '32497889536', 'tamara.quarta@gmail.com', 'F'),
('04112756412', 'QUARTA', 'Claudio', '2004-11-27', '4023', '32497456985', 'claudio.quarta@gmail.com', 'M'),
('05081839478', 'LEJEUNE', 'Sarah', '2003-01-27', '1420', '+32472018791', 'sarah.lejeune@gmail.com', 'F'),
('06081839818', 'LEJEUNE', 'Laura', '2003-09-30', '1420', '+32474088729', 'lejeune.laura@gmail.com', 'F'),
('54011817963', 'MULKAY', 'Dany', '1954-01-18', '7810', '+32474972736', 'reinquetd@gmail.com', 'F'),
('59022417963', 'MULKAY', 'Alain', '1959-02-24', '7810', '+32474972736', 'alain.mulkay@gmail.com', 'M'),
('61082318044', 'MULKAY', 'Françoise', '1961-08-23', '1410', '+32498645704', 'mulkay.francoise@waterloo.eu', 'F'),
('65111617963', 'MULKAY', 'Jean-Pierre', '1965-11-16', '1332', '+3226751862', 'jpmulkay@gmail.com', 'M'),
('88081839878', 'LEJEUNE', 'Rémi', '1988-08-18', '1420', '+32477088799', 'lejeune.remi@gmail.com', 'M'),
('96040517963', 'MULKAY', 'Morgane', '1996-04-05', '7810', '+32474972736', 'morgane.mulkay@gmail.com', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `sell`
--

DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell` (
  `idCustomer` char(11) NOT NULL,
  `idCar` smallint(6) NOT NULL,
  `idSeller` char(4) NOT NULL,
  `date` datetime NOT NULL,
  `bonus` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `idSeller` char(4) NOT NULL,
  `name` varchar(15) NOT NULL,
  `firstname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `seller`
--

INSERT INTO `seller` (`idSeller`, `name`, `firstname`) VALUES
('V001', 'DUPOND', 'Jean-Pierre'),
('V002', 'DUBOIS', 'Danielle'),
('V003', 'DURAND', 'Alexandre'),
('V004', 'MERTENS', 'Pierre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`idCar`);

--
-- Index pour la table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`idCarType`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`idCustomer`,`idCar`,`idSeller`),
  ADD KEY `date` (`date`);

--
-- Index pour la table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`idSeller`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `car`
--
ALTER TABLE `car`
  MODIFY `idCar` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `idCarType` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

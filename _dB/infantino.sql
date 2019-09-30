-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 19 juin 2019 à 07:55
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `garage`
--

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`idCustomer`, `name`, `firstname`, `birthday`, `zip`, `phone`, `mail`, `gender`) VALUES
('01040897965', 'INFANTINO', 'Sara', '2001-04-08', '4040', '+32494865252', 's.infantino84@gmail.com', 'F'),
('01041254488', 'INFANTINO', 'Raffaella', '2001-04-12', '4040', '+32498289434', 'raff.lamberti@gmail.com', 'F'),
('01070128522', 'INFANTINO', 'Salvatore', '2001-07-01', '4040', '+32494845261', 's.infantino97@gmail.com', 'M'),
('01092748865', 'INFANTINO', 'Vincenzo', '2001-09-27', '4040', '+32498299944', 'fc485@skynet.be', 'M'),
('01121245628', 'INFANTINO', 'Jean-Benoit', '2001-12-12', '4040', '+32492536654', 'jb@caramail.be', 'M');

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 nov. 2023 à 22:17
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_03`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

CREATE TABLE `enseignants` (
  `id` int(11) NOT NULL,
  `civilite` varchar(100) DEFAULT NULL,
  `nom_prenom` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `date_naissance` text DEFAULT NULL,
  `lieu_naissance` varchar(50) DEFAULT NULL,
  `pays` varchar(50) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `specialite` varchar(50) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(11) NOT NULL,
  `civilite` varchar(50) DEFAULT NULL,
  `nom_prenom` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `no_postal` varchar(10) DEFAULT NULL,
  `localite` varchar(50) DEFAULT NULL,
  `pays` varchar(50) DEFAULT NULL,
  `platformes` text DEFAULT NULL,
  `applications` text DEFAULT NULL,
  `filiere` varchar(25) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `civilite`, `nom_prenom`, `adresse`, `no_postal`, `localite`, `pays`, `platformes`, `applications`, `filiere`, `image`) VALUES
(1, 'Monsieur', 'Alaa eddine ourmassi', 'Sidi Bel Abbes', '22020', 'Sidi Bel Abbes', 'Algerie', 'windows, linux', ' SGBD ', '3isil', ''),
(2, 'Madame', 'Fatima', 'Sidi Bel Abbes', '22000', 'Sidi Bel Abbes', 'Marroc', 'windows, linux', ' SGBD ', '3isil', ''),
(3, 'Madame', 'Taibi', 'Berlin', '10000', 'Sidi Bel Abbes', 'Marroc', 'windows', ' SGBD ', 'm2rssi', ''),
(4, 'Mademoiselle', 'Khaoula', 'Mostaganem', '22000', 'Sidi Bel Abbes', 'Algerie', 'windows', ' Statistiques ', 'tc', '');

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) NOT NULL,
  `code_module` varchar(100) NOT NULL,
  `designation_module` varchar(100) NOT NULL,
  `coefficient` int(100) NOT NULL,
  `volume_horaire` varchar(100) NOT NULL,
  `filiere` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id`, `code_module`, `designation_module`, `coefficient`, `volume_horaire`, `filiere`) VALUES
(1, '12', 'Programmation d\'avancee de Web', 3, '3', '3isil'),
(2, '14', 'Genie Logiciel ', 4, '3', '3isil'),
(3, '16', 'Systèmes d’aide à la décision', 4, '3', '3isil'),
(4, '18', 'Analyse et conception orienté Objet', 4, '3', '3isil'),
(5, '20', 'BD Avancées', 4, '3', '3isil'),
(6, '11', 'Cyber Security', 2, '2', 'm2rssi'),
(7, '113', 'Architicture', 4, '2', 'tc');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `num_etudiant` int(30) NOT NULL,
  `filiere` varchar(30) NOT NULL,
  `nom_module` varchar(30) NOT NULL,
  `code_module` int(30) NOT NULL,
  `coefficient` int(30) NOT NULL,
  `note` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`num_etudiant`, `filiere`, `nom_module`, `code_module`, `coefficient`, `note`) VALUES
(1, '3isil', 'Systèmes d’aide à la décision', 16, 4, 12),
(1, '3isil', 'Genie Logiciel ', 14, 4, 14),
(2, '3isil', 'Programmation d\'avancee de Web', 12, 3, 16),
(1, '3isil', 'BD Avancées', 20, 4, 17),
(3, 'm2rssi', 'Cyber Security', 11, 2, 10),
(4, 'tc', 'Architicture', 113, 4, 19),
(2, '3isil', 'Systèmes d’aide à la décision', 16, 4, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

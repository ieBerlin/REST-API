-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 nov. 2023 à 01:19
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
-- Base de données : `getlocationproject`
--
CREATE DATABASE IF NOT EXISTS `getlocationproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `getlocationproject`;

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_ps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_adress` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `location_ps`, `location_adress`, `created_at`, `updated_at`) VALUES
(2, 'sba', '1234', 'sidi bel abbes', '2022-02-21 09:34:19', '2022-02-21 09:34:19'),
(3, 'oran 1', '2345', 'oran east', '2022-02-21 09:35:05', '2022-02-21 09:35:05'),
(4, 'oran 2', '3456', 'oran west', '2022-02-21 09:36:00', '2022-02-21 09:36:00'),
(5, 'alger 1', '4567', 'alger east', '2022-02-21 09:36:55', '2022-02-21 09:36:55'),
(6, 'alger 2', '5678', 'alger west', '2022-02-21 09:37:05', '2022-02-21 09:37:05');

-- --------------------------------------------------------

--
-- Structure de la table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `persons_name` varchar(128) NOT NULL,
  `persons_adress` text NOT NULL,
  `persons_location` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `persons`
--

INSERT INTO `persons` (`id`, `persons_name`, `persons_adress`, `persons_location`) VALUES
(3, 'Black Widow', 'oran', 2),
(4, 'Captain America', '14 sba fgdfh', 4),
(5, 'Captain Marvel', '16 khloijh', 2),
(6, 'Hawkeye', 'klsdjflsqdj 45 dfsqd', 3),
(8, 'Thor', '05 lhlkhjlkj', 6),
(9, 'Tony Stark', '18 kjmqefom 22', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de données : `my_work`
--
CREATE DATABASE IF NOT EXISTS `my_work` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_work`;

-- --------------------------------------------------------

--
-- Structure de la table `étudiant`
--

CREATE TABLE `étudiant` (
  `id` int(11) NOT NULL,
  `cevilite` varchar(25) NOT NULL,
  `nom_prenom` varchar(25) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `pays` varchar(25) NOT NULL,
  `platform` varchar(30) NOT NULL,
  `application` varchar(20) NOT NULL,
  `code_postale` varchar(20) NOT NULL,
  `localite` varchar(20) NOT NULL,
  `filière` varchar(20) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `étudiant`
--

INSERT INTO `étudiant` (`id`, `cevilite`, `nom_prenom`, `adresse`, `pays`, `platform`, `application`, `code_postale`, `localite`, `filière`, `image`) VALUES
(14, '12', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\r\nasklfhs', 'Algerie', 'Linux, Macintosh', ' Bureautique ', '16000', '10000', 'm2isi', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `étudiant`
--
ALTER TABLE `étudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `étudiant`
--
ALTER TABLE `étudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Base de données : `paw`
--
CREATE DATABASE IF NOT EXISTS `paw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paw`;

-- --------------------------------------------------------

--
-- Structure de la table `paw`
--

CREATE TABLE `paw` (
  `id` int(11) NOT NULL,
  `civilite` varchar(30) NOT NULL,
  `nom_prenom` varchar(30) NOT NULL,
  `adresse` text NOT NULL,
  `no_postal` varchar(30) NOT NULL,
  `localite` varchar(30) NOT NULL,
  `pays` varchar(30) NOT NULL,
  `platformes` text NOT NULL,
  `applications` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `paw`
--

INSERT INTO `paw` (`id`, `civilite`, `nom_prenom`, `adresse`, `no_postal`, `localite`, `pays`, `platformes`, `applications`, `image`) VALUES
(1, 'Monsieur', 'Donald Tramp ', 'Sidi bel abbes', '22020', 'Sidi Bel Abbes', 'France', 'linux', ' Bureautique ', 'trump.png'),
(3, 'Monsieur', 'Salem Ali', 'New York Brooklyn City', '16000', 'SBa', 'USA', 'windows, linux, macintosh', ' Bureautique ', 'denzel-wc.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `paw`
--
ALTER TABLE `paw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `paw`
--
ALTER TABLE `paw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tp_03\",\"table\":\"etudiants\"},{\"db\":\"tp_03\",\"table\":\"enseignants\"},{\"db\":\"tp_03\",\"table\":\"modules\"},{\"db\":\"paw\",\"table\":\"paw\"},{\"db\":\"testing\",\"table\":\"testing\"},{\"db\":\"tp01\",\"table\":\"tp01\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'paw', 'paw', '{\"sorted_col\":\"`platformes` ASC\"}', '2023-10-11 01:32:44'),
('root', 'tp_03', 'etudiants', '{\"sorted_col\":\"`etudiants`.`image` ASC\"}', '2023-10-24 21:04:40');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-24 21:09:51', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Structure de la table `testing`
--

CREATE TABLE `testing` (
  `aer` int(11) NOT NULL,
  `are` int(11) NOT NULL,
  `aer2` int(11) NOT NULL,
  `are2121` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`aer`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `testing`
--
ALTER TABLE `testing`
  MODIFY `aer` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `tp-03`
--
CREATE DATABASE IF NOT EXISTS `tp-03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tp-03`;
--
-- Base de données : `tp01`
--
CREATE DATABASE IF NOT EXISTS `tp01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tp01`;

-- --------------------------------------------------------

--
-- Structure de la table `tp01`
--

CREATE TABLE `tp01` (
  `nationalite` varchar(30) NOT NULL,
  `code_pays` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tp01`
--

INSERT INTO `tp01` (`nationalite`, `code_pays`) VALUES
('ALLEMAND', 'DE'),
('FRANCAIS', 'FR');
--
-- Base de données : `tp_03`
--
CREATE DATABASE IF NOT EXISTS `tp_03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tp_03`;

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

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`id`, `civilite`, `nom_prenom`, `adresse`, `date_naissance`, `lieu_naissance`, `pays`, `grade`, `specialite`, `image`) VALUES
(4, 'Monsieur', 'Berlin Alaa', 'yee', '2023-10-20', '', 'Algerie ', 'assistant ', 'informatique ', 'drive.jpg'),
(9, 'civilite', 'nom_prenom', 'adresse', 'date_naissance', 'lieu_naissance', 'pays', 'grade', 'specialite', 'image'),
(10, 'civilite', 'nom_prenom', 'adresse', 'date_naissance', 'lieu_naissance', 'pays', 'grade', 'specialite', 'image'),
(11, 'Madame', 'PAW TP', 'Algerie bel abbes', '2023-10-09T23:00:00.000Z', 'Bel abbes', 'Algerie ', 'mab ', 'informatique ', 'drive.jpg'),
(12, 'Madame', 'PAW TP', 'Algerie bel abbes', '2023-10-09T23:00:00.000Z', 'Bel abbes', 'Algerie ', 'mab ', 'informatique ', 'drive.jpg'),
(13, 'Madame', 'PAW TP', 'Algerie bel abbes', '2023-10-09T23:00:00.000Z', 'Bel abbes', 'Algerie ', 'mab ', 'informatique ', 'drive.jpg'),
(14, 'Madame', 'PAW TP', 'Algerie bel abbes', NULL, NULL, 'Algerie ', 'assistant ', 'anglais ', ''),
(15, 'Madame', 'PAW TP', 'Algerie bel abbes', NULL, NULL, 'Algerie ', 'maa ', 'anglais ', 'C:\\fakepath\\download.jpg'),
(16, 'Madame', 'PAW TP', 'Algerie bel abbes', '2023-11-09', 'Bel abbes', 'France ', 'maa ', 'informatique ', 'C:\\fakepath\\trump.png'),
(17, 'Monsieur', 'Berlin Alaa', 'yee', '2023-10-20', 'fdszfs', 'Algerie ', 'assistant ', 'informatique ', 'trump.png');

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
(3, 'Mademoiselle', 'Alaa Eddine Ourmassi', NULL, '16000', '16000', 'Algerie', 'linux', ' Statistiques ', 'tc', ''),
(5, 'Mademoiselle', 'Fabio Wibmer', NULL, '16000', '16000', 'Algerie', 'windows', ' Statistiques ', 'tc', 'bayden.png'),
(6, 'Mademoiselle', 'Alaa Eddine Ourmassi', 'Mademoisell', '16000', '16000', 'Algerie', 'linux', ' Statistiques ', 'tc', ''),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(11, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', 'C:\\fakepath\\download.jpg'),
(12, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(13, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', '', ' Statistiques ', 'tc', ''),
(14, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(15, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(16, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(17, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' Statistiques ', '1ing', ''),
(18, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(19, 'Monsieur', 'sdm,fns,mdf s,dmfsm,df', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(20, 'Monsieur', '', '', '', '', 'Algerie', '', '', 'tc', ''),
(21, 'Monsieur', '', '', '', '', 'Algerie', '', '', 'tc', ''),
(22, 'Monsieur', 'fsdsdf', 'sdfsdf', '16000', '16000', 'Allemgne', 'windows, linux', ' Bureautique ,  SGBD ', 'tc', ''),
(23, 'Monsieur', 'Alaa Eddine Ourmassi', 'df,msdnf\nasklfhs', '16000', '16000', 'Algerie', 'windows', ' DAO ', 'tc', ''),
(24, 'Monsieur', 'Fabio Berlin', 'Berlin Germany', '15000', '15000', 'Allemgne', 'windows, macintosh', ' DAO ,  SGBD ', 'm2rssi', 'C:\\fakepath\\trump.png'),
(25, 'Monsieur', 'Fabio Berlin', 'Berlin Germany', '15000', '15000', 'Allemgne', 'windows, macintosh', ' DAO ,  SGBD ', 'm2rssi', 'C:\\fakepath\\trump.png'),
(26, 'Monsieur', 'fsdsdf', 'sdfsdf', '16000', '16000', 'Allemgne', 'windows, linux', ' Bureautique ,  SGBD ', 'tc', 'C:\\fakepath\\denzel-wc.jpg'),
(27, 'Monsieur', 'Fabio Berlin', 'Berlin Germany', '15000', '15000', 'Allemgne', 'windows, macintosh', ' DAO ,  SGBD ', 'm2rssi', 'C:\\fakepath\\trump.png'),
(28, 'Monsieur', 'fsdsdf', 'sdfsdf', '16000', '16000', 'Allemgne', 'windows, linux', ' Bureautique ,  SGBD ', 'tc', 'C:\\fakepath\\download.jpg'),
(29, 'Monsieur', 'fsdsdf', 'sdfsdf', '16000', '16000', 'Allemgne', 'windows, linux', ' Bureautique ,  SGBD ', 'tc', 'C:\\fakepath\\trump.png'),
(30, 'Monsieur', 'fsdsdf', 'sdfsdf', '16000', '16000', 'Allemgne', 'windows, linux', ' Bureautique ,  SGBD ', 'tc', 'trump.png');

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
(1, 'arabic', 'dasda dad', 3, 'adas', 'tc'),
(3, 'arabic', 'Brlin', 3, '', '1ing'),
(4, '123', 'Physic', 7, '21', 'tc'),
(6, '12', 'Reseau et Security', 8, '10', 'm2rssi'),
(7, '23', 'Cyber Security', 13, '200', 'm2rssi'),
(8, '2121', 'Operating System', 18, '21', 'm2rssi');

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
(12, 'tc', 'Brlin', 0, 3, 0),
(12, 'tc', 'Brlin', 0, 3, 0),
(22, '1ing', 'Brlin', 123, 7, 12),
(22, 'tc', 'dasda dad', 0, 3, 12),
(25, 'm2rssi', 'Reseau et Security', 0, 0, 18),
(25, 'm2rssi', 'Cyber Security', 23, 13, 0),
(25, 'm2rssi', 'Reseau et Security', 12, 8, 18),
(25, 'm2rssi', 'Operating System', 2121, 18, 17),
(12, 'tc', 'Physic', 123, 7, 18);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

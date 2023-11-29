-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 11:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_03`
--

-- --------------------------------------------------------

--
-- Table structure for table `enseignants`
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
-- Dumping data for table `enseignants`
--

INSERT INTO `enseignants` (`id`, `civilite`, `nom_prenom`, `adresse`, `date_naissance`, `lieu_naissance`, `pays`, `grade`, `specialite`, `image`) VALUES
(1, 'Mademoiselle', 'Sophie White', '789 Pine Road', '1982-02-10', 'Villageton', 'Marroc', 'Assistant Professor', 'Physics', 'bayden.png'),
(2, 'Monsieur', 'Edward Johnson', '234 Maple Lane', '1978-11-30', 'Hamletsville', 'USA', 'Full Professor', 'Biology', 'bayden.png'),
(3, 'Madame', 'Eva Turner', '567 Elm Street', '1985-04-05', 'Meadowville', 'Algerie', 'Associate Professor', 'Chemistry', 'bayden.png'),
(4, 'Mademoiselle', 'Alex Miller', '890 Birch Avenue', '1972-07-18', 'Mountainville', 'France', 'Full Professor', 'Environmental Science', 'bayden.png'),
(5, 'Monsieur', 'George Lee', '123 Pinecrest Drive', '1988-09-25', 'Harborville', 'Allemgne', 'Assistant Professor', 'Geology', 'bayden.png');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
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
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `civilite`, `nom_prenom`, `adresse`, `no_postal`, `localite`, `pays`, `platformes`, `applications`, `filiere`, `image`) VALUES
(1, 'Monsieur', 'John Doe', '123 Main St', '12345', 'City', 'USA', 'Windows', 'Bureautique, Internet', 'tc', 'bayden.png'),
(2, 'Madame', 'Jane Smith', '456 Oak St', '67890', 'Town', 'France', 'Linux', 'DAO, SGBD', 'tc', 'bayden.png'),
(3, 'Mademoiselle', 'Alice Johnson', '789 Pine St', '13579', 'Village', 'Algerie', 'Macintosh', 'Statistiques, Internet', '2sc', 'bayden.png'),
(4, 'Monsieur', 'Bob Williams', '101 Elm St', '24680', 'Hamlet', 'Marroc', 'Windows, Linux', 'SGBD, Internet', '2sc', 'bayden.png'),
(5, 'Monsieur', 'Charlie Brown', '202 Maple St', '34567', 'County', 'Allemgne', 'Macintosh', 'Bureautique, DAO', '3isil', 'bayden.png'),
(6, 'Madame', 'Daisy Miller', '303 Pine St', '45678', 'District', 'USA', 'Windows, Linux', 'Statistiques, Internet', '3isil', 'bayden.png'),
(7, 'Mademoiselle', 'Eva Davis', '404 Cedar St', '56789', 'Township', 'France', 'Linux', 'Bureautique, DAO', '3si', 'bayden.png'),
(8, 'Monsieur', 'Frank Taylor', '505 Elm St', '67890', 'City', 'Algerie', 'Windows, Macintosh', 'Statistiques, SGBD', '3si', 'bayden.png'),
(9, 'Madame', 'Grace White', '606 Oak St', '78901', 'Village', 'Marroc', 'Linux', 'Bureautique, Internet', 'm1', 'bayden.png'),
(10, 'Monsieur', 'Henry Turner', '707 Pine St', '89012', 'Town', 'USA', 'Windows, Macintosh', 'Statistiques, SGBD', 'm1', 'bayden.png'),
(11, 'Monsieur', 'Isaac Walker', '808 Cedar St', '90123', 'District', 'Algerie', 'Windows', 'Bureautique, DAO', 'm2isi', 'bayden.png'),
(12, 'Madame', 'Jessica Adams', '909 Elm St', '01234', 'County', 'France', 'Linux', 'Statistiques, Internet', 'm2isi', 'bayden.png'),
(13, 'Mademoiselle', 'Karen Harris', '1011 Oak St', '12345', 'Township', 'Marroc', 'Macintosh', 'Bureautique, DAO', 'm2wic', 'bayden.png'),
(14, 'Monsieur', 'Louis Turner', '1112 Pine St', '23456', 'City', 'USA', 'Windows, Linux', 'Statistiques, SGBD', 'm2wic', 'bayden.png'),
(15, 'Madame', 'Mia Miller', '1213 Cedar St', '34567', 'Village', 'Algerie', 'Windows', 'Bureautique, Internet', 'm2rssi', 'bayden.png'),
(16, 'Monsieur', 'Noah Turner', '1314 Elm St', '45678', 'Town', 'Marroc', 'Linux', 'Statistiques, SGBD', 'm2rssi', 'bayden.png');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
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
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `code_module`, `designation_module`, `coefficient`, `volume_horaire`, `filiere`) VALUES
(1, 'TC001', 'Introduction to Programming', 3, '30', 'tc'),
(2, 'TC002', 'Data Structures and Algorithms', 3, '45', 'tc'),
(3, 'TC003', 'Database Management Systems', 2, '25', 'tc'),
(4, 'TC004', 'Computer Networks', 3, '30', 'tc'),
(5, 'TC005', 'Software Engineering', 3, '45', 'tc'),
(6, '2SC001', 'Object-Oriented Programming', 2, '25', '2sc'),
(7, '2SC002', 'Web Development', 4, '50', '2sc'),
(8, '2SC003', 'Database Design and Implementation', 2, '25', '2sc'),
(9, '2SC004', 'Data Structures and Algorithms II', 4, '50', '2sc'),
(10, '2SC005', 'Operating Systems and System Programming', 2, '25', '2sc'),
(11, '3ISIL001', 'Artificial Intelligence', 3, '45', '3isil'),
(12, '3ISIL002', 'Computer Graphics', 3, '30', '3isil'),
(13, '3ISIL003', 'Information Security', 3, '45', '3isil'),
(14, '3ISIL004', 'Distributed Systems', 3, '30', '3isil'),
(15, '3ISIL005', 'Machine Learning', 3, '45', '3isil'),
(16, '3SI001', 'Advanced Database Systems', 2, '25', '3si'),
(17, '3SI002', 'Network Security', 4, '50', '3si'),
(18, '3SI003', 'Software Testing and Quality Assurance', 2, '25', '3si'),
(19, '3SI004', 'Cloud Computing', 4, '50', '3si'),
(20, '3SI005', 'Human-Computer Interaction', 2, '25', '3si'),
(21, 'M1001', 'Research Methods in Computer Science', 3, '45', 'm1'),
(22, 'M1002', 'Advanced Algorithms', 3, '30', 'm1'),
(23, 'M1003', 'Parallel and Distributed Computing', 3, '45', 'm1'),
(24, 'M1004', 'Data Mining and Knowledge Discovery', 3, '30', 'm1'),
(25, 'M1005', 'Natural Language Processing', 3, '45', 'm1'),
(26, 'M2ISI001', 'Advanced Topics in Information Systems', 2, '25', 'm2isi'),
(27, 'M2ISI002', 'Big Data Analytics', 4, '50', 'm2isi'),
(28, 'M2ISI003', 'Information Retrieval', 2, '25', 'm2isi'),
(29, 'M2ISI004', 'Semantic Web', 4, '50', 'm2isi'),
(30, 'M2ISI005', 'Cybersecurity', 2, '25', 'm2isi'),
(31, 'M2WIC001', 'Wireless Networks', 3, '45', 'm2wic'),
(32, 'M2WIC002', 'Internet of Things', 3, '30', 'm2wic'),
(33, 'M2WIC003', 'Mobile Application Development', 3, '45', 'm2wic'),
(34, 'M2WIC004', 'Web Security', 3, '30', 'm2wic'),
(35, 'M2WIC005', 'Advanced Topics in Web Development', 3, '45', 'm2wic'),
(36, 'M2RSSI001', 'Embedded Systems', 2, '25', 'm2rssi'),
(37, 'M2RSSI002', 'Robotics', 4, '50', 'm2rssi'),
(38, 'M2RSSI003', 'Computer Vision', 2, '25', 'm2rssi'),
(39, 'M2RSSI004', 'Wireless Sensor Networks', 4, '50', 'm2rssi'),
(40, 'M2RSSI005', 'Digital Signal Processing', 2, '25', 'm2rssi');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
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
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`num_etudiant`, `filiere`, `nom_module`, `code_module`, `coefficient`, `note`) VALUES
(1, 'tc', 'Introduction to Programming', 0, 3, 18),
(1, 'tc', 'Data Structures and Algorithms', 0, 3, 19),
(1, 'tc', 'Database Management Systems', 0, 2, 20),
(1, 'tc', 'Computer Networks', 0, 3, 17),
(1, 'tc', 'Software Engineering', 0, 3, 16),
(2, 'tc', 'Introduction to Programming', 0, 3, 18),
(2, 'tc', 'Data Structures and Algorithms', 0, 3, 19),
(2, 'tc', 'Database Management Systems', 0, 2, 20),
(2, 'tc', 'Computer Networks', 0, 3, 17),
(2, 'tc', 'Software Engineering', 0, 3, 16),
(3, '2sc', 'Object-Oriented Programming', 2, 2, 19),
(3, '2sc', 'Web Development', 2, 4, 20),
(3, '2sc', 'Database Design and Implementa', 2, 2, 18),
(3, '2sc', 'Data Structures and Algorithms', 2, 4, 16),
(3, '2sc', 'Operating Systems and System P', 2, 2, 17),
(4, '2sc', 'Object-Oriented Programming', 2, 2, 19),
(4, '2sc', 'Web Development', 2, 4, 20),
(4, '2sc', 'Database Design and Implementa', 2, 2, 18),
(4, '2sc', 'Data Structures and Algorithms', 2, 4, 16),
(4, '2sc', 'Operating Systems and System P', 2, 2, 17),
(5, '3isil', 'Artificial Intelligence', 3, 3, 18),
(5, '3isil', 'Computer Graphics', 3, 3, 19),
(5, '3isil', 'Information Security', 3, 3, 20),
(5, '3isil', 'Distributed Systems', 3, 3, 17),
(5, '3isil', 'Machine Learning', 3, 3, 16),
(6, '3isil', 'Artificial Intelligence', 3, 3, 18),
(6, '3isil', 'Computer Graphics', 3, 3, 19),
(6, '3isil', 'Information Security', 3, 3, 20),
(6, '3isil', 'Distributed Systems', 3, 3, 17),
(6, '3isil', 'Machine Learning', 3, 3, 16),
(7, '3si', 'Advanced Database Systems', 3, 2, 17),
(7, '3si', 'Network Security', 3, 4, 18),
(7, '3si', 'Software Testing and Quality A', 3, 2, 19),
(7, '3si', 'Cloud Computing', 3, 4, 20),
(7, '3si', 'Human-Computer Interaction', 3, 2, 16),
(8, '3si', 'Advanced Database Systems', 3, 2, 17),
(8, '3si', 'Network Security', 3, 4, 18),
(8, '3si', 'Software Testing and Quality A', 3, 2, 19),
(8, '3si', 'Cloud Computing', 3, 4, 20),
(8, '3si', 'Human-Computer Interaction', 3, 2, 16),
(9, 'm1', 'Research Methods in Computer S', 0, 3, 18),
(9, 'm1', 'Advanced Algorithms', 0, 3, 19),
(9, 'm1', 'Parallel and Distributed Compu', 0, 3, 20),
(9, 'm1', 'Data Mining and Knowledge Disc', 0, 3, 17),
(9, 'm1', 'Natural Language Processing', 0, 3, 16),
(10, 'm1', 'Research Methods in Computer S', 0, 3, 18),
(10, 'm1', 'Advanced Algorithms', 0, 3, 19),
(10, 'm1', 'Parallel and Distributed Compu', 0, 3, 20),
(10, 'm1', 'Data Mining and Knowledge Disc', 0, 3, 17),
(10, 'm1', 'Natural Language Processing', 0, 3, 16),
(11, 'm2isi', 'Advanced Topics in Information', 0, 2, 17),
(11, 'm2isi', 'Big Data Analytics', 0, 4, 18),
(11, 'm2isi', 'Information Retrieval', 0, 2, 19),
(11, 'm2isi', 'Semantic Web', 0, 4, 20),
(11, 'm2isi', 'Cybersecurity', 0, 2, 16),
(12, 'm2isi', 'Advanced Topics in Information', 0, 2, 17),
(12, 'm2isi', 'Big Data Analytics', 0, 4, 18),
(12, 'm2isi', 'Information Retrieval', 0, 2, 19),
(12, 'm2isi', 'Semantic Web', 0, 4, 20),
(12, 'm2isi', 'Cybersecurity', 0, 2, 16),
(13, 'm2wic', 'Wireless Networks', 0, 3, 18),
(13, 'm2wic', 'Internet of Things', 0, 3, 19),
(13, 'm2wic', 'Mobile Application Development', 0, 3, 20),
(13, 'm2wic', 'Web Security', 0, 3, 17),
(13, 'm2wic', 'Advanced Topics in Web Develop', 0, 3, 16),
(14, 'm2wic', 'Wireless Networks', 0, 3, 18),
(14, 'm2wic', 'Internet of Things', 0, 3, 19),
(14, 'm2wic', 'Mobile Application Development', 0, 2, 20),
(14, 'm2wic', 'Web Security', 0, 3, 17),
(14, 'm2wic', 'Advanced Topics in Web Develop', 0, 3, 16),
(15, 'm2rssi', 'Embedded Systems', 0, 2, 19),
(15, 'm2rssi', 'Robotics', 0, 4, 20),
(15, 'm2rssi', 'Computer Vision', 0, 2, 18),
(15, 'm2rssi', 'Wireless Sensor Networks', 0, 4, 16),
(15, 'm2rssi', 'Digital Signal Processing', 0, 2, 17),
(16, 'm2rssi', 'Embedded Systems', 0, 2, 19),
(16, 'm2rssi', 'Robotics', 0, 4, 20),
(16, 'm2rssi', 'Computer Vision', 0, 2, 18),
(16, 'm2rssi', 'Wireless Sensor Networks', 0, 4, 16),
(16, 'm2rssi', 'Digital Signal Processing', 0, 2, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

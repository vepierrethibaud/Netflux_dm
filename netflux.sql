-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 12 juil. 2019 à 08:45
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `netflux`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(5, 'Fantastique'),
(6, 'Test'),
(7, 'SF'),
(8, 'Policier');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190711190819', '2019-07-11 19:08:29'),
('20190711193219', '2019-07-11 19:38:21');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datestart` int(4) NOT NULL,
  `dateend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbsaison` int(11) NOT NULL,
  `affiche` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`id`, `categorie_id`, `nom`, `datestart`, `dateend`, `nbsaison`, `affiche`, `synopsis`) VALUES
(4, 5, 'Game Of Thrones', 2011, '2019', 7, '5d27c17b5b8c3.jpeg', 'Il y a très longtemps, à une époque oubliée, une force a détruit l\'équilibre des saisons. Dans un pays où l\'été peut durer plusieurs années et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d\'au-delà du Mur protecteur, n\'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s\'abat sur le Royaume avec la promesse d\'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s\'emparer du Trône de Fer, le symbole du pouvoir absolu.'),
(5, 8, 'Lucifer', 2016, 'En cours', 4, '5d27c1a032964.png', 'Lassé et mécontent de sa position de \"Seigneur des Enfers\", Lucifer Morningstar démissionne et abandonne le trône de son royaume pour la bouillonnante et non moins impure Los Angeles. Dans la Cité des anges, l\'ex maître diabolique est le patron d\'un nightclub baptisé \"Lux\". Quand une star de la Pop est sauvagement assassinée sous ses yeux, il décide de partir à la recherche du coupable et croise sur sa route Chloe Decker, une femme flic qui résiste à ses charmes et lui met constamment des bâtons dans les roues.  Alors que l\'improbable duo s\'entraide pour venir à bout de l\'enquête, l\'ange Amenadiel est envoyé à Los Angeles par Dieu pour tenter de convaincre Lucifer de regagner son royaume. L\'ancien Seigneur des Enfers cèdera-t-il aux sirènes du Mal qui l\'appellent ou se laissera-t-il tenter par le Bien, vers lequel l\'inspecteur Chloe Decker semble peu à peu l\'amener ?'),
(6, 8, 'Sherlock', 2010, '2017', 4, '5d27c1c718ce1.jpeg', 'Les aventures de Sherlock Holmes et de son acolyte de toujours, le docteur Watson, sont transposées au XXIème siècle…'),
(7, 7, 'The Rain', 2018, 'En cours', 2, '5d27c1eb67952.png', 'Six ans après l\'apparition d\'un virus mortel ayant éliminé plus de la moitié de la population, un frère et une sœur partent à la recherche d\'un abri dans un monde devenu périlleux.'),
(8, 7, 'Dark', 2016, 'En cours', 2, '5d27c210cb672.png', 'Un enfant disparu lance quatre familles dans une quête éperdue pour trouver des réponses. La chasse au coupable fait émerger les péchés et les secrets d\'une petite ville.'),
(9, 5, 'Stranger Things', 2016, 'En cours', 3, '5d27c23f7dc31.png', 'A Hawkins, en 1983 dans l\'Indiana. Lorsque Will Byers disparaît de son domicile, ses amis se lancent dans une recherche semée d’embûches pour le retrouver. Dans leur quête de réponses, les garçons rencontrent une étrange jeune fille en fuite. Les garçons se lient d\'amitié avec la demoiselle tatouée du chiffre \"11\" sur son poignet et au crâne rasé et découvrent petit à petit les détails sur son inquiétante situation. Elle est peut-être la clé de tous les mystères qui se cachent dans cette petite ville en apparence tranquille…'),
(10, 6, 'Test', 2122, '2121', 4, '5d2845324add4.jpeg', 'Six ans après l\'apparition d\'un virus mortel ayant éliminé plus de la moitié de la population, un frère et une sœur partent à la recherche d\'un abri dans un monde devenu périlleux.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

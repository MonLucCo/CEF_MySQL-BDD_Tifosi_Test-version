-- =========================================================================
--  🔐 Sauvegarde SQL complète — Projet Tifosi v1.0
--  📅 Date de génération : 2025-06-29
--  👤 Utilisateur : tifosi (dump local avec privilèges limités)
--  💾 Commande utilisée :
--     mysqldump --no-tablespaces -u tifosi -p tifosi > backup_tifosi.sql
-- =========================================================================

-- MariaDB dump 10.19  Distrib 10.10.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tifosi
-- ------------------------------------------------------
-- Server version	8.4.5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `boissons`
--

DROP TABLE IF EXISTS `boissons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `boissons` (
    `id_boisson` int NOT NULL AUTO_INCREMENT,
    `nom_boisson` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    `marque_id` int DEFAULT NULL,
    PRIMARY KEY (`id_boisson`),
    KEY `marque_id` (`marque_id`),
    CONSTRAINT `boissons_ibfk_1` FOREIGN KEY (`marque_id`) REFERENCES `marques` (`id_marque`) ON DELETE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `boissons`
--

LOCK TABLES `boissons` WRITE;
/*!40000 ALTER TABLE `boissons` DISABLE KEYS */
;
INSERT INTO
    `boissons`
VALUES (1, 'Coca-cola zéro', 1),
    (2, 'Coca-cola original', 1),
    (3, 'Fanta citron', 1),
    (4, 'Fanta orange', 1),
    (5, 'Capri-sun', 1),
    (6, 'Pepsi', 4),
    (7, 'Pepsi Max Zéro', 4),
    (8, 'Lipton zéro citron', 4),
    (9, 'Lipton Peach', 4),
    (
        10,
        'Monster energy ultra gold',
        3
    ),
    (
        11,
        'Monster energy ultra blue',
        3
    ),
    (12, 'Eau de source ', 2);
/*!40000 ALTER TABLE `boissons` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `boissons_menus`
--

DROP TABLE IF EXISTS `boissons_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `boissons_menus` (
    `id_boisson_menu` int NOT NULL AUTO_INCREMENT,
    `boisson_id` int NOT NULL,
    `menu_id` int NOT NULL,
    PRIMARY KEY (`id_boisson_menu`),
    KEY `boisson_id` (`boisson_id`),
    KEY `menu_id` (`menu_id`),
    CONSTRAINT `boissons_menus_ibfk_1` FOREIGN KEY (`boisson_id`) REFERENCES `boissons` (`id_boisson`),
    CONSTRAINT `boissons_menus_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id_menu`)
) ENGINE = InnoDB AUTO_INCREMENT = 32 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `boissons_menus`
--

LOCK TABLES `boissons_menus` WRITE;
/*!40000 ALTER TABLE `boissons_menus` DISABLE KEYS */
;
INSERT INTO
    `boissons_menus`
VALUES (1, 2, 5),
    (2, 3, 5),
    (3, 2, 5),
    (4, 4, 2),
    (5, 1, 2),
    (6, 2, 1),
    (7, 2, 2),
    (8, 2, 2),
    (9, 2, 7),
    (10, 2, 1),
    (11, 2, 3),
    (12, 2, 3),
    (13, 2, 3),
    (14, 2, 3),
    (15, 2, 2),
    (16, 2, 2);
/*!40000 ALTER TABLE `boissons_menus` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `clients` (
    `id_client` int NOT NULL AUTO_INCREMENT,
    `nom_client` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    `age` int DEFAULT NULL,
    `cp_client` int DEFAULT NULL,
    PRIMARY KEY (`id_client`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */
;
INSERT INTO
    `clients`
VALUES (1, 'Armand CAMUS', 55, 78110),
    (2, 'Lucia BELLINI', 40, 92130),
    (3, 'Nour KHADIJA', 32, 92130),
    (
        4,
        'Andréa MANCINI',
        24,
        78230
    ),
    (
        5,
        'Olivier FELTRE',
        59,
        75016
    );
/*!40000 ALTER TABLE `clients` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `clients_focaccias_jours`
--

DROP TABLE IF EXISTS `clients_focaccias_jours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `clients_focaccias_jours` (
    `client_id` int NOT NULL,
    `focaccia_id` int NOT NULL,
    `jour_id` int NOT NULL,
    PRIMARY KEY (
        `client_id`,
        `focaccia_id`,
        `jour_id`
    ),
    KEY `focaccia_id` (`focaccia_id`),
    KEY `jour_id` (`jour_id`),
    CONSTRAINT `clients_focaccias_jours_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id_client`),
    CONSTRAINT `clients_focaccias_jours_ibfk_2` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccias` (`id_focaccia`),
    CONSTRAINT `clients_focaccias_jours_ibfk_3` FOREIGN KEY (`jour_id`) REFERENCES `jours` (`id_jour`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `clients_focaccias_jours`
--

LOCK TABLES `clients_focaccias_jours` WRITE;
/*!40000 ALTER TABLE `clients_focaccias_jours` DISABLE KEYS */
;
INSERT INTO
    `clients_focaccias_jours`
VALUES (1, 1, 3),
    (2, 1, 3),
    (5, 2, 6),
    (2, 3, 1),
    (2, 3, 5),
    (2, 4, 5),
    (3, 5, 5),
    (2, 6, 3),
    (1, 7, 2),
    (3, 7, 5),
    (5, 7, 6),
    (1, 8, 2),
    (2, 8, 5);
/*!40000 ALTER TABLE `clients_focaccias_jours` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `clients_jours_menus`
--

DROP TABLE IF EXISTS `clients_jours_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `clients_jours_menus` (
    `client_id` int NOT NULL,
    `jour_id` int NOT NULL,
    `menu_id` int NOT NULL,
    PRIMARY KEY (
        `client_id`,
        `jour_id`,
        `menu_id`
    ),
    KEY `jour_id` (`jour_id`),
    KEY `menu_id` (`menu_id`),
    CONSTRAINT `clients_jours_menus_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id_client`),
    CONSTRAINT `clients_jours_menus_ibfk_2` FOREIGN KEY (`jour_id`) REFERENCES `jours` (`id_jour`),
    CONSTRAINT `clients_jours_menus_ibfk_3` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id_menu`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `clients_jours_menus`
--

LOCK TABLES `clients_jours_menus` WRITE;
/*!40000 ALTER TABLE `clients_jours_menus` DISABLE KEYS */
;
INSERT INTO
    `clients_jours_menus`
VALUES (2, 1, 5),
    (1, 2, 2),
    (1, 3, 1),
    (2, 3, 2),
    (2, 5, 1),
    (2, 5, 3),
    (3, 5, 7),
    (5, 6, 2);
/*!40000 ALTER TABLE `clients_jours_menus` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `focaccias`
--

DROP TABLE IF EXISTS `focaccias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `focaccias` (
    `id_focaccia` int NOT NULL AUTO_INCREMENT,
    `nom_focaccia` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    `prix_focaccia` decimal(5, 2) NOT NULL,
    PRIMARY KEY (`id_focaccia`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `focaccias`
--

LOCK TABLES `focaccias` WRITE;
/*!40000 ALTER TABLE `focaccias` DISABLE KEYS */
;
INSERT INTO
    `focaccias`
VALUES (1, 'Mozaccia', 9.80),
    (2, 'Gorgonzollaccia', 10.80),
    (3, 'Raclaccia', 8.90),
    (4, 'Emmentalaccia', 9.80),
    (5, 'Tradizione', 8.90),
    (6, 'Hawaienne', 11.20),
    (7, 'Américaine', 10.80),
    (8, 'Paysanne', 12.80);
/*!40000 ALTER TABLE `focaccias` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `focaccias_ingredients`
--

DROP TABLE IF EXISTS `focaccias_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `focaccias_ingredients` (
    `focaccia_id` int NOT NULL,
    `ingredient_id` int NOT NULL,
    PRIMARY KEY (
        `focaccia_id`,
        `ingredient_id`
    ),
    KEY `ingredient_id` (`ingredient_id`),
    CONSTRAINT `focaccias_ingredients_ibfk_1` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccias` (`id_focaccia`),
    CONSTRAINT `focaccias_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id_ingredient`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `focaccias_ingredients`
--

LOCK TABLES `focaccias_ingredients` WRITE;
/*!40000 ALTER TABLE `focaccias_ingredients` DISABLE KEYS */
;
INSERT INTO
    `focaccias_ingredients`
VALUES (1, 1),
    (2, 1),
    (3, 1),
    (8, 1),
    (6, 2),
    (1, 3),
    (8, 3),
    (6, 4),
    (7, 4),
    (4, 5),
    (8, 5),
    (1, 6),
    (2, 6),
    (3, 6),
    (5, 6),
    (6, 6),
    (7, 6),
    (1, 7),
    (2, 7),
    (3, 7),
    (4, 7),
    (5, 7),
    (8, 7),
    (8, 8),
    (1, 9),
    (2, 9),
    (3, 9),
    (4, 9),
    (5, 9),
    (6, 9),
    (7, 9),
    (8, 9),
    (4, 10),
    (2, 11),
    (5, 12),
    (1, 13),
    (8, 13),
    (1, 14),
    (5, 14),
    (6, 14),
    (7, 14),
    (8, 15),
    (4, 16),
    (1, 17),
    (2, 17),
    (5, 17),
    (6, 17),
    (7, 17),
    (8, 17),
    (5, 18),
    (1, 19),
    (2, 19),
    (3, 19),
    (4, 19),
    (5, 19),
    (6, 19),
    (7, 19),
    (8, 19),
    (6, 20),
    (1, 21),
    (2, 21),
    (3, 21),
    (4, 21),
    (5, 21),
    (6, 21),
    (7, 21),
    (8, 21),
    (7, 22),
    (8, 22),
    (3, 23);
/*!40000 ALTER TABLE `focaccias_ingredients` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `focaccias_menus`
--

DROP TABLE IF EXISTS `focaccias_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `focaccias_menus` (
    `id_focaccia_menu` int NOT NULL AUTO_INCREMENT,
    `focaccia_id` int NOT NULL,
    `menu_id` int NOT NULL,
    PRIMARY KEY (`id_focaccia_menu`),
    KEY `focaccia_id` (`focaccia_id`),
    KEY `menu_id` (`menu_id`),
    CONSTRAINT `focaccias_menus_ibfk_1` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccias` (`id_focaccia`),
    CONSTRAINT `focaccias_menus_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id_menu`)
) ENGINE = InnoDB AUTO_INCREMENT = 32 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `focaccias_menus`
--

LOCK TABLES `focaccias_menus` WRITE;
/*!40000 ALTER TABLE `focaccias_menus` DISABLE KEYS */
;
INSERT INTO
    `focaccias_menus`
VALUES (1, 3, 5),
    (2, 3, 5),
    (3, 7, 2),
    (4, 8, 2),
    (5, 1, 1),
    (6, 1, 2),
    (7, 6, 2),
    (8, 5, 7),
    (9, 7, 7),
    (10, 4, 1),
    (11, 3, 3),
    (12, 8, 3),
    (13, 6, 3),
    (14, 2, 3),
    (15, 7, 2),
    (16, 2, 2);
/*!40000 ALTER TABLE `focaccias_menus` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `ingredients` (
    `id_ingredient` int NOT NULL AUTO_INCREMENT,
    `nom_ingredient` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id_ingredient`)
) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */
;
INSERT INTO
    `ingredients`
VALUES (1, 'Ail\r'),
    (2, 'Ananas\r'),
    (3, 'Artichaut\r'),
    (4, 'Bacon\r'),
    (5, 'Base crème\r'),
    (6, 'Base tomate\r'),
    (7, 'Champignon\r'),
    (8, 'Chèvre\r'),
    (9, 'Cresson\r'),
    (10, 'Emmental\r'),
    (11, 'Gorgonzola\r'),
    (12, 'Jambon cuit\r'),
    (13, 'Jambon fumé\r'),
    (14, 'Mozarella\r'),
    (15, 'Oeuf\r'),
    (16, 'Oignon\r'),
    (17, 'Olive noire\r'),
    (18, 'Olive verte\r'),
    (19, 'Parmesan\r'),
    (20, 'Piment\r'),
    (21, 'Poivre\r'),
    (22, 'Pomme de terre\r'),
    (23, 'Raclette\r'),
    (24, 'Salami\r'),
    (25, 'Tomate cerise\r');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `jours`
--

DROP TABLE IF EXISTS `jours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `jours` (
    `id_jour` int NOT NULL AUTO_INCREMENT,
    `date_jour` date NOT NULL,
    PRIMARY KEY (`id_jour`),
    UNIQUE KEY `date_jour` (`date_jour`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `jours`
--

LOCK TABLES `jours` WRITE;
/*!40000 ALTER TABLE `jours` DISABLE KEYS */
;
INSERT INTO
    `jours`
VALUES (1, '2025-06-01'),
    (2, '2025-06-02'),
    (3, '2025-06-03'),
    (4, '2025-06-04'),
    (5, '2025-06-05'),
    (6, '2025-06-06');
/*!40000 ALTER TABLE `jours` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `marques` (
    `id_marque` int NOT NULL AUTO_INCREMENT,
    `nom_marque` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id_marque`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */
;
INSERT INTO
    `marques`
VALUES (1, 'Coca-cola\r'),
    (2, 'Cristalline\r'),
    (3, 'Monster\r'),
    (4, 'Pepsico\r');
/*!40000 ALTER TABLE `marques` ENABLE KEYS */
;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `menus` (
    `id_menu` int NOT NULL AUTO_INCREMENT,
    `nom_menu` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
    `prix_menu` decimal(5, 2) NOT NULL,
    PRIMARY KEY (`id_menu`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */
;
INSERT INTO
    `menus`
VALUES (
        1,
        'Solo : 1 focaccia + 1 boisson',
        13.00
    ),
    (
        2,
        'Duo : 2 focaccias + 2 boissons',
        24.00
    ),
    (
        3,
        'Famille : 4 focaccias + 4 boissons',
        42.00
    ),
    (
        4,
        'Solo Soif : 1 focaccia + 2 boissons',
        18.00
    ),
    (
        5,
        'Duo Soif : 2 focaccias + 3 boissons',
        28.00
    ),
    (
        6,
        'Famille Soif : 4 focaccias + 5 boissons',
        45.00
    ),
    (
        7,
        'Solo Faim : 2 focaccias + 1 boisson',
        21.00
    ),
    (
        8,
        'Duo Faim : 4 focaccias + 2 boissons',
        41.00
    ),
    (
        9,
        'Famille Faim : 6 focaccias + 4 boissons',
        55.00
    ),
    (
        10,
        'Soirée : 10 focaccias + 10 boissons',
        90.00
    );
/*!40000 ALTER TABLE `menus` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2025-06-29  8:51:27
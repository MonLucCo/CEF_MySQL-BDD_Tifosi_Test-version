-- 🧱 Script create_tifosi.sql — Version MPD v0.3
-- Auteur : PerLucCo
-- Date : 2025-06-29

-- ⚠️ Réinitialisation de la base et de l'utilisateur
DROP DATABASE IF EXISTS tifosi;

DROP USER IF EXISTS 'tifosi' @'localhost';

-- 🔧 Création de la base
CREATE DATABASE tifosi DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 🆕 Création de l’utilisateur avec mot de passe sécurisé
CREATE USER 'tifosi' @'localhost' IDENTIFIED BY 'TifosiPwd_24';

-- 🎓 Attribution complète des droits sur la base tifosi
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi' @'localhost';

-- 🔄 Application immédiate des privilèges
FLUSH PRIVILEGES;

-- 🔧 Pour permettre les téléchargements le temps de la session du serveur
SET GLOBAL local_infile = 1;

-- =========================================
-- Structure de la base
-- =========================================
USE tifosi;

-- =====================
-- Table : clients
-- =====================cd
CREATE TABLE clients (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(45) NOT NULL,
    age INT,
    cp_client INT
) ENGINE = InnoDB;

-- =====================
-- Table : jours
-- =====================
CREATE TABLE jours (
    id_jour INT AUTO_INCREMENT PRIMARY KEY,
    date_jour DATE NOT NULL UNIQUE
) ENGINE = InnoDB;

-- =====================
-- Table : focaccias
-- =====================
CREATE TABLE focaccias (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(45) NOT NULL,
    prix_focaccia DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

-- =====================
-- Table : menus
-- =====================
CREATE TABLE menus (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom_menu VARCHAR(45) NOT NULL,
    prix_menu DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

-- ================================
-- Table : focaccias_menus
-- Relation associative binaire
-- ================================
CREATE TABLE focaccias_menus (
    id_focaccia_menu INT AUTO_INCREMENT PRIMARY KEY,
    focaccia_id INT NOT NULL,
    menu_id INT NOT NULL,
    FOREIGN KEY (focaccia_id) REFERENCES focaccias (id_focaccia),
    FOREIGN KEY (menu_id) REFERENCES menus (id_menu)
) ENGINE = InnoDB;

-- ================================
-- Table : clients_jours_menus
-- Relation ternaire
-- ================================
CREATE TABLE clients_jours_menus (
    client_id INT,
    jour_id INT,
    menu_id INT,
    PRIMARY KEY (client_id, jour_id, menu_id),
    FOREIGN KEY (client_id) REFERENCES clients (id_client),
    FOREIGN KEY (jour_id) REFERENCES jours (id_jour),
    FOREIGN KEY (menu_id) REFERENCES menus (id_menu)
) ENGINE = InnoDB;

-- =====================================
-- Table : clients_focaccias_jours
-- Relation ternaire
-- =====================================
CREATE TABLE clients_focaccias_jours (
    client_id INT,
    focaccia_id INT,
    jour_id INT,
    PRIMARY KEY (
        client_id,
        focaccia_id,
        jour_id
    ),
    FOREIGN KEY (client_id) REFERENCES clients (id_client),
    FOREIGN KEY (focaccia_id) REFERENCES focaccias (id_focaccia),
    FOREIGN KEY (jour_id) REFERENCES jours (id_jour)
) ENGINE = InnoDB;

-- =====================
-- Table : ingredients
-- =====================
CREATE TABLE ingredients (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

-- ================================
-- Table : focaccias_ingredients
-- Relation associative binaire
-- ================================
CREATE TABLE focaccias_ingredients (
    focaccia_id INT,
    ingredient_id INT,
    PRIMARY KEY (focaccia_id, ingredient_id),
    FOREIGN KEY (focaccia_id) REFERENCES focaccias (id_focaccia),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients (id_ingredient)
) ENGINE = InnoDB;

-- =====================
-- Table : marques
-- =====================
CREATE TABLE marques (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

-- =====================
-- Table : boissons
-- =====================
CREATE TABLE boissons (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(45) NOT NULL,
    marque_id INT,
    FOREIGN KEY (marque_id) REFERENCES marques (id_marque) ON DELETE SET NULL
) ENGINE = InnoDB;

-- ================================
-- Table : boissons_menus
-- Relation associative binaire
-- ================================
CREATE TABLE boissons_menus (
    id_boisson_menu INT AUTO_INCREMENT PRIMARY KEY,
    boisson_id INT NOT NULL,
    menu_id INT NOT NULL,
    FOREIGN KEY (boisson_id) REFERENCES boissons (id_boisson),
    FOREIGN KEY (menu_id) REFERENCES menus (id_menu)
) ENGINE = InnoDB;
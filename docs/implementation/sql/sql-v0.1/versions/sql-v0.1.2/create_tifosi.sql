-- 🧱 Script create_tifosi.sql — Version MPD v0.1.1
-- Auteur : PerLucCo
-- Date : 2025-06-24

-- ⚠️ Réinitialisation de la base (supprime toutes les données existantes)
DROP DATABASE IF EXISTS tifosi_v011;

-- 🔧 Création de la base
CREATE DATABASE tifosi_v011 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE tifosi_v011;

-- =====================
-- Table : clients
-- =====================
CREATE TABLE clients (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(45) NOT NULL,
    age INT
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
    prix_menu DECIMAL(5, 2) NOT NULL,
    focaccia_id INT,
    FOREIGN KEY (focaccia_id) REFERENCES focaccias (id_focaccia) ON DELETE SET NULL
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
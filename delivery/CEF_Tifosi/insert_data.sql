-- 🧪 insert_data.sql — Chargement partiel (marques, ingredients)
-- Version : MPD v0.3
-- Auteur : PerLucCo
-- Date : 2025-06-29
-- Source du script : /docs/implementation/sql/sql-v0.2/versions/sql-v0.2.1
-- Source des données : fichiers .csv exportés depuis /docs/implementation/sql/sql-v0.2/versions/sql-v0.2.1/datas-csv/
-- Utilisateur : tifosi

USE tifosi;

-- ========================
-- Chargement de la table MARQUES
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/marques.csv' INTO
TABLE marques FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table INGREDIENTS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/ingredients.csv' INTO
TABLE ingredients FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table FOCACCIAS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/focaccias.csv' INTO
TABLE focaccias FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table BOISSON
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/boissons.csv' INTO
TABLE boissons FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table liaison binaire FOCACCIAS_INGREDIENTS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/focaccias_ingredients.csv' INTO
TABLE focaccias_ingredients FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table MENUS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/menus.csv' INTO
TABLE menus FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table liaison binaire FOCACCIAS_MENUS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/focaccias_menus.csv' INTO
TABLE focaccias_menus FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table liaison binaire BOISSONS_MENUS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/boissons_menus.csv' INTO
TABLE boissons_menus FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table CLIENTS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/clients.csv' INTO
TABLE clients FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table JOURS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/jours.csv' INTO
TABLE jours FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la relation ternaire CLIENTS_JOURS_MENUS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/clients_jours_menus.csv' INTO
TABLE clients_jours_menus FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la relation ternaire CLIENTS_FOCACCIAS_JOURS
-- ========================
LOAD DATA LOCAL INFILE './datas-csv/clients_focaccias_jours.csv' INTO
TABLE clients_focaccias_jours FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;
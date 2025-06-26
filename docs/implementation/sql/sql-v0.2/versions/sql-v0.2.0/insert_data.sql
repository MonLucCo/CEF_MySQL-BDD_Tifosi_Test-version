-- 🧪 insert_data.sql — Chargement partiel (marques, ingredients)
-- Version : v0.2.0
-- Auteur : PerLucCo
-- Date : 2025-06-26
-- Source du script : /docs/implementation/sql/sql-v0.2/versions/sql-v0.2.0
-- Source des données : fichiers .csv exportés depuis /docs/implementation/sql/sql-v0.2/versions/sql-v0.2.0/datas-csv/
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
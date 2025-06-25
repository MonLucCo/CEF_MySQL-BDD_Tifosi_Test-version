-- 🧪 insert_data.sql — Chargement partiel (marques, ingredients)
-- Version : v0.2
-- Auteur : PerLucCo
-- Date : 2025-06-25
-- Source : fichiers .csv exportés depuis /docs/datas-csv/
-- Utilisateur : tifosi

USE tifosi;

-- ========================
-- Chargement de la table MARQUES
-- ========================
LOAD DATA LOCAL INFILE '../../../sources/datas-csv/marques.csv' INTO
TABLE marques FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- ========================
-- Chargement de la table INGREDIENTS
-- ========================
LOAD DATA LOCAL INFILE '../../../sources/datas-csv/ingredients.csv' INTO
TABLE ingredients FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES;
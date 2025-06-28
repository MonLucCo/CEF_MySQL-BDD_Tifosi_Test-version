-- 🧪 queries-test_v021.sql — Tests de validation de la base tifosi
-- Version : v0.2.1
-- Auteur : PerLucCo
-- Date : 2025-06-27

USE tifosi;

-- =====================================
-- 🔍 Vérification des insertions brutes
-- =====================================

SELECT COUNT(*) AS nb_marques FROM marques;

SELECT COUNT(*) AS nb_ingredients FROM ingredients;

SELECT COUNT(*) AS nb_boissons FROM boissons;

SELECT COUNT(*) AS nb_focaccias FROM focaccias;

SELECT COUNT(*) AS nb_focaccias_ingredients
FROM focaccias_ingredients;

SELECT COUNT(*) AS nb_menus FROM menus;

SELECT COUNT(*) AS nb_boissons_menus FROM boissons_menus;

SELECT COUNT(*) AS nb_focaccias_menus FROM focaccias_menus;

SELECT COUNT(*) AS nb_clients FROM clients;

SELECT COUNT(*) AS nb_jours FROM jours;

SELECT COUNT(*) AS nb_clients_jours_menus FROM clients_jours_menus;

SELECT COUNT(*) AS nb_clients_focaccias_jours
FROM clients_focaccias_jours;

-- ==========================================
-- 🔗 Vérifications relationnelles (N:N, 1:N)
-- ==========================================

-- 🍕 Ingrédients d’une focaccia
SELECT f.nom_focaccia, i.nom_ingredient
FROM
    focaccias f
    JOIN focaccias_ingredients fi ON f.id_focaccia = fi.focaccia_id
    JOIN ingredients i ON fi.ingredient_id = i.id_ingredient
ORDER BY f.nom_focaccia, i.nom_ingredient;

-- 🧃 Boissons présentes dans les menus
SELECT m.nom_menu, b.nom_boisson
FROM
    menus m
    JOIN boissons_menus bm ON m.id_menu = bm.menu_id
    JOIN boissons b ON bm.boisson_id = b.id_boisson
ORDER BY m.nom_menu;

-- 🍽️ Focaccias proposées dans les menus
SELECT m.nom_menu, f.nom_focaccia
FROM
    menus m
    JOIN focaccias_menus fm ON m.id_menu = fm.menu_id
    JOIN focaccias f ON fm.focaccia_id = f.id_focaccia
ORDER BY m.nom_menu, f.nom_focaccia;

-- ==============================
-- 🔺 Relations ternaires datées
-- ==============================

-- 🧾 Menus payés par un client un jour donné
SELECT c.nom_client, j.date_jour, m.nom_menu
FROM
    clients_jours_menus cjm
    JOIN clients c ON cjm.client_id = c.id_client
    JOIN jours j ON cjm.jour_id = j.id_jour
    JOIN menus m ON cjm.menu_id = m.id_menu
ORDER BY c.nom_client, j.date_jour;

-- 🍕 Focaccias achetées par un client un jour donné
SELECT c.nom_client, j.date_jour, f.nom_focaccia
FROM
    clients_focaccias_jours cfj
    JOIN clients c ON cfj.client_id = c.id_client
    JOIN jours j ON cfj.jour_id = j.id_jour
    JOIN focaccias f ON cfj.focaccia_id = f.id_focaccia
ORDER BY c.nom_client, j.date_jour;

-- ========================
-- 🔐 Test des droits (facultatif)
-- ========================
-- Exécution attendue uniquement en tant qu’utilisateur 'tifosi'

SHOW GRANTS FOR CURRENT_USER;

-- Vérifie que l’utilisateur ne peut accéder qu’à la base `tifosi`
SHOW DATABASES;
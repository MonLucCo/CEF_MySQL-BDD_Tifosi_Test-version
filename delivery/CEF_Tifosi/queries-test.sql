-- 🧪 queries-test.sql — Tests de validation de la base tifosi
-- Version : MPD v0.3 — Issue #8
-- Auteur : PerLucCo
-- Objectif : Reproduction des tableaux du fichier DATAS-TESTING.md

USE tifosi;

-- 🔧 Pour éviter les chaînes tronquées
SET SESSION group_concat_max_len = 100000;

-- ===========================
-- 🧾 Diagnostic rapide : dates de la table jours
-- ===========================

SELECT id_jour, date_jour FROM jours ORDER BY id_jour;

-- ===========================
-- 🧍 Clients
-- ===========================

SELECT
    id_client,
    nom_client,
    age,
    cp_client
FROM clients
ORDER BY id_client;

-- ===========================
-- 🏷️ Marques
-- ===========================

SELECT id_marque, nom_marque FROM marques ORDER BY id_marque;

-- ===========================
-- 🧃 Boissons (avec marque)
-- ===========================

SELECT b.id_boisson, b.nom_boisson, m.nom_marque AS marque_associée
FROM boissons b
    LEFT JOIN marques m ON b.marque_id = m.id_marque
ORDER BY b.id_boisson;

-- ===========================
-- 🥗 Ingrédients disponibles
-- ===========================

SELECT id_ingredient, nom_ingredient
FROM ingredients
ORDER BY id_ingredient;

-- ===========================
-- 🍕 Composition des focaccias (nettoyée)
-- ===========================

SELECT f.id_focaccia, f.nom_focaccia, f.prix_focaccia, GROUP_CONCAT(
        REPLACE (
                REPLACE (
                        TRIM(i.nom_ingredient), CHAR(13), ''
                    ), CHAR(10), ''
            )
        ORDER BY i.nom_ingredient SEPARATOR ', '
    ) AS ingredients
FROM
    focaccias f
    JOIN focaccias_ingredients fi ON f.id_focaccia = fi.focaccia_id
    JOIN ingredients i ON fi.ingredient_id = i.id_ingredient
GROUP BY
    f.id_focaccia,
    f.nom_focaccia,
    f.prix_focaccia
ORDER BY f.id_focaccia;

-- ===========================
-- 🍽️ Menus disponibles
-- ===========================

SELECT id_menu, nom_menu, prix_menu FROM menus ORDER BY id_menu;

-- ===========================
-- 🧩 Menus ↔ focaccias
-- ===========================

SELECT m.id_menu, m.nom_menu, GROUP_CONCAT(
        DISTINCT f.nom_focaccia
        ORDER BY f.nom_focaccia SEPARATOR ', '
    ) AS focaccias
FROM
    menus m
    JOIN focaccias_menus fm ON m.id_menu = fm.menu_id
    JOIN focaccias f ON fm.focaccia_id = f.id_focaccia
GROUP BY
    m.id_menu
ORDER BY m.id_menu;

-- ===========================
-- 🧩 Menus ↔ boissons
-- ===========================

SELECT m.id_menu, m.nom_menu, GROUP_CONCAT(
        DISTINCT b.nom_boisson
        ORDER BY b.nom_boisson SEPARATOR ', '
    ) AS boissons
FROM
    menus m
    JOIN boissons_menus bm ON m.id_menu = bm.menu_id
    JOIN boissons b ON bm.boisson_id = b.id_boisson
GROUP BY
    m.id_menu
ORDER BY m.id_menu;

-- ===========================
-- 🧩 Menus ↔ focaccias & boissons
-- ===========================

SELECT m.id_menu, m.nom_menu, GROUP_CONCAT(
        DISTINCT f.nom_focaccia
        ORDER BY f.nom_focaccia SEPARATOR ', '
    ) AS focaccias, GROUP_CONCAT(
        DISTINCT b.nom_boisson
        ORDER BY b.nom_boisson SEPARATOR ', '
    ) AS boissons
FROM
    menus m
    LEFT JOIN focaccias_menus fm ON m.id_menu = fm.menu_id
    LEFT JOIN focaccias f ON fm.focaccia_id = f.id_focaccia
    LEFT JOIN boissons_menus bm ON m.id_menu = bm.menu_id
    LEFT JOIN boissons b ON bm.boisson_id = b.id_boisson
GROUP BY
    m.id_menu,
    m.nom_menu
ORDER BY m.id_menu;

-- ===========================
-- 📅 Jours (format JJ/MM/AAAA, sans fallback)
-- ===========================

SELECT id_jour, DATE_FORMAT(date_jour, '%d/%m/%Y') AS date_jour
FROM jours
ORDER BY id_jour;

-- ===========================
-- 📆 Activités des menus (client + jour + menu + composition)
-- ===========================

SELECT
    DATE_FORMAT(j.date_jour, '%d/%m/%Y') AS jour,
    c.nom_client AS client,
    m.nom_menu AS menu,
    m.prix_menu AS prix,
    CONCAT(
        '{ focaccias (',
        GROUP_CONCAT(
            DISTINCT f.nom_focaccia
            ORDER BY f.nom_focaccia SEPARATOR ', '
        ),
        ') & boissons (',
        GROUP_CONCAT(
            DISTINCT b.nom_boisson
            ORDER BY b.nom_boisson SEPARATOR ', '
        ),
        ') }'
    ) AS `composition paiement menus`
FROM
    clients_jours_menus cjm
    JOIN clients c ON cjm.client_id = c.id_client
    JOIN jours j ON cjm.jour_id = j.id_jour
    JOIN menus m ON cjm.menu_id = m.id_menu
    LEFT JOIN clients_focaccias_jours cfj ON cjm.client_id = cfj.client_id
    AND cjm.jour_id = cfj.jour_id
    LEFT JOIN focaccias f ON cfj.focaccia_id = f.id_focaccia
    LEFT JOIN boissons_menus bm ON m.id_menu = bm.menu_id
    LEFT JOIN boissons b ON bm.boisson_id = b.id_boisson
GROUP BY
    j.id_jour,
    c.id_client,
    m.id_menu
ORDER BY j.date_jour, c.nom_client;

-- ===========================
-- 🛍️ Activités des focaccias (achat hors menus)
-- ===========================

SELECT
    DATE_FORMAT(j.date_jour, '%d/%m/%Y') AS jour,
    c.nom_client AS client,
    CONCAT(
        '{ ',
        GROUP_CONCAT(
            f.nom_focaccia
            ORDER BY f.nom_focaccia SEPARATOR ', '
        ),
        ' }'
    ) AS `composition achat focaccias`,
    ROUND(SUM(f.prix_focaccia), 2) AS prix
FROM
    clients_focaccias_jours cfj
    JOIN jours j ON cfj.jour_id = j.id_jour
    JOIN clients c ON cfj.client_id = c.id_client
    JOIN focaccias f ON cfj.focaccia_id = f.id_focaccia
GROUP BY
    j.id_jour,
    c.id_client
ORDER BY j.date_jour, c.nom_client;

-- ===========================
-- 📘 Méta-données (synthèse)
-- ===========================

SELECT COUNT(*) AS nb_clients FROM clients;

SELECT COUNT(*) AS nb_menus FROM menus;

SELECT COUNT(*) AS nb_focaccias FROM focaccias;

SELECT COUNT(*) AS nb_boissons FROM boissons;

SELECT COUNT(*) AS nb_jours FROM jours;
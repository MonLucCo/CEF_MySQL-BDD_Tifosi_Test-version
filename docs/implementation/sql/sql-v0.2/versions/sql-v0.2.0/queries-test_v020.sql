-- 🧪 Script queries-test_v020.sql — Version MPD v0.2
-- Auteur : PerLucCo
-- Date : 2025-06-25
-- Objet : Lots de requêtes de test pour valider le fonctionnement de la base de données

USE tifosi;

-- Vérifier les clients
SELECT * FROM clients;

-- Vérifier les menus et leurs focaccias
SELECT m.nom_menu, f.nom_focaccia
FROM menus m
    LEFT JOIN focaccias f ON m.focaccia_id = f.id_focaccia;

-- Vérifier les boissons par menu
SELECT m.nom_menu, b.nom_boisson
FROM
    menus m
    JOIN boissons_menus bm ON m.id_menu = bm.menu_id
    JOIN boissons b ON bm.boisson_id = b.id_boisson;

-- Vérifier les ingrédients d'une focaccia
SELECT f.nom_focaccia, i.nom_ingredient
FROM
    focaccias f
    JOIN focaccias_ingredients fi ON f.id_focaccia = fi.focaccia_id
    JOIN ingredients i ON fi.ingredient_id = i.id_ingredient;

-- Historique des consommations clients (menus)
SELECT c.nom_client, j.date_jour, m.nom_menu
FROM
    clients_jours_menus cjm
    JOIN clients c ON cjm.client_id = c.id_client
    JOIN jours j ON cjm.jour_id = j.id_jour
    JOIN menus m ON cjm.menu_id = m.id_menu;

-- Consommations de focaccias
SELECT c.nom_client, j.date_jour, f.nom_focaccia
FROM
    clients_focaccias_jours cfj
    JOIN clients c ON cfj.client_id = c.id_client
    JOIN jours j ON cfj.jour_id = j.id_jour
    JOIN focaccias f ON cfj.focaccia_id = f.id_focaccia;
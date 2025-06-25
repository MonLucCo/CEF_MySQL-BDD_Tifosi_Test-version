-- 🧪 Script data-test_v013.sql — Version MPD v0.1.3
-- Auteur : PerLucCo
-- Date : 2025-06-25
-- Objet : chargement d'un lot de données de tests

USE tifosi_v013;

-- Insertion marques
INSERT INTO
    marques (nom_marquet)
VALUES ('San Pellegrino'),
    ('Coca-Cola'),
    ('Pago');

-- Insertion boissons
INSERT INTO
    boissons (nom_boisson, marque_id)
VALUES ('Limonata', 1),
    ('Coca Zéro', 2),
    ('Jus d\'abricot', 3);

-- Insertion ingrédients
INSERT INTO
    ingredients (nom_ingredient)
VALUES ('Tomate séchée'),
    ('Mozzarella'),
    ('Roquette');

-- Insertion focaccias
INSERT INTO
    focaccias (nom_focaccia, prix_focaccia)
VALUES ('Classica', 5.50),
    ('Verde', 6.20);

-- Liaison focaccias/ingrédients
INSERT INTO
    focaccias_ingredients
VALUES (1, 1),
    (1, 2),
    (2, 2),
    (2, 3);

-- Insertion menus
INSERT INTO
    menus (
        nom_menu,
        prix_menu,
        focaccia_id
    )
VALUES ('Formule midi', 9.90, 1),
    ('Formule veggie', 10.20, 2);

-- Liaison menus/boissons
INSERT INTO
    boissons_menus
VALUES (1, 1), -- Formule midi + Limonata
    (2, 2);
-- Formule veggie + Coca Zéro

-- Insertion clients
INSERT INTO
    clients (nom_client, age, cp_client)
VALUES ('Alice', 31, 75014),
    ('Bruno', 27, 92100);

-- Insertion jours
INSERT INTO jours (date_jour) VALUES ('2025-06-10'), ('2025-06-11');

-- Consommations clients (menus)
INSERT INTO
    clients_jours_menus
VALUES (1, 1, 1), -- Alice le 10 juin = Formule midi
    (2, 2, 2);
-- Bruno le 11 juin = Formule veggie

-- Consommations clients (focaccias)
INSERT INTO clients_focaccias_jours VALUES (1, 2, 2);
-- Alice a aussi pris une Verde le 11 juin
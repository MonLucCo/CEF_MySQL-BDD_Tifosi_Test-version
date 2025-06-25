-- 🛠️ Initialisation complète de la version v0.1.3 de la base Tifosi
-- Exécute ce script depuis la racine du répertoire `sql-v0.1.3/` dans MySQL Workbench ou autre client

-- Début : création de la base et des tables
SOURCE ./create_tifosi.sql;

-- Ensuite : création de l’utilisateur `tifosi` et attribution des droits
SOURCE ./create_user_tifosi.sql;

-- 📌 Fin de l’initialisation
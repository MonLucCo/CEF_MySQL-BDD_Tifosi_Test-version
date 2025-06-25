-- 🧪 Script test_v013.sql — Version MPD v0.1.3
-- Auteur : PerLucCo
-- Date : 2025-06-26
-- Objet : Chargement et validation des données de test avec l'utilisateur 'tifosi'

-- ⚠️ Ce script doit être exécuté avec l'utilisateur 'tifosi'
-- Commande depuis un terminal :
-- mysql -u tifosi -p < test_v013.sql

-- Chargement des données de test
SOURCE ./data-test_v013.sql;

-- Exécution des requêtes de validation
SOURCE ./queries-test_v013.sql;
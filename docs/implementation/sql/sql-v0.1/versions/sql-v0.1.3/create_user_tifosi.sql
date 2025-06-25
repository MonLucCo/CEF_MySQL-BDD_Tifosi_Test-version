-- 🔐 Script SQL — Création ou recréation de l’utilisateur 'tifosi'
-- Version robuste (réinitialisable)
-- Auteur : PerLucCo
-- Date : 2025-06-25

-- 🧼 Suppression préalable si l’utilisateur existe
DROP USER IF EXISTS 'tifosi' @'localhost';

-- 🆕 Création de l’utilisateur avec mot de passe sécurisé
CREATE USER 'tifosi' @'localhost' IDENTIFIED BY 'TifosiPwd_24';

-- 🎓 Attribution complète des droits sur la base tifosi_v011
GRANT ALL PRIVILEGES ON tifosi_v013.* TO 'tifosi' @'localhost';

-- 🔄 Application immédiate des privilèges
FLUSH PRIVILEGES;
-- 🔐 Script SQL — Création de l’utilisateur ‘tifosi’

CREATE USER 'tifosi' @'localhost' IDENTIFIED BY 'TifosiPwd_24';

GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi' @'localhost';

REVOKE GRANT OPTION ON tifosi.* FROM 'tifosi' @'localhost';

FLUSH PRIVILEGES;
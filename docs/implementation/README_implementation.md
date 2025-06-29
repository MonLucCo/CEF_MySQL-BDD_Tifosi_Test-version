# 🧾 Implémentation du projet (Tifosi)

Ce dossier centralise l’ensemble des livrables techniques du projet :  
modélisation relationnelle, schémas d’évolution, scripts SQL.

---

## 🧩 Versions de référence

| Niveau                   | Version stable | Document de référence |
|--------------------------|----------------|------------------------|
| **MCD** (_conceptuel_)   | v2.1           | [`MCD_tifosi.md`](./mcd/MCD_tifosi.md) |
| **MRLD** (_relationnel logique_) | v2.0 | [`MRLD_tifosi.md`](./mrld-versions/MRLD_tifosi.md) |
| **MPD** (_physique — structure sans données_) | v0.1.3 | [`MPD-v0.1.3_tifosi.md`](./sql/sql-v0.1/versions/sql-v0.1.3/MPD-v0.1.3_tifosi.md) |
| **SQL** (_structure + insertions + tests_) | v0.3 | [`README_sql-v0.3.md`](./sql/sql-v0.3/README_sql-v0.3.md) |

🔗 Accès direct au dossier sur GitHub :  
[`docs/implementation/sql/sql-v0.3/`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/tree/main/docs/implementation/sql/sql-v0.3)

---

## 🧱 Modèle Conceptuel (MCD)

- [`HISTORIQUE_mcd_tifosi.md`](./mcd/HISTORIQUE_mcd_tifosi.md) — Traçabilité complète des étapes de modélisation
- [`MCD_tifosi.md`](./mcd/MCD_tifosi.md) — Fichier central des versions
- [`schemas/`](./mcd/schemas/) — Schémas visuels `.drawio.png` pour chaque version

---

## 🧾 Modèle Relationnel Logique de Données (MRLD)

- [`HISTORIQUE_mld_tifosi.md`](./mrld-versions/HISTORIQUE_mld_tifosi.md) — Historique technique du MRLD
- [`MRLD_tifosi.md`](./mrld-versions/MRLD_tifosi.md) — Document de référence des versions logiques
- [`schemas/`](./schemas/) — Schémas `.drawio.png` du MRLD

---

## 🧩 Modèle Physique (MPD)

- [`MPD_v0.1.3_tifosi.md`](./sql/sql-v0.1/versions/sql-v0.1.3/MPD-v0.1.3_tifosi.md) — Description de la structure finale MPD (`v0.1.3`)
- [`MPD_tifosi.sql`](./MPD_tifosi.sql) — Script SQL généré depuis le MRLD v1

---

## 🧪 SQL — Scripts, sauvegardes et jeux de test

- [`sql/sql-v0.3/`](./sql/sql-v0.3/) — Dernière version complète de la base Tifosi (`v0.3`) :
  - `create_tifosi.sql` : création des tables et clés
  - `insert_data.sql` : insertion des données complètes issues des fichiers `.csv`
  - `backup_tifosi.sql` : sauvegarde MySQL (`mysqldump`) de la base validée
  - `queries_test_v03.sql` : requêtes de validation métier
  - `result-test-queries_v03-initial.txt` : résultats avant sauvegarde
  - `result-test-queries_v03-postRestoreBackup.txt` : résultats après restauration
  - [`README_sql-v0.3.md`](./sql/sql-v0.3/README_sql-v0.3.md) : description technique de la version livrée
  - [`README_test-v0.3.md`](./sql/sql-v0.3/README_test-v0.3.md) : documentation des requêtes métier et validations
  - [`README_backup.md`](./sql/sql-v0.3/README_backup.md) : procédure de sauvegarde/restauration

- [`sql/`](./sql/) — Racine des scripts et historiques :
  - [`README_sql.md`](./sql/README_sql.md) : récapitulatif des versions SQL livrées
  - [`HISTORIQUE_sql.md`](./sql/HISTORIQUE_sql.md) : suivi de l’évolution technique de la base

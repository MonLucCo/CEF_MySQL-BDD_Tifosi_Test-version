# 🗄️ README_sql-v0.3 — Livraison structurelle finale de la base Tifosi

Version SQL stable et exploitable du modèle physique `tifosi_v03`, dérivée de `MPDv0.2.1` final corrigé (issue #6.1).  
Cette version constitue la **base livrable du projet Tifosi**, complète, testée, et documentée.

---

- [🗄️ README\_sql-v0.3 — Livraison structurelle finale de la base Tifosi](#️-readme_sql-v03--livraison-structurelle-finale-de-la-base-tifosi)
  - [🎯 Objectif](#-objectif)
  - [📁 Contenu du dossier `/sql/sql-v0.3/`](#-contenu-du-dossier-sqlsql-v03)
  - [🛠️ Informations techniques](#️-informations-techniques)
  - [✅ Validation](#-validation)
  - [🧭 Historique](#-historique)

---

## 🎯 Objectif

Livrer une version consolidée et validée de la base Tifosi, incluant tous les scripts, données et documents nécessaires à une exploitation pédagogique, applicative ou d’évaluation.

---

## 📁 Contenu du dossier `/sql/sql-v0.3/`

| Fichier                                      | Rôle |
|---------------------------------------------|------|
| `create_tifosi.sql`                         | Création de la base `tifosi`, des tables, relations et clés |
| `insert_data.sql`                           | Chargement des données complètes (via fichiers `.csv`) |
| `backup_tifosi.sql`                         | Sauvegarde complète de la base au format SQL (_mysqldump_) |
| `queries_test_v03.sql`                      | Requêtes de test métier (menus, activités, doublons) |
| `result-test-queries_v03-initial.txt`       | Résultat d’exécution initial avant sauvegarde |
| `result-test-queries_v03-postRestoreBackup.txt` | Résultat d’exécution après restauration du backup |
| `README_test-v0.3.md`                       | Documentation détaillée des requêtes de test |
| `README_backup.md`                          | Contexte et procédure de sauvegarde et restauration |
| `model_tifosi_v03.mwb.png`                  | Schéma EER final du MPD `tifosi_v03` |
| `DATAS-TESTING.md`                          | Spécification des cas de test et résultats attendus |
| `README_sql-v0.3.md` _(ce fichier)_         | Présentation et objectifs de la version livrée |

---

## 🛠️ Informations techniques

- 📦 Compatible MySQL ≥ 8.0
- 👤 Utilisateur `tifosi` défini avec privilèges complets sur la base
- 📂 Données importées depuis le dossier `/datas-csv/` (structure conforme à `insert_data.sql`)
- 🔑 Tables de liaison `*_menus` avec identifiants techniques (`id_boisson_menu`, `id_focaccia_menu`)
- 💾 Sauvegarde `backup_tifosi.sql` générée après validation complète

---

## ✅ Validation

- Jeu de test aligné sur `DATAS-TESTING.md`
- Export `result-queries-test_v03-initial.txt` conforme aux attentes fonctionnelles
- Intégrité structurelle vérifiée avec clés étrangères actives
- Exécution validée de bout en bout sur une base locale fraîchement recréée
- Résultat post-restauration confirmé : fichier `result-test-queries_v03-postRestoreBackup.txt` identique à la version initiale

---

## 🧭 Historique

- Hérité de la version `sql-v0.2.1` (issue [#6.1])
- Version structurée pour livraison finale (issue [#7])
- Changements majeurs listés dans `CHANGELOG.md` et `HISTORIQUE_sql.md`

---

**📌 Remarque** : Cette version `v0.3` clôt techniquement la construction du MPD Tifosi.  
>Cette version peut être utilisée telle quelle comme base technique pour un projet applicatif, un support pédagogique ou un livrable d’évaluation.

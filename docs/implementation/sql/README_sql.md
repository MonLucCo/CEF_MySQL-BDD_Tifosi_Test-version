# 🧮 Scripts SQL du projet Tifosi

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 23 juin 2025  

Ce répertoire contient tous les fichiers SQL liés à la base de données `tifosi`, manipulés dans le cadre du devoir.

---

- [🧮 Scripts SQL du projet Tifosi](#-scripts-sql-du-projet-tifosi)
  - [📂 Fichiers présents](#-fichiers-présents)
  - [🔍 Légende des états](#-légende-des-états)
  - [♻️ Gestion de versions](#️-gestion-de-versions)
    - [Principes et suivis](#principes-et-suivis)
    - [Plan de réalisation](#plan-de-réalisation)

---

## 📂 Fichiers présents

| Fichier | Rôle | État | Version |
|--|--|--|--|
| create_tifosi.sql | Script de création des tables et clés | En cours | v0.0 |
| insert_data.sql  | Insertion des données de test | À venir | — |
| backup_tifosi.sql | Sauvegarde complète | À venir | — |

## 🔍 Légende des états

- `À initialiser` : squelette créé mais non fonctionnel
- `En cours` : structure validée, contenu partiel
- `À tester` : script finalisé mais non validé
- `Prêt` : prêt pour la livraison finale

## ♻️ Gestion de versions

### Principes et suivis

- Chaque évolution (ajout, correction, refactoring) fait l’objet d’une PR avec mise à jour de ce fichier.
- Versionnement géré manuellement par étiquette `vX.Y.Z`

Le suivi des versions est défini dans [`HISTORIQUE_sql.md`](HISTORIQUE_sql.md).

### Plan de réalisation

Ce projet suit une logique de montée progressive en complexité, avec des versions incrémentales de la base `tifosi`.  
Chaque version est placée dans un sous-dossier `sql-vX.Y` ou `sql-vX.Y.Z`.

| Version SQL | Objectif principal  | Description | Dossier associé |
|--|--|--|--|
| v0.0 | Validation outil | Script brut de test, table vide  | `sql-v0.0/` |
| [sql-v0.1](sql-v0.1/README_sql-v0.1.md) | Création de base | Création de la base, de l'utilisateur et des données de tests  | `sql-v0.1/` |
| [sql-v0.1.1](sql-v0.1/versions/sql-v0.1.1/MPD-v0.1.1_tifosi.md) | Base partielle — vue métier minimale | `clients`, `menus`, `focaccias`, `jours`, relations avec `clients_*` | `sql-v0.1/versions/sql-v0.1.1/` |
| v0.1.2 | Création de l’utilisateur `tifosi` | Sécurité applicative (`CREATE USER`, `GRANT`) | à venir |
| v0.1.3 | MPD complet  | Intégration des marques, ingrédients, relations N:N complètes | à venir |
| v0.2.x  | Données, insertions, tests | `insert_data.sql`, export `.sql`, validations | à venir |

---

# 🧪 README_data-v0.2.1.md — Chargement des données (v0.2.1)

**Base de données** : `tifosi`  
**Version du modèle** : MPD v0.2.1  
**Schéma EER** : `model_tifosi_v021.mwb`, `model_tifosi_v021.mwb.png`  
**Fichiers d’insertion** : `.csv` exportés depuis Excel  
**Script de chargement** : `insert_data.sql`  
**Auteur** : PerLucCo  
**Date** : 27 juin 2025

---

- [🧪 README\_data-v0.2.1.md — Chargement des données (v0.2.1)](#-readme_data-v021md--chargement-des-données-v021)
  - [📂 Dossiers et documents utilisés](#-dossiers-et-documents-utilisés)
  - [🔁 Procédure de chargement](#-procédure-de-chargement)
    - [1. Préparer les fichiers `.csv`](#1-préparer-les-fichiers-csv)
    - [2. Activer le chargement côté serveur (root)](#2-activer-le-chargement-côté-serveur-root)
    - [3. Lancer le chargement avec l’utilisateur `tifosi`](#3-lancer-le-chargement-avec-lutilisateur-tifosi)
  - [🧩 Tables chargées (progressivement)](#-tables-chargées-progressivement)
    - [🛠️ Remarque importante sur les tables de liaison `*_menus`](#️-remarque-importante-sur-les-tables-de-liaison-_menus)
  - [⚙️ Structure de `insert_data.sql`](#️-structure-de-insert_datasql)
  - [📎 Remarque](#-remarque)

---

## 📂 Dossiers et documents utilisés

- `docs/sources/datas-xlsx/` : fichiers `.xlsx` sources (un fichier par table)
- `docs/implementation/sql/sql-v0.2/versions/sql-v0.2.1` : dossier de la présente version
  - `/datas-csv/` : dossier des fichiers `.csv` produits depuis les fichiers sources `.xlsx`
  - `/create_tifosi.sql` : script de création de la base de données et de son utilisateur `tifosi`
  - `/insert_data.sql` : script de chargement via `LOAD DATA`
  - `/README_test-v0.2.1.md` : test de validation de la version v0.2.1
  - `/DATA-TESTING.md` : vues métiers du jeu de données (référence pour les cycles d'instantiation-tests de validation)
  - `model_tifosi_v021-initial.mwb.png` : schéma initial MPDv0.2.1 avec clés primaires composites (avant issue #6.1)
  - `model_tifosi_v021-final.mwb.png` : schéma final MPDv0.2.1 avec identifiants techniques dans les tables de liaison
  - `result-queries-test_v021-initial.txt` : export de validation sur MPD initial (avant correction)
  - `result-queries-test_v021-final.txt` : export validé après correction structurelle (aligné DATAS-TESTING.md)

---

## 🔁 Procédure de chargement

### 1. Préparer les fichiers `.csv`

- Chaque fichier `.xlsx` est exporté en `.csv` UTF-8, avec `;` comme séparateur
- L’ordre de chargement respecte les dépendances (FK)

### 2. Activer le chargement côté serveur (root)

Avant d’exécuter le script de données, le serveur MySQL doit avoir `local_infile=ON`.  

```sql
SET GLOBAL local_infile = 1;
```

Ce paramètre est activé dans `create_tifosi.sql` lors de la création de la base et de l'utilisateur `tifosi`.

```bash
mysql -u root -p < create_tifosi.sql
```

### 3. Lancer le chargement avec l’utilisateur `tifosi`

```bash
mysql --local-infile=1 -u tifosi -p < insert_data.sql
```

---

## 🧩 Tables chargées (progressivement)

| Table                        | Fichier source `.csv`            | Statut               |
|------------------------------|----------------------------------|----------------------|
| `marques`                    | `marques.csv`                    | ✅ chargée           |
| `ingredients`                | `ingredients.csv`                | ✅ chargée           |
| `boissons`                   | `boissons.csv`                   | ✅ chargée           |
| `focaccias`                  | `focaccias.csv`                  | ✅ chargée           |
| `focaccias_ingredients`      | `focaccias_ingredients.csv`      | ✅ chargée           |
| `menus`                      | `menus.csv`                      | ✅ chargée           |
| `boissons_menus`             | `boissons_menus.csv`             | ✅ chargée           |
| `focaccias_menus`            | `focaccias_menus.csv`            | ✅ chargée           |
| `clients`                    | `clients.csv`                    | ✅ chargée           |
| `jours`                      | `jours.csv`                      | ✅ chargée           |
| `clients_jours_menus`        | `clients_jours_menus.csv`        | ✅ chargée           |
| `clients_focaccias_jours`    | `clients_focaccias_jours.csv`    | ✅ chargée           |

> statut au fil du chargement ✅ chargée, 🕓 à charger, ⛔️ si un fichier est bloquant.

### 🛠️ Remarque importante sur les tables de liaison `*_menus`

Les tables `boissons_menus` et `focaccias_menus` peuvent contenir volontairement **plusieurs occurrences d'un même couple (boisson ou focaccia, menu)**, afin de représenter fidèlement les quantités servies dans un menu (ex. : 2× Coca-cola original dans un menu).

Le modèle relationnel logique (MRLDv2) le permet. En revanche, le MPDv0.2.1 interdisait dans sa première mise en oeuvre cette configuration via une **clé primaire composite**, ce qui bloquait normalement le chargement des données.

Dans le script `create_tifosi.sql` final, cette contrainte a donc été retirée, conformément à l'issue #6.1 (_instantiation-validation_) en utilisant une clé primaire pour chaque composition.

---

## ⚙️ Structure de `insert_data.sql`

- Charge chaque fichier `.csv` avec :

```sql
LOAD DATA LOCAL INFILE '[chemin]/[nom fichier source].csv'
INTO TABLE table_cible
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
```

>Pour cette version de développement [chemin] est `./datas-csv/`

- L'encodage des fichiers `.csv` est UTF-8, sans guillemets

---

## 📎 Remarque

> Ce chargement concerne uniquement les données déjà validées à cette étape du projet : entités simples (`marques`, `ingredients`, etc.) et relations connues (`focaccias_ingredients`).  
> Les autres entités relationnelles (boissons, menus, relations N:N, etc.) seront chargées dans les étapes suivantes.

---

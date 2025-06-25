# 🧪 README_data.md — Chargement des données (v0.2)

**Base de données** : `tifosi`  
**Version du modèle** : MPD v0.2  
**Schéma EER** : `model_tifosi_v020.mwb`, `model_tifosi_v020.mwb.png`  
**Fichiers d’insertion** : `.csv` exportés depuis Excel  
**Script de chargement** : `insert_data.sql`  
**Auteur** : PerLucCo  
**Date** : 25 juin 2025

---

- [🧪 README\_data.md — Chargement des données (v0.2)](#-readme_datamd--chargement-des-données-v02)
  - [📂 Dossiers utilisés](#-dossiers-utilisés)
  - [🔁 Procédure de chargement](#-procédure-de-chargement)
    - [1. Préparer les fichiers `.csv`](#1-préparer-les-fichiers-csv)
    - [2. Activer le chargement côté serveur (root)](#2-activer-le-chargement-côté-serveur-root)
    - [3. Lancer le chargement avec l’utilisateur `tifosi`](#3-lancer-le-chargement-avec-lutilisateur-tifosi)
  - [🧩 Tables chargées (progressivement)](#-tables-chargées-progressivement)
  - [⚙️ Structure de `insert_data.sql`](#️-structure-de-insert_datasql)
  - [📎 Remarque](#-remarque)

---

## 📂 Dossiers utilisés

- `docs/sources/datas-xlsx/` : fichiers `.xlsx` sources (un par table)
- `docs/datas-csv/` : fichiers `.csv` produits depuis les `.xlsx`
- `sql-v0.2/insert_data.sql` : script de chargement via `LOAD DATA`

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

| Table        | Source CSV                                  |
|--------------|---------------------------------------------|
| `marques`    | `marques.csv`                               |
| `ingredients`| `ingredients.csv`                           |
| `boissons`   | _à venir (nécessite correspondance marque)_ |
| `focaccias`  | _à venir (avec ingrédients liés)_           |
| `menus`      | _à venir (avec tables liées)_               |
| `clients`    | _à venir (avec tables liées)_               |
| `jours`      | _à venir (avec tables liées)_               |

---

## ⚙️ Structure de `insert_data.sql`

- Charge chaque fichier `.csv` avec :

```sql
LOAD DATA LOCAL INFILE 'chemin.csv'
INTO TABLE table_cible
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
```

- L'encodage des fichiers `.csv` est UTF-8, sans guillemets

---

## 📎 Remarque

> Ce chargement préliminaire concerne uniquement les **données de référence** (`marques`, `ingredients`).  
> Les autres entités relationnelles (boissons, menus, relations N:N, etc.) seront chargées dans les étapes suivantes.

---

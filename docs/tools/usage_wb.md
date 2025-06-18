
# 🖥️ Utilisation de MySQL Workbench

---

- [🖥️ Utilisation de MySQL Workbench](#️-utilisation-de-mysql-workbench)
  - [Connexion au serveur](#connexion-au-serveur)
  - [1️⃣ Création d’une base](#1️⃣-création-dune-base)
  - [2️⃣ Suppression d’une base](#2️⃣-suppression-dune-base)
  - [3️⃣ Création d’une table](#3️⃣-création-dune-table)
  - [4️⃣ Suppression d’une table](#4️⃣-suppression-dune-table)
  - [5️⃣ Modification des colonnes](#5️⃣-modification-des-colonnes)
  - [6️⃣ Export SQL](#6️⃣-export-sql)
  - [7️⃣ Import SQL](#7️⃣-import-sql)

---

## Connexion au serveur

1. Lancer Workbench
2. Se connecter à l’instance locale MySQL (`root@localhost`)

---

## 1️⃣ Création d’une base

- Clic droit dans “Schemas” → `Create Schema`
- Nom : `tifosi`
- Collation : `utf8mb4_unicode_ci`
- Cliquer sur `Apply` → puis `Finish`

---

## 2️⃣ Suppression d’une base

- Clic droit sur `tifosi` → `Drop Schema…` → `Drop Now`

---

## 3️⃣ Création d’une table

- Clic droit sur la base → `Create Table`
- Nom : `test-init`
- Colonnes à ajouter :
  - `id` : `INT`, PK, NN, AI
  - `nom` : `VARCHAR(50)`, NN
- Cliquer sur `Apply` → `Apply`

---

## 4️⃣ Suppression d’une table

- Clic droit sur la table → `Drop Table` → confirmer

---

## 5️⃣ Modification des colonnes

- Clic droit → `Alter Table`
- Ajouter / modifier / supprimer des colonnes
- `Apply`

---

## 6️⃣ Export SQL

1. Menu `Server` → `Data Export`
2. Sélectionner la base `tifosi`
3. Options :
   - **Self-contained file** (export vers un fichier .sql)
   - Cocher “Dump Structure Only”
   - Cochez les tables à exporter
   - Cliquer sur `…` pour choisir **nom et emplacement du fichier**
4. Lancer `Start Export`

---

## 7️⃣ Import SQL

- Menu `File > Open SQL Script`
- Charger `wb_init_tifosi.sql`
- Vérifier la présence de :

  ```sql
  CREATE DATABASE tifosi;
  USE tifosi;
  ```

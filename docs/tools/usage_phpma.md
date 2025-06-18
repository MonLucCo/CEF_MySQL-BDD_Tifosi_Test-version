
# 🌐 Utilisation de phpMyAdmin

---

- [🌐 Utilisation de phpMyAdmin](#-utilisation-de-phpmyadmin)
  - [Accès](#accès)
  - [1️⃣ Création d’une base](#1️⃣-création-dune-base)
  - [2️⃣ Suppression d’une base](#2️⃣-suppression-dune-base)
  - [3️⃣ Création d’une table](#3️⃣-création-dune-table)
  - [4️⃣ Suppression d’une table](#4️⃣-suppression-dune-table)
  - [5️⃣ Modification des colonnes](#5️⃣-modification-des-colonnes)
  - [6️⃣ Export SQL](#6️⃣-export-sql)
  - [7️⃣ Import SQL](#7️⃣-import-sql)

---

## Accès

- Ouvrir un navigateur : [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
- Login : `root`, sans mot de passe (par défaut sous WAMP)

---

## 1️⃣ Création d’une base

1. Cliquer sur l’onglet *Bases de données*
2. Nom : `tifosi`
3. Collation : `utf8mb4_unicode_ci`
4. Cliquer sur *Créer*

---

## 2️⃣ Suppression d’une base

1. Cliquer sur la base dans la colonne de gauche
2. Onglet *Opérations*
3. Tout en bas : *Supprimer la base de données*

---

## 3️⃣ Création d’une table

1. Aller dans la base `tifosi`
2. *Nouvelle table* → nom : `test-init` (2 colonnes)
3. Colonnes :
   - `id` : `INT`, PRIMARY, AUTO_INCREMENT, NOT NULL
   - `nom` : `VARCHAR(50)`, NOT NULL
4. Enregistrer

---

## 4️⃣ Suppression d’une table

1. Dans la base, cocher la table `test-init`
2. Bouton *Supprimer* en haut ou en bas → confirmer

---

## 5️⃣ Modification des colonnes

1. Cliquer sur *Structure*
2. Modifier, supprimer, ou ajouter des colonnes

---

## 6️⃣ Export SQL

1. Sélectionner la base
2. Onglet *Exporter*
3. Choisir *Personnalisée*
4. Cocher :
   - *Ajouter l’instruction CREATE DATABASE / USE*
   - Les tables à inclure
5. Format : SQL
6. Lancer *Exécuter* → le fichier `.sql` est téléchargé
7. Renommer (ex. : `phpma_init_tifosi.sql`)

---

## 7️⃣ Import SQL

1. Onglet *Importer*
2. Choisir le fichier `.sql`
3. Encodage : `utf-8`
4. Cliquer sur *Exécuter*

---

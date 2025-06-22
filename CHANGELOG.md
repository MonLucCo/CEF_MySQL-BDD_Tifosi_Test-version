# 🗂️ CHANGELOG — Projet Tifosi

Toutes les modifications notables de ce projet sont consignées dans ce fichier.

Format inspiré de la spécification [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/)  
Versionnage selon [Semantic Versioning](https://semver.org/lang/fr/).

---

- [�️ CHANGELOG — Projet Tifosi](#️-changelog--projet-tifosi)
  - [🧱 Milestone v0.1 - 2025-06-17 – Structuration](#-milestone-v01---2025-06-17--structuration)
  - [✨ Milestone v0.2 - 2025-06-XX — Modélisation \& base](#-milestone-v02---2025-06-xx--modélisation--base)
    - [🧭 Phase 1 - 2025-06-22 — Modélisation \& base (MCD et MLD)](#-phase-1---2025-06-22--modélisation--base-mcd-et-mld)
      - [🔍 Etape 1 : Ajout de la modélisation MCD (version 1)](#-etape-1--ajout-de-la-modélisation-mcd-version-1)
      - [🔍 Etape 2 : Installation de l'environnement technique](#-etape-2--installation-de-lenvironnement-technique)
      - [🔍 Etape 3 : Construction du MRLD et alignement avec le MCD v2](#-etape-3--construction-du-mrld-et-alignement-avec-le-mcd-v2)
    - [🧭 Phase 2 - 2025-06-XX — Modèle logique (MRLD) \& base SQL](#-phase-2---2025-06-xx--modèle-logique-mrld--base-sql)
      - [🚧 Etape \[Unreleased\] \[Phase 2 - v0.2\]](#-etape-unreleased-phase-2---v02)
  - [🧪 Milestone v0.3 - 2025-06-XX — Tests d’implémentation et jeu d’essai](#-milestone-v03---2025-06-xx--tests-dimplémentation-et-jeu-dessai)
    - [🧭 Phase \[Undefined\] - v0.3](#-phase-undefined---v03)
      - [🚧 Etape \[Unreleased\] \[Phase X - v0.3\]](#-etape-unreleased-phase-x---v03)
  - [📘 Milestone v0.4 - 2025-06-XX — Documentation finale](#-milestone-v04---2025-06-xx--documentation-finale)
    - [🧭 Phase \[Undefined\] - v0.4](#-phase-undefined---v04)
      - [🚧 \[Unreleased\] \[Phase X - v0.4\]](#-unreleased-phase-x---v04)
  - [📦 Milestone \[v1.0\] – 2025-06-XX - Version finale](#-milestone-v10--2025-06-xx---version-finale)
    - [🧭 Phase \[Undefined\] - v1.0](#-phase-undefined---v10)
      - [🚧 \[Unreleased\] \[Phase X - v1.0\]](#-unreleased-phase-x---v10)

---

## 🧱 Milestone v0.1 - 2025-06-17 – Structuration

---

## ✨ Milestone v0.2 - 2025-06-XX — Modélisation & base

### 🧭 Phase 1 - 2025-06-22 — Modélisation & base (MCD et MLD)

#### 🔍 Etape 1 : Ajout de la modélisation MCD (version 1)

- Reprise du schéma MCD fourni dans le sujet (`tifosi_mcd_sujet.png`)
- Modélisation sur draw.io (`tifosi_mcd_reprise-v1.drawio`)
- Vérification des **entités**, des **attributs**, des **cardinalités**
- Analyse métier dans `README_analyse.md`
- Lecture technique dans `mcd-tifosi_analyse.md`
- Clarification des termes ambigus (`mcd-tifosi_cohérence.md`)
- Dossier documentaire initial structuré dans `/docs/mcd/`

🔗 Commits associés :

- [`7cdc12f`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/7cdc12f)
  - Analyse fonctionnelle du MCD (README_analyse.md)
  - Génération du MCD sur draw.io
  - Ajout des fichiers de cohérence du MCD

🎯 Issue concernée :

- #4 Modélisation du MCD et du MLD – Étape 1

---

#### 🔍 Etape 2 : Installation de l'environnement technique

- installation de MySQl server avec le SGBD MySQL
- installation de MySQL Workbench
- installation de XAMPP avec les SGBD MySQL et MariaDB, l'interface web phpMyAdmin
- vérification de la cohérence MySQL et les accès (WorkBench et phpMyAdmin)

📎 Issue concernée : [#3](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/3)  
📁 Dossiers concernés : `/docs/`, `/sql/`

---

#### 🔍 Etape 3 : Construction du MRLD et alignement avec le MCD v2

- Transposition progressive du MCD :
  - `MRLD v0.1` : version brute depuis `MCD v1`
  - `MRLD v0.2` : centralisation de l'attribut `jour`
  - `MRLD v1` : version logique de référence alignée sur `MCD v2`
- Modélisation des actions `achète` et `paye` sous forme de **relations ternaires**
- Création de la table `jours` :
  - champ `date_jour` défini comme `DATE`, `DATETIME` ou `TIMESTAMP`
  - le **choix du type est laissé ouvert au MPD**, selon le niveau d’unicité attendu
- Schéma visuel consolidé : `MRLD-v1_tifosi.drawio.png`
- Documentation associée :
  - `MRLD-v1_tifosi.md`
  - `MRLD_tifosi.md` (table de version centralisée)
  - `HISTORIQUE_mld_tifosi.md` (étape 3f)
- Renommage normalisé des fichiers `.drawio.png` avec préfixe `MRLD-` en majuscules

📎 Issue concernée : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)  
📁 Dossiers concernés : `/docs/implementation/mrld-versions/`, `/docs/implementation/schemas/`, `/sql/`

---

### 🧭 Phase 2 - 2025-06-XX — Modèle logique (MRLD) & base SQL

#### 🚧 Etape [Unreleased] [Phase 2 - v0.2]

- Génération du script SQL complet dans `MPD_tifosi.sql`
- Création d’un utilisateur `tifosi` avec droits associés
- Ajout de l’historique technique : `mrld-historique.md`
- Suivi dans l’issue #4 et #5

🗂️ Dossiers concernés : `/docs/implementation/`, `/sql/`

---

## 🧪 Milestone v0.3 - 2025-06-XX — Tests d’implémentation et jeu d’essai

### 🧭 Phase [Undefined] - v0.3

#### 🚧 Etape [Unreleased] [Phase X - v0.3]

- Création d’un script d’insertion de données minimales (`init_tifosi.sql`)
- Ajout d’un jeu de tests dans phpMyAdmin / Workbench
- Validation des contraintes d’intégrité
- Journal de tests ou `README_tests.md`

🧪 Objectif : s’assurer que la base est exploitable et conforme aux choix modélisés

---

## 📘 Milestone v0.4 - 2025-06-XX — Documentation finale

### 🧭 Phase [Undefined] - v0.4

#### 🚧 [Unreleased] [Phase X - v0.4]

- Intégration de tous les fichiers `README.md` dans `/docs`
- Compléments aux fichiers :
  - `README_docs.md` (sommaire global)
  - `mrld-historique.md`, `sql-historique.md`
  - `CHANGELOG.md` finalisé jusqu’à v1.0
- Ajout d’une vue de synthèse (organigramme, image recap, etc.)
- Structuration pour évaluation pédagogique

---

## 📦 Milestone [v1.0] – 2025-06-XX - Version finale

### 🧭 Phase [Undefined] - v1.0

#### 🚧 [Unreleased] [Phase X - v1.0]

🎉 Version stable de la base Tifosi – **fonctionnelle, testée, documentée**

- MCD vérifié et cohérent
- MRLD et MPD complets, export SQL disponible
- Jeu d’essai inséré et testé
- Documentation livrée avec historique et lecture métier
- Arborescence claire du dépôt (`docs`, `sql`, `sources`, `README`)

📦 Prêt pour déploiement local ou intégration dans une future application PHP/MySQL

---

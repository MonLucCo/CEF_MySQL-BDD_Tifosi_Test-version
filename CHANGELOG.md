# 📦 CHANGELOG — Projet Tifosi

Toutes les modifications notables de ce projet sont consignées dans ce fichier.

Format inspiré de la spécification [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/)  
Versionnage selon [Semantic Versioning](https://semver.org/lang/fr/).

---

- [📦 CHANGELOG — Projet Tifosi](#-changelog--projet-tifosi)
  - [\[v0.1\] – 2025-06-XX](#v01--2025-06-xx)
    - [🔍 Etape 1 : Ajout de la modélisation MCD (version 1)](#-etape-1--ajout-de-la-modélisation-mcd-version-1)
  - [🚧 \[Unreleased\]](#-unreleased)
    - [🧱 v0.2 — Modèle logique (MRLD) \& base SQL](#-v02--modèle-logique-mrld--base-sql)
    - [🧪 v0.3 — Tests d’implémentation et jeu d’essai](#-v03--tests-dimplémentation-et-jeu-dessai)
    - [📘 v0.4 — Documentation finale](#-v04--documentation-finale)
  - [\[v1.0\] – 2025-07-XX](#v10--2025-07-xx)

---

## [v0.1] – 2025-06-XX

### 🔍 Etape 1 : Ajout de la modélisation MCD (version 1)

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

## 🚧 [Unreleased]

### 🧱 v0.2 — Modèle logique (MRLD) & base SQL

- Élaboration du MRLD dans `MRLD_tifosi.md`
  - Tables relationnelles dérivées du MCD validé
  - Clés primaires et étrangères explicitées
- Génération du script SQL complet dans `MPD_tifosi.sql`
- Création d’un utilisateur `tifosi` avec droits associés
- Ajout de l’historique technique : `mrld-historique.md`
- Suivi dans l’issue #4 et #5

🗂️ Dossiers concernés : `/docs/implementation/`, `/sql/`

---

### 🧪 v0.3 — Tests d’implémentation et jeu d’essai

- Création d’un script d’insertion de données minimales (`init_tifosi.sql`)
- Ajout d’un jeu de tests dans phpMyAdmin / Workbench
- Validation des contraintes d’intégrité
- Journal de tests ou `README_tests.md`

🧪 Objectif : s’assurer que la base est exploitable et conforme aux choix modélisés

---

### 📘 v0.4 — Documentation finale

- Intégration de tous les fichiers `README.md` dans `/docs`
- Compléments aux fichiers :
  - `README_docs.md` (sommaire global)
  - `mrld-historique.md`, `sql-historique.md`
  - `CHANGELOG.md` finalisé jusqu’à v1.0
- Ajout d’une vue de synthèse (organigramme, image recap, etc.)
- Structuration pour évaluation pédagogique

---

## [v1.0] – 2025-07-XX

🎉 Version stable de la base Tifosi – **fonctionnelle, testée, documentée**

- MCD vérifié et cohérent
- MRLD et MPD complets, export SQL disponible
- Jeu d’essai inséré et testé
- Documentation livrée avec historique et lecture métier
- Arborescence claire du dépôt (`docs`, `sql`, `sources`, `README`)

📦 Prêt pour déploiement local ou intégration dans une future application PHP/MySQL

---

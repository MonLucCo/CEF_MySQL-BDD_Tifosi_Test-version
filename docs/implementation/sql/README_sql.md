# 🧮 Scripts SQL du projet Tifosi

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

Ce répertoire contient tous les fichiers SQL liés à la base de données `tifosi`, manipulés dans le cadre du devoir.

---

- [🧮 Scripts SQL du projet Tifosi](#-scripts-sql-du-projet-tifosi)
  - [📂 1-Fichiers attendus](#-1-fichiers-attendus)
    - [📦 1.1- Etat d'avancement](#-11--etat-davancement)
    - [🔍 1.2- Légende des états](#-12--légende-des-états)
  - [♻️ 2- Gestion de versions](#️-2--gestion-de-versions)
    - [🛠️ 2.1- Principes et suivis](#️-21--principes-et-suivis)
    - [🧭 2.2- Plan de réalisation](#-22--plan-de-réalisation)
      - [🪜 2.2.1- Versions du projet](#-221--versions-du-projet)
      - [🔧 2.2.2- Etapes de réalisation](#-222--etapes-de-réalisation)
        - [📐 Étape 1 — MPD v0 (liée à #5)](#-étape-1--mpd-v0-liée-à-5)
        - [🧱 Étape 2 — MPD partiel : v0.1.1 + v0.1.2 (liée à #5)](#-étape-2--mpd-partiel--v011--v012-liée-à-5)
          - [🧱 v0.1.1 – Base fonctionnelle minimale](#-v011--base-fonctionnelle-minimale)
          - [🛡️ v0.1.2 – Sécurité applicative](#️-v012--sécurité-applicative)
        - [🧩 Étape 3 — MPD complet : v0.1.3 (liée à #5)](#-étape-3--mpd-complet--v013-liée-à-5)
        - [🧬 Étape 4 — Insertion des données (liée à #6)](#-étape-4--insertion-des-données-liée-à-6)
        - [🧪 Étape 5 — Requêtes de test et sauvegarde (liée à #7)](#-étape-5--requêtes-de-test-et-sauvegarde-liée-à-7)
        - [📦 Étape 6 — Finalisation documentaire et livraison (liée à #7)](#-étape-6--finalisation-documentaire-et-livraison-liée-à-7)
  - [🔗 3 - Suivi des travaux en cours (issues GitHub)](#-3---suivi-des-travaux-en-cours-issues-github)
    - [🟢 #5 — Création de la base SQL + utilisateur `issue #5`](#-5--création-de-la-base-sql--utilisateur-issue-5)
    - [🟠 #6 — Insertion des données `issue #6`](#-6--insertion-des-données-issue-6)
    - [🟠 #7 — Requêtes de test, sauvegarde et documentation `issue #7`](#-7--requêtes-de-test-sauvegarde-et-documentation-issue-7)

---

## 📂 1-Fichiers attendus

### 📦 1.1- Etat d'avancement

| Fichier | Rôle | État | Version |
|--|--|--|--|
| create_tifosi.sql | Script de création des tables et clés | En cours | v0.0 |
| insert_data.sql  | Insertion des données de test | À venir | — |
| backup_tifosi.sql | Sauvegarde complète | À venir | — |

>🔗 Pour consulter les issues GitHub en cours liées à ces fichiers, voir [Section 3 – Suivi des travaux en cours](#-3---suivi-des-travaux-en-cours-issues-github)

### 🔍 1.2- Légende des états

- `À initialiser` : squelette créé mais non fonctionnel
- `En cours` : structure validée, contenu partiel
- `À tester` : script finalisé mais non validé
- `Prêt` : prêt pour la livraison finale

---

## ♻️ 2- Gestion de versions

### 🛠️ 2.1- Principes et suivis

- Chaque évolution (ajout, correction, refactoring) fait l’objet d’une PR avec mise à jour de ce fichier.
- Versionnement géré manuellement par étiquette `vX.Y.Z`

Le suivi des versions est défini dans [`HISTORIQUE_sql.md`](HISTORIQUE_sql.md).

---

### 🧭 2.2- Plan de réalisation

#### 🪜 2.2.1- Versions du projet

Ce projet suit une logique de montée progressive en complexité, avec des versions incrémentales de la base `tifosi`.  

| Version SQL | Objectif principal  | Description | Dossier associé |
|--|--|--|--|
| v0.0 | Validation outil | Script brut de test, table vide  | `sql-v0.0/` |
| [sql-v0.1](sql-v0.1/README_sql-v0.1.md) | Création de base | Création de la base, de l'utilisateur et des données de tests  | `sql-v0.1/` |
| [sql-v0.1.1](sql-v0.1/versions/sql-v0.1.1/MPD-v0.1.1_tifosi.md) | Base partielle — vue métier minimale | `clients`, `menus`, `focaccias`, `jours`, relations avec `clients_*` | `sql-v0.1/versions/sql-v0.1.1/` |
| v0.1.2 | Création de l’utilisateur `tifosi` | Sécurité applicative (`CREATE USER`, `GRANT`) | à venir |
| v0.1.3 | MPD complet  | Intégration des marques, ingrédients, relations N:N complètes | à venir |
| v0.2.x  | Données, insertions, tests | `insert_data.sql`, export `.sql`, validations | à venir |

>Chaque version est placée dans un sous-dossier `sql-vX.Y` ou `sql-vX.Y.Z`.

---

#### 🔧 2.2.2- Etapes de réalisation

Les étapes de construction logique et physique de la base `tifosi` sont en relation avec la modélisation métier et les tests d’usage. Elle structure la montée en complexité du modèle relationnel et des scripts SQL. Elles sont réalisées sur plusieurs étapes établies dans plusieurs _issues_ du projet :

- [#5](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5) : Création de la base SQL et de l'utilisateur
- [#6](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/6) : Insertion des données
- [#7](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/7) : Requêtes de test, sauvegarde et documentation.

---

##### 📐 Étape 1 — MPD v0 (liée à #5)

🎯 Objectif : Vérification des outils de génération SQL (Workbench, scripts `.sql`, encodage, moteur InnoDB)

- Création manuelle d’une base avec une seule table
- Script de test de création, suppression, requête simple
- But purement technique, sans modèle fonctionnel associé

📁 Dossier concerné : `sql-v0.0/`  
📄 Fichier : `create_tifosi_v00.sql`

---

##### 🧱 Étape 2 — MPD partiel : v0.1.1 + v0.1.2 (liée à #5)

🎯 Objectif : Implémenter une base partielle conforme au **MRLD v1.1**, validée avec l’utilisateur SQL `tifosi`

###### 🧱 v0.1.1 – Base fonctionnelle minimale

- Tables : `clients`, `menus`, `focaccias`, `jours`
- Relations ternaires : `clients_jours_menus`, `clients_focaccias_jours`
- Script SQL testé manuellement
- Requête d'insertion + lecture validées

📁 Dossier : `sql-v0.1/versions/sql-v0.1.1/`  
📄 Fichiers :

- `MPD-v0.1.1.drawio`, `create_tifosi.sql`
- `README_test-v0.1.1.md`

###### 🛡️ v0.1.2 – Sécurité applicative

- Création de l'utilisateur SQL `tifosi`
- Attribution des droits (définis par défaut comme administrateur)
- Documentation des privilèges effectifs
- Exploitation de la base de données en version fonctionnelle minimale (v0.1.1)

📁 Dossier : `sql-v0.1/versions/sql-v0.1.2/`  
📄 Fichier attendu : `create_user_tifosi.sql`

---

##### 🧩 Étape 3 — MPD complet : v0.1.3 (liée à #5)

🎯 Objectif : Construire une base complète alignée sur **MRLD v1.1** et conforme à **MCD v2.1**

- Ajout des entités : `ingredients`, `marques`, `utilisateurs` (si retenus)
- Relations complexes :
  - `menus ↔ ingredients` (`compose`)
  - `clients ↔ menus` (`paye` avec `montant`, `date`)
  - `clients ↔ menus` (`note` avec `valeur`)
- Intégration des attributs relationnels

📁 Dossier prévu : `sql-v0.1/versions/sql-v0.1.3/`  
📄 Fichiers attendus :

- `MPD-v0.1.3.drawio` / `create_tifosi_v013.sql`
- `README_test-v0.1.3.md`

---

##### 🧬 Étape 4 — Insertion des données (liée à #6)

🎯 Objectif : Ajouter des données réelles ou fictives dans les tables afin de permettre les tests applicatifs sur la base complète.

- Insertion contrôlée (respect des clés étrangères et des formats)
- Données variées : clients, menus, focaccias, jours, marques, ingrédients
- Possibilité d’automatiser via un script `insert_data.sql`

📁 Dossier prévu : `sql-v0.2/`  
📄 Fichier attendu : `insert_data.sql`

---

##### 🧪 Étape 5 — Requêtes de test et sauvegarde (liée à #7)

🎯 Objectif : Vérifier la consistance de la base via des requêtes SQL et produire une sauvegarde `.sql` prête pour la livraison.

- Écriture de requêtes de sélection, de jointures, de filtres
- Validation des comportements fonctionnels (commandes, paiements, notes)
- Génération d’une sauvegarde MySQL complète : `backup_tifosi.sql`

📁 Dossier visé : `sql-v0.2/` ou `sql-v1.0/`  
📄 Fichiers attendus :

- `requêtes_test.sql`
- `backup_tifosi.sql`
- `README_test-v1.0.md`

---

##### 📦 Étape 6 — Finalisation documentaire et livraison (liée à #7)

🎯 Objectif : Compiler tous les éléments documentaires techniques en vue de la livraison

- Génération du script final `create_tifosi.sql` complet
- Résumé des tests effectués et validés
- Dépôt dans `/docs/livraison/` ou équivalent

📄 Fichiers attendus :

- `README_sql.md` final
- `HISTORIQUE_sql.md` à jour
- `CONVENTION_BDD.md` stabilisé

---

## 🔗 3 - Suivi des travaux en cours (issues GitHub)

### 🟢 #5 — Création de la base SQL + utilisateur [`issue #5`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5)

🎯 **Objectif** : Écriture du script SQL de la base Tifosi (tables, clés, contraintes) + définition de l'utilisateur `tifosi`.

📌 **État** : En cours de finalisation – partie 2b (script utilisateur)  
📦 Étapes réalisées : MPD v0.1.1, `README_test-v0.1.1.md`, MPD v0.1.2 en préparation  
📂 Versions concernées : `sql-v0.1.1`, `sql-v0.1.2`, `sql-v0.1.3`

---

### 🟠 #6 — Insertion des données [`issue #6`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/6)

🎯 **Objectif** : Fournir des données de test réalistes pour valider les comportements métier de la base.

📌 **État** : À venir  
📦 Travaux attendus : `insert_data.sql`, validations de contraintes, cohérence inter-tables  
📂 Dossier cible : `sql-v0.2/`

---

### 🟠 #7 — Requêtes de test, sauvegarde et documentation [`issue #7`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/7)

🎯 **Objectif** : Produire les requêtes d’évaluation, vérifier la consistance métier, exporter la base complète (`backup_tifosi.sql`) et finaliser la documentation technique.

📌 **État** : À venir  
📦 Travaux attendus :

- `requêtes_test.sql`
- `README_test-v1.0.md`
- `backup_tifosi.sql`  
📂 Dossiers concernés : `sql-v0.2/`, `docs/livraison/`

---

📁 Voir l’ensemble des issues du projet :  
→ [Onglet Issues GitHub](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues)

---

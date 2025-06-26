# 📚 Documentation du projet Tifosi

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 25 juin 2025  

Ce dossier regroupe tous les documents de référence du projet : consignes, notes, réflexions, schémas, tests, etc.

> 🧭 Version courante du projet : v0.1.3 > 🔎 Pour le détail des évolutions, consulter la section [🔄 Suivi des évolutions par domaine](#-suivi-des-évolutions-par-domaine).

---

- [📚 Documentation du projet Tifosi](#-documentation-du-projet-tifosi)
  - [🧾 Contenu](#-contenu)
  - [🔄 Mises à jour](#-mises-à-jour)
  - [🔄 Suivi des évolutions par domaine](#-suivi-des-évolutions-par-domaine)
  - [📈 Situation d'avancement synthétique](#-situation-davancement-synthétique)
    - [✅ Réalisé — Cycle structurel v0.1.x (clôturé)](#-réalisé--cycle-structurel-v01x-clôturé)
    - [🚧 En cours — Cycle données v0.2.x](#-en-cours--cycle-données-v02x)
    - [🔜 À venir — Cycle validation métier \& packaging](#-à-venir--cycle-validation-métier--packaging)

---

## 🧾 Contenu

- `README_docs.md` : ce document – point d’entrée vers la documentation
- [Sujet-Devoir10_BddTifosiAvecMySQL.pdf](./sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf) : énoncé officiel du devoir (accès : `./sources/`)
- [planification du projet](./process/README_plan.md) : plan de réalisation et d'avancement du projet (accès : `./process`)
- [README_process.md](./process/README_process.md) : journal et méthode projet (accès : `./process/`)
- [README_tools.md](./tools/README_tools.md) : outils et usages pour l'exploitation du projet (accès : `./tools`)
- [MCD_tifosi.md](./implementation/mcd/MCD_tifosi.md) : suivi du Modèle Conceptuel de Données (versions jusqu’à v2.1)
- [MRLD_tifosi.md](./implementation/mld/MRLD_tifosi.md) : suivi du Modèle Relationnel Logique de Données (versions jusqu’à v1.1)
- [MPD-v0.1.3_tifosi.md](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/MPD-v0.1.3_tifosi.md) : description complète de la structure physique (base sans données)
- [README_test-v0.1.3.md](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/README_test-v0.1.3.md) : protocole de validation structurelle de la version `v0.1.3`
- [README_sql.md](./implementation/sql/README_sql.md) : suivi de l’évolution des scripts SQL
- [README_sql-v0.2.md](./implementation/sql/sql-v0.2/README_sql-v0.2.md) : suivi de la version `sql-v0.2.x`, documentation du chargement partiel
- [README_data-v0.2.0.md](./implementation/sql/sql-v0.2/versions/sql-v0.2.0/README_data-v0.2.0.md) : procédure de génération et chargement des données `.csv` (chargement partiel)
- [README_test-v0.2.0.md](./implementation/sql/sql-v0.2/versions/sql-v0.2.0/README_test-v0.2.0.md) : requêtes de test de cohérence sur les entités chargées

🔎 Autres documents disponibles :

- scripts de structure :
  - v0.1.3 : `init_v013.sql`, `create_user_tifosi.sql`
  - v0.2.0 : `create_tifosi.sql`, `insert_data.sql`
- scripts de test :
  - v0.1.3 : `test_v013.sql`, `data-test_v013.sql`, `queries-test_v013.sql`
    - `model_tifosi_v013.mwb` : fichier EER Workbench du schéma relationnel  ([image EER v0.1.3](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/model_tifosi_v013.mwb.png))
  - v0.2.0 : `queries-test_v020;sql`
    - `model_tifosi_v020.mwb` : modèle EER généré de la version `v0.2.0` ([image EER v0.2.0](./implementation/sql/sql-v0.2/versions/sql-v0.2.0/model_tifosi_v020.mwb.png))
- documents de traçabilité (`HISTORIQUE_sql.md`, `CHANGELOG.md`)

---

## 🔄 Mises à jour

Ce fichier est mis à jour à chaque **merge de PR liée à une version ou un jalon documentaire**.  
Dernière mise à jour intégrée : **structure v0.1.3**, validée avec test, documentation et alignement MRLD v1.1.  
Issue concernée : `#5.1 – Alignement issue#5 avec MRLDv1.1` ([#21](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/21))

🔄 Dernière mise à jour intégrée : **données v0.2.0**, validées avec chargement partiel, documentation dédiée, et jeu de tests techniques.

- Entités chargées : `marques`, `ingredients`, `boissons`, `focaccias`, `focaccias_ingredients`
- Correction identifiée : relation `menus` ↔ `focaccias` non conforme au MCD v2.1
- Prochaine version : `v0.2.1`, après reprise du cycle MCD → MRLD (issue #6.2 à venir)

---

## 🔄 Suivi des évolutions par domaine

| Domaine | Historique |
|--|--|
| 📦 Structure globale | [`CHANGELOG.md`](../CHANGELOG.md) |
| 🧱 MCD | [`HISTORIQUE_mcd.md`](./implementation/mcd/HISTORIQUE_mcd.md) |
| 🧩 MRLD | [`HISTORIQUE_mld.md`](./implementation/mld/HISTORIQUE_mld.md) |
| 🧰 SQL | [`HISTORIQUE_sql.md`](./implementation/sql/HISTORIQUE_sql.md) |

---

## 📈 Situation d'avancement synthétique

### ✅ Réalisé — Cycle structurel v0.1.x (clôturé)

- **Modèles livrés** : `MCD v2.1`, `MRLD v1.1`, `MPD v0.1.3`
- **Base de données créée** via `create_tifosi_v013.sql` (structure complète, sans données)
- **Utilisateur `tifosi` configuré** via `create_user_tifosi.sql` avec droits adaptés
- **Scripts de tests validés** (`test_v013.sql`, données & requêtes)
- **Documentation finalisée** :
  - `MPD-v0.1.3_tifosi.md`
  - `README_test-v0.1.3.md`
- **Schéma graphique EER généré** et intégré dans le dépôt (`.mwb`)
- Branche de convergence : `issue#5.1-alignement` (PR en cours)

### 🚧 En cours — Cycle données v0.2.x

- **Objectif** : insertion maîtrisée de données cohérentes dans la base `tifosi`
- **Branche concernée** : `issue#6 – Insertion des données`
- **Livraison de `v0.2.0`** :  
  - chargement partiel validé pour : `marques`, `ingredients`, `boissons`, `focaccias`, `focaccias_ingredients`
  - fichiers `.csv` contrôlés dans `/sql-v0.2/versions/sql-v0.2.0`
  - exécution validée avec l’utilisateur `tifosi` (`LOAD DATA`)
- **⚠️ Incohérence détectée** sur la relation `menus` ↔ `focaccias` lors des tests fonctionnels (`queries-test_v020.sql`)
- **Reprise du cycle MCD → MRLD planifiée** pour version `v0.2.1`, avec montée de version à `MRLD v2.0`

### 🔜 À venir — Cycle validation métier & packaging

- **Tests fonctionnels avancés** : requêtes d’usage, vues, rapports simples
- **Branche à activer** : `issue#7 – Requêtes + sauvegarde`
- **Documentation finale** :
  - export base (`.sql`)
  - README utilisateurs
  - lien GitHub finalisé
- **Livrable pédagogique packagé**

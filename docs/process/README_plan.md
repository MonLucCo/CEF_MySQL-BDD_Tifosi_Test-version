# 📎 Documentation README_plan.md – Planification opérationnelle du projet

Ce document rassemble l’ensemble des issues planifiées pour le projet **Tifosi**.  
Elles sont regroupées par **jalon (milestone)**, chacune décrite par son objectif, son label principal, sa branche et son état d’avancement.

---

- [📎 Documentation README\_plan.md – Planification opérationnelle du projet](#-documentation-readme_planmd--planification-opérationnelle-du-projet)
  - [🎯 Objectif du document](#-objectif-du-document)
  - [🧩 Organisation des tâches](#-organisation-des-tâches)
    - [🚩 Milestone `v0.1 – Structuration`](#-milestone-v01--structuration)
    - [🚩 Milestone `v0.2 – Modélisation & base`](#-milestone-v02--modélisation--base)
    - [🚩 Milestone `v0.3 – Requêtes & livraison`](#-milestone-v03--requêtes--livraison)
    - [🚩 Milestone `v1.0 – Version finale`](#-milestone-v10--version-finale)
  - [🧰 Contenu attendu par issue](#-contenu-attendu-par-issue)
  - [✍️ Auteur](#️-auteur)

---

## 🎯 Objectif du document

- Définir les issues de réalisation du projet
- Associer à chaque tâche un jalon, un livrable et une branche de travail
- Permettre un suivi synthétique et versionné de l’avancement du projet

---

## 🧩 Organisation des tâches

### 🚩 Milestone `v0.1 – Structuration`

> **Description :**
> Organisation initiale du projet : structure du dépôt, documentation du cadre méthodologique, planification, tableau de bord GitHub.
>
> **Livrables attendus :**
>
> - README_process.md
> - README_plan.md
> - README_building.md
> - Création du Kanban (Project GitHub)

|Issue|Titre | Label principal | Branche prévue | État |
|-|-|-|-|-|
| #1 | Structuration du projet | `Tifosi-Organisation` | `MonLucCo/issue1` | ✔️ terminée |

---

### 🚩 Milestone `v0.2 – Modélisation & base`

> **Description :**
> Installation de l’environnement, modélisation des données (MCD/MLD), création de la base SQL et insertion des données.
>
> **Livrables attendus :**
>
> - Export base vide init_tifosi.sql
> - Modélisation MCD/MLD (.png, .drawio, .sql)
> - Scripts : create_tifosi.sql, insert_data.sql

|Issue|Titre | Label principal | Branche prévue | État |
|-|-|-|-|-|
| #2 | Mise au point de l’environnement | `Tifosi-SQL` | `MonLucCo/issue2` | ✔️ terminée |
| #3 | Modélisation MCD et MLD | `Tifosi-Modélisation` | `MonLucCo/issue3`| ⬜ à venir |
| #4 | Création de la base SQL + utilisateur | `Tifosi-SQL` | `MonLucCo/issue4` | ⬜ à venir |
| #5 | Insertion des données | `Tifosi-Import` | `MonLucCo/issue5` | ⬜ à venir |

---

### 🚩 Milestone `v0.3 – Requêtes & livraison`

> **Description :**
> Vérification de la cohérence de la base via requêtes de test, sauvegarde complète de la base et documentation technique.
>
> **Livrables attendus :**
>
> - requetes_tests.sql
> - backup_tifosi.sql
> - README(s) mis à jour

| Issue | Titre | Label principal | Branche prévue | État |
|-|-|-|-|-|
| #6 |Requêtes de test + sauvegarde + documentation|`Tifosi-Livrable`|`MonLucCo/issue6`| ⬜ à venir |

---

### 🚩 Milestone `v1.0 – Version finale`

> **Description :**
> Finalisation, relecture, nettoyage du dépôt et publication d’une release stable.
>
> **Livrables attendus :**
>
> - Release v1.0.0
> - Pack de livraison (script complet, sauvegarde, README)

| Issue | Titre | Label principal | Branche prévue | État |
|-|-|-|-|-|
| #7    | Préparation de la livraison | `Tifosi-Clôture`      | `MonLucCo/issue7`     | ⬜ à venir |

---

## 🧰 Contenu attendu par issue

Chaque issue donne lieu à :

- une action concrète (tâche)
- un livrable ciblé (résultat traçable dans le dépôt)

| Issue | Tâches principales | Livrable attendu |
|-|-|-|
| #1 | Structuration, planification, Kanban, documentation de méthode | `README_process.md`, `README_building.md`, `README_plan.md`, labels, Kanban |
| #2 | Installation WAMP/XAMPP, accès phpMyAdmin, création base `tifosi` vide | Export de la base vide (`create_tifosi.sql`) |
| #3 | Reproduction du MCD fourni + élaboration MLD | Fichier `.drawio` ou image du MCD, script `mld.sql` si applicable |
| #4 | Écriture du script SQL avec tables + utilisateur | `create_tifosi.sql`, création utilisateur `tifosi` |
| #5 | Exploitation des données Excel + insertion | `insert_data.sql` prêt à charger les données |
| #6 | Requêtes SQL de test + sauvegarde de la BDD | `requetes_tests.sql`, `backup_tifosi.sql` |
| #7 | Vérification finale, clean des fichiers, publication de la release | README finaux, tag v1.0.0, export compressé si besoin |

---

## ✍️ Auteur

Planification structurée et pilotée par **PerLucCo**  
📌 Devoir N°10 – Centre Européen de Formation  
📫 contact : [contact.perlucco@gmail.com](mailto:contact.perlucco@gmail.com)

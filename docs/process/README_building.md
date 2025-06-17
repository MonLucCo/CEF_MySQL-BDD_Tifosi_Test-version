# Documentation README_building.md – Processus de Réalisation – Projet Tifosi (MySQL)

Ce document applique le cadre méthodologique défini dans [README_process.md](README_process.md) au projet **Tifosi (MySQL)**. Il permet de retracer la mise en œuvre concrète dans le dépôt, issue après issue, étape après étape, avec les jalons, les branches créées et les livrables produits.

---

- [Documentation README\_building.md – Processus de Réalisation – Projet Tifosi (MySQL)](#documentation-readme_buildingmd--processus-de-réalisation--projet-tifosi-mysql)
  - [🎯 Objectif du document](#-objectif-du-document)
  - [📊 État du projet](#-état-du-projet)
  - [⚙️ Etapes du projet](#️-etapes-du-projet)
    - [📦 Etape intiale : Amorçage du projet](#-etape-intiale--amorçage-du-projet)
    - [⚙️ Étapes itératives : Réalisation du projet](#️-étapes-itératives--réalisation-du-projet)
    - [🧾 Etape finale : Clôture du projet](#-etape-finale--clôture-du-projet)
  - [✍️ Auteur](#️-auteur)

---

## 🎯 Objectif du document

- Appliquer le cadre de travail ([README_process.md](README_process.md)) au projet.
- Documenter les étapes du projet Tifosi avec les livrables associés.
- Assurer une traçabilité claire entre issues, commits, branches, PR et jalons.

---

## 📊 État du projet

- ✅ Projet amorcé
- 🛠️ Structuration en place (issues, milestones, labels)
- ⏳ Étapes de modélisation en cours

## ⚙️ Etapes du projet

### 📦 Etape intiale : Amorçage du projet

- 📁 Initialisation du dépôt (`chore(init)`) :
  - 🛠️ création de l’arborescence `/sql`, `/docs`, `/docs/process`
  - 🧱 ajout des fichiers : [README.md](../../README.md), [LICENSE](../../LICENSE), fichiers `readme_*.md`
  - 🗂️ Upload du sujet : [docs/sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf](../sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf)
- 🛠️ Création du [Kanban Tifosi](https://github.com/users/MonLucCo/projects/3/views/1?layout=board) dans l’onglet “Projects” de Github
- 📘 Application du cadre méthodologique :
  - ✅ mise en oeuvre de la structure définie dans [README_process.md](README_process.md)
  - 🛠️ création des labels **tifosi-*** et création des milestones **v0.x à v1.0**
  - 🧱 ouverture et affectation de l’**Issue #1** (structuration initiale)

### ⚙️ Étapes itératives : Réalisation du projet

Le plan de réalisation détaillé est documenté dans [README_plan.md](README_plan.md) qui sert de _document de planification opérationnelle_ du projet.  
Il présente l’ensemble des issues structurées par jalon, avec leur objectif, leur branche, leurs labels et leur état de traitement.

> 📎 Voir le document de [planification opérationnelle](README_plan.md) pour le détail.

le tableau **synthétise l’état d’avancement global** et présente une situation actualisée de l’implémentation du projet.

| Milestone | Issues | État | Notes |
|--|--|-|-|
| `v0.1 – Structuration` | #1 | ✔️ terminé - 18/06 | Documentation projet finalisée, plan validé, Kanban actif |
| `v0.2 – Modélisation & base` | #2 à #5 | ⏳ en cours | Environnement validé, modélisation reproduite, scripts SQL exécutés |
| `v0.3 – Requêtes & livraison` | #6 | ⬜ à venir  | Requêtes validées, sauvegarde générée, livrables consolidés |
| `v1.0 – Version finale` | #7 | ⬜ à venir | Clôture du dépôt, publication de la release, archivage projet |

### 🧾 Etape finale : Clôture du projet

- Vérification de la complétude des livrables
- Livraison de la sauvegarde `backup_tifosi.sql`
- Validation de l’arborescence finale et des README
- Fermeture des issues et publication de la release `v1.0.0`

---

## ✍️ Auteur

Projet réalisé et structuré par **PerLucCo**  
📌 Devoir N°10 – Centre Européen de Formation  
📫 contact : [contact.perlucco@gmail.com](mailto:contact.perlucco@gmail.com)

---

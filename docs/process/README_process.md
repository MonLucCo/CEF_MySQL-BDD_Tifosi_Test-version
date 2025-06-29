# 📘 README_process.md — Cadre méthodologique global

> 🧭 **Méthodologie appliquée dans ce projet** :
> Planification par jalons (`v0.1` à `v1.0`), suivi rigoureux par `issue + branche + PR`, documentation versionnée, bonne pratique GitHub et livrables vérifiables.

---

- [📘 README\_process.md — Cadre méthodologique global](#-readme_processmd--cadre-méthodologique-global)
  - [🎯 Objectif du document](#-objectif-du-document)
  - [🧩 Recommandations de la méthode](#-recommandations-de-la-méthode)
    - [🗂️ Architecture recommandée d’un dépôt](#️-architecture-recommandée-dun-dépôt)
    - [🚀 Logique de suivi recommandée](#-logique-de-suivi-recommandée)
    - [🏷️ Conventions de nommage](#️-conventions-de-nommage)
  - [🔄 Déroulement de mise en œuvre](#-déroulement-de-mise-en-œuvre)
    - [🧱 Phase d’amorçage](#-phase-damorçage)
    - [🛠️ Structuration initiale du projet](#️-structuration-initiale-du-projet)
    - [⚙️ Cycles successifs de travail](#️-cycles-successifs-de-travail)
    - [🧾 Clôture documentaire](#-clôture-documentaire)
  - [🗃 Statut du projet](#-statut-du-projet)
  - [📎 Liens croisés](#-liens-croisés)
  - [✍️ Auteur](#️-auteur)

---

## 🎯 Objectif du document

- Énoncer une méthode stable et transférable à d'autres projets
- Définir une structure modulaire : répertoires, fichiers, logique de version
- Clarifier les conventions de nommage et de pilotage GitHub
- Capitaliser sur une méthode reproductible pour un travail autonome, structuré et traçable

---

## 🧩 Recommandations de la méthode

### 🗂️ Architecture recommandée d’un dépôt

```txt
/                  # racine avec README.md, LICENSE
│
├── /docs/         # documentation globale du projet
│   ├── README_docs.md
│   ├── /process/        # suivi de la méthode projet
│   │   ├── README_process.md     # ce document
│   │   ├── README_plan.md        # planification par jalons
│   │   └── issues_plan.md        # planification détaillée par ticket (optionnel)
│   └── /[modules]/       # mcd, mld, sql, etc.
│
├── /sql/          # scripts SQL et livrables techniques
│   ├── README_sql.md
│   └── sql-v0.x/  # versions successives
```

### 🚀 Logique de suivi recommandée

- Gestion via issues GitHub liées à des jalons `vX.X`
- Branches thématiques issues des issues (créées automatiquement via VS Code)
- Chaque PR correspond à une livraison traçable
- Documentation pilotée depuis `/docs/process/`

**Cycle schématique :**

```txt
Issue (#X) ➝ Création de branche ➝ Commits ➝ Push ➝ Pull Request ➝ Merge ➝ Issue close
```

### 🏷️ Conventions de nommage

| Élément      | Convention                   |
|--------------|-------------------------------|
| Branche      | MonLucCo/issueXX-[thème]     |
| Labels       | Tifosi-[thème]               |
| Jalons       | v0.1, v0.2 … v1.0            |
| Nom de PR    | 📦 Issue #X – [sujet]         |
| Commit final | `Fixes #X` ou `Closes #X`    |

---

## 🔄 Déroulement de mise en œuvre

### 🧱 Phase d’amorçage

**Commit initial `chore(init)`** :

- Arborescence minimale créée :
  - `/docs/`, `/docs/process/`
  - `README.md`, `LICENSE`, `README_docs.md`, `README_process.md`
- Dépôt initialisé sur `main`
- Ajout des premières issues (#1)

---

### 🛠️ Structuration initiale du projet

Issue #1 – Structuration documentaire et gestion du projet

Objectifs :

- Mise en place du Kanban GitHub
- Création du `README_process.md`, conventions et jalons
- Définition des conventions internes (branches, commits, versionnement)
- Planification globale par milestone via `README_plan.md`

---

### ⚙️ Cycles successifs de travail

Chaque milestone correspond à une livraison partielle :

- v0.1 → modèle de données (MCD / MRLD / MPD)
- v0.2 → insertion et peuplement (`csv`, `insert_data.sql`)
- v0.3 → tests métier, sauvegarde MySQL (`mysqldump`)
- v0.4 → harmonisation documentaire (README*, historiques)
- v1.0 → packaging et version pédagogique finale

Chaque cycle suit :

```txt
branche ➝ commit ➝ README spécifique ➝ historique ➝ tests ➝ validation finale
```

---

### 🧾 Clôture documentaire

Livraison finale = toutes les issues et PR fermées, avec :

- Tous les `README_*.md` à jour
- Les fichiers `CHANGELOG.md`, `HISTORIQUE_*.md` cohérents
- Archive livrable complète : `/sql-v1/` (optionnel)
- Documentation d'accompagnement “figée”

---

## 🗃 Statut du projet

- 🟢 Méthode appliquée sur tout le projet Tifosi (`v0.1` → `v1.0`)
- 🔒 Document figé en version documentaire finale (`v1.0`)
- 🔗 Références croisées dans `README_plan.md` et `README_docs.md`

---

## 📎 Liens croisés

- 📄 Planification par jalon : [`README_plan.md`](./README_plan.md)
- 📘 Sommaire général documentaire : [`README_docs.md`](../README_docs.md)

---

## ✍️ Auteur

Projet conçu et structuré par **PerLucCo**  
🎓 CEF – Devoir N°10 — base de données *Le Tifosi*

📫 Contact : [contact.perlucco@gmail.com](mailto:contact.perlucco@gmail.com)

---

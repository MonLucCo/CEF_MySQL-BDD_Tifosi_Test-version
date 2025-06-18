# 📘 Documentation README_process.md – Cadre méthodologique global

Ce document formalise une démarche générique d’organisation et de suivi de projet Git/GitHub dans un contexte pédagogique (objectif initial) avec une adaptation possible à un contexte professionnel (finalité).
Il fournit des conventions durables réutilisables pour tout projet structuré autour d’issues, de milestones, de branches et de livrables vérifiables.

---

- [📘 Documentation README\_process.md – Cadre méthodologique global](#-documentation-readme_processmd--cadre-méthodologique-global)
  - [🎯 Objectif du document](#-objectif-du-document)
  - [🧩 Recommandations de la méthode](#-recommandations-de-la-méthode)
    - [🗂️ Architecture recommandée d’un dépôt](#️-architecture-recommandée-dun-dépôt)
    - [🚀 Logique de suivi recommandée](#-logique-de-suivi-recommandée)
    - [🏷️ Conventions de nommage](#️-conventions-de-nommage)
  - [🔄 Déroulement de mise en oeuvre](#-déroulement-de-mise-en-oeuvre)
    - [🧱 Phase d'amorçage](#-phase-damorçage)
    - [🛠️ Première étape : organiser son projet](#️-première-étape--organiser-son-projet)
    - [⚙️ Etape itérative : plan et développement](#️-etape-itérative--plan-et-développement)
    - [🧾 Dernière étape itérative : clôture du projet](#-dernière-étape-itérative--clôture-du-projet)
  - [💬 Remarques](#-remarques)
  - [✍️ Auteur](#️-auteur)

---

## 🎯 Objectif du document

- Énoncer une méthode stable et transférable.
- Définir les règles de structuration du dépôt (répertoires, fichiers, suivi).
- Clarifier les principes de nommage, d’organisation des tâches et de livraison.
- Capitaliser sur une méthodologie reproductible pour de futurs projets similaires.

---

## 🧩 Recommandations de la méthode

### 🗂️ Architecture recommandée d’un dépôt

```txt
/          # racine avec README.md et LICENSE
│
├── /docs/             # documentation du projet
│   ├── readme_docs.md
│   ├── /process/      # suivi et méthode projet
│   │   ├── readme_process.md   # ce fichier – cadre méthodologique
│   │   ├── readme_building.md  # Réalisation contextualisée
│   │   └── issues_plan.md      # Liste et pilotage des issues
│   └── /[...]/        # Notes techniques spécifiques
│
├── /[thème de travail]/    # scripts SQL
│   ├── readme_[thème de travail].md    # documentation des travaux  
│   ├── ...                             # différents documents...  
```

### 🚀 Logique de suivi recommandée

  • Suivi via GitHub Issues liées à des milestones
  • Branche automatique par issue via Visual Studio Code
  • Chaque issue mène à un livrable vérifiable dans le dépôt
  • Documentation pilotée dans /docs/process/

### 🏷️ Conventions de nommage

| Élément | Convention |
|---------|------------|
| Branche | MonLucCo/issueXX-[description] |
| Labels | Tifosi-<thème> |
| Milestones | v0.1, v0.2, … jusqu’à v1.0 |
| Releases Git | vX.Y.Z selon état fonctionnel du projet |

---

## 🔄 Déroulement de mise en oeuvre

### 🧱 Phase d'amorçage

**Commit `chore(init)` – Initialisation du dépôt** :

- Création des dossiers :

  ```txt
  /[thème de travail]
  /docs
  /docs/process
  ```

- Ajout des fichiers :
  - `README.md` (présentation du projet)
  - `LICENSE` (MIT)
  - `[thème de travail]/readme_[thème de travail].md`
  - `docs/readme_docs.md`
  - `docs/process/readme_process.md` (ce fichier)
- Dépôt initialisé sur la branche `main`

---

### 🛠️ Première étape : organiser son projet

Création de l’**Issue n°1** :  
🎯 _Organisation du projet — Kanban, issues du projet, documentation process_

Objectifs :

- Créer et structurer les issues du backlog
- Mettre en place le tableau **GitHub Project** (Kanban)
- Compléter ce fichier avec :
  - le plan de jalons
  - les conventions de branches / commits
  - la structure des livrables

---

### ⚙️ Etape itérative : plan et développement

Ce projet suit une logique de branches + PR :

- `main` : branche stable et livrable
- `feature/*` : branches thématiques pour chaque évolution
- `docs/*` : branches spécifiques à la documentation
- Versionnement manuel (`v0.1.0`, etc.) dans les fichiers `readme_*.md`

---

### 🧾 Dernière étape itérative : clôture du projet

Réalisation de l’**Issue finale** :  
🎯 _inalisation du projet — contrôle, livrables, archivages_

Objectifs :

- S’assurer que tous les livrables sont présents :
  - différentes réalisations en version finale
  - README finaux
  - captures ou exports associés
- Vérifier l’état du tableau Kanban (tout doit être “Terminé”)
- Fermer toutes les issues
- Marquer la dernière release (v1.0.0)
- Archiver le dépôt ou produire une copie distante

---

## 💬 Remarques

Ce cadre peut être appliqué à d’autres projets de bases de données, de développement ou de documentation. Il constitue une référence pour stabiliser les pratiques de travail en mode projet.

## ✍️ Auteur

Projet conçu et documenté par **PerLucCo**
📫 contac : [contact.perlucco@gmail.com](mailto:contact.perlucco@gmail.com)
🧩 Contexte : Devoir N°10 – CEF, base de données Tifosi avec MySQL

---

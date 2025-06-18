# 📦 Outils MySQL utilisés dans le projet

Ce dossier `tools/` regroupe la documentation d’usage des outils MySQL employés lors du développement.

---

- [📦 Outils MySQL utilisés dans le projet](#-outils-mysql-utilisés-dans-le-projet)
  - [🔧 Outils concernés](#-outils-concernés)
  - [📘 Fonctionnalités documentées](#-fonctionnalités-documentées)
  - [🗂️ Arborescence](#️-arborescence)

---

## 🔧 Outils concernés

| Outil | Description |
|--|--|
| [MySQL Workbench](usage_wb.md) | Interface graphique pour conception et export |
| [phpMyAdmin](usage_phpma.md) | Interface web rapide pour gestion de base |

---

## 📘 Fonctionnalités documentées

Chaque outil est documenté pour les opérations suivantes :

- Création / suppression de **base de données**
- Création / suppression de **table**
- Création / suppression de **colonnes**
- **Export SQL** :
  - inclusion du schéma avec `CREATE DATABASE`
  - export de tables choisies uniquement
  - nommage personnalisé du fichier `.sql`
- **Import SQL** depuis un fichier existant

---

## 🗂️ Arborescence

```bash
tools/
├── `usage_phpma.md`   ← Procédures via phpMyAdmin
├── `usage_wb.md `     ← Procédures via MySQL Workbench
└── `README_tools.md`  ← Ce document
```

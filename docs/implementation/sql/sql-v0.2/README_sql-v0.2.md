# 📘 README_sql-v0.2.md — Construction progressive du chargement de données de la base Tifosi

Cette version regroupe les scripts liés à l’implémentation du **MPD v0.2** de manière itérative, structurée en sous-versions.

---

- [📘 README\_sql-v0.2.md — Construction progressive du chargement de données de la base Tifosi](#-readme_sql-v02md--construction-progressive-du-chargement-de-données-de-la-base-tifosi)
  - [🗂️ Sous-versions](#️-sous-versions)
  - [🔄 Journal de progression](#-journal-de-progression)
  - [📂 Contenu du dossier `sql-v0.2.0`](#-contenu-du-dossier-sql-v020)
  - [✅ Objectifs de la version `v0.2.0`](#-objectifs-de-la-version-v020)
  - [🧱 Prochaine étape](#-prochaine-étape)
  - [🔗 Références](#-références)

---

## 🗂️ Sous-versions

| Version | Objectif principal | Contenu technique et métier  |
|--|--|--|
| [sql-v0.2.0](./versions/sql-v0.2.0/README_data-v0.2.0.md) | Base complète — Chargement des tables simples | Tables `marques`, `boissons`, `ingredients`, `focaccias`, relation `focaccias_ingredients` |
| `sql-v0.2.1` | Base complète - chargement de toutes les données | à venir |

---

## 🔄 Journal de progression

Chaque sous-version est documentée indépendamment dans le dossier `/versions/`.
Un script exécutable est fourni à chaque étape, permettant un test incrémental dans MySQL.

---

## 📂 Contenu du dossier `sql-v0.2.0`

| Fichier / Dossier                     | Rôle                                                                |
|---------------------------------------|---------------------------------------------------------------------|
| `create_tifosi.sql`                   | Création de la base `tifosi` et des tables associées (MPD v0.2.0)   |
| `insert_data.sql`                     | Chargement partiel des données (`marques`, `ingredients`, etc.)     |
| `queries-test_v020.sql`               | Requêtes de test de cohérence (à compléter dans `#7`)               |
| `model_tifosi_v020.mwb`               | Modèle EER de la base (MPD v0.2.0)                                  |
| `model_tifosi_v020.mwb.png`           | Image du modèle EER                                                 |
| [README_data-v0.2.0.md](./versions/sql-v0.2.0/README_data-v0.2.0.md) | Documentation du processus de chargement des données  |
| [README_test-v0.2.0.md](./versions/sql-v0.2.0/README_test-v0.2.0.md) | Documentation des requêtes de test |
| `datas-csv/`                          | Données `.csv` stables utilisées pour le chargement des tables de la base `tifosi` |

---

## ✅ Objectifs de la version `v0.2.0`

- Créer une base `tifosi` avec un sous-ensemble stable de tables
- Charger les données de référence suivantes :
  - `marques`
  - `ingredients`
  - `boissons` (avec FK vers `marques`)
  - `focaccias`
  - `focaccias_ingredients` (relation N:N)
- Préparer les tests de cohérence (requêtes simples)
- Documenter le processus de chargement et les contraintes techniques (`local_infile`, encodage, séparateur `;`)

---

## 🧱 Prochaine étape

La version `v0.2.0` constitue une **base stable partielle**.  
Une reprise du cycle MCD → MLD → MPD est prévue pour corriger les incohérences identifiées (cf. issue `#6` et sub-issues à venir).
La version `v0.2.1` reprendra la réalisation des scripts à partir des modèles corrigés.

---

## 🔗 Références

- Issue liée : `#6 (partie 1)` — Chargement partiel des données

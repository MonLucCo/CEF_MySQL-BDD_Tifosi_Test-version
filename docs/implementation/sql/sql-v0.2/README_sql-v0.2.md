# 📘 README_sql-v0.2.md — Construction progressive du chargement de données de la base Tifosi

Cette version regroupe les scripts liés à l’implémentation du **MPD v0.2** de manière itérative, structurée en sous-versions.

---

- [📘 README\_sql-v0.2.md — Construction progressive du chargement de données de la base Tifosi](#-readme_sql-v02md--construction-progressive-du-chargement-de-données-de-la-base-tifosi)
  - [🗂️ Sous-versions disponibles](#️-sous-versions-disponibles)
  - [🔄 Journal de progression](#-journal-de-progression)
  - [📦 Structure du répertoire `sql-v0.2/`](#-structure-du-répertoire-sql-v02)
  - [✅ Objectifs de la version `v0.2.x`](#-objectifs-de-la-version-v02x)
  - [🧱 Prochaine étape](#-prochaine-étape)
  - [🔗 Références](#-références)

---

## 🗂️ Sous-versions disponibles

| Version         | Objectif principal                            | Liens associés |
|-----------------|-----------------------------------------------|----------------|
| [`v0.2.0`](./versions/sql-v0.2.0/README_data-v0.2.0.md) | Chargement partiel (données simples)              | `create_tifosi.sql`, `insert_data.sql`, `focaccias_ingredients.csv`, `model_tifosi_v020.mwb` |
| [`v0.2.1`](./versions/sql-v0.2.1/README_data-v0.2.1.md) | Chargement complet (12 tables + jeux de test)     | `datas-tests.xlsx`, `insert_data.sql`, `queries-test_v021.sql`, `model_tifosi_v021.mwb` |

---

## 🔄 Journal de progression

Chaque sous-version est documentée indépendamment dans le dossier `/versions/`.
Un script exécutable est fourni à chaque étape, permettant un test incrémental dans MySQL.

---

## 📦 Structure du répertoire `sql-v0.2/`

Chaque sous-version dispose de son propre dossier avec :

- `create_tifosi.sql` → structure des tables
- `insert_data.sql` → chargement progressif des données `.csv`
- `queries-test_*.sql` → tests de validation métier & SQL
- `model_tifosi_v0xx.mwb` → modèle visuel
- `datas-csv/` → jeux de données au format `.csv`
- `README_data-*.md` / `README_test-*.md` → documentation
- `DATAS-TESTING.md` → synthèse transversale des données utilisées (uniquement pour v0.2.1)

---

## ✅ Objectifs de la version `v0.2.x`

- Créer une base `tifosi` conforme au modèle MPD issu du MCD/MCDR/MRLD v2
- Implémenter le schéma relationnel avec ses contraintes (PK, FK, NOT NULL, etc.)
- Charger progressivement les données dans les 13 tables à l’aide de fichiers `.csv`
- Vérifier l'intégrité fonctionnelle des relations binaires et ternaires via requêtes SQL
- Documenter les jeux de données injectés (`DATAS-TESTING.md`) et le processus d’exécution

---

## 🧱 Prochaine étape

> La version `v0.2.1` constitue une **base stable complète**, incluant le modèle, les scripts, le jeu de données, la documentation, et les tests.  
> Elle peut servir de **socle de référence** pour :

- le maquettage de vues SQL,
- le prototypage de requêtes pour API (version `v0.3.0` à venir),
- la mise en œuvre de contrôles applicatifs côté front/back (validation métier, filtrage, projection, etc.).

La branche `sql-v0.2` est donc **clôturable**, sauf retours correctifs mineurs ou extensions explicites (e.g. alimentation dynamique ou automatisée).

---

## 🔗 Références

- ✔️ [`MRLD-v2_tifosi.drawio.png`](../../model/MRLD-v2_tifosi.drawio.png) — modèle logique source
- 🧠 Issue fonctionnelle : `#6` — Chargement progressif via CSV (v0.2) et `#6.1` — Insertion complète des données sur structure corrigée (sql-v0.2.1)
- 📘 Changelog SQL : [`HISTORIQUE_sql.md`](./HISTORIQUE_sql.md)
- 🧪 Jeu de test synthétique : [`DATAS-TESTING.md`](./versions/sql-v0.2.1/DATAS-TESTING.md)
- 🔁 Modèles visuels : `model_tifosi_v020.mwb`, `model_tifosi_v021.mwb` + exports `.png`

---

# 📚 Documentation du projet Tifosi

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 29 juin 2025  

Ce dossier regroupe tous les documents de référence du projet : consignes, notes, réflexions, schémas, tests, etc.

> 🧭 Version courante du projet : **v0.3 – Sauvegarde & validation métier**  
> 🔎 Pour le détail des évolutions, consulter la section [🔄 Suivi des évolutions par domaine](#-suivi-des-évolutions-par-domaine).

---

- [📚 Documentation du projet Tifosi](#-documentation-du-projet-tifosi)
  - [🧾 Contenu](#-contenu)
  - [🔄 Mises à jour](#-mises-à-jour)
  - [🧩 Versions de référence par niveau](#-versions-de-référence-par-niveau)
  - [🔄 Suivi des évolutions par domaine](#-suivi-des-évolutions-par-domaine)
    - [📈 Situation d'avancement synthétique](#-situation-davancement-synthétique)
      - [✅ Réalisé — Cycle structurel v0.1.x (clôturé)](#-réalisé--cycle-structurel-v01x-clôturé)
      - [✅ Réalisé — Cycle données v0.2.x](#-réalisé--cycle-données-v02x)
      - [✅ Réalisé — Cycle validation métier v0.3](#-réalisé--cycle-validation-métier-v03)
      - [🔜 Prochain cycle — packaging pédagogique \& vues](#-prochain-cycle--packaging-pédagogique--vues)

---

## 🧾 Contenu

- `README_docs.md` : ce document – point d’entrée vers la documentation
- [Sujet-Devoir10_BddTifosiAvecMySQL.pdf](./sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf) : énoncé officiel du devoir (accès : `./sources/`)
- [planification du projet](./process/README_plan.md) : plan de réalisation et d'avancement du projet
- [README_process.md](./process/README_process.md) : journal et méthode projet
- [README_tools.md](./tools/README_tools.md) : outils et usages pour l'exploitation du projet

- [MCD_tifosi.md](./implementation/mcd/MCD_tifosi.md) : Modèle Conceptuel de Données (v2.1)
- [MRLD_tifosi.md](./implementation/mld/MRLD_tifosi.md) : Modèle Relationnel Logique (v2.0)
- [MPD-v0.1.3_tifosi.md](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/MPD-v0.1.3_tifosi.md) : MPD final sans données
- [README_test-v0.1.3.md](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/README_test-v0.1.3.md) : validation structurelle v0.1.3

- [README_sql.md](./implementation/sql/README_sql.md) : suivi des versions SQL
- [README_sql-v0.2.md](./implementation/sql/sql-v0.2/README_sql-v0.2.md) : documentation du chargement partiel (v0.2)
- [README_data-v0.2.0.md](./implementation/sql/sql-v0.2/versions/sql-v0.2.0/README_data-v0.2.0.md) : génération des données `.csv`
- [README_test-v0.2.0.md](./implementation/sql/sql-v0.2/versions/sql-v0.2.0/README_test-v0.2.0.md) : tests partiels sur entités chargées

🔹 Nouveaux livrables v0.3 :
- [README_sql-v0.3.md](./implementation/sql/sql-v0.3/README_sql-v0.3.md) : livraison complète avec sauvegarde, tests, et documentation
- [README_test-v0.3.md](./implementation/sql/sql-v0.3/README_test-v0.3.md) : validation métier post-restauration
- [README_backup.md](./implementation/sql/sql-v0.3/README_backup.md) : procédure `mysqldump` et vérification

---

## 🔄 Mises à jour

Ce fichier est mis à jour à chaque **merge de PR liée à une version ou un jalon documentaire**.

Dernière mise à jour intégrée : **v0.3 – sauvegarde complète, validation métier et documentation croisée**  
📌 Issue concernée : `#7 – sauvegarde, requêtes, validation`

---

## 🧩 Versions de référence par niveau

| Niveau                   | Version stable | Document de référence |
|--------------------------|----------------|------------------------|
| **MCD** (_conceptuel_)   | v2.1           | [`MCD_tifosi.md`](./implementation/mcd/MCD_tifosi.md) |
| **MRLD** (_relationnel logique_) | v2.0 | [`MRLD_tifosi.md`](./implementation/mld/MRLD_tifosi.md) |
| **MPD** (_physique — structure sans données_) | v0.1.3 | [`MPD-v0.1.3_tifosi.md`](./implementation/sql/sql-v0.1/versions/sql-v0.1.3/MPD-v0.1.3_tifosi.md) |
| **SQL** (_structure + insertions + tests_) | v0.3 | [`README_sql-v0.3.md`](./implementation/sql/sql-v0.3/README_sql-v0.3.md) |

---

## 🔄 Suivi des évolutions par domaine

| Domaine | Historique |
|--|--|
| 📦 Structure globale | [`CHANGELOG.md`](../CHANGELOG.md) |
| 🧱 MCD | [`HISTORIQUE_mcd.md`](./implementation/mcd/HISTORIQUE_mcd.md) |
| 🧩 MRLD | [`HISTORIQUE_mld.md`](./implementation/mld/HISTORIQUE_mld.md) |
| 🧰 SQL | [`HISTORIQUE_sql.md`](./implementation/sql/HISTORIQUE_sql.md) |

---

### 📈 Situation d'avancement synthétique

#### ✅ Réalisé — Cycle structurel v0.1.x (clôturé)

- Modèles livrés : `MCD v2.1`, `MRLD v1.1`, `MPD v0.1.3`
- Création de la base `tifosi`, utilisateur et structure sans données
- Tests de structure validés (`test_v013.sql`, `queries-test_v013.sql`)
- Documentation : `README_test-v0.1.3.md`, schéma EER `.mwb`

#### ✅ Réalisé — Cycle données v0.2.x

- Objectif : insertion maîtrisée des données à partir des fichiers `.csv`
- Version `v0.2.0` : chargement partiel (boissons, focaccias, ingrédients)
- Anomalie détectée → reprise du MRLD ➤ `MRLD v2.0`
- Version `v0.2.1` : insertion complète, avec :
  - scripts corrigés : `create_tifosi.sql`, `insert_data.sql`
  - modèle EER final `model_tifosi_v021-final.mwb`
  - documentation : `README_sql-v0.2.md`, `README_data-v0.2.0.md`, `README_test-v0.2.0.md`

#### ✅ Réalisé — Cycle validation métier v0.3

- Requêtes métier testées via `queries_test_v03.sql`
- Sauvegarde complète par `mysqldump`
- Validation post-restauration (`result-test-queries_v03-*.txt`)
- Documentation croisée :
  - `README_sql-v0.3.md`
  - `README_test-v0.3.md`
  - `README_backup.md`
- Issue clôturée : `#7`

#### 🔜 Prochain cycle — packaging pédagogique & vues

- Vues SQL (exploitation / visualisation)
- README simplifié pour utilisateur final
- Packaging versionnée (`sql-v1/`, `TifosiDB.zip`…)

---

# 🧾 Historique — Modélisation MCD (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 27 juin 2025  

---

- [🧾 Historique — Modélisation MCD (Tifosi)](#-historique--modélisation-mcd-tifosi)
  - [Versions du MCD](#versions-du-mcd)
    - [✅ Version V1 – Analyse initiale de la reprise](#-version-v1--analyse-initiale-de-la-reprise)
    - [✅ Version v1.1 – Ajout attribut `cp_client` (modèle simple, patch correctif)](#-version-v11--ajout-attribut-cp_client-modèle-simple-patch-correctif)
    - [✅ Version v2.1 – Intégration `jours` et correction `clients`](#-version-v21--intégration-jours-et-correction-clients)
  - [Phases de réalisation du MCD](#phases-de-réalisation-du-mcd)
    - [✅ Phase 3c – Structuration initiale du MCD](#-phase-3c--structuration-initiale-du-mcd)
    - [✅ Phase 3d – Évolution MCD v2 (centralisation de la date)](#-phase-3d--évolution-mcd-v2-centralisation-de-la-date)
    - [✅ Phase 4 – Évolution MCD v2.1 (ajout attribut `cp_client`)](#-phase-4--évolution-mcd-v21-ajout-attribut-cp_client)
    - [✅ Phase 5 – Consolidation de la modélisation — 2025.06.27](#-phase-5--consolidation-de-la-modélisation--20250627)

---

## Versions du MCD

### ✅ Version V1 – Analyse initiale de la reprise

- [x] Schéma importé depuis le sujet, repris dans `draw.io`
- [x] Analyse globale (`versions/MCD-vo-reprise/README_analyse.md`)
- [x] Étude des incohérences sémantiques (`versions/MCD-vo-reprise/mcd-tifosi_cohérence.md`)
- [x] Analyse des entités et relations (`versions/MCD-vo-reprise/mcd-tifosi_analyse.md`)
- [x] Image `versions/MCD-vo-reprise/tifosi_mcd_reprise-v0.png` générée depuis le modèle final
- [X] Version de référence MCD v1
  - [X] Schéma de référence (`schemas/mcd-v1_tifosi.drawio.png`)
  - [X] Modèle de référence (`versions/MCD-v1_tifosi.md`)

🗓️ Commit : [`7cdc12fb`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/7cdc12fb)
🗓️ Commit : [`62934d62`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/62934d62)
📎 Issue liée : #4

### ✅ Version v1.1 – Ajout attribut `cp_client` (modèle simple, patch correctif)

- [x] Schéma : `schemas/MCD-v1.1_tifosi.drawio.png`  
- [x] Modèle : `versions/MCD-v1.1_tifosi.md`  
- 🔁 Mise à jour mineure de v1 (introduction `cp_client` dans `clients`)

🗓️ Commit : [à référencer après commit]
📎 Issue liée : #4.1

### ✅ Version v2.1 – Intégration `jours` et correction `clients`

- [x] Schéma : `schemas/MCD-v2.1_tifosi.drawio.png`  
- [x] Modèle : `versions/MCD-v2.1_tifosi.md`  
- 🔁 Ajout de l'entité `jours` pour factoriser la date dans les actions `paye` et `achète` + intégration `cp_client`

🗓️ Commit : [`dd4de123`]((https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/dd4de123))
📎 Issue liée : #16

---

## Phases de réalisation du MCD

### ✅ Phase 3c – Structuration initiale du MCD

- Déplacement du dossier `mcd/` dans `/implementation/mcd/versions/MCD-v0-reprise/`
- Création du document central `MCD_tifosi.md`
- Rédaction de la première version instanciée : `MCD-v1_tifosi.md`
- Génération du schéma associé : `MCD-v1_tifosi.drawio.png`

🗓️ Commits associés : [`7cdc12fb`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/7cdc12fb) et [`62934d62`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/62934d62)

---

### ✅ Phase 3d – Évolution MCD v2 (centralisation de la date)

- Ajout d’une entité `jours` dans le MCD
- Passage des relations `paye` et `achète` en relations ternaires
- Rédaction de `MCD-v2_tifosi.md`
- Schéma modifié : `MCD-v2_tifosi.drawio.png`

🗓️ Commit : [`2e610058`]  
📎 Issue : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)

---

### ✅ Phase 4 – Évolution MCD v2.1 (ajout attribut `cp_client`)

- Ajout d'un attribut `cp_client` de l'entité `clients` dans le MCD
- Rédaction de `MCD-v2.1_tifosi.md`
- Schéma modifié : `MCD-v2.1_tifosi.drawio.png`

🗓️ Commit : [`dd4de123`]((https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/dd4de123))
📎 Issue : [#16](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/16)

---

### ✅ Phase 5 – Consolidation de la modélisation — 2025.06.27

Face à un problème de cohérence identifié lors de l’insertion de données dans la base `tifosi`, une étape non prévue de ré-analyse a été engagée afin de consolider la modélisation.

Objectifs atteints :

- Création du schéma `MCD-v1.1` (ajout de l’attribut `cp_client`) et mise à jour de la version v1.
- Validation formelle de la version `MCD-v2.1` introduisant l'entité `jours` pour centraliser la notion de date.
- Reformulation littérale complète de l’ensemble des relations (6 binaires et 2 ternaires).
- Création du document [`modelisation_relations.md`](./analyse/modelisation_relations.md) pour l’expression textuelle rigoureuse des relations du MCD.
- Comparaison des versions v1.1 et v2.1 dans `/analyse/`.
- Rédaction du document [`choix_modele.md`](./analyse/choix_modele.md) pour conclure en faveur du modèle **MCD v2.1**, retenu comme base pour la production du MLD.

---

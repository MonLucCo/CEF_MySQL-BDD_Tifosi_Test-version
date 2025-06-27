# 🧾 Historique — Modèle Relationnel Logique de Données (MRLD)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

---

- [🧾 Historique — Modèle Relationnel Logique de Données (MRLD)](#-historique--modèle-relationnel-logique-de-données-mrld)
  - [Versions du MLD](#versions-du-mld)
    - [✅ V1 – Construction du MRLD initial (2025-06-22)](#-v1--construction-du-mrld-initial-2025-06-22)
    - [✅ V1.1 – Construction du MRLD initial (2025-06-22)](#-v11--construction-du-mrld-initial-2025-06-22)
    - [✅ V2 – Modèle consolidé à partir du MCD v2.1 (2025-06-27)](#-v2--modèle-consolidé-à-partir-du-mcd-v21-2025-06-27)
  - [Phases de réalisation du MLD](#phases-de-réalisation-du-mld)
    - [✅ Phase 3a – MRLD v0.1 : transposition brute du MCD v1](#-phase-3a--mrld-v01--transposition-brute-du-mcd-v1)
    - [✅ Phase 3b – MRLD v0.2 : centralisation technique du champ `jour`](#-phase-3b--mrld-v02--centralisation-technique-du-champ-jour)
    - [✅ Phase 3f – MRLD v1 : consolidation finale et modélisation complète](#-phase-3f--mrld-v1--consolidation-finale-et-modélisation-complète)
    - [✅ Phase 4 – MRLD v1.1 : consolidation finale et modélisation complète](#-phase-4--mrld-v11--consolidation-finale-et-modélisation-complète)
    - [✅ Phase 5 – MRLD v2 : régénération à partir du MCD factorisé](#-phase-5--mrld-v2--régénération-à-partir-du-mcd-factorisé)

---

## Versions du MLD

📌 Issue : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)
📌 - Sub-Issue : [#16](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/16)

### ✅ V1 – Construction du MRLD initial (2025-06-22)

>⚠️ Cette version de référence sera construite après l’analyse complète des évolutions v0.1 → v0.x, en clôture de l’issue #4.

- Transposition du MCD v1 analysé (cf. `README_analyse.md`)
- Identification des entités + attributs → tables
- Création des clés primaires pour chaque table
- Modélisation des relations n,n par entités associatives
- Intégration des clés étrangères et respect des cardinalités
- Attribution de noms cohérents selon conventions `id_<entité>`

📎 Fichier produit : `MRLD_tifosi.md`  
🗓️ Commit : [00a134cf](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/00a134cf)  
📌 Issue liée : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)

### ✅ V1.1 – Construction du MRLD initial (2025-06-22)

>⚠️ Cette version de référence est construite après l'évolution du MCD v2.1.

- Transposition du MCD v2.1 (correction pour complétude des attributs des entités)
- Reprise et complétude du MRLD v1
- Renommage des tables de relations ternaires

📎 Fichier produit : `MRLD_tifosi.md`  
🗓️ Commit : [`<hash8>`](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/[`<hash8>`])  
📌 Issue liée : [#4 / #16](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/16)

### ✅ V2 – Modèle consolidé à partir du MCD v2.1 (2025-06-27)

> Nouvelle version établie à partir de la structure factorisée validée du MCD v2.1, intégrant deux relations ternaires (`achète`, `paye`) liées à l’entité `jours`.

- Reprise complète des entités et relations issues des versions précédentes
- Clés primaires composées pour toutes les associations (binaires et ternaires)
- Schéma factorisé et aligné sur les bonnes pratiques relationnelles (forme 4NF)
- Cohérence renforcée dans la désignation des tables et attributs
- Document structuré avec icônes, typage clair et nomenclature unifiée

📎 Fichier produit : `MRLD-v2_tifosi.md`  
📸 Schéma associé : `mrld-v2_tifosi.drawio.png`  
📌 Issue liée : [#4.1](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/25)

---

## Phases de réalisation du MLD

### ✅ Phase 3a – MRLD v0.1 : transposition brute du MCD v1

- Création des entités logiques équivalentes aux entités du MCD
- Intégration des relations `paye` et `achète` avec champ `jour` dupliqué
- Clés primaires + clés étrangères positionnées selon convention
- Fichier : `MRLD-v0.1_tifosi.md`  
- Schéma : `MRLD-v0.1_tifosi.drawio.png`

---

### ✅ Phase 3b – MRLD v0.2 : centralisation technique du champ `jour`

- Ajout d’une table `jours`
- Remplacement des attributs `jour` par des clés étrangères `jour_id`
- Mise en évidence d’un problème conceptuel
- Fichier : `MRLD-v0.2_tifosi.md`  
- Schéma : `MRLD-v0.2_tifosi.drawio.png`

---

### ✅ Phase 3f – MRLD v1 : consolidation finale et modélisation complète

- Description de la référence :
  - Transposition du MCD v2 dans un MRLD stabilisé, prêt pour implémentation physique.
  - Intégration des relations ternaires achète et paye sous forme de tables clients_focaccias et clients_menus à 3 clés étrangères.
  - Structuration cohérente de la table jours :
    - champ date_jour laissé libre entre DATE / DATETIME / TIMESTAMP,
    - permettant d’adapter la granularité temporelle du MPD à l’unicité attendue de l’action (jour ou instant).
  - Respect des conventions syntaxiques : noms au pluriel, snake_case, attributs clairs, clés composées explicites.
  - Document MRLD-v1_tifosi.md rendu autoporteur, intégrant une description rigoureuse des entités, relations, et contraintes.
- Fichier produit : `MRLD-v1_tifosi.md`
- Schéma : `mrld-v1_tifosi.drawio.png`

> Cette version sert de socle final pour la transcription physique dans le MPD.

---

### ✅ Phase 4 – MRLD v1.1 : consolidation finale et modélisation complète

- Description de la référence :
  - Transposition du MCD v2.1 dans un MRLD stabilisé, prêt pour implémentation physique.
  - Reprise du MRLD v1 avec :
    - complétude des attributs de la table `clients`
    - renommage des tables ternaires avec le nom de chaque table liée
    - Respect des conventions syntaxiques : noms au pluriel, snake_case, attributs clairs, clés composées explicites.
  - Document MRLD-v1.1_tifosi.md rendu autoporteur, intégrant une description rigoureuse des entités, relations, et contraintes.
- Fichier produit : `MRLD-v1.1_tifosi.md`
- Schéma : `MRLD-v1.1_tifosi.drawio.png`

> Cette version sert de socle final pour la transcription physique dans le MPD (à partir de MPD v0.1.3).

---

### ✅ Phase 5 – MRLD v2 : régénération à partir du MCD factorisé

- Génération complète du modèle relationnel logique à partir du MCD v2.1 retenu comme version de référence
- Remise à plat des relations associatives :
  - passage explicite à des tables ternaires `clients_focaccias_jours` et `clients_jours_menus`
  - recours systématique aux **clés primaires composées**
- Clarification des tables binaires : `focaccias_menus`, `focaccias_ingredients`, `menus_boissons`
- Documentation enrichie (`MRLD-v2_tifosi.md`) avec typage SQL suggéré et conventions d’implémentation
- Rendu final prêt à alimenter le MPD (issue suivante #5.1)

📎 Fichier : `MRLD-v2_tifosi.md`  
📸 Schéma : `mrld-v2_tifosi.drawio.png`

> Cette version sert de socle final pour la transcription physique dans le MPD (à partir de MPD v0.2.1).

---

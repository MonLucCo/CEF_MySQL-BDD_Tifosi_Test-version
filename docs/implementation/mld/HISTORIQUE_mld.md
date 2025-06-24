# 🧾 Historique — Modèle Relationnel Logique de Données (MRLD)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

---

- [🧾 Historique — Modèle Relationnel Logique de Données (MRLD)](#-historique--modèle-relationnel-logique-de-données-mrld)
  - [Versions du MLD](#versions-du-mld)
    - [✅ V1 – Construction du MRLD initial (2025-06-22)](#-v1--construction-du-mrld-initial-2025-06-22)
    - [✅ V1.1 – Construction du MRLD initial (2025-06-22)](#-v11--construction-du-mrld-initial-2025-06-22)
  - [Phases de réalisation du MLD](#phases-de-réalisation-du-mld)
    - [✅ Phase 3a – MRLD v0.1 : transposition brute du MCD v1](#-phase-3a--mrld-v01--transposition-brute-du-mcd-v1)
    - [✅ Phase 3b – MRLD v0.2 : centralisation technique du champ `jour`](#-phase-3b--mrld-v02--centralisation-technique-du-champ-jour)
    - [✅ Phase 3f – MRLD v1 : consolidation finale et modélisation complète](#-phase-3f--mrld-v1--consolidation-finale-et-modélisation-complète)
    - [✅ Phase 4 – MRLD v1.1 : consolidation finale et modélisation complète](#-phase-4--mrld-v11--consolidation-finale-et-modélisation-complète)

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

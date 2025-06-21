# 🧾 Historique — Modèle Relationnel Logique de Données (MRLD)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 19 juin 2025  

---

- [🧾 Historique — Modèle Relationnel Logique de Données (MRLD)](#-historique--modèle-relationnel-logique-de-données-mrld)
  - [Versions du MLD](#versions-du-mld)
    - [✅ V1 – Construction du MRLD initial (2025-06-XX)](#-v1--construction-du-mrld-initial-2025-06-xx)
  - [Phases de réalisation du MLD](#phases-de-réalisation-du-mld)
    - [✅ Phase 3a – MRLD v0.1 : transposition brute du MCD v1](#-phase-3a--mrld-v01--transposition-brute-du-mcd-v1)
    - [✅ Phase 3b – MRLD v0.2 : centralisation technique du champ `jour`](#-phase-3b--mrld-v02--centralisation-technique-du-champ-jour)

---

## Versions du MLD

### ✅ V1 – Construction du MRLD initial (2025-06-XX)

>⚠️ Cette version de référence sera construite après l’analyse complète des évolutions v0.1 → v0.x, en clôture de l’issue #4.

- Transposition du MCD v1 analysé (cf. `README_analyse.md`)
- Identification des entités + attributs → tables
- Création des clés primaires pour chaque table
- Modélisation des relations n,n par entités associatives
- Intégration des clés étrangères et respect des cardinalités
- Attribution de noms cohérents selon conventions `id_<entité>`

📎 Fichier produit : `MRLD_tifosi.md`  
🗓️ Commit : [`<hash8>`](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/[`<hash8>`])  
📌 Issue liée : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)

---

## Phases de réalisation du MLD

### ✅ Phase 3a – MRLD v0.1 : transposition brute du MCD v1

- Création des entités logiques équivalentes aux entités du MCD
- Intégration des relations `paye` et `achète` avec champ `jour` dupliqué
- Clés primaires + clés étrangères positionnées selon convention
- Fichier : `MRLD-v0.1_tifosi.md`  
- Schéma : `mrld-v0.1_tifosi.drawio.png`

---

### ✅ Phase 3b – MRLD v0.2 : centralisation technique du champ `jour`

- Ajout d’une table `jours`
- Remplacement des attributs `jour` par des clés étrangères `jour_id`
- Mise en évidence d’un problème conceptuel
- Fichier : `MRLD-v0.2_tifosi.md`  
- Schéma : `mrld-v0.2_tifosi.drawio.png`

📌 Issue : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)

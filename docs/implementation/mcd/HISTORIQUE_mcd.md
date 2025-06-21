# 🧾 Historique — Modélisation MCD (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 21 juin 2025  

---

- [🧾 Historique — Modélisation MCD (Tifosi)](#-historique--modélisation-mcd-tifosi)
  - [Versions du MCD](#versions-du-mcd)
    - [✅ Version V1 – Analyse initiale de la reprise](#-version-v1--analyse-initiale-de-la-reprise)
  - [Phases de réalisation du MCD](#phases-de-réalisation-du-mcd)
    - [✅ Phase 3c – Structuration initiale du MCD](#-phase-3c--structuration-initiale-du-mcd)
    - [✅ Phase 3d – Évolution MCD v2 (centralisation de la date)](#-phase-3d--évolution-mcd-v2-centralisation-de-la-date)

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

🗓️ Commit : [`à compléter après le commit`]  
📎 Issue : [#4](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/4)

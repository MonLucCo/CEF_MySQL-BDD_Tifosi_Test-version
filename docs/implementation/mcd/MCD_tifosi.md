# 🧾 MCD — Modèle Conceptuel de Données (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 21 juin 2025  

---

## 📘 Objectif

Ce document centralise les différentes versions du **Modèle Conceptuel de Données (MCD)** du projet Tifosi, depuis sa phase de reprise initiale (`MCD-v0-reprise`) jusqu’aux versions construites, validées et documentées.

Chaque version fait l’objet d’un fichier dédié, stocké dans `/versions/`, et associé à un schéma visuel dans `/schemas/`.

---

## 📚 Reprise initiale

La **reconstitution du modèle de départ** s’appuie sur le sujet pédagogique fourni (`Sujet-Devoir10_BddTifosiAvecMySQL.pdf`).  
Cette phase préliminaire est conservée dans :  
📁 [`versions/MCD-v0-reprise/`](./versions/MCD-v0-reprise/)

Elle contient :

- un schéma complet du MCD implicite,
- des vues restreintes exploratoires,
- un fichier d’historique retraçant le processus (`mcd-historique.md`)

---

## 🧭 Versions structurées

| Version | Objectif principal | Document |
|---------|---------------------|----------|
| v1      | MCD instancié à partir du sujet, sans restructuration | [MCD-v1_tifosi.md](./versions/MCD-v1_tifosi.md) |
| v2      | Centralisation de `jour` via entité dédiée + clarification des actions client | [MCD-v2_tifosi.md](./versions/MCD-v2_tifosi.md) |
| v2.1    | Ajout attribut `cp_client` dans l'entité `clients` | [MCD-v2.1_tifosi.md](./versions/MCD-v2.1_tifosi.md) |

---

## 📐 Règles et conventions

- Entités : nom au singulier
- Relations : verbes à l’infinitif, explicites (`paye`, `achète`, `comprend`, etc.)
- Attributs : `snake_case`, typés, cohérents avec le futur MLD
- Cardinalités explicitées dans chaque fichier versionné

---

## 🖼️ Schémas visuels

Les schémas `MCD-v*.drawio.png` sont stockés dans :  
📁 [`schemas/`](./schemas/)

Ils sont :

- **éditables** avec l’extension Draw.io dans Visual Studio Code,
- **affichables** dans GitHub comme image,
- **synchronisés** avec chaque version de fichier `.md`.

---

## 📎 Références croisées

- 🔁 Évolution logique : [`MRLD_tifosi.md`](../../mrld-versions/MRLD_tifosi.md)
- 📄 Sujet source : [`Sujet-Devoir10_BddTifosiAvecMySQL.pdf`](../../../../sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf)

---

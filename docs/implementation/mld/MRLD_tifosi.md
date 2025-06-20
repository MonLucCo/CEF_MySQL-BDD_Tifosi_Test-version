# 🧾 MRLD — Modèle Relationnel Logique de Données (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 20 juin 2025  

---

- [🧾 MRLD — Modèle Relationnel Logique de Données (Tifosi)](#-mrld--modèle-relationnel-logique-de-données-tifosi)
  - [📘 Contexte](#-contexte)
  - [📐 Conventions de nommage adoptées](#-conventions-de-nommage-adoptées)
  - [📎 Références utilisées](#-références-utilisées)
  - [🧭 Versions successives](#-versions-successives)
  - [📚 MRLD de référence](#-mrld-de-référence)
    - [🧩 MRLD v0.1 — Transposition brute](#-mrld-v01--transposition-brute)

---

## 📘 Contexte

Ce document trace l’évolution complète du modèle logique de données (MRLD) issu du MCD.
Il présente le cheminement de réflexion et d’optimisation à travers les itérations (v0.1 → v0.x) pour aboutir à une version stable (v1).

Chaque version est documentée dans un fichier dédié.

---

## 📐 Conventions de nommage adoptées

Inspirée des recommandations de [LaConsole.dev](https://www.laconsole.dev) et des supports CNAM / Gustave Eiffel :

- Tables : **pluriel**, `snake_case`
- Attributs : **singulier**, `snake_case`
- Clés primaires : `id_<entité>`
- Clés étrangères : `#<entité>_id` (notation logique)
- Tables associatives : `<entité1>_<entité2>`, **ordre alphabétique**

---

## 📎 Références utilisées

- 🌐 [LaConsole.dev – Modélisation relationnelle](https://www.laconsole.dev/)
- 🌐 [Grafikart — MCD & MLD](https://grafikart.fr/tutoriels/sql-mcd-mld-1989)
- 🌐 PDF CNAM Gustave Eiffel — Sujet Devoir 10  
  ↪️ `sources/Sujet-Devoir10_BddTifosiAvecMySQL.pdf`

---

## 🧭 Versions successives

| Version | Objectif principal | Document |
|-|-|-|
| v0.1 | Transposition brute du MCD | [`MRLD-v0.1_tifosi.md`](./mrld-versions/MRLD-v0.1_tifosi.md) |
| v1 | Modèle logique final retenu | **ci-dessous** |

---

## 📚 MRLD de référence

### 🧩 MRLD v0.1 — Transposition brute

Version directement issue du MCD v1, sans facteur d’optimisation.  
Champ `jour` présent en double dans les relations `achète` et `paye`.

📄 Voir : [MRLD-v0.1_tifosi.md](./mrld-versions/MRLD-v0.1_tifosi.md)  
📐 Schéma : [mrld_v0.1_tifosi.drawio.png](./schemas/mrld_v0.1_tifosi.drawio.png)

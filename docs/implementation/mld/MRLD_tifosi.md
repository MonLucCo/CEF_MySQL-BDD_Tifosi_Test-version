# 🧾 MRLD — Modèle Relationnel Logique de Données (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

---

- [🧾 MRLD — Modèle Relationnel Logique de Données (Tifosi)](#-mrld--modèle-relationnel-logique-de-données-tifosi)
  - [📘 Contexte](#-contexte)
  - [📐 Conventions de nommage adoptées](#-conventions-de-nommage-adoptées)
  - [📎 Références utilisées](#-références-utilisées)
  - [🧭 Versions successives](#-versions-successives)
  - [📚 MRLD de référence](#-mrld-de-référence)
    - [🧩 MRLD v0.1 — Transposition brute](#-mrld-v01--transposition-brute)
    - [🧩 MRLD v0.2 — Centralisation de `jour` (essai)](#-mrld-v02--centralisation-de-jour-essai)
    - [🧩 MRLD v1 — Version logique de référence (stabilisée)](#-mrld-v1--version-logique-de-référence-stabilisée)
    - [🧩 MRLD v1.1 — Version logique de référence (complétude)](#-mrld-v11--version-logique-de-référence-complétude)

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
| v0.1 | Transposition brute du MCD | [MRLD-v0.1_tifosi.md](./mrld-versions/MRLD-v0.1_tifosi.md) |
| v0.2 | Tentative de centralisation de l’attribut `jour` | [MRLD-v0.2_tifosi.md](./mrld-versions/MRLD-v0.2_tifosi.md) |
| v1 | Modèle logique final retenu | [MRLD-v1_tifosi.md](./mrld-versions/MRLD-v1_tifosi.md) |
| v1.1 | Modèle logique adapté à MCD v2.1 | [MRLD-v1.1_tifosi.md](./mrld-versions/MRLD-v1.1_tifosi.md) |

---

## 📚 MRLD de référence

### 🧩 MRLD v0.1 — Transposition brute

Version directement issue du MCD v1, sans facteur d’optimisation.  
Champ `jour` présent en double dans les relations `achète` et `paye`.

📄 Voir : [MRLD-v0.1_tifosi.md](./mrld-versions/MRLD-v0.1_tifosi.md)  
📐 Schéma : [MRLD-v0.1_tifosi.drawio.png](./schemas/MRLD-v0.1_tifosi.drawio.png)

### 🧩 MRLD v0.2 — Centralisation de `jour` (essai)

Tentative d’élimination de la redondance `jour` via une table `jours`.  
Résultat : structure techniquement viable, mais conceptuellement incomplète.

📄 Voir : [MRLD-v0.2_tifosi.md](./mrld-versions/MRLD-v0.2_tifosi.md)  
📐 Schéma : [MRLD-v0.2_tifosi.drawio.png](./schemas/MRLD-v0.2_tifosi.drawio.png)

### 🧩 MRLD v1 — Version logique de référence (stabilisée)

Version complète, conforme au `MCD v2`, intégrant :

- la centralisation de la date dans la table `jours` ;
- la modélisation des actions `paye` et `achète` comme relations ternaires `clients_menus` et `clients_focaccias` ;
- une structure conforme aux conventions du projet (pluriel, snake_case, clés explicites) ;
- un champ `date_jour` dont le **type (`DATE` / `DATETIME` / `TIMESTAMP`) reste à définir au niveau MPD**, selon le niveau d’unicité métier souhaité.

📄 Voir : [MRLD-v1_tifosi.md](./mrld-versions/MRLD-v1_tifosi.md)  
📐 Schéma : [MRLD-v1_tifosi.drawio.png](./schemas/MRLD-v1_tifosi.drawio.png)

### 🧩 MRLD v1.1 — Version logique de référence (complétude)

Version complète, conforme au `MCD v2.1`, intégrant :

- la complétude des attributs des entités du Modèle initial ;
- renommage des tables ternaires avec le nom de chaque entité ;
- la centralisation de la date dans la table `jours` ;
- la modélisation des actions `paye` et `achète` comme relations ternaires `clients_menus` et `clients_focaccias` ;
- une structure conforme aux conventions du projet (pluriel, snake_case, clés explicites) ;
- un champ `date_jour` dont le **type (`DATE` / `DATETIME` / `TIMESTAMP`) reste à définir au niveau MPD**, selon le niveau d’unicité métier souhaité.

📄 Voir : [MRLD-v1.1_tifosi.md](./mrld-versions/MRLD-v1.1_tifosi.md)  
📐 Schéma : [MRLD-v1.1_tifosi.drawio.png](./schemas/MRLD-v1.1_tifosi.drawio.png)

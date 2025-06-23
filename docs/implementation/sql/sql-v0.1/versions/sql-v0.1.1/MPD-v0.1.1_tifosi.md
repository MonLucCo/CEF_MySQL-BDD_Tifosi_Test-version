# 🧱 MPD v0.1.1 – Modèle Physique de Données Tifosi (version minimale fonctionnelle)

_Rédigé par :_ PerLucCo  
_Basé sur :_ MRLD v1  
_Schéma visuel associé :_ `MPD-v0.1.1_tifosi.drawio.png`  
_Date :_ 24 juin 2025  

---

- [🧱 MPD v0.1.1 – Modèle Physique de Données Tifosi (version minimale fonctionnelle)](#-mpd-v011--modèle-physique-de-données-tifosi-version-minimale-fonctionnelle)
  - [🎯 Objectif](#-objectif)
  - [🧍 Table `clients`](#-table-clients)
  - [🗓️ Table `jours`](#️-table-jours)
  - [🧺 Table `menus`](#-table-menus)
  - [🥖 Table `focaccias`](#-table-focaccias)
  - [🔗 Table `clients_jours_menus` (relation ternaire)](#-table-clients_jours_menus-relation-ternaire)
  - [🔗 Table `clients_focaccias_jours` (relation ternaire)](#-table-clients_focaccias_jours-relation-ternaire)
  - [⚙️ Options techniques](#️-options-techniques)
  - [🗂️ Fichiers liés](#️-fichiers-liés)

---

## 🎯 Objectif

Ce modèle physique correspond à une première version partielle mais fonctionnelle du MPD du projet **Tifosi**. Il permet de représenter le scénario suivant :  
> Un client commande un menu ou une focaccia à une date donnée.

Cette version repose sur une **structure stable et testable**, sans les entités secondaires (marques, ingrédients, paiements…). Elle est conforme au MRLD v1 et aux types SQL précisés dans le schéma du sujet officiel.

---

## 🧍 Table `clients`

| Attribut        | Type SQL       | Contraintes                       |
|----------------|----------------|------------------------------------|
| `id_client`     | `INT`          | `PK`, `AUTO_INCREMENT`            |
| `nom_client`    | `VARCHAR(45)`  | `NOT NULL`                        |
| `age`           | `INT`          | —                                 |

---

## 🗓️ Table `jours`

| Attribut      | Type SQL | Contraintes                         |
|---------------|----------|-------------------------------------|
| `id_jour`     | `INT`    | `PK`, `AUTO_INCREMENT`              |
| `date_jour`   | `DATE`   | `NOT NULL`, `UNIQUE`                |

---

## 🧺 Table `menus`

| Attribut       | Type SQL       | Contraintes                       |
|----------------|----------------|-----------------------------------|
| `id_menu`      | `INT`          | `PK`, `AUTO_INCREMENT`            |
| `nom_menu`     | `VARCHAR(45)`  | `NOT NULL`                        |
| `prix_menu`    | `DECIMAL(5,2)` | `NOT NULL`                        |
| `#focaccia_id` | `INT`          | `FK` → `focaccias.id_focaccia`    |

**DECIMAL(5,2) remplace FLOAT** pour le prix

---

## 🥖 Table `focaccias`

| Attribut          | Type SQL       | Contraintes                        |
|-------------------|----------------|------------------------------------|
| `id_focaccia`     | `INT`          | `PK`, `AUTO_INCREMENT`             |
| `nom_focaccia`    | `VARCHAR(45)`  | `NOT NULL`                         |
| `prix_focaccia`   | `DECIMAL(5,2)` | `NOT NULL`                         |

**DECIMAL(5,2) remplace FLOAT** pour le prix

---

## 🔗 Table `clients_jours_menus` (relation ternaire)

| Attribut     | Type SQL | Contraintes                                 |
|--------------|----------|---------------------------------------------|
| `#client_id` | `INT`    | `FK` → `clients.id_client`                  |
| `#jour_id`   | `INT`    | `FK` → `jours.id_jour`                      |
| `#menu_id`   | `INT`    | `FK` → `menus.id_menu`                      |

**Clé primaire composée (`cPK`)** : `(#client_id, #jour_id, #menu_id)`

---

## 🔗 Table `clients_focaccias_jours` (relation ternaire)

| Attribut        | Type SQL | Contraintes                                 |
|-----------------|----------|---------------------------------------------|
| `#client_id`     | `INT`    | `FK` → `clients.id_client`                 |
| `#focaccia_id`   | `INT`    | `FK` → `focaccias.id_focaccia`             |
| `#jour_id`       | `INT`    | `FK` → `jours.id_jour`                     |

**Clé primaire composée (`cPK`)** : `(#client_id, #focaccia_id, #jour_id)`

---

## ⚙️ Options techniques

- **Moteur SGBD** : `InnoDB` (support des contraintes d'intégrité)
- **Encodage** : `utf8mb4`
- **Collation** : `utf8mb4_general_ci`
- **Conventions** :
  - Noms de tables et d’attributs : minuscules, séparés par `_`
  - Clés primaires : `id_xxx` (ex. `id_menu`)
  - Clés étrangères : `xxx_id` (ex. `client_id`, `jour_id`)
    - Dans les schémas ou tableaux explicatifs, la notation `#xxx_id` désigne une clé étrangère
    - Les scripts SQL n'utilisent **jamais** le préfixe `#`
  - Les identifiants des entités sont toujours définis dans les **tables de liaison**

---

## 🗂️ Fichiers liés

| Élément                 | Fichier associé                             |
|-------------------------|---------------------------------------------|
| Script SQL associé      | [create_tifosi.sql](create_tifosi.sql) |
| Schéma physique Draw.io | [MPD-v0.1.1_tifosi.drawio.png](MPD-v0.1.1_tifosi.drawio.png) |
| Protocole de test       | [README_test-v0.1.1.md](README_test-v0.1.1.md) |
| MRLD source             | [MRLD-v1.md](../../../../mld/mrld-versions/MRLD-v1_tifosi.md) |

---

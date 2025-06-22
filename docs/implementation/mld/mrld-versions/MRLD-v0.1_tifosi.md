# 🧾 MRLD v0.1 – Transposition initiale du MCD

_Rédigé par :_ PerLucCo  
_Date :_ 17 juin 2025  

---

- [🧾 MRLD v0.1 – Transposition initiale du MCD](#-mrld-v01--transposition-initiale-du-mcd)
  - [📘 Contexte](#-contexte)
  - [🔗 Conventions appliquées](#-conventions-appliquées)
  - [⚙️ Conception du MRLD](#️-conception-du-mrld)
    - [🛠️ Caractéristiques de conception](#️-caractéristiques-de-conception)
    - [🧾 Synthèse des tables à créer](#-synthèse-des-tables-à-créer)
    - [🧱 Tables principales](#-tables-principales)
      - [📁 `clients`](#-clients)
      - [📁 `menus`](#-menus)
      - [📁 `focaccias`](#-focaccias)
      - [📁 `boissons`](#-boissons)
      - [📁 `marques`](#-marques)
      - [📁 `ingredients`](#-ingredients)
    - [🔗 Tables relationnelles / associatives](#-tables-relationnelles--associatives)
      - [🔄 `clients-focaccias`](#-clients-focaccias)
      - [🔄 `clients-menus`](#-clients-menus)
      - [🔄 `boissons_menus`](#-boissons_menus)
      - [🔄 `focaccias_ingredients`](#-focaccias_ingredients)
  - [🖼️ Schéma du MRLD](#️-schéma-du-mrld)
    - [🔧 Spécificités de la version](#-spécificités-de-la-version)
    - [🧩 Schéma de référence MRLD v0.1](#-schéma-de-référence-mrld-v01)
  - [⚠️ Limites de la version](#️-limites-de-la-version)

---

## 📘 Contexte

Cette version consttitue la **première transposition brute** du Modèle Conceptuel de Données v1.  
Elle respecte strictement la structure originale fournie dans `tifosi_mcd_reprise-v1.drawio`, sans optimisation relationnelle.

---

## 🔗 Conventions appliquées

Voir [`MRLD_tifosi.md`](MRLD_tifosi.md#-conventions-de-nommage-adoptées) :

- Tables : pluriel, snake_case.
- Attributs : singulier, snake_case.
- Clés primaires et étrangères posées selon conventions `id_<entité>` / `#<entité>_id`.
- Relation (n-n) posée dans une table définie par ordre alphabétique.

---

---

## ⚙️ Conception du MRLD

### 🛠️ Caractéristiques de conception

| Type de relation   | Exemple traité                 | Table dédiée     | Détail                  |
|--------------------|--------------------------------|------------------|-------------------------|
| 1–n                | `boissons` → `marques`         | non (FK)         | `boissons.#marque_id`   |
| n–n                | `boissons ↔ menus`             | oui              | `boissons_menus`        |
| n–n                | `clients ↔ menus`              | oui              | `clients_menus`         |
| n–n                | `clients ↔ focaccias`          | oui              | `clients_focaccias`     |
| n–n                | `focaccias ↔ ingredients`      | oui              | `focaccias_ingredients` |
| 1–1 logique        | `menus → focaccias`            | non (FK logique) | `menus.#focaccia_id`    |
| Attribut redondant | `jour` pour `achète` et `paye` | oui              | dupliqué                |

### 🧾 Synthèse des tables à créer

- Tables principales (entités)
  - `clients`, `menus`, `focaccias`, `boissons`, `ingredients`, `marques`
- Tables relationnelles :
  - `clients_focaccias` → relation `achète`
  - `clients_menus` → relation `paye`
  - `boissons_menus`, `focaccias_ingredients`

---

### 🧱 Tables principales

#### 📁 `clients`

| Attribut        | Type            | Contrainte         |
|-----------------|-----------------|--------------------|
| id_client       | INT             | PK, AUTO_INCREMENT |
| nom_client      | VARCHAR(50)     | NOT NULL           |
| age             | INT             |                    |

---

#### 📁 `menus`

| Attribut        | Type            | Contrainte                    |
|-----------------|-----------------|-------------------------------|
| id_menu         | INT             | PK, AUTO_INCREMENT            |
| nom_menu        | VARCHAR(50)     | NOT NULL                      |
| #focaccia_id    | INT             | FK → `focaccias(id_focaccia)` |

> Un menu correspond à une seule focaccia (relation 1–1 logique).

---

#### 📁 `focaccias`

| Attribut         | Type            | Contrainte         |
|------------------|-----------------|--------------------|
| id_focaccia      | INT             | PK, AUTO_INCREMENT |
| nom_focaccia     | VARCHAR(50)     | NOT NULL           |
| prix_focaccia    | DECIMAL(5,2)    | NOT NULL           |

---

#### 📁 `boissons`

| Attribut       | Type            | Contrainte                |
|----------------|-----------------|---------------------------|
| id_boisson     | INT             | PK, AUTO_INCREMENT        |
| nom_boisson    | VARCHAR(50)     | NOT NULL                  |
| #marque_id     | INT             | FK → `marques(id_marque)` |

> Relation 1–n mise en évidence : chaque boisson appartient à une seule marque.

---

#### 📁 `marques`

| Attribut       | Type            | Contrainte         |
|----------------|-----------------|--------------------|
| id_marque      | INT             | PK, AUTO_INCREMENT |
| nom_marque     | VARCHAR(50)     | NOT NULL           |

---

#### 📁 `ingredients`

| Attribut         | Type            | Contrainte         |
|------------------|-----------------|--------------------|
| id_ingredient    | INT             | PK, AUTO_INCREMENT |
| nom_ingredient   | VARCHAR(50)     | NOT NULL           |

---

### 🔗 Tables relationnelles / associatives

#### 🔄 `clients-focaccias`

| Attribut         | Type         | Contrainte                    |
|------------------|--------------|-------------------------------|
| #client_id       | INT          | FK → `clients(id_client)`     |
| #focaccia_id     | INT          | FK → `focaccias(id_focaccia)` |
| jour             | DATE         | NOT NULL                      |

---

#### 🔄 `clients-menus`

| Attribut         | Type         | Contrainte                    |
|------------------|--------------|-------------------------------|
| #client_id       | INT          | FK → `clients(id_client)`     |
| #menu_id         | INT          | FK → `menus(id_menu)`         |
| jour             | DATE         | NOT NULL                      |

---

#### 🔄 `boissons_menus`

| Attribut         | Type         | Contrainte                  |
|------------------|--------------|-----------------------------|
| #menu_id         | INT          | FK → `menus(id_menu)`       |
| #boisson_id      | INT          | FK → `boissons(id_boisson)` |

---

#### 🔄 `focaccias_ingredients`

| Attribut         | Type         | Contrainte                        |
|------------------|--------------|-----------------------------------|
| #focaccia_id     | INT          | FK → `focaccias(id_focaccia)`     |
| #ingredient_id   | INT          | FK → `ingredients(id_ingredient)` |

---

## 🖼️ Schéma du MRLD

### 🔧 Spécificités de la version

- Chaque relation métier (`paye`, `achète`) donne lieu à une table relationnelle dédiée
- L’attribut `jour` est dupliqué dans plusieurs tables
- Clés primaires et étrangères posées selon conventions `id_<entité>` / `#<entité>_id`

### 🧩 Schéma de référence MRLD v0.1

>![`MRLD-v0.1_tifosi.drawio.png`](../schemas/MRLD-v0.1_tifosi.drawio.png)

---

## ⚠️ Limites de la version

- Présence de **redondance de l’attribut `jour`** dans `clients_focaccias` et `clients_menus`
- Relation 1–1 `menus` ↔ `focaccias` non encore explicitée

---

# 🧾 MRLD v2 — Modèle Relationnel Logique de Données (Tifosi)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 27 juin 2025

---

- [🧾 MRLD v2 — Modèle Relationnel Logique de Données (Tifosi)](#-mrld-v2--modèle-relationnel-logique-de-données-tifosi)
  - [📘 Objectif](#-objectif)
  - [🔧 Eléments techniques de référence](#-eléments-techniques-de-référence)
    - [🧩 Conventions appliquées](#-conventions-appliquées)
    - [📐 Tables issues des entités](#-tables-issues-des-entités)
    - [♻️ Tables issues des associations](#️-tables-issues-des-associations)
    - [🔑 Synthèse des contraintes](#-synthèse-des-contraintes)
  - [📐 Définition du MRLD](#-définition-du-mrld)
    - [🧱 Tables principales](#-tables-principales)
      - [`clients`](#clients)
      - [`menus`](#menus)
      - [`focaccias`](#focaccias)
      - [`boissons`](#boissons)
      - [`marques`](#marques)
      - [`ingredients`](#ingredients)
      - [`jours` — Référentiel temporel des actions datées](#jours--référentiel-temporel-des-actions-datées)
    - [🔄 Tables associatives binaires et n,n](#-tables-associatives-binaires-et-nn)
      - [`focaccias_ingredients`](#focaccias_ingredients)
      - [`focaccias_menus`](#focaccias_menus)
      - [`boissons_menus`](#boissons_menus)
    - [🔺 Tables associatives ternaires (relations datées)](#-tables-associatives-ternaires-relations-datées)
      - [`clients_jours_menus`](#clients_jours_menus)
      - [`clients_focaccias_jours`](#clients_focaccias_jours)
    - [🖼️ Schéma associé](#️-schéma-associé)
  - [📎 Références](#-références)

---

## 📘 Objectif

Ce document présente la version **stabilisée et de référence** du **Modèle Relationnel Logique de Données (MRLD)** du projet Tifosi.

Elle est issue de la transposition complète du **MCD v2.1**, avec une attention portée à :

- la **normalisation des relations n,n et ternaires**,
- la **centralisation de la date** via l’entité `jours`,
- la **cohérence terminologique** entre les objets métier et les structures relationnelles,
- une **souplesse contrôlée sur la granularité temporelle** pour adapter le modèle physique (MPD) selon les besoins.

Ce MRLD v2 est destiné à servir de base pour la création du MPD (v0.2.1 et ultérieurs) et des requêtes SQL.

>Ce MRLD v2 est une reprise avec correction du MRLD v1.1 qui présentait une incohérence de  modélisation de la relation entre les entités `focaccias` et `menus` du MCD v2.1.

---

## 🔧 Eléments techniques de référence

### 🧩 Conventions appliquées

- Voir [`MRLD_tifosi.md`](../MRLD_tifosi.md#-conventions-de-nommage-adoptées)
  - Clés primaires : `id_<entité>`
  - Clés étrangères : `#<entité>_id`
  - Tables associatives : `<entité1>_<entité2>` (ordre alphabétique)
  - Tables ternaires : `<entité1>_<entité2>_<entité3>` (ordre alphabétique)

### 📐 Tables issues des entités

| Table           | Clé primaire         | Attributs notables            |
|-----------------|----------------------|-------------------------------|
| **clients**     | id_client (PK)       | nom, prénom, cp_client        |
| **boissons**    | id_boisson (PK)      | lib_boisson, id_marque (FK)   |
| **focaccias**   | id_focaccia (PK)     | nom_focaccia                  |
| **ingrédients** | id_ingredient (PK)   | lib_ingredient                |
| **marques**     | id_marque (PK)       | lib_marque                    |
| **menus**       | id_menu (PK)         | lib_menu                      |
| **jours**       | id_jour (PK)         | date_jour                     |

### ♻️ Tables issues des associations

| Table (relation)       | Clé(s)                          | Commentaire                                             |
|------------------------|---------------------------------|---------------------------------------------------------|
| **achète**             | id_client, id_focaccia, id_jour | relation _ternaire_, achat d’une focaccia le jour J     |
| **paye**               | id_client, id_menu, id_jour     | relation _ternaire_, paiement d’un menu le jour J       |
| **est_constitué_de**   | id_menu, id_focaccia            | **N:N**, une focaccia peut appartenir à plusieurs menus |
| **comprend**           | id_focaccia, id_ingredient      | **N:N**, composition des focaccias                      |
| **contient**           | id_menu, id_boisson             | **N:N**, boissons incluses dans les menus               |

### 🔑 Synthèse des contraintes

- **Clés primaires** : sur toutes les entités
- **Clés étrangères** :
  - boissons → marques
  - relations ternaires : vers clients, menus/focaccias et jours
  - relations N:N : vers les entités concernées
- **Cardinalités exprimées via clés composées et règles d’intégrité**

---

## 📐 Définition du MRLD

### 🧱 Tables principales

#### `clients`

| Champ       | Type    | Contrainte |
|-------------|---------|------------|
| id_client   | INT     | PK         |
| nom_client  | VARCHAR | NOT NULL   |
| age         | INT     | NULL       |
| cp_client   | INT     | NULL       |

---

#### `menus`

| Champ        | Type     | Contrainte       |
|--------------|----------|------------------|
| id_menu      | INT      | PK               |
| nom_menu     | VARCHAR  | NOT NULL         |
| prix_menu    | DECIMAL  | NULL             |

---

#### `focaccias`

| Champ         | Type     | Contrainte |
|---------------|----------|------------|
| id_focaccia   | INT      | PK         |
| nom_focaccia  | VARCHAR  | NOT NULL   |
| prix_focaccia | DECIMAL  | NULL       |

---

#### `boissons`

| Champ        | Type     | Contrainte |
|--------------|----------|------------|
| id_boisson   | INT      | PK         |
| nom_boisson  | VARCHAR  | NOT NULL   |

---

#### `marques`

| Champ       | Type     | Contrainte |
|-------------|----------|------------|
| id_marque   | INT      | PK         |
| nom_marque  | VARCHAR  | NOT NULL   |

---

#### `ingredients`

| Champ           | Type     | Contrainte |
|------------------|----------|-----------|
| id_ingredient    | INT      | PK        |
| nom_ingredient   | VARCHAR  | NOT NULL  |

---

#### `jours` — Référentiel temporel des actions datées

| Champ       | Type             | Contrainte              |
|-------------|------------------|--------------------------|
| id_jour     | INT              | PK                      |
| date_jour   | DATE / DATETIME / TIMESTAMP | UNIQUE, NOT NULL |

>💡 **Remarque :**  
>Le type exact de `date_jour` est volontairement **laissé ouvert** à ce niveau logique.
>
>Cela permet d’adapter le MPD selon le niveau de granularité temporelle souhaité :
>
>- `DATE` → une action est unique **à la journée** (ex. : 1 paiement par jour pour un même menu et client),
>- `DATETIME` ou `TIMESTAMP` → permet d’enregistrer **plusieurs actions identiques** dans une même journée (ex. : deux achats d’une même focaccia à des heures différentes).
>
>Le champ `#jour_id` référencé dans les relations associatives ternaires porte cette responsabilité logique. **C’est la précision du champ `date_jour` qui conditionne l’unicité d’une action enregistrée.**

---

### 🔄 Tables associatives binaires et n,n

#### `focaccias_ingredients`

| Champ          | Type | Contrainte         |
|----------------|------|--------------------|
| #focaccia_id   | INT  | FK → `focaccias`   |
| #ingredient_id | INT  | FK → `ingredients` |

✅ **PK** composée : (`#focaccia_id`, `#ingredient_id`)

---

#### `focaccias_menus`

| Champ          | Type | Contrainte         |
|----------------|------|--------------------|
| #focaccia_id   | INT  | FK → `focaccias`   |
| #menu_id       | INT  | FK → `menus`       |

✅ **PK** composée : (`#focaccia_id`, `#menu_id`)

---

#### `boissons_menus`

| Champ        | Type | Contrainte      |
|--------------|------|-----------------|
| #boisson_id  | INT  | FK → `boissons` |
| #menu_id     | INT  | FK → `menus`    |

✅ **PK** composée : (`#menu_id`, `#boisson_id`)

---

### 🔺 Tables associatives ternaires (relations datées)

#### `clients_jours_menus`

| Champ        | Type | Contrainte              |
|--------------|------|-------------------------|
| #client_id   | INT  | FK → `clients`          |
| #menu_id     | INT  | FK → `menus`            |
| #jour_id     | INT  | FK → `jours`            |

✅ **PK** composée : (`#client_id`, `#menu_id`, `#jour_id`)
ℹ️ L’unicité d’une action repose sur la combinaison `(client, objet, moment)` — encodée par la PK composite.  
Le champ `#jour_id` porte une date ou un horodatage selon la configuration choisie dans la table `jours`.

---

#### `clients_focaccias_jours`

| Champ         | Type | Contrainte              |
|---------------|------|-------------------------|
| #client_id    | INT  | FK → `clients`          |
| #focaccia_id  | INT  | FK → `focaccias`        |
| #jour_id      | INT  | FK → `jours`            |

✅ **PK** composée : (`#client_id`, `#focaccia_id`, `#jour_id`)
ℹ️ L’unicité d’une action repose sur la combinaison `(client, objet, moment)` — encodée par la PK composite.  
Le champ `#jour_id` porte une date ou un horodatage selon la configuration choisie dans la table `jours`.

---

### 🖼️ Schéma associé

📁 ![MRLD v2](../schemas/MRLD-v2_tifosi.drawio.png)

---

## 📎 Références

- MCD source : [`MCD-v2.1_tifosi.md`](../../mcd/versions/MCD-v2.1_tifosi.md)
- Historique associé : [`HISTORIQUE_mld_tifosi.md`](./HISTORIQUE_mld_tifosi.md)
- Schéma MCD source : [`MCD-v2.1_tifosi.drawio.png`](../../mcd/schemas/MCD-v2.1_tifosi.drawio.png)
- Schéma MLD source : [`MRLD-v2_tifosi.drawio.png`](../schemas/MRLD-v2_tifosi.drawio.png)

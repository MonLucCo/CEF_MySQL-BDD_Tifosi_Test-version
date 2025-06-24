# 🧾 MCD v2.1 – Intégration de l'attribut `cp_client` à l’entité `clients` (modèle simplifié et clarifié)

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

---

- [🧾 MCD v2.1 – Intégration de l'attribut `cp_client` à l’entité `clients` (modèle simplifié et clarifié)](#-mcd-v21--intégration-de-lattribut-cp_client-à-lentité-clients-modèle-simplifié-et-clarifié)
  - [📘 Objectif](#-objectif)
  - [🧱 Éléments modélisés](#-éléments-modélisés)
    - [Entités principales](#entités-principales)
    - [Relations](#relations)
  - [🔎 Principes adoptés](#-principes-adoptés)
  - [🖼️ Schéma associé](#️-schéma-associé)
  - [⚠️ Avancées par rapport à `v1`](#️-avancées-par-rapport-à-v1)
  - [📎 Notes et ouverture](#-notes-et-ouverture)

---

## 📘 Objectif

Cette version `v2.1` du Modèle Conceptuel de Données constitue une **évolution directe du MCD v2**, motivée par :

- la **complétude de tous les attributs des entités**.

Tout en reprenant les objectifs de la version **MCD v2**, motivée par :

- la **duplication constatée** de l’attribut `jour` dans les relations `paye` et `achète`,
- le besoin d’une **centralisation claire** de la date d’interaction client,
- la volonté de **conserver une modélisation simple, pédagogique et conforme** au sujet scolaire.

---

## 🧱 Éléments modélisés

### Entités principales

| Entité       | Attributs                                     |
|--------------|-----------------------------------------------|
| `clients`    | id_client (PK), nom_client, age, cp_client    |
| `menus`      | id_menu (PK), nom_menu, prix_menu             |
| `focaccias`  | id_focaccia (PK), nom_focaccia, prix_focaccia |
| `boissons`   | id_boisson (PK), nom_boisson                  |
| `marques`    | id_marque (PK), nom_marque                    |
| `ingredients`| id_ingredient (PK), nom_ingredient            |
| `jours`      | id_jour (PK), date_jour                       |

---

### Relations

| Relation        | De → Vers                     | Cardinalité       | Attributs |
|-----------------|-------------------------------|-------------------|-----------|
| `paye`          | clients — jours — menus       | 0,n ↔ 0,n ↔ 0,n   | —         |
| `achète`        | clients — jours — focaccias   | 0,n ↔ 0,n ↔ 0,n   | —         |
| `est constitué` | menus → focaccias             | 1,1 ↔ 0,n         | —         |
| `comprend`      | focaccias — ingrédients       | 0,n ↔ 1,n         | —         |
| `contient`      | menus — boissons              | 0,n ↔ 0,n         | —         |
| `appartient`    | boissons — marques            | 1,1 ↔ 0,n         | —         |

---

## 🔎 Principes adoptés

- L’entité **`jours`** regroupe toutes les dates utilisées dans le système.
- Chaque action `achète` ou `paye` est modélisée comme une **relation ternaire** entre `clients`, `focaccias / menus`, et `jours`.
- Le modèle **évite toute complexité transactionnelle** (pas d’entité `commande`, pas de ticket ou de panier).
- La relation `menus → focaccias` est toujours considérée comme **1 à 1 logique**, intégrée par FK.

---

## 🖼️ Schéma associé

📄 Fichier : `MCD-v2_tifosi.drawio.png`  
📁 Localisation : `/docs/implementation/mcd/schemas/`

> ![MCD v2.1](../schemas/MCD-v2.1_tifosi.drawio.png)

---

## ⚠️ Avancées par rapport à `v1`

| Point traité                | v1                     | v2                    | V2.1                  |
|-----------------------------|------------------------|-----------------------|-----------------------|
| Centralisation de `jour`    | Non (dupliqué)         | Oui (entité `jour`)   | Oui (entité `jour`)   |
| Structure d’action client   | 2 relations binaires   | 2 relations ternaires | 2 relations ternaires |
| Complexité ajoutée          | Aucune                 | Faible mais justifiée | Faible mais justifiée |
| Fidélité au sujet           | ✅                     | ✅                   | ✅                    |
| Complétude des entités      | Non (entité `clients`) |Non (entité `clients`) | ✅                    |

---

## 📎 Notes et ouverture

Cette version constitue la base conceptuelle pour la **transposition logique MRLD v1.1**, établie dans l’étape 4.

---

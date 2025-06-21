# 🧾 MCD v1 – Modèle Conceptuel de Données instancié

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 21 juin 2025  

---

- [🧾 MCD v1 – Modèle Conceptuel de Données instancié](#-mcd-v1--modèle-conceptuel-de-données-instancié)
  - [📘 Contexte](#-contexte)
  - [🧱 Entités](#-entités)
  - [🔄 Relations](#-relations)
  - [🖼️ Schéma associé](#️-schéma-associé)
  - [⚠️ Limites identifiées](#️-limites-identifiées)
  - [📎 Origine](#-origine)

---

## 📘 Contexte

Ce modèle conceptuel est la **première version instanciée** du MCD Tifosi, issue de la reprise du sujet.  
Il conserve fidèlement l’architecture conceptuelle proposée, sans optimisation métier ou factorisation.

---

## 🧱 Entités

- **client** (id_client, nom_client, age)
- **menu** (id_menu, nom_menu, prix_menu)
- **focaccia** (id_focaccia, nom_focaccia, prix_focaccia)
- **boisson** (id_boisson, nom_boisson)
- **marque** (id_marque, nom_marque)
- **ingredient** (id_ingredient, nom_ingredient)

---

## 🔄 Relations

| Relation      | De → Vers              | Cardinalités      | Attributs   |
|---------------|------------------------|-------------------|-------------|
| `paye`        | client — menu          | 0,n ↔ 0,n         | `jour`      |
| `achète`      | client — focaccia      | 0,n ↔ 0,n         | `jour`      |
| `est constitué` | menu — focaccia      | 1,1 ↔ 0,n         | —           |
| `comprend`    | focaccia — ingrédient  | 0,n ↔ 1,n         | —           |
| `contient`    | menu — boisson         | 0,n ↔ 0,n         | —           |
| `appartient`  | boisson — marque       | 1,1 ↔ 0,n         | —           |

---

## 🖼️ Schéma associé

📄 Fichier : `MCD-v1_tifosi.drawio.png`  
📁 Localisation : `schemas/`  
> ![MCD v1](../schemas/MCD-v1_tifosi.drawio.png)

---

## ⚠️ Limites identifiées

- Duplication de l’attribut `jour` dans deux relations (`paye`, `achète`)
- Pas d’unification métier autour d’une date ou action client
- Conforme aux consignes scolaires, mais perfectible dans un contexte professionnel

---

## 📎 Origine

MCD construit à partir de la phase de reprise : [`MCD-v0-reprise/`](../MCD-v0-reprise/)

---

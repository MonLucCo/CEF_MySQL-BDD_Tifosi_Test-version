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

- **clients** (id_client, nom_client, age)
- **menus** (id_menu, nom_menu, prix_menu)
- **focaccias** (id_focaccia, nom_focaccia, prix_focaccia)
- **boissons** (id_boisson, nom_boisson)
- **marques** (id_marque, nom_marque)
- **ingredients** (id_ingredient, nom_ingredient)

---

## 🔄 Relations

| Relation        | De → Vers                | Cardinalités      | Attributs   |
|-----------------|--------------------------|-------------------|-------------|
| `paye`          | clients — menus          | 0,n ↔ 0,n         | `jour`      |
| `achète`        | clients — focaccias      | 0,n ↔ 0,n         | `jour`      |
| `est constitué` | menus — focaccias        | 1,1 ↔ 0,n         | —           |
| `comprend`      | focaccias — ingrédients  | 0,n ↔ 1,n         | —           |
| `contient`      | menus — boissons         | 0,n ↔ 0,n         | —           |
| `appartient`    | boissons — marques       | 1,1 ↔ 0,n         | —           |

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

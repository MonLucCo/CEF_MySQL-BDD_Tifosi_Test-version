# 🔍 Analyse du MCD — Projet Tifosi

_Rédigé par :_ PerLucCo  
_Date :_ Juin 2025

---

- [� Analyse du MCD — Projet Tifosi](#-analyse-du-mcd--projet-tifosi)
  - [1. 🧩 Entités identifiées](#1--entités-identifiées)
  - [2. 🔗 Relations modélisées](#2--relations-modélisées)
  - [3. ❗ Incohérences et points ambigus identifiés](#3--incohérences-et-points-ambigus-identifiés)
  - [4. 🧠 Synthèse et compréhension retenue pour le MLD](#4--synthèse-et-compréhension-retenue-pour-le-mld)
  - [📘 Conclusion pour le passage en MLD](#-conclusion-pour-le-passage-en-mld)

---

## 1. 🧩 Entités identifiées

| Entité       | Attributs (visibles sur le MCD)                        |
|--------------|--------------------------------------------------------|
| `clients`    | id_client (PK), nom_client, age                        |
| `menus`      | id_menu (PK), nom_menu                                 |
| `focaccias`  | id_focaccia (PK), nom_focaccia, prix_focaccia          |
| `boissons`   | id_boisson (PK), nom_boisson, marque_id (FK)           |
| `ingredients`| id_ingredient (PK), nom_ingredient                     |
| `marques`    | id_marque (PK), nom_marque                             |

## 2. 🔗 Relations modélisées

| Relation               | Entités concernées           | Cardinalités (côté gauche — côté droit)                 | Type         | Remarques clés |
|------------------------|-----------------------------|----------------------------------------------------------|--------------|----------------|
| `paye`                 | clients ↔ menus              | (0,n) — (1,1) _(côté clients — menus)_                   | n,1 (simple) | 1 menu par client pour un jour donné |
| `clients_menus`        | client ↔ menu                | présence de `jour` → relation n,n avec info contextuelle| n,n (asso.)  | contient le champ `jour` |
| `clients_focaccias`    | client ↔ focaccia            | (0,n) — (1,n) ?                                           | n,n (asso.)  | contient aussi `jour`, nécessite clarification |
| `boissons_menus`       | menu ↔ boisson               | (0,n) — (1,n) ?                                           | n,n (asso.)  | Relation logique mais cardinalité floue |
| `focaccias_ingredients`| focaccia ↔ ingredient        | (1,n) — (1,n)                                             | n,n (asso.)  | Relation classique de composition |
| `boissons → marques`   | boisson → marque             | (1,1) — (0,n) _(chaque boisson appartient à une marque)_ | 1,n          | FK visible dans `boissons` |
| `menus — focaccias` (est constitué) | menu → focaccia  | **(1,1) — (0,n)**                                         | 1,n (imposé) | Voire incohérence (voir section suivante) |

---

## 3. ❗ Incohérences et points ambigus identifiés

1. **Relation `est constitué` (menu ↔ focaccia)**  
   > La cardinalité côté `menu` est (1,1) et côté `focaccia` (0,n) → cela signifie qu’un **menu ne contient qu’une seule focaccia**, ce qui contredit l’intuition du mot “menu” (habituellement composé).

   **Option recommandée** : si on souhaite modéliser des menus composés de plusieurs focaccias, cette relation doit devenir :
   - **n,n** avec entité associative `menu_focaccias`
   - ou cardinalité `(1,n)` côté `focaccia` pour refléter la pluralité

2. **Champ `jour` dupliqué** dans `clients_menus` et `clients_focaccias`  
   > Cela crée une redondance : difficile de savoir si un client a consommé un menu ET une focaccia **le même jour**  
   💡 Une entité centralisatrice (`consommation`, `session_client`) pourrait être introduite en V2 pour centraliser `jour`

3. **Noms de certaines relations peu explicites**  
   - `paye` : sans verbe d’action clair, peut prêter à confusion
   - `contient` : manque de précision sur le rôle (ex. une commande ? un regroupement logique ?)

---

## 4. 🧠 Synthèse et compréhension retenue pour le MLD

Pour initier un **modèle logique (MRLD)**, on retient les choix suivants :

- **Les entités identifiées deviennent des tables**
- **Les relations n,n** sont modélisées par des **entités associatives** avec clés étrangères
- **Chaque table aura une clé primaire simple** (`id_...`) sauf exceptions
- **Le champ `jour`** nécessite une réorganisation en V2, mais sera conservé en l’état en V1 avec précautions

---

## 📘 Conclusion pour le passage en MLD

> Ce MCD modélise correctement les entités et leurs relations principales dans un contexte de restauration fictive.  
> Malgré des incohérences sémantiques mineures (notamment autour de `menu` et `focaccia`), le schéma peut être transposé en MLD avec prudence.

⚠️ Une V2 sera recommandée pour :

- Centraliser `jour` (éviter duplication)
- Clarifier la relation `menu ↔ focaccia` pour autoriser plusieurs focaccias par menu

---

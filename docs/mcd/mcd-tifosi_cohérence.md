# 📊 mcd-tifosi_cohérence.md — Analyse sémantique et lecture métier

_Rédigé par :_ PerLucCo  
_Date :_ Juin 2025

---

## Liminaire : Bilan - Synthèse de l'analyse du MCD

L'analyse du modèle de conception proposé dans le sujet tifosi (MySQL) fait apparaître une ambiguité dans le schéma de conception fourni. Cette ambiguïté concerne la relation entre les entités "menu" et "focaccia", ainsi que la signification des relations "achète" et "paye".

Pour ce qui concerne les entités "menu" et "focaccia", 2 interprétations sont possibles :

- si la cardinalité "1-1" de menu est correcte, alors la relation devrait être "compose" au lieu de "est constitué".
- si la relation "est constitué" est correcte, alors la cardinalité de menu devrait être "1-n" au lieu de "1-1".

Il n'y a pas de problème pour traiter l'une ou l'autre des 2 interprétations. Toutefois, il semble que le sujet est établi avec une cardinalité "1-1" pour traiter le cas d'une relation physique de "1 à n" entre les tables "menus" et "focaccias", et non pas d'une relation physique "n à n".

Pour la seconde ambiguïté qui concerne les relations, il s'agirait d'une relation "commande" au lieu de "achète" avec l'attribut "jour", apparemment commun "au jour d'ouverture" de la commande et à celui du paiement. Si cette interprétation physique est juste, alors le modèle de conception devrait avoir une table "ouverture" (jour ouvert) qui serait liée à la relation "commande" par la cardinalité "0-n" et à la relation "paye" par la cardinalité "1-n" (si pré-paiement possible, alors cardinalité de "0-n". Cependant, non retenu car trop de complexité pour ce modèle).

>Toutes ces questions peuvent conduire à bâtir une seconde version du modèle de conception qui correspondrait à la logique métier suivante :
>
>- un client peut commander un jour (d'ouverture) au moins une focaccia.
>- une focaccia compose un menu.
>- Un menu est composé d'une focaccia et d'une boisson.
>
>Les cardinalités du schéma sont considérées comme valides dans cette lecture métier, sans modifier la structure du MCD, mais en ajustant l'interprétation sémantique.
>Pour le modéliser dans un modèle relationnel logique de données, puis un modèle physique de données, ce modèle de conception pourra faire l'objet d'une adaptation du libellé de la relation "focaccias-menus", ainsi qu'une identification d'une entité "ouverture" liée à "commande" et "paye".

---

- [📊 mcd-tifosi\_cohérence.md — Analyse sémantique et lecture métier](#-mcd-tifosi_cohérencemd--analyse-sémantique-et-lecture-métier)
  - [Liminaire : Bilan - Synthèse de l'analyse du MCD](#liminaire--bilan---synthèse-de-lanalyse-du-mcd)
  - [📋 Contexte](#-contexte)
  - [❓ Ambiguïtés constatées](#-ambiguïtés-constatées)
    - [1. Relation `menus — est constitué — focaccias`](#1-relation-menus--est-constitué--focaccias)
    - [2. Relations `achète` et `paye`](#2-relations-achète-et-paye)
  - [🧠 Lecture métier retenue](#-lecture-métier-retenue)
  - [💡 Perspective V2](#-perspective-v2)
  - [📘 Conclusion](#-conclusion)
  - [📚 Références associées](#-références-associées)

---

## 📋 Contexte

Ce document examine la **cohérence sémantique du MCD** fourni dans le projet Tifosi, en particulier les relations `est constitué`, `achète` et `paye`.  
L’objectif est de comprendre les intentions possibles du modèle de conception et de proposer une lecture métier cohérente, sans modifier structurellement le schéma.

---

## ❓ Ambiguïtés constatées

### 1. Relation `menus — est constitué — focaccias`

Deux lectures sont possibles :

- Si la **cardinalité `(1,1)` côté `menu`** est considérée comme correcte, alors la formulation `est constitué` est ambiguë. On pourrait préférer :  
  > _“Un menu correspond à une focaccia”_

- Si la formulation `est constitué` (sous-entendant une **composition**) est considérée comme correcte, alors la **cardinalité côté `menu` devrait être `(1,n)`**, ce qui impliquerait un menu composé de plusieurs focaccias.

📎 _Le modèle du sujet indique `(1,1)` côté menu_, donc la première lecture est retenue.

---

### 2. Relations `achète` et `paye`

- Le verbe `achète` semble désigner une **commande passée par un client à une date donnée**.  
- Le verbe `paye` représente une **transaction financière liée à un menu**, sans précision d’association temporelle formelle.

❗ Une ambiguïté subsiste autour de l'attribut `jour` :

- Est-il **redondant** entre les relations `achète` et `paye` ?
- Correspond-il à une entité implicite type `ouverture`, c’est-à-dire un **jour d’activité du restaurant** ?

---

## 🧠 Lecture métier retenue

Afin de conserver les cardinalités du modèle original tout en assurant une cohérence métier :

- Un **menu correspond à une focaccia unique**, ce qui justifie la cardinalité `(1,1)` côté menu.
- Une **focaccia peut apparaître dans plusieurs menus**.
- Un **client peut commander (achète)** un menu ou une focaccia à une date donnée.
- Un **client peut payer (paye)** un menu, le même jour ou un autre (cas prépayé possible).
- Le **champ `jour`** est interprété comme une **information contextuelle**, non centralisée à ce stade.

👉 Ce positionnement valide la structure du MCD V1 sans réécriture des relations, uniquement en **adaptant leur lecture métier**.

---

## 💡 Perspective V2

Dans une future version du modèle, on pourrait :

- Introduire une entité `ouverture` ou `session_jour`, pour centraliser les événements d’une journée (commandes, paiements…).
- Renommer certaines relations pour expliciter les actions (ex. `commande`, `paiement` plutôt que `achète`, `paye`)
- Autoriser une pluralité de focaccias par menu via une relation `menus_focaccias` (n,n)

---

## 📘 Conclusion

> La relation `est constitué` est considérée comme une association simple dans ce contexte métier :  
> **Un menu correspond à une focaccia**, et non une composition.  
>
> Les mots `achète` et `paye` sont tolérés dans le modèle initial comme des raccourcis fonctionnels, en attendant une clarification ou refonte en version 2.

ℹ️ Cette lecture métier permet de **valider les cardinalités sans modifier le MCD fourni**, et d’engager la construction du MRLD avec des hypothèses explicites.

---

## 📚 Références associées

- [README_analyse.md](README_analyse.md) — Analyse globale du MCD
- [mcd-tifosi_analyse.md](mcd-tifosi_analyse.md) — Tableau d’analyse détaillée des relations

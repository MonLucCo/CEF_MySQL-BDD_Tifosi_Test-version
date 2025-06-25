# 🧪 README_test-v0.2.md — Requêtes de validation de la base `tifosi`

**Base cible** : `tifosi`  
**Modèle** : MPD v0.2  
**Données chargées via** : `insert_data.sql`  
**Script de test** : `queries-test_v020.sql`  
**Auteur** : PerLucCo  
**Date** : 25 juin 2025

---

- [🧪 README\_test-v0.2.md — Requêtes de validation de la base `tifosi`](#-readme_test-v02md--requêtes-de-validation-de-la-base-tifosi)
  - [🎯 Objectif](#-objectif)
  - [📄 Script : `queries-test_v020.sql`](#-script--queries-test_v020sql)
  - [✅ Conditions de fonctionnement](#-conditions-de-fonctionnement)
  - [🚀 Exécution](#-exécution)
  - [📘 Remarque](#-remarque)

---

## 🎯 Objectif

Vérifier la structure et la cohérence des données insérées dans la base `tifosi`, notamment :

- la bonne insertion des clients, ingrédients, marques, menus, boissons, etc.
- la cohérence des associations (relations N:N et ternaires)
- l’exploitation en lecture des principales entités métiers

---

## 📄 Script : `queries-test_v020.sql`

Ce script contient :

- des requêtes `SELECT *` simples de vérification
- des jointures permettant de relier les entités :

```sql
-- Ex. ingrédients d’une focaccia
SELECT f.nom_focaccia, i.nom_ingredient
FROM focaccias f
JOIN focaccias_ingredients fi ON f.id_focaccia = fi.focaccia_id
JOIN ingredients i ON fi.ingredient_id = i.id_ingredient;
```

---

## ✅ Conditions de fonctionnement

Avant d’exécuter ce script :

1. La base doit avoir été créée avec `create_tifosi.sql`
2. Les données doivent avoir été insérées avec succès via `insert_data.sql`
3. L’utilisateur `tifosi` doit être utilisé pour valider les droits

---

## 🚀 Exécution

```bash
mysql -u tifosi -p < queries-test_v020.sql
```

Le résultat attendu s’affiche dans le terminal ou dans l’onglet SQL de Workbench.

---

## 📘 Remarque

Ce fichier est hérité de `queries-test_v013.sql` et **entièrement compatible** avec la structure consolidée `v0.2` et la base renommée `tifosi`.

# ✅ Vérification du script SQL — `sql-v0.1.1`

_Version testée :_ `create_tifosi.sql`  
_Dernière mise à jour :_ 24 juin 2025  
_Rédigé par :_ PerLucCo

---

- [✅ Vérification du script SQL — `sql-v0.1.1`](#-vérification-du-script-sql--sql-v011)
  - [🎯 Objectif de cette version](#-objectif-de-cette-version)
  - [🛠 Mode opératoire](#-mode-opératoire)
  - [📋 Vérifications attendues](#-vérifications-attendues)
  - [🧪 Tests complémentaires](#-tests-complémentaires)
    - [🧪 Insertion de données](#-insertion-de-données)
    - [🔍 Requêtes de lecture](#-requêtes-de-lecture)
    - [✅ Résultat attendu](#-résultat-attendu)
  - [📌 Remarque](#-remarque)

---

## 🎯 Objectif de cette version

Valider une **première base métier partielle** contenant :

- des **entités principales** : `clients`, `menus`, `focaccias`, `jours`
- des **relations ternaires** : `clients_jours_menus`, `clients_focaccias_jours`

Ce socle permet de simuler la liaison d'un client et d'une date donnée avec une focaccia ou un menu.

---

## 🛠 Mode opératoire

1. **Ouvrir MySQL Workbench** (ou phpMyAdmin)
2. **supprimer la base si elle existe** : `DROP DATABASE IF EXISTS tifosi_v011`
3. **Copier-coller le script `create_tifosi.sql`** dans l’éditeur SQL
4. **Exécuter le script** :
   - en une seule fois
   - ou bloc par bloc pour observer les retours

5. **Effectuer les vérifications décrites ci-dessous**

---

## 📋 Vérifications attendues

| Étape  | Action SQL | Résultat attendu |
|--|--|--|
| 🎯 Base créée               | `SHOW DATABASES;`  | Présence de `tifosi_v011` |
| 📂 Tables créées            | `SHOW TABLES;`  | 6 tables visibles |
| 🔎 Structure correcte       | `DESCRIBE clients;`, `menus`, `jours` | Champs bien typés, clés présentes |
| 🔗 Clés étrangères actives  | `SHOW CREATE TABLE clients_jours_menus;` | Contraintes FK vers `clients`, `jours`, `menus` |
| 🔗 Clés étrangères actives  | `SHOW CREATE TABLE clients_focaccias_jours;` | Contraintes FK vers `clients`, `focaccias`, `jours` |
| 🔎Contrainte d'unicité      | `SHOW CREATE TABLE jours;` | Attendre ligne : UNIQUE KEY 'date_jour' (...) |
| 🔁 Réexécutabilité          | `DROP DATABASE tifosi_v011;` puis reprise script | Aucun conflit, script relançable proprement |

---

## 🧪 Tests complémentaires

> Toutes les commandes suivantes sont à exécuter dans l’ordre, dans une base vierge.

---

### 🧪 Insertion de données

```sql
-- Insertion d'une date  
INSERT INTO jours (date_jour) VALUES ('2025-06-24');

-- Insertion d’un client  
INSERT INTO clients (nom_client, age) VALUES ('Dupond', 42);

-- Insertion d’une focaccia  
INSERT INTO focaccias (nom_focaccia, prix_focaccia)  
VALUES ('Romarin et olives', 3.50);

-- Insertion d’un menu lié à la focaccia  
INSERT INTO menus (nom_menu, prix_menu, focaccia_id)  
VALUES ('Menu midi', 9.90, 1);

-- Liaison client-jour-menu  
INSERT INTO clients_jours_menus (client_id, jour_id, menu_id)  
VALUES (1, 1, 1);

-- Liaison client-focaccia-jour  
INSERT INTO clients_focaccias_jours (client_id, focaccia_id, jour_id)  
VALUES (1, 1, 1);
```

---

### 🔍 Requêtes de lecture

```sql
-- Menus liés à un client et une date  
SELECT c.nom_client, m.nom_menu, j.date_jour  
FROM clients_jours_menus cm  
JOIN clients c ON cm.client_id = c.id_client  
JOIN menus m ON cm.menu_id = m.id_menu  
JOIN jours j ON cm.jour_id = j.id_jour;
```

```sql
-- Focaccias liées à un client et une date  
SELECT c.nom_client, f.nom_focaccia, j.date_jour  
FROM clients_focaccias_jours cf  
JOIN clients c ON cf.client_id = c.id_client  
JOIN focaccias f ON cf.focaccia_id = f.id_focaccia  
JOIN jours j ON cf.jour_id = j.id_jour;
```

---

### ✅ Résultat attendu

Deux lignes affichées :

- Dupond | Menu midi | 2025-06-24  
- Dupond | Romarin et olives | 2025-06-24

---

## 📌 Remarque

Cette validation concerne exclusivement la version v0.1.1.  
Les étapes liées aux utilisateurs, données factices ou commandes multiples relèveront de la version v0.1.2 ou supérieure.

Ces tests n’intègrent ni gestion d’utilisateur SQL, ni extensions de données ou marque/ingrédients prévues dans v0.1.2 et v0.1.3.

---

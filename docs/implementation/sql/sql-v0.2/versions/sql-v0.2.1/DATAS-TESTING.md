# 📊 DATAS-TESTING.md — Tableaux synthétiques des jeux de données (v0.2.1)

Ce document regroupe les représentations synthétiques des jeux de données injectés dans la base `tifosi`  
(version MPD v0.2.1, issue #5.2).  
Il ne s’agit pas d’un export brut mais de vues condensées facilitant la lecture métier.

---

## 🧍 Clients

| id_client | nom_client | age | cp_client |
|-----------|------------|-----|-----------|
| 1         | Durand     | 34  | 75015     |
| 2         | Martin     | 28  | 69003     |
| 3         | Rossi      | 41  | 13008     |

---

## 🏷️ Marques

| id_marque | nom_marque        |
|-----------|-------------------|
| 1         | Nestlé            |
| 2         | Coca-Cola Co.     |
| 3         | Orangina Schweppes|

---

## 🧃 Boissons (avec marque)

| id_boisson | nom_boisson      | Marque associée       |
|------------|------------------|------------------------|
| 1          | San Pellegrino   | Nestlé                 |
| 2          | Coca-Cola        | Coca-Cola Co.          |
| 3          | Orangina         | Orangina Schweppes     |

---

## 🥗 Liste des ingrédients disponibles

| id_ingredient | nom_ingredient     |
|---------------|--------------------|
| 1             | Ail                |
| 2             | Ananas             |
| 3             | Artichaut          |
| 4             | Bacon              |
| 5             | Base crème         |
| 6             | Base tomate        |
| 7             | Champignon         |
| 8             | Chèvre             |
| 9             | Cresson            |
| 10            | Emmental           |
| 11            | Gorgonzola         |
| 12            | Jambon cuit        |
| 13            | Jambon fumé        |
| 14            | Mozarella          |
| 15            | Oeuf               |
| 16            | Oignon             |
| 17            | Olive noire        |
| 18            | Olive verte        |
| 19            | Parmesan           |
| 20            | Piment             |
| 21            | Poivre             |
| 22            | Pomme de terre     |
| 23            | Raclette           |
| 24            | Salami             |
| 25            | Tomate cerise      |

---

## 🍕 Composition des focaccias

| id_focaccia | nom_focaccia | prix_focaccia | ingrédients |
|--|--|--|--|
| 1 | Mozaccia         | 9.80 | Ail, Artichaut, Base tomate, Champignon, Cresson, Jambon fumé, Mozarella, Olive noire, Parmesan, Poivre |
| 2 | Gorgonzollaccia  | 10.80 | Ail, Base tomate, Champignon, Cresson, Gorgonzola, Olive noire, Parmesan, Poivre |
| 3 | Raclaccia        | 8.90 | Ail, Base tomate, Champignon, Cresson, Parmesan, Poivre, Raclette |
| 4 | Emmentalaccia    | 9.80 | Base crème, Champignon, Cresson, Emmental, Oignon, Parmesan, Poivre |
| 5 | Tradizione       | 8.90 | Base tomate, Champignon, Cresson, Jambon cuit, Mozarella, Olive noire, Olive verte, Parmesan, Poivre |
| 6 | Hawaienne        | 11.20 | Ananas, Bacon, Base tomate, Cresson, Mozarella, Olive noire, Parmesan, Piment, Poivre |
| 7 | Américaine       | 10.80 | Bacon, Base tomate, Cresson, Mozarella, Olive noire, Parmesan, Poivre, Pomme de terre |
| 8 | Paysanne         | 12.80 | Ail, Artichaut, Base crème, Champignon, Chèvre, Cresson, Jambon fumé, Oeuf, Olive noire, Parmesan, Poivre, Pomme de terre |

---

## 🍽️ Composition des menus

| id_menu | nom_menu     | focaccias | boissons |
|---------|--------------|-----------|----------|
| 1       | Classico     | Mozaccia, Raclaccia | Coca-Cola  |
| 2       | Verde        | Gorgonzollaccia     | San Pellegrino |
| 3       | Dolce        | Emmentalaccia, Tradizione | Orangina |

---

## 📅 Jours de consommation

| id_jour | date_jour  |
|---------|------------|
| 1       | 2025-06-24 |
| 2       | 2025-06-25 |
| 3       | 2025-06-26 |

---

## 💳 Menus payés par les clients (`clients_jours_menus`)

| Client      | Date        | Menu             |
|-------------|-------------|------------------|
| Durand      | 2025-06-24  | Menu Classico    |
| Martin      | 2025-06-25  | Menu Verde       |
| Rossi       | 2025-06-26  | Menu Dolce       |

---

## 🛍️ Focaccias achetées (`clients_focaccias_jours`)

| Client      | Date        | Focaccia          |
|-------------|-------------|-------------------|
| Durand      | 2025-06-24  | Mozaccia          |
| Martin      | 2025-06-25  | Gorgonzollaccia   |
| Rossi       | 2025-06-26  | Raclaccia         |

---

## 🔄 Synthèses transversales (meta-données)

- Nombre total de clients : **3**
- Nombre de menus distincts : **3**
- Focaccias uniques associées à des menus : **6**
- Ingrédients distincts utilisés : **>15**
- Relations N:N binaires : **boissons_menus**, **focaccias_menus**, **focaccias_ingredients**
- Relations ternaires : **clients_jours_menus**, **clients_focaccias_jours**

---

## 📘 Remarques

- Les données proviennent de la version consolidée `datas-tests.xlsx` issue du dépôt.
- Cette synthèse peut être utilisée dans les documents de test, rapports d’intégration ou supports de formation.

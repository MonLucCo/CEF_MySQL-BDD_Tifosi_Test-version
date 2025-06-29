# 📊 DATAS-TESTING.md — Tableaux synthétiques des jeux de données (v0.2.1)

Ce document regroupe les représentations synthétiques des jeux de données injectés dans la base `tifosi`  
(version MPD v0.2.1, issues #5.2 et #6.1).  
Il ne s’agit pas d’un export brut mais de vues condensées facilitant la lecture métier.

--

- [📊 DATAS-TESTING.md — Tableaux synthétiques des jeux de données (v0.2.1)](#-datas-testingmd--tableaux-synthétiques-des-jeux-de-données-v021)
  - [📦  Jeu de données du projet `tifosi`](#--jeu-de-données-du-projet-tifosi)
    - [🧍 Clients](#-clients)
    - [🏷️ Marques](#️-marques)
    - [🧃 Boissons (avec marque)](#-boissons-avec-marque)
    - [🥗 Liste des ingrédients disponibles](#-liste-des-ingrédients-disponibles)
    - [🍕 Composition des focaccias](#-composition-des-focaccias)
    - [🍽️ Menus disponibles](#️-menus-disponibles)
    - [📅 Jours des activités](#-jours-des-activités)
    - [📊 Activités des menus](#-activités-des-menus)
    - [🛍️ Activités des focaccias](#️-activités-des-focaccias)
  - [🧮 Synthèse du jeu de données](#-synthèse-du-jeu-de-données)

---

## 📦  Jeu de données du projet `tifosi`

### 🧍 Clients

| id_client | nom_client        | âge | code_postal |
|-----------|-------------------|-----|-------------|
| 1         | Armand CAMUS      | 55  | 78110       |
| 2         | Lucia BELLINI     | 40  | 92130       |
| 3         | Nour KHADIJA      | 32  | 92130       |
| 4         | Andréa MANCINI    | 24  | 78230       |
| 5         | Olivier FELTRE    | 59  | 75016       |

---

### 🏷️ Marques

| id_marque | nom_marque   |
|-----------|--------------|
| 1         | Coca-cola    |
| 2         | Cristalline  |
| 3         | Monster      |
| 4         | Pepsico      |

---

### 🧃 Boissons (avec marque)

| id_boisson | nom_boisson                   | Marque associée |
|------------|-------------------------------|-----------------|
| 1          | Coca-cola zéro                | Coca-cola       |
| 2          | Coca-cola original            | Coca-cola       |
| 3          | Fanta citron                  | Coca-cola       |
| 4          | Fanta orange                  | Coca-cola       |
| 5          | Capri-sun                     | Coca-cola       |
| 6          | Pepsi                         | Pepsico         |
| 7          | Pepsi Max Zéro                | Pepsico         |
| 8          | Lipton zéro citron            | Pepsico         |
| 9          | Lipton Peach                  | Pepsico         |
| 10         | Monster energy ultra gold     | Monster         |
| 11         | Monster energy ultra blue     | Monster         |
| 12         | Eau de source                 | Cristalline     |

---

### 🥗 Liste des ingrédients disponibles

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

### 🍕 Composition des focaccias

| id_focaccia | nom_focaccia    | prix   | ingrédients |
|-------------|------------------|--------|-------------|
| 1           | Américaine       | 10.80  | Bacon, Base tomate, Cresson, Mozarella, Olive noire, Parmesan, Poivre, Pomme de terre |
| 2           | Emmentalaccia    | 9.80   | Base crème, Champignon, Cresson, Emmental, Oignon, Parmesan, Poivre |
| 3           | Gorgonzollaccia  | 10.80  | Ail, Base tomate, Champignon, Cresson, Gorgonzola, Olive noire, Parmesan, Poivre |
| 4           | Hawaienne        | 11.20  | Ananas, Bacon, Base tomate, Cresson, Mozarella, Olive noire, Parmesan, Piment, Poivre |
| 5           | Mozaccia         | 9.80   | Ail, Artichaut, Base tomate, Champignon, Cresson, Jambon fumé, Mozarella, Olive noire, Parmesan, Poivre |
| 6           | Paysanne         | 12.80  | Ail, Artichaut, Base crème, Champignon, Chèvre, Cresson, Jambon fumé, Oeuf, Olive noire, Parmesan, Poivre, Pomme de terre |
| 7           | Raclaccia        | 8.90   | Ail, Base tomate, Champignon, Cresson, Parmesan, Poivre, Raclette |
| 8           | Tradizione       | 8.90   | Base tomate, Champignon, Cresson, Jambon cuit, Mozarella, Olive noire, Olive verte, Parmesan, Poivre |

---

### 🍽️ Menus disponibles

| id_menu | nom_menu                                  | prix_menu (€) |
|---------|-------------------------------------------|---------------|
| 1       | Solo : 1 focaccia + 1 boisson             | 13.00         |
| 2       | Duo : 2 focaccias + 2 boissons            | 24.00         |
| 3       | Famille : 4 focaccias + 4 boissons        | 42.00         |
| 4       | Solo Soif : 1 focaccia + 2 boissons       | 18.00         |
| 5       | Duo Soif : 2 focaccias + 3 boissons       | 28.00         |
| 6       | Famille Soif : 4 focaccias + 5 boissons   | 45.00         |
| 7       | Solo Faim : 2 focaccias + 1 boisson       | 21.00         |
| 8       | Duo Faim : 4 focaccias + 2 boissons       | 41.00         |
| 9       | Famille Faim : 6 focaccias + 4 boissons   | 55.00         |
| 10      | Soirée : 10 focaccias + 10 boissons       | 90.00         |

---

### 📅 Jours des activités

| id_jour | date_jour  |
|---------|------------|
| 1       | 01/06/2025 |
| 2       | 02/06/2025 |
| 3       | 03/06/2025 |
| 4       | 04/06/2025 |
| 5       | 05/06/2025 |
| 6       | 06/06/2025 |

---

### 📊 Activités des menus

| Jour | Client | Menu | Prix (€) | Composition paiement menus |
|--|--|---|--|--|
| 01/06/2025 | Lucia BELLINI | Duo Soif : 2 focaccias + 3 boissons | 28,00 | { focaccias (Gorgonzollaccia, Gorgonzollaccia) & boissons (Coca-cola original, Fanta citron, Coca-cola original) } |
| 02/06/2025 | Armand CAMUS | Duo : 2 focaccias + 2 boissons  | 24,00 | { focaccias (Raclaccia, Tradizione) & boissons (Fanta orange, Coca-cola zéro) } |
| 03/06/2025 | Armand CAMUS | Solo : 1 focaccia + 1 boisson | 13,00 | { focaccias (Américaine) & boissons (Coca-cola original) } |
| 03/06/2025 | Lucia BELLINI | Duo : 2 focaccias + 2 boissons | 24,00 | { focaccias (Américaine, Paysanne) & boissons (Coca-cola original, Coca-cola original) } |
| 05/06/2025 | Nour KHADIJA | Solo Faim : 2 focaccias + 1 boisson | 21,00 | { focaccias (Mozaccia, Raclaccia) & boissons (Coca-cola original) } |
| 05/06/2025 | Lucia BELLINI | Solo : 1 focaccia + 1 boisson | 13,00 | { focaccias (Hawaienne) & boissons (Coca-cola original) } |
| 05/06/2025 | Lucia BELLINI | Famille : 4 focaccias + 4 boissons | 42,00 | { focaccias (Gorgonzollaccia, Tradizione, Paysanne, Emmentalaccia) & boissons (Coca-cola original ×4) } |
| 06/06/2025 | Olivier FELTRE | Duo : 2 focaccias + 2 boissons | 24,00 | { focaccias (Raclaccia, Emmentalaccia) & boissons (Coca-cola original ×2) } |

---

### 🛍️ Activités des focaccias

| Jour         | Client           | Composition achat focaccias                              | Prix (€) |
|--------------|------------------|----------------------------------------------------------|----------|
| 01/06/2025   | Lucia BELLINI    | { Gorgonzollaccia, Gorgonzollaccia }                     | 21,60    |
| 02/06/2025   | Armand CAMUS     | { Raclaccia, Tradizione }                                | 17,80    |
| 03/06/2025   | Armand CAMUS     | { Américaine }                                           | 10,80    |
| 03/06/2025   | Lucia BELLINI    | { Américaine, Paysanne }                                 | 23,60    |
| 05/06/2025   | Nour KHADIJA     | { Mozaccia, Raclaccia }                                  | 18,70    |
| 05/06/2025   | Lucia BELLINI    | { Hawaienne }                                            | 11,20    |
| 05/06/2025   | Lucia BELLINI    | { Gorgonzollaccia, Tradizione, Paysanne, Emmentalaccia } | 42,30    |
| 06/06/2025   | Olivier FELTRE   | { Raclaccia, Emmentalaccia }                             | 18,70    |

---

## 🧮 Synthèse du jeu de données

- Nombre total de clients : **5**
- Nombre de menus définis : **10**
- Focaccias référencées : **8**
- Boissons disponibles : **12**
- Jours d'activités : **6**

Un fichier excel de calculs du jeu de données est disponibles : [`datas-testing-calculate.xlsx`](../../../../../sources/datas-xlsx/datas-testing-calculate.xlsx).

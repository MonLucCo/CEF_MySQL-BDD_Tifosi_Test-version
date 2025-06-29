# 🧩 MPD – v0.3 `Tifosi`

> 🛠️ Modèle Physique de Données conforme au script `create_tifosi.sql` livré en `sql-v0.3/`  
> 🔹 Version gelée pour la livraison v0.3 : utilisée pour insertion, requêtes métiers et sauvegarde `mysqldump`  
> 📎 Ce MPD reflète la structure issue du modèle `model_tifosi_v03.mwb`

---

## 📦 Tables principales

### `clients`

| Colonne       | Type        | Contraintes            |
|---------------|-------------|------------------------|
| id_client     | INT         | PK, AUTO_INCREMENT     |
| nom_client    | VARCHAR(45) | NOT NULL               |
| age           | INT         | NULL                   |
| cp_client     | INT         | NULL                   |

---

### `jours`

| Colonne       | Type  | Contraintes            |
|---------------|-------|------------------------|
| id_jour       | INT   | PK, AUTO_INCREMENT     |
| date_jour     | DATE  | NOT NULL, UNIQUE       |

---

### `focaccias`

| Colonne         | Type         | Contraintes            |
|------------------|--------------|------------------------|
| id_focaccia      | INT          | PK, AUTO_INCREMENT     |
| nom_focaccia     | VARCHAR(45)  | NOT NULL               |
| prix_focaccia    | DECIMAL(5,2) | NOT NULL               |

---

### `menus`

| Colonne       | Type         | Contraintes            |
|---------------|--------------|------------------------|
| id_menu       | INT          | PK, AUTO_INCREMENT     |
| nom_menu      | VARCHAR(45)  | NOT NULL               |
| prix_menu     | DECIMAL(5,2) | NOT NULL               |

---

### `ingredients`

| Colonne         | Type         | Contraintes            |
|------------------|--------------|------------------------|
| id_ingredient    | INT          | PK, AUTO_INCREMENT     |
| nom_ingredient   | VARCHAR(45)  | NOT NULL               |

---

### `marques`

| Colonne     | Type         | Contraintes            |
|-------------|--------------|------------------------|
| id_marque   | INT          | PK, AUTO_INCREMENT     |
| nom_marque  | VARCHAR(45)  | NOT NULL               |

---

### `boissons`

| Colonne       | Type         | Contraintes                        |
|----------------|--------------|------------------------------------|
| id_boisson     | INT          | PK, AUTO_INCREMENT                 |
| nom_boisson    | VARCHAR(45)  | NOT NULL                           |
| marque_id      | INT          | FK → `marques(id_marque)` (ON DELETE SET NULL) |

---

## 🔗 Tables associatives / relationnelles

### `focaccias_menus` (relation binaire avec identifiant)

| Colonne            | Type | Contraintes                             |
|--------------------|------|------------------------------------------|
| id_focaccia_menu   | INT  | PK, AUTO_INCREMENT                      |
| focaccia_id        | INT  | FK → `focaccias(id_focaccia)`, NOT NULL |
| menu_id            | INT  | FK → `menus(id_menu)`, NOT NULL         |

---

### `boissons_menus` (relation binaire avec identifiant)

| Colonne           | Type | Contraintes                             |
|-------------------|------|------------------------------------------|
| id_boisson_menu   | INT  | PK, AUTO_INCREMENT                      |
| boisson_id        | INT  | FK → `boissons(id_boisson)`, NOT NULL   |
| menu_id           | INT  | FK → `menus(id_menu)`, NOT NULL         |

---

### `clients_jours_menus` (relation ternaire avec PK composée)

| Colonne     | Type | Contraintes                       |
|-------------|------|-----------------------------------|
| client_id   | INT  | FK → `clients(id_client)`         |
| jour_id     | INT  | FK → `jours(id_jour)`             |
| menu_id     | INT  | FK → `menus(id_menu)`             |
| **PK**      |      | (`client_id`, `jour_id`, `menu_id`) |

---

### `clients_focaccias_jours` (relation ternaire avec PK composée)

| Colonne      | Type | Contraintes                          |
|--------------|------|--------------------------------------|
| client_id    | INT  | FK → `clients(id_client)`            |
| focaccia_id  | INT  | FK → `focaccias(id_focaccia)`        |
| jour_id      | INT  | FK → `jours(id_jour)`                |
| **PK**       |      | (`client_id`, `focaccia_id`, `jour_id`) |

---

### `focaccias_ingredients` (relation binaire avec PK composée)

| Colonne        | Type | Contraintes                             |
|----------------|------|------------------------------------------|
| focaccia_id    | INT  | FK → `focaccias(id_focaccia)`           |
| ingredient_id  | INT  | FK → `ingredients(id_ingredient)`       |
| **PK**         |      | (`focaccia_id`, `ingredient_id`)        |

---

## 🔎 Observations

- Les tables de données utilisent des identifiants auto-incrémentés (`INT`).
- Les tables relationnelles binaires (`boissons_menus`, `focaccias_menus`) ont un identifiant unique (`id_*`).
- Les tables ternaires (`clients_jours_menus`, `clients_focaccias_jours`) utilisent une **clé primaire composée**, sans identifiant dédié.
- Le modèle respecte une **intégrité référentielle stricte**, avec suppression partielle (`ON DELETE SET NULL`) pour la table `boissons`.

---

📂 Fichier source : `sql/sql-v0.3/create_tifosi.sql`  
🧾 Document rédigé dans le cadre de `issue #11` – v0.4 documentaire  
✍️ Auteur : **PerLucCo**

---

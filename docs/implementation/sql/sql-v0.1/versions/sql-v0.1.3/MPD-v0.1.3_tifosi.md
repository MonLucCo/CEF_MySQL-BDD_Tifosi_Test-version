# 🗂️ MPD v0.1.3 — Base `tifosi` (structure complète, sans données)

---

- [🗂️ MPD v0.1.3 — Base `tifosi` (structure complète, sans données)](#️-mpd-v013--base-tifosi-structure-complète-sans-données)
  - [🎯 Objectif](#-objectif)
  - [🧱 Structure physique de la base `tifosi_v013`](#-structure-physique-de-la-base-tifosi_v013)
  - [🔁 Évolutions par rapport à la version v0.1.2](#-évolutions-par-rapport-à-la-version-v012)
  - [📎 Documentation et scripts associés](#-documentation-et-scripts-associés)
  - [🖥️ Visualisation graphique du schéma relationnel](#️-visualisation-graphique-du-schéma-relationnel)
  - [🧭 Conclusion](#-conclusion)

---

## 🎯 Objectif

La version v0.1.3 constitue la première version structurelle complète et stabilisée de la base `tifosi`. Elle reprend l’intégralité du modèle relationnel défini dans `MRLD-v1.1_tifosi.md`, sans données d’exemple. Aucun utilisateur ou insertion n’est prévue dans cette version : elle est exclusivement destinée à la validation structurelle.

---

## 🧱 Structure physique de la base `tifosi_v013`

Cette base comprend :

- 7 entités principales :
  - `clients`, `jours`, `focaccias`, `menus`, `boissons`, `marques`, `ingredients`
- 3 relations N:N :
  - `clients_jours_menus` (relation ternaire)
  - `clients_focaccias_jours` (relation ternaire)
  - `focaccias_ingredients`, `boissons_menus` (relations binaires)
- L’ensemble des tables utilise le moteur `InnoDB` et est encodé en `utf8mb4`.

Toutes les clés primaires sont explicites, et les **clés étrangères sont déclarées avec suppression contrôlée (`ON DELETE SET NULL`)** là où cela a du sens fonctionnel (menus/focaccias, boissons/marques).

---

## 🔁 Évolutions par rapport à la version v0.1.2

- Nommage conforme aux conventions du **MRLD v1.1** (notamment `boissons_menus`)
- **Correction de l’ordre des clés composées** sur `boissons_menus` :  
  `PRIMARY KEY (menu_id, boisson_id)` (conforme au modèle logique)
- Aucune donnée insérée
- Aucun utilisateur défini ici (prévu dans les versions de type `v0.2.x`)
- Schéma réutilisable via `init_v013.sql`

---

## 📎 Documentation et scripts associés

- `create_tifosi_v013.sql` : script de création complet de la base
- `init_v013.sql` : initialisation automatisée (structure uniquement et utilisateur `create_user_tifosi.sql`)
- `test_v013.sql` : tests de validation automatisés (chargement données `data-test_v013.sql` et requêtes `queries-test_v013.sql`)
- [README_test-v0.1.3.md](README_test-v0.1.3.md) : protocole de vérification des tables et contraintes
- [MRLD-v1.1_tifosi.md](../../../../mld/mrld-versions/MRLD-v1.1_tifosi.md) : modèle logique relationnel de référence

---

## 🖥️ Visualisation graphique du schéma relationnel

Une modélisation EER du schéma a été générée à partir de la base réelle via **MySQL Workbench**, puis enregistrée dans le fichier suivant :

- `sql-v0.1.3/model_tifosi_v013.mwb` (modèle réutilisable)
- Export image : [sql-v0.1.3/model_tifosi_v013.mwb.png](model_tifosi_v013.mwb.png) (non versionnée)

📌 À noter : dans Workbench, seule la **première colonne d’une clé primaire composée** est marquée d’un symbole 🔑. Les autres colonnes sont bien membres de la contrainte, mais ne sont pas annotées visuellement. Cela concerne notamment les tables de relations binaires et ternaires.

---

## 🧭 Conclusion

La version `v0.1.3` constitue un socle de développement rigoureux, indépendant de toute donnée ou privilège, directement exploitable pour les insertions et les tests de cohérence métier (`v0.2.x`). Elle clôt le cycle structurel `v0.1.x`.

---

# 🧾 Historique — Scripts SQL & Base de données

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 29 juin 2025  

---

- [🧾 Historique — Scripts SQL \& Base de données](#-historique--scripts-sql--base-de-données)
  - [✅ V0 – Script de création initiale de la base Tifosi (2025-06-18)](#-v0--script-de-création-initiale-de-la-base-tifosi-2025-06-18)
  - [✅ V0.0 – Réorganisation documentaire et du versionnement des scripts (2025-06-23)](#-v00--réorganisation-documentaire-et-du-versionnement-des-scripts-2025-06-23)
  - [🚫 V0.1 – Section absorbée par les versions détaillées suivantes](#-v01--section-absorbée-par-les-versions-détaillées-suivantes)
  - [✅ V0.1.1 – Modélisation relationnelle et implémentation physique (2025-06-23)](#-v011--modélisation-relationnelle-et-implémentation-physique-2025-06-23)
  - [✅ V0.1.2 – Sécurisation de la base versionnée via utilisateur `tifosi` (2025-06-25)](#-v012--sécurisation-de-la-base-versionnée-via-utilisateur-tifosi-2025-06-25)
  - [✅ V0.1.3 – Base de données complète avec  Utilisateur administrateur `tifosi` (2025-06-26)](#-v013--base-de-données-complète-avec--utilisateur-administrateur-tifosi-2025-06-26)
  - [✅ V0.2.0 – Chargement partiel des données validées (2025-06-26)](#-v020--chargement-partiel-des-données-validées-2025-06-26)
  - [✅ V0.2.1 – Chargement des données (2025-06-28)](#-v021--chargement-des-données-2025-06-28)
  - [✅ V0.3 – Sauvegarde de la base et validation par requêtes métier (2025-06-29)](#-v03--sauvegarde-de-la-base-et-validation-par-requêtes-métier-2025-06-29)
  - [✅ V0.4 – Alignement documentaire de la base Tifosi (2025-06-29)](#-v04--alignement-documentaire-de-la-base-tifosi-2025-06-29)

---

## ✅ V0 – Script de création initiale de la base Tifosi (2025-06-18)

- Génération du script `create_tifosi.sql` pour validation des outils (MySQl Workbench et phpMyAdmin)
- Déclaration d'une table de test vide

📎 Fichier produit : `create_tifosi.sql`  
🗓️ Commit : [`d24924fc`](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/d24924fc)
📌 Issue liée : [#3](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/3)

---

## ✅ V0.0 – Réorganisation documentaire et du versionnement des scripts (2025-06-23)

- Déplacement de la version _V0_ et mise en place du versionning des implémentations SQL.

📎 Fichier produit : `create_tifosi.sql`  
🗓️ Commit : [ff7dc352](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/ff7dc352)
📌 Issue liée : [#5](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5)

---

## 🚫 V0.1 – Section absorbée par les versions détaillées suivantes

Cette étape intermédiaire a été décomposée plus précisément en :

- ✅ V0.1.1 : Création de la structure SQL (base `tifosi_v011`)
- ✅ V0.1.2 : Sécurisation via utilisateur `tifosi`

➡️ Voir les sections correspondantes pour le détail des fichiers et des commits.

---

## ✅ V0.1.1 – Modélisation relationnelle et implémentation physique (2025-06-23)

- Création des tables relationnelles selon le MRLD v1
- Déclaration des types SQL, clés primaires et étrangères
- Construction des relations N:N : `clients_jours_menus` et `clients_focaccias_jours`
- Génération de la base `tifosi_v011` comme base versionnée de conception

📎 Fichiers produits :

- `create_tifosi.sql`
- `MPD-v0.1.1_tifosi.md`

🗓️ Commit : [df85b10f](github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/commit/df85b10f)  
📌 Issue liée : [#5](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5)

---

## ✅ V0.1.2 – Sécurisation de la base versionnée via utilisateur `tifosi` (2025-06-25)

- Création de l’utilisateur `tifosi`, administrateur métier local de la base `tifosi_v011`
- Attribution des droits complets (`ALL PRIVILEGES`), avec **GRANT OPTION révoqué**
- Mise en place d’un script d’initialisation complet : `init_v012.sql`
- Rédaction des fichiers de définition (`README_user`) et de test (`README_test`)
- Documentation complète dans `MPD-v0.1.2_tifosi.md`

> 🛠️ Correctif post-tests :
>
> - Ajout de la suppression conditionnelle de la base (`DROP DATABASE IF EXISTS`) dans `create_tifosi.sql`
> - Réécriture de `create_user_tifosi.sql` avec :
>
>   - `DROP USER IF EXISTS` (réinitialisable)
>   - suppression de la commande `REVOKE` (inutile car aucun droit de délégation accordé)
>   - attribution ciblée des droits sur `tifosi_v011.*`

📎 Fichiers produits :

- `create_user_tifosi.sql`
- `init_v012.sql`
- `README_user-v0.1.2.md`
- `README_test-v0.1.2.md`
- `MPD-v0.1.2_tifosi.md`

🗓️ Commit : prévu dans `partial fix #5 (2b)`  
📌 Issue liée : [#5](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5)

---

## ✅ V0.1.3 – Base de données complète avec  Utilisateur administrateur `tifosi` (2025-06-26)

🗓️ Date : 2025-06-26  
🎯 Objectif : Finaliser la structure physique de la base `tifosi`, en lien avec `MRLD-v1.1`, sans données ni privilèges applicatifs.  
📘 Référence documentaire : `MPD-v0.1.3_tifosi.md`, `README_test-v0.1.3.md`

✨ Contenu de cette version :

- Script d’initialisation complet : `init_v013.sql` (création base + utilisateur `tifosi`)
- Données de test : `data-test_v013.sql`
- Requêtes de validation : `queries-test_v013.sql`
- Script d’automatisation : `test_v013.sql`
- Génération du schéma EER : `model_tifosi_v013.mwb` + image non versionnée
- Résultats validés (requêtes et Workbench) — voir `README_test`

🔐 Tests réalisés avec l’utilisateur `tifosi`, comme prévu
📌 Cette version clôt le cycle `v0.1.x`

---

## ✅ V0.2.0 – Chargement partiel des données validées (2025-06-26)

🗓️ Date : 2025-06-26  
🎯 Objectif : Charger un premier ensemble cohérent de données dans la base `tifosi`, en exploitant des fichiers `.csv` produits depuis les sources `.xlsx`.

📌 Résultat :

- Données chargées :
  - `marques` (+ FK sur `boissons`)
  - `ingredients`
  - `boissons`
  - `focaccias`
  - `focaccias_ingredients` (relation N:N)
- Scripts stabilisés dans le répertoire `/sql-v0.2/versions/sql-v0.2.0/`

📎 Fichiers produits :

- `create_tifosi.sql` → création de la base + tables + utilisateur `tifosi`
- `insert_data.sql` → chargement complet des `.csv`
- `queries-test_v020.sql` → premières requêtes de validation fonctionnelle
- `README_data-v0.2.0.md`, `README_test-v0.2.0.md`, `README_sql-v0.2.md` → documentation versionnée
- `model_tifosi_v020.mwb` + `model_tifosi_v020.mwb.png` → modèle EER

⚠️ Constat post-validation :
Lors des tests (`queries-test_v020.sql`), une **incohérence entre le MCD v2.1 et le MRLD v1.1** a été identifiée, notamment sur la relation `menus` ↔ `focaccias`.  
Cela a conduit à un **chargement partiel des entités validées uniquement**.

📌 Issue concernée : [#6 (partie 1)](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/6) — chargement initial des données

➡️ Une correction du **MRLD** est planifiée dans la version `v0.2.1` via la réouverture des issues #4 et #5, suivie d’un rechargement dans #6.2

---

## ✅ V0.2.1 – Chargement des données (2025-06-28)

>🔄 Cette version intégre les modifications issues de la reprise du cycle MCD → MRLD → MPD initiée après les constats de `v0.2.0`.

🗓️ Date : 2025-06-28  
🎯 Objectif : Finaliser la structure relationnelle complète de la base `tifosi`, incluant les 13 tables, les relations binaires et ternaires, et les contraintes référentielles.

📌 Cette version couvre deux issues distinctes :

- 🔹 **Issue #5.2** : création et documentation de la base (sans insertion de données)
- 🔹 **Issue #6.1** : préparation de l’insertion des données de test (structure uniquement)

---

🔧 **Contenu de l’issue #5.2 - Structure complète de la base `tifosi` conforme au MRLD v2** (2025-06-28)

- Script `create_tifosi.sql` : déclaration des 12 tables avec leurs contraintes (PK, FK, NOT NULL, relations N:N et ternaires)
- Documentation :
  - `README_data-v0.2.1.md` (description structurée des entités)
  - `README_test-v0.2.1.md` (cahier de test fonctionnel lié à la structure)
- Modèle relationnel :
  - `model_tifosi_v021.mwb` + image EER exportée

🟢 Cette sous-version est une **base stable, documentée et testable**, sans encore charger de données.

---

📦 **Contenu préparatoire de l’issue #6.1 - Chargement des données conforme au MRLD v2**

- Script `insert_data.sql` (préparation complète de l’insertion des données en `.csv`)
- Fichier `queries-test_v021.sql` (requêtes de vérification post-insertion)
- Fichier `DATAS-TESTING.md` (synthèse agrégée des jeux de données injectables)
- Fichier `result-queries-test_v021.txt` (résultats des requêtes de validation de `queries-test_v021.sql`)
- Fichier image `model_tifosi_v021.mwb.png` (fichier d'exécution des tests en mode terminal)
- Classeur `datas-tests.xlsx` (en préparation) + archive `datas-csv_v021.zip` (13 fichiers `.csv`)

⚠️ Ces fichiers sont **préparés mais non encore exécutés** : l’injection effective des données sera tracée en `v0.2.2`.

📂 Dossier concerné : `/sql-v0.2/versions/sql-v0.2.1/`  
📌 Issues liées :  

- [#5.2 – Structure complète de la base](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/5)  
- [#6.1 – Préparation au chargement des données de test](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/6)

---

## ✅ V0.3 – Sauvegarde de la base et validation par requêtes métier (2025-06-29)

🗓️ Date : 2025-06-29  
🎯 Objectif : Produire une **version figée et validée** de la base `tifosi`, comprenant :

- la structure complète issue du MPD final (`v0.2.1`)
- les données chargées via `insert_data.sql`
- la sauvegarde complète via `mysqldump`
- les requêtes de validation métier et la preuve de restauration

📎 Contenu de cette version :

- **Sauvegarde SQL `backup_tifosi.sql`** :

  - générée avec l’utilisateur `tifosi` via :  

    ```bash
    mysqldump --no-tablespaces -u tifosi -p tifosi > backup_tifosi.sql
    ```

  - fichier textuel contenant toute la structure (`CREATE TABLE`) et les données (`INSERT`)
- **Tests métier (`queries_test_v03.sql`)** :
  - rejoués avant et après restauration pour valider la consistance
  - résultats identiques confirmés par fichier :
    - `result-test-queries_v03-initial.txt`
    - `result-test-queries_v03-postRestoreBackup.txt`
- **Documentation** :
  - [`README_backup.md`](sql-v0.3/README_bakup.md) : procédure de sauvegarde/restauration
  - [`README_test-v0.3.md`](sql-v0.3/README_test-v0.3.md) : description détaillée des requêtes, objectifs métier et preuve de validation
  - [`README_sql-v0.3.md`](sql-v0.3/README_sql-v0.3.md) : vue synthétique de la version, fichiers et validation croisée

>✅ Cette version constitue une **livraison stable et complète** du projet SQL `tifosi`, avec rejouabilité garantie et livrables vérifiés.
>
>🔒 Cette version fige la base Tifosi pour évaluation ou livraison externe.

📂 Dossier associé : [`sql-v0.3`](./sql-v0.3/)

📌 Issue concernée : [#7 – Sauvegarde, tests & finalisation SQL](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/7)  

---

## ✅ V0.4 – Alignement documentaire de la base Tifosi (2025-06-29)

🎯 Objectif : Finaliser la documentation de la version `v0.3` de la base `tifosi`, sans modifier la structure SQL.

📌 Contenu de la version `v0.4` :

- Consolidation documentaire transversale :
  - `MPD-v0.3_tifosi.md` : modèle physique directement dérivé du script `create_tifosi.sql`
  - Explication du typage `DECIMAL(5,2)` pour les prix (voir `README_implementation.md`)
  - Harmonisation des liens entre les README : `sql`, `docs`, `implementation`
- Aucune modification du script SQL de structure (`create_tifosi.sql`)
- Aucune nouvelle donnée insérée

📎 Fichiers concernés :

- `README_implementation.md`, `README_docs.md`, `README_sql-v0.3.md`, `MPD-v0.3_tifosi.md`

📌 Issue liée : [#11 – documentation unifiée (v0.4)](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/issues/11)

---

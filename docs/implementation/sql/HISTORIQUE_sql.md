# 🧾 Historique — Scripts SQL & Base de données

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 24 juin 2025  

---

- [🧾 Historique — Scripts SQL \& Base de données](#-historique--scripts-sql--base-de-données)
  - [✅ V0 – Script de création initiale de la base Tifosi (2025-06-18)](#-v0--script-de-création-initiale-de-la-base-tifosi-2025-06-18)
  - [✅ V0.0 – Réorganisation documentaire et du versionnement des scripts (2025-06-23)](#-v00--réorganisation-documentaire-et-du-versionnement-des-scripts-2025-06-23)
  - [🚫 V0.1 – Section absorbée par les versions détaillées suivantes](#-v01--section-absorbée-par-les-versions-détaillées-suivantes)
  - [✅ V0.1.1 – Modélisation relationnelle et implémentation physique (2025-06-23)](#-v011--modélisation-relationnelle-et-implémentation-physique-2025-06-23)
  - [✅ V0.1.2 – Sécurisation de la base versionnée via utilisateur `tifosi` (2025-06-25)](#-v012--sécurisation-de-la-base-versionnée-via-utilisateur-tifosi-2025-06-25)
  - [🚧 V0.1.3 – Base de données complète avec  Utilisateur administrateur `tifosi` (2025-06-XX)](#-v013--base-de-données-complète-avec--utilisateur-administrateur-tifosi-2025-06-xx)

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

## 🚧 V0.1.3 – Base de données complète avec  Utilisateur administrateur `tifosi` (2025-06-XX)

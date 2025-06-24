# 🧪 Tests de validation — Étape v0.1.2

---

- [🧪 Tests de validation — Étape v0.1.2](#-tests-de-validation--étape-v012)
  - [🎯 Objectif](#-objectif)
  - [🚀 Initialisation complète](#-initialisation-complète)
  - [🧪 Protocole de test](#-protocole-de-test)
  - [✅ Résultats attendus](#-résultats-attendus)
  - [📎 Fichiers liés](#-fichiers-liés)

---

## 🎯 Objectif

Vérifier que l’utilisateur SQL `tifosi`, créé via le script `create_user_tifosi.sql`, possède bien tous les privilèges sur la base `tifosi_v011`, à l’exclusion du droit de délégation (`GRANT OPTION`), conformément aux exigences du sujet.

---

## 🚀 Initialisation complète

Avant de tester les droits de l’utilisateur `tifosi`, il est possible d’initialiser automatiquement la base `tifosi_v011` à l’aide du fichier suivant :

Fichier : `init_v012.sql`

Commande d’exécution depuis le terminal :

Début bash :  
mysql -u root -p < init_v012.sql  
Fin bash

Ce script exécute successivement :

1. la création de la base `tifosi_v011` et de sa structure (`create_tifosi.sql`)  
2. la création de l’utilisateur `tifosi` et l’attribution de ses privilèges (`create_user_tifosi.sql`)

La base est alors prête à être utilisée avec l’utilisateur `tifosi` pour les tests décrits ci-dessus.

---

## 🧪 Protocole de test

1. Connexion à MySQL avec l’utilisateur `tifosi` :

    ```bash
    mysql -u tifosi -p
    ```

2. Accès à la base `tifosi_v011` :

    ```sql
    SHOW DATABASES;
    USE tifosi_v011;
    ```

3. Test des droits complets sur la base :

    ```sql
    CREATE TABLE test_table (id INT);
    INSERT INTO test_table VALUES (1);
    SELECT * FROM test_table;
    DROP TABLE test_table;
    Fin SQL
    ```

4. Vérification de l’absence de droits sur les bases système :

    ```sql
    USE mysql;
    ```

5. Vérification de l’impossibilité de délégation des droits :

    ```sql
    GRANT SELECT ON tifosi_v011.* TO 'autre_user'@'localhost';
    ```

---

## ✅ Résultats attendus

- La base `tifosi_v011` est visible et utilisable par l’utilisateur `tifosi`
- Toutes les commandes sur cette base sont autorisées
- L’accès à d’autres bases système est interdit
- La commande GRANT échoue pour l’utilisateur `tifosi`

---

## 📎 Fichiers liés

- [create_user_tifosi.sql](create_user_tifosi.sql) : script de création du compte `tifosi`
- [README_user-v0.1.2.md](README_user-v0.1.2.md) : définition et justification des privilèges
- [MPD-v0.1.2.md](MPD-v0.1.2_tifosi.md) : référence structurelle de la version

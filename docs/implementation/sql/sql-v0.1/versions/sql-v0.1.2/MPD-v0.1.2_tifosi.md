# 🗂️ MPD v0.1.2 — Base `tifosi` + sécurité (création utilisateur)

---

- [🗂️ MPD v0.1.2 — Base `tifosi` + sécurité (création utilisateur)](#️-mpd-v012--base-tifosi--sécurité-création-utilisateur)
  - [🎯 Objectif](#-objectif)
  - [🧱 Structure SQL héritée](#-structure-sql-héritée)
  - [🔐 Spécificité de la version v0.1.2](#-spécificité-de-la-version-v012)
    - [🛡️ Administrateur de la base : Utilisateur `tifosi`](#️-administrateur-de-la-base--utilisateur-tifosi)
    - [📎 Documentation associée](#-documentation-associée)
    - [⚙️ Initialisation automatisée](#️-initialisation-automatisée)
    - [🧪 Portée des tests associés](#-portée-des-tests-associés)
  - [🧭 Conclusion](#-conclusion)

---

## 🎯 Objectif

Cette version assure la transition entre la structure relationnelle partielle de la base (`v0.1.1`) et la mise en place d’un environnement sécurisé via la création de l’utilisateur `tifosi`.

Aucun changement n’est apporté à la structure du schéma physique. L’évolution porte exclusivement sur l’attribution de privilèges adaptés pour une gestion autonome de la base.

---

## 🧱 Structure SQL héritée

La structure relationnelle (tables, clés, relations N:N) est strictement identique à celle de la version `v0.1.1` :

- Entités : `clients`, `menus`, `focaccias`, `jours`
- Relations N:N :
  - `clients_jours_menus`
  - `clients_focaccias_jours`
- Contraintes : clés primaires, clés étrangères, unicité

📎 Structure initialement définie dans :  
[`MPD-v0.1.1_tifosi.md`](../sql-v0.1.1/MPD-v0.1.1_tifosi.md)

---

## 🔐 Spécificité de la version v0.1.2

### 🛡️ Administrateur de la base : Utilisateur `tifosi`

- Créé par le script : `create_user_tifosi.sql`
- Privilèges accordés : `ALL PRIVILEGES ON tifosi.*`
- Droit de délégation (`GRANT OPTION`) : **révoqué**
- Limitation à l’hôte : `'localhost'`
- Mot de passe : défini dans le script selon les consignes de sécurité

### 📎 Documentation associée

- [README_user-v0.1.2.md](README_user-v0.1.2.md) : définition, rôle, justification des droits
- [README_test-v0.1.2.md](README_test-v0.1.2.md) : protocole de test de connexion et d’exécution
- [create_user_tifosi.sql](create_user_tifosi.sql) : script SQL principal de l’étape
- [init_v012](init_v012.sql) : script d'automatisation de l'initialisation de la base de données

---

### ⚙️ Initialisation automatisée

La version `v0.1.2` peut être installée en une seule commande grâce au fichier `init_v012.sql`.

Ce script enchaîne deux étapes :

1. La création de la base `tifosi_v011` et de sa structure (`create_tifosi.sql`)
2. La création de l’utilisateur `tifosi` et l’attribution de ses privilèges (`create_user_tifosi.sql`)

📁 Emplacement : `sql-v0.1/versions/sql-v0.1.2/init_v012.sql`

📌 Commande d’exécution recommandée (depuis le terminal) :

Début bash :  
mysql -u root -p < init_v012.sql  
Fin bash

⚠️ Remarque : le script doit être exécuté par un utilisateur SQL disposant des droits `CREATE`, `CREATE USER` et `GRANT`.

L’environnement complet de la version `v0.1.2` est ainsi initialisé de manière reproductible, prêt à être utilisé pour les tests métier via le compte `tifosi`.

### 🧪 Portée des tests associés

L’utilisateur `tifosi` est capable de :

- Créer, modifier, supprimer toutes les tables de la base
- Insérer et manipuler des données
- Exécuter des requêtes de lecture complexes
- Gérer les contraintes, clés, index

Il ne peut pas :

- Intervenir sur les bases `mysql`, `information_schema`, etc.
- Redistribuer ses droits via `GRANT ... TO`

---

## 🧭 Conclusion

La version `v0.1.2` établit la couche de sécurité nécessaire à la poursuite du projet dans un contexte réaliste. Elle constitue une étape autonome dans l’évolution contrôlée de la base `tifosi`, avant sa généralisation fonctionnelle en `v0.1.3`.

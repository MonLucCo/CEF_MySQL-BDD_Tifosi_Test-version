# 🔐 Utilisateur SQL `tifosi` — Étape v0.1.2

---

- [🔐 Utilisateur SQL `tifosi` — Étape v0.1.2](#-utilisateur-sql-tifosi--étape-v012)
  - [🎯 Objectif](#-objectif)
  - [🔐 Privilèges accordés](#-privilèges-accordés)
  - [🧪 Portée des droits](#-portée-des-droits)
  - [🗝️ Utilisation prévue](#️-utilisation-prévue)
  - [🚀 Initialisation automatisée avec `init_v012.sql`](#-initialisation-automatisée-avec-init_v012sql)
  - [📎 Fichiers liés](#-fichiers-liés)

---

## 🎯 Objectif

Mettre en œuvre un utilisateur SQL nommé `tifosi`, défini comme administrateur métier de la base de données `tifosi`, conformément aux attendus du sujet.

Dans cette phase de conception, il s'agit de créer un compte SQL `tifosi`, administrateur **local sur la base versionnée `tifosi_v011`**, pour mener les tests de conception métier sans utiliser root.

L'administrateur de la base, l'utilisateur `tifosi` doit :

- être restreint à la base `tifosi_v011`
- disposer de tous les droits sur cette base
- ne pas avoir de privilèges sur d’autres bases (ex : `mysql`, `information_schema`)
- ne pas pouvoir déléguer ses privilèges (GRANT OPTION désactivé)

> ℹ️ L’utilisateur tifosi sera réutilisé et étendu à partir de la version v0.1.3, puis consolidé définitivement en v0.2.x.

---

## 🔐 Privilèges accordés

Les instructions SQL suivantes sont utilisées :

```sql
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'TifosiPwd_24';

GRANT ALL PRIVILEGES ON tifosi_v011.* TO 'tifosi'@'localhost';

REVOKE GRANT OPTION ON tifosi_v011.* FROM 'tifosi'@'localhost';

FLUSH PRIVILEGES;
```

🔎 Justification :

- `GRANT ALL PRIVILEGES ON tifosi.*` permet à `tifosi` de gérer les objets de la base : création, modification, suppression.
- La commande `GRANT` n’inclut pas automatiquement le droit de délégation (`GRANT OPTION`) — sauf si on l’ajoute explicitement. 
Par conséquent, aucune révocation n’est nécessaire, car `tifosi` ne dispose pas du droit de délégation à l’origine.
- Ces droits respectent strictement la phrase du sujet : *“tous les droits sur la base de données tifosi”* — sans extrapoler à des privilèges d’administration serveur.

---

## 🧪 Portée des droits

- ✅ Lecture / écriture / gestion des structures (`CREATE`, `DROP`, `ALTER`) autorisés
- 🚫 Droits refusés sur : `mysql`, `information_schema`, `performance_schema`
- 🚫 Requête `GRANT ... TO` impossible pour `tifosi`

---

## 🗝️ Utilisation prévue

- Connexion par `tifosi` dans MySQL Workbench ou terminal
- Exécution de tous les scripts SQL du projet
- Vérification applicative et requêtes de test
- Vérifications manuelles via Workbench, terminal, ou exports
- Sauvegarde via export MySQL standard

---

## 🚀 Initialisation automatisée avec `init_v012.sql`

Pour faciliter la mise en place de la version `v0.1.2` (base + utilisateur), le fichier `init_v012.sql` enchaîne automatiquement :

1. La création de la base `tifosi_v011` et de sa structure (via `create_tifosi.sql`)
2. La création de l’utilisateur `tifosi` avec tous les privilèges sur cette base (via `create_user_tifosi.sql`)

Le fichier est conçu pour être exécuté en une seule commande à partir de la racine du dossier `sql-v0.1/versions/sql-v0.1.2/`.

**Commande d’exécution :**

```bash  
mysql -u root -p < init_v012.sql  
```

**Conditions :**

- L’utilisateur exécutant doit disposer du droit `CREATE USER` et `GRANT`
- Les fichiers `create_tifosi.sql` et `create_user_tifosi.sql` doivent être présents dans le même dossier que `init_v012.sql`

L’exécution terminée, la base `tifosi_v011` est prête à être utilisée avec le compte `tifosi`.

---

## 📎 Fichiers liés

- [init_v012.sql](init_v012.sql) : script d'initialisation automatisée de la version v0.1.2
- [create_user_tifosi.sql](create_user_tifosi.sql) : script SQL d’instanciation
- [README_test-v0.1.2.md](README_test-v0.1.2.md) : protocole de vérification
- [MPD-v0.1.2.md](MPD-v0.1.2_tifosi.md) : référence structurelle du modèle concerné

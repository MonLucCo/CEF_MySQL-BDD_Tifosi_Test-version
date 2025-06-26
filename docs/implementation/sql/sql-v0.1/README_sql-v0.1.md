# 🧱 SQL v0.1 – Construction progressive de la base Tifosi

Cette version regroupe les scripts liés à l’implémentation du **MPD v0.1** de manière itérative, structurée en sous-versions.

---

- [🧱 SQL v0.1 – Construction progressive de la base Tifosi](#-sql-v01--construction-progressive-de-la-base-tifosi)
  - [🗂️ Sous-versions](#️-sous-versions)
  - [🔄 Journal de progression](#-journal-de-progression)
    - [🧱 SQL v0.1.1 – Base partielle](#-sql-v011--base-partielle)
      - [📌 Périmètre de `sql-v0.1.1/` : vue fonctionnelle minimale](#-périmètre-de-sql-v011--vue-fonctionnelle-minimale)
      - [🔧 Mode de génération](#-mode-de-génération)

---

## 🗂️ Sous-versions

| Version | Objectif principal | Contenu technique et métier  |
|--|--|--|
| [sql-v0.1.1](./versions/sql-v0.1.1/MPD-v0.1.1_tifosi.md) | Base partielle — vue fonctionnelle minimale | Création manuelle des tables `clients`, `menus`, `focaccias`, `jours`, relations N:N avec `clients_*` |
| `sql-v0.1.2` | Sécurité applicative | Script SQL `CREATE USER` pour l’utilisateur `tifosi` + droits `GRANT` sur la base  |
| `sql-v0.1.3` | MPD complet | Implémentation complète du MPD v1 : tables N:N complexes (`paye`, `achète`, `marques`, etc.) |

---

## 🔄 Journal de progression

Chaque sous-version est documentée indépendamment dans le dossier `/versions/`.
Un script exécutable est fourni à chaque étape, permettant un test incrémental dans MySQL.

---

### 🧱 SQL v0.1.1 – Base partielle

Cette version regroupe la montée en complexité vers le MPD v1 complet.  
Elle introduit une base métier partielle, mais déjà exploitable pour des scénarios simples.

#### 📌 Périmètre de `sql-v0.1.1/` : vue fonctionnelle minimale

| Table                  | Description                                |
|------------------------|--------------------------------------------|
| `clients`              | Répertoire des clients                     |
| `menus`                | Liste des menus disponibles                |
| `focaccias`            | Répertoire des focaccias                   |
| `jours`                | Dates ou moments de commande               |
| `clients_menus`        | Association N:N entre clients et menus     |
| `clients_focaccias`    | Association N:N entre clients et focaccias |

👨‍🍳 Objectif : permettre un scénario simple où un **client commande un menu ou une focaccia à une date donnée**.

#### 🔧 Mode de génération

Le script SQL a été **saisi manuellement** pour :

- favoriser l’apprentissage des instructions SQL de base,
- garantir un script clair, commenté, versionnable et lisible.

Les tests ont été effectués dans MySQL Workbench ou phpMyAdmin.

---

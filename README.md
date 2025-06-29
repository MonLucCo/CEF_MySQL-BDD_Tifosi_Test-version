<!-- markdownlint-disable MD033 -->

# CEF_MySQL-BDD_Tifosi_Test-version

---

- [CEF\_MySQL-BDD\_Tifosi\_Test-version](#cef_mysql-bdd_tifosi_test-version)
  - [📘 1- Projet Tifosi — Base de données MySQL](#-1--projet-tifosi--base-de-données-mysql)
    - [🎯 1.1- Objectifs pédagogiques](#-11--objectifs-pédagogiques)
    - [🧱 1.2- Structure du dépôt](#-12--structure-du-dépôt)
  - [⚙️ 2- Installation \& exploitation](#️-2--installation--exploitation)
    - [🛠️ 2.1- Pré-requis techniques](#️-21--pré-requis-techniques)
    - [📦 2.2- Exploitation directe depuis le dépôt GitHub (dossier `delivery/`)](#-22--exploitation-directe-depuis-le-dépôt-github-dossier-delivery)
    - [💾 2.3- Exploitation autonome hors GitHub (mode archive ZIP)](#-23--exploitation-autonome-hors-github-mode-archive-zip)
  - [💬 3- Contribution](#-3--contribution)
  - [📊 4- État du projet](#-4--état-du-projet)
    - [4.1- Finalisation de la livraison](#41--finalisation-de-la-livraison)
    - [4.2- Suivi des évolutions](#42--suivi-des-évolutions)
  - [📄 5- Licence](#-5--licence)
  - [🙏 Remerciements](#-remerciements)

## 📘 1- Projet Tifosi — Base de données MySQL

Ce dépôt constitue le livrable du **Devoir n°10** du *Centre Européen de Formation (CEF)*. Il documente pas à pas la **modélisation, l’implémentation, le peuplement et la sauvegarde** d’une base de données relationnelle dédiée au restaurant fictif **Le Tifosi**.

L’ensemble du projet est réalisé en environnement **local MySQL 5.7+**, selon une démarche structurée, versionnée et documentée.

> 🔹 **Objectif principal** : démontrer la maîtrise des concepts SGBDR (MCD → MRLD → MPD → SQL) dans un cadre réaliste.

---

### 🎯 1.1- Objectifs pédagogiques

- Concevoir un modèle de données relationnel à partir d’un cahier des charges
- Traduire ce modèle en scripts SQL exécutables (structure + données)
- Exploiter un serveur local MySQL avec gestion d’utilisateur dédié
- Produire une sauvegarde exploitable et rejouable via `mysqldump`
- Documenter chaque étape du projet avec Git et GitHub

---

### 🧱 1.2- Structure du dépôt

L’arborescence suit une logique modulaire claire :

| Répertoire | Contenu |
|-----------|---------|
| [`docs/`](./docs/) | Documentation complète du projet (modèles, planification, tests) |
| [`sql/`](./sql/) | Scripts SQL, données insérées, requêtes de test et exports |
| [`process/`](./docs/process/) | Suivi de la démarche méthodologique |
| [`sources/`](./docs/sources/) | Énoncé PDF fourni par le CEF |
| [`references/`](./docs/references/) | Ressources externes et supports complémentaires |

---

Vous pouvez naviguer directement dans les documents du projet depuis cette arborescence interactive.  

<details>
<summary>📁 Racine du dépôt</summary>

> - [README.md](README.md) — Présentation générale du projet (ce document)
> - [LICENCE](./LICENSE) — Licence MIT
> - [CHANGELOG.md](CHANGELOG.md) — Journal de version
> - 📁 [`docs/`](docs/) — Documentation complète du projet
> - 📁 [`delivery/`](delivery/) — Livrables d’exploitation et version packagée

<details>
<summary>📁 docs/ — Dossiers documentaires</summary>

> - [README_docs.md](docs/README_docs.md) — 🔹 Sommaire central de la documentation

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 sources/ — Ressources du devoir</summary>

>> - [Sujet-Devoir10.pdf](docs/sources/Sujet-Devoir10.pdf) — Sujet officiel du projet

</details>

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 process/ — Démarche de travail</summary>

>> - [README_process.md](docs/process/README_process.md) — Étapes et logique de mise en œuvre

</details>

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 implementation/ — Implémentation technique</summary>

>> - [MCD_tifosi.md](./docs/implementation/mcd/MCD_tifosi.md) — Modèle Conceptuel de Données (MCD)
>> - [MRLD_tifosi.md](./docs/implementation/mld/MRLD_tifosi.md) — Modèle Relationnel Logique de Données (MRLD)
>> - [MPD_tifosi.sql](./docs/implementation/sql/README_sql.md) — Script de création des tables (modèle physique de données)
>> - [README_implementation.md](./docs/implementation/README_implementation.md) — Démarche d'implémentation

</details>

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 references/ — Cours & sources externes</summary>

>> - [grafikart_mcd_mld.pdf](docs/references/grafikart_mcd_mld.pdf)
>> - [la_console_mcd.md](docs/references/la_console_mcd.md)
>> - [README_sources.md](docs/references/README_sources.md)

</details>

</details>

<details>
<summary>📁 delivery/ — Livrables d’exploitation et version packagée</summary>

> - [`ZIP_Tifosi.zip`](./delivery/ZIP_Tifosi.zip) — Archive complète pour exécution hors ligne (ZIP à extraire)
> - 📁 [`CEF_Tifosi/`](./delivery/CEF_Tifosi/) — Répertoire d'exploitation locale autonome (mode manuel)

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 CEF_Tifosi/ Exploitation locale autonome (mode manuel)</summary>

>> - [`README_livraison.md`](./delivery/README_livraison.md) — Guide de mise en place de la base `tifosi`  
>> - [`import_tifosi.sql`](./delivery/import_tifosi.sql) — Script SQL pour créer la structure de la base  
>> - [`insert_data_tifosi.sql`](./delivery/insert_data_tifosi.sql) — Jeu de données de test  
>> - [`backup_tifosi.sql`](./delivery/backup_tifosi.sql) — Dump SQL complet (`mysqldump`)  

</details>

</details>

</details>

---

## ⚙️ 2- Installation & exploitation

### 🛠️ 2.1- Pré-requis techniques

- Système : **Windows recommandé**
- Serveur : **MySQL Server 5.7+** (via WampServer, XAMPP ou MySQL natif)
- Optionnel : MySQL Workbench, VS Code, Git

---

### 📦 2.2- Exploitation directe depuis le dépôt GitHub (dossier `delivery/`)

Le dossier [`delivery/`](./delivery/) contient tous les fichiers nécessaires à la mise en place rapide de la base `tifosi` (structure, données, sauvegarde).

👉 **Avant toute manipulation**, lire attentivement [`README_livraison.md`](./delivery/README_livraison.md) — ce document présente :

- La création de la base via script `import_tifosi.sql`
- Le peuplement avec les données de test `insert_data_tifosi.sql`
- La restauration à partir du dump `backup_tifosi.sql`
- L’identification des utilisateurs MySQL associés (optionnel)

💡 Cloner le projet pour accéder au dossier `delivery/` :

```bash
git clone https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version.git
cd CEF_MySQL-BDD_Tifosi_Test-version
```

---

### 💾 2.3- Exploitation autonome hors GitHub (mode archive ZIP)

Alternative prévue pour une exécution **hors ligne**, sans Git ni GitHub :

1. Télécharger le projet en ZIP depuis GitHub (“Code” > “Download ZIP”)  
2. Extraire le contenu dans un dossier local
3. Ouvrir le dossier `/delivery/` :
   - Lancer `import_tifosi.sql` pour créer la structure
   - Lancer `insert_data_tifosi.sql` pour insérer les données tests
   - (optionnel) Tester la restauration via `backup_tifosi.sql`
4. Suivre les instructions détaillées dans `README_livraison.md` inclus dans le dossier `delivery/`

> ℹ️ L’exploitation via archive ZIP permet d’utiliser la base `tifosi`, mais **n’inclut qu’une partie de la documentation**.  
> Pour accéder à l’ensemble des documents (modèles, historiques, README détaillés), consulter le [dépôt GitHub complet](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version).


---

## 💬 3- Contribution

Aucune contribution extérieure n’est attendue : **ce dépôt est un travail personnel réalisé dans le cadre d’un devoir encadré**.  
Les issues sont utilisées comme outil de suivi projet personnel.

---

## 📊 4- État du projet

> 🔒 **Version stable livrée** : `v1.0.0` — scripts validés, base testée, documentation consolidée

### 4.1- Finalisation de la livraison

Cette version `v1.0.0` correspond à la livraison finale du devoir CEF :

- 🎯 Base `tifosi` créée, peuplée et sauvegardée
- 📘 Documentation complète intégrée dans [`docs/`](./docs/)
- 🧾 Journal de suivi et d’évolution dans les fichiers `HISTORIQUE_*`
- 📦 Dossier [`delivery/`](./delivery/) disponible pour exploitation directe ou par fichier ZIP
- 🔐 Milestone [`v1.0 – Version finale`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/milestone/5) clôturée avec succès

➡️ Le projet est désormais figé et archivé. Aucune évolution fonctionnelle supplémentaire n’est prévue.

### 4.2- Suivi des évolutions

L'historique des décisions et versions est consigné dans :

- [`CHANGELOG.md`](CHANGELOG.md) — Journal version du projet
- [`HISTORIQUE_mcd.md`](./docs/implementation/mcd/HISTORIQUE_mcd.md) — Journal évolution du MCD
- [`HISTORIQUE_mld.md`](./docs/implementation/mld/HISTORIQUE_mld.md) — Journal structure de la BDD
- [`HISTORIQUE_sql.md`](./sql/HISTORIQUE_sql.md) — Journal SQL produit

---

## 📄 5- Licence

Ce dépôt est sous licence **MIT** — voir le [fichier `LICENSE`](LICENSE) pour plus d’informations.  
Les documents issus du devoir (PDF, données test) sont fournis à titre pédagogique uniquement.

---

## 🙏 Remerciements

Projet réalisé avec anthousiasme, rigueur, méthode et une bonne dose de cresson — merci à l’équipe pédagogique du CEF pour ce plat bien relevé à base de modélisation relationnelle. 🍽️

---

📚 Pour une vue d'ensemble de la documentation, voir : [`README_docs.md`](./docs/README_docs.md)

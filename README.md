<!-- markdownlint-disable MD033 -->

# CEF_MySQL-BDD_Tifosi_Test-version

---

- [CEF\_MySQL-BDD\_Tifosi\_Test-version](#cef_mysql-bdd_tifosi_test-version)
  - [📘 1- Projet Tifosi — Base de données MySQL](#-1--projet-tifosi--base-de-données-mysql)
    - [🎯 1.1- Objectifs pédagogiques](#-11--objectifs-pédagogiques)
    - [🧱 1.2- Arborescence du dépôt](#-12--arborescence-du-dépôt)
  - [⚙️ 2- Installation \& exploitation](#️-2--installation--exploitation)
    - [🔁 2.1- Cloner et exploiter le dépôt](#-21--cloner-et-exploiter-le-dépôt)
    - [🛠️ 2.2- Pré-requis](#️-22--pré-requis)
    - [📦 2.3- Exploitation du devoir](#-23--exploitation-du-devoir)
  - [💬 3- Contribution](#-3--contribution)
  - [📊 4- État du projet](#-4--état-du-projet)
    - [4.1- Avancement du projet](#41--avancement-du-projet)
    - [4.2- Suivi des évolutions](#42--suivi-des-évolutions)
  - [📄 5- Licence](#-5--licence)

## 📘 1- Projet Tifosi — Base de données MySQL

Ce dépôt constitue le livrable du Devoir n°10 du Centre Européen de Formation. Il contient la modélisation, la création, le peuplement et la sauvegarde d'une base de données locale MySQL pour le restaurant fictif **Le Tifosi**.

---

### 🎯 1.1- Objectifs pédagogiques

- Concevoir une base de données relationnelle selon un modèle donné
- Manipuler MySQL Server avec des scripts SQL
- Gérer les étapes du projet dans un environnement Git/GitHub
- Documenter le processus de réalisation de manière claire et reproductible

---

### 🧱 1.2- Arborescence du dépôt

Vous pouvez naviguer directement dans les documents du projet depuis cette arborescence interactive.  
Pour une vue d’ensemble plus détaillée, voir également le fichier [README_docs.md](docs/README_docs.md) qui constitue le **point d’entrée de la documentation**.

<details>
<summary>📁 Racine du dépôt</summary>

> - [README.md](README.md) — Présentation générale du projet (ce document)
> - [LICENCE](./LICENSE) — Licence MIT
> - [.gitignore](.gitignore)

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
<summary>&nbsp;&nbsp;&nbsp;📁 mcd/ — Modélisation conceptuelle</summary>

>> - [tifosi_mcd.png](docs/mcd/tifosi_mcd.png) — Schéma du MCD (modèle conceptuel de données)
>> - [README_analyse.md](docs/mcd/README_analyse.md) — Analyse approfondie du MCD

</details>

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 implementation/ — Implémentation technique</summary>

>> - [MRLD_tifosi.md](docs/implementation/MRLD_tifosi.md) — Modèle Relationnel Logique de Données (MRLD)
>> - [MPD_tifosi.sql](docs/implementation/MPD_tifosi.sql) — Script de création des tables (modèle physique de données)
>> - [README_implementation.md](docs/implementation/README_implementation.md)

</details>

<details>
<summary>&nbsp;&nbsp;&nbsp;📁 references/ — Cours & sources externes</summary>

>> - [grafikart_mcd_mld.pdf](docs/references/grafikart_mcd_mld.pdf)
>> - [la_console_mcd.md](docs/references/la_console_mcd.md)
>> - [README_sources.md](docs/references/README_sources.md)

</details>

</details>

<details>
<summary>📁 sql/ — Scripts SQL du projet</summary>

> - [README_sql.md](sql/README_sql.md) — Informations sur les scripts SQL `.sql`
> - [create_tifosi.sql](sql/create_tifosi.sql) — Création de la base de données relationnelle

</details>

</details>

---

## ⚙️ 2- Installation & exploitation

### 🔁 2.1- Cloner et exploiter le dépôt

```bash
git clone https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version.git
cd CEF_MySQL-BDD_Tifosi_Test-version
```

### 🛠️ 2.2- Pré-requis

- **Windows**
- **WampServer** avec MySQL Server 5.7+ (ou MySQL Community Server)
- **MySQL Workbench** (facultatif mais recommandé)
- **Git** et/ou **Visual Studio Code** pour le suivi

### 📦 2.3- Exploitation du devoir

1. Exécuter `/sql/create_tifosi.sql` pour créer la base de données
2. Exécuter `insert_data.sql` une fois disponible
3. Générer le backup avec `backup_tifosi.sql`
4. Suivre les consignes du sujet dans `/docs/`

---

## 💬 3- Contribution

Aucune contribution extérieure n’est attendue : **ce dépôt est un travail personnel réalisé dans le cadre d’un devoir encadré**.  
Les issues sont utilisées comme outil de suivi projet personnel.

---

## 📊 4- État du projet

### 4.1- Avancement du projet

> 🟢 **Projet en cours de réalisation**  
> Ce dépôt évolue par étapes avec des commits itératifs documentés dans un GitHub Project (kanban).

Pour suivre l’avancement et la roadmap :
👉 [Tableau de projet GitHub associé](https://github.com/users/MonLucCo/projects/3/views/1?layout=board)

### 4.2- Suivi des évolutions

L'historique des décisions et versions est consigné dans :

- [`CHANGELOG.md`](CHANGELOG.md) — Journal version du projet
- [`mcd-historique.md`](./docs/mcd/mcd-historique.md) — Journal évolution du MCD
- [`mrld-historique.md`](./docs/implementation/mrld-historique.md) — Journal structure de la BDD
- [`sql-historique.md`](./sql/sql-historique.md) — Journal SQL produit

---

## 📄 5- Licence

Ce dépôt est sous licence **MIT** — voir le [fichier `LICENSE`](LICENSE) pour plus d’informations.  
Les documents issus du devoir (PDF, données test) sont fournis à titre pédagogique uniquement.

---

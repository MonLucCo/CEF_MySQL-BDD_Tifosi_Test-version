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
  - [📌 4- État du projet](#-4--état-du-projet)
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

```txt
/
├── README.md                     # Ce fichier
├── docs/
│   ├── Sujet-Devoir10.pdf        # Sujet du devoir
│   ├── readme_docs.md            # Sommaire documentaire
│   └── process/
│       └── readme_process.md     # Démarche de réalisation du projet
├── sql/
│   ├── readme_sql.md             # Description des scripts SQL
│   └── create_tifosi.sql         # Script de création des tables
└── .gitignore
```

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

## 📌 4- État du projet

> 🟢 **Projet en cours de réalisation**  
> Ce dépôt évolue par étapes avec des commits itératifs documentés dans un GitHub Project (kanban).

Pour suivre l’avancement et la roadmap :
👉 [Tableau de projet GitHub associé](https://github.com/users/MonLucCo/projects/3/views/1?layout=board)

---

## 📄 5- Licence

Ce dépôt est sous licence **MIT** — voir le [fichier `LICENSE`](LICENSE) pour plus d’informations.  
Les documents issus du devoir (PDF, données test) sont fournis à titre pédagogique uniquement.

---

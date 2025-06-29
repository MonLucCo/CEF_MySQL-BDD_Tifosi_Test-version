# 🧪 README_test-v0.3.md — Requêtes de validation `tifosi` v0.3

Ce fichier documente les requêtes métier et techniques de test utilisées pour valider la base `tifosi` dans sa version finale `v0.3`.

---

- [🧪 README\_test-v0.3.md — Requêtes de validation `tifosi` v0.3](#-readme_test-v03md--requêtes-de-validation-tifosi-v03)
  - [🎯 Objectifs des requêtes](#-objectifs-des-requêtes)
  - [📂 Fichier principal](#-fichier-principal)
  - [🔍 Typologie des requêtes](#-typologie-des-requêtes)
  - [📎 Résultat attendu](#-résultat-attendu)
    - [1️⃣ Avant génération du backup](#1️⃣-avant-génération-du-backup)
    - [2️⃣ Après restauration de la base depuis le `backup_tifosi.sql`](#2️⃣-après-restauration-de-la-base-depuis-le-backup_tifosisql)
    - [🔍 Astuce de comparaison sous Visual Studio Code](#-astuce-de-comparaison-sous-visual-studio-code)
  - [📚 Références croisées](#-références-croisées)

---

## 🎯 Objectifs des requêtes

- Vérifier l’intégrité logique du modèle physique (`MPD`)
- Contrôler les données importées : cohérence, complétude, lisibilité
- Démontrer les fonctionnalités typiques d’un système relationnel (jointures, agrégats, regroupements)
- Appuyer un usage pédagogique ou une démonstration technique

---

## 📂 Fichier principal

- `queries_test_v03.sql` : script SQL contenant une série de requêtes, commentées et structurées par bloc

Chaque requête est :

- accompagnée d’un **commentaire explicite**
- construite pour illustrer un **objectif métier ou technique**
- conçue pour générer des résultats interprétables dans un export texte

---

## 🔍 Typologie des requêtes

| Bloc | Objectif |
|------|----------|
| 📊 `Données` | Quantité d’éléments (boissons, focaccias, menus, clients, jours) |
| 🔗 `Composition` | Focaccias & boissons incluses dans chaque menu |
| 💰 `Cohérence prix` | Comparaison prix menu vs. somme composants |
| 🚨 `Cas limite` | Menus sans boisson, sans focaccia, doublons |
| 🧑‍🤝‍🧑 `Clients & jours` | Activité quotidienne, achats, profils client |

---

## 📎 Résultat attendu

Deux fichiers `.txt` produits à partir de l’exécution de `queries_test_v03.sql` :

### 1️⃣ Avant génération du backup

Exécution de la procédure de création de la base et de son chargement :

```bash
mysql -u root -p < create_tifosi.sql
mysql -u tifosi -p < insert_data.sql
```

Exécuté après la création et l’initialisation de la base pour tester la validité fonctionnelle :

```bash
mysql -u tifosi -p tifosi < queries_test_v03.sql > result-queries-test_v03-initial.txt
```

Exécuté pour sauvegarder la base chargée de données, puis insertion d'un en-tête de singularisation de la sauvegarde

```bash
 mysqldump --no-tablespaces -u tifosi -p tifosi > backup_tifosi.sql
```

En-tête type inséré directement par éditeur dans le fichier de sauvegarde `backup_tifosi.sql`

```sql
-- =========================================================================
--  🔐 Sauvegarde SQL complète — Projet Tifosi v0.3
--  📅 Date de génération : 2025-06-30
--  👤 Utilisateur : tifosi (dump local avec privilèges limités)
--  💾 Commande utilisée :
--     mysqldump --no-tablespaces -u tifosi -p tifosi > backup_tifosi.sql
--  📂 Fichier généré dans : /docs/implementation/sql/sql-v0.3/
-- =========================================================================
```

---

### 2️⃣ Après restauration de la base depuis le `backup_tifosi.sql`

Procédure complète :

```bash
mysql -u tifosi -p -e "DROP DATABASE tifosi"
mysql -u tifosi -p -e "CREATE DATABASE tifosi DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci"
mysql -u tifosi -p tifosi < backup_tifosi.sql
mysql -u tifosi -p tifosi < queries_test_v03.sql > result-queries-test_v03-postRestoreBackup.txt
```

➡️ Le fichier obtenu (`postRestoreBackup`) est **strictement identique** à la version initiale, validant la reproductibilité de la base.

---

### 🔍 Astuce de comparaison sous Visual Studio Code

1. Ouvrir les deux fichiers `.txt` dans VSC
2. Faire un clic droit sur le premier : _“Sélectionner pour comparaison”_
3. Clic droit sur le second : _“Comparer avec le fichier sélectionné”_

📎 Cette comparaison confirme l’absence d’écarts et valide la bonne restauration de la base.

---

## 📚 Références croisées

- `DATAS-TESTING.md` : description des cas de test et des données d’entrée
- `backup_tifosi.sql` : sauvegarde complète de la base utilisée pour rejouer les tests
- `README_backup.md` : documentation de la commande `mysqldump` et procédure de restauration

Retour à [README_sql-v0.3](README_sql-v0.3.md)

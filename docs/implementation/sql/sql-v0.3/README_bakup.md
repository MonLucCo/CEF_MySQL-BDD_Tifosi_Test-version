# 💾 README_backup.md — Sauvegarde SQL `tifosi` v0.3

Ce fichier documente la génération et l’utilisation de la sauvegarde complète `backup_tifosi.sql` — livrable technique du projet Tifosi.

---

- [💾 README\_backup.md — Sauvegarde SQL `tifosi` v0.3](#-readme_backupmd--sauvegarde-sql-tifosi-v03)
  - [🎯 Objectif](#-objectif)
  - [🧪 Génération](#-génération)
  - [🔁 Restauration](#-restauration)
  - [✅ Validation post-restauration](#-validation-post-restauration)

---

## 🎯 Objectif

Permettre la restauration complète et validée de la base de données `tifosi` dans sa version figée `v0.3`, incluant :

- Structure de la base
- Données de peuplement complètes
- Contraintes de clés primaires / étrangères

---

## 🧪 Génération

La sauvegarde a été générée après validation complète des scripts `create_tifosi.sql`, `insert_data.sql` et `queries_test_v03.sql`.

**Commande exécutée le 2025-06-30 :**

```bash
mysqldump --no-tablespaces -u tifosi -p tifosi > backup_tifosi.sql
```

Utilisateur : `tifosi`  
Mot de passe : `TifosiPwd_24` _(saisi lors de l’exécution)_

---

## 🔁 Restauration

Étapes recommandées :

1. **Supprimer l’ancienne base (facultatif) :**

    ```sql
    DROP DATABASE tifosi;
    ```

2. **Créer une base vide :**

    ```sql
    CREATE DATABASE tifosi DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
    ```

3. **Rejouer le fichier de sauvegarde :**

    ```bash
    mysql -u tifosi -p tifosi < backup_tifosi.sql
    ```

---

## ✅ Validation post-restauration

La commande suivante a été exécutée avec succès :

```bash
mysql -u tifosi -p tifosi < queries_test_v03-initial.sql > result-queries-test_v03-postRestoreBackup.txt
```

📎 Aucun écart détecté entre le fichier pré-backup et post-backup.  
➡️ Voir fichier `result-queries-test_v03-postRestoreBackup.txt` pour confirmation.

---

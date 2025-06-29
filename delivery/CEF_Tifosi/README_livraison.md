# Livraison finale du projet Tifosi 🍕 — Devoir MySQL CEF

🎯 Ce dossier contient les éléments attendus pour l’évaluation, conformément au sujet du devoir.

| Documentation          | Objectif                                                       |
|------------------------|----------------------------------------------------------------|
| `README_livraison.md`  | Présent document – Manuel d’emploi de la livraison            |
| [`README_test`](./docs/README_test.md)     | Commandes SQL et tests manuels                        |
| [`README_backup`](./docs/README_backup.md) | Procédures de sauvegarde et de restauration de la base |

---

## ✅ Accès aux résultats

- Base de données : `tifosi`  
- Utilisateur MySQL : `tifosi` — mot de passe : `TifosiPwd_24`  
- Fichiers fournis :
  - `import_tifosi.sql` — structure complète
  - `insert_data.sql` — données de test
  - `backup_tifosi.sql` — dump SQL `mysqldump`
  - `queries-test.sql` — jeu de requêtes de vérification

---

## 🛠️ Guide d’utilisation (mode local)

1. Créer la base vide `tifosi` + utilisateur `tifosi`
2. Exécuter `import_tifosi.sql` pour générer la structure
3. Exécuter `insert_data.sql` pour peupler la base
4. (Facultatif) Tester la restauration : `backup_tifosi.sql`

---

## 🔬 Outils de test

- 📁 Données sources en CSV : `datas-csv/`
- 📑 Vues synthétiques : [`DATAS-TESTING.md`](../docs/DATAS-TESTING.md)
- 🧪 Script SQL de vérification : `queries-test.sql`
- 🗺️ Image du modèle : [`model_tifosi.mwb.png`](../docs/model_tifosi.mwb.png)

---

## 🔎 Références utiles (en ligne)

- 📚 Documentation centrale : [`docs/`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/tree/main/docs/)
- 🧩 Modèle physique commenté : [`MPD-v0.3_tifosi.md`](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version/blob/main/docs/implementation/sql/sql-v0.3/MPD-v0.3_tifosi.md)

---

> ℹ️ Pour un accès complet à la documentation et à l’historique du projet, consulter le dépôt principal :  
> [github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version](https://github.com/MonLucCo/CEF_MySQL-BDD_Tifosi_Test-version)

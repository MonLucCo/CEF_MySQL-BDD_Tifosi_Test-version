# 🧾 Implémentation du projet (Tifosi)

Ce dossier centralise l’ensemble des livrables techniques du projet :  
modélisation relationnelle, schémas d’évolution, scripts SQL.

---

## 🧱 Modèle Conceptuel (MCD)

- [`HISTORIQUE_mcd_tifosi.md`](./mcd/HISTORIQUE_mcd_tifosi.md) — Traçabilité complète des étapes de modélisation
- [`MCD_tifosi.md`](./mcd/MCD_tifosi.md) — Fichier central des versions
- [`schemas/`](./mcd/schemas/) — Schémas visuels `.drawio.png` pour chaque version

---

## 🧾 Modèle Relationnel Logique de Données (MRLD)

- [`HISTORIQUE_mld_tifosi.md`](./mrld-versions/HISTORIQUE_mld_tifosi.md) — Historique technique du MRLD
- [`MRLD_tifosi.md`](./mrld-versions/MRLD_tifosi.md) — Document de référence des versions logiques
- [`schemas/`](./schemas/) — Schémas `.drawio.png` du MRLD

---

## 🧩 Modèle Physique (MPD)

- [`MPD_tifosi.sql`](./MPD_tifosi.sql) — Script SQL final généré depuis le MRLD v1

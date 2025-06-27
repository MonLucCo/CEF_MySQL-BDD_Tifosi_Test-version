# Conclusion : choix de la version du MCD

_Rédigé par :_ PerLucCo  
_Dernière mise à jour :_ 27 juin 2025  

_Analyse comparative des versions MCD v1.1 et MCD v2.1_  
_Dossier : `/implementation/mcd/analyse/`_

---

## 📘 Contexte

Deux versions du MCD ont été établies à partir du modèle initial transmis dans le sujet :

- **MCD v1.1** — version simple composée de 6 entités et 6 relations binaires.  
- **MCD v2.1** — version normalisée avec 7 entités (ajout de `jours`) et 6 relations (4 binaires, 2 ternaires).

Ces deux versions sont **formellement équivalentes** au sens fonctionnel : elles modélisent les mêmes interactions entre clients, menus, focaccias, boissons, marques, ingrédients… avec ou sans redondance de la notion de jour.

---

## ⚖️ Comparaison des deux modélisations

| Critère                      | Modèle **v1.1**                            | Modèle **v2.1**                                 |
|------------------------------|--------------------------------------------|-------------------------------------------------|
| Nombre d’entités             | 6                                          | 7 (avec entité `jours`)                         |
| Relations                    | 6 binaires                                 | 4 binaires + 2 ternaires                        |
| Gestion du _jour_            | Attribut présent dans 2 relations          | Centralisation via entité `jours`               |
| Cohérence sémantique         | Moyenne (redondance de date)               | Élevée (absence de duplication)                 |
| Complexité initiale          | Faible                                     | Moyenne à forte                                 |
| Lisibilité pédagogique       | Intuitive                                  | Plus abstraite                                  |
| Extensibilité analytique     | Limitée (requêtes multiples)               | Excellente (consolidation des actions par jour) |
| Forme normale atteinte       | 3NF                                        | 4NF, voire BCNF                                 |

---

## ✅ Conclusion

Au terme de l’analyse (voir [`modelisation_relations.md`](./modelisation_relations.md)), le choix est fait d’adopter comme **modèle conceptuel de référence la version MCD v2.1**.  

Ce modèle garantit une meilleure cohérence conceptuelle, supprime les redondances, facilite l’analyse de l’activité par date, et prépare la transition vers un **MLD proprement factorisé**.

La version v1.1 reste conservée comme version **fonctionnellement équivalente** et documentée, mais ne sera pas utilisée pour la production.

---

📎 Issue concernée : `#4.1`  
📁 Schémas associés : `schemas/MCD-v2.1_tifosi.drawio.png`  
📄 Modèle détaillé : `versions/MCD-v2.1_tifosi.md`

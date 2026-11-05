<h1 style="text-align:center;">Prédire le churn des clients dans le secteur de l'énergie</h1>

## Présentation du dataset

Ce projet repose sur un dataset de **2000 clients** issus du secteur de l’énergie. Il contient **5 variables**, toutes complètes (aucune valeur manquante), permettant d’analyser les comportements et de prédire le risque de churn.

### Variables disponibles
- **Age** : âge du client (en années).
- **AncienneteMois** : durée de relation avec l’entreprise (en mois).
- **ConsommationAnnuelle** : consommation énergétique annuelle (en kWh).
- **FacturesImpayeDernierAn** : nombre d’impayés sur les 12 derniers mois.
- **Churn** : variable cible indiquant si le client a quitté l’entreprise (0 = non, 1 = oui).

## Objectif du projet

L’objectif est de construire un modèle prédictif capable d’identifier les clients susceptibles de quitter l’entreprise. Cette approche permet d’anticiper les départs et de mettre en place des actions de rétention ciblées.

## Méthodologie

- Analyse exploratoire des données (EDA)
- Préparation et nettoyage du dataset
- Entraînement de modèles de classification (RandomForest, etc.)
- Évaluation via Accuracy, Précision, Recall et F1-Score
- Visualisation des performances
- Génération de scores de churn pour de nouveaux clients

## Résultats clés

Le modèle RandomForest obtient d’excellentes performances :
- **Accuracy : 96 %**
- **Précision : 91 %**
- **Recall : 99 %**
- **F1-Score : 95 %**

Ces résultats montrent une forte capacité à détecter les clients à risque, tout en limitant les fausses alertes.

## Conclusion métier

Le modèle constitue un outil fiable pour anticiper le churn et orienter les actions de fidélisation. L’intégration des scores dans les processus CRM permettrait d’optimiser les campagnes de rétention et de concentrer les efforts sur les segments les plus vulnérables.

https://github.com/SFSF-FA
https://www.linkedin.com/in/farid-s-364083134



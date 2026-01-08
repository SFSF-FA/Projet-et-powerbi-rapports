# Site e-commerce "EcoStyle"

## Contexte
EcoStyle est un site de vente en ligne spécialisé dans les vêtements écoresponsables.

## Objectifs business
- Augmenter les ventes  
- Fidéliser les clients  
- Optimiser les campagnes marketing  

---

## Données suivies (Google Analytics)

| Catégorie     | KPI principaux                               | Exemple Power BI                     |
|---------------|-----------------------------------------------|--------------------------------------|
| Trafic        | Sessions, utilisateurs, sources               | Courbes de trafic par canal          |
| Comportement  | Pages vues, taux de rebond, durée moyenne     | Heatmap des pages populaires         |
| Conversions   | Taux de conversion, panier moyen, abandon     | Funnel de conversion                 |
| Acquisition   | Campagnes, mots-clés, réseaux sociaux         | ROI par canal                        |
| Audience      | Appareil, localisation, âge, genre            | Segmentation client                  |

---

## Questions business à résoudre
- Quels produits génèrent le plus de trafic mais peu de ventes ?  
- Quelle source d’acquisition convertit le mieux (Google Ads, Instagram, newsletter) ?  
- Où perd-on les clients dans le tunnel d’achat ?  
- Quels profils d’utilisateurs reviennent régulièrement ?  

---
## Cas d’usage business
- Identifier les produits qui génèrent du trafic mais peu de conversions
- Optimiser les campagnes marketing selon leur ROI
- Segmenter les clients par profil et comportement
- Visualiser le tunnel d’achat pour détecter les points de friction
---
## Étapes typiques du tunnel d’achat

Structuration du tunnel en 5 étapes selon le modèle e-commerce :

| Étape du tunnel        | Exemple de KPI à suivre            |
|------------------------|------------------------------------|
| Visite du site         | Sessions, pages vues               |
| Consultation produit   | Taux de clics sur fiches produit   |
| Ajout au panier        | Taux d’ajout au panier             |
| Début du paiement      | Taux d’initiation de commande      |
| Paiement validé        | Taux de conversion final           

---

### Tables simulées
+ Sessions + Conversions  + Produits  + Campagnes  + Utilisateurs

  ## Contenu des fichiers CSV

| Fichier         | Lignes | Description principale                               |
|-----------------|--------|-------------------------------------------------------|
| Produits.csv    | 5      | Catalogue de produits écoresponsables                |
| Utilisateurs.csv| 100    | Profils clients : âge, genre, pays, appareil         |
| Sessions.csv    | 200    | Sessions web : source, durée, produit consulté       |
| Conversions.csv | 80     | Achats : produit, montant, canal                     |
| Campagnes.csv   | 60     | Campagnes marketing : canal, budget                  |

---
  
## Structure du modèle (Relationnel)
Utilisateurs (user_id) ───▶ - Sessions (user_id)
                                 │
                                 ▼
                       -  Conversions (session_id)
                                 │
                                 ▼
                        - Produits (product_purchased)
                                 ▲
                                 │
                       -  Campagnes (channel)

---

### Mesures DAX
- TauxConversion  = DIVIDE([Conversions], [Sessions])
- PanierMoyen     = AVERAGE([MontantCommande])
- AbandonPanier   = [AjoutsPanier] - [Commandes]
- + Autres

---
## Visualisations Power BI
- KPI : taux de conversion, panier moyen, ROI
- Graphiques : trafic par source, conversions par produit, budget par canal
- Tableaux croisés : segmentation client, performance des campagnes
- Funnel : sessions → vues produit → conversions

---
## Technologies utilisées
- Power BI Desktop : modélisation, DAX, visualisation
- Power Query : transformation des données, colonnes personnalisées
- CSV simulés : données générées pour 5 tables (200+ lignes)

---
## Contact Farid Sefasfa – Île-de-France Analyste Data & BI Compétences : Power BI, SQL, Python, CRM/ERP

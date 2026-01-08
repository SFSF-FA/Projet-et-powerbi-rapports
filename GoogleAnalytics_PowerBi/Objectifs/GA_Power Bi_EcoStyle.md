# Site e-commerce "EcoStyle"

##### 

##### Contexte :

Vente de vêtements écoresponsables en ligne



##### Objectifs business :

* augmenter les ventes,
* fidéliser les clients,
* optimiser les campagnes marketing



##### Données suivies avec Google Analytics

**Catégorie	KPI principaux					Exemple de visualisation Power BI**

Trafic		Sessions, utilisateurs, sources			Courbes de trafic par canal

Comportement	Pages vues, taux de rebond, durée moyenne	Heatmap des pages populaires

Conversions	Taux de conversion, panier moyen, abandon	Funnel de conversion

Acquisition	Campagnes, mots-clés, réseaux sociaux		ROI par canal d’acquisition

Audience	Appareil, localisation, âge, genre		Segmentation client



##### Questions business à résoudre

* Quels produits génèrent le plus de trafic mais peu de ventes ?
* Quelle source d’acquisition (Google Ads, Instagram, newsletter) convertit le mieux ?
* Où perd-on les clients dans le tunnel d’achat ?
* Quels profils d’utilisateurs reviennent régulièrement ?



##### Structure du modèle

###### Tables simulées :

Sessions, Conversions, Produits, Campagnes, Utilisateurs

###### Mesures DAX :

TauxConversion 	= DIVIDE(\[Conversions], \[Sessions])

PanierMoyen 	= AVERAGE(\[MontantCommande])

AbandonPanier 	= \[AjoutsPanier] - \[Commandes]





##### Tables disponibles

Sessions.csv

 	200 sessions web

 	Colonnes : session\_id, user\_id, timestamp, source, duration\_sec, product\_viewed, device

Conversions.csv

 	80 conversions

 	Colonnes : conversion\_id, session\_id, user\_id, product\_purchased, amount, timestamp, channel

Produits.csv

 	Catalogue de 5 produits

 	Colonnes : product\_id, name, category, price

Campagnes.csv

 	60 campagnes marketing

 	Colonnes : campaign\_id, name, start\_date, channel, budget\_eur

Utilisateurs.csv

 	100 profils utilisateurs

 	Colonnes : user\_id, age, gender, country, device



###### Contenu.CSV

**Fichier			Lignes		Description principale**

Produits.csv		5		Catalogue de produits écoresponsables

Utilisateurs.csv	100		Profils clients : âge, genre, pays, appareil

Sessions.csv		200		Sessions web : source, durée, produit consulté

Conversions.csv		80		Achats : produit, montant, canal

Campagnes.csv		60		Campagnes marketing : canal, budget



##### Idées d’analyse

* Taux de conversion par source : Conversions / Sessions
* Panier moyen : Moyenne des montants
* Performance des campagnes : Conversions par campagne
* Segmentation client : par âge, pays, appareil
* Tunnel d’achat : sessions → vues produit → conversions



##### Prochaines étapes

* Modéliser les relations dans Power BI (user → session → conversion)
* Créer des mesures DAX : taux de conversion, panier moyen, ROI par campagne
* Structurer une fiche projet pour ton portfolio ou pour un entretien
* Simuler une présentation orale autour de ce cas



##### Modèle data :

Utilisateurs (user\_id) ───▶ Sessions (user\_id)

                                 │

                                 ▼

                        Conversions (session\_id)

                                 │

                                 ▼

                        Produits (product\_purchased)

                                 ▲

                                 │

                        Campagnes (channel)



##### Visualisations Power BI

KPI : taux de conversion, panier moyen, ROI

Graphiques : trafic par source, conversions par produit, budget par canal

Tableaux croisés : segmentation client, performance des campagnes

Funnel : sessions → vues produit → conversions



##### Technologies utilisées

Power BI Desktop : modélisation, DAX, visualisation

Power Query : transformation des données, colonnes personnalisées

CSV simulés : données générées pour 5 tables (200+ lignes)



##### Fichiers inclus

Sessions.csv

Conversions.csv

Produits.csv

Campagnes.csv

Utilisateurs.csv



##### Cas d’usage business

Identifier les produits qui génèrent du trafic mais peu de conversions

Optimiser les campagnes marketing selon leur ROI

Segmenter les clients par profil et comportement

Visualiser le tunnel d’achat pour détecter les points de friction



##### Étapes typiques du tunnel d’achat

Structurer ton tunnel en 5 étapes selon ton modèle e-commerce :



**Étape du tunnel	        	|Exemple de KPI à suivre**

Visite du site	 		|Sessions, pages vues

Consultation produit		|Taux de clics sur fiches produits

Ajout au panier			|Taux d’ajout au panier

Début du paiement		|Taux d’initiation de commande

Paiement validé			|Taux de conversion final



##### Auteur

Farid Sefasfa | Île-de-France | Analyste certifié (DataSuits x Sorbonne)

Compétences en Power BI, SQL, Python, CRM/ERP | Passionné par la transformation des opérations via la data.


/*  
Création de la base de données online_shop 
Création des shémas bronze, silver et gold
*/

CREATE DATABASE online_shop;
USE online_shop;

-- Création des Schemas
CREATE SCHEMA  if not EXISTS bronze;

CREATE SCHEMA if not EXISTS silver;

CREATE SCHEMA if not EXISTS gold;

/*
Automatiser l'insertion des données dans les tables bronzes en utilisant un événement planifié
*/
SET GLOBAL event_scheduler = ON; # Assurer que l'événement scheduler est activé

CREATE EVENT load_bronze_data
ON SCHEDULE EVERY 7 DAY
DO
BEGIN
    TRUNCATE TABLE bronze_customers;
    LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/customers.csv' 
    INTO TABLE bronze_customers 
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;

END;


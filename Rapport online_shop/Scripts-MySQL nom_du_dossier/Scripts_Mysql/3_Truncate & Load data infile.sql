/*Insertion des données de tables sources bruts dans bronze tables avec LOAD DATA INFILE
*/
-- Vérifier le chemin sécurisé
-- SHOW VARIABLES LIKE 'secure_file_priv';
-- 'secure_file_priv' ==> 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\'
-- SHOW VARIABLES LIKE 'local_infile';
-- SET GLOBAL local_infile = 1;

TRUNCATE TABLE bronze_customers;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/customers.csv' 
INTO TABLE bronze_customers 
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_order_items;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/order_items.csv' 
INTO TABLE bronze_order_items
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_orders;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/orders.csv' 
INTO TABLE  bronze_orders
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_payments;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/payments.csv' 
INTO TABLE  bronze_payments
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_products;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/products.csv' 
INTO TABLE bronze_products 
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_reviews;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/reviews.csv' 
INTO TABLE  bronze_reviews
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_shipments;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/shipments.csv' 
INTO TABLE bronze_shipments 
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;


TRUNCATE TABLE bronze_suppliers ;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/suppliers.csv' 
INTO TABLE  bronze_suppliers
FIELDS TERMINATED BY ','
ENCLOSED BY  '"'
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;

-- Vérification de l'importation des données csv

select count(*) from bronze_customers;
select count(*) from bronze_order_items;
select count(*) from bronze_orders;
select count(*) from bronze_payments;
select count(*) from bronze_products;
select count(*) from bronze_reviews;
select count(*) from bronze_shipments;
select count(*) from bronze_suppliers;
/*
TRUNCATE table silver et
Chargement des données des tables silver avec insert into depuis les tables Bronze
*/

TRUNCATE TABLE silver_customers;
INSERT INTO silver_customers 
(
customer_id, 
first_name, 
last_name, 
address, 
email, 
phone_number)
SELECT 
customer_id, 
first_name, 
last_name, 
address, 
email, 
phone_number 
FROM bronze_customers;

TRUNCATE TABLE silver_orders;
INSERT INTO silver_orders(
	order_id,
    customer_id,
    order_date,
    total_price)
SELECT 
order_id,
    customer_id,
    order_date,
    total_price
FROM bronze_orders;


TRUNCATE TABLE silver_products;
INSERT INTO silver_products (
product_id,
    product_name,
    category,
    price,
    supplier_id)
SELECT 
	product_id,
    product_name,
    category,
    price,
    supplier_id
FROM bronze_products;

TRUNCATE TABLE silver_shipments;
INSERT INTO silver_shipments(
	shipment_id,
    order_id,
    shipment_date,
    carrier,
    tracking_number ,
    delivery_date ,
    shipment_status)
SELECT 
shipment_id,
    order_id,
    shipment_date,
    carrier,
    tracking_number ,
    delivery_date ,
    shipment_status
FROM bronze_shipments;

TRUNCATE TABLE silver_suppliers;
INSERT INTO silver_suppliers(
	supplier_id,
    supplier_name ,
    contact_name ,
    address ,
    phone_number ,
    email)
SELECT 
	supplier_id,
    supplier_name ,
    contact_name ,
    address ,
    phone_number ,
    email
FROM bronze_suppliers;

TRUNCATE TABLE silver_reviews;
INSERT INTO silver_reviews(
	review_id,
    product_id ,
    customer_id,
    rating ,
    review_text,
    review_date)
SELECT 
	review_id,
    product_id ,
    customer_id,
    rating ,
    review_text,
    review_date
FROM bronze_reviews;


TRUNCATE TABLE silver_payments;
INSERT INTO silver_payments(
	payment_id,
    order_id ,
    payment_method,
    amount,
    transaction_status)
SELECT 
	payment_id,
    order_id,
    payment_method,
    amount,
    transaction_status
FROM bronze_payments;

TRUNCATE TABLE silver_order_items;
INSERT INTO silver_order_items(
	order_item_id ,
    order_id ,
    product_id ,
    quantity ,
    price_at_purchase)
SELECT 
	order_item_id ,
    order_id ,
    product_id ,
    quantity ,
    price_at_purchase
FROM bronze_order_items;


-- Vérification des tables silver 
SELECT COUNT(*) FROM silver_customers;
SELECT COUNT(*) FROM silver_order_items;
SELECT COUNT(*) FROM silver_orders;
SELECT COUNT(*) FROM silver_payments;
SELECT COUNT(*) FROM silver_products;
SELECT COUNT(*) FROM silver_reviews;
SELECT COUNT(*) FROM silver_shipments;
SELECT COUNT(*) FROM silver_suppliers;
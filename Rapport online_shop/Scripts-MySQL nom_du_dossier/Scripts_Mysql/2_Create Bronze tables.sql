/*Créer des tables de bronze
Ce script crée des tables dans le schéma 'bronze', en supprimant les tables existantes si elles existent déjà.
   */

DROP TABLE IF EXISTS bronze_customers;
DROP TABLE IF EXISTS bronze_order_items;
DROP TABLE IF EXISTS bronze_orders;
DROP TABLE IF EXISTS bronze_payments;
DROP TABLE IF EXISTS bronze_products;
DROP TABLE IF EXISTS bronze_reviews;
DROP TABLE IF EXISTS bronze_suppliers;
DROP TABLE IF EXISTS bronze_shipments;

CREATE TABLE bronze_customers (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address TEXT,
    email VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE bronze_order_items (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(10,2)
);

CREATE TABLE bronze_orders (
    order_id INT,
    order_date DATE,
    customer_id INT,
    total_price DECIMAL(10,2)
);

CREATE TABLE bronze_payments (
    payment_id INT,
    order_id INT,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    transaction_status VARCHAR(50)
);

CREATE TABLE bronze_products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    supplier_id INT
);

CREATE TABLE bronze_reviews (
    review_id INT,
    product_id INT,
    customer_id INT,
    rating INT ,
    review_text TEXT,
    review_date DATE
);

CREATE TABLE bronze_shipments (
    shipment_id INT,
    order_id INT,
    shipment_date DATE,
    carrier VARCHAR(50),
    tracking_number VARCHAR(50),
    delivery_date DATE,
    shipment_status VARCHAR(50)
);

CREATE TABLE bronze_suppliers (
    supplier_id INT ,
    supplier_name VARCHAR(50),
    contact_name VARCHAR(50),
    address TEXT,
    phone_number VARCHAR(20),
    email VARCHAR(50)
);


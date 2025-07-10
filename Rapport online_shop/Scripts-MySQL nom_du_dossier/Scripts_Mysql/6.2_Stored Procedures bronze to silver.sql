/*
Stored procedure to automate the transfer of data from Bronze to Silver tables
*/
-- Execute the procedure

CALL transform_bronze_to_silver();

DELIMITER //
CREATE PROCEDURE transform_bronze_to_silver()
BEGIN
    -- Table customers
    TRUNCATE TABLE 	silver_customers;
    INSERT INTO 	silver_customers (customer_id, first_name, last_name, address, email, phone_number)
    SELECT DISTINCT customer_id, first_name, last_name, address, email, phone_number 
    FROM bronze_customers;

    -- Table orders
    TRUNCATE TABLE 	silver_orders;
    INSERT INTO     silver_orders (order_id, customer_id, order_date, total_price)
    SELECT DISTINCT order_id, customer_id, order_date, total_price 
    FROM bronze_orders;

    -- Table order_items
    TRUNCATE TABLE 	silver_order_items;
    INSERT INTO 	silver_order_items (order_item_id, order_id, product_id, quantity, price_at_purchase)
    SELECT DISTINCT order_item_id, order_id, product_id, quantity, price_at_purchase 
    FROM bronze_order_items;

    -- Table payments
    TRUNCATE TABLE 	silver_payments;
    INSERT INTO 	silver_payments (payment_id, order_id, payment_method, amount, transaction_status)
    SELECT DISTINCT payment_id, order_id, payment_method, amount, transaction_status 
    FROM bronze_payments;

    -- Table products
    TRUNCATE TABLE 	silver_products;
    INSERT INTO 	silver_products (product_id, product_name, category, price, supplier_id)
    SELECT DISTINCT product_id, product_name, category, price, supplier_id 
    FROM bronze_products;

    -- Table reviews
    TRUNCATE TABLE 	silver_reviews;
    INSERT INTO 	silver_reviews (review_id, product_id, customer_id, rating, review_text, review_date)
    SELECT DISTINCT review_id, product_id, customer_id, rating, review_text, review_date 
    FROM bronze_reviews;

    -- Table shipments
    TRUNCATE TABLE 	silver_shipments;
    INSERT INTO 	silver_shipments (shipment_id, order_id, shipment_date, carrier, tracking_number, delivery_date, shipment_status)
    SELECT DISTINCT shipment_id, order_id, shipment_date, carrier, tracking_number, delivery_date, shipment_status 
    FROM bronze_shipments;

    -- suppliers
    TRUNCATE TABLE silver_suppliers;
    INSERT INTO silver_suppliers (supplier_id, supplier_name, contact_name, address, phone_number, email)
    SELECT DISTINCT supplier_id, supplier_name, contact_name, address, phone_number, email 
    FROM bronze_suppliers;
END //

DELIMITER ;


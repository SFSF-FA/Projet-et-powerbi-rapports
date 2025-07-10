/*
Création des tables gold views à partir des tables silvers
	des tables de dimensions et de faits finales (pour la modélisation : Star Schema).
    afin de produire un ensemble de données propre, enrichi et prêt pour l'entreprise.
    Ces vues peuvent être interrogées directement à des fins d'analyse et de reporting.
*/

-- Création table gold_fact_orders à partir des deux tables silver orders et order_items

CREATE OR REPLACE VIEW gold_fact_orders AS
    SELECT 
    O.order_id,
    O.customer_id,
    OI.order_item_id,
    OI.product_id,
    O.order_date,
    OI.price_at_purchase*OI.quantity AS amount,
    OI.quantity,
    OI.price_at_purchase
FROM
    silver_orders O
        JOIN
    silver_order_items OI ON O.order_id = OI.order_id;
                    
-- Création table gold_dim_products à partir des deux tables silver products et suppliers

CREATE OR REPLACE VIEW gold_dim_products AS
    SELECT 
        P.product_id, P.supplier_id, P.category, P.price, P.product_name,
        S.supplier_name, S.contact_name, S.address, S.phone_number, S.email
    FROM
        silver_products P
            JOIN
        silver_suppliers S ON P.supplier_id = S.supplier_id;
        
        
-- Création table gold_dim_customers à partir de la table silver customers 

CREATE OR REPLACE VIEW gold_dim_customers AS
	SELECT
		customer_id, first_name, last_name, address, email, phone_number
    FROM
		silver_customers;

-- Création table gold_fact_reviews à partir de la table silver_reviews

CREATE OR REPLACE VIEW gold_fact_reviews AS 
SELECT 
review_id, product_id, customer_id, rating, review_text, review_date
FROM silver_reviews;


-- Création table gold_fact_shipments à partir de la tables silver_shipments

CREATE OR REPLACE VIEW gold_fact_shipments AS 
	SELECT *
    FROM   silver_shipments;
    
-- Création table gold_dim_payments à partir de la tables silver_payments

CREATE OR REPLACE VIEW gold_dim_payments AS 
	SELECT 
    payment_method, payment_id, order_id, transaction_status
    FROM   silver_payments;

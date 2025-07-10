-- Générer un rapport qui présente toutes les mesures clés online_shop
CREATE OR REPLACE VIEW Reporting AS
SELECT 		'Total amonut' AS Measures,   SUM(amount) AS 'Values' FROM gold_fact_orders
UNION ALL 
SELECT 		'Total Quantity', SUM(quantity) FROM gold_fact_orders
UNION ALL
SELECT 		'Average PriceAtPurchase', round(AVG(price_at_purchase), 2) FROM gold_fact_orders
UNION ALL
SELECT 		'Orders id', COUNT(DISTINCT order_id) FROM gold_fact_orders
UNION ALL
SELECT 		'Total Orders id', COUNT(order_id) FROM gold_fact_orders
UNION ALL
SELECT 		'order_item_id', COUNT(DISTINCT order_item_id ) FROM gold_fact_orders
UNION ALL
SELECT 		'Total order_item_id', COUNT(order_item_id) FROM gold_fact_orders
UNION ALL
SELECT 		'Products name', COUNT(DISTINCT product_name) FROM gold_dim_products
UNION ALL
SELECT 		'Total Products id', COUNT( product_id) FROM gold_dim_products 	
UNION ALL		
SELECT 		'supplier id', COUNT(DISTINCT supplier_id ) FROM gold_dim_products 
UNION ALL
SELECT 		'Total supplier id', COUNT(supplier_id ) FROM gold_dim_products 
UNION ALL
SELECT 		'supplier name', COUNT(DISTINCT supplier_name ) FROM gold_dim_products 
UNION ALL
SELECT  	'Average Price products' , round(AVG(price), 2) FROM gold_dim_products
UNION ALL
SELECT 		'Total Customers id', COUNT(customer_id) FROM gold_dim_customers
UNION ALL
SELECT 		'Total Customers name', COUNT(DISTINCT last_name ) FROM gold_dim_customers
UNION ALL
SELECT 		'Average Rating', round(AVG(rating), 0) FROM gold_fact_reviews
UNION ALL
SELECT    	'Average delivery date', ROUND(AVG(DATEDIFF(delivery_date, shipment_date)), 0) FROM gold_dim_shipments;



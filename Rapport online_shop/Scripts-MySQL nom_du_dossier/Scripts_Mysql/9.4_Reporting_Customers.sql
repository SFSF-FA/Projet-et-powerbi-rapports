--  gold_dim_customers observations and measures

-- Nombre des Customer name et total Customers  par categorie 

SELECT  count(customer_id) FROM gold_dim_customers;
SELECT  count(Distinct last_name) FROM gold_dim_customers;
 
SELECT
	category,
	count(DISTINCT last_name),
    count(DISTINCT C.customer_id),
    count(DISTINCT F.order_id),
    count(order_item_id)
FROM 
	gold_dim_customers C
JOIN
	gold_fact_orders F ON F.customer_id = C.customer_id
JOIN
    gold_dim_products P ON F.product_id = P.product_id
GROUP BY category
ORDER BY count(last_name) DESC;

SELECT 'Total customers_id'  As Observatins,  count(customer_id) AS 'Values' FROM gold_dim_customers
UNION ALL
SELECT 'Number customers name'  As Observatins,  count(DISTINCT last_name) AS 'Values' FROM gold_dim_customers
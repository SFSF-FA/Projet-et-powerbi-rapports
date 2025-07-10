-- Gold_fact_orders observations and measures by categories

-- Total quantities, average price of products and sales by category
SELECT
	P.category,
	SUM(amount),
	SUM(quantity),
    round(AVG(price), 2) AS AveragePrice
FROM gold_fact_orders F
JOIN
	gold_dim_products P ON F.product_id = P.product_id
GROUP BY category
ORDER BY SUM(amount) DESC;

-- Number of orders and order_items by category

SELECT
	P.category,
    COUNT(F.order_item_id) Total_items,
	COUNT(DISTINCT F.order_id) Total_orders,
    COUNT(DISTINCT P.product_id) Total_products,
    COUNT(DISTINCT P.product_name) Number_product_name,
    COUNT(DISTINCT P.supplier_id) Total_suppliers,
    COUNT(DISTINCT P.supplier_name) Number_supplier_name
FROM gold_fact_orders F
JOIN
	gold_dim_products P ON F.product_id = P.product_id
GROUP BY category
ORDER BY COUNT(F.order_item_id) DESC;


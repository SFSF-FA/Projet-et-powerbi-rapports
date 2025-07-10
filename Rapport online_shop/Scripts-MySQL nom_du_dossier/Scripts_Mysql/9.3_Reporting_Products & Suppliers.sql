-- Gold_dim_products observations and measures

-- Number of categories per product name
SELECT
	product_name,
	count(category)
FROM 
	gold_dim_products
GROUP BY product_name
ORDER BY count(category)DESC;

-- Number of categories by supplier name
SELECT
	supplier_name,
	count(category)
FROM 
	gold_dim_products
GROUP BY supplier_name
ORDER BY count(category) DESC;

-- Number of supplier names per category
SELECT
	category,
	count(distinct supplier_name)
FROM 
	gold_dim_products
GROUP BY category
ORDER BY count(supplier_name) DESC;

-- Number of product_name by category
SELECT
	category,
	count(distinct product_name)
FROM 
	gold_dim_products
GROUP BY category
ORDER BY count(product_name) DESC;

-- Observations and values average price and number of products and suppliers per category
CREATE OR REPLACE VIEW Reporting_Products_Suppliers_By_Category AS
SELECT 'Average price Electronics'  As Observatins, round(AVG(price), 2) AS 'Values' FROM gold_dim_products WHERE category = 'Electronics'
UNION ALL
SELECT 'Average price Home & Kitchen' 	, round(AVG(price), 2)  FROM gold_dim_products WHERE category = 'Home & Kitchen'
UNION ALL
SELECT 'Average price Accessories'   	, round(AVG(price), 2) 	FROM gold_dim_products WHERE category = 'Accessories'
UNION ALL
SELECT 'Average price Furniture'   		, round(AVG(price), 2)   FROM gold_dim_products WHERE category = 'Furniture'
UNION ALL
SELECT 'Number suppliers'   			, count(distinct supplier_name)   FROM gold_dim_products
UNION ALL
SELECT 'Suppliers Electronics'   		, count(distinct supplier_name)   FROM gold_dim_products WHERE category = 'Electronics'
UNION ALL
SELECT 'Suppliers Home & Kitchen'   	, count(distinct supplier_name)   FROM gold_dim_products WHERE category = 'Home & Kitchen'
UNION ALL
SELECT 'Suppliers Accessories'   		, count(distinct supplier_name)   FROM gold_dim_products WHERE category = 'Accessories'
UNION ALL
SELECT 	'Suppliers Furniture'   		, count(distinct supplier_name)   FROM gold_dim_products WHERE category = 'Furniture'
UNION ALL
SELECT 'Number products name'   		, count(distinct product_name)   FROM gold_dim_products
UNION ALL
SELECT 'Products Electronics'   		, count(distinct product_name )   FROM gold_dim_products WHERE category = 'Electronics'
UNION ALL
SELECT 'Products Home & Kitchen'   		, count(distinct product_name )   FROM gold_dim_products WHERE category = 'Home & Kitchen'
UNION ALL
SELECT 'Products Accessories'   		, count(distinct product_name )   FROM gold_dim_products WHERE category = 'Accessories'
UNION ALL
SELECT 'Products Furniture'   			, count(distinct product_name )   FROM gold_dim_products WHERE category = 'Furniture';
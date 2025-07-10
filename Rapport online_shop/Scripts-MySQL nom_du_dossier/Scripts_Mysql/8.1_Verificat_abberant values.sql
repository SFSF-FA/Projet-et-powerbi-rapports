-- Classification of amount values &  Descriptive statistics

-- Flop 10
SELECT 
    order_id, 
	amount, 
    ROW_NUMBER() OVER (ORDER BY  amount) AS rn
    FROM gold_fact_orders
LIMIT 10; -- the 10 lowest values

-- TOP 10
SELECT 
	order_id,
	amount
FROM gold_fact_orders
ORDER BY amount DESC  -- Top 10 highest values
LIMIT 10;

-- Descriptive statistics
SELECT 	'Total amount' AS Measures, floor(sum(amount)) AS 'Values'  FROM  gold_fact_orders
UNION ALL
SELECT 	'Min amount' 				, Floor(MIN(amount))   FROM  gold_fact_orders
UNION ALL
SELECT 	'Average amount'  			, Floor(AVG(amount))    FROM  gold_fact_orders
UNION ALL
SELECT 	'Max amount'  				, Floor(MAX(amount))    FROM  gold_fact_orders
UNION ALL
SELECT 	'STD amount'  				, Floor(std(amount))    FROM  gold_fact_orders;

-- Detection of amount 0 values
SELECT  
	amount, order_id
FROM gold_fact_orders 
WHERE amount = 0; -- Two values with 0 (# amount = 0, order_id '4799', '2800')

-- Measuring quartils  
WITH ordered_data AS (
    SELECT amount, 
           ROW_NUMBER() OVER (ORDER BY amount) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM gold_fact_orders
)
SELECT 
    MAX(CASE WHEN row_num = FLOOR(total_count * 0.25) THEN amount END) AS Q1,
    MAX(CASE WHEN row_num = FLOOR(total_count * 0.50) THEN amount END) AS Q2, -- Médiane
    MAX(CASE WHEN row_num = FLOOR(total_count * 0.75) THEN amount END) AS Q3
FROM ordered_data;


-- calculate Mode
SELECT GROUP_CONCAT(amount) AS modes, MAX(occurrences) AS max_occurrences
FROM (
    SELECT amount, COUNT(*) AS occurrences
    FROM gold_fact_orders
    GROUP BY amount
) AS subquery
WHERE occurrences = (SELECT MAX(occurrences) FROM (SELECT COUNT(*) AS occurrences FROM gold_fact_orders GROUP BY amount) AS temp);









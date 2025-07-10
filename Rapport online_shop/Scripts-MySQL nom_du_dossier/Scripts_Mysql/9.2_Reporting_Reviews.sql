-- gold_fact_reviews data measures

SELECT 
    *
FROM
    gold_fact_reviews;

-- Classification of ratings by average score grouping by customer
SELECT 
    customer_id,
    AVG(rating) AS avg_rating,
    CASE
        WHEN AVG(rating) >= 4 THEN 'Good'
        WHEN AVG(rating) >= 2 AND AVG(rating) < 4 THEN 'Middle'
        ELSE 'Bad'
    END AS Rating
FROM
    gold_fact_reviews
GROUP BY customer_id
ORDER BY avg_rating DESC;

-- Classification of ratings by average score grouping by products

SELECT 
    product_id,
    AVG(rating) AS avg_rating,
    CASE
        WHEN AVG(rating) >= 4 THEN 'Good'
        WHEN AVG(rating) >= 2 AND AVG(rating) < 4 THEN 'Middle'
        ELSE 'Bad'
    END AS Rating
FROM
    gold_fact_reviews
GROUP BY product_id
ORDER BY avg_rating DESC;




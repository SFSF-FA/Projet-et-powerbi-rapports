-- Difference between total_price, price_at_purchase, price and amount
SELECT
	oi.order_item_id,
	oi.order_id,
    oi.product_id,
    customer_id,
    oi.quantity,
    oi.price_at_purchase, -- price_at_purchase * quantity ==> equal to amount (the total amount of the order)
    o.total_price,       -- Duplicate in the join with ordr_items equal to amount
    p.price,             -- The unit price of each product_id (to be reviewed or ignored)
    oi.price_at_purchase * oi.quantity as amount
FROM 
	silver_order_items oi
JOIN
	silver_orders o    ON  o.order_id = oi.order_id
JOIN silver_products p ON  oi.product_id = p.product_id;


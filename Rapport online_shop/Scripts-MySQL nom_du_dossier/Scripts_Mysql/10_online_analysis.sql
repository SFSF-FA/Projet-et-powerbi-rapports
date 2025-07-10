-- Create table views for analysis  ( Power bi and Ml on Python

CREATE OR REPLACE VIEW online_analysis AS  
SELECT DISTINCT
	F.order_item_id,
	F.order_id, 
    F.product_id, 
    F.customer_id,
	C.last_name,
	F.price_at_purchase,
    F.quantity,
    F.amount,
    R.rating,
    P.category, 
    P.product_name,
	T.transaction_status,
    Sh.carrier, 
    Sh.shipment_status,
	P.supplier_name,
    F.order_date,
    Sh.shipment_date, 
    Sh.delivery_date
FROM 
	gold_fact_orders F
LEFT JOIN
	gold_dim_customers C  ON F.customer_id = C.customer_id
LEFT JOIN
	gold_dim_payments T   ON F.order_id = T.order_id
LEFT JOIN
	gold_dim_shipments Sh ON F.order_id = Sh.order_id
LEFT JOIN
	gold_dim_products  P  ON F.product_id = P.product_id
LEFT JOIN
	gold_fact_reviews  R  ON P.product_id = R.product_id;
    

-- gold_fact_shipments  data measures

SELECT
	carrier,
    shipment_status,
    count(shipment_status)
FROM 
	online_shop.gold_fact_shipments
GROUP BY 1, 2;

CREATE OR REPLACE VIEW Reporting_Shipments AS
SELECT 'Average delivery date' AS Observations	, ROUND(AVG(DATEDIFF(delivery_date, shipment_date)), 0) AS 'Values' FROM gold_dim_shipments
UNION ALL 
SELECT 'Total Shipped'		,  count(shipment_status)  FROM gold_dim_shipments WHERE shipment_status = 'Shipped'
UNION ALL 
SELECT 'Total Pending'		,  count(shipment_status) FROM gold_dim_shipments WHERE shipment_status = 'Pending'
UNION ALL 
SELECT 'Total Delivered'	,  count(shipment_status) FROM gold_dim_shipments WHERE shipment_status = 'Delivered'
UNION ALL
SELECT 'Total UPS'			,  count(carrier)		  FROM gold_dim_shipments WHERE carrier			= 'UPS'
UNION ALL
SELECT 'Total DHL'			,  count(carrier)		  FROM gold_dim_shipments WHERE carrier			= 'DHL'
UNION ALL
SELECT 'Total FedEx'		,  count(carrier)		  FROM gold_dim_shipments WHERE carrier			= 'FedEx'


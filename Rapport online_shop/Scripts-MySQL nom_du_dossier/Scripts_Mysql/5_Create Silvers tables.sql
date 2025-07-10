/*
Création des tables Silver
Tables silvers avec les données nettoyées et organisées à partir de tes tables Bronze.
*/

-- Table Silver Customers

CREATE TABLE IF NOT EXISTS silver_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    address TEXT (50),
    email TEXT (50),
    phone_number TEXT (20),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- Table Silver Orders
CREATE TABLE IF NOT EXISTS silver_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES silver_customers(customer_id)
);

-- Table Silver Order Items
CREATE TABLE IF NOT EXISTS silver_order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_at_purchase DECIMAL(10 , 2 ),
    FOREIGN KEY (order_id)
        REFERENCES silver_orders (order_id),
    FOREIGN KEY (product_id)
        REFERENCES silver_products (product_id)
);


-- Table Silver Payments
CREATE TABLE IF NOT EXISTS silver_payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    transaction_status text (50),
    FOREIGN KEY (order_id) REFERENCES silver_orders(order_id)
);

-- Table Silver Products
CREATE TABLE IF NOT EXISTS silver_products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    supplier_id INT
);

-- Table Silver Suppliers
CREATE TABLE IF NOT EXISTS silver_suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    contact_name VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(100),
    email VARCHAR(100)
);


-- Table Silver Reviews
CREATE TABLE IF NOT EXISTS silver_reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating DECIMAL,
    review_text text (100),
    review_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES silver_products(product_id),
    FOREIGN KEY (customer_id) REFERENCES silver_customers(customer_id)
);

-- Table Silver Shipments
CREATE TABLE IF NOT EXISTS silver_shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    shipment_date DATETIME,
    carrier TEXT (20),
    tracking_number VARCHAR(50),
    delivery_date DATETIME,
    shipment_status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES silver_orders(order_id)
);



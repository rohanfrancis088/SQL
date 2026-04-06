use ecommerce;

create table salesdata(
order_id int primary key,
customer_id varchar(50),
order_date varchar(50),
product_category varchar(50),
Product_name varchar(50),
Quantity int,
Unit_Price int,
Total_Price int,	
Payment_Type varchar(50),
Delivery_Days int,
Customer_City varchar(50)
);

select * from salesdata;
Delete from salesdata;

SET SQL_SAFE_UPDATES = 0;

alter table salesdata
modify order_date date;

UPDATE salesdata
SET 
    order_date = DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m-%d');

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(Total_price * quantity) AS total_revenue
FROM salesdata
GROUP BY month
ORDER BY month;

SELECT 
    product_category,
    SUM(total_price * quantity) AS total_revenue
FROM salesdata	
GROUP BY product_category
ORDER BY total_revenue DESC;

SELECT 
    customer_id,
    SUM(Total_price * quantity) AS total_spent
FROM salesdata
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

SELECT 
    Customer_City,
    COUNT(order_id) AS total_orders,
    SUM(Total_Price * quantity) AS total_revenue
FROM salesdata
GROUP BY Customer_City
ORDER BY total_revenue DESC;

SELECT 
    payment_type,
    COUNT(order_id) AS total_orders,
    SUM(total_price * quantity) AS total_revenue,
    ROUND(AVG(Total_price * quantity), 2) AS avg_order_value
FROM salesdata
GROUP BY payment_type
ORDER BY total_revenue DESC;

SELECT 
    product_name,
    SUM(quantity) AS total_quantity,
    SUM(total_price * quantity) AS total_revenue
FROM salesdata
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT 
    ROUND(SUM(Total_price * quantity) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM salesdata;

SELECT 
    CASE 
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END AS customer_type,
    COUNT(*) AS total_customers
FROM (
    SELECT customer_id, COUNT(order_id) AS order_count
    FROM salesdata
    GROUP BY customer_id
) t
GROUP BY customer_type;

SELECT *
FROM (
    SELECT 
        product_name,
        product_category,
        unit_price * quantity AS order_value,
        AVG(unit_price * quantity) OVER (PARTITION BY product_category) AS category_avg
    FROM salesdata
) t
WHERE order_value < category_avg;


E-Commerce Sales Analysis using SQL

Overview -:
This project analyzes an e-commerce dataset to extract meaningful business insights using SQL. The objective is to understand customer behavior, sales performance, and operational efficiency to support data-driven decision-making.

Objectives -:

1. Analyze revenue trends over time
2. Identify top-performing products and categories
3. Segment customers based on spending behavior
4. Evaluate city-wise sales performance
5. Analyze payment methods
6. Calculate key KPIs like Average Order Value and Costumer Life Time Value

Database Schema -:

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

Key Analysis & Insights -:

1. Revenue Trend Analysis
A) Monthly revenue shows consistent performance with peak sales during mid-year
B) Indicates seasonal demand patterns
<img width="1920" height="632" alt="{A44A5EF7-7BB6-49AB-8842-20444CC895F9}" src="https://github.com/user-attachments/assets/8077b136-d440-4704-9b4d-0553a445676b" />


2. Top Categories
A) Electronics is the highest revenue-generating category
B) Clothing contributes the least
<img width="1907" height="592" alt="{5BE64BA0-5C1B-4506-BC7D-BC8D0FDE7CE0}" src="https://github.com/user-attachments/assets/619e16f5-c528-488a-9f88-1da71b2b195a" />


Business Insight:
Invest more in high-margin categories like Electronics

3. Customer Spending
A) A small group of customers contributes a large portion of revenue
<img width="1920" height="663" alt="{A23DC466-44D3-4538-A0D4-8A82F3D0CFF5}" src="https://github.com/user-attachments/assets/2b7ad5dd-d351-48a9-92b5-d2b18d47811e" />


4. City-wise Performance
A) Chennai, Delhi, and Bhopal are top-performing cities
<img width="1908" height="692" alt="{E994F21A-D430-4950-98A9-542A1ABBCEB2}" src="https://github.com/user-attachments/assets/bc5bcf49-8828-4785-9dae-f224ce420a11" />


Business Insight:
Target these cities for expansion and promotions

5. Payment Analysis
A) Cash on Delivery (COD) is the most used payment method
<img width="1913" height="640" alt="{8B3CBD8D-0638-43CC-9F78-FA6D0FEA0992}" src="https://github.com/user-attachments/assets/b1f302c5-4a74-4b3b-84a4-f5ccdd6dbe54" />


Business Insight:
Improve logistics and reduce COD dependency by promoting digital payments

6. Product Analysis
A) Products like Mouse, Perfume, and Headphones are top sellers
<img width="1920" height="674" alt="{D3EF34FF-4752-4285-9030-F7192ACCD6F8}" src="https://github.com/user-attachments/assets/b33f0c44-9e30-4891-a295-635503f383b5" />


7. Average Order Value (AOV)
A) AOV indicates strong purchasing behavior
<img width="1920" height="546" alt="{C3017B5A-89C3-411C-ABFF-EB394999B9B0}" src="https://github.com/user-attachments/assets/6c7f9205-48d1-4970-99f2-b063b9a1789d" />


8. Customer Retention
A) Majority of customers are repeat buyers
<img width="1919" height="878" alt="{70912C11-CF24-44C9-A8E0-B7024BA52F41}" src="https://github.com/user-attachments/assets/225848c3-82ef-4a5a-9c34-a15482252e6c" />


9. Orders Below Category Average
A) Categories like Electronics (high-value) may still have low-value orders due to small accessories
B) Some orders within each category are generating below-average revenue
<img width="1917" height="812" alt="{9742C19D-D2AD-465F-806D-9035B608EC33}" src="https://github.com/user-attachments/assets/0b55981a-ce37-4ce0-a1ff-7338bbdb4f06" />

Tools & Technologies-:

1. SQL (MySQL) 
2. Excel (Data Cleaning)
3. GitHub (Project Hosting)

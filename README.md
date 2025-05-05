# Data-analysis-with-complex-queries

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: TEJASHWANI SINGH

*INTERN ID*: CT04WH121

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

## Description of this task

# Project Description: Exploring SQL Joins on Relational Data
This project demonstrates how to manage, analyze, and derive insights from a customer purchase dataset using SQL. The core goal is to store transaction records, compute customer-level and monthly summaries, and identify meaningful sales patterns — such as high-spending customers and cumulative trends — using SQL operations and window functions.

# Tools and Technologies Used
Query Language: SQL (Structured Query Language)

Data Types: SERIAL, INT, DATE, NUMERIC

Concepts Used:

Data Definition Language (DDL)

Data Manipulation Language (DML)

Aggregations (SUM, GROUP BY)

Window functions (OVER, PARTITION BY)

Date functions (EXTRACT(MONTH FROM ...))

# Data Model
1. Table: sales_data

| Column Name     | Data Type     | Description                            |
| --------------- | ------------- | -------------------------------------- |
| `id`            | SERIAL        | Unique identifier for each transaction |
| `customer_id`   | INT           | ID of the customer                     |
| `purchase_date` | DATE          | Date of purchase                       |
| `amount_spent`  | NUMERIC(10,2) | Total amount spent on that transaction |

2. Table: monthly_sales

| Column Name   | Data Type     | Description                           |
| ------------- | ------------- | ------------------------------------- |
| `month`       | INT           | Month number (1–12)                   |
| `total_sales` | NUMERIC(10,2) | Aggregated amount spent in that month |

# Operations Demonstrated
Table Creation: Structured schema design using CREATE TABLE.

Data Insertion: Populating data using INSERT INTO.

Data Retrieval: Using SELECT * and conditional filters.

Window Functions: Computing cumulative spending per customer.

Aggregations:

Total spent by each customer using GROUP BY.

Monthly total sales using EXTRACT(MONTH FROM purchase_date).

Filtering: Identifying customers or months with sales > 500.

Ordering: Results sorted for readability and clarity.

# Applications
Sales Analytics Dashboards: Generate real-time insights into customer and monthly trends.

Marketing Campaigns: Identify high-value customers for targeted offers.

Revenue Forecasting: Use cumulative and monthly trends for projections.

Customer Behavior Tracking: Understand spending habits over time.

# Conclusion
This project highlights how SQL can effectively manage and analyze transactional datasets. By leveraging both basic queries and advanced functions like OVER and GROUP BY, meaningful insights such as customer value and sales performance over time can be derived. The approach can be scaled for large datasets and integrated into BI tools for visualization.

# Output

![Image](https://github.com/user-attachments/assets/79593ffc-a28e-40c7-aee6-5b42ce9e6279)

![Image](https://github.com/user-attachments/assets/075d9122-6728-4f07-97c2-b223db894722)

![Image](https://github.com/user-attachments/assets/eebaa019-dc61-4077-85b7-8ff933cab687)

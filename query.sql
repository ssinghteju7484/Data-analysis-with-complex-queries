-- Creating table for sales data
CREATE TABLE sales_data (
    id SERIAL PRIMARY KEY,  -- Unique identifier
    customer_id INT NOT NULL,  -- Ensuring data integrity
    purchase_date DATE NOT NULL,
    amount_spent NUMERIC(10,2) NOT NULL  -- Amount cannot be NULL
);

-- Inserting sample data
INSERT INTO sales_data (customer_id, purchase_date, amount_spent) VALUES
    (1, '2024-01-10', 200.50),
    (2, '2024-01-15', 300.75),
    (1, '2024-02-05', 150.25),
    (3, '2024-02-20', 400.00),
    (2, '2024-03-12', 250.00),
    (3, '2024-03-18', 350.50),
    (1, '2024-04-02', 180.00),
    (2, '2024-04-08', 290.75),
    (3, '2024-04-15', 410.00);

-- Selecting all records from sales_data
SELECT * FROM sales_data;

-- Calculating cumulative spending for each customer ordered by purchase date
SELECT 
    customer_id, 
    purchase_date, 
    amount_spent, 
    SUM(amount_spent) OVER (PARTITION BY customer_id ORDER BY purchase_date) AS cumulative_spent
FROM sales_data;

-- Fetching customers who have spent more than 500 in total
SELECT customer_id, total_spent
FROM (
    SELECT customer_id, SUM(amount_spent) AS total_spent
    FROM sales_data
    GROUP BY customer_id
) AS subquery
WHERE total_spent > 500;

-- Creating table for monthly sales summary
CREATE TABLE monthly_sales (
    month INT PRIMARY KEY,
    total_sales NUMERIC(10,2) NOT NULL
);

-- Inserting summarized monthly sales data
INSERT INTO monthly_sales (month, total_sales)
SELECT 
    EXTRACT(MONTH FROM purchase_date) AS month, 
    SUM(amount_spent) AS total_sales
FROM sales_data
GROUP BY EXTRACT(MONTH FROM purchase_date);

-- Selecting months where total sales exceed 500
SELECT * FROM monthly_sales WHERE total_sales > 500;

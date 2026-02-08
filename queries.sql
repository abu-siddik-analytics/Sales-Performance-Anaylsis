-- Total sales by product
SELECT p.product_name, SUM(s.quantity * p.price) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Monthly sales trend
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY month;

-- Top 5 products
SELECT p.product_name, SUM(s.quantity) AS qty
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY qty DESC
LIMIT 5;

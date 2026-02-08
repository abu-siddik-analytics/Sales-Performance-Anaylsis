-- Total Sales & profit

SELECT Sum(quantity) as Total_sales , 
         Sum(quantity*(Selling_price-cost_price))as Profit FROM sales as s
		 JOIN products as p ON s.product_id=p.product_id;


---Category- wise Sales
 
 SELECT category,Sum(selling_price*quantity)as Total_Sales FROM sales as s
 JOIN products as p ON s.product_id=p.product_id
 GROUP BY category;


--- Top 5 Products

SELECT product_name,Sum(selling_price*quantity)as top_5_products FROM sales as s
JOIN products as p ON s.product_id=p.product_id
GROUP BY product_name  ORDER BY top_5_products Desc LIMIT 5;


---Region-wise Performance

SELECT region , Sum(Selling_price*quantity)as Total_sales FROM sales as s
JOIN products as p ON s.product_id=p.product_id
JOIN customers as c ON s.customer_id=c.customer_id
GROUP BY region ;


--Monthly Sales Trend

SELECT To_char(sale_date,'month')as month , SUM(selling_price*quantity)as Revenue FROM sales as s
JOIN products as p ON s.product_id=p.product_id
JOIN customers as c ON s.customer_id=c.customer_id
GROUP BY month
ORDER BY month;




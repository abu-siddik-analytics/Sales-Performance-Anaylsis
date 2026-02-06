CREATE TABLE products(product_id INT PRIMARY KEY,
                      product_name VARCHAR(100),
					  category VARCHAR(50),
					  cost_price DECIMAL(10,2),
					  selling_price DECIMAL(10,2));

CREATE TABLE customers(customer_id INT PRIMARY KEY,
                        customer_name VARCHAR(100),
						region VARCHAR(50)
                       );


CREATE TABLE sales( sale_id INT PRIMARY KEY,
                   product_id INT,
				   customer_id INT,
				   sale_date DATE,
				   quantity INT,
				   FOREIGN KEY(product_id)REFERENCES products(product_id),
				   FOREIGN KEY (customer_id)REFERENCES customers(customer_id)
				   );


INSERT INTO products(product_id,product_name,category,cost_price,selling_price)
VALUES
(1,'Laptop','Electronics',65000,75000),
(2,'Mouse','Electronics',500,800),
(3,'Keyboard','Electronics',1000,1500),
(4,'Monitor','Electronics',18000,22000),
(5,'Headphone','Electronics',1800,2500),
(6,'Printer','Electronics',15000,18000),
(7,'Tablet','Electronics',30000,35000),
(8,'Mobile','Electronics',38000,42000),
(9,'Charger','Accessories',800,1200),
(10,'Power Bank','Accessories',2200,3000),

(11,'Laptop','Electronics',68000,76000),
(12,'Mouse','Electronics',550,850),
(13,'Keyboard','Electronics',1100,1600),
(14,'Monitor','Electronics',19000,23000),
(15,'Headphone','Electronics',1900,2600),
(16,'Printer','Electronics',16000,18500),
(17,'Tablet','Electronics',32000,36000),
(18,'Mobile','Electronics',40000,45000),
(19,'Charger','Accessories',900,1300),
(20,'Power Bank','Accessories',2500,3200),

(21,'Laptop','Electronics',70000,77000),
(22,'Mouse','Electronics',600,900),
(23,'Keyboard','Electronics',1200,1650),
(24,'Monitor','Electronics',20000,24000),
(25,'Headphone','Electronics',2000,2700),
(26,'Printer','Electronics',16500,19000),
(27,'Tablet','Electronics',33000,37000),
(28,'Mobile','Electronics',42000,46000),
(29,'Charger','Accessories',950,1400),
(30,'Power Bank','Accessories',2600,3300),

(31,'Laptop','Electronics',72000,78000),
(32,'Mouse','Electronics',650,950),
(33,'Keyboard','Electronics',1300,1700),
(34,'Monitor','Electronics',21000,25000),
(35,'Headphone','Electronics',2100,2800),
(36,'Printer','Electronics',17000,19500),
(37,'Tablet','Electronics',35000,38000),
(38,'Mobile','Electronics',44000,47000),
(39,'Charger','Accessories',1000,1500),
(40,'Power Bank','Accessories',2700,3400),

(41,'Laptop','Electronics',74000,80000),
(42,'Mouse','Electronics',700,1000),
(43,'Keyboard','Electronics',1400,1750),
(44,'Monitor','Electronics',22000,26000),
(45,'Headphone','Electronics',2200,2900),
(46,'Printer','Electronics',17500,20000),
(47,'Tablet','Electronics',36000,39000),
(48,'Mobile','Electronics',45000,48000),
(49,'Charger','Accessories',1100,1600),
(50,'Power Bank','Accessories',2800,3500);


INSERT INTO customers(customer_id,customer_name,region)
VALUES
(1,'Rahim','North'),
(2,'Karim','South'),
(3,'Hasan','East'),
(4,'Rafi','West'),
(5,'Nusrat','North'),
(6,'Ayesha','South'),
(7,'Fahim','East'),
(8,'Nayeem','West'),
(9,'Sadia','North'),
(10,'Tanim','South'),

(11,'Imran','East'),
(12,'Mim','West'),
(13,'Sakib','North'),
(14,'Tisha','South'),
(15,'Arif','East'),
(16,'Mahi','West'),
(17,'Jubayer','North'),
(18,'Rima','South'),
(19,'Nabil','East'),
(20,'Anika','West'),

(21,'Saif','North'),
(22,'Priya','South'),
(23,'Rasel','East'),
(24,'Lima','West'),
(25,'Shuvo','North'),
(26,'Farzana','South'),
(27,'Hridoy','East'),
(28,'Puja','West'),
(29,'Mamun','North'),
(30,'Sumaiya','South'),

(31,'Tanvir','East'),
(32,'Nadia','West'),
(33,'Bappy','North'),
(34,'Jannat','South'),
(35,'Asif','East'),
(36,'Sumi','West'),
(37,'Kamal','North'),
(38,'Sharmin','South'),
(39,'Rony','East'),
(40,'Afsana','West'),

(41,'Mahmud','North'),
(42,'Elina','South'),
(43,'Rashid','East'),
(44,'Keya','West'),
(45,'Parvez','North'),
(46,'Sonia','South'),
(47,'Shamim','East'),
(48,'Laila','West'),
(49,'Rifat','North'),
(50,'Nila','South');


INSERT INTO sales(sale_id,product_id,customer_id,sale_date,quantity)
VALUES
(1,1,1,'2025-01-01',2),
(2,2,2,'2025-01-01',3),
(3,3,3,'2025-01-02',1),
(4,4,4,'2025-01-02',4),
(5,5,5,'2025-01-03',2),
(6,6,6,'2025-01-03',5),
(7,7,7,'2025-01-04',3),
(8,8,8,'2025-01-04',1),
(9,9,9,'2025-01-05',4),
(10,10,10,'2025-01-05',2),

(11,1,11,'2025-01-06',3),
(12,2,12,'2025-01-06',1),
(13,3,13,'2025-01-07',2),
(14,4,14,'2025-01-07',5),
(15,5,15,'2025-01-08',3),
(16,6,16,'2025-01-08',2),
(17,7,17,'2025-01-09',4),
(18,8,18,'2025-01-09',1),
(19,9,19,'2025-01-10',3),
(20,10,20,'2025-01-10',2),

(21,1,21,'2025-01-11',4),
(22,2,22,'2025-01-11',3),
(23,3,23,'2025-01-12',1),
(24,4,24,'2025-01-12',2),
(25,5,25,'2025-01-13',5),
(26,6,26,'2025-01-13',3),
(27,7,27,'2025-01-14',2),
(28,8,28,'2025-01-14',4),
(29,9,29,'2025-01-15',1),
(30,10,30,'2025-01-15',3),

(31,1,31,'2025-01-16',2),
(32,2,32,'2025-01-16',5),
(33,3,33,'2025-01-17',4),
(34,4,34,'2025-01-17',1),
(35,5,35,'2025-01-18',3),
(36,6,36,'2025-01-18',2),
(37,7,37,'2025-01-19',5),
(38,8,38,'2025-01-19',3),
(39,9,39,'2025-01-20',4),
(40,10,40,'2025-01-20',2),

(41,1,41,'2025-01-21',3),
(42,2,42,'2025-01-21',1),
(43,3,43,'2025-01-22',2),
(44,4,44,'2025-01-22',4),
(45,5,45,'2025-01-23',5),
(46,6,46,'2025-01-23',3),
(47,7,47,'2025-01-24',2),
(48,8,48,'2025-01-24',1),
(49,9,49,'2025-01-25',4),
(50,10,50,'2025-01-25',3);


Select customer_name,product_name,category,cost_price,selling_price,region,sale_date,quantity FROM sales as s
JOIN products as p ON s.product_id=p.product_id
JOIN customers as c ON s.customer_id=c.customer_id;


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
























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































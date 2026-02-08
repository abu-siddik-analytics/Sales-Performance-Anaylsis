CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  region VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  product_id INT,
  customer_id INT,
  sale_date DATE,
  quantity INT
);

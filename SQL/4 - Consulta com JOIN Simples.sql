CREATE DATABASE store;

USE store;

CREATE TABLE customers (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL
)

CREATE TABLE orders (
  id INT IDENTITY(1,1) PRIMARY KEY,
  customer_id INT FOREIGN KEY REFERENCES customers(id),
  total DECIMAL(10, 2) NOT NULL
)

-------------

INSERT INTO customers (name, country)
VALUES
  ('João', 'Brasil'),
  ('Maria', 'Canada'),
  ('Cláudia', 'Portugal'),
  ('Roberto', 'Estados Unidos'),
  ('Pedro', 'Brasil')

INSERT INTO orders (customer_id, total)
VALUES
  (1, 100.00),
  (2, 200.00),
  (1, 500.00),
  (4, 400.00),
  (3, 300.00),
  (2, 600.00),
  (4, 700.00)

-------------

SELECT c.name, COALESCE(SUM(o.total), 0) AS total_orders FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total) > 0
ORDER BY total_orders DESC
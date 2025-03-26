CREATE DATABASE store;

USE store;

CREATE TABLE category (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL
)

CREATE TABLE product (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  category_id INT FOREIGN KEY REFERENCES category(id)
)

CREATE TABLE sales (
  id INT IDENTITY(1,1) PRIMARY KEY,
  product_id INT FOREIGN KEY REFERENCES product(id),
  quantity INT NOT NULL
)

-------------

INSERT INTO category (name)
VALUES
  ('Category A'),
  ('Category B'),
  ('Category C')

INSERT INTO product (name, category_id)
VALUES
  ('Product A', 1),
  ('Product B', 2),
  ('Product C', 3)

INSERT INTO sales (product_id, quantity)
VALUES
  (1, 100),
  (2, 50),
  (3, 1500),
  (1, 5)

-------------

SELECT
  c.name AS category_name,
  p.name AS product_name,
  COALESCE(SUM(s.quantity), 0) AS total
FROM sales AS s
INNER JOIN product AS p ON s.product_id = p.id
INNER JOIN category AS c ON p.category_id = c.id
GROUP BY c.name, p.name
HAVING SUM(s.quantity) > 100
ORDER BY total DESC;
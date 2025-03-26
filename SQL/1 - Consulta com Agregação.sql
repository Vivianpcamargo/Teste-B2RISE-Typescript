CREATE DATABASE store;

USE store;

CREATE TABLE sales (
  id INT IDENTITY(1,1) PRIMARY KEY,
  product VARCHAR(50) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL
)

-------------

INSERT INTO sales (product, quantity, price)
VALUES
  ('Product A', 10, 5.99),
  ('Product B', 5, 9.99),
  ('Product C', 3, 7.99)

-------------

SELECT product, SUM(quantity * price) AS revenue FROM sales
GROUP BY product
ORDER BY revenue DESC
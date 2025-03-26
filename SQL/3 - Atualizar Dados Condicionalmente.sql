CREATE DATABASE store;

USE store;

CREATE TABLE employees (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  salary DECIMAL(10,2) NOT NULL
)

-------------

INSERT INTO employees (name, salary)
VALUES
  ('John Doe', 4000.00),
  ('Jane Doe', 5000.00),
  ('Bob Smith', 6000.00)

-------------

UPDATE employees
SET salary = salary * 1.1
WHERE salary < 5000
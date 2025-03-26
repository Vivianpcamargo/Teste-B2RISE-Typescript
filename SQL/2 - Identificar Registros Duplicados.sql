CREATE DATABASE

USE

CREATE TABLE users (
  id INT IDENTITY(1,1) PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  name VARCHAR(50) NOT NULL
)

-------------

INSERT INTO users (email, name)
VALUES
  ('VX3t6@example.com', 'John Doe'),
  ('VX3t6@example.com', 'Jane Doe'),
  ('5XtJ5@example.com', 'John Doe')

-------------

SELECT email, COUNT(email) AS duplicates FROM users
GROUP BY email
HAVING COUNT(email) > 1
ORDER BY duplicates DESC
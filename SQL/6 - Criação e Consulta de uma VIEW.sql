CREATE DATABASE view;

USE view;

CREATE TABLE transactions (
  id INT IDENTITY(1,1) PRIMARY KEY,
  account_id INT NOT NULL,
  transaction_date DATE NOT NULL,
  amount DECIMAL(10, 2) NOT NULL
)

-------------

INSERT INTO transactions (account_id, transaction_date, amount)
VALUES
	(2, '2022-01-15', 1000.00),
	(1, '2022-02-01', 3000.00),
	(2, '2022-01-31', 1500.00),
	(1, '2022-02-03', 3500.00),
	(3, '2022-01-31', 3000.00),
	(1, '2022-02-05', 4000.00)

-------------

CREATE VIEW monthly_summary AS
SELECT
	account_id,
	MONTH(transaction_date) AS month,
	SUM(amount) AS total_amount
FROM transactions
GROUP BY account_id, MONTH(transaction_date)

SELECT * FROM monthly_summary
WHERE account_id IN (
	SELECT account_id FROM monthly_summary
	WHERE total_amount > 10000.00
)

-- In ascending order
SELECT *
FROM orders
ORDER BY occurred_at
LIMIT 15;

-- In descending order
SELECT *
FROM orders
ORDER BY occurred_at DESC
LIMIT 15;

-- In ascending order by multiple columns
SELECT *
FROM orders
ORDER BY occurred_at, account_id
LIMIT 15;

-- Other examples
SELECT id, total_amt_usd, occurred_at
FROM orders
ORDER BY occurred_at
LIMIT 10;


SELECT id, total_amt_usd, account_id
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;


SELECT id, total_amt_usd, account_id
FROM orders
ORDER BY total_amt_usd
LIMIT 20;

-- using ORDER BY with one column DESC and another ASC
SELECT  account_id,
        total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id


SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;
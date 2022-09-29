# SQL_Practice

## 1. SELECT

## 2. LIMIT

## 3. ORDER BY

## 4. WHERE
Using the `WHERE` statement, we can display subsets of tables based on conditions that must be met. You can also think of the `WHERE` command as filtering the data.

Common symbols used in WHERE statements include:

* `>` (greater than)
* `<` (less than)
* `>=` (greater than or equal to)
* `<=` (less than or equal to)
* `=` (equal to)
* `!=` (not equal to)

```SQL
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;
```

The `WHERE` statement can also be used with non-numeric data. We can use the `=` and `!=` operators here. You need to be sure to use single quotes (just be careful if you have quotes in the original text) with the text data, not double quotes.

Commonly when we are using `WHERE` with non-numeric data fields, we use the `LIKE`, `NOT`, or `IN` operators.
* The `LIKE` operator is used to find a specified pattern in a column.
* The `NOT` operator is used to exclude specific values.
* The `IN` operator is used to specify multiple values in a `WHERE` clause.

```SQL
SELECT *
FROM accounts
WHERE name != 'United Technologies'
```

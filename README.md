# SQL_Practice

## 1. SELECT
This is the keyword used in SQL to query data from a database. It is used to fetch data from a database table which returns data in the form of a result table. The result table is known as a result-set.

## 2. LIMIT

## 3. ORDER BY

## 4. WHERE & (Logical Operators)
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

```SQL
-- WHERE with non numeric data
SELECT *
FROM accounts
WHERE name != 'United Technologies'
```

Commonly when we are using `WHERE` with fields, we use the logical operators like:
* The `LIKE` operator is used to find a specified pattern in a column. It allows you to perform operations similar to using `WHERE` and `=`, but for cases when you might not know exactly what you are looking for.
* The `NOT` operator is used to exclude specific values. It  is used with `IN` and `LIKE` to select all of the rows `NOT LIKE` or `NOT IN` a certain condition.
* The `IN` operator is used to specify multiple values in a `WHERE` clause. It  allows you to perform operations similar to using `WHERE` and `=`, but for more than one condition.
* The `BETWEEN` operator is used to select values within a given range. The values can be numbers, text, or dates. The values are inclusive: begin and end values are included.
* The `AND` operator is used to filter the result set within multiple conditions. It is used to combine two or more conditions in a `WHERE` clause.
* The `OR` operator is used to filter the result set within multiple conditions. It is used to combine where at least one condition in a `WHERE` clause is true.



```SQL
-- WHERE used with LIKE
SELECT *
FROM browser_searches
WHERE search_engine_used LIKE '%google%';
```

```SQL
-- WHERE used with NOT LIKE
SELECT *
FROM browser_searches
WHERE search_engine_used NOT LIKE '%google%';
```

```SQL
-- WHERE used with IN
SELECT *
FROM orders
WHERE account_id IN (1001,1021);
```

```SQL
-- WHERE used with NOT IN
SELECT *
FROM orders
WHERE account_id NOT IN (1001,1021);
```

```SQL
-- WHERE used with AND
SELECT *
FROM orders
WHERE occurred_at >= '2016-04-01' AND occurred_at <= '2016-10-01'
ORDER BY occurred_at
```

```SQL
-- WHERE used with BETWEEN
SELECT *
FROM orders
WHERE occurred_at BETWEEN '2016-04-01' AND '2016-10-01'
ORDER BY occurred_at
```

```SQL
-- WHERE used with OR
SELECT account_id,
       occurred_at,
       standard_qty,
       gloss_qty,
       poster_qty
FROM orders
WHERE standard_qty = 0 OR gloss_qty = 0 OR poster_qty = 0
```

## AS & (Derived Columns)
Creating a new column that is a combination of existing columns is known as a derived column (or "calculated" or "computed" column). Usually, you want to give a name, or "alias," to your new column using the `AS` keyword.

This derived column, and its alias, are generally only temporary, existing just for the duration of your query. The next time you run a query and access this table, the new column will not be there.

If you are deriving the new column from existing columns using a mathematical expression, then these familiar mathematical operators will be useful:
  1. `+` (addition)
  2. `-` (subtraction)
  3. `*` (multiplication)
  4. `/` (division)

```SQL
SELECT id, name, num_employees,
  num_employees * 1000 AS num_employees_thousands
FROM accounts
LIMIT 5;
```

> *__Note:__* If you want to create a new column that is a permanent part of the table, you will need to use the `ALTER TABLE` command.

> *__Note:__* Derived columns use operations that have to follow the [PEMDAS/BEDMAS/BODMAS/BIDMAS](https://en.wikipedia.org/wiki/Order_of_operations) order of operations.


## 6. JOIN
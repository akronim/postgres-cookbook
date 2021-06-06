-- dvdrental

-- The GROUP BY clause divides the rows returned from the SELECT statement 
-- into groups. 
-- For each group, you can apply an aggregate function e.g., SUM() to calculate 
-- the sum of items or COUNT() to get the number of items in the groups.

-- 1) Using PostgreSQL GROUP BY without an aggregate function example
-- it gets data from the payment table and groups the result by customer id
SELECT
   customer_id
FROM
   payment
GROUP BY
   customer_id;


-- 2) Using PostgreSQL GROUP BY with SUM() function example
-- get total amount that each customer has been paid
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id;

-- use the ORDER BY clause with GROUP BY clause to sort the groups:
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM (amount) DESC;


-- 3) Using PostgreSQL GROUP BY clause with the JOIN clause
SELECT
	first_name || ' ' || last_name full_name,
	SUM (amount) amount
FROM
	payment
INNER JOIN customer USING (customer_id)    	
GROUP BY
	full_name
ORDER BY amount;

--     full_name    | amount 
-- -----------------+--------
--  Brian Wyman     |  27.93
--  Leona Obrien    |  32.90
--  Caroline Bowman |  37.87
--  Anthony Schwab  |  47.85
--  Tiffany Jordan  |  49.88
--  Kirk Stclair    |  50.83
--  Bobbie Craig    |  52.81
--  Jo Fowler       |  54.85
--  Penny Neal      |  56.84
--  Johnny Turpin   |  57.81
-- (10 rows)


-- 4) Using PostgreSQL GROUP BY with COUNT() function example
SELECT
	staff_id,
	COUNT (payment_id)
FROM
	payment
GROUP BY
	staff_id;


-- 5) Using PostgreSQL GROUP BY with multiple columns
-- the GROUP BY clause divides the rows in the payment table by the values 
-- in the customer_id and staff_id columns
-- for each group of (customer_id, staff_id), the SUM() calculates 
-- the total amount
SELECT 
	customer_id, 
	staff_id, 
	SUM(amount) 
FROM 
	payment
GROUP BY 
	staff_id, 
	customer_id
ORDER BY 
    customer_id;





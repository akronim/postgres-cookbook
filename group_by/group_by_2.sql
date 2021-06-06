--- ### 3
SELECT
    first_name || ' ' || last_name full_name, 
    string_agg(DISTINCT customer_id::text, ', ') AS customer_id,
	array_agg(DISTINCT customer_id) AS customer_id_2,
    (array_agg(customer_id))[1] AS customer_id_3,
    SUM (amount) amount,
    MAX(payment.payment_date) AS last_payment
FROM
    payment
INNER JOIN customer USING (customer_id)    
GROUP BY
    full_name
ORDER BY amount LIMIT 10;


--- ###
-- https://elsapet.wordpress.com/2020/07/25/error-column-must-appear-in-the-group-by-clause-or-be-used-in-an-aggregate-function/
-- select the latest payment per customer per day
SELECT * FROM payment 
INNER JOIN (
  SELECT MAX(payment.payment_id) AS latest_id 
  FROM payment 
  GROUP BY date_trunc('day', payment_date), customer_id
) subquery ON subquery.latest_id = payment.payment_id;


--- ### 2
SELECT DISTINCT ON (customer_id) subquery.* FROM payment 
INNER JOIN (
  SELECT    customer_id, 
            COUNT(customer_id) AS total_payments,
            SUM(amount) AS total_amount,
            MAX(payment_date) AS last_payment
  FROM payment 
  GROUP BY customer_id
) subquery USING (customer_id);


--- ### 2
SELECT DISTINCT ON (customer_id)
	customer_id, 
    COUNT(customer_id) OVER (PARTITION BY customer_id) AS total_payments,
	SUM(amount) OVER (PARTITION BY customer_id) AS total_amount,
	MAX(payment_date) OVER (PARTITION BY customer_id) AS last_payment
FROM payment;


--- ### 2
SELECT DISTINCT ON (p.customer_id) 
                    p.customer_id, 
                    s.total_payments,
                    s.total_amount,
                    s.last_payment
FROM (
    SELECT  customer_id, 
            COUNT(customer_id) AS total_payments,
            SUM(amount) AS total_amount,
            MAX(payment_date) AS last_payment
    FROM payment
    GROUP BY customer_id
    ) s JOIN payment p ON p.customer_id = s.customer_id; 




--- ###


-- get payments by customer 1
SELECT e.first_name, array_agg(p.payment_id) AS payments 
FROM 
	(SELECT * FROM customer ORDER BY customer_id LIMIT 3 OFFSET 0) AS e 
LEFT OUTER JOIN payment AS p ON e.customer_id = p.customer_id
GROUP BY e.customer_id, e.first_name 
ORDER BY e.first_name;

-- get payments by customer 2
SELECT e.first_name,
       (SELECT array_agg(p.payment_id) 
        FROM payment AS p
        WHERE e.customer_id = p.customer_id
       ) AS payments 
FROM 
(SELECT * FROM customer ORDER BY first_name LIMIT 3 OFFSET 0) AS e 
ORDER BY e.first_name ;

-- get payments by customer 3
SELECT e.first_name,
       (SELECT array_agg(p.payment_id) 
        FROM payment AS p
        WHERE e.customer_id = p.customer_id
       ) AS payments 
FROM customer AS e
ORDER BY e.first_name LIMIT 3 OFFSET 0 ;

-- get payments by customer 4
SELECT e.first_name,
       p.payments 
FROM 
   (SELECT * FROM customer ORDER BY first_name LIMIT 3 OFFSET 0) AS e
LEFT JOIN LATERAL
   (SELECT array_agg(payment_id) AS payments
    FROM payment 
    WHERE e.customer_id = payment.customer_id
   ) AS p ON TRUE 
ORDER BY e.first_name ;
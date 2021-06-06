SELECT  id, 
        make, 
        model,
        price,
        ROUND(price * .10, 2) AS _10_p,
        ROUND(price - (price * .10), 2) AS minus_10_p
FROM car;
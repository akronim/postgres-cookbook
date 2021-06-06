SELECT  id, 
        make, 
        model,
        price original_price,
        ROUND(price * .10, 2) AS ten_percent_value,
        ROUND(price - (price * .10), 2) AS discount_after_10_percent
FROM car;
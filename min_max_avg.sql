SELECT make, round(AVG(price)) 
FROM car 
GROUP BY make;
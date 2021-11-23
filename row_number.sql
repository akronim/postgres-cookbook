SELECT
	product_id,
	product_name,
	group_id,
	ROW_NUMBER () OVER (ORDER BY product_id)
FROM
	products;
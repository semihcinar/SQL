-- AVG

SELECT  product_name, list_price
FROM    product.product
WHERE   list_price > ALL (
        
		
							SELECT
								AVG (list_price) avg_list_price
							FROM
								product.product
							GROUP BY
								brand_id
						)
ORDER BY
    list_price;
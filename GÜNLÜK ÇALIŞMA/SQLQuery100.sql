SELECT	customer_id, first_name, last_name
FROM	sale.customer
WHERE	customer_id IN (
					
SELECT customer_id        
FROM            product.product INNER JOIN
                         sale.order_item ON product.product.product_id = sale.order_item.product_id AND product.product.product_id = sale.order_item.product_id INNER JOIN
                         sale.orders ON sale.order_item.order_id = sale.orders.order_id AND sale.order_item.order_id = sale.orders.order_id
WHERE        (product.product.product_id = 6)
)

						INTERSECT

							SELECT       customer_id
							FROM            product.product INNER JOIN
													 sale.order_item ON product.product.product_id = sale.order_item.product_id INNER JOIN
													 sale.orders ON sale.order_item.order_id = sale.orders.order_id
							WHERE        (product.product.product_id = 13)

						)
;
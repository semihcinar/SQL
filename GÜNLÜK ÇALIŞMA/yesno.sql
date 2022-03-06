select E.customer_id, E.first_name, E.last_name

	,ISNULL(NULLIF (ISNULL(STR(F.customer_id), 'no'), STR(F.customer_id)), 'yes') First_product
	,ISNULL(NULLIF (ISNULL(STR(G.customer_id), 'no'), STR(G.customer_id)), 'yes') Second_product
	,ISNULL(NULLIF (ISNULL(STR(H.customer_id), 'no'), STR(H.customer_id)), 'yes') Third_product

FROM 
			(
			SELECT        sale.customer.first_name, sale.customer.last_name, product.product.product_name, sale.customer.customer_id
			FROM            sale.customer INNER JOIN
									 sale.orders ON sale.customer.customer_id = sale.orders.customer_id AND sale.customer.customer_id = sale.orders.customer_id LEFT OUTER JOIN
									 product.product RIGHT OUTER JOIN
									 sale.order_item ON product.product.product_id = sale.order_item.product_id ON sale.orders.order_id = sale.order_item.order_id
			WHERE        (product.product.product_id = 6)
			) E

	LEFT JOIN

			(
			SELECT        sale.customer.first_name, sale.customer.last_name, product.product.product_name, sale.customer.customer_id
			FROM            sale.customer INNER JOIN
									 sale.orders ON sale.customer.customer_id = sale.orders.customer_id AND sale.customer.customer_id = sale.orders.customer_id LEFT OUTER JOIN
									 product.product RIGHT OUTER JOIN
									 sale.order_item ON product.product.product_id = sale.order_item.product_id ON sale.orders.order_id = sale.order_item.order_id
			WHERE        (product.product.product_id = 13)
			) F ON E.customer_id = F.customer_id


	LEFT JOIN

						(
			SELECT        sale.customer.first_name, sale.customer.last_name, product.product.product_name, sale.customer.customer_id
			FROM            sale.customer INNER JOIN
									 sale.orders ON sale.customer.customer_id = sale.orders.customer_id AND sale.customer.customer_id = sale.orders.customer_id LEFT OUTER JOIN
									 product.product RIGHT OUTER JOIN
									 sale.order_item ON product.product.product_id = sale.order_item.product_id ON sale.orders.order_id = sale.order_item.order_id
			WHERE        (product.product.product_id = 21)
			) G ON E.customer_id = G.customer_id

	LEFT JOIN

		(
			SELECT        sale.customer.first_name, sale.customer.last_name, product.product.product_name, sale.customer.customer_id
			FROM            sale.customer INNER JOIN
									 sale.orders ON sale.customer.customer_id = sale.orders.customer_id AND sale.customer.customer_id = sale.orders.customer_id LEFT OUTER JOIN
									 product.product RIGHT OUTER JOIN
									 sale.order_item ON product.product.product_id = sale.order_item.product_id ON sale.orders.order_id = sale.order_item.order_id
			WHERE        (product.product.product_id = 16)
		) H ON E.customer_id = H.customer_id



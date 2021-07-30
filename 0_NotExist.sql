SELECT	DISTINCT STATE
FROM	sales.customers X
WHERE	 NOT EXISTS 		(
							SELECT	1
							FROM	production.products A, sales.order_items B, sales.orders C, sales.customers D
							WHERE	A.product_id = B.product_id
							AND		B.order_id = C.order_id
							AND		C.customer_id = D.customer_id
							AND		A.product_name = 'Trek Remedy 9.8 - 2017'
							AND		X.state = D.state
							)


--Notexist
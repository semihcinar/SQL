-- EXCEPT  �al��mas�

-- iki farkl� k�medeki birinde olup di�erinde olmayan kay�tlar� listeler. 

-- Write a query that returns only products ordered in 2017 (not ordered in other years).

SELECT	product_id, product_name
FROM	production.products
WHERE	product_id IN (
					SELECT	DISTINCT B.product_id
					FROM	sales.orders A, sales.order_items B
					WHERE	A.order_id= B.order_id
					AND		A.order_date BETWEEN '2017-01-01' AND '2017-12-31'

					EXCEPT

					SELECT	DISTINCT B.product_id
					FROM	sales.orders A, sales.order_items B
					WHERE	A.order_id= B.order_id
					AND		A.order_date NOT BETWEEN '2017-01-01' AND '2017-12-31'
					)
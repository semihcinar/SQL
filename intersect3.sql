--intersect 3


--Write a query that returns customers who have orders for both 2016, 2017, and 2018

SELECT	first_name, last_name
FROM	sales.customers
WHERE	customer_id IN (
						SELECT	customer_id
						FROM	sales.orders
						WHERE	order_date BETWEEN '2016-01-01' AND '2016-12-31'

						INTERSECT

						SELECT	customer_id
						FROM	sales.orders
						WHERE	order_date BETWEEN '2017-01-01' AND '2017-12-31'

						INTERSECT

						SELECT	customer_id
						FROM	sales.orders
						WHERE	order_date BETWEEN '2018-01-01' AND '2018-12-31'
						)
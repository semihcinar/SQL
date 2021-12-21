

select  customer_id from customer

where customer_id IN (

							SELECT        TOP (100) state, COUNT(state) AS Expr1
							FROM            customer
							GROUP BY state
							HAVING        (COUNT(state) < 25)
							ORDER BY Expr1 DESC


)

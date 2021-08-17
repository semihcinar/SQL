--CASE WHEN

--Find the total amount of each order which are placed in 2018. Then categorize them according to limits stated below.
--(You can use case statements here)

--    If the total amount of order    
--        less then 500 then "very low"
--        between 500 - 1000 then "low"
--        between 1000 - 5000 then "medium"
--        between 5000 - 10000 then "high"
--        more then 10000 then "very high" 



SELECT        SUM(sales.order_items.quantity * sales.order_items.list_price) AS amount, YEAR(sales.orders.order_date) AS YIL, sales.order_items.order_id


                ,CASE WHEN SUM(sales.order_items.quantity * sales.order_items.list_price) < 500 THEN 'very low'
				 WHEN SUM(sales.order_items.quantity * sales.order_items.list_price) BETWEEN 500 AND 1000 THEN 'low'
				 WHEN SUM(sales.order_items.quantity * sales.order_items.list_price) BETWEEN 1001 AND 5000 THEN 'medium'
				 WHEN SUM(sales.order_items.quantity * sales.order_items.list_price) BETWEEN 5001 AND 10000 THEN 'high'
				 WHEN SUM(sales.order_items.quantity * sales.order_items.list_price) > 10000  THEN 'very high'
				END


FROM            sales.order_items INNER JOIN
                         sales.orders ON sales.order_items.order_id = sales.orders.order_id
GROUP BY YEAR(sales.orders.order_date), sales.order_items.order_id
HAVING        (YEAR(sales.orders.order_date) = 2018)
ORDER BY sales.order_items.order_id
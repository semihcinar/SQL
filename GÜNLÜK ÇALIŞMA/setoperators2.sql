?
?
?
--monthwise turnover analysis
?
SELECT * 
FROM
(
SELECT YEAR(order_date) order_year, MONTH(B.order_date) Order_Month, list_price
FROM sale.store A, sale.orders B, sale.order_item C
WHERE A.store_name = 'The BFLO Store'
AND A.store_id=B.store_id
AND	B.order_id = C.order_id
) A
PIVOT
(
SUM(list_price)
FOR order_month
IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
) as piv
order by order_year
?
?
--daywise turnover analysis
?
?
?
SELECT * 
FROM
(
SELECT Datename(DW , order_date) order_day, datepart(WK, B.order_date) order_week, list_price
FROM sale.store A, sale.orders B, sale.order_item C
WHERE A.store_name = 'The BFLO Store'
AND A.store_id=B.store_id
AND	B.order_id = C.order_id
) A
PIVOT
(
SUM(list_price)
FOR order_day
IN ([Sunday],[Monday],[Tuesday],[Wednesday],[Thursday],[Friday],[Saturday])
) as piv
order by order_week


select first_name, last_name from sale.customer A
INNER JOIN sale.orders B ON A.customer_id = B.customer_id 
AND B.order_id  IN (




				SELECT  sale.orders.order_id
				FROM            sale.orders INNER JOIN
										 sale.order_item ON sale.orders.order_id = sale.order_item.order_id INNER JOIN
										 product.product ON sale.order_item.product_id = product.product.product_id INNER JOIN
										 product.category ON product.product.category_id = product.category.category_id AND product.product.category_id = product.category.category_id
				WHERE        (product.category.category_name = 'Computer Accessories')

		INTERSECT

				SELECT  sale.orders.order_id
				FROM            sale.orders INNER JOIN
										 sale.order_item ON sale.orders.order_id = sale.order_item.order_id INNER JOIN
										 product.product ON sale.order_item.product_id = product.product.product_id INNER JOIN
										 product.category ON product.product.category_id = product.category.category_id AND product.product.category_id = product.category.category_id
				WHERE        (product.category.category_name = 'speakers')

		INTERSECT

				SELECT  sale.orders.order_id
				FROM            sale.orders INNER JOIN
										 sale.order_item ON sale.orders.order_id = sale.order_item.order_id INNER JOIN
										 product.product ON sale.order_item.product_id = product.product.product_id INNER JOIN
										 product.category ON product.product.category_id = product.category.category_id AND product.product.category_id = product.category.category_id
				WHERE        (product.category.category_name = 'mp4 player')


)

order by 1




select *, datediff(day,order_date,shipped_date ) as islemgun  

	,case 
		WHEN shipped_date is null THEN 'Not SHipped'
		WHEN order_date = shipped_date THEN 'fast'
		WHEN DATEDIFF (DAY,order_date, shipped_date) BETWEEN 1 AND 2 THEN 'Normal'
		WHEN DATEDIFF (DAY,order_date, shipped_date) > 3 THEN 'Slow'
END as gonderidurumu

from sale.orders
order by islemgun

456

select * from sale.customer CUS
inner Join sale.orders O on o.customer_id = CUS.customer_id 
AND O.order_id IN (

select ORD.order_id from product.product PRO
inner join sale.order_item ITM ON PRO.product_id = ITM.product_id
inner join  sale.orders ORD ON ORD.order_id = ITM.order_id
where PRO.category_id IN (4)

intersect

select ORD.order_id from product.product PRO
inner join sale.order_item ITM ON PRO.product_id = ITM.product_id
inner join  sale.orders ORD ON ORD.order_id = ITM.order_id
where PRO.category_id IN (5)

intersect 

select ORD.order_id from product.product PRO
inner join sale.order_item ITM ON PRO.product_id = ITM.product_id
inner join  sale.orders ORD ON ORD.order_id = ITM.order_id
where PRO.category_id IN (6)

)
SELECT A.brand_name, B.category_name, AVG(C.list_price) AVG_PRICE
FROM production.brands A, production.categories B, production.products C
WHERE A.brand_id = C.category_id
AND B.category_id = C.category_id
GROUP BY A.brand_name, B.category_name
ORDER BY
		3 DESC

----------------------------------------------------

SELECT TOP 1 C.store_id, C.store_name,COUNT(B.quantity) TOTAL_PRODUCT
FROM sales.orders A, sales.order_items B, sales.stores C
WHERE A.order_id = B.order_id
AND   A.store_id = C.store_id
AND A.order_date BETWEEN '2016-01-01' AND '2016-12-31'
GROUP BY C.store_id, C.store_name
ORDER BY TOTAL_PRODUCT DESC

-------
SELECT TOP 1 C.store_id, C.store_name,SUM(B.quantity) TOTAL_PRODUCT
FROM sales.orders A, sales.order_items B, sales.stores C
WHERE A.order_id = B.order_id
AND   A.store_id = C.store_id
AND A.order_date BETWEEN '2016-01-01' AND '2016-12-31'
GROUP BY C.store_id, C.store_name
ORDER BY TOTAL_PRODUCT DESC
------------------------------------
SELECT TOP 1 C.store_id, C.store_name,SUM(B.quantity) TOTAL_PRODUCT
FROM sales.orders A, sales.order_items B, sales.stores C
WHERE A.order_id = B.order_id
AND   A.store_id = C.store_id
AND A.order_date LIKE '%2016%'
GROUP BY C.store_id, C.store_name
ORDER BY TOTAL_PRODUCT DESC
---------------------------------------




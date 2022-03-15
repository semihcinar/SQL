WITH T1 AS
(
SELECT A.city, COUNT (DISTINCT C.product_id) AS cnt_dif_prod
FROM sale.customer A, SALE.orders B, sale.order_item C
WHERE A.customer_id = B.customer_id
AND B.order_id = C.order_id
GROUP BY A.city
), T2 AS
(
SELECT T1.*
FROM T1 , sale.customer A
WHERE T1.city= a.city
AND A.state = 'CO'
)
SELECT DISTINCT  *
FROM T2
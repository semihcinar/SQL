SELECT        TOP (100) order_id, AVG(list_price * quantity * 1 - discount) AS Expr1
FROM            sale.order_item
GROUP BY order_id
HAVING        (AVG(list_price * quantity * 1 - discount) >= 2000)
ORDER BY order_id
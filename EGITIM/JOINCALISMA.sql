select p.product_name, p.list_price,o.list_price,o.quantity,OI.order_date,

(
SELECT        product.product.product_name, DATEPART(month, sale.orders.order_date) AS Expr1, YEAR(sale.orders.order_date) AS YIL, SUM(product.product.list_price) AS toplam
FROM            sale.order_item INNER JOIN
                         sale.orders ON sale.order_item.order_id = sale.orders.order_id INNER JOIN
                         product.product ON sale.order_item.product_id = product.product.product_id
GROUP BY product.product.product_name, DATEPART(month, sale.orders.order_date), YEAR(sale.orders.order_date), product.product.list_price
ORDER BY toplam DESC
)


from product.product P
JOIN [sale].[order_item] O ON p.product_id = O.product_id
JOIN [sale].[orders] OI ON O.order_id = OI.order_id



SELECT        TOP (100) sale.customer.customer_id, sale.customer.first_name, 
						sale.customer.last_name, product.product.product_id


FROM            sale.customer INNER JOIN
                         sale.orders ON sale.customer.customer_id = sale.orders.customer_id INNER JOIN
                         sale.order_item ON sale.orders.order_id = sale.order_item.order_id INNER JOIN
                         product.product ON sale.order_item.product_id = product.product.product_id


WHERE        (product.product.product_id = 6)

select product_id, product_name from product.product
where product_id IN (

SELECT  product.product.product_id
FROM     product.product INNER JOIN
                  sale.order_item ON product.product.product_id = sale.order_item.product_id INNER JOIN
                  sale.orders ON sale.order_item.order_id = sale.orders.order_id
WHERE  (2019 = YEAR(sale.orders.order_date))


EXCEPT


SELECT  product.product.product_id
FROM     product.product INNER JOIN
                  sale.order_item ON product.product.product_id = sale.order_item.product_id INNER JOIN
                  sale.orders ON sale.order_item.order_id = sale.orders.order_id
WHERE  (2018 = YEAR(sale.orders.order_date))


except



SELECT  product.product.product_id
FROM     product.product INNER JOIN
                  sale.order_item ON product.product.product_id = sale.order_item.product_id INNER JOIN
                  sale.orders ON sale.order_item.order_id = sale.orders.order_id
WHERE  (2020 = YEAR(sale.orders.order_date))

)
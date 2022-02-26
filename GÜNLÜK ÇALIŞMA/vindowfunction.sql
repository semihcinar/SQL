use SampleRetail
select PRO.product_name, ORD.order_id, ORD.quantity from product.product PRO
inner join sale.order_item ORD on PRO.product_id = ORD.product_id



select DISTINCT order_id, sum(quantity) over (partition by order_id) from sale.order_item

select DISTINCT order_id, sum(list_price) over (partition by order_id), 
count (list_price) over (partition by order_id)
from sale.order_item


select order_id, count (list_price) over (partition by order_id) from sale.order_item


use sampleRetail

select *, sum(list_price) over (partition by product_id ) 
from sale.orders
order by 1


select DISTINCT order_id, sum(list_price) over (partition by order_id)
		,AVG(list_price)over (partition by order_id)
from sale.order_item
order by 1
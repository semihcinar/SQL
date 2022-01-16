select o.order_date, shipped_date, OI.quantity, OI.list_price, * 

from sale.customer C
join sale.orders O on C.customer_id = O.customer_id
join sale.order_item OI on OI.order_id = O.order_id
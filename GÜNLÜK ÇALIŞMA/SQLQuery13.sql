select DISTINCT order_date, count(order_id)over(partition by order_date) from sale.orders

select  *, max(list_price) over(partition by product_id) from sale.order_item
group by product_id
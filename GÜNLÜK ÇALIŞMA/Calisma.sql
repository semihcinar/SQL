use SampleRetail

select *, (select avg(list_price) from sale.order_item) as avr from product.product


select top (5 )* 
from  sale.order_item

select  order_id,order_date from sale.orders
where order_date IN(


select top (5) order_date
from sale.orders
order by order_date desc
)


select * from sale.customer
where first_name ='Elanor'



select * from product.product
where model_year = 2020 
	AND list_price > (

SELECT        max( list_price)
FROM            product.product
WHERE        (category_id = 16) AND (model_year = 2020)


)
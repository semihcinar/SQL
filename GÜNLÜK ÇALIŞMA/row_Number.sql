use SampleRetail

select product_id,product_name, sum(list_price) over (partition by product_id) from sale.orders


select distinct order_id, sum(quantity) over (partition by order_id) satýlansayisi
, count(quantity) over (partition by order_id) satýlanislemsayisi 
, sum(list_price) over (partition by order_id) ucrettutari 


from sale.order_item



select ROW_NUMBER () over (order by  list_price ) as number ,  list_price , discount   from sale.order_item 



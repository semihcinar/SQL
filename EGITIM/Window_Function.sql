select order_id, quantity from sale.order_item
select DISTINCT order_id, sum(quantity)over(partition by order_id) from sale.order_item

select DISTINCT order_id, sum(quantity)over(order by order_id) from sale.order_item


--------------------------------------------------------------------------------------------------------------------------------
--S�PAR��LER�N ���NDE TOPLAN KA� �R�N OLDU�UNU G�STER�R
select DISTINCT order_id, count(*)over(partition by order_id) from sale.order_item  
--------------------------------------------------------------------------------------------------------------------------------
--row number
--M��TER�LERE SIRA NUMARASI VEREL�M

SELECT first_name,last_name, customer_id, ROW_NUMBER() over(order by first_name) as liste FROM customer 
where first_name like  'b%'
--------------------------------------------------------------------------------------------------------------------------------
--RANK

select order_id, RANK()over(order by order_id) ransk from sale.order_item   
select  order_id, DENSE_RANK()over(order by order_id) ransk from sale.order_item   
--------------------------------------------------------------------------------------------------------------------------------

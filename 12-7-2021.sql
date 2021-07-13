select top 10 * from production.products AS a
inner join production.categories AS b
on a.category_id =b.category_id



SELECT TOP 20 A.product_id, product_name, B.category_name
FROM production.products AS A
INNER JOIN production.categories AS B
ON A.category_id = B.category_id


SELECT *
from sales.staffs as a
inner join sales.stores as b
on a.store_id = b.store_id


select b.first_name, b.last_name, a.store_name 
from sales .stores A, sales.staffs B
where a.store_id  = b.store_id


select a.product_id,a.product_name, B.category_name
from production.products A
LEFT JOIN production.categories AS B
ON A.category_id = b.category_id


select *
from production.products


select A.product_id, A.product_name, b.category_name
from production.products A, production.categories B
where A.category_id = B.category_id 

select *
from production.stocks A , production.products B
where A.product_id > 310

select *
from production.products A
LEFT JOIN production.stocks B
ON A.product_id = B.product_id
Where A.product_id > 310 




select a.product_id, product_name, store_id, quantity
from production.stocks as b
right join production.products as a
on a.product_id = b.product_id
where a.product_id > 310

----------------------------------
select *
from sales.orders A
RIGHT JOIN sales.staffs B
on B.staff_id = A.staff_id

select * 
from sales.orders A
RIGHT JOIN sales.staffs B
ON a.staff_id = B.staff_id
---------------------------------

select A.product_id, B.product_id, B.quantity, A.product_id, A.list_price, A.order_id
from  sales.order_items A
FULL OUTER JOIN production.stocks B
ON A.product_id= B.product_id
order by A.product_id

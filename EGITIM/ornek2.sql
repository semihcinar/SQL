SELECT       product.product.product_name, product.product.brand_id, product.brand.brand_name
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id



select brand_name from product.brand a, product.product b
where a.brand_id= b.brand_id
and b.model_year= 2018

intersect

select brand_name  from product.brand a, product.product b
where a.brand_id= b.brand_id
and b.model_year= 2019


select DISTINCT A.brand_id,B.brand_name from (select A.brand_id, B.brand_name
from product.product A 
join product.brand B on A.brand_id = B.brand_id
where A.model_year = 2018) A join (select A.brand_id, B.brand_name
from product.product A join product.brand B
on A.brand_id = B.brand_id
where A.model_year = 2019) B
on A.brand_id = B.brand_id

select first_name, last_name from sale.customer
where customer_id IN (


		select customer_id from sale.orders
		where order_date BETWEEN '20180101' AND '20181231'
	INTERSECT
		select customer_id from sale.orders
		where order_date BETWEEN '20190101' AND '20191231'
	INTERSECT
		select customer_id from sale.orders
		where order_date BETWEEN '20200101' AND '20201231'

)


SELECT C.first_name, C.last_name, C.customer_id
FROM sale.customer C, sale.orders O
WHERE C.customer_id = O.customer_id AND YEAR(order_date)= '2018'

INTERSECT
SELECT C.first_name, C.last_name, C.customer_id
FROM sale.customer C, sale.orders O
WHERE C.customer_id = O.customer_id AND YEAR(order_date)= '2019'
INTERSECT
SELECT C.first_name, C.last_name, C.customer_id
FROM sale.customer C, sale.orders O
WHERE C.customer_id = O.customer_id AND YEAR(order_date)= '2020'
ORDER BY last_name


select  a.brand_id,brand_name
from product.brand a, product.product b
where a.brand_id= b.brand_id
and b.model_year= 2018
EXCEPT
select  a.brand_id, brand_name
from product.brand a, product.product b
where a.brand_id= b.brand_id
and b.model_year= 2019

select * from product.brand
where brand_id IN (


	select brand_id from product.product where model_year ='2018'
	EXCEPT
	select brand_id from product.product where model_year ='2019'

	)

	SET STATISTICS TIME ON
SET STATISTICS IO ON 

	select B.product_id,B.product_name
from product.brand A, product.product B,sale.order_item C,sale.orders D
WHERE A.brand_id=B.brand_id
AND B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2019
EXCEPT
select B.product_id,B.product_name
from product.brand A, product.product B,sale.order_item C,sale.orders D
WHERE A.brand_id=B.brand_id
AND B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2020
EXCEPT
select B.product_id,B.product_name
from product.brand A, product.product B,sale.order_item C,sale.orders D
WHERE A.brand_id=B.brand_id
AND B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2018


	SET STATISTICS TIME ON
SET STATISTICS IO ON 
select B.product_id,B.product_name
from product.product B,sale.order_item C,sale.orders D
WHERE B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2019
EXCEPT
select B.product_id,B.product_name
from product.product B,sale.order_item C,sale.orders D
WHERE B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2020
EXCEPT
select B.product_id,B.product_name
from product.product B,sale.order_item C,sale.orders D
WHERE B.product_id=C.product_id
AND C.order_id=D.order_id
AND YEAR(D.order_date)= 2018



select product.product_id ,product.product_name from product.product
where product.product_id IN (

								select product_id from sale.orders ORD, sale.order_item ITM
								where ORD.order_id = ITM.order_id AND ORD.order_date BETWEEN '2019-01-01' AND '2019-12-31'
								EXCEPT
								select product_id from sale.orders ORD, sale.order_item ITM
								where ORD.order_id = ITM.order_id AND ORD.order_date NOT BETWEEN '2019-01-01' AND '2019-12-31'
							)


select * from product.product
where product.product_id= '30'
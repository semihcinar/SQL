

select * from sale.customer


SELECT last_name FROM [sale].[customer]
WHERE City= 'Charlotte'
UNION
SELECT last_name  FROM [sale].[customer]
WHERE City= 'Aurora'

select last_name
from sale.customer
WHERE city='Aurora'
union
select customer.last_name
from sale.customer
WHERE customer.city='Charlotte'



select count(city) from sale.customer
--WHERE customer.city='Charlotte'
WHERE City= 'Aurora'

select 49+79





select first_name, last_name from sale.customer
WHERE customer.first_name='Thomas'
union
select first_name, last_name from sale.customer
WHERE customer.last_name='Thomas'



SELECT        TOP (100) product.product.product_id, product.product.product_name, product.product.brand_id, product.product.category_id, product.product.model_year, product.product.list_price, product.brand.brand_name, 
                         product.brand.brand_id AS Expr1
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id

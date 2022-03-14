ALTER function productsearch (@search varchar (50))
RETURNS TABLE
as 
RETURN
select * from product.product
where product.product_name like @search

select * from productsearch  ('DENA%')


select * 
from product.product
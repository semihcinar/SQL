select product.brand_id,
(select sum(list_price) )-(select AVG(list_price)) fark 
from product.product

--where product.product_id =15
group by product.brand_id


select *
from product.product
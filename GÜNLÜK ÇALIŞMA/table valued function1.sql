alter function jointable (@brand varchar(50))
RETURNS TABLE
as 
RETURN

SELECT     product.product.product_name, product.product.brand_id, product.product.category_id, product.product.model_year, product.product.list_price, product.brand.brand_name
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id
where product.brand.brand_name like @brand


select * from jointable ('%son%')

select * from 
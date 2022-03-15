create function ogren (@id int)
RETURNS TABLE
as
RETURN

select * from product.product 
where product.product_id =@id



select * from ogren (15)
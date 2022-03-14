create function listproductBrand (@Brandno int)
RETURNS TABLE
as
RETURN

select * from product.product 
where brand_id = @brandno



select * from listproductBrand (12)
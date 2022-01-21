CREATE FUNCTION dbo.URUNBUL(@product_id INT)
RETURNS varchar(100)
AS
BEGIN
declare @urunadi varchar (100)
set @urunadi = (SELECT product_name FROM product.product WHERE (product_id = @product_id))
RETURN @urunadi

END
use SampleRetail

--En çok satan ürünü bulma fonksiyonu

ALTER FUNCTION COKSATAN()
RETURNS INT
AS
BEGIN
DECLARE @product_id INT
SET @product_id = (SELECT a.product_id FROM 
					(SELECT top (1) product_id, SUM(quantity) AS toplam FROM sale.order_item GROUP BY product_id ORDER BY toplam DESC)a)
RETURN @product_id
END


select  dbo.COKSATAN()

CREATE FUNCTION dbo.URUNBUL(@product_id INT)
RETURNS varchar(100)
AS
BEGIN
declare @urunadi varchar (100)
set @urunadi = (SELECT product_name FROM product.product WHERE (product_id = @product_id))
RETURN @urunadi

END
use SampleRetail


create function kdvlihesapla (@fiyat float) 
RETURNS float
AS
BEGIN
declare @kdv float = @fiyat * 1.18
return @kdv
END




select *,dbo.kdvhesapla (list_price) kdv, dbo.kdvlihesapla(list_price) kdvli from product.product 
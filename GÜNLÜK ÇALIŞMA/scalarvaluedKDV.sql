use SampleRetail

ALTER function kdvhesapla(@fiyat FLOAT) 
RETURNS VARCHAR(20)

as
BEGIN
DECLARE @ARTIKDV FLOAT = @fiyat * 0.18 
RETURN @ARTIKDV
END


SELECT DBO.kdvhesapla(200)

select *,DBO.kdvhesapla(list_price) from product.product 


ALTER function vergi (@FIYAT INT)
RETURNS varchar(20)

AS
BEGIN 

DECLARE @TOPLAMVERGI INT = @FIYAT *  (1.18 + 0.15 + 1.20)
RETURN @TOPLAMVERGI
END
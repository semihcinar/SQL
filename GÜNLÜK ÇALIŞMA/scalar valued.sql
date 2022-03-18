select * from product.product


alter function maliyet(@birimfiyat int)
RETURNS nvarchar (20)
as
begin

			DECLARE @sonuc int = @birimfiyat * 1.18
			return @sonuc

end


select dbo.maliyet (10)



Create Function Fn_ToplamaYap(@sayi1 int, @sayi2 int)
Returns int
As
Begin
Declare @toplam int
Set @toplam = @sayi1+ @sayi2
return @toplam
End

SELECT dbo.Fn_ToplamaYap (1,2)
Select dbo.Fn_ToplamaYap(4,7),


ALTER function vergi (@FIYAT INT)
RETURNS varchar(20)

AS
BEGIN 

DECLARE @TOPLAMVERGI INT = @FIYAT *  (1.18 + 0.15 + 1.20)
RETURN @TOPLAMVERGI
END

SELECT DBO.vergi (product.list_price)


select product.product_name, product.list_price, dbo.vergi(list_price) from product.product 
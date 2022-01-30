--Sample Retail veritaban�nda kullan�c�n�n girdi�i isimle veritaban�nda e�le�en m��teri isimlerinin say�s�n� d�nd�ren bir fonksiyon yaz�lm��t�r.

CREATE FUNCTION fn_customer (@first_name varchar(10))
RETURNS int
AS
Begin
     Declare @sayi int
     IF @first_name is null
        Select @sayi = (Select count(*) from sale.customer)
     ELSE
        Select @sayi = (Select count(*) from sale.customer where sale.customer.first_name=@first_name)
     RETURN @sayi
End
Go

--Olu�turulan �rnek fonksiyona Programmability-> Functions-> Scalar-valued Functions yoluyla ula��labilir. Fonksiyonu �al��t�rmak i�in a�a��daki �rnek kod �al��t�r�lmal�d�r:

Select dbo.fn_customer('Diane') as Sayi



select * from sale.customer
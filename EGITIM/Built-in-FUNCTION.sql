--Sample Retail veritabanýnda kullanýcýnýn girdiði isimle veritabanýnda eþleþen müþteri isimlerinin sayýsýný döndüren bir fonksiyon yazýlmýþtýr.

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

--Oluþturulan örnek fonksiyona Programmability-> Functions-> Scalar-valued Functions yoluyla ulaþýlabilir. Fonksiyonu çalýþtýrmak için aþaðýdaki örnek kod çalýþtýrýlmalýdýr:

Select dbo.fn_customer('Diane') as Sayi



select * from sale.customer
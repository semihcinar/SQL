--Sample Retail veritabanında kullanıcının girdiği isimle veritabanında eşleşen müşteri isimlerinin sayısını döndüren bir fonksiyon yazılmıştır.

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

--Oluşturulan örnek fonksiyona Programmability-> Functions-> Scalar-valued Functions yoluyla ulaşılabilir. Fonksiyonu çalıştırmak için aşağıdaki örnek kod çalıştırılmalıdır:

Select dbo.fn_customer('Diane') as Sayi



select * from sale.customer
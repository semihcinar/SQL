use SampleRetail


select A.product_name, SUM(A.list_price)
from
(
select * from product.product
)A

group by A.product_name



alter function liste (@search varchar (50)) 
RETURNS TABLE
AS
return
select product.product_name, SUM(list_price) as list_price from product.product 
WHERE product.product_name like @search
group by product.product_name


select * from liste('%SP1800BL%')

select * from product.product





select *, list_price * 0.18 as kdv, list_price * 1.18 as kdvli 
from product.product

create function kdvli (@deger float)
RETURNS float
as
BEGIN
declare @kdvtoplam float = @deger * 1.18 
return @kdvtoplam
END

select *, dbo.kdv(list_price), dbo.kdvli(list_price) 
from product.product


create function gunhesapla(@tarih1 date, @tarih2 date)
RETURNS int
as
BEGIN
declare @gun int = datediff(day,@tarih1, @tarih2)
return @gun

END



select *, dbo.gunhesapla(order_date,shipped_date) farkgun 
from sale.orders 
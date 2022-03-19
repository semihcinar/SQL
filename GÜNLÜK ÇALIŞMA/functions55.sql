alter function fn_YAS (@yas date) RETURNS int

as
BEGIN
declare @yashesap int = datediff(YEAR, @yas, getdate())
return @yashesap
END

SELECT        TOP (100) ID, WORKERCODE, WORKERNAME, GENDER, BIRTHDATE, TCNO, WORKERBARCODE, dbo.fn_YAS(BIRTHDATE)
FROM            WORKERS

create function emvanter (@fiyat float, @miktar int) RETURNS float

as

BEGIN
	declare @maliyet float = @fiyat * @miktar
	return @maliyet
END

use SampleRetail

select *, dbo.emvanter(list_price,quantity) as maliyet from sale.order_item


alter function searchproduct1 (@search varchar(30))
RETURNS table
as
return
select * from product.product
where product.product_name like @search


select * from searchproduct1 ('%sony%')
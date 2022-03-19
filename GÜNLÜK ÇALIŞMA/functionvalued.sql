create function urunsorgula(@kelime varchar(20))
RETURNS TABLE
as
return

select * 
from product.product 
where product_name like @kelime



select * from urunsorgula ('%Door%')




create function kdvlifiyat (@fiyat float)
RETURNS float
as
begin
declare @kdv float = @fiyat * 1.18 
return @kdv
end

select dbo.kdvh (100)


select *,dbo.kdvh(list_price), list_price + dbo.kdvh(list_price) as kdvlifiyat, dbo.kdvlifiyat(list_price) 
from product.product
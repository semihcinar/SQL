--use SampleRetail

select product_name, list_price, product_id, C.category_name, B.brand_name
from product.product P
inner join  product.category C on P.category_id = C.category_id
inner join product.brand B on P.brand_id = B.brand_id


select product_name, list_price, c.category_name,B.brand_name from product.product P
inner join product.category C on P.category_id = C.category_id
inner join product.brand B on P.brand_id = B.brand_id



------ join 
set statistics time on
set statistics io on

select p.product_name, p.list_price 
,s.quantity,s.list_price
,sum(s.list_price), sum(s.quantity), avg(s.list_price), avg(quantity), min(s.list_price), max(s.list_price)
from product.product P
inner join sale.order_item s on p.product_id = s.product_id
group by  p.product_name, p.list_price, s.quantity, s.list_price 

---sub query
set statistics time on
set statistics io on


select P.product_name, P.list_price, p.product_id,


			(select sum(quantity) from sale.order_item where product_id = P.product_id) as toplamQauntity,
			(select avg(quantity) from sale.order_item where product_id = P.product_id) as OrtalamaQauntity,
			(select sum (list_price) from sale.order_item where product_id = P.product_id) as toplamListPrice,
			(select avg (list_price) from sale.order_item where product_id = P.product_id) as OrtalamaListPrice

from product.product P


-- function 
-- fonksiyonlar satýr satýr çalýþýr.
set statistics time on
set statistics io on


CREATE FUNCTION DBO.GET_toplamlistefiyat (@product_id AS VARCHAR(30))
RETURNS FLOAT
AS
begin
declare @result as float
select @result = SUM(list_price) from sale.order_item where product_id=@product_id
return @result
end

CREATE FUNCTION DBO.GET_Ortalamalistefiyat (@product_id AS VARCHAR(30))
RETURNS FLOAT
AS
begin
declare @result as float
select @result = AVG(list_price) from sale.order_item where product_id=@product_id
return @result
end


SELECT DBO.GET_toplamlistefiyat('1')


SELECT p.product_name, p.list_price 
		,DBO.GET_toplamlistefiyat(p.product_id)
		,DBO.GET_Ortalamalistefiyat(p.product_id)
from product.product p



--table valued function


CREATE FUNCTION DBO.GET_TOPLAMINFO (@product_id varchar(30))
RETURNS 
TABLE
AS
RETURN 
(
SELECT SUM(list_price) as toplamtutar,
	   avg(list_price) as Ortalamafiyat,
	   SUM(quantity) as toplamurun,
	   AVG (quantity) as ortalamaurun


from sale.order_item
)


select * from DBO.GET_TOPLAMINFO(1)



select p.product_name, p.list_price 
,s.Ortalamafiyat,s.ortalamaurun,s.toplamtutar,s.toplamurun
from product.product p
cross apply DBO.GET_TOPLAMINFO(p.product_id) as s



-- INDEX yapma

create INDEX IX2 on sale.order_item(product_id)
INCLUDE (list_price, quantity)
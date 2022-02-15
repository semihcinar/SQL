select * INTO #product
from product.product


select  product_name, list_price, model_year into #product1
from product.product

select product_name, SUM(list_price) toplam, AVG(list_price) ortalama, MIN(list_price) minimum, MAX(list_price) maksimum 
from #product1
group by product_name


select product_name, model_year, list_price from #product
group by product_name , model_year, list_price 
order by 3 desc


alter table #product drop column category_id



select p.product_name, p.list_price 
into #data
from product.product p



select * from #data

truncate table #data

insert into #data (product_name, list_price) values ('hp','25.20')
insert into #data (product_name, list_price) values ('dell','25.20')
insert into #data (product_name, list_price) values ('lenovo','25.20')


update #data
set list_price = 30
where product_name ='sony'


delete from #data where product_name = 'hp'
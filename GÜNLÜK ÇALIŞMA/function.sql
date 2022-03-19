select distinct model_year,  sum(list_price) OVER(partition by model_year) as toplam
from product.product



select a.product_name, sum(a.list_price) toplam, avg(a.list_price) ortalama, max(a.list_price) enyüksek, min(a.list_price) enaz

from

(
select *
from product.product
)a

group by a.product_name


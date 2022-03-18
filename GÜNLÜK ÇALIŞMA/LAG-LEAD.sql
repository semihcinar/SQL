WITH T1 AS (
			select DISTINCT product_id, discount, 
			sum(quantity) over (partition by product_id order by discount) cnt_quantity
			from sale.order_item
			), 

T2 AS	(
		SELECT product_id,  discount, cnt_quantity, lead(cnt_quantity,1) OVER (PARTITION BY product_id order by discount) higher_discuont_quantity
		, LEAD(cnt_quantity, 1) OVER(PARTITION BY product_id order by discount) - cnt_quantity as diff
		FROM T1
		) 

SELECT DISTINCT product_id, 
		CASE WHEN SUM(diff) over (PARTITION BY product_id) > 0 THEN 'positive'
				WHEN SUM(diff) over (PARTITION BY product_id) < 0 THEN 'negative'
				ELSE 'notr' END AS discount_effect
FROM T2



select *,
lead(list_price) OVER (partition by product_id order by list_price) as ilk
from sale.order_item




select DISTINCT product_id, discount, sum(quantity) OVER(partition by product_id, discount) as TQuan 

from sale.order_item


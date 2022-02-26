SELECT distinct order_id,  AVG(list_price * quantity)  over (partition by order_id) AS toplam
FROM            sale.order_item

GROUP BY order_id, list_price, list_price * quantity

HAVING AVG(list_price * quantity) > 2000

order by 2 desc




select order_id,  AVG(quantity * list_price )* (1-discount) toplamfiyat from sale.order_item
group by order_id, list_price, discount
having AVG(quantity * list_price )* (1-discount) > 2000
order by 2 desc 



select A.order_id, A.quantity, A.list_price, B.product_name 
from sale.order_item A
inner join product.product B ON a.product_id = B.product_id
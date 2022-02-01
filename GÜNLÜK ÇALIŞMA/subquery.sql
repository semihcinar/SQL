SELECT prd.product_name,prd.list_price, cat.category_name FROM product.product prd
   INNER JOIN product.category cat on cat.category_id = prd.category_id 




   select b.brand_name from product.product p
   inner join product.brand b on p.brand_id = b.brand_id 



   select *, 
			(select SUM(s.quantity) from product.stock s where p.product_id = s.product_id) as toplam,
			(select AVG(sa.list_price) from sale.order_item sa where p.product_id = sa.product_id) as toplamfiyat
   
     
   from product.product p
  -- group by p.list_price
--TABLODA YER ALAN BÝR STUN ÝÇÝNE AYNI BÝLGÝYÝ YAZMAK ÝÇÝN update KOMUTUNU KUYLLANIYORUZ. TABLO ADI (houses_ist2) STUN ADI (il) ÝL ALANINA GÝRÝLEN VERÝ (ÝSTANBUL) 


UPDATE  customer
SET phone = NULL
WHERE        (phone = N'')




SELECT       customer_id, first_name, last_name, street, city, state, zip, phone, email
FROM            customer
WHERE        (phone = N'')











UPDATE  sale.order_item
SET list_price ='4'
where product_id IN (


						SELECT  product_id
						FROM            sale.order_item


					);











UPDATE product.product
SET list_price ='59'
where product_name like '%COSORI CO108%' AND product.brand_id=1 AND product.category_id=2;










SELECT  product_id
FROM            sale.order_item















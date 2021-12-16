--TABLODA YER ALAN BÝR STUN ÝÇÝNE AYNI BÝLGÝYÝ YAZMAK ÝÇÝN update KOMUTUNU KUYLLANIYORUZ. TABLO ADI (houses_ist2) STUN ADI (il) ÝL ALANINA GÝRÝLEN VERÝ (ÝSTANBUL) 


UPDATE  product.product
SET list_price ='999'
where list_price IN (970,980,985,999) 






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



























Dene, Yanýl, Öðren


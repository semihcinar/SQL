alter function stockkontrol (@stokkontrol int)
RETURNS TABLE
as 
RETURN

SELECT        TOP (100) product.product.product_id, product.product.product_name, product.product.brand_id, product.product.category_id, product.product.model_year, product.product.list_price, product.stock.quantity
FROM            product.product INNER JOIN
                         product.stock ON product.product.product_id = product.stock.product_id

where product.stock.quantity < @stokkontrol


select * from stockkontrol (10) 
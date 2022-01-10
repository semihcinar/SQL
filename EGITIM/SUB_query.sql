set statistics IO ON

select * ,

(select sum(quantity) from product.stock S where p.product_id = S.product_id  ) as quantity,
(select max (quantity) from product.stock S where p.product_id = S.product_id ) as MaxQuantity,
(select min (quantity) from product.stock S where p.product_id = S.product_id ) as MinQuantity,
(select sum (list_price) from sale.order_item SI where p.product_id = SI.product_id ) as toplam


from product.product P
where P.product_id = 5
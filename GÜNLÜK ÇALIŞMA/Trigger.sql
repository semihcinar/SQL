-- TRIGGER

create trigger stoc1
on [product].[stock]
after insert
as 
BEGIN
DECLARE @product_id int
DECLARE @quantity int

select @product_id = product_id, @quantity =quantity from inserted 

update [dbo].[TriggerStok]
set [stock] = [stock] + @quantity where product_id = @product_id


END


select * from product.stock

update product.stock 
set quantity = 5
where product.stock.product_id = 1 AND product.stock.store_id = 1


(store_id, product_id,quantity)
			values(1,1,10)

CREATE PROCEDURE AZALANURUNLER
AS
BEGIN

					SELECT        product.product_name, product.stock.quantity
					FROM            product.stock INNER JOIN
											 product ON product.stock.product_id = product.product_id
					WHERE        (product.stock.quantity < 10)
					ORDER BY product.stock.quantity

END

EXEC AZALANURUNLER

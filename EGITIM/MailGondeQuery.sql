EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'Semihcinarcomtr',  
    @recipients = 'semihcinar@gmail.com',  



 @query = 'SELECT        TOP (100) product.product.product_id, product.product.product_name, product.product.brand_id, product.product.category_id, product.product.model_year, product.product.list_price, product.stock.quantity FROM product.product INNER JOIN  product.stock ON product.product.product_id = product.stock.product_id WHERE        (product.stock.quantity < 5)' ,  
 
 
 @subject = 'Work Order Count',  
    @attach_query_result_as_file = 1 ; 



	EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'ekspercin',  
    @recipients = 'semihcinar@gmail.com',  
    @query = 'SELECT  top(10)  * from product.product',  
    @attach_query_result_as_file = 1 ;  
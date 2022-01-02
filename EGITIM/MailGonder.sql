EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'SEMIHCINARMAIL',  
    @recipients = 'semihcinarmedya@gmail.com',  
 



    @query = 'SELECT COUNT(*) FROM AdventureWorks2012.Production.WorkOrder  
                  WHERE DueDate > ''2004-04-30''  
                  AND  DATEDIFF(dd, ''2004-04-30'', DueDate) < 2' ,  
    @subject = 'Work Order Count',  
    @attach_query_result_as_file = 1 ;









 
 @body = 'The stored procedure finished successfully.',  
    @subject = 'Automated Success Message',
	   	 
    @query = 'SELECT       store_id, product_id, quantity
				FROM            product.stock
				WHERE        (quantity < 5)'  ,

   @attach_query_result_as_file = 1   ; 
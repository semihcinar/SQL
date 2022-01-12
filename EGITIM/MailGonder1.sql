EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'Semihcinarcomtr',  
    @recipients = 'semihcinar@gmail.com',  
    @body = 'kontrol',  
    @subject = 'kontrol' ;  
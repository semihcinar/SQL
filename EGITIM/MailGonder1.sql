
declare @eposta varchar (70)
	set @eposta= (select eposta from eposta)

EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'Semihcinarcomtr',
    @recipients = @eposta,
    @subject = 'sql dersi ba�l�yor',
	@body = 'SQL otomatik eposta g�nderimi, SQL dersi ba�l�yor.';  








declare @id INT
Set @id = (Select id from eposta)

DECLARE @I AS INT=0
WHILE @I < 10
BEGIN


select eposta from eposta 


SET @I=@I+1

END

select * from eposta
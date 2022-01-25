--attach db

EXEC sp_detach_db 'Test', 'true'

EXEC sp_attach_db @dbname = N'Test2',
@filename1 = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\test.mdf',
@filename2 = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\test_log.ldf'
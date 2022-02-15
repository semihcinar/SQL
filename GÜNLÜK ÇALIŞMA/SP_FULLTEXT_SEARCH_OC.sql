ALTER PROC [dbo].[SEARCH](@STRINGID AS VARCHAR(1000))
AS
BEGIN
DECLARE @SQL AS NVARCHAR(MAX)=''
DECLARE @STR AS VARCHAR(100)
DECLARE @I AS INT=1
DECLARE CRS CURSOR FOR SELECT items FROM DBO.SPlitWithSeq(@STRINGID,'')
OPEN CRS
FETCH NEXT FROM CRS INTO @STR

WHILE @@FETCH_STATUS=0
BEGIN
       IF @I=1
       BEGIN
             SET @SQL='SELECT ID,FULLTEXT FROM BOOKS WHERE ID IN (SELECT BOOKID FROM BOOK_WORDS WHERE  WORD LIKE "'+@STR+'%"'
       END
       ELSE
       BEGIN
             SET @SQL=@SQL+' AND BOOKID IN (SELECT BOOKID FROM BOOK_WORDS WHERE WORD LIKE "'+@STR+'%")'
       END
       SET @I=@I+1
       FETCH NEXT FROM CRS INTO @STR
END
 SET @SQL=@SQL+')'
 CLOSE CRS
 DEALLOCATE CRS
 EXEC SP_EXECUTESQL     @SQL
 END
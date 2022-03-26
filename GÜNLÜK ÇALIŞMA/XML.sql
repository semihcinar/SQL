CREATE TABLE #xml ( STRXML varchar(max) )
 
DECLARE @URL VARCHAR(8000) 
 
SELECT @URL = 'http://www.tcmb.gov.tr/kurlar/today.xml'  
DECLARE @Response varchar(8000)
DECLARE @XML xml
DECLARE @Obj int 
DECLARE @Result int 
DECLARE @HTTPStatus int 
DECLARE @ErrorMsg varchar(MAX)

EXEC @Result = sp_OACreate 'MSXML2.XMLHttp', @Obj OUT 

EXEC @Result = sp_OAMethod @Obj, 'open', NULL, 'GET', @URL, false
 
EXEC @Result = sp_OAMethod @Obj, send, NULL, ''
 

INSERT #xml ( STRXML )
EXEC @Result = sp_OAGetProperty @Obj, 'responseXML.xml'--, @Response OUT 
 
select @XML=STRXML FROM #XML
 

DECLARE @hDoc AS INT 
EXEC sp_xml_preparedocument @hDoc OUTPUT, @XML 
SELECT * FROM OPENXML(@hDOC, 'Tarih_Date/Currency') 
WITH 
(Unit [varchar](50) 'Unit', 
Isim [varchar](100) 'Isim', 
CurrencyName [varchar](100) 'CurrencyName',
ForexBuying float 'ForexBuying', 
ForexSelling float 'ForexSelling', 
BanknoteBuying float 'BanknoteBuying', 
BanknoteSelling float 'BanknoteSelling' 
)


DROP TABLE #xml
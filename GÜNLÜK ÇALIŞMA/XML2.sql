--create table #xml (strXml varchar(max))
DECLARE @url as varchar(8000)
set @url='https://www.tcmb.gov.tr/kurlar/today.xml'

DECLARE @Response varchar (8000)
DECLARE @XML xml
DECLARE @Obj int
DECLARE @Result int
DECLARE @HTTPStatus int
DECLARE @ErrorMsg varchar(MAX)


--declare @OBJ as INT
--declare @RESULT as INT

exec @Result =SP_OACREATE 'MSXXML2.XMLHttp', @Obj OUT
EXEC @Result=SP_OAMethod @Obj, 'open', NULL, 'GET', @URL, false
exec @result =SP_OAMethod @obj, send, NULL, ''

insert #xml (strXml)
EXEC @Result = sp_OAGetProperty Obj, 'ResponseXML.xml' 
--exec @RESULT=SP_OAGetProperty @OBJ, 'responseXML.xml'
select * from #xml
select @XML =strXml FROM #XML



sp_configure 'show advanced options',1
reconfigure with override

sp_configure 'Ole Automation Procedures', 1
reconfigure with override
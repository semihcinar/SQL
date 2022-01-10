select report_date,report_date1  
from COVID



UPDATE COVID
	SET REPORT_DATE1 = CONVERT (DATE,REPORT_DATE)


UPDATE [dbo].[covid_son]
	SET REPORT_DATE1 = CONVERT (DATE,REPORT_DATE)




	UPDATE TABLOADI 
SET DATE_TARIH = CONVERT(DATE, DATE_)

,

select * from COVID



delete from [dbo].[COVID]
where REPORT_DATE1 > '2021-10-01'
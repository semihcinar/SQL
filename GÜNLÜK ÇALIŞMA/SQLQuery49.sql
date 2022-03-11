select*
from shipping_dimen


update shipping_dimen
set tarih = Ship_Date

update shipping_dimen
set tarih_new = CONVERT(date,tarih)


select * from combined_table

update combined_table
set Ship_Date = shipping_dimen.tarih
where combined_table.Ship_id IN
(

SELECT         shipping_dimen.Ship_id
FROM            shipping_dimen 
						 ) 

UPDATE [dbo].[combined_table]
SET  [Ship_Date]   = (

SELECT  [tarih_new]

FROM   [dbo].[shipping_dimen] a,[dbo].[combined_table] b
WHERE   a.[Ship_id] = b.[Ship_id]
) 


UPDATE Sales_Import
SET COM.Ship_date = SHP.Ship_Date
FROM
    combined_table COM
INNER JOIN
    shipping_dimen SHP
ON 
    SI.LeadID = RAN.LeadID;
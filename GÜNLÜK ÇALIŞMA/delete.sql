SELECT         first_name, last_name, street, city, state, zip, phone, first_name +'.'+last_name +'@'+'outlook.com' as email
FROM            customer_export





delete from customer
where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'


select count(*)
from customer
SELECT  RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as email, count( distinct customer_id) as id
FROM customer

select  SUBSTRING (first_name, 1, 10) as first_name, SUBSTRING (last_name, 1, 10) as last_name,  SUBSTRING (email, 1, 15) as emailk, customer_id, street, city, state, zip, phone, email
from customer
where SUBSTRING (first_name, 1, 1) != SUBSTRING (email, 1, 1) AND first_name not like'ý%'


UPDATE customer SET first_name = LOWER(first_name)



SELECT REPLACE (first_name, 'ý' , 'i')
from customer



select * from customer


group by RIGHT (email, LEN(email) - (CHARINDEX('@', email)))
order by 2 desc




UPDATE  customer
SET email ='outlook.com'
where customer_id IN (


select   RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as eposta, customer_id from customer


					);


select   RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as eposta,* from customer


where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'



select * from customer
where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'



select   RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as eposta, customer_id from customer
where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'


SELECT        customer_id, first_name, last_name, street, city, state, zip, phone, email, first_name +'.'+last_name +'@'+'outlook.com'
FROM            customer_export



SELECT  RIGHT (email, LEN(email) - (CHARINDEX('@', email))) , count( distinct customer_id)
FROM customer
group by RIGHT (email, LEN(email) - (CHARINDEX('@', email)))
order by 2 desc
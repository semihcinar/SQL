--REPLACE

SELECT REPLACE (phone, '8' , '1')
from customer_export

select * from customer_export 




SELECT REPLACE ('CHARACTER', 'RAC' , '/')


select count(*) from customer


delete from customer where customer_id IN (1881,
2037);


select count(*) from customer


delete  SUBSTRING (first_name, 1, 10) as first_name, SUBSTRING (last_name, 1, 10) as last_name,  SUBSTRING (email, 1, 15) as emailk, customer_id, street, city, state, zip, phone, email
from customer
where SUBSTRING (first_name, 1, 1) != SUBSTRING (email, 1, 1) AND first_name not like'ý%'
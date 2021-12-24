-- EPOSTA DÜZENLEME TEMÝZLEME
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- domain bilgileini gruplama

SELECT  RIGHT (email, LEN(email) - (CHARINDEX('@', email))) , count( distinct customer_id)
FROM customer
group by RIGHT (email, LEN(email) - (CHARINDEX('@', email)))
order by 2 desc

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- isim ile epostanýn birinci karakterinin eþitliði kontrol edilir.

select  SUBSTRING (first_name, 1, 10) as first_name, SUBSTRING (last_name, 1, 10) as last_name,  SUBSTRING (email, 1, 15) as emailk, customer_id, street, city, state, zip, phone, email
from customer
where SUBSTRING (first_name, 1, 1) != SUBSTRING (email, 1, 1) 

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--Bütün karakterleri küçük büyük yap
UPDATE customer SET first_name = LOWER(first_name)
UPDATE customer SET first_name = UPPER(first_name)

---------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT REPLACE (first_name, 'ý' , 'i')

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--Kyýtlarý güncelleme
UPDATE  customer
SET email ='outlook.com'
where customer_id IN (

						select   RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as eposta, customer_id from customer
					);
---------------------------------------------------------------------------------------------------------------------------------------------------------------

select   RIGHT (email, LEN(email) - (CHARINDEX('@', email))) as eposta,* from customer
where email like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'
---------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from customer
where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- eposta oluþturma Stunlarý yan yana yazdýrma
SELECT        customer_id, first_name, last_name, street, city, state, zip, phone, email, first_name +'.'+last_name +'@'+'outlook.com'
FROM            customer_export
---------------------------------------------------------------------------------------------------------------------------------------------------------------
--fazla kayýtlarý SÝLME

delete from customer
where email not like '%yahoo%' AND email not like '%gmail%' AND email not like '%hotmail%' AND email not like '%aol%' AND email not like '%msn%' AND email not like '%cox.net%' AND email not like '%outlook%'

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Bir CARACTER den sonra gelen karakterleri alýr

select substring (email, CHARINDEX ('@', email)+1, LEN(email)) as eposta,   count (substring (email, CHARINDEX ('@', email)+1, LEN(email))) as toplam
from customer
group by substring (email, CHARINDEX ('@', email)+1, LEN(email))



select substring (email, CHARINDEX ('.', email)+1, LEN(email)) as eposta
from customer
group by substring (email, CHARINDEX ('.', email)+1, LEN(email))

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
Select phone,  Count(*) 
From customer_export
Group By phone
Having Count (phone) > 1

UPDATE  customer
SET phone =''
WHERE phone like'%NULL%'




UPDATE  customer
SET phone ='NULL'

WHERE customer_id NOT IN
(
	SELECT MAX(customer_id)
		From customer
		Group By phone
);




DELETE FROM customer 
WHERE customer_id NOT IN
(
	SELECT MAX(customer_id)
		From customer
		Group By phone
);

Select customer_id, phone,   Count(*) 
From customer
Group By customer_id, phone
Having Count (customer_id) > 1



Select phone,   Count(*) 
From customer 
Group By customer_id, first_name, last_name, street, city, state, zip, phone, email
Having Count (customer_id) > 1






SELECT        customer_id, first_name, last_name, street, city, state, zip, phone, email
FROM            customer
select * from sales.customers
where last_name='Burks'




SELECT        TOP (100) customer_id, first_name, last_name, phone, email, street, city, state, zip_code
FROM            sales.customers
WHERE        (last_name = 'Burks')
--CASE EXPRESSION

-- Generate a new column containing what the mean of the values in the Order_Status column.

-- 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed


SELECT  order_status,
		CASE order_status WHEN 1 THEN 'Pending'
						  WHEN 2 THEN 'Processing'
						  WHEN 3 THEN 'Rejected'
						  WHEN 4 THEN 'Completed'
		END AS MEANOFSTATUS
FROM	sales.orders


-- Create a new column containing the labels of the customers' email service providers ( "Gmail", "Hotmail", "Yahoo" or "Other" )

SELECT	first_name, last_name, email, CASE
				WHEN email LIKE '%@gmail.%' THEN 'Gmail' 
				WHEN email LIKE '%@hotmail.%' THEN 'Hotmail'
				WHEN email LIKE '%@yahoo.%' THEN 'Yahoo'
				WHEN email IS NOT NULL THEN 'Other'
			ELSE NULL END email_service_provider
FROM	sales.customers;


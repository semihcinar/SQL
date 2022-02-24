


/* SET OPERATIONS - CASE EXPRESSION */


------ SET OPERATIONS ------

-- UNION / UNION ALL

--List Customer's last names in Charlotte and Aurora

-- Charlotte þehrindeki müþteriler ile Aurora þehrindeki müþterilerin soyisimlerini listeleyin


SELECT	first_name, last_name
FROM	sale.customer A
WHERE	city = 'Charlotte'
UNION ALL
SELECT	first_name, last_name
FROM	sale.customer
WHERE	city = 'Aurora';

select 49 + 79



SELECT	last_name
FROM	sale.customer
WHERE	city = 'Charlotte'
UNION
SELECT	last_name
FROM	sale.customer
WHERE	city = 'Aurora'
;


-- UNION ALL / UNION vs. IN 
-- IN logical operatörü kullanýlarak da yapýlabilir.

SELECT	last_name
FROM	sale.customer
WHERE	city IN ('Charlotte', 'Aurora')
;



--SOME IMPORTANT RULES OF UNION / UNION ALL

--Even if the contents of to be unified columns are different, the data type must be the same.

-- NOT: Sütunlarýn içeriði farklý da olsa veritipinin ayný olmasý yeterlidir.


SELECT	*
FROM	product.brand
UNION
SELECT	*
FROM	product.category


----------

SELECT	city, 'STATE' AS STATE
FROM	sale.store

UNION ALL

SELECT	state, 1 as city
FROM	sale.store


--The number of columns to be unified must be the same in both queries.

-- Her iki sorguda da ayný sayýda column olmasý lazým.

SELECT	city, 'Clean' AS street
FROM	sale.store

UNION ALL

SELECT	city
FROM	sale.store;






-----////////////


--Write a query that returns customers who name is ‘Thomas’ or surname is ‘Thomas’. (Don't use 'OR')



SELECT	first_name, last_name
FROM	sale.customer
WHERE	first_name = 'Thomas'
UNION ALL
SELECT	first_name, last_name
FROM	sale.customer
WHERE	last_name = 'Thomas'
;


select *
from
(
SELECT	first_name, last_name
FROM	sale.customer
) a,
(
SELECT	first_name, last_name
FROM	sale.customer
) b
where a.first_name=b.last_name


---------- INTERSECT

-- Write a query that returns brands that have products for both 2018 and 2019.


SELECT	*
FROM	product.brand
WHERE	brand_id IN (
					SELECT	brand_id
					FROM	product.product
					WHERE	model_year = 2018
					INTERSECT
					SELECT	brand_id
					FROM	product.product
					WHERE	model_year = 2020
					)
;

select * from product.product

---//////////////


-- Write a query that returns customers who have orders for both 2018, 2019, and 2020

SELECT	first_name, last_name
FROM	sale.customer
WHERE	customer_id IN (
						SELECT	customer_id
						FROM	sale.orders
						WHERE	order_date BETWEEN '2018-01-01' AND '2018-12-31'
						INTERSECT
						SELECT	customer_id
						FROM	sale.orders
						WHERE	order_date BETWEEN '2019-01-01' AND '2019-12-31'
						INTERSECT
						SELECT	customer_id
						FROM	sale.orders
						WHERE	order_date BETWEEN '2020-01-01' AND '2020-12-31'
						)
;




------ EXCEPT


-- Write a query that returns brands that have a 2018 model product but not a 2019 model product.

-- 2018 model bisiklet markalarýndan hangilerinin 2019 model bisikleti yoktur?
-- brand_id ve brand_name deðerlerini listeleyin


SELECT	*
FROM	product.brand
WHERE	brand_id IN (
					SELECT	brand_id
					FROM	product.product
					WHERE	model_year = 2018
					EXCEPT
					SELECT	brand_id
					FROM	product.product
					WHERE	model_year = 2019
					)
;



----////////////////


-- Write a query that returns only products ordered in 2019 (not ordered in other years).
--Sadece 2019 yýlýnda sipariþ verilen diðer yýllarda sipariþ verilmeyen ürünleri getiriniz.

SELECT	product_id, product_name
FROM	product.product
WHERE	product_id IN (
						SELECT	B.product_id
						FROM	sale.orders A, sale.order_item B
						WHERE	A.order_id = B.order_id AND
								A.order_date BETWEEN '2019-01-01' AND '2019-12-31'
						EXCEPT
						SELECT	B.product_id
						FROM	sale.orders A, sale.order_item B
						WHERE	A.order_id = B.order_id AND
								A.order_date not BETWEEN '2019-01-01' AND '2019-12-31'
						)

;




------ CASE EXPRESSION ------

------ Simple Case Expression -----

-- Generate a new column containing what the mean of the values in the Order_Status column.
--Order_Status isimli alandaki deðerlerin ne anlama geldiðini içeren yeni bir alan oluþturun.


-- 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed

SELECT	order_id, order_status,
		CASE order_status
			WHEN 1 THEN 'Pending'
			WHEN 2 THEN 'Processing'
			WHEN 3 THEN 'Rejected'
			WHEN 4 THEN 'Completed'
		END order_status_desc
FROM	sale.orders
;



---//////////


-- Add a column to the sales.staffs table containing the store names of the employees.
--Staff tablosuna çalýþanlarýn maðaza isimlerini ekleyin.


SELECT	first_name, last_name, store_id,
		CASE store_id
			WHEN 1 THEN 'Davi techno Retail'
			WHEN 2 THEN 'The BFLO Store'
			ELSE 'Burkes Outlet'
		END Store_name
FROM	sale.staff
;



select * from sale.store

------ Searched Case Expression -----



-- Generate a new column containing what the mean of the values in the Order_Status column. (use searched case ex.)
-- 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed

--Order_Status isimli alandaki deðerlerin ne anlama geldiðini içeren yeni bir alan oluþturun.





SELECT	order_id, order_status, 
		CASE
			WHEN order_status = 1 THEN 'Pending'
			WHEN order_status = 2 THEN 'Processing'
			WHEN order_status = 3 THEN 'Rejected'
			WHEN order_status = 4 THEN 'Completed'
		END Order_Status_Text
FROM	sale.orders
;



-- ////////////

-- Create a new column containing the labels of the customers' email service providers ( "Gmail", "Hotmail", "Yahoo" or "Other" )
--Müþterilir e-mail adreslerindeki servis saðlayýcýlarýný yeni bir sütun oluþturarak belirtiniz.


SELECT	first_name, last_name, email, CASE
				WHEN email LIKE '%@gmail.%' THEN 'Gmail' 
				WHEN email LIKE '%@hotmail.%' THEN 'Hotmail'
				WHEN email LIKE '%@yahoo.%' THEN 'Yahoo'
				WHEN email IS NOT NULL THEN 'Other'
			ELSE NULL END email_service_provider
FROM	sale.customer;




--------///////



-- If you have extra time you can ask following question.

-- List customers who ordered products in the computer accessories, speakers, and mp4 player categories in the same order.
-- Ayný sipariþte hem mp4 player, hem Computer Accessories hem de Speakers kategorilerinde ürün sipariþ veren müþterileri bulunuz.




SELECT	A.first_name, A.last_name
FROM	sale.customer A, sale.orders B
WHERE	A.customer_id = B.customer_id AND
		B.order_id IN	(
						SELECT	A.order_id
						FROM	sale.order_item A, product.product B
						WHERE	A.product_id = B.product_id AND
								B.category_id = (SELECT	category_id
												FROM	product.category
												WHERE	category_name = 'Computer Accessories')
						INTERSECT
						SELECT	A.order_id
						FROM	sale.order_item A, product.product B
						WHERE	A.product_id = B.product_id AND
								B.category_id = (SELECT	category_id
												FROM	product.category
												WHERE	category_name = 'Speakers')
						INTERSECT
						SELECT	A.order_id
						FROM	sale.order_item A, product.product B
						WHERE	A.product_id = B.product_id AND
								B.category_id = (SELECT	category_id
												FROM	product.category
												WHERE	category_name = 'mp4 player')
						)

						order by 1

/*
Question: Create a new column that contains labels of the shipping speed of products.

If the product has not been shipped yet, it will be marked as "Not Shipped",
If the product was shipped on the day of order, it will be labeled as "Fast".
If the product is shipped no later than two days after the order day, it will be labeled as "Normal"
If the product was shipped three or more days after the day of order, it will be labeled as "Slow"
*/


SELECT	*,
		CASE WHEN shipped_date IS NULL THEN 'Not Shipped'
			 WHEN order_date = shipped_date THEN 'Fast' -- DATEDIFF (DAY, ORDER_DATE, SHIPPED_DATE) = 0
			 WHEN DATEDIFF (DAY, order_date, shipped_date) BETWEEN 1 AND 2 THEN 'Normal'
			 ELSE 'Slow'
		END AS ORDER_LABEL,
		DATEDIFF (DAY, ORDER_DATE, shipped_date) datedif
FROM	sale.orders
order by datedif



----Write a query that returns the number distributions of the orders in the previous query result, according to the days of the week.
--Yukarýdaki sipariþlerin haftanýn günlerine göre daðýlýmýný hesaplayýnýz.



SELECT	SUM(CASE WHEN DATENAME (DW, order_date) = 'Monday' THEN 1 ELSE 0 END) AS Monday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Tuesday' THEN 1 ELSE 0 END) AS Tuesday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Wednesday' THEN 1 ELSE 0 END) AS Wednesday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Thursday' THEN 1 ELSE 0 END) AS Thursday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Friday' THEN 1 ELSE 0 END) AS Friday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Saturday' THEN 1 ELSE 0 END) AS Saturday,
		SUM(CASE WHEN DATENAME (DW, order_date) = 'Sunday' THEN 1 ELSE 0 END) AS Sunday
FROM	sale.orders
WHERE	DATEDIFF(DAY, order_date, shipped_date) > 0




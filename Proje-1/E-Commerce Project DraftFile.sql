

--DAwSQL Session -8 

--E-Commerce Project Solution



--1. Join all the tables and create a new table called combined_table. (market_fact, cust_dimen, orders_dimen, prod_dimen, shipping_dimen)

select * 
from cust_dimen A, market_fact B, orders_dimen C, prod_dimen D, shipping_dimen E
where b.Cust_id = a.Cust_id
AND b.Ord_id  = c.Ord_id
AND b.Prod_id = d.Prod_id
AND b.Ship_id = e.Ship_id





--///////////////////////


--2. Find the top 3 customers who have the maximum count of orders.


SELECT        TOP (5) A.Customer_Name, A.Cust_id, B.Cust_id AS Expr1, SUM(B.Order_Quantity) AS Toplam, A.Region
FROM            cust_dimen AS A INNER JOIN
                         market_fact AS B ON A.Cust_id = B.Cust_id INNER JOIN
                         orders_dimen AS C ON B.Ord_id = C.Ord_id INNER JOIN
                         prod_dimen AS D ON B.Prod_id = D.Prod_id INNER JOIN
                         shipping_dimen AS E ON B.Ship_id = E.Ship_id
GROUP BY A.Customer_Name, A.Cust_id, B.Cust_id, A.Region
ORDER BY Toplam DESC


--/////////////////////////////////



--3.Create a new column at combined_table as DaysTakenForDelivery that contains the date difference of Order_Date and Ship_Date.
--Use "ALTER TABLE", "UPDATE" etc.


select * , DATEDIFF (day,C.Order_Date, E.Ship_Date) GUNFARKI
from cust_dimen A, market_fact B, orders_dimen C, prod_dimen D, shipping_dimen E
where b.Cust_id = a.Cust_id
AND b.Ord_id  = c.Ord_id
AND b.Prod_id = d.Prod_id
AND b.Ship_id = e.Ship_id





--////////////////////////////////////


--4. Find the customer whose order took the maximum time to get delivered.
--Use "MAX" or "TOP"


select top (10) * , DATEDIFF (day,C.Order_Date, E.Ship_Date) GUNFARKI
from cust_dimen A, market_fact B, orders_dimen C, prod_dimen D, shipping_dimen E
where b.Cust_id = a.Cust_id
AND b.Ord_id  = c.Ord_id
AND b.Prod_id = d.Prod_id
AND b.Ship_id = e.Ship_id
ORDER BY GUNFARKI DESC


--////////////////////////////////



--5. Count the total number of unique customers in January and how many of them came back every month over the entire year in 2011
--You can use such date functions and subqueries






--////////////////////////////////////////////


--6. write a query to return for each user the time elapsed between the first purchasing and the third purchasing, 
--in ascending order by Customer ID
--Use "MIN" with Window Functions





--//////////////////////////////////////

--7. Write a query that returns customers who purchased both product 11 and product 14, 
--as well as the ratio of these products to the total number of products purchased by the customer.
--Use CASE Expression, CTE, CAST AND such Aggregate Functions




--/////////////////



--CUSTOMER RETENTION ANALYSIS



--1. Create a view that keeps visit logs of customers on a monthly basis. (For each log, three field is kept: Cust_id, Year, Month)
--Use such date functions. Don't forget to call up columns you might need later.




--//////////////////////////////////


--2. Create a view that keeps the number of monthly visits by users. (Separately for all months from the business beginning)
--Don't forget to call up columns you might need later.






--//////////////////////////////////


--3. For each visit of customers, create the next month of the visit as a separate column.
--You can number the months with "DENSE_RANK" function.
--then create a new column for each month showing the next month using the numbering you have made. (use "LEAD" function.)
--Don't forget to call up columns you might need later.



--/////////////////////////////////



--4. Calculate the monthly time gap between two consecutive visits by each customer.
--Don't forget to call up columns you might need later.







--/////////////////////////////////////////


--5.Categorise customers using time gaps. Choose the most fitted labeling model for you.
--  For example: 
--	Labeled as churn if the customer hasn't made another purchase in the months since they made their first purchase.
--	Labeled as regular if the customer has made a purchase every month.
--  Etc.








--/////////////////////////////////////




--MONTH-W�SE RETENT�ON RATE


--Find month-by-month customer retention rate  since the start of the business.


--1. Find the number of customers retained month-wise. (You can use time gaps)
--Use Time Gaps





--//////////////////////


--2. Calculate the month-wise retention rate.

--Basic formula: o	Month-Wise Retention Rate = 1.0 * Total Number of Customers in The Previous Month / Number of Customers Retained in The Next Nonth

--It is easier to divide the operations into parts rather than in a single ad-hoc query. It is recommended to use View. 
--You can also use CTE or Subquery if you want.

--You should pay attention to the join type and join columns between your views or tables.







---///////////////////////////////////
--Good luck!
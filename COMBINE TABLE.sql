	--COMBINE TABLE



SELECT * 
FROM combined_table
ORDER BY Ord_id

--2. Find the top 3 customers who have the maximum count of orders.

SELECT  TOP 3 Cust_id, Customer_Name, COUNT(DISTINCT Ord_id) AS COUNT_ORDER
FROM combined_table
GROUP BY Cust_id, Customer_Name
ORDER BY 3 DESC
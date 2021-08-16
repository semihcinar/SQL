--EXISTS



SELECT COUNT( DISTINCT Cust_id) AS Unique_Customer
FROM combined_table
WHERE YEAR(Order_Date)= 2011
and MONTH (Order_Date)=01

SELECT MONTH(Order_date)  [Month],
		COUNT(DISTINCT Cust_id)  COUNT_CUST
FROM combined_table A
WHERE
EXISTS (
		SELECT Cust_id
		FROM combined_table B
		Where a.Cust_id=B.Cust_id
			AND YEAR(Order_Date)= 2011
			and MONTH (Order_Date)=01
		)
and YEAR(Order_Date)= 2011
group by MONTH(oRDER_DATE)


-- CLUSTERED INDEX

SET STATISTICS IO ON
SET STATISTICS TIME ON

SELECT * 
FROM sales_082020
WHERE seller_id='r9zmzem8'

CREATE CLUSTERED INDEX seller2 ON sales_0820201 (buyer_country)

DROP INDEX seller2  
    ON sales_0820201;
 
 


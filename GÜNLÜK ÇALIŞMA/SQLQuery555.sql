

select * INTO  combined_table11 
from


(
SELECT   market_fact.Ord_id, market_fact.Prod_id, market_fact.Ship_id, market_fact.Cust_id, market_fact.Sales, market_fact.Discount, market_fact.Order_Quantity, market_fact.Product_Base_Margin, 
                         cust_dimen.Customer_Name, cust_dimen.Province, cust_dimen.Region, cust_dimen.Customer_Segment, orders_dimen.Order_Date, orders_dimen.Order_Priority, orders_dimen.OrderDateNew, prod_dimen.Product_Category, 
                         prod_dimen.Product_Sub_Category, shipping_dimen.Ship_Mode, shipping_dimen.Ship_Date, shipping_dimen.tarih, shipping_dimen.tarih_new
FROM            market_fact INNER JOIN
                         cust_dimen ON market_fact.Cust_id = cust_dimen.Cust_id INNER JOIN
                         orders_dimen ON market_fact.Ord_id = orders_dimen.Ord_id INNER JOIN
                         prod_dimen ON market_fact.Prod_id = prod_dimen.Prod_id INNER JOIN
                         shipping_dimen ON market_fact.Ship_id = shipping_dimen.Ship_id
 ) A;
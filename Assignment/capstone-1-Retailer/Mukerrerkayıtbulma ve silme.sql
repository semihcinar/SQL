Mükerrer kayýt bulma ve silme

--------------------------------------------------------------------------------------------------------------------------------------
Select InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerId, Country,   Count(*) 
From [OnlineRetail] 
Group By InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerId, Country
Having Count (CustomerID) > 1



--------------------------------------------------------------------------------------------------------------------------------------

Delete from OnlineRetail where CustomerID in (

Select MAX(CustomerID) as CustomerID 
From OnlineRetailClean
Group By InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerId, Country
Having Count (CustomerId) > 1

)
--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
iki veya daha fazla kayýtlarý tespit edip sayýsýný gösterir

Select  CustomerID as CustomerID, Count(CustomerID) as ADET, StockCode , InvoiceDate, InvoiceNo, Country, UnitPrice, Quantity, Description
From OnlineRetailaaaaa
Group By CustomerID, StockCode, InvoiceDate, InvoiceNo, Country, UnitPrice, Quantity, Description
Having Count (CustomerID) > 5
--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
iki veya daha fazla ayný satýrlardan olan kayýtlarý siler 

DELETE FROM OnlineRetailaaaaa 
WHERE id NOT IN
(
	SELECT MAX(id)
		From OnlineRetailaaaaa
		Group By CustomerID, StockCode, InvoiceDate, InvoiceNo, Country, UnitPrice, Quantity, Description
);

--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
select count(*)
from OnlineRetailaaaaa
--------------------------------------------------------------------------------------------------------------------------------------

select * from OnlineRetailaaaaa
--------------------------------------------------------------------------------------------------------------------------------------

select 541909 - 536641
--------------------------------------------------------------------------------------------------------------------------------------
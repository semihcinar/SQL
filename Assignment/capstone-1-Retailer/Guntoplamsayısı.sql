--M��terinin en yapt��� al��verile  referans tarih aras�ndaki fark� g�n olarak verir


SELECT        CustomerID, DATEDIFF(day, MAX(InvoiceDate), CONVERT(DATETIME, '2011-12-09 00:00:00', 102)) AS ToplamGunsay�s�
FROM       OnlineRetailaaaaa
WHERE        (Country = N'United Kingdom')
GROUP BY CustomerID
ORDER BY CustomerID








SELECT        CustomerID, DATEDIFF(day, MAX(InvoiceDate), CONVERT(DATETIME, '2011-12-09 00:00:00', 102)) AS Recency,  SUM(UnitPrice) AS Monetary, COUNT(DISTINCT InvoiceNo) AS Freq
FROM            Cleaned_segmenttation_V1
WHERE        (Country = N'United Kingdom')
GROUP BY CustomerID
ORDER BY CustomerID






select Quantity
from OnlineRetailaaaaa
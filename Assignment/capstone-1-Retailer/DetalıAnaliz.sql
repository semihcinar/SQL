capstone 1 customer segmentation ONL�NE RETA�LER SHOP

-------------------------------------------------------------------------------
�NG�LTEREDE YILLARA VE AYLARA G�RE EN �OK FATURA D�ZENLENEN AYLAR
AMAC:En �ok al��veri� yap�lan zaman� bulup buradaki m��teri davran��lar�n� yorumlamak.

SELECT        TOP (1000) YEAR(InvoiceDate) AS Expr2, MONTH(InvoiceDate) AS Expr1, COUNT(InvoiceNo) AS Expr3
FROM            OnlineRetailClean
GROUP BY MONTH(InvoiceDate), YEAR(InvoiceDate), Country
HAVING        (Country = N'United Kingdom')
ORDER BY Expr3 DESC

-------------------------------------------------------------------------------
EN �OK ALI�VER�� YAPILAN ZAMAN D�L�M�NDEK� EN SIK ALI�VER�� YAPAN M��TER�
3 AYDAK� FATURA SAYISINDAN M��TER�LER�N EN FAZLA SIKLIKLA ALI�VER�� YAPAN M��TER�LER� L�STELED�K.

SELECT        TOP (10) YEAR(InvoiceDate) AS Expr2, MONTH(InvoiceDate) AS Expr1, CustomerID, COUNT(InvoiceNo) AS Expr3
FROM            OnlineRetailClean
GROUP BY MONTH(InvoiceDate), YEAR(InvoiceDate), Country, CustomerID
HAVING        (Country = N'United Kingdom') AND (YEAR(InvoiceDate) = 2011) AND (MONTH(InvoiceDate) = 9 OR
                         MONTH(InvoiceDate) = 10 OR
                         MONTH(InvoiceDate) = 11)
ORDER BY Expr3 DESC
-------------------------------------------------------------------------------
T�M VER�LERDE EN �OK ALI�VER�� YAPAN 20 M��TER� L�STELEN�R
AMA� PROJEDE EN �OK VE SIK ALI�VER�� YAPAN M��TER� B�LG�LER� �STENMEKTED�R.

SELECT        TOP (10) CustomerID, COUNT(InvoiceNo) AS [TOPLAM FATURA]
FROM            OnlineRetailClean
GROUP BY Country, CustomerID
HAVING        (Country = N'United Kingdom')
ORDER BY [TOPLAM FATURA] DESC
-------------------------------------------------------------------------------
AYLARA G�RE PERYOD�K OLARAK 20 DEN DAHA AZ ALI�VER�� YAPAN M��TER�LER
AMA� PROJEDE KOPMA NOKTASI OLAN M��TER�LER �ZER�NE �ALI�MA �STENMEKTED�R.
(AY VE YIL AYRIMI KONU�ULMALI, AZLIK KR�YER� NASIL BEL�RLENMEL� )

SELECT        TOP (10000) CustomerID, COUNT(InvoiceNo) AS [TOPLAM FATURA ADED�], MONTH(InvoiceDate) AS ay
FROM            OnlineRetailClean
GROUP BY Country, CustomerID, MONTH(InvoiceDate)
HAVING        (Country = N'United Kingdom') AND (COUNT(InvoiceNo) < 20)
ORDER BY ay
-------------------------------------------------------------------------------
EN �OK HARCAMA YAPAN 20 M��TER�
AMA� EN �OK PARA HARCAYAN M��TER� TESP�T� ���N �NEML�

SELECT        TOP (20) CustomerID, SUM(UnitPrice) AS [HARCAMA TOPLAMI], YEAR(InvoiceDate) AS YIL
FROM            OnlineRetailClean
GROUP BY Country, CustomerID, YEAR(InvoiceDate)
HAVING        (Country = N'United Kingdom')
ORDER BY [HARCAMA TOPLAMI] DESC
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

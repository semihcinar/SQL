capstone 1 customer segmentation ONLÝNE RETAÝLER SHOP

-------------------------------------------------------------------------------
ÝNGÝLTEREDE YILLARA VE AYLARA GÖRE EN ÇOK FATURA DÜZENLENEN AYLAR
AMAC:En çok alýþveriþ yapýlan zamaný bulup buradaki müþteri davranýþlarýný yorumlamak.

SELECT        TOP (1000) YEAR(InvoiceDate) AS Expr2, MONTH(InvoiceDate) AS Expr1, COUNT(InvoiceNo) AS Expr3
FROM            OnlineRetailClean
GROUP BY MONTH(InvoiceDate), YEAR(InvoiceDate), Country
HAVING        (Country = N'United Kingdom')
ORDER BY Expr3 DESC

-------------------------------------------------------------------------------
EN ÇOK ALIÞVERÝÞ YAPILAN ZAMAN DÝLÝMÝNDEKÝ EN SIK ALIÞVERÝÞ YAPAN MÜÞTERÝ
3 AYDAKÝ FATURA SAYISINDAN MÜÞTERÝLERÝN EN FAZLA SIKLIKLA ALIÞVERÝÞ YAPAN MÜÞTERÝLERÝ LÝSTELEDÝK.

SELECT        TOP (10) YEAR(InvoiceDate) AS Expr2, MONTH(InvoiceDate) AS Expr1, CustomerID, COUNT(InvoiceNo) AS Expr3
FROM            OnlineRetailClean
GROUP BY MONTH(InvoiceDate), YEAR(InvoiceDate), Country, CustomerID
HAVING        (Country = N'United Kingdom') AND (YEAR(InvoiceDate) = 2011) AND (MONTH(InvoiceDate) = 9 OR
                         MONTH(InvoiceDate) = 10 OR
                         MONTH(InvoiceDate) = 11)
ORDER BY Expr3 DESC
-------------------------------------------------------------------------------
TÜM VERÝLERDE EN ÇOK ALIÞVERÝÞ YAPAN 20 MÜÞTERÝ LÝSTELENÝR
AMAÇ PROJEDE EN ÇOK VE SIK ALIÞVERÝÞ YAPAN MÜÞTERÝ BÝLGÝLERÝ ÝSTENMEKTEDÝR.

SELECT        TOP (10) CustomerID, COUNT(InvoiceNo) AS [TOPLAM FATURA]
FROM            OnlineRetailClean
GROUP BY Country, CustomerID
HAVING        (Country = N'United Kingdom')
ORDER BY [TOPLAM FATURA] DESC
-------------------------------------------------------------------------------
AYLARA GÖRE PERYODÝK OLARAK 20 DEN DAHA AZ ALIÞVERÝÞ YAPAN MÜÞTERÝLER
AMAÇ PROJEDE KOPMA NOKTASI OLAN MÜÞTERÝLER ÜZERÝNE ÇALIÞMA ÝSTENMEKTEDÝR.
(AY VE YIL AYRIMI KONUÞULMALI, AZLIK KRÝYERÝ NASIL BELÝRLENMELÝ )

SELECT        TOP (10000) CustomerID, COUNT(InvoiceNo) AS [TOPLAM FATURA ADEDÝ], MONTH(InvoiceDate) AS ay
FROM            OnlineRetailClean
GROUP BY Country, CustomerID, MONTH(InvoiceDate)
HAVING        (Country = N'United Kingdom') AND (COUNT(InvoiceNo) < 20)
ORDER BY ay
-------------------------------------------------------------------------------
EN ÇOK HARCAMA YAPAN 20 MÜÞTERÝ
AMAÇ EN ÇOK PARA HARCAYAN MÜÞTERÝ TESPÝTÝ ÝÇÝN ÇNEMLÝ

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

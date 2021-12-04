
-------------------------------------------------------
Veri temizleme 
-------------------------------------------------------
SELECT        TOP (10000) column1, InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country
FROM            [Online Retail]
WHERE        (CustomerID IS NOT NULL) AND (UnitPrice > 0) AND (Quantity > 0)

-------------------------------------------------------
Ülkelerin toplam müþterileri
-------------------------------------------------------


SELECT        Country, COUNT(DISTINCT CustomerID) AS Toplam
FROM            OnlineRetailClean
GROUP BY Country
ORDER BY Country

-------------------------------------------------------
Toplam Price
-------------------------------------------------------
SELECT        TOP (10000) Country, SUM(UnitPrice) AS TotalPrice
FROM            [Online Retail]
GROUP BY Country
ORDER BY Country
-------------------------------------------------------
Fiyat Ortalamasý
-------------------------------------------------------

SELECT        TOP (10000) Country, AVG(UnitPrice) AS TotalPrice
FROM            [Online Retail]
GROUP BY Country
ORDER BY Country
-------------------------------------------------
quantity çarpý price
-------------------------------------------------
SELECT        TOP (10000) column1, InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country, Quantity * UnitPrice AS ToplamFiyat
FROM            [Online Retail]
--------------------------------------------------
TOPLAM TEKÝL MÜÞTERÝ
--------------------------------------------------
SELECT        COUNT(DISTINCT CustomerID) AS Toplam
FROM            OnlineRetailClean
--------------------------------------------------
ULKE ADI GEÇEN SATIR SAYISI
--------------------------------------------------
SELECT        TOP (100) Country, COUNT(Country) AS Expr1
FROM            OnlineRetailClean
GROUP BY Country
HAVING        (Country = N'United Kingdom')
--------------------------------------------------------
STOK ve QUANTITY en büyük 1 kayýt
--------------------------------------------------------
SELECT        TOP (1) StockCode, SUM(Quantity) AS Expr1
FROM            OnlineRetailClean
GROUP BY StockCode
ORDER BY Expr1 DESC
--------------------------------------------------------
stockcode  description ve quantity toplamý
--------------------------------------------------------
SELECT        TOP (1000) StockCode, Description, SUM(Quantity) AS Expr1
FROM            OnlineRetailClean
GROUP BY StockCode, Description
ORDER BY Expr1 DESC
------------------------------------------------------------------------
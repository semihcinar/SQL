--1 --toplam kayýt
select count(*) from OnlineRetail
-------------------------------------------------------------------------------------------------------------------
--2--Toplam NULL KAYIT
SELECT    count(*)  FROM            OnlineRetail WHERE        (CustomerID IS NULL)
-------------------------------------------------------------------------------------------------------------------
--3 --NULL olmayan Kayýt sayýsý
SELECT   count (*) FROM OnlineRetail WHERE(CustomerID IS NOT NULL)
-------------------------------------------------------------------------------------------------------------------
--4-- NOT NULL kayýtlarda RETAÝL ve QUANTITY deðerleri 0 dan büyük olan kayýtlar
SELECT      count (*) FROM  OnlineRetail WHERE        (CustomerID IS NOT NULL) AND (UnitPrice > 0) AND (Quantity > 0)
-------------------------------------------------------------------------------------------------------------------
--5-- NOT NULL olup QUANTITY 0 dan küçük olanlar
SELECT     count (*) FROM            OnlineRetail WHERE        (CustomerID IS NOT NULL) AND (Quantity < 0)
-------------------------------------------------------------------------------------------------------------------


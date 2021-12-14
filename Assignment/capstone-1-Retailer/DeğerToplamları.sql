--1 --toplam kay�t
select count(*) from OnlineRetail
-------------------------------------------------------------------------------------------------------------------
--2--Toplam NULL KAYIT
SELECT    count(*)  FROM            OnlineRetail WHERE        (CustomerID IS NULL)
-------------------------------------------------------------------------------------------------------------------
--3 --NULL olmayan Kay�t say�s�
SELECT   count (*) FROM OnlineRetail WHERE(CustomerID IS NOT NULL)
-------------------------------------------------------------------------------------------------------------------
--4-- NOT NULL kay�tlarda RETA�L ve QUANTITY de�erleri 0 dan b�y�k olan kay�tlar
SELECT      count (*) FROM  OnlineRetail WHERE        (CustomerID IS NOT NULL) AND (UnitPrice > 0) AND (Quantity > 0)
-------------------------------------------------------------------------------------------------------------------
--5-- NOT NULL olup QUANTITY 0 dan k���k olanlar
SELECT     count (*) FROM            OnlineRetail WHERE        (CustomerID IS NOT NULL) AND (Quantity < 0)
-------------------------------------------------------------------------------------------------------------------


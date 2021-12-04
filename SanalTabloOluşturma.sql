
Sanal Tablo Oluþturma
------------------------------------------------------------------------------------------
CREATE TABLE #Deneme(Description VARCHAR(50), Country VARCHAR(50), UnitPrice MONEY); 

INSERT INTO #Deneme(Description, Country, UnitPrice )
SELECT Description, Country, UnitPrice
FROM OnlineRetailClean 

------------------------------------------------------------------------------------------
SELECT Description, Country, UnitPrice FROM #Deneme;
------------------------------------------------------------------------------------------
DROP TABLE #Musteriler;
------------------------------------------------------------------------------------------
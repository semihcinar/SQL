


-- BO�LUKLARI ALAIR

SELECT CalisanID, Ad, Soyad, 
LTRIM(Ad) AS "Bo�luklar at�lm�� AD", 
LTRIM(Soyad) AS "Bo�luklar at�lm�� SOYAD"
FROM Personeller
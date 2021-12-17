


-- BOÞLUKLARI ALAIR

SELECT CalisanID, Ad, Soyad, 
LTRIM(Ad) AS "Boþluklar atýlmýþ AD", 
LTRIM(Soyad) AS "Boþluklar atýlmýþ SOYAD"
FROM Personeller
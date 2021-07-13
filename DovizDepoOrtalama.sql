


SELECT        AVG(simdi) AS FIYAT, dovizturu, YEAR(Tarih) AS YIL, MONTH(Tarih) AS AY
FROM            DovizDepo
GROUP BY YEAR(Tarih), MONTH(Tarih), dovizturu
HAVING        (dovizturu = 'EUR-TRY')
ORDER BY YIL DESC, AY







--1990 yýlýndan itibaren bulunan doviz fiyatlarý aylýk ve týllýk olarak ortalamalrý hesaplanmýþtýr.
--Tarih Datetime
--simdi float anlýk döviz fiyatýný verir
--Döviz türü char Dövizin türünü ifade eder

--Görselleþtirmelere ve data setine kaggle.com dan ulaþabilirsiniz.
-- hesap: https://www.kaggle.com/semihnar
-- Githup :https://github.com/semihcinar
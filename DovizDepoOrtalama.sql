


SELECT        AVG(simdi) AS FIYAT, dovizturu, YEAR(Tarih) AS YIL, MONTH(Tarih) AS AY
FROM            DovizDepo
GROUP BY YEAR(Tarih), MONTH(Tarih), dovizturu
HAVING        (dovizturu = 'EUR-TRY')
ORDER BY YIL DESC, AY







--1990 y�l�ndan itibaren bulunan doviz fiyatlar� ayl�k ve t�ll�k olarak ortalamalr� hesaplanm��t�r.
--Tarih Datetime
--simdi float anl�k d�viz fiyat�n� verir
--D�viz t�r� char D�vizin t�r�n� ifade eder

--G�rselle�tirmelere ve data setine kaggle.com dan ula�abilirsiniz.
-- hesap: https://www.kaggle.com/semihnar
-- Githup :https://github.com/semihcinar
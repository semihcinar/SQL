-- RANDOM kisi tablosu oluþturma

DECLARE @I AS INT=0
WHILE @I < 2000
BEGIN


DECLARE @TC AS INT
DECLARE @AD AS VARCHAR (50)
DECLARE @SOYAD VARCHAR (50)
DECLARE @DOGUMTARIHI DATE 
DECLARE @DOGUMYERI AS VARCHAR(50)
DECLARE @CINSIYET AS VARCHAR(2)


DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT;
 
---- This will create a random number between 1 and 999
SET @Lower =  100000000---- The lowest random number
SET @Upper =  999999999 ---- The highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
SELECT @Random


SELECT @AD=AD, @CINSIYET = cinsiyet FROM isimler WHERE ID =ROUND(RAND() * 500,0)
SELECT @SOYAD=SOYAD FROM SOYAD WHERE ID =ROUND(RAND() * 600,0)
SELECT @DOGUMYERI=il FROM tablo_adres_il WHERE plakaID =ROUND(RAND() * 80,0)
SET @DOGUMTARIHI= DATEADD (DAY, ROUND(RAND()*18250,0),'1950-01-01')


INSERT INTO kisi (tcno, adi, soyadi, dogumtarihi, cinsiyet, dogumyeri) VALUES (@Random, @AD, @SOYAD, @DOGUMTARIHI, @CINSIYET, @DOGUMYERI)
SET @I=@I+1

END






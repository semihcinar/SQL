-- a��klamal� RASGELE K��� L�STES� OLU�TURMA
--WHILE d�ngusu ile 2000 otomatik kay�t olu�turuyoruz. @I de�i�keni olu�turup ba�lang�� de�erini 0 veriyoruz. donguyu ba�lat�yoruz.

DECLARE @I AS INT=0
WHILE @I < 2000
BEGIN

-- declare ile de�i�kenlerimizi tan�ml�yoruz.

DECLARE @AD AS VARCHAR (50)
DECLARE @SOYAD VARCHAR (50)
DECLARE @DOGUMTARIHI DATE 
DECLARE @YAS AS INT
DECLARE @YASGRUBU AS VARCHAR (30)
DECLARE @EPOSTA AS VARCHAR (30)
DECLARE @EPOSTAT AS VARCHAR (30)
DECLARE @STATE AS VARCHAR(30)
DECLARE @CITY AS VARCHAR (30)
DECLARE @STREET AS VARCHAR (50)
DECLARE @ZIP AS INT	
DECLARE @PHONE AS VARCHAR (20)



-- first_name alan�n� olu�turmak i�in herhangi bir yerden ald���m�z isim listesini olu�turdu�umuz isimler tablosunu ekliyoruz.
-- last_name alan�n� olu�turmak i�in herhangi bir yerden ald���m�z soyisim listesini olu�turdu�umuz soyisimler tablosunu ekliyoruz.
-- street alan�n� olu�turmak i�in herhangi bir yerden ald���m�z street listesini olu�turdu�umuz street tablosunu ekliyoruz.
-- state ve city alanlar� i�in bir tablo olu�turup state ve city bilgilerini giriyoruz.



SELECT @AD=AD FROM ISIMLER WHERE ID =ROUND(RAND() * 1676,0)
SELECT @SOYAD=SOYISIM FROM SOYISIMLER WHERE ID =ROUND(RAND() * 1676,0)
SELECT @EPOSTA=EMAILDOMAIN FROM EMAIL WHERE ID =ROUND(RAND() * 9,0)
SELECT @STREET=STREET FROM STREET WHERE ID =ROUND(RAND() * 1000,0)
SELECT @CITY=CITY, @STATE=STATENAME FROM STATE WHERE ID =ROUND(RAND() * 50,0)
SELECT @PHONE=PHONE FROM phonelist WHERE ID =ROUND(RAND() * 1500,0)

-- ZIP cod olu�turmak i�in random 6 karakli say� olu�turuyoruz
-- phone alan� i�in 8 karakterli say� olu�turuyoruz.


SET @ZIP= ROUND(RAND()*99999,0);
SET @DOGUMTARIHI= DATEADD (DAY, ROUND(RAND()*18250,0),'1950-01-01')       -- 1950 YILI M�LAT 2000 YILINA KADAR G�N SE�EL�M. SELECT 365 * 50   18250 DENK GEL�YOR.
SET @YAS =DATEDIFF(YEAR, @DOGUMTARIHI,GETDATE())
SET @EPOSTAT = @AD+ @SOYAD+'@'+@EPOSTA
--SET @PHONE = ROUND(RAND()*10000000,0);


IF @YAS BETWEEN 10 AND 20 
SET @YASGRUBU ='KUCUK'
	IF @YAS BETWEEN 21 AND 40 
SET @YASGRUBU ='ORTA YAS'
	IF @YAS BETWEEN 41 AND 60 
SET @YASGRUBU ='BUYUK'
	IF @YAS >60
SET @YASGRUBU ='YA�LI'

	
-- veritaban�na kay�t yap�yoruz.

INSERT INTO customer(first_name, last_name, birthdate, age, agegroup,email, state, city, street, zip, phone) VALUES (@AD, @SOYAD, @DOGUMTARIHI, @YAS, @YASGRUBU, @EPOSTAT, @STATE, @CITY, @STREET,@ZIP, @PHONE)


SET @I=@I+1


END
	
	--DECLARE @STATE AS VARCHAR(30)
	--SELECT @STATE=STATENAME FROM STATE WHERE ID = ROUND (RAND() * 9,0)
	
	
	--DECLARE @CITY AS VARCHAR (30)
	--DECLARE @STATE AS VARCHAR(30)

	--SELECT @CITY=CITY, @STATE=STATENAME FROM STATE WHERE ID =ROUND(RAND() * 50,0)
	--SELECT @CITY, @STATE

	--DECLARE @STREET VARCHAR(50)
	--SELECT @STREET=STREET FROM STREET WHERE ID =ROUND(RAND() * 1000,0)
	--SELECT @STREET

--DECLARE @ZIP AS INT	
--SELECT ROUND(RAND()*10000000,0);
--SELECT RAND()*(10-5)+5;
--SELECT ROUND(RAND() * 167600,0);

--SELECT FLOOR(RAND()*(10000000-5*1)+2);
--select RAND(10),RAND(),RAND()

--select ROUND(28.6564,0)

--SELECT SQRT(90) * 100


--DECLARE @PHONE
--SET @PHONE = ROUND(RAND()*10000000,0);
--SELECT @PHONE

--DECLARE @PHONE AS varchar (30)
--declare @EK AS varchar = '+','1' 
--SET @PHONE = ROUND(RAND()*10000000,0);
--select @EK , @phone


--SELECT phone + SPACE(2) + '.' from customer

 --SELECT STRING_AGG(phone, ',') from customer

--SELECT @PHONE

--SET @PHONETAM = SELECT @PHONE, @BIR 


--declare @phone
--set @phone = ('+1-') + SUBSTRING (phone,0,3) +' - '+ SUBSTRING (phone,3,3) +' - '+ SUBSTRING (phone,4,3) from customer

--select @phone


--SELECT '+1-' + SUBSTRING (phone,0,3) +' - '+ SUBSTRING (phone,3,3) +' - '+ SUBSTRING (phone,3,4) from customer

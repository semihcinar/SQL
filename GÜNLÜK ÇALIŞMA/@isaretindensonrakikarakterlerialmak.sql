select * , 
case 
	when DATEPART(MONTH, order_date)= 1 THEN 'OCAK' 
	when DATEPART(MONTH, order_date)= 2 THEN '?UBAT' 
	when DATEPART(MONTH, order_date)= 3 THEN 'MART' 
	when DATEPART(MONTH, order_date)= 4 THEN 'N?SAN' 
	when DATEPART(MONTH, order_date)= 5 THEN 'MAYIS' 
	when DATEPART(MONTH, order_date)= 6 THEN 'HAZ?RAN' 
	when DATEPART(MONTH, order_date)= 7 THEN 'TEMMUZ' 
	when DATEPART(MONTH, order_date)= 8 THEN 'A?USTOS' 
	when DATEPART(MONTH, order_date)= 9 THEN 'EYL?L' 
	when DATEPART(MONTH, order_date)= 10 THEN 'EK?M'
	when DATEPART(MONTH, order_date)= 11 THEN 'KASIM' 
	when DATEPART(MONTH, order_date)= 12 THEN 'ARALIK' 
END

from sale.orders


CREATE FUNCTION DBO.GETMONTHNAME(@DATE AS DATETIME)
RETURNS VARCHAR (10)
AS 
BEGIN
DECLARE @AY AS VARCHAR(10)

	IF DATEPART(MONTH, @DATE)= 1 SET @AY ='01.OCAK' 
	IF DATEPART(MONTH, @DATE)= 2 SET @AY ='02.?UBAT' 
	IF DATEPART(MONTH, @DATE)= 3 SET @AY ='03.MART' 
	IF DATEPART(MONTH, @DATE)= 4 SET @AY ='04.N?SAN' 
	IF DATEPART(MONTH, @DATE)= 5 SET @AY ='05.MAYIS' 
	IF DATEPART(MONTH, @DATE)= 6 SET @AY ='06.HAZ?RAN' 
	IF DATEPART(MONTH, @DATE)= 7 SET @AY ='07.TEMMUZ' 
	IF DATEPART(MONTH, @DATE)= 8 SET @AY ='08.A?USTOS' 
	IF DATEPART(MONTH, @DATE)= 9 SET @AY ='09.EYL?L' 
	IF DATEPART(MONTH, @DATE)= 10 SET @AY ='10.EK?M'
	IF DATEPART(MONTH, @DATE)= 11 SET @AY ='11.KASIM' 
	IF DATEPART(MONTH, @DATE)= 12 SET @AY ='12.ARALIK' 
RETURN @AY
END


SELECT DBO.GETMONTHNAME(GETDATE())
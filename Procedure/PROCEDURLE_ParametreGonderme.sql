-- PROCEDURLE parametre g�nderme



CREATE PROC sp_wanted_dayorder (@DAY DATE)
AS
BEGIN

	SELECT COUNT (ORDER_ID)
	FROM ORDER_TBL
	WHERE ORDER_DATE = @DAY

END;

SELECT * FROM ORDER_TBL

EXEC sp_wanted_dayorder '2021-08-12' -- buraya bir tarih girece�im ve procedure bana o g�ne ait order_id leri say�s�n� getirecek


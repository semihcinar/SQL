-- UPDATE 
-----------------------------------------------------------------------------------------------------------
-- TABLO içindeki VERÝYÝ KRÝTERLERE GÖRE GÜNCELLER

UPDATE Query
	SET Gears2= '7',
WHERE        ModelCodeOrj = '0588/AZD' AND GearType = 'Automatic'

-----------------------------------------------------------------------------------------------------------


							DECLARE @ID AS INT
							DECLARE @I AS INT=0
							WHILE @I < 200
							BEGIN

							SET @ID= ROUND(RAND()*1000,0);
							
							SET @I=@I+1
							END

							

UPDATE customer
	SET phone= NULL
WHERE  customer_id IN(
						SELECT @ID
						)

					
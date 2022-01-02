CREATE FUNCTION DBO.CALCULATE_AGE (@BIRTHDATE AS DATE)
RETURNS INT
BEGIN
DECLARE @RESULT AS INT
SET @RESULT = DATEDIFF(YEAR, @BIRTHDATE, GETDATE())
RETURN @RESULT
END


SELECT TOP 1000 *, DBO.CALCULATE_AGE(birthdate) AS YAS

FROM customer




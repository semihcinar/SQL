---------------------------- PROCEDURE------------------------
CREATE PROC sp_sampleproc_1
AS
BEGIN
	SELECT 'HELLO WORLD'

END;

EXECUTE sp_sampleproc_1   -- PROCEDURE'Ü ÇALIÞTIRMAK ÝÇÝN.

EXEC sp_sampleproc_1  -- BU ÞEKÝLDE DE ÇALIÞIR.

sp_sampleproc_1  -- VE BU ÞEKÝLDE DE ÇALIÞIR.


-- PROCEDURE'Ü DEÐÝÞTÝRELÝM.
ALTER PROC sp_sampleproc_1
AS
BEGIN
	SELECT 'QUERY COMPLETED' RESULT

END;

sp_sampleproc_1
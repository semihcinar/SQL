---------------------------- PROCEDURE------------------------
CREATE PROC sp_sampleproc_1
AS
BEGIN
	SELECT 'HELLO WORLD'

END;

EXECUTE sp_sampleproc_1   -- PROCEDURE'� �ALI�TIRMAK ���N.

EXEC sp_sampleproc_1  -- BU �EK�LDE DE �ALI�IR.

sp_sampleproc_1  -- VE BU �EK�LDE DE �ALI�IR.


-- PROCEDURE'� DE���T�REL�M.
ALTER PROC sp_sampleproc_1
AS
BEGIN
	SELECT 'QUERY COMPLETED' RESULT

END;

sp_sampleproc_1
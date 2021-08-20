--
ALTER PROC sp_sampleproc_1

--CREATE PROC sp_sampleproc_1
AS
BEGIN
	SELECT TOP (200) ProductName, Supply_ComponentName, Description, SupplyQuantity, MiktarTuru, Supply_Date, SupplierName FROM View_1


END


EXEC sp_sampleproc_1
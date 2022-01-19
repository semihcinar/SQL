-- tablodaki max date bulan fonksiyon

ALTER FUNCTION maxdate()
RETURNS Datetime

AS
BEGIN
		DECLARE @Tabledate Datetime
		set @Tabledate =(select max (order_date) from  sale.orders)
		return @Tabledate
		
END


select dbo.maxdate()
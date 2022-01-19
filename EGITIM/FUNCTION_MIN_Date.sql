-- tablodaki min date bulan fonksiyon

Create FUNCTION mindate()
RETURNS Datetime

AS
BEGIN
		DECLARE @Tabledate Datetime
		set @Tabledate =(select min (order_date) from  sale.orders)
		return @Tabledate
		
END


select dbo.mindate()
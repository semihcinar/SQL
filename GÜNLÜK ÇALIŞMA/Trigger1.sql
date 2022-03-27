alter Trigger StokGuncelle
On Trigger_Urun
AFTER INSERT
as
BEGIN
declare @urun_id int
declare @stock int
declare @girisCikis int
declare @tarih date


select @urun_id = urun_id, @stock = stock, @girisCikis =girisCikis , @tarih = tarih  FROM inserted

IF @girisCikis = 1
					update [dbo].[Trigger_stok_online]
					set [stock] = [stock] + @stock
					where [urun_id] = @urun_id
IF @girisCikis = 2
					update [dbo].[Trigger_stok_online]
					set [stock] = [stock] - @stock
					where [urun_id] = @urun_id
END

truncate table[dbo].[Trigger_stok_online]

insert into [dbo].[Trigger_Urun] values (1,30,2,getdate())

select * from[dbo].[Trigger_Urun]
select * from[dbo].[Trigger_stok_online]
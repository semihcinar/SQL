use Northwind

select DISTINCT SatisID, COUNT(Miktar) over (partition by SatisID)from [Satis Detaylari]


select MusteriID, ROW_NUMBER () over(order by MusteriID) as sýra,  MusteriAdi, SirketAdi  from [dbo].[Musteriler]


select MusteriID, ROW_NUMBER () over (order by MusteriID), MusteriAdi, MusteriUnvani, Sehir from Musteriler



select DISTINCT  PersonelID, SUM(NakliyeUcreti) over (partition by PersonelID) as kargo
						  ,COUNT(NakliyeUcreti) over (partition by PersonelID) ToplamÝs
--					      ,ROW_NUMBER () over (order by PersonelID)

from [dbo].[Satislar]
order by 3 DESC

select *,ROW_NUMBER () over (order by PersonelID) from personeller

select  ROW_NUMBER () over (order by SatisID), BirimFiyati * Miktar as toplam, BirimFiyati * (1-indirim) * Miktar as indirimli from [Satis Detaylari]


select DISTINCT SatisID, sum(Miktar) over  (partition by SatisID) AS TOPLAM , COUNT(Miktar) over  (partition by SatisID) AS ADET from [dbo].[Satis Detaylari]


select * from [dbo].[Satis Detaylari]













ROW_NUMBER () over (order by PersonelID)
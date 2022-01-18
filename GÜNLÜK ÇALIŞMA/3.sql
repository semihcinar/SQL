SELECT        TOP (1000) STI.IslemTur, STI.EvrakNo, STI.Miktar, STI.Birim, CONVERT(VARCHAR(15), CAST(STI.Tarih - 2 AS datetime), 104) as Tarih

,CASE 
WHEN [IslemTur] = 0 then 'Giris'
WHEN [IslemTur] = 1 then 'Çýkýþ'
end AS IslemTur


FROM            STI INNER JOIN

STK ON STI.MalKodu = STK.MalKodu




SELECT        STI.IslemTur, STI.EvrakNo,   SUM([Miktar])  OVER
         (PARTITION BY  CONVERT(VARCHAR(15), 
		 
		 CAST(STI.Tarih - 2 AS datetime), 104)), 
		 
		 CONVERT(VARCHAR(15), CAST(STI.Tarih - 2 AS datetime), 104) as Tarih,

		 CASE 
WHEN [IslemTur] = 0 then 'Giris'
WHEN [IslemTur] = 1 then 'Çýkýþ'
end AS IslemTur,
 (select [Miktar] from dbo.STI where [IslemTur] = 0 )


FROM            STI INNER JOIN
                         STK ON STI.MalKodu = STK.MalKodu








SELECT [IslemTur], SUM([Miktar]) OVER
         (PARTITION BY  CONVERT(VARCHAR(15), CAST(STI.Tarih - 2 AS datetime), 104)) Tarih

 FROM            STI INNER JOIN  STK ON STI.MalKodu = STK.MalKodu




DECLARE @islemtur int
 set @islemtur = 0

 select * from dbo.STI where [IslemTur] =@islemtur



 select @islemtur
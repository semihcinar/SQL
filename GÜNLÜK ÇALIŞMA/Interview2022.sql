SELECT        IslemTur, EvrakNo, CONVERT(VARCHAR(15), CAST(Tarih - 2 AS datetime), 104) AS Date_, GirisMiktar, CikisMiktar, SUM(Stok) AS Stok,[Tarih],
case 
	when  [IslemTur] ='0' THEN 'GÝRÝÞ'
	when [IslemTur] ='1' THEN 'ÇIKIÞ'
	END as IslemTuru

FROM            STI


GROUP BY IslemTur, MalKodu, GirisMiktar, CikisMiktar, EvrakNo, CONVERT(VARCHAR(15), CAST(Tarih - 2 AS datetime), 104),[Tarih]
ORDER BY 3




WHERE CONVERT(VARCHAR(15), CAST(Tarih - 2 AS datetime), 104) > '01-01-2017'
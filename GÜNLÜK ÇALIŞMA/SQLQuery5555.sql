select  distinct MalKodu,
(select Sum(Miktar) from STI  where IslemTur =0 AND MalKodu ='10081 SÝEMENS')-
(select Sum(Miktar) from STI  where IslemTur =1 AND MalKodu ='10081 SÝEMENS')
from STI



select distinct IslemTur, MalKodu, SUM(Miktar) OVER(Partition By IslemTur, MalKodu) AS toplam
from STI 
where IslemTur = 0


select distinct MalKodu, 
SUM(GirisMiktar) OVER (partition by MalKodu),
SUM(CikisMiktar) OVER (partition by MalKodu)
,SUM(GirisMiktar) OVER (partition by MalKodu) - SUM(CikisMiktar) OVER (partition by MalKodu) Stok
from STI
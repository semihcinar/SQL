select distinct
	 (select  SUM(Miktar) from STI where IslemTur =0 AND MAlKodu = '10081 SÝEMENS' group by MalKodu ) -
	 (select  SUM(Miktar) from STI where IslemTur =1 AND MAlKodu = '10081 SÝEMENS' group by MalKodu) Cýkýs
	-- ,(select  SUM(Miktar) from STI where IslemTur =0 )- (select SUM(Miktar) from STI where IslemTur =1 )
from STI


select A.Giris-B.Cikis
FROM
(select distinct IslemTur, MalKodu, SUM(Miktar) OVER(partition by MalKodu) as Giris 
from STI Where IslemTur = 0)A ,

(select distinct IslemTur, MalKodu, SUM(Miktar) OVER(partition by MalKodu) as Cikis 
from STI Where IslemTur = 1)B


Group by A.MalKodu, A.IslemTur


select distinct MalKodu , IslemTur, SUM(Miktar) OVER (partition by IslemTur) as toplam
from STI
Group By MalKodu,IslemTur,Miktar
select A.*,sum(A.toplamMiktar)  
from

(
select *, sum(Miktar) OVER (partition by IslemTur) as toplamMiktar
from STI)A
group by A.toplamMiktar


Select A.GirisToplam, A.CikisToplam, A.MalKodu, A.MevcutStok

from
(
select *, SUM(GirisMiktar) OVER (partition by Malkodu) As GirisToplam
		,SUM(CikisMiktar) OVER (partition by Malkodu) As CikisToplam
		,SUM(GirisMiktar) OVER (partition by Malkodu) - SUM(CikisMiktar) OVER (partition by Malkodu) As MevcutStok
from  STI
) A

group by A.GirisToplam, A.CikisToplam,A.MalKodu, A.MevcutStok


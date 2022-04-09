select distinct A.Toplam - B.Toplam
From


(
SELECT    SUM(Miktar) AS Toplam
FROM            STI
where IslemTur = 0
GROUP BY IslemTur, MalKodu)A,

(
SELECT   SUM(Miktar) AS Toplam
FROM            STI
where IslemTur = 1
GROUP BY IslemTur, MalKodu)B

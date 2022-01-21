select *,sum(Miktar) OVER (partition by EvrakNo) from STI




1
2
3
4
5
6
7
8
9
10
11
12
 
Create function fn_isaret(@sayi int)
returns int
as 
Begin
     if(@sayi<0)
           return -1
     if(@sayi=0)
           return 0
     return 1
End


SELECT ID,
 IslemTur,
 Miktar,
[EvrakNo], CONVERT(VARCHAR(15), CAST(STI.Tarih - 2 AS datetime), 104),
 SUM(Miktar) OVER ( PARTITION BY IslemTur ) AS totalpercust
FROM STI; 




UPDATE [dbo].[Query_Son]
set [TarihSon] = CONVERT(date, CAST(Tarih - 2 AS datetime), 104)


select * from [dbo].[Query_Son]
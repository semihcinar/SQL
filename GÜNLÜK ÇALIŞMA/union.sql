use kompozit

select * from tablo_1
select * from tablo_2


select 'a' as type, isim from tablo_1
union all
select 'b' as type, isim from tablo_2


select isim from tablo_1
union
select isim from tablo_2
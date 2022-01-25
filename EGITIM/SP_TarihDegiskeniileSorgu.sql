USE [Test2]

ALTER PROCEDURE dbo.TarihSorgula

@tarih1 date,
@tarih2 date

AS
BEGIN

--set @tarih1 ='01.02.2016'
--set @tarih2 ='01.02.2017'

SELECT  IslemTur, EvrakNo, Date_, GirisMiktar, CikisMiktar, Stok, Tarih, IslemTuru, TarihSon
FROM            Query_Son
where TarihSon BETWEEN @tarih1 AND @tarih2

END

exec dbo.TarihSorgula '01.02.2017','01.02.2018'

ALTER PROCEDURE TarihSorgula 

AS

declare @tarih1 date
declare @tarih2 date

--set @tarih1 ='01.02.2016'
--set @tarih2 ='01.02.2017'

SELECT  IslemTur, EvrakNo, Date_, GirisMiktar, CikisMiktar, Stok, Tarih, IslemTuru, TarihSon
FROM            Query_Son
where TarihSon BETWEEN @tarih1 AND @tarih2



exec TarihSorgula 




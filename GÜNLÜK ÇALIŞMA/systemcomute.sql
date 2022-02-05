exec sys.xp_cmdshell 'dir d:\';




create database kontrol
use kontrol
create table sil (

id int identity (1,1) primary key
, isim varchar (50) not null
, soyisim varchar (50) not null)


insert into sil (isim, soyisim) values ('ahmet1', 'acar')
select * from sil
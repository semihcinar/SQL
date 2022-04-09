create table Log_Table
(
Id int primary key identity(1,1),
Aciklama varchar(max)
)


select * from Log_Table

create trigger Log_TriggerUpdate
on [dbo].[currency]
for update
as
declare @ilkdeger varchar(50),@yenideger varchar(50)
select @ilkdeger = Adi from deleted
select @yenideger = Adi from inserted
insert Log_Table values('De�eri ' + @ilkdeger + ' olan veri ' + @yenideger + ' ile ' + SUSER_SNAME() + ' kullan�c�s� taraf�ndan ' + Cast(GETDATE() as varchar(100)) + ' tarihinde de�i�tirildi.')

use mobilhanem
-----------------------------------------------------------
--DDL CREATE - ALTER - DROP DATABASE
-----------------------------------------------------------
CREATE DATABASE mobilhanem
-----------------------------------------------------------
ALTER DATABASE mobilhanem MODIFY NAME = mobilhanem25
EXEC sp_renamedb 'mobilhanem25', 'mobilhanem'
ALTER DATABASE [Test] MODIFY NAME = [Test2]
-----------------------------------------------------------
DROP database mobilhanem25
-----------------------------------------------------------
-----------------------------------------------------------
-- CREATE ALTER DROP TABLE
-----------------------------------------------------------

CREATE TABLE YAZARLAR(
    yazar_id int IDENTITY(1,1) not null primary key,
    yazar_isim varchar(15),
    yazar_soyad varchar(20),
    yazar_ders varchar(30));

-----------------------------------------------------------
ALTER TABLE YAZARLAR ADD TARÝH DATE
ALTER TABLE YAZARLAR DROP column TARÝH 
EXEC SP_RENAME '[YAZARLAR].[TARÝH]','Tarih'
ALTER TABLE sairler ALTER COLUMN yazar_isim varchar(50)
ALTER TABLE YAZARLAR RENAME COLUMN Tarih to Tarih5;
-----------------------------------------------------------
DROP TABLE YAZARLAR
-----------------------------------------------------------
TRUNCATE TABLE table_name;
-----------------------------------------------------------
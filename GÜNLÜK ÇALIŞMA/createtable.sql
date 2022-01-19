USE [mobilhanem]

CREATE TABLE [dbo].[yazarlar](
	[yazar_id] [int] IDENTITY(1,1) NOT NULL,
	[yazar_isim] [varchar](15) NULL,
	[yazar_soyad] [varchar](20) NULL,
	[yazar_ders] [varchar](30) NULL
)
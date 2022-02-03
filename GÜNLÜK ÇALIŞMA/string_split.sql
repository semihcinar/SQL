SELECT
	 sip_RECno as KAYITNO 	,sip_cari_kodu  AS CARÝ_KOD ,
	 
	 (SELECT cari_Adi from CARI_TANIMLARI where cari_Kod = sip_cari_kodu)  AS CARÝ
	,sip_teslim_adres AS TESLÝM_ADRES
	,sip_siparisi_alan_per AS PERSONEL_KOD
	,
	
	(SELECT per_Adi from PERSONEL_TANIMLARI where per_Kod = sip_siparisi_alan_per) AS PERSONEL 	,sip_miktar AS MÝKTAR
	
FROM SIPARISLER



select value from string_split ('siyah, beyaz, kýrmýzý, mavi', ',')
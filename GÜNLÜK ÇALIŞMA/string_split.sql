SELECT
	 sip_RECno as KAYITNO 	,sip_cari_kodu  AS CAR�_KOD ,
	 
	 (SELECT cari_Adi from CARI_TANIMLARI where cari_Kod = sip_cari_kodu)  AS CAR�
	,sip_teslim_adres AS TESL�M_ADRES
	,sip_siparisi_alan_per AS PERSONEL_KOD
	,
	
	(SELECT per_Adi from PERSONEL_TANIMLARI where per_Kod = sip_siparisi_alan_per) AS PERSONEL 	,sip_miktar AS M�KTAR
	
FROM SIPARISLER



select value from string_split ('siyah, beyaz, k�rm�z�, mavi', ',')
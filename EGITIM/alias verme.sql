select A.TCNO, A.ADÝ, A.soyadi, C.dersadi, C.bolumadi, * 

FROM KÝSÝ A, 
	 ORTAK_kisi_ders B, 
	 tablo_Ders C, 
	 ogrenci_gecme_notu D, 
	 tablo_bolumadi E

WHERE A.kisiID = B.kisiID
AND B.dersID = C.dersID
AND C.bolumadi = E.bolumID
AND A.kisiID = 122
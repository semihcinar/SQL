select A.TCNO, A.AD�, A.soyadi, C.dersadi, C.bolumadi, * 

FROM K�S� A, 
	 ORTAK_kisi_ders B, 
	 tablo_Ders C, 
	 ogrenci_gecme_notu D, 
	 tablo_bolumadi E

WHERE A.kisiID = B.kisiID
AND B.dersID = C.dersID
AND C.bolumadi = E.bolumID
AND A.kisiID = 122
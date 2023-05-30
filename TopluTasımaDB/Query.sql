-- M5D Güzergahýnda giden taþýt id'si 5 olan araçtaki þoförün adý ve maaþý
SELECT P.Ad as Ad,
P.Maas AS Maaþ from TblGuzergah G inner join TblSefer S 
on G.ID = S.Guzergah_id inner join TblPersonel P 
on S.Personel_id = P.ID inner join TblTasit T 
on P.ID = T.Personel_id where G.Guzergah_no = 'M5D'

--Kalkýs saati 08:20:00 ve varýs saati 09:20:00 olan seferdeki taþýtýn türü

select  Tur from TblSefer S inner join TblTasit T
on S.Tasit_id = T.ID inner join TblTasitTuru TT
on T.Tur_id = TT.ID where Kalkis_saati = '1900-01-01 08:20:00.000' AND Varis_saati = '1900-01-01 09:20:00.000'

--Taþýt kapasitesini, seferin yolcu sayýsýný ve ne kadar boþ koltuk olduðunu gösteren sorgu

select T.Kapasite AS TasitKapasitesi,
       S.ToplamYolcuSayisi AS ToplamYolcu,
       T.Kapasite - S.ToplamYolcuSayisi as BosKoltuk
from TblSefer S inner join TblTasit T
on S.Tasit_id = T.ID
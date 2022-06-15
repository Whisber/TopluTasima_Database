-- M5D G�zergah�nda giden ta��t id'si 5 olan ara�taki �of�r�n ad� ve maa��
SELECT P.Ad as Ad,
P.Maas AS Maa� from TblGuzergah G inner join TblSefer S 
on G.ID = S.Guzergah_id inner join TblPersonel P 
on S.Personel_id = P.ID inner join TblTasit T 
on P.ID = T.Personel_id where G.Guzergah_no = 'M5D'

--Kalk�s saati 08:20:00 ve var�s saati 09:20:00 olan seferdeki ta��t�n t�r�

select  Tur from TblSefer S inner join TblTasit T
on S.Tasit_id = T.ID inner join TblTasitTuru TT
on T.Tur_id = TT.ID where Kalkis_saati = '1900-01-01 08:20:00.000' AND Varis_saati = '1900-01-01 09:20:00.000'

--Ta��t kapasitesini, seferin yolcu say�s�n� ve ne kadar bo� koltuk oldu�unu g�steren sorgu

select T.Kapasite AS TasitKapasitesi,
       S.ToplamYolcuSayisi AS ToplamYolcu,
       T.Kapasite - S.ToplamYolcuSayisi as BosKoltuk
from TblSefer S inner join TblTasit T
on S.Tasit_id = T.ID
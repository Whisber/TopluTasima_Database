--9000 maa� alan personellerin maa�lar�na 2000tl eklenmesi 
UPDATE TblPersonel SET Maas = Maas + 2000 WHERE Maas = 9000

--Ta��t t�r� tramvay olan ta��tlar�n t�r�n� otob�s yapt�k
UPDATE TblTasitTuru SET Tur = 'Otobus' WHERE Tur = 'Tramvay'

--Maa�� 10000 olan personellerin g�revlerini �of�r olarak degistirmek
UPDATE TblPersonel SET G�rev = 'Sof�r' WHERE Maas = 10000

--G�zergah no M1 olan seferlerin Mesafesini 50km olarak degistirmek
UPDATE TblGuzergah SET Mesafe = 50 WHERE Guzergah_no = 'M5D'

--G�zergah no 8A olan yenikap� - otogar bilgisini , yenikap� - pendik olarak degistirdik
UPDATE TblGuzergah SET Guzergah_bilgisi = 'Yenikap� - Pendik' WHERE Guzergah_no = '8A'
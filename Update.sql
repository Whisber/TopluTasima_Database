--9000 maaþ alan personellerin maaþlarýna 2000tl eklenmesi 
UPDATE TblPersonel SET Maas = Maas + 2000 WHERE Maas = 9000

--Taþýt türü tramvay olan taþýtlarýn türünü otobüs yaptýk
UPDATE TblTasitTuru SET Tur = 'Otobus' WHERE Tur = 'Tramvay'

--Maaþý 10000 olan personellerin görevlerini Þoför olarak degistirmek
UPDATE TblPersonel SET Görev = 'Soför' WHERE Maas = 10000

--Güzergah no M1 olan seferlerin Mesafesini 50km olarak degistirmek
UPDATE TblGuzergah SET Mesafe = 50 WHERE Guzergah_no = 'M5D'

--Güzergah no 8A olan yenikapý - otogar bilgisini , yenikapý - pendik olarak degistirdik
UPDATE TblGuzergah SET Guzergah_bilgisi = 'Yenikapý - Pendik' WHERE Guzergah_no = '8A'
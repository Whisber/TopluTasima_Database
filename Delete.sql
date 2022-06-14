--Sefer yolcu sayýlarý 200 üstü olan seferlerin silinmesi
DELETE FROM TblSefer WHERE ToplamYolcuSayisi > 200


--300 den fazla satýlan biletleri silme
DELETE FROM Gise WHERE Satilan_bilet > 300


--Ýller tablosundan Ýzmir þehrinin cýkartýlmasý
DELETE FROM TblIl WHERE Ad = 'Ýzmir'

--Tramvay türlü tasýtlarýn silinmesi
DELETE FROM TblTasitTuru WHERE Tur = 'Tramvay'

--Ýndirimli olan kartlarýn silinmesi
DELETE FROM TblKartTuru WHERE KartCesit = 'Ýndirimli'
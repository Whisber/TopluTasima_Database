--Sefer yolcu say�lar� 200 �st� olan seferlerin silinmesi
DELETE FROM TblSefer WHERE ToplamYolcuSayisi > 200


--300 den fazla sat�lan biletleri silme
DELETE FROM Gise WHERE Satilan_bilet > 300


--�ller tablosundan �zmir �ehrinin c�kart�lmas�
DELETE FROM TblIl WHERE Ad = '�zmir'

--Tramvay t�rl� tas�tlar�n silinmesi
DELETE FROM TblTasitTuru WHERE Tur = 'Tramvay'

--�ndirimli olan kartlar�n silinmesi
DELETE FROM TblKartTuru WHERE KartCesit = '�ndirimli'
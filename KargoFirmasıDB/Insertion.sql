INSERT INTO �lke (�sim)
VALUES ('T�rkiye'),
       ('Amerika'),
       ('Almanya'),
       ('�ngiltere'),
       ('Fransa'),
       ('�talya'),
       ('�in'),
       ('Japonya'),
       ('Rusya'),
       ('Brezilya')

select * from �lke

INSERT INTO �l (�sim, �lke_Id)
VALUES
('Adana', 1),
('Ad�yaman', 1),
('Afyonkarahisar', 1),
('A�r�', 1),
('Amasya', 1),
('Ankara', 1),
('Antalya', 1),
('Artvin', 1),
('Ayd�n', 1),
('Bal�kesir', 1),
('Bilecik', 1),
('Bing�l', 1),
('Bitlis', 1),
('Bolu', 1),
('Burdur', 1),
('Bursa', 1),
('�anakkale', 1),
('�ank�r�', 1),
('�orum', 1),
('Denizli', 1),
('Diyarbak�r', 1),
('Edirne', 1),
('Elaz��', 1),
('Erzincan', 1),
('Erzurum', 1),
('Eski�ehir', 1),
('Gaziantep', 1),
('Giresun', 1),
('G�m��hane', 1),
('Hakk�ri', 1),
('Hatay', 1),
('Isparta', 1),
('Mersin', 1),
('�stanbul', 1),
('�zmir', 1),
('Kars', 1),
('Kastamonu', 1),
('Kayseri', 1),
('K�rklareli', 1),
('K�r�ehir', 1),
('Kocaeli', 1),
('Konya', 1),
('K�tahya', 1),
('Malatya', 1),
('Manisa', 1),
('Kahramanmara�', 1),
('Mardin', 1),
('Mu�la', 1),
('Mu�', 1),
('Nev�ehir', 1),
('Ni�de', 1),
('Ordu', 1),
('Rize', 1),
('Sakarya', 1),
('Samsun', 1),
('Siirt', 1),
('Sinop', 1),
('Sivas', 1),
('Tekirda�', 1),
('Tokat', 1),
('Trabzon', 1),
('Tunceli', 1),
('�anl�urfa', 1),
('U�ak', 1),
('Van', 1),
('Yozgat', 1),
('Zonguldak', 1),
('Aksaray', 1),
('Bayburt', 1),
('Karaman', 1),
('K�r�kkale', 1),
('Batman', 1),
('��rnak', 1),
('Bart�n', 1),
('Ardahan', 1),
('I�d�r', 1),
('Yalova', 1),
('Karab�k', 1),
('Kilis', 1),
('Osmaniye', 1),
('D�zce', 1)

select * from �l

INSERT INTO �l�e(�sim, �l_Id)
VALUES
('Merkez', 77),
('��narc�k', 77),
('Termal', 77),
('Armutlu', 77),
('Ba�c�lar', 1),
('Merkez', 2),
('Merkez', 3),
('Merkez', 4),
('Merkez', 5),
('Merkez', 6),
('Merkez', 7),
('Merkez', 8),
('Merkez', 9),
('Merkez', 11),
('Merkez', 13);

select * from �l�e

INSERT INTO Mahalle (�sim, �l�e_Id)
VALUES
('Merkez Mahallesi', 1),
('Cumhuriyet Mahallesi', 2),
('�n�n� Mahallesi', 3),
('Y�ld�r�m Mahallesi', 4),
('Fatih Mahallesi', 1),
('�ankaya Mahallesi', 1),
('Kocatepe Mahallesi', 2),
('Atat�rk Mahallesi', 5),
('Gazi Mahallesi', 3),
('Yenimahalle', 3);

select * from Mahalle

INSERT INTO Sokak (�sim, Mahalle_Id)
VALUES
('Atat�rk Caddesi', 1),
('�stiklal Sokak', 2),
('Cumhuriyet Bulvar�', 3),
('Milli Egemenlik Soka��', 4),
('Gazi �lkokul Sokak', 5),
('Anafartalar Caddesi', 6),
('Mevlana Sokak', 7),
('H�rriyet Meydan�', 8),
('Kurtulu� Caddesi', 9),
('Yavuz Sultan Selim Sokak', 10);

select * from Sokak

INSERT INTO M��teri (Ad, Soyad, Cinsiyet)
VALUES
('Ahmet', 'Y�lmaz', 'Erkek'),
('Ay�e', 'Kaya', 'Kad�n'),
('Mehmet', 'Demir', 'Erkek'),
('Fatma', '�zt�rk', 'Kad�n'),
('Ali', '�ahin', 'Erkek'),
('Zeynep', 'Arslan', 'Kad�n'),
('Mustafa', 'Ko�', 'Erkek'),
('Emine', 'Y�ld�r�m', 'Kad�n'),
('�brahim', 'T�rk', 'Erkek'),
('Elif', 'Ayd�n', 'Kad�n'),
('Osman', '�elik', 'Erkek'),
('Hatice', 'Y�lmaz', 'Kad�n'),
('Cem', 'Kara', 'Erkek'),
('Seda', 'Ko�ak', 'Kad�n'),
('Murat', 'Ayd�n', 'Erkek'),
('Derya', 'Demirci', 'Kad�n'),
('Hakan', 'Y�ld�z', 'Erkek'),
('Sevgi', '�zdemir', 'Kad�n'),
('Ercan', 'Ar�kan', 'Erkek'),
('P�nar', '�al��kan', 'Kad�n')

select * from M��teri


INSERT INTO Adres (A��kAdres, PostaKodu, M��teri_Id, �lke_Id, �l_Id, �l�e_Id, Mahalle_Id, Sokak_Id)
VALUES
('Atat�rk Caddesi No: 123', '12345', 1, 1, 1, 1, 1, 1),
('�stiklal Sokak No: 456', '23456', 2, 1, 2, 2, 2, 2),
('Cumhuriyet Bulvar� No: 789', '34567', 3, 1, 3, 3, 3, 3),
('Milli Egemenlik Soka�� No: 321', '45678', 4, 1, 4, 4, 4, 4),
('Gazi �lkokul Sokak No: 654', '56789', 5, 1, 5, 5, 5, 5),
('Anafartalar Caddesi No: 987', '67890', 6, 1, 6, 6, 6, 6),
('Mevlana Sokak No: 543', '78901', 7, 1, 7, 7, 7, 7),
('H�rriyet Meydan� No: 876', '89012', 8, 1, 8, 8, 8, 8),
('Kurtulu� Caddesi No: 210', '90123', 9, 1, 9, 9, 9, 9),
('Yavuz Sultan Selim Sokak No: 321', '01234', 10, 1, 10, 10, 10, 10),
('Ba�dat Caddesi No: 111', '11111', 11, 1, 2, 2, 1, 3),
('Cumhuriyet Mahallesi No: 222', '22222', 12, 1, 3, 4, 2, 5),
('�stinye Park Sokak No: 333', '33333', 13, 1, 5, 6, 3, 7),
('Ata�ehir Bulvar� No: 444', '44444', 14, 1, 7, 8, 4, 9),
('Esenler Mahallesi No: 555', '55555', 15, 1, 9, 10, 5, 2),
('Levent Caddesi No: 666', '66666', 16, 1, 10, 1, 6, 3),
('Bostanc� Sokak No: 777', '77777', 17, 1, 8, 2, 7, 5),
('Kad�k�y Meydan� No: 888', '88888', 18, 1, 6, 3, 8, 4),
('�sk�dar Caddesi No: 999', '99999', 19, 1, 4, 4, 9,9);

INSERT INTO Adres (A��kAdres, PostaKodu, M��teri_Id, �lke_Id, �l_Id, �l�e_Id, Mahalle_Id, Sokak_Id)
VALUES
('�rne�in Caddesi No: 123', '12345', 20, 1, 77, 8, 4, 8),
('z Bir Sokak No: 456', '23456', 21, 1, 77, 2, 2, 2),
('x Bir Sokak No: 456', '23456', 22, 1, 77, 4, 1, 1),
('y Bir Sokak No: 456', '23456', 23, 1, 77, 5, 3, 2),
('t Bir Sokak No: 456', '23456', 24, 1, 77, 6, 4, 4),
('Deneme Mahallesi No: 789', '34567', 25, 1, 77, 5, 6, 4);


select * from M��teri

INSERT INTO Fiyat (Tutar) VALUES (37);
INSERT INTO Fiyat (Tutar) VALUES (32);
INSERT INTO Fiyat (Tutar) VALUES (34);
INSERT INTO Fiyat (Tutar) VALUES (36);
INSERT INTO Fiyat (Tutar) VALUES (31);
INSERT INTO Fiyat (Tutar) VALUES (33);
INSERT INTO Fiyat (Tutar) VALUES (39);
INSERT INTO Fiyat (Tutar) VALUES (38);
INSERT INTO Fiyat (Tutar) VALUES (40);
INSERT INTO Fiyat (Tutar) VALUES (42);
INSERT INTO Fiyat (Tutar) VALUES (43);
INSERT INTO Fiyat (Tutar) VALUES (41);
INSERT INTO Fiyat (Tutar) VALUES (44);
INSERT INTO Fiyat (Tutar) VALUES (46);
INSERT INTO Fiyat (Tutar) VALUES (48);
INSERT INTO Fiyat (Tutar) VALUES (47);
INSERT INTO Fiyat (Tutar) VALUES (50);
INSERT INTO Fiyat (Tutar) VALUES (52);
INSERT INTO Fiyat (Tutar) VALUES (54);
INSERT INTO Fiyat (Tutar) VALUES (53);
INSERT INTO Fiyat (Tutar) VALUES (55);
INSERT INTO Fiyat (Tutar) VALUES (57);
INSERT INTO Fiyat (Tutar) VALUES (59);
INSERT INTO Fiyat (Tutar) VALUES (58);
INSERT INTO Fiyat (Tutar) VALUES (60);
INSERT INTO Fiyat (Tutar) VALUES (62);

select * from Fiyat
select * from Adres

INSERT INTO �ube (�ubeNo, Ad, Adres_Id)
VALUES
('1', '�ube 1', 1),
('2', '�ube 2', 2),
('3', '�ube 3', 3),
('4', '�ube 4', 4),
('5', '�ube 5', 5),
('6', '�ube 6', 6),
('7', '�ube 7', 7),
('8', '�ube 8', 8),
('9', '�ube 9', 9),
('10', '�ube 10', 22);
select * from �ube

INSERT INTO Ara� (PlakaNo, Ara�T�r�)
VALUES ('34AB1234', 'Sedan'),
       ('35CD5678', 'SUV'),
       ('06EF9012', 'Hatchback'),
       ('16GH3456', 'Crossover'),
       ('34IJ7890', 'Pickup'),
       ('35KL2345', 'Minivan'),
       ('06MN6789', 'Convertible'),
       ('16PQ0123', 'Coupe'),
       ('34RS4567', 'Station Wagon'),
       ('35TU8901', 'Sports Car');
select * from Ara�

INSERT INTO Kargo_Personeli (Ad, Soyad, �ube_Id, Ara�_Id)
VALUES ('Ahmet', 'Y�lmaz', 1, 1),
       ('Mehmet', 'Demir', 2, 2),
       ('Ay�e', 'Kara', 1, 3),
       ('Fatma', 'Ak', 2, 4),
       ('Ali', '�ahin', 1, 5),
       ('Zeynep', 'Y�ld�z', 2, 6),
       ('Mustafa', 'K�l��', 1, 7),
       ('Elif', 'Ayd�n', 2, 8),
       ('Cem', '�elik', 1, 9),
       ('Derya', 'Ko�', 2, 10);

select * from Kargo_Personeli

INSERT INTO Hareket_T�r� (T�rAd�)
VALUES ('Sat�n Alma'),
       ('Teslimat'),
       ('�ade'),
       ('Transfer'),
       ('Depolama'),
       ('Geri �ekme'),
       ('Raf D�zenleme'),
       ('�retim'),
       ('�malat'),
       ('Yenileme');

select * from M��teri
select * from Adres
select * from Fiyat

INSERT INTO Kargo (TeslimZamani, Alimzamani, TeslimAlanM��teri_Id, TeslimVerenM��teri_Id, ��k��Adresi_Id, Var��Adresi_Id, Fiyat_Id)
VALUES
(GETDATE(), GETDATE(), 20, 14, 14, 22, 1);

(GETDATE(), GETDATE(), 1, 20, 22, 1, 1),
(GETDATE(), GETDATE(), 2, 21, 23, 2, 2),
(GETDATE(), GETDATE(), 3, 22, 24, 3, 3),
(GETDATE(), GETDATE(), 4, 23, 25, 4, 4),
(GETDATE(), GETDATE(), 5, 24, 26, 5, 5),
(GETDATE(), GETDATE(), 6, 24, 27, 6, 6),
(GETDATE(), GETDATE(), 1, 20, 22, 1, 1),
(GETDATE(), GETDATE(), 1, 21, 23, 1, 2),
(GETDATE(), GETDATE(), 1, 22, 24, 1, 3),
(GETDATE(), GETDATE(), 1, 23, 25, 1, 4),
(GETDATE(), GETDATE(), 1, 23, 25, 1, 4),
(GETDATE(), GETDATE(), 2, 24, 26, 2, 5),
(GETDATE(), GETDATE(), 2, 24, 27, 2, 6),
(GETDATE(), GETDATE(), 2, 24, 26, 2, 5),
(GETDATE(), GETDATE(), 2, 24, 27, 2, 6),
(GETDATE(), GETDATE(), 3, 24, 26, 3, 5),
(GETDATE(), GETDATE(), 3, 24, 26, 3, 5),
(GETDATE(), GETDATE(), 3, 24, 26, 3, 5);
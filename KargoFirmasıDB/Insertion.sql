INSERT INTO Ülke (Ýsim)
VALUES ('Türkiye'),
       ('Amerika'),
       ('Almanya'),
       ('Ýngiltere'),
       ('Fransa'),
       ('Ýtalya'),
       ('Çin'),
       ('Japonya'),
       ('Rusya'),
       ('Brezilya')

select * from Ülke

INSERT INTO Ýl (Ýsim, Ülke_Id)
VALUES
('Adana', 1),
('Adýyaman', 1),
('Afyonkarahisar', 1),
('Aðrý', 1),
('Amasya', 1),
('Ankara', 1),
('Antalya', 1),
('Artvin', 1),
('Aydýn', 1),
('Balýkesir', 1),
('Bilecik', 1),
('Bingöl', 1),
('Bitlis', 1),
('Bolu', 1),
('Burdur', 1),
('Bursa', 1),
('Çanakkale', 1),
('Çankýrý', 1),
('Çorum', 1),
('Denizli', 1),
('Diyarbakýr', 1),
('Edirne', 1),
('Elazýð', 1),
('Erzincan', 1),
('Erzurum', 1),
('Eskiþehir', 1),
('Gaziantep', 1),
('Giresun', 1),
('Gümüþhane', 1),
('Hakkâri', 1),
('Hatay', 1),
('Isparta', 1),
('Mersin', 1),
('Ýstanbul', 1),
('Ýzmir', 1),
('Kars', 1),
('Kastamonu', 1),
('Kayseri', 1),
('Kýrklareli', 1),
('Kýrþehir', 1),
('Kocaeli', 1),
('Konya', 1),
('Kütahya', 1),
('Malatya', 1),
('Manisa', 1),
('Kahramanmaraþ', 1),
('Mardin', 1),
('Muðla', 1),
('Muþ', 1),
('Nevþehir', 1),
('Niðde', 1),
('Ordu', 1),
('Rize', 1),
('Sakarya', 1),
('Samsun', 1),
('Siirt', 1),
('Sinop', 1),
('Sivas', 1),
('Tekirdað', 1),
('Tokat', 1),
('Trabzon', 1),
('Tunceli', 1),
('Þanlýurfa', 1),
('Uþak', 1),
('Van', 1),
('Yozgat', 1),
('Zonguldak', 1),
('Aksaray', 1),
('Bayburt', 1),
('Karaman', 1),
('Kýrýkkale', 1),
('Batman', 1),
('Þýrnak', 1),
('Bartýn', 1),
('Ardahan', 1),
('Iðdýr', 1),
('Yalova', 1),
('Karabük', 1),
('Kilis', 1),
('Osmaniye', 1),
('Düzce', 1)

select * from Ýl

INSERT INTO Ýlçe(Ýsim, Ýl_Id)
VALUES
('Merkez', 77),
('Çýnarcýk', 77),
('Termal', 77),
('Armutlu', 77),
('Baðcýlar', 1),
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

select * from Ýlçe

INSERT INTO Mahalle (Ýsim, Ýlçe_Id)
VALUES
('Merkez Mahallesi', 1),
('Cumhuriyet Mahallesi', 2),
('Ýnönü Mahallesi', 3),
('Yýldýrým Mahallesi', 4),
('Fatih Mahallesi', 1),
('Çankaya Mahallesi', 1),
('Kocatepe Mahallesi', 2),
('Atatürk Mahallesi', 5),
('Gazi Mahallesi', 3),
('Yenimahalle', 3);

select * from Mahalle

INSERT INTO Sokak (Ýsim, Mahalle_Id)
VALUES
('Atatürk Caddesi', 1),
('Ýstiklal Sokak', 2),
('Cumhuriyet Bulvarý', 3),
('Milli Egemenlik Sokaðý', 4),
('Gazi Ýlkokul Sokak', 5),
('Anafartalar Caddesi', 6),
('Mevlana Sokak', 7),
('Hürriyet Meydaný', 8),
('Kurtuluþ Caddesi', 9),
('Yavuz Sultan Selim Sokak', 10);

select * from Sokak

INSERT INTO Müþteri (Ad, Soyad, Cinsiyet)
VALUES
('Ahmet', 'Yýlmaz', 'Erkek'),
('Ayþe', 'Kaya', 'Kadýn'),
('Mehmet', 'Demir', 'Erkek'),
('Fatma', 'Öztürk', 'Kadýn'),
('Ali', 'Þahin', 'Erkek'),
('Zeynep', 'Arslan', 'Kadýn'),
('Mustafa', 'Koç', 'Erkek'),
('Emine', 'Yýldýrým', 'Kadýn'),
('Ýbrahim', 'Türk', 'Erkek'),
('Elif', 'Aydýn', 'Kadýn'),
('Osman', 'Çelik', 'Erkek'),
('Hatice', 'Yýlmaz', 'Kadýn'),
('Cem', 'Kara', 'Erkek'),
('Seda', 'Koçak', 'Kadýn'),
('Murat', 'Aydýn', 'Erkek'),
('Derya', 'Demirci', 'Kadýn'),
('Hakan', 'Yýldýz', 'Erkek'),
('Sevgi', 'Özdemir', 'Kadýn'),
('Ercan', 'Arýkan', 'Erkek'),
('Pýnar', 'Çalýþkan', 'Kadýn')

select * from Müþteri


INSERT INTO Adres (AçýkAdres, PostaKodu, Müþteri_Id, Ülke_Id, Ýl_Id, Ýlçe_Id, Mahalle_Id, Sokak_Id)
VALUES
('Atatürk Caddesi No: 123', '12345', 1, 1, 1, 1, 1, 1),
('Ýstiklal Sokak No: 456', '23456', 2, 1, 2, 2, 2, 2),
('Cumhuriyet Bulvarý No: 789', '34567', 3, 1, 3, 3, 3, 3),
('Milli Egemenlik Sokaðý No: 321', '45678', 4, 1, 4, 4, 4, 4),
('Gazi Ýlkokul Sokak No: 654', '56789', 5, 1, 5, 5, 5, 5),
('Anafartalar Caddesi No: 987', '67890', 6, 1, 6, 6, 6, 6),
('Mevlana Sokak No: 543', '78901', 7, 1, 7, 7, 7, 7),
('Hürriyet Meydaný No: 876', '89012', 8, 1, 8, 8, 8, 8),
('Kurtuluþ Caddesi No: 210', '90123', 9, 1, 9, 9, 9, 9),
('Yavuz Sultan Selim Sokak No: 321', '01234', 10, 1, 10, 10, 10, 10),
('Baðdat Caddesi No: 111', '11111', 11, 1, 2, 2, 1, 3),
('Cumhuriyet Mahallesi No: 222', '22222', 12, 1, 3, 4, 2, 5),
('Ýstinye Park Sokak No: 333', '33333', 13, 1, 5, 6, 3, 7),
('Ataþehir Bulvarý No: 444', '44444', 14, 1, 7, 8, 4, 9),
('Esenler Mahallesi No: 555', '55555', 15, 1, 9, 10, 5, 2),
('Levent Caddesi No: 666', '66666', 16, 1, 10, 1, 6, 3),
('Bostancý Sokak No: 777', '77777', 17, 1, 8, 2, 7, 5),
('Kadýköy Meydaný No: 888', '88888', 18, 1, 6, 3, 8, 4),
('Üsküdar Caddesi No: 999', '99999', 19, 1, 4, 4, 9,9);

INSERT INTO Adres (AçýkAdres, PostaKodu, Müþteri_Id, Ülke_Id, Ýl_Id, Ýlçe_Id, Mahalle_Id, Sokak_Id)
VALUES
('Örneðin Caddesi No: 123', '12345', 20, 1, 77, 8, 4, 8),
('z Bir Sokak No: 456', '23456', 21, 1, 77, 2, 2, 2),
('x Bir Sokak No: 456', '23456', 22, 1, 77, 4, 1, 1),
('y Bir Sokak No: 456', '23456', 23, 1, 77, 5, 3, 2),
('t Bir Sokak No: 456', '23456', 24, 1, 77, 6, 4, 4),
('Deneme Mahallesi No: 789', '34567', 25, 1, 77, 5, 6, 4);


select * from Müþteri

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

INSERT INTO Þube (ÞubeNo, Ad, Adres_Id)
VALUES
('1', 'Þube 1', 1),
('2', 'Þube 2', 2),
('3', 'Þube 3', 3),
('4', 'Þube 4', 4),
('5', 'Þube 5', 5),
('6', 'Þube 6', 6),
('7', 'Þube 7', 7),
('8', 'Þube 8', 8),
('9', 'Þube 9', 9),
('10', 'Þube 10', 22);
select * from Þube

INSERT INTO Araç (PlakaNo, AraçTürü)
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
select * from Araç

INSERT INTO Kargo_Personeli (Ad, Soyad, Þube_Id, Araç_Id)
VALUES ('Ahmet', 'Yýlmaz', 1, 1),
       ('Mehmet', 'Demir', 2, 2),
       ('Ayþe', 'Kara', 1, 3),
       ('Fatma', 'Ak', 2, 4),
       ('Ali', 'Þahin', 1, 5),
       ('Zeynep', 'Yýldýz', 2, 6),
       ('Mustafa', 'Kýlýç', 1, 7),
       ('Elif', 'Aydýn', 2, 8),
       ('Cem', 'Çelik', 1, 9),
       ('Derya', 'Koç', 2, 10);

select * from Kargo_Personeli

INSERT INTO Hareket_Türü (TürAdý)
VALUES ('Satýn Alma'),
       ('Teslimat'),
       ('Ýade'),
       ('Transfer'),
       ('Depolama'),
       ('Geri Çekme'),
       ('Raf Düzenleme'),
       ('Üretim'),
       ('Ýmalat'),
       ('Yenileme');

select * from Müþteri
select * from Adres
select * from Fiyat

INSERT INTO Kargo (TeslimZamani, Alimzamani, TeslimAlanMüþteri_Id, TeslimVerenMüþteri_Id, ÇýkýþAdresi_Id, VarýþAdresi_Id, Fiyat_Id)
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
CREATE DATABASE TopluTasima
		ON PRIMARY	(
						NAME = 'TopluTasimadb',
						FILENAME = 'C:\DATABASE\TopluTasýma_db.mdf',
						SIZE = 5MB,
						MAXSIZE = 100MB,
						FILEGROWTH = 5MB
					)
		LOG ON		(
						NAME = 'TopluTasýmadb_log',
						FILENAME = 'C:\DATABASE\TopluTasýma_log.ldf',
						SIZE  = 2MB,
						MAXSIZE = 5MB,
						FILEGROWTH = 1MB
					)
GO

USE TopluTasima

--Tablomuzda il bilgileri bulunmaktadir
CREATE TABLE TblIl
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	Ad VARCHAR(30)
)
GO
--Tablomuzda ilçe bilgileri bulunmaktadir
CREATE TABLE TblIlce
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad VARCHAR(30)
)
GO
--Tablomuzda mahalle bilgileri bulunmaktadir
CREATE TABLE TblMahalle
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad VARCHAR(100)
)
GO
--Tablomuzda sokak bilgileri bulunmaktadir
CREATE TABLE TblSokak
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad VARCHAR(100)
)
GO
--Bu tabloda kart bilgileri yer alir
CREATE TABLE TblKart
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ucret INT NOT NULL
)
GO
--Bu tabloda kart türü hakkinda bilgiler yer almaktadir
CREATE TABLE TblKartTuru
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KartCesit VARCHAR(40) NOT NULL,
	Kart_id INT FOREIGN KEY REFERENCES TblKart(ID) NOT NULL
)
GO
--Bu tabloda durak bilgileri yer almaktadir
CREATE TABLE TblDurak
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Durak_adi VARCHAR(50) NOT NULL,
	Enlem INT NOT NULL,
	Boylam INT NOT NULL,
	Il_id INT FOREIGN KEY REFERENCES TblIl(ID),
	Ilce_id INT FOREIGN KEY REFERENCES TblIlce(ID),
	Mahalle_id INT FOREIGN KEY REFERENCES TblMahalle(ID),
	Sokak_id INT FOREIGN KEY REFERENCES TblSokak(ID)
)
GO
--Tablomuzda tasit türü bilgileri bulunmaktadir
CREATE TABLE TblTasitTuru
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Tur VARCHAR(30)
)
GO
--Bu tablomuzda personel bilgileri bulunmaktadir
CREATE TABLE TblPersonel
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad VARCHAR(30) NOT NULL,
	Soy_ad VARCHAR(30) NOT NULL,
	Maas INT NOT NULL,
	Görev VARCHAR(100) NOT NULL,
	Adres VARCHAR(200) NOT NULL
)
GO
--Bu tabloda güzergah bilgileri yer almaktadir.
CREATE TABLE TblGuzergah
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_no VARCHAR(4) NOT NULL,
	Guzergah_bilgisi VARCHAR(256) NOT NULL,
	Mesafe INT NOT NULL,
	Durak_id INT FOREIGN KEY REFERENCES TblDurak(ID) NOT NULL
)
GO
--Tablomuzda Tasit bilgileri yer alır
CREATE TABLE TblTasit
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Tasit_kodu VARCHAR(10) NOT NULL,
	Enlem INT NOT NULL,
	Boylam INT NOT NULL,
	Kapasite INT NOT NULL,
	Personel_id INT FOREIGN KEY REFERENCES TblPersonel(ID) NOT NULL,
	Tur_id INT FOREIGN KEY REFERENCES TblTasitTuru(ID) NOT NULL
)
GO
--Bu tablo sefer bilgilerini içerir
CREATE TABLE TblSefer
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Kalkis_saati TIME NOT NULL,
	Varis_saati TIME NOT NULL,
	ToplamYolcuSayisi INT,
	Tasit_id INT FOREIGN KEY REFERENCES tblTasit(ID) NOT NULL,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Personel_id INT FOREIGN KEY REFERENCES TblPersonel(ID) NOT NULL
)
GO


--Bu tabloda güzergah ile durak arasindaki Tasitin hangi sirada geldigi yer almaktadir
CREATE TABLE TblSiraIcerir
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Durak_id INT FOREIGN KEY REFERENCES TblDurak(ID)NOT NULL,
	Sira INT NOT NULL
)
GO

--Bu tabloda güzergah ile durak arasindaki Varis yer bilgileri yer almaktadir
CREATE TABLE TblVarisIcerir
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Varis_durak INT FOREIGN KEY REFERENCES TblDurak(ID) NOT NULL
)
GO
--Bu tabloda güzergah ile durak arasindaki kalkis yer bilgileri yer almaktadir
CREATE TABLE TblKalkisIcerir
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Kalkis_durak INT FOREIGN KEY REFERENCES TblDurak(ID)NOT NULL
)
GO
--Bu tabloda güzergah ile durak arasindaki hangi Gün geldigi yer almaktadir
CREATE TABLE TblGunIcerir
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Durak_id INT FOREIGN KEY REFERENCES TblDurak(ID)NOT NULL,
	Gun VARCHAR(16) NOT NULL,
	Saat DATETIME NOT NULL,
)
GO
--Bu tabloda güzergah ile durak arasindaki Hangi tarihte geldigi yer almaktadir
CREATE TABLE TblTarihIcerir
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Guzergah_id INT FOREIGN KEY REFERENCES TblGuzergah(ID) NOT NULL,
	Durak_id INT FOREIGN KEY REFERENCES TblDurak(ID)NOT NULL,
	Tarih DATETIME NOT NULL,
)
GO

--Bu tabloda gise bilgileri yer almaktadir
CREATE TABLE Gise
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Satilan_bilet INT NOT NULL,
	Durak_id INT FOREIGN KEY REFERENCES TblDurak(ID) NOT NULL
)
GO
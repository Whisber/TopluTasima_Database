If DB_ID('Kargo Firmasý') is not null
  Begin 
     Alter Database [Kargofirmasý] set single_user with rollback immediate
     Use master
     drop database  Kargofirmasý
   End
Go

create database KargoFirmasý

  ON  Primary  (
                  NAME ='Kargofirmasýdb',
                  Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kargofirmasý_db.mdf',
                  SIZE = 5MB,
                  MAXSIZE = 100MB,
                  FILEGROWTH = 5MB
             )


 LOG ON (
               NAME ='Kargofirmasýdb_log',
                  Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kargofirmasý_log.ldf',
                  SIZE =2MB,
                  MAXSIZE = 50MB,
                  FILEGROWTH = 1MB

        )

		GO

use KargoFirmasý
GO



CREATE TABLE Ülke(

Ülke_Id int PRIMARY KEY IDENTITY(1,1),
Ýsim varchar(30) NOT NULL
)
GO

CREATE TABLE Ýl(

Ýl_Id int PRIMARY KEY IDENTITY(1,1),
Ýsim varchar(30) NOT NULL,

Ülke_Id int FOREIGN KEY REFERENCES Ülke(Ülke_Id) NOT NULL

)
GO


CREATE TABLE Ýlçe(

Ýlçe_Id int PRIMARY KEY IDENTITY(1,1),
Ýsim varchar(30) NOT NULL,

Ýl_Id int FOREIGN KEY REFERENCES Ýl(Ýl_Id) NOT NULL

)
GO

CREATE TABLE Mahalle(

Mahalle_Id int PRIMARY KEY IDENTITY(1,1),
Ýsim varchar(50) NOT NULL,

Ýlçe_Id int FOREIGN KEY REFERENCES Ýlçe(Ýlçe_Id) NOT NULL
)
GO

CREATE TABLE Sokak(

Sokak_Id int PRIMARY KEY IDENTITY(1,1),
Ýsim varchar(60) NOT NULL,

Mahalle_Id int FOREIGN KEY REFERENCES Mahalle(Mahalle_Id) NOT NULL
)
GO


CREATE TABLE Müþteri(

Müþteri_Id int PRIMARY KEY IDENTITY(1,1),
Ad varchar(25) NOT NULL,
Soyad varchar(25) NOT NULL,
TcNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkTcNo CHECK (TcNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkMüþteriTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Cinsiyet varchar(11) NOT NULL,
)
GO

CREATE TABLE Adres(

Adres_Id int PRIMARY KEY IDENTITY(1,1),
AçýkAdres varchar(100) NOT NULL,
PostaKodu varchar(5) NOT NULL CONSTRAINT  checkPostaKodu CHECK (PostaKodu LIKE '[0-9][0-9][0-9][0-9][0-9]'),
Müþteri_Id int FOREIGN KEY REFERENCES Müþteri(Müþteri_Id) NOT NULL,
Ülke_Id int FOREIGN KEY REFERENCES Ülke(Ülke_Id) NOT NULL,
Ýl_Id int FOREIGN KEY REFERENCES Ýl(Ýl_Id) NOT NULL,
Ýlçe_Id int FOREIGN KEY REFERENCES Ýlçe(Ýlçe_Id) NOT NULL,
Mahalle_Id int FOREIGN KEY REFERENCES Mahalle(Mahalle_Id) NOT NULL,
Sokak_Id int FOREIGN KEY REFERENCES Sokak(Sokak_Id) NOT NULL,

)
GO



CREATE TABLE Fiyat(

Fiyat_Id int PRIMARY KEY IDENTITY(1,1),
AltDesi float NOT NULL,
ÜstDesi float NOT NULL,
Ücret float NOT NULL

)
GO




CREATE TABLE Þube(

Þube_Id int PRIMARY KEY IDENTITY(1,1),
ÞubeNo char(5) UNIQUE NOT NULL,
Ad varchar(30) NOT NULL,
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkÞubeTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

Adres_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL


)
GO


CREATE TABLE Araç(

Araç_Id int PRIMARY KEY IDENTITY(1,1),
PlakaNo char(8) UNIQUE NOT NULL,
								 
AraçTürü varchar(20) NOT NULL,


)
GO


CREATE TABLE Kargo_Personeli(

KargoPersoneli_Id int PRIMARY KEY IDENTITY(1,1),
Ad varchar(25) NOT NULL,
Soyad varchar(25) NOT NULL,
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkKargoPersoneliTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

Þube_Id int FOREIGN KEY REFERENCES Þube(Þube_Id) NOT NULL,
Araç_Id int FOREIGN KEY REFERENCES Araç(Araç_Id),

)
GO




CREATE TABLE Hareket_Türü(

HareketTürü_Id int PRIMARY KEY IDENTITY(1,1),
TürAdý varchar(50) NOT NULL,


)
GO


CREATE TABLE Kargo(

Kargo_Id int PRIMARY KEY IDENTITY(1,1),
BarkodNo char(13) UNIQUE NOT NULL CONSTRAINT  checkBarkodNo CHECK (BarkodNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') ,

En int NOT NULL,
Boy int NOT NULL,
Yükseklik int NOT NULL,
Kilo int NOT NULL,

KDesi float NOT NULL,
Tutar Money NOT NULL,

TeslimZamani DATETIME NOT NULL DEFAULT GETDATE(),
Alimzamani DATETIME NOT NULL DEFAULT GETDATE(),


TeslimAlanMüþteri_Id int FOREIGN KEY REFERENCES Müþteri(Müþteri_Id) DEFAULT NULL,
TeslimVerenMüþteri_Id int FOREIGN KEY REFERENCES Müþteri(Müþteri_Id) NOT NULL,

TeslimEdenKargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) DEFAULT NULL,
TeslimAlanKargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) NOT NULL,

ÇýkýþAdresi_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL,
VarýþAdresi_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL,
ÇýkýþÞube_Id int FOREIGN KEY REFERENCES Þube(Þube_Id) NOT NULL,
VarýþÞube_Id int FOREIGN KEY REFERENCES Þube(Þube_Id) NOT NULL,
Fiyat_Id int FOREIGN KEY REFERENCES Fiyat(Fiyat_Id) NOT NULL,

)
GO


CREATE TABLE Kargo_Hareketi(

KargoHareketi_Id int PRIMARY KEY IDENTITY(1,1),
Saat Time NOT NULL DEFAULT GETDATE(),
Tarih Date NOT NULL DEFAULT GETDATE(),

HareketTürü_Id int FOREIGN KEY REFERENCES Hareket_Türü(HareketTürü_Id) NOT NULL,

VarýþÞube_Id int FOREIGN KEY REFERENCES Þube(Þube_Id) NOT NULL,
ÇýkýþÞube_Id int FOREIGN KEY REFERENCES Þube(Þube_Id) NOT NULL,

KargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) NOT NULL,
Araç_Id int FOREIGN KEY REFERENCES Araç(Araç_Id) NOT NULL,
Kargo_Id int FOREIGN KEY REFERENCES Kargo(Kargo_Id) NOT NULL,

)
GO






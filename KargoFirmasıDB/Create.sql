If DB_ID('Kargo Firmas�') is not null
  Begin 
     Alter Database [Kargofirmas�] set single_user with rollback immediate
     Use master
     drop database  Kargofirmas�
   End
Go

create database KargoFirmas�

  ON  Primary  (
                  NAME ='Kargofirmas�db',
                  Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kargofirmas�_db.mdf',
                  SIZE = 5MB,
                  MAXSIZE = 100MB,
                  FILEGROWTH = 5MB
             )


 LOG ON (
               NAME ='Kargofirmas�db_log',
                  Filename ='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kargofirmas�_log.ldf',
                  SIZE =2MB,
                  MAXSIZE = 50MB,
                  FILEGROWTH = 1MB

        )

		GO

use KargoFirmas�
GO



CREATE TABLE �lke(

�lke_Id int PRIMARY KEY IDENTITY(1,1),
�sim varchar(30) NOT NULL
)
GO

CREATE TABLE �l(

�l_Id int PRIMARY KEY IDENTITY(1,1),
�sim varchar(30) NOT NULL,

�lke_Id int FOREIGN KEY REFERENCES �lke(�lke_Id) NOT NULL

)
GO


CREATE TABLE �l�e(

�l�e_Id int PRIMARY KEY IDENTITY(1,1),
�sim varchar(30) NOT NULL,

�l_Id int FOREIGN KEY REFERENCES �l(�l_Id) NOT NULL

)
GO

CREATE TABLE Mahalle(

Mahalle_Id int PRIMARY KEY IDENTITY(1,1),
�sim varchar(50) NOT NULL,

�l�e_Id int FOREIGN KEY REFERENCES �l�e(�l�e_Id) NOT NULL
)
GO

CREATE TABLE Sokak(

Sokak_Id int PRIMARY KEY IDENTITY(1,1),
�sim varchar(60) NOT NULL,

Mahalle_Id int FOREIGN KEY REFERENCES Mahalle(Mahalle_Id) NOT NULL
)
GO


CREATE TABLE M��teri(

M��teri_Id int PRIMARY KEY IDENTITY(1,1),
Ad varchar(25) NOT NULL,
Soyad varchar(25) NOT NULL,
TcNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkTcNo CHECK (TcNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkM��teriTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Cinsiyet varchar(11) NOT NULL,
)
GO

CREATE TABLE Adres(

Adres_Id int PRIMARY KEY IDENTITY(1,1),
A��kAdres varchar(100) NOT NULL,
PostaKodu varchar(5) NOT NULL CONSTRAINT  checkPostaKodu CHECK (PostaKodu LIKE '[0-9][0-9][0-9][0-9][0-9]'),
M��teri_Id int FOREIGN KEY REFERENCES M��teri(M��teri_Id) NOT NULL,
�lke_Id int FOREIGN KEY REFERENCES �lke(�lke_Id) NOT NULL,
�l_Id int FOREIGN KEY REFERENCES �l(�l_Id) NOT NULL,
�l�e_Id int FOREIGN KEY REFERENCES �l�e(�l�e_Id) NOT NULL,
Mahalle_Id int FOREIGN KEY REFERENCES Mahalle(Mahalle_Id) NOT NULL,
Sokak_Id int FOREIGN KEY REFERENCES Sokak(Sokak_Id) NOT NULL,

)
GO



CREATE TABLE Fiyat(

Fiyat_Id int PRIMARY KEY IDENTITY(1,1),
AltDesi float NOT NULL,
�stDesi float NOT NULL,
�cret float NOT NULL

)
GO




CREATE TABLE �ube(

�ube_Id int PRIMARY KEY IDENTITY(1,1),
�ubeNo char(5) UNIQUE NOT NULL,
Ad varchar(30) NOT NULL,
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  check�ubeTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

Adres_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL


)
GO


CREATE TABLE Ara�(

Ara�_Id int PRIMARY KEY IDENTITY(1,1),
PlakaNo char(8) UNIQUE NOT NULL,
								 
Ara�T�r� varchar(20) NOT NULL,


)
GO


CREATE TABLE Kargo_Personeli(

KargoPersoneli_Id int PRIMARY KEY IDENTITY(1,1),
Ad varchar(25) NOT NULL,
Soyad varchar(25) NOT NULL,
TelefonNo varchar(11) UNIQUE NOT NULL CONSTRAINT  checkKargoPersoneliTelefonNo CHECK (TelefonNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

�ube_Id int FOREIGN KEY REFERENCES �ube(�ube_Id) NOT NULL,
Ara�_Id int FOREIGN KEY REFERENCES Ara�(Ara�_Id),

)
GO




CREATE TABLE Hareket_T�r�(

HareketT�r�_Id int PRIMARY KEY IDENTITY(1,1),
T�rAd� varchar(50) NOT NULL,


)
GO


CREATE TABLE Kargo(

Kargo_Id int PRIMARY KEY IDENTITY(1,1),
BarkodNo char(13) UNIQUE NOT NULL CONSTRAINT  checkBarkodNo CHECK (BarkodNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') ,

En int NOT NULL,
Boy int NOT NULL,
Y�kseklik int NOT NULL,
Kilo int NOT NULL,

KDesi float NOT NULL,
Tutar Money NOT NULL,

TeslimZamani DATETIME NOT NULL DEFAULT GETDATE(),
Alimzamani DATETIME NOT NULL DEFAULT GETDATE(),


TeslimAlanM��teri_Id int FOREIGN KEY REFERENCES M��teri(M��teri_Id) DEFAULT NULL,
TeslimVerenM��teri_Id int FOREIGN KEY REFERENCES M��teri(M��teri_Id) NOT NULL,

TeslimEdenKargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) DEFAULT NULL,
TeslimAlanKargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) NOT NULL,

��k��Adresi_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL,
Var��Adresi_Id int FOREIGN KEY REFERENCES Adres(Adres_Id) NOT NULL,
��k���ube_Id int FOREIGN KEY REFERENCES �ube(�ube_Id) NOT NULL,
Var���ube_Id int FOREIGN KEY REFERENCES �ube(�ube_Id) NOT NULL,
Fiyat_Id int FOREIGN KEY REFERENCES Fiyat(Fiyat_Id) NOT NULL,

)
GO


CREATE TABLE Kargo_Hareketi(

KargoHareketi_Id int PRIMARY KEY IDENTITY(1,1),
Saat Time NOT NULL DEFAULT GETDATE(),
Tarih Date NOT NULL DEFAULT GETDATE(),

HareketT�r�_Id int FOREIGN KEY REFERENCES Hareket_T�r�(HareketT�r�_Id) NOT NULL,

Var���ube_Id int FOREIGN KEY REFERENCES �ube(�ube_Id) NOT NULL,
��k���ube_Id int FOREIGN KEY REFERENCES �ube(�ube_Id) NOT NULL,

KargoPersoneli_Id int FOREIGN KEY REFERENCES Kargo_Personeli(KargoPersoneli_Id) NOT NULL,
Ara�_Id int FOREIGN KEY REFERENCES Ara�(Ara�_Id) NOT NULL,
Kargo_Id int FOREIGN KEY REFERENCES Kargo(Kargo_Id) NOT NULL,

)
GO






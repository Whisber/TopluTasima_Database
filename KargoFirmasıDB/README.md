# KargoFirması_Database

Müşteri (müşteri_Id , ad, soyad, tcNo , telefonNo)

Kargo (kargo_Id , müşteri_Id , adres_Id , kargoPersoneli_Id , en , boy , yükseklik , kilo , kDesi , tutar , barkodNo , teslimTarihi , teslimSaati,alımTarihi , alımSaati)

Adres (adres_Id , müşteri_Id , ülke_Id , il_Id , ilçe_Id , mahalle_Id , sokak_Id , açıkAdres , postaKodu)

Ülke ( ülke_Id , isim ) İl ( il_Id , ülke_Id , isim) İlçe (ilçe_Id , il_Id , isim ) Mahalle ( mahalle_Id , ilçe_Id , isim ) 

Sokak ( sokak_Id , mahalle_Id , isim) KargoPersoneli ( kargoPersoneli_Id , şube_Id , ad , soyad , personelNo , telefonNo )

Şube ( şube_Id , adres_Id , ad , şubeNo , telefonNo ) Fiyat ( fiyat_Id , kargo_Id , altDesi , üstDesi ,ücret )

KargoHareketi ( kargoHareketi_Id , şube_Id , kargo_Id , araç_Id , tarih ,saat )

Araç ( araç_Id , kargoPersoneli_Id , araçTürü , plakaNo ) HareketTürü ( hareketTürü_Id , kargoHareketi_Id , türAdı )

tablolar ve ilişkiler.
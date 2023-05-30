--1.QUERY -  Geçen ay en çok kargo gönderilen ilk üç þehir’e daha önce hiç kargo göndermeyen müþterilerin il bazýnda erkek ve 
--kadýn ayrý iki sütun olarak sayýlarý. 

SELECT Ý.Ýsim as gidensehir,
COUNT(CASE M.Cinsiyet WHEN 'Erkek' THEN 1 ELSE NULL END) AS ErkekSayisi,
COUNT(CASE M.Cinsiyet WHEN 'Kadýn' THEN 1 ELSE NULL END) AS KadýnSayisi
FROM Kargo K
inner join Adres A on K.VarýþAdresi_Id = A.Adres_Id
inner join Ýl Ý on A.Ýl_Id = Ý.Ýl_Id
inner join Müþteri M on M.Müþteri_Id = K.TeslimVerenMüþteri_Id
inner join Adres A2 on K.ÇýkýþAdresi_Id = A2.Adres_Id
inner join Ýl Ý2 on Ý2.Ýl_Id = A2.Ýl_Id
inner join Müþteri M2 on M2.Müþteri_Id = K.TeslimAlanMüþteri_Id

WHERE Ý.Ýl_Id NOT IN (
    SELECT TOP 3 Ýl_Id
    FROM (
        SELECT TOP 3 Ý.Ýl_Id,Ý.Ýsim ,COUNT() AS KargoSayisi
        FROM Kargo K
        left JOIN Adres A ON K.VarýþAdresi_Id = A.Adres_Id
        left JOIN Ýl Ý ON Ý.Ýl_Id = A.Ýl_Id
        where K.Alimzamani >= '2023-04-01'
        GROUP BY Ý.Ýl_Id,Ý.Ýsim
        ORDER BY COUNT() DESC
    ) as T
)
GROUP BY Ý.Ýsim
ORDER BY count(*) desc
-----------------------

--2.QUERY - Yalova ilindeki müþterilerin en son gördeði kargolarýn illerinin hepsine kargo göndermiþ Bursa ilindeki müþterilerin toplam
-- bu yýl gönderi tutarlarý. Toplam gönderi tutarý < 1000 TL ise müþteri adýna göre deðilse soyadýna göre sýralama olacaktýr.
-- Toplam gönderi tutarý  500 TL ve üzeri ise gösterilecektir.

SELECT
    k.Kargo_Id,
    m.Ad AS [Teslim Eden Müþteri Adý],
    m.Soyad AS [Teslim Eden Müþteri Soyasý],
    m2.Ad AS [Teslim Alan Müþteri Adý],
    m2.Soyad AS [Teslim Alan Müþteri Soyadý],
    k.Alimzamani AS [Alým Zamaný],
    k.TeslimZamani AS [Teslim Zamaný],
    i.Ýsim AS [Çýkýþ Ýli],
    i2.Ýsim AS [Varýþ Ýli],
    f.Tutar
FROM
    Kargo k
    INNER JOIN Fiyat f ON k.Fiyat_Id = f.Fiyat_Id
    INNER JOIN Adres a ON k.ÇýkýþAdresi_Id = a.Adres_Id
    INNER JOIN Adres a2 ON k.VarýþAdresi_Id = a2.Adres_Id
    INNER JOIN Ýl i ON a.Ýl_Id = i.Ýl_Id
    INNER JOIN Ýl i2 ON a2.Ýl_Id = i2.Ýl_Id
    INNER JOIN Müþteri m ON k.TeslimVerenMüþteri_Id = m.Müþteri_Id
    INNER JOIN Müþteri m2 ON k.TeslimAlanMüþteri_Id = m2.Müþteri_Id
WHERE
    k.ÇýkýþAdresi_Id IN (SELECT Adres_Id FROM Adres WHERE Ýl_Id = 16)
    AND k.Alimzamani > '2023-01-01'
ORDER BY
    CASE
        WHEN (
            SELECT SUM(f2.Tutar)
            FROM Kargo k2
            INNER JOIN Fiyat f2 ON k2.Fiyat_Id = f2.Fiyat_Id
            INNER JOIN Adres a3 ON k2.ÇýkýþAdresi_Id = a3.Adres_Id
            INNER JOIN Ýl i3 ON a3.Ýl_Id = i3.Ýl_Id
            WHERE k2.ÇýkýþAdresi_Id IN (SELECT Adres_Id FROM Adres WHERE Ýl_Id = 16)
            AND k2.Alimzamani > '2023-01-01'
        ) BETWEEN 500 AND 1000 THEN m.Ad
        ELSE m.Soyad
    END ASC;
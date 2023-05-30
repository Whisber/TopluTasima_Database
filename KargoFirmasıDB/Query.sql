--1.QUERY -  Ge�en ay en �ok kargo g�nderilen ilk �� �ehir�e daha �nce hi� kargo g�ndermeyen m��terilerin il baz�nda erkek ve 
--kad�n ayr� iki s�tun olarak say�lar�. 

SELECT �.�sim as gidensehir,
COUNT(CASE M.Cinsiyet WHEN 'Erkek' THEN 1 ELSE NULL END) AS ErkekSayisi,
COUNT(CASE M.Cinsiyet WHEN 'Kad�n' THEN 1 ELSE NULL END) AS Kad�nSayisi
FROM Kargo K
inner join Adres A on K.Var��Adresi_Id = A.Adres_Id
inner join �l � on A.�l_Id = �.�l_Id
inner join M��teri M on M.M��teri_Id = K.TeslimVerenM��teri_Id
inner join Adres A2 on K.��k��Adresi_Id = A2.Adres_Id
inner join �l �2 on �2.�l_Id = A2.�l_Id
inner join M��teri M2 on M2.M��teri_Id = K.TeslimAlanM��teri_Id

WHERE �.�l_Id NOT IN (
    SELECT TOP 3 �l_Id
    FROM (
        SELECT TOP 3 �.�l_Id,�.�sim ,COUNT() AS KargoSayisi
        FROM Kargo K
        left JOIN Adres A ON K.Var��Adresi_Id = A.Adres_Id
        left JOIN �l � ON �.�l_Id = A.�l_Id
        where K.Alimzamani >= '2023-04-01'
        GROUP BY �.�l_Id,�.�sim
        ORDER BY COUNT() DESC
    ) as T
)
GROUP BY �.�sim
ORDER BY count(*) desc
-----------------------

--2.QUERY - Yalova ilindeki m��terilerin en son g�rde�i kargolar�n illerinin hepsine kargo g�ndermi� Bursa ilindeki m��terilerin toplam
-- bu y�l g�nderi tutarlar�. Toplam g�nderi tutar� < 1000 TL ise m��teri ad�na g�re de�ilse soyad�na g�re s�ralama olacakt�r.
-- Toplam g�nderi tutar�  500 TL ve �zeri ise g�sterilecektir.

SELECT
    k.Kargo_Id,
    m.Ad AS [Teslim Eden M��teri Ad�],
    m.Soyad AS [Teslim Eden M��teri Soyas�],
    m2.Ad AS [Teslim Alan M��teri Ad�],
    m2.Soyad AS [Teslim Alan M��teri Soyad�],
    k.Alimzamani AS [Al�m Zaman�],
    k.TeslimZamani AS [Teslim Zaman�],
    i.�sim AS [��k�� �li],
    i2.�sim AS [Var�� �li],
    f.Tutar
FROM
    Kargo k
    INNER JOIN Fiyat f ON k.Fiyat_Id = f.Fiyat_Id
    INNER JOIN Adres a ON k.��k��Adresi_Id = a.Adres_Id
    INNER JOIN Adres a2 ON k.Var��Adresi_Id = a2.Adres_Id
    INNER JOIN �l i ON a.�l_Id = i.�l_Id
    INNER JOIN �l i2 ON a2.�l_Id = i2.�l_Id
    INNER JOIN M��teri m ON k.TeslimVerenM��teri_Id = m.M��teri_Id
    INNER JOIN M��teri m2 ON k.TeslimAlanM��teri_Id = m2.M��teri_Id
WHERE
    k.��k��Adresi_Id IN (SELECT Adres_Id FROM Adres WHERE �l_Id = 16)
    AND k.Alimzamani > '2023-01-01'
ORDER BY
    CASE
        WHEN (
            SELECT SUM(f2.Tutar)
            FROM Kargo k2
            INNER JOIN Fiyat f2 ON k2.Fiyat_Id = f2.Fiyat_Id
            INNER JOIN Adres a3 ON k2.��k��Adresi_Id = a3.Adres_Id
            INNER JOIN �l i3 ON a3.�l_Id = i3.�l_Id
            WHERE k2.��k��Adresi_Id IN (SELECT Adres_Id FROM Adres WHERE �l_Id = 16)
            AND k2.Alimzamani > '2023-01-01'
        ) BETWEEN 500 AND 1000 THEN m.Ad
        ELSE m.Soyad
    END ASC;
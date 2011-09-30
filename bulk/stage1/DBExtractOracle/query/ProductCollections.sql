SELECT          I.ProductId             AS ProductId,
                CC.CollectionId         AS CollectionId,
                NULL                    AS OriginalCollectionId
    FROM        Articulos A
    INNER JOIN  Colecciones C
        ON      A.Id_Coleccion = C.Id_Coleccion
    INNER JOIN  DBE_Collections CC
        ON      C.Id_Coleccion = CC.Id_Coleccion
    INNER JOIN  DBE_Products I
        ON      A.Id_Articulo = I.Id_Articulo
    ORDER BY    I.ProductId, CC.CollectionId
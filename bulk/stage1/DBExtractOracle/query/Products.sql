SELECT      I.ProductId             AS ProductId,
            'es'                    AS LanguageCode,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM    Articulos L
    INNER JOIN DBE_Products I
        ON  L.Id_Articulo = I.Id_Articulo
    ORDER BY    I.ProductId
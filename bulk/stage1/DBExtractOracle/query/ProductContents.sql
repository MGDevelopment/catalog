SELECT          P.ProductId             AS ProductId,
                ATM.Nro_Tema            AS EntryOrder,
                ATM.Nro_Tema            AS SequenceNumber,
                '03'                    AS TextItemType,        -- body matter
                ATM.Duracion            AS NumberOfPages,
                'Track'                 AS ComponentTypeName,
                ATM.Nro_Tema            AS ComponentNumber
    FROM        Articulos_Temas_Musicales ATM
    INNER JOIN  DBE_Products P
        ON      ATM.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId
SELECT          P.ProductId             AS ProductId,
                '0'                     AS EntryOrder,
                I.ImprintId             AS ImprintId,
                NULL                    AS OriginalImprintId
    FROM        Articulos A
    INNER JOIN  Editores E
        ON      A.Id_Editor = E.Id_Editor
    INNER JOIN  DBE_Imprints I
        ON      E.Id_Editor = I.Id_Editor
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId;
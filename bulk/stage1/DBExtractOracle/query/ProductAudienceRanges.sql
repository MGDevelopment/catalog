SELECT      P.ProductId             AS ProductId,
            '0'                     AS EntryOrder,
            '17'                    AS RangeQualifier,
            A.Desde_Edad            AS FromValue,
            A.Hasta_Edad            AS ToValue
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Desde_Edad IS NOT NULL OR
                A.Hasta_Edad IS NOT NULL
    ORDER BY    P.ProductId
SELECT      P.ProductId             AS ProductId,
            CASE A.Es_Texto
                WHEN 'SI' THEN                          'SCH'
                ELSE                                    'NED'
            END                     AS EditionType,
            CASE
                WHEN A.Nro_Edicion IS NOT NULL THEN     TO_CHAR(A.Nro_Edicion)
                ELSE                                    NULL
            END                     AS EditionNumber,
            NULL                    AS VersionNumber,
            NULL                    AS Statement
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Nro_Edicion IS NOT NULL OR
                A.Es_Texto = 'SI'
    ORDER BY    P.ProductId